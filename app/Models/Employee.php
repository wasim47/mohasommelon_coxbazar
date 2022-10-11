<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{

	protected $fillable = ['name', 'designation','branch', 'image', 'department','mobile','email', 'status'];
}
