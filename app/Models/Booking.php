<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{

	protected $fillable = ['name','mobile','email','car_id','from_address','to_address','car_id','journey_date', 'journey_time','status'];

    public function getCar(){
        return $this->belongsTo(Car::class, 'car_id','id');
    }
}
