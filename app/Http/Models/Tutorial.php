<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Cartalyst\Sentry\Users\LoginRequiredException;

class Tutorial extends Model {

    protected $fillable = ['st_instruct', 'requirements', 'title', 'description', 'noted'];

    public function firmware() {
        return $this->hasMany(Template::class);
    }

}
