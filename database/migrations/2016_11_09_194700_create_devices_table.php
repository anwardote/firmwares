<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDevicesTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('devices', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('image')->default('images/default_mobile.png');
            $table->enum('type', ['ANDROID', 'SYMBIAN', 'JAR', 'OTHER'])->default('ANDROID');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('devices');
    }

}
