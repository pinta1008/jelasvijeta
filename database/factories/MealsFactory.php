<?php

namespace Database\Factories;

use App\Models\Meals;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\meals>
 */
class MealsFactory extends Factory
{
    protected $model = Meals::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $this->faker->addProvider(new \FakerRestaurant\Provider\en_US\Restaurant($this->faker));

        return[
           'title'=>$this->faker->foodName(),
           'description'=>$this->faker->paragraph,
           'status'=> 'created',
           'category_id' => rand(1, 100) <= 70 ? \App\Models\Category::inRandomOrder()->first()->id : null  //70% jela ima šansu da ima kategoriju, 30% posto da dobije NULL 
        ];
    }
}
