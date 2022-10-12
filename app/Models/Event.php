<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{

	protected $fillable = ['event_type_id','name', 'slug','details', 'image','files', 'meta_details','keywords','sequence', 'status'];
	
	public function getEventType(){
		return $this->belongsTo(EventType::class, 'event_type_id','id');
	}	
	
	
}
