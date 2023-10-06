<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Tags extends Model implements TranslatableContract
{
    use Translatable;

    public $translatedAttributes = ['title'];

    public $translationForeignKey = 'tag_id';

    use HasFactory;

    protected $fillable = ['slug'];

    public function meals()
    {
        return $this->belongsToMany(Meals::class, 'meal_tag','tag_id', 'meal_id');
    }

    protected static function booted()
    {
        static::creating(function ($tags) {
            $latestId = self::max('id') + 1;
             $tags->slug = 'tag-' . $latestId;
        });
    }
}
