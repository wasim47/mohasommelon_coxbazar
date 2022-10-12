<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MemberType extends Model
{
	protected $fillable = ['name','slug','position'];
	
	public function items() {
        return $this->hasMany(Member::class,'member_type_id','id');
    }
	
}
