<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\News;
use Validator;
use Image;


class NewsController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allnews = News::orderBy('id','desc')->get();
    	return view('admin.news.index',compact('allnews'));
     }


    public function create()
    {
        return view('admin.news.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
             'image' => ['required|image']
		]);


		if ($request->hasFile('image')) {
            if($request->file('image')->isValid()) {
                try {
                    $file = $request->file('image');
                    $savedFileName = 'news_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/news/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 700, 330);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }

		 if ($request->hasFile('files')) {
            if($request->file('files')->isValid()) {
                try {
                    $file = $request->file('files');
                    $savedPdfFileName = 'news_pdf_'.time() . '.' . $file->getClientOriginalExtension();  
					$file->move("uploads/news/file/", $savedPdfFileName); 

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedPdfFileName = '';
         }



        $m = new News;
		$m->name = $request->name;
		$m->details = $request->details;
		$m->image = $savedFileName;
		$m->publish_date = date('Y-m-d',strtotime($request->publish_date));
		$m->files = $savedPdfFileName;
		$m->sequence = $request->sequence;
		$m->status = $request->status;
		$m->meta_details = $request->meta_details;
		$m->keywords = $request->keywords;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/news');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $news = News::find($id);
        return view('admin.news.edit',compact('news'));

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
                    $savedFileName = 'news_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/news/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 700, 330);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillimage;
         }

	
	 if ($request->hasFile('files')) {
            if($request->file('files')->isValid()) {
                try {
                    $file = $request->file('files');
                    $savedPdfFileName = 'news_pdf_'.time() . '.' . $file->getClientOriginalExtension();  
					$file->move("uploads/news/file/", $savedPdfFileName); 

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedPdfFileName = $request->existfile;
         }


        $news = News::find($id);
        $menuUpdate = array(
			'name'=>  $request->name,
			'details'=>  $request->details,
			'image'=>  $savedFileName,
			'sequence'=>  $request->sequence,
			'files'=>  $savedPdfFileName,
			'publish_date'=>  date('Y-m-d',strtotime($request->publish_date)),
			'status'=>  $request->status,
			'meta_details'=>  $request->meta_details,
			'keywords'=>  $request->keywords,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $news->update($menuUpdate);
        return redirect('administration/news');
    }

    public function destroy($id)
    {
        $menuItem = News::find($id);
        $menuItem->delete();
        return redirect('administration/news');
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
