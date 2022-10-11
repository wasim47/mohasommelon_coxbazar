<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{

	protected $fillable = ['name', 'url','details', 'image','keywords','sequence', 'status'];
}
