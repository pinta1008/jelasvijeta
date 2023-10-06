<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Category extends Model implements TranslatableContract
{
    use HasFactory, Translatable;

    protected $translationModel = CategoriesTranslation::class;

    public $translationForeignKey = 'category_id';  //promjena kljuca u prilikom prijevoda zbog drugacije defaultne vrijednosti Astrotomica\Translationa

    public $translatedAttributes = ['title'];

    protected $fillable = ['slug'];

    protected static function booted()
    {
        static::creating(function ($category) {
            $latestId = self::max('id') + 1;
             $category->slug = 'category-' . $latestId;
        });
    }
}
