<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\FastivalRegistration;
use App\Models\Fastival;
use Validator;
use Image;


class IdcardController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allfastivalregistration = FastivalRegistration::with('fastival')->orderBy('id','desc')->paginate(100);
		$links = Fastival::orderBy('id','DESC')->get();
    	return view('admin.idcard.index',compact('allfastivalregistration','links'));
     }

	public function getAjaxUserData(Request $request)
    {		
		$keyword = $request->keyword;
		$blood_group = $request->blood_group;
		$fastival_id = $request->fastival_id;
		
		$query = FastivalRegistration::query();
		
		if($keyword!=""){
			  $search = $keyword;			  
			  $query->where(function($query) use ($search) {
				$query->where('name', 'LIKE', '%'.$search.'%')
				->orWhere('fname', 'LIKE', '%'.$search.'%')
				->orWhere('mname', 'LIKE', '%'.$search.'%')
				->orWhere('mobile', 'LIKE', '%'.$search.'%')
				->orWhere('email', 'LIKE', '%'.$search.'%')
				->orWhere('nid', 'LIKE', '%'.$search.'%')
				->orWhere('profession', 'LIKE', '%'.$search.'%')
				->orWhere('favourite', 'LIKE', '%'.$search.'%')
				->orWhere('published_books', 'LIKE', '%'.$search.'%')
				->orWhere('dob', 'LIKE', '%'.$search.'%');
			  });
		  }
		  
		
		if($blood_group!="" && $fastival_id!=""){
			$query->where('blood_group',$blood_group)->where('fastival_id',$fastival_id);
		}
		elseif($blood_group!="" && $fastival_id==""){
			$query->where('blood_group',$blood_group);
		}
		
		elseif($blood_group=="" && $fastival_id!=""){
			$query->where('fastival_id',$fastival_id);
		}
		$allfastivalregistration = $query->with('fastival')->paginate(100);
        
		return view('admin.idcard.ajaxdata',compact('allfastivalregistration'));
    }

    
	public function cardprint($count)
    {		
		if($count==2){
			$pagename = 'print2';
		}
		elseif($count==3){
			$pagename = 'print';
		}
		else{
			$pagename = 'print';
		}
        $allfastivalregistration = FastivalRegistration::with('fastival')->orderBy('id','desc')->paginate(100);		
        return view('admin.idcard.'.$pagename,compact('allfastivalregistration'));
    }
	
	public function printdata($id)
    {		
        $allfastivalregistration = FastivalRegistration::find($id);		
        return view('admin.idcard.print',compact('allfastivalregistration'));
    }

}
