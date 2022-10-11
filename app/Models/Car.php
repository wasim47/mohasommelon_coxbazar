<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Car extends Model
{

	protected $fillable = ['name','type','model','brand','function','distance','hireprice','details', 'image','status'];

    public function getType(){
        return $this->belongsTo(CarType::class, 'type','id');
    }
}
