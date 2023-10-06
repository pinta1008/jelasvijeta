<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

class CategoryTranslationSeeder extends Seeder
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
    
        $categories = Category::all();
    
        foreach ($categories as $category) 
        {
            // Engleski
            $category->translateOrNew('en')->title = $fakerEn->meatName();

            // Hrvatski
            $category->translateOrNew('hr')->title = $fakerHr->word;
    
            // Njemački
            $category->translateOrNew('de')->title = $fakerDe->meatName();
    
            $category->save();
        }
    }
}
