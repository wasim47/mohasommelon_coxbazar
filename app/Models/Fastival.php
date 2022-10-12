<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Fastival extends Model
{

	protected $fillable = ['name', 'slug','details', 'image', 'meta_details','keywords','sequence', 'status'];
	
}
