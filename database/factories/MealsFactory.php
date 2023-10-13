<?php

namespace Database\Factories;

use App\Models\Meals;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

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
           'status'=> 'created',
           'category_id' => rand(1, 100) <= 70 ? \App\Models\Category::inRandomOrder()->first()->id : null  //70% jela ima šansu da ima kategoriju, 30% posto da dobije NULL 
        ];
    }
    public function configure()
    { 
        $fakerEn = Faker::create('en_US');// Engleski
        $fakerEn->addProvider(new \FakerRestaurant\Provider\en_US\Restaurant($fakerEn));

        $fakerDe = Faker::create('de_DE'); // Njemački
        $fakerDe->addProvider(new FakerRestaurantDe($fakerDe));

        $fakerHr = Faker::create('hr_HR'); // Hrvatski

        return $this->afterCreating(function (Meals $meal) use ($fakerEn, $fakerDe, $fakerHr) {
            // Engleski
            $meal->translateOrNew('en')->title = $fakerEn->foodName();
            $meal->translateOrNew('en')->description = $fakerEn->sentence();

            // Hrvatski
            $meal->translateOrNew('hr')->title = $fakerHr->word;
            $meal->translateOrNew('hr')->description = $fakerHr->sentence();

            // Njemački
            $meal->translateOrNew('de')->title = $fakerDe->foodName();
            $meal->translateOrNew('de')->description = $fakerDe->sentence();

            $meal->save();
        });
    }
}
