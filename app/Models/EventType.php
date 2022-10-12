<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventType extends Model
{
	protected $fillable = ['name', 'slug'];
	
	public function items() {
        return $this->hasMany(Event::class)->limit(20);
    }
	
}
