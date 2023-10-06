<?php

namespace Database\Seeders;

use App\Models\Ingredients;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

class IngredientTranslationSeeder extends Seeder
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
    
        $ingredients = Ingredients::all();
    
        foreach ($ingredients as $ingredient) 
        {
            // Engleski
            $ingredient->translateOrNew('en')->title = $fakerEn->vegetableName();

            // Hrvatski
            $ingredient->translateOrNew('hr')->title = $fakerHr->word;
    
            // Njemački
            $ingredient->translateOrNew('de')->title = $fakerDe->vegetableName();
    
            $ingredient->save();
        }
    }
}
