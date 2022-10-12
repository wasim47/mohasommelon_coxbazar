<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\Event;
use App\Models\EventType;
use Validator;
use Image;


class EventController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allevent = Event::orderBy('id','desc')->get();
    	return view('admin.event.index',compact('allevent'));
     }


    public function create()
    {
		$eventtype = EventType::orderBy('id', 'DESC')->get();	
        return view('admin.event.create',compact('eventtype'));
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
                    $savedFileName = 'event_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/event/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 700, 280);

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
                    $savedPdfFileName = 'event_pdf_'.time() . '.' . $file->getClientOriginalExtension();  
					$file->move("uploads/event/file/", $savedPdfFileName); 

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedPdfFileName = '';
         }


        $m = new Event;
		
		$expval=explode(' ',$request->name);
		$impval=implode('-',$expval);
		$slug = str_replace([',', "'",'"', '/','|','.','`','%','#','"','?'],'' , strtolower($impval));
		
		$m->event_type_id = $request->type;
		$m->name = $request->name;
		$m->slug = $slug;
		$m->details = $request->details;
		$m->image = $savedFileName;
		$m->files = $savedPdfFileName;
		$m->sequence = $request->sequence;
		$m->status = $request->status;
		$m->meta_details = $request->meta_details;
		$m->keywords = $request->keywords;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/event');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $event = Event::find($id);
		$eventtype = EventType::orderBy('id', 'DESC')->get();	
        return view('admin.event.edit',compact('event','eventtype'));

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
                    $savedFileName = 'event_'.time() . '.' . $file->getClientOriginalExtension();    

					$pathLarge = 'uploads/event/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 700, 280);

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
                    $savedPdfFileName = 'event_pdf_'.time() . '.' . $file->getClientOriginalExtension();  
					$file->move("uploads/event/file/", $savedPdfFileName); 

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedPdfFileName = $request->existfile;
         }

        $event = Event::find($id);
		
		$expval=explode(' ',$request->name);
		$impval=implode('-',$expval);
		$slug = str_replace([',', "'",'"', '/','|','.','`','%','#','"','?'],'' , strtolower($impval));
		
        $menuUpdate = array(
			'event_type_id'=>  $request->type,
			'name'=>  $request->name,
			'slug'=>  $slug,
			'details'=>  $request->details,
			'image'=>  $savedFileName,
			'files'=>  $savedPdfFileName,
			'sequence'=>  $request->sequence,
			'status'=>  $request->status,
			'meta_details'=>  $request->meta_details,
			'keywords'=>  $request->keywords,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $event->update($menuUpdate);
        return redirect('administration/event');
    }

    public function destroy($id)
    {
        $menuItem = Event::find($id);
        $menuItem->delete();
        return redirect('administration/event');
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
