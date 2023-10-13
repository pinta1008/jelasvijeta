<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

class CategoryFactory extends Factory
{
    protected $model = Category::class;

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

        return $this->afterCreating(function (Category $category) use ($fakerEn, $fakerDe, $fakerHr) {
            // Prijevod Eng
            $englishTitle = $fakerEn->unique()->meatName();
            $category->translateOrNew('en')->title = $englishTitle;
            $category->save();

            // Prijevod Hr
            $category->translateOrNew('hr')->title = $fakerHr->unique()->word();
            $category->save();

            // Prijevod Njem
            $category->translateOrNew('de')->title = $fakerDe->unique()->meatName();
            $category->save();
        });
    }
}
