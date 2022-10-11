<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\Advertisement;
use Validator;
use Image;


class AdvertisementController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$alladvertisement = Advertisement::orderBy('id','desc')->get();
    	return view('admin.advertisement.index',compact('alladvertisement'));
     }


    public function create()
    {
        return view('admin.advertisement.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
			 'sequence' => ['required', 'numeric', 'unique:advertisements'],
             'image' => ['required|image']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'advertisement_'.time() . '.' . $file->getClientOriginalExtension();

					$pathLarge = 'uploads/advertisement/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 1500, 500);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }


        $m = new Advertisement;
		$m->name = $request->name;
		$m->url = $request->url;
		$m->image = $savedFileName;
		$m->status = $request->status;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/advertisement');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $advertisement = Advertisement::find($id);
        return view('admin.advertisement.edit',compact('advertisement'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
       		 'image' => ['required|image']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'advertisement_'.time() . '.' . $file->getClientOriginalExtension();

					$pathLarge = 'uploads/advertisement/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 1500, 500);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillthumb;
         }


        $advertisement = Advertisement::find($id);
        $menuUpdate = array(
			'name'=>  $request->name,
			'url'=>  $request->url,
			'image'=>  $savedFileName,
			'status'=>  $request->status,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $advertisement->update($menuUpdate);
        return redirect('administration/advertisement');
    }

    public function destroy($id)
    {
        $menuItem = Advertisement::find($id);
        $menuItem->delete();
        return redirect('administration/advertisement');
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
