<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Ingredients extends Model implements TranslatableContract
{
    use HasFactory, Translatable;

    public $translationForeignKey = 'ingredient_id';

    public $translatedAttributes = ['title'];

    protected $fillable = ['slug'];

    public function meals()
    {
        return $this->belongsToMany(Meals::class, 'meal_ingredient', 'ingredient_id', 'meal_id');
    }   

    protected static function booted()
    {
        static::creating(function ($ingredients) {
            $latestId = self::max('id') + 1;
             $ingredients->slug = 'ingredients-' . $latestId;
        });
    }
}
