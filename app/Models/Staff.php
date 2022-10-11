<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{

	protected $fillable = ['name', 'designation','details', 'image', 'meta_details','keywords','sequence', 'status'];
}
