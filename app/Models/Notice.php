<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{

	protected $fillable = ['notice_type_id','name', 'slug','details', 'image', 'meta_details','keywords','sequence', 'status'];
}
