<?php

namespace App\Http\Controllers;

use App\Models\Meals;
use App\Http\Requests\MealRequest;
use Illuminate\Support\Facades\App;
use Carbon\Carbon;

class MealController extends Controller
{
    public function index(MealRequest $request)
    {
        $lang = $request->input('lang');
        App::setLocale($lang);

        $query = Meals::query();

        // Filtriranje po ID-u
        if ($request->has('id')) 
        {
            $query->where('id', $request->input('id'));
        }

        // Filtriranje po kategoriji
        $category = $request->input('category');
        if ($category) 
        {
            if ($category === 'NULL') 
            {
                $query->whereNull('category_id');
            } 
            elseif ($category === '!NULL') 
            {
                $query->whereNotNull('category_id');
            } 
            else 
            {
                $query->where('category_id', $category);
            }
        }

        // Filtriranje po tag-u
        $tags = $request->input('tags');
        if ($tags) 
        {
            $tagIds = explode(',', $tags);
            foreach ($tagIds as $tagId) 
            {
                $query->whereHas('tags', function ($q) use ($tagId) 
                {
                    $q->where('tags.id', $tagId);
                });
            }
        }

        // Eager Loading
        $allowedRelations = ['ingredients', 'category', 'tags'];
        $requestedRelations = explode(',', $request->input('with', ''));
        $relationsToLoad = array_intersect($requestedRelations, $allowedRelations);
        if (!empty($relationsToLoad)) 
        {
            $query->with($relationsToLoad);
        }

        // Diff_time parametar za ispisivanje statusa
        if ($request->has('diff_time')) 
        {
            $diffTime = Carbon::createFromTimestamp($request->input('diff_time'));
            $meals = $query->withTrashed()
                           ->where(function ($q) use ($diffTime) 
                           {
                               $q->where('created_at', '>', $diffTime)
                                 ->orWhere('updated_at', '>', $diffTime)
                                 ->orWhere('deleted_at', '>', $diffTime);
                           })
                           ->get();
            
            foreach ($meals as $meal) 
            {
                $meal->makeVisible('status');
                if ($meal->deleted_at && $meal->deleted_at->gt($diffTime)) 
                {
                    $meal->status = 'deleted';
                } 
                elseif ($meal->created_at->gt($diffTime) && $meal->created_at == $meal->updated_at) 
                {
                    $meal->status = 'created';
                } 
                elseif ($meal->updated_at->gt($diffTime)) 
                {
                    $meal->status = 'modified';
                }
            }

            return $meals;
        }

        // Default behavior (pagination)
        $per_page = $request->input('per_page', 10);
        return $query->paginate($per_page);
    }
}
