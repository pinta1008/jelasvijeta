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
        $meal = Meals::find(6);
        $ingredientIds = [9,10];
        $meal->ingredients()->attach($ingredientIds);

        $meal = Meals::find(6);
        $tagIds = [7,8];
        $meal->tags()->attach($tagIds);
    }
}
