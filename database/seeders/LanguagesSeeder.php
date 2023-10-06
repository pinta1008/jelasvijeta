<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LanguagesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('languages')->insert([
            ['locale' => 'en', 'name' => 'English'],
            ['locale' => 'hr', 'name' => 'Hrvatski'],
            ['locale' => 'de', 'name' => 'Deutsch'],
        ]);
    }
}
