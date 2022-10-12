<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\Member;
use App\Models\MemberType;
use Validator;
use Image;


class MemberController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allmember = Member::with('memberType')->orderBy('id','desc')->get();
		///dd($allmember);
    	return view('admin.member.index',compact('allmember'));
     }


    public function create()
    {
		$membertypes = MemberType::all();
        return view('admin.member.create',compact('membertypes'));
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
			 'designation' => ['required', 'string', 'max:255'],
			 'branch' => ['required', 'string', 'max:255'],
			 'department' => ['required', 'string', 'max:255'],
			 'contact' => ['required', 'string', 'max:255']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'member_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/member/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 450, 450);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }


        $m = new Member;
		$m->member_type_id = $request->type;
		$m->name = $request->name;
		$m->image = $savedFileName;
		$m->branch = $request->branch;
		$m->designation = $request->designation;
		$m->department = $request->department;
		$m->mobile = $request->contact;
		$m->email = $request->email;
		$m->status = $request->status;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/member');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $member = Member::find($id);
		$membertypes = MemberType::all();
        return view('admin.member.edit',compact('member','membertypes'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
			 'designation' => ['required', 'string', 'max:255'],
			 'branch' => ['required', 'string', 'max:255'],
			 'department' => ['required', 'string', 'max:255'],
			 'contact' => ['required', 'string', 'max:255']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'member_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/member/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 450, 450);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillthumb;
         }

        $member = Member::find($id);
        $menuUpdate = array(
			'member_type_id'=>  $request->type,
			'name'=>  $request->name,
			'designation'=>  $request->designation,
			'branch'=>  $request->branch,
			'department'=>  $request->department,
			'mobile'=>  $request->contact,
			'email'=>  $request->email,
			'image'=>  $savedFileName,
			'status'=>  $request->status,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $member->update($menuUpdate);
        return redirect('administration/member');
    }

    public function destroy($id)
    {
        $menuItem = Member::find($id);
        $menuItem->delete();
        return redirect('administration/member');
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
