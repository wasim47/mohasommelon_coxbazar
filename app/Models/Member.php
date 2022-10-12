<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{

	protected $fillable = ['member_type_id','name', 'designation','branch', 'image', 'department','mobile','email', 'status'];	
	
	public function memberType() {
        return $this->belongsTo(MemberType::class,'member_type_id','id');
    }
}
