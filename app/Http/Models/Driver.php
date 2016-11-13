<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Cartalyst\Sentry\Users\LoginRequiredException;
use App\Http\Models\Fcategory;
use App\Http\Models\DriverName;
use App\Http\Models\Tutorial;
use App\User;

class Driver extends Model {

    //protected $fillable = ['fcategory_id', 'st_instruct', 'device_id', 'device_model', 'device_version', 'tutorial_id', 'country_id', 'd_links', 'd_sizes', 'noted', 'status', 'featured', 'user_id'];
    protected $fillable = ['driver_id', 'tutorial_id', 'user_id', 'st_instruct', 'driver_model', 'driver_type', 'd_links', 'supports', 'd_sizes', 'noted', 'status', 'featured'];

    public function fcategory() {
        return $this->belongsTo(Fcategory::class);
    }

    public function driver() {
        return $this->belongsTo(DriverName::class);
    }

    public function tutorial() {
        return $this->belongsTo(Tutorial::class);
    }

    public function user() {
        return $this->belongsTo(User::class);
    }

}
