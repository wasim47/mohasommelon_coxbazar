<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\Career;
use Validator;
use Image;
use Illuminate\Support\Str;


class CareerController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allcareer = Career::orderBy('id','desc')->get();
    	return view('admin.career.index',compact('allcareer'));
     }


    public function create()
    {
        return view('admin.career.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'job_title' => ['required', 'string', 'max:255']
		]);

        /*$m = new Career;
		$m->name = $request->name;
		$m->image = $savedFileName;
		$m->sequence = $request->sequence;
		$m->status = $request->status;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();*/
		$request['slug'] = Str::slug($request->job_title);
		Career::insert($request->except('_token'));
        return redirect('administration/career');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $career = Career::find($id);
        return view('admin.career.edit',compact('career'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			 'job_title' => ['required', 'string', 'max:255'],
		]);


        $career = Career::find($id);
        /*$menuUpdate = array(
			'name'=>  $request->name,
			'image'=>  $savedFileName,
			'sequence'=>  $request->sequence,
			'status'=>  $request->status,
			'updated_at'=> date('Y-m-d H:i:s')
		 );*/

        $career->update($request->all());
        return redirect('administration/career');
    }

    public function destroy($id)
    {
        $menuItem = Career::find($id);
        $menuItem->delete();
        return redirect('administration/career');
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
