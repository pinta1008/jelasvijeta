<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;

class Meals extends Model implements TranslatableContract
{
    use Translatable;   //mogu svi u jedan use u jedan red
   
    use HasFactory;

    use SoftDeletes;

    protected $hidden = ['translations', 'status'];

    public $translationForeignKey = 'meal_id';

    protected $fillable = ['status', 'category_id'];

    public $translatedAttributes =['title', 'description'];

    public function tags()
    {
        return $this->belongsToMany(Tags::class, 'meal_tag','meal_id', 'tag_id');
    }

    public function ingredients()
    {
        return $this->belongsToMany(Ingredients::class, 'meal_ingredient','meal_id', 'ingredient_id');
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
