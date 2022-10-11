<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Career extends Model
{

	protected $fillable = ['job_title', 'slug','job_requirement','edu_requirement','experience','salary','job_type','publishdate','deadline', 'status'];
}
