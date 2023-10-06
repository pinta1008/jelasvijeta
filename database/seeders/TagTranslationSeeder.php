<?php

namespace Database\Seeders;

use App\Models\Tags;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use FakerRestaurant\Provider\en_US\Restaurant as FakerRestaurantEn;
use FakerRestaurant\Provider\de_DE\Restaurant as FakerRestaurantDe;

class TagTranslationSeeder extends Seeder
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
    
        $tags = Tags::all();
    
        foreach ($tags as $tag) 
        {
            // Engleski
            $tag->translateOrNew('en')->title = $fakerEn->dairyName();

            // Hrvatski
            $tag->translateOrNew('hr')->title = $fakerHr->word;
    
            // Njemački
            $tag->translateOrNew('de')->title = $fakerDe->dairyName();
    
            $tag->save();
        }
    }
}
