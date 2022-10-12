<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FastivalRegistration extends Model
{

	protected $fillable = ['fastival_id','name','fname','mname','nid', 'mobile','email','dob','blood_group','profession','address','favourite','published_books','image'];	
	
	public function fastival() {
		return $this->belongsTo(Fastival::class, 'fastival_id','id');
    }
	
}
