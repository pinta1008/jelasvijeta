<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Ingredients;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ingredients>
 */
class IngredientsFactory extends Factory
{
    protected $model = Ingredients::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [];
    }
    public function configure()
    {
        $fakerEn = Faker::create('en_US'); // Eng
        $fakerEn->addProvider(new FakerRestaurantEn($fakerEn));

        $fakerDe = Faker::create('de_DE'); // Njemački
        $fakerDe->addProvider(new FakerRestaurantDe($fakerDe));

        $fakerHr = Faker::create('hr_HR'); // Hrvatski

        return $this->afterCreating(function (Ingredients $ingredient) use ($fakerEn, $fakerDe, $fakerHr) {
            // Prijevod Eng
            $englishTitle = $fakerEn->unique()->vegetableName();
            $ingredient->translateOrNew('en')->title = $englishTitle;
            $ingredient->save();

            // Prijevod Hr
            $ingredient->translateOrNew('hr')->title = $fakerHr->unique()->word();
            $ingredient->save();

            // Prijevod Njem
            $ingredient->translateOrNew('de')->title = $fakerDe->unique()->vegetableName();
            $ingredient->save();
        });
    }
}
