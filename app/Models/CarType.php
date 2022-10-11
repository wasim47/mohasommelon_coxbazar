<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CarType extends Model
{
	protected $fillable = ['name', 'slug'];

    public function getCar(){
        return $this->hasMany(Car::class, 'type','id');
    }
}
