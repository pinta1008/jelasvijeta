<?php

namespace Database\Seeders;

use App\Models\Meals;
use Illuminate\Database\Seeder;

class MealsTranslationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        \App\Models\Meals::factory(10)->create();
    }
}
