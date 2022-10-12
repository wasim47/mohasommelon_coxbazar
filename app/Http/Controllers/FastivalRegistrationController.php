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


class FastivalRegistrationController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allfastivalregistration = FastivalRegistration::with('fastival')->orderBy('id','desc')->paginate(100);
		$links = Fastival::orderBy('id','DESC')->get();
    	return view('admin.fastivalregistration.index',compact('allfastivalregistration','links'));
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
        
		return view('admin.fastivalregistration.ajaxdata',compact('allfastivalregistration'));
    }

    public function create()
    {
		$links = Fastival::orderBy('id','DESC')->get();
        return view('admin.fastivalregistration.create',compact('links'));
    }

    public function store(Request $request)
    {
		$this->validate($request, [
			'name'=>'required|max:255',	
			'mobile'=>'required|unique:fastival_registrations|max:255',
        ]);
		
		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'user_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/user/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 245, 300);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }
		 
		 
		$request['image'] = $savedFileName;
		$data = $request->except('_token');
		FastivalRegistration::insert($data);

        return redirect('administration/fastivalregistration');
    }

    public function show($id)
    {
       $fastivalregistration = FastivalRegistration::with('fastival')->find($id);
	   return view('admin.fastivalregistration.details',compact('fastivalregistration'));
    }

    public function edit($id)
    {
        $fdata = FastivalRegistration::with('fastival')->find($id);
		//dd($fdata);
		$links = Fastival::orderBy('id','DESC')->get();
		
        return view('admin.fastivalregistration.edit',compact('fdata','links'));

    }

    public function update(Request $request, $id)
    {
		$this->validate($request, [
			'name'=>'required|max:255',	
			'mobile'=>'required|max:255',
        ]);
		
        $menu = FastivalRegistration::find($id);
		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'user_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/user/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 245, 300);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillimage;
         }
		 
		//dd($savedFileName);
		
		
		$data = $request->except('_token');
		$data['image'] = $savedFileName;
        $menu->update($data);
        return redirect('administration/fastivalregistration');
    }

    public function destroy($id)
    {
        $menuItem = FastivalRegistration::find($id);
        $menuItem->delete();
        return redirect('administration/fastivalregistration');
    }
	
	public function printdata($id)
    {		
        $fastivalregistration = FastivalRegistration::find($id);
		
        return view('admin.fastivalregistration.print',compact('fastivalregistration'));
    }
	
	public function imageResize($file, $path, $filename, $width, $height)
	{
		//$img = Image::make($file)->resize($width, $height)->save($path, $filename, 100);

		$img = Image::make($file);
		$img->resize($width, $height, function ($constraint) {
            $constraint->aspectRatio();
        });

        $img->resizeCanvas($width, $height, 'center', false, array(255, 255, 255, 0));
		$img->save($path);
	}

}
