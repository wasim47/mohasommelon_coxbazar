<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\Sponsor;
use Validator;
use Image;


class SponsorController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allsponsor = Sponsor::orderBy('id','desc')->get();
    	return view('admin.sponsor.index',compact('allsponsor'));
     }


    public function create()
    {
        return view('admin.sponsor.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
             'image' => ['required|image']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'sponsor_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/sponsor/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 300, 150);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }


        $m = new Sponsor;
		$m->name = $request->name;
		$m->url = $request->url;
		$m->image = $savedFileName;
		$m->status = $request->status;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/sponsor');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $sponsor = Sponsor::find($id);
        return view('admin.sponsor.edit',compact('sponsor'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
       		'image' => ['required|image']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'sponsor_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/sponsor/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 300, 150);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillthumb;
         }


        $sponsor = Sponsor::find($id);
        $menuUpdate = array(
			'name'=>  $request->name,
			'url'=>  $request->url,
			'image'=>  $savedFileName,
			'status'=>  $request->status,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $sponsor->update($menuUpdate);
        return redirect('administration/sponsor');
    }

    public function destroy($id)
    {
        $menuItem = Sponsor::find($id);
        $menuItem->delete();
        return redirect('administration/sponsor');
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
