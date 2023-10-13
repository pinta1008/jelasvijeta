<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MealResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray($request): array
    {
        $data = [
            'id' => $this->id,
            'title' => $this->title,
            'description' => $this->description,
            'status' => $this->status,
            'lang' => $request->input('lang')
        ];

        $data = array_merge($data, $this->generateRelations($request));

        return $data;
    }

    private function generateRelations(Request $request): array
    {
        $relations = [];

        if ($request->filled('with')) {
            $withRelations = explode(',', $request->input('with'));

            if (in_array('category', $withRelations) && $this->relationLoaded('category')) {
                $relations['category'] = [
                    'id' => optional($this->category)->id,
                    'title' => optional($this->category)->title,
                    'slug' => optional($this->category)->slug,
                ];
            }

            if (in_array('tags', $withRelations) && $this->relationLoaded('tags')) {
                $relations['tags'] = $this->tags->map(function ($tag) {
                    return [
                        'id' => $tag->id,
                        'title' => $tag->title,
                        'slug' => $tag->slug
                    ];
                });
            }

            if (in_array('ingredients', $withRelations) && $this->relationLoaded('ingredients')) {
                $relations['ingredients'] = $this->ingredients->map(function ($ingredient) {
                    return [
                        'id' => $ingredient->id,
                        'title' => $ingredient->title,
                        'slug' => $ingredient->slug
                    ];
                });
            }
        }

        return $relations;
    }
}
