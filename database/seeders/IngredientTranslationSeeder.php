<?php

namespace Database\Seeders;

use App\Models\Ingredients;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

class IngredientTranslationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        \App\Models\Ingredients::factory(5)->create();
    }
}
