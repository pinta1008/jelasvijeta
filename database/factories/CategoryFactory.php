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
        $fakerEn = Faker::create('en_US'); // English
        $fakerEn->addProvider(new FakerRestaurantEn($fakerEn));

        $fakerDe = Faker::create('de_DE'); // German
        $fakerDe->addProvider(new FakerRestaurantDe($fakerDe));

        return $this->afterCreating(function (Category $category) use ($fakerEn, $fakerDe) {
            // Creating English translation
            $englishTitle = $fakerEn->unique()->meatName();
            $category->translateOrNew('en')->title = $englishTitle;
            $category->save();

            // Creating Croatian translation using faker
            $category->translateOrNew('hr')->title = $this->faker->unique()->word();
            $category->save();

            // Creating German translation using faker
            $category->translateOrNew('de')->title = $fakerDe->unique()->meatName();
            $category->save();
        });
    }
}
