<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{

	protected $fillable = ['name', 'slug','details', 'image', 'meta_details','publish_date','files','keywords','sequence', 'status'];	
}
