<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\CompanyProfile;
use Validator;
use Image;
use Illuminate\Filesystem\Filesystem;


class CompanyProfileController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allcompanyprofile = CompanyProfile::orderBy('id','desc')->get();
    	return view('admin.companyprofile.index',compact('allcompanyprofile'));
     }


    public function create()
    {
        return view('admin.companyprofile.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
			 'sequence' => ['required', 'numeric', 'unique:companyprofiles'],
             'image' => ['required|image']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'companyprofile_'.time() . '.' . $file->getClientOriginalExtension();

					$pathLarge = 'uploads/companyprofile/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, null, 400);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }


        $m = new CompanyProfile;
		$m->name = $request->name;
		$m->slogan = $request->slogan;
		$m->email = $request->email;
		$m->contact = $request->contact;
		$m->address = $request->address;
		$m->hotline = $request->hotline;
		$m->url = $request->url;
		$m->tin = $request->tin;
		$m->bin = $request->bin;
		$m->image = $savedFileName;
		$m->sequence = $request->sequence;
		$m->status = $request->status;
		$m->meta_details = $request->meta_details;
		$m->keywords = $request->keywords;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/companyprofile');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $companyprofile = CompanyProfile::find($id);
        return view('admin.companyprofile.edit',compact('companyprofile'));

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
                    $savedFileName = 'companyprofile_'.time() . '.' . $file->getClientOriginalExtension();

					$pathLarge = 'uploads/companyprofile/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, null, 400);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillthumb;
         }


        $companyprofile = CompanyProfile::find($id);
        $menuUpdate = array(
			'name'=>  $request->name,
			'slogan'=>  $request->slogan,
			'email'=>  $request->email,
			'contact'=>  $request->contact,
			'address'=>  $request->address,
			'hotline'=>  $request->hotline,
			'url'=>  $request->url,
			'image'=>  $savedFileName,
			'tin'=>  $request->tin,
			'bin'=>  $request->bin,
			'sequence'=>  $request->sequence,
			'status'=>  $request->status,
			'meta_details'=>  $request->meta_details,
			'keywords'=>  $request->keywords,
			'updated_at'=> date('Y-m-d H:i:s')
		 );



        $companyprofile->update($menuUpdate);
        return redirect('administration/companyprofile');
    }

    public function destroy($id)
    {
        $menuItem = CompanyProfile::find($id);
        $menuItem->delete();
        return redirect('administration/companyprofile');
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
