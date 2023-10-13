<?php

namespace Database\Seeders;

use App\Models\Meals;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MealSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $meal = Meals::find(2);
        $ingredientIds = [3,4];
        $meal->ingredients()->attach($ingredientIds);

        $meal = Meals::find(2);
        $tagIds = [2,3,4];
        $meal->tags()->attach($tagIds);
    }
}
