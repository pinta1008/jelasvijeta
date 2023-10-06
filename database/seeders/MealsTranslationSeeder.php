<?php

namespace Database\Seeders;

use App\Models\Meals;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

class MealsTranslationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $fakerEn = Faker::create('en_US'); // Engleski
        $fakerEn->addProvider(new FakerRestaurantEn($fakerEn));

        $fakerDe = Faker::create('de_DE'); // Njemački
        $fakerDe->addProvider(new FakerRestaurantDe($fakerDe));

        $fakerHr = Faker::create('hr_HR'); // Hrvatski
    
        $meals = Meals::all();
    
        foreach ($meals as $meal) 
        {
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
        }
    }
}
