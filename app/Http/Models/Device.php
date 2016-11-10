<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Cartalyst\Sentry\Users\LoginRequiredException;

class Device extends Model {

    protected $fillable = ['name', 'type', 'image'];
    
        public function firmware() {
        return $this->hasMany(Template::class);
    }

}
