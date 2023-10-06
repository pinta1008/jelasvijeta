<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('meals_translations', function (Blueprint $table) {
            // Drop name column
            $table->dropColumn('name');
            
            // Add title column
            $table->string('title');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('meals_translations', function (Blueprint $table) {
            $table->dropColumn('title');
            $table->string('name');
        });
    }
};
