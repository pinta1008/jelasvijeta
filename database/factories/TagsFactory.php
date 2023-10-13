<?php

namespace Database\Factories;

use App\Models\Tags;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\tags>
 */
class TagsFactory extends Factory
{
    protected $model = Tags::class;

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

        $fakerHr = \Faker\Factory::create('hr_HR'); // Hrvatski

        return $this->afterCreating(function (Tags $tag) use ($fakerEn, $fakerDe, $fakerHr) {
            // Creating English translation
            $englishTitle = $fakerEn->unique()->dairyName();
            $tag->translateOrNew('en')->title = $englishTitle;
            $tag->save();

            // Creating Croatian translation using faker
            $tag->translateOrNew('hr')->title = $fakerHr->firstName();
            $tag->save();

            // Creating German translation using faker
            $tag->translateOrNew('de')->title = $fakerDe->unique()->dairyName();
            $tag->save();
        });
    }
}
