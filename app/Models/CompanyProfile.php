<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyProfile extends Model
{
	protected $fillable = ['name', 'url', 'slogan','email','address','contact','hotline','image', 'meta_details','keywords','sequence', 'status','tin','bin'];
}
