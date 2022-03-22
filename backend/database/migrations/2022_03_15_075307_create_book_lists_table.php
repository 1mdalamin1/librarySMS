<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('book_lists', function (Blueprint $table) {
            $table->id();
            $table->string('name', 300)->nullable();
            $table->string('image', 300)->nullable();
            $table->string('author', 300)->nullable();
            $table->string('section', 300)->nullable();
            $table->string('published_data', 100)->nullable();

            $table->string('creator', 300)->nullable();
            $table->string('slug', 300)->nullable();
            $table->integer('status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('book_lists');
    }
};
