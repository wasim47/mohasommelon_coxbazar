<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\Fastival;
use Validator;
use Image;


class FastivalController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allfastival = Fastival::orderBy('id','desc')->get();
    	return view('admin.fastival.index',compact('allfastival'));
     }


    public function create()
    {
        return view('admin.fastival.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
             'image' => ['required']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'fastival_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/fastival/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 700, 280);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }


        $m = new Fastival;
		
		$expval=explode(' ',$request->name);
		$impval=implode('-',$expval);
		$slug = str_replace([',', "'",'"', '/','|','.','`','%','#','"','?'],'' , strtolower($impval));
		
		$m->fastival_type_id = $request->type;
		$m->name = $request->name;
		$m->slug = $slug;
		$m->details = $request->details;
		$m->image = $savedFileName;
		$m->sequence = $request->sequence;
		$m->status = $request->status;
		$m->meta_details = $request->meta_details;
		$m->keywords = $request->keywords;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/fastival');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $fastival = Fastival::find($id);
        return view('admin.fastival.edit',compact('fastival'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
       		 'image' => ['required']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'fastival_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/fastival/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 700, 280);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillimage;
         }


        $fastival = Fastival::find($id);
		
		$expval=explode(' ',$request->name);
		$impval=implode('-',$expval);
		$slug = str_replace([',', "'",'"', '/','|','.','`','%','#','"','?'],'' , strtolower($impval));
		
        $menuUpdate = array(
			'fastival_type_id'=>  $request->type,
			'name'=>  $request->name,
			'slug'=>  $slug,
			'details'=>  $request->details,
			'image'=>  $savedFileName,
			'sequence'=>  $request->sequence,
			'status'=>  $request->status,
			'meta_details'=>  $request->meta_details,
			'keywords'=>  $request->keywords,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $fastival->update($menuUpdate);
        return redirect('administration/fastival');
    }

    public function destroy($id)
    {
        $menuItem = Fastival::find($id);
        $menuItem->delete();
        return redirect('administration/fastival');
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
