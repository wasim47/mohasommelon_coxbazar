<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Menu;
use App\Models\Content;
use App\Models\Banner;
use App\Models\Gallery;
use App\Models\Service;
use App\Models\Partner;
use App\Models\Management;
use App\Models\Employee;
use App\Models\Car;
use App\Models\VideoGallery;
use App\Models\Booking;
use App\Models\CarType;
use App\Models\VehicleFeedback;
use Validator;
use DateTime;

class Index extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {
		$banners = Banner::where('status',1)->orderBy('sequence','ASC')->get();
		$articles = Content::where('menu_id',1)->first();
		$activities = Service::where('status',1)->orderBy('id', 'DESC')->take(6)->get();
		$ourteam = Employee::where('status', 1)->orderBy('id', 'DESC')->get();
		$partners = Partner::where('status', 1)->orderBy('id', 'ASC')->get();
        $cartype = CarType::with('getCar')->orderBy('id', 'ASC')->get();
        $products = Car::where('status', 1)->inRandomOrder()->take(9)->get();
        $feedback = VehicleFeedback::inRandomOrder()->take(9)->get();
		$galleries = Gallery::where('status',1)->orderBy('sequence', 'ASC')->get();
        $boardofdirector = Management::inRandomOrder()->take(9)->get();

		return view('frontend.home',compact('banners','articles','boardofdirector','activities','feedback','ourteam','partners','products','galleries','cartype'));
    }

	public function contents()
    {
        // dd(request());
		$slug = request()->segment(2);
		$sslug = request()->segment(3);
		$ssslug = request()->segment(4);

		$menus = Menu::where('parent_id',NULL)->get();
		if($slug!='' && $sslug!='' && $ssslug!=""){
			$getParentID = Menu::where('uri', $ssslug)->select('parent_id','sparent_id')->first();
			$menuslug = Menu::where([['parent_id', $slug],['sparent_id', $sslug],['uri', $ssslug]])->first();
		}
		elseif($slug!='' && $sslug!='' && $ssslug==""){
			$getParentID = Menu::where('uri', $sslug)->select('parent_id')->first();
			$menuslug = Menu::where([['parent_id', $slug],['uri', $sslug]])->first();
		}
		elseif($slug!='' && $sslug=='' && $ssslug==""){
			$menuslug = Menu::where('uri', $slug)->first();
		}
		else{
			return redirect(route('home'));
		}


		$articles = Content::where('menu_id',$menuslug->id)->first();
		$allsubmenus = Menu::where('parent_id', $menuslug->id);
		return view('frontend.article',compact('articles','menus','menuslug','allsubmenus'));
    }

	public function activities() 
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$services = Service::all();	
		return view('frontend.service',compact('menus','services'));
    }
	
	public function activities_details($slug) 
    {      
		$menus = Menu::where('parent_id',NULL)->get();	
		$allservice = Service::all();	
		$services = Service::where('slug',$slug)->first();	
		
		return view('frontend.service_details',compact('menus','services','allservice'));
    }
	
	
	public function director(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();
		$managements = Management::all();					
		return view('frontend.director',compact('managements','menus'));
    }
	
	
	public function director_details($id) 
    {      
		$menus = Menu::where('parent_id',NULL)->get();	
		$alldirector = Management::all();	
		$managements = Management::where('id',$id)->first();		
		
		return view('frontend.director_details',compact('menus','managements','alldirector'));
    }
	
	
	public function ourteam(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();
		$ourteams = Employee::all();					
		return view('frontend.ourteam',compact('ourteams','menus'));
    }
	
	
	public function ourteam_details($id) 
    {      
		$menus = Menu::where('parent_id',NULL)->get();	
		$ourteams = Employee::where('id',$id)->first();	
		
		return view('frontend.ourteam_details',compact('menus','ourteams'));
    }
	
	public function product(Request $req)
    {
		$menus = Menu::where('parent_id',NULL)->get();
		$products = Car::all();
		return view('frontend.product',compact('menus','products'));
    }


	public function product_details($slug, Request $request)
    {
		if(count($request->all()) > 0){
			if($request->has('type')){
				$detailsType = $request->type;
			}
			else{
				$detailsType = '';
			}
		}
		else{
			$detailsType = '';
		}
		
		$menus = Menu::where('parent_id',NULL)->get();
		$products = Car::where('slug',$slug)->first();
		return view('frontend.product_details',compact('menus','products','detailsType'));
    }
	

	public function getDownload($name,$files)
	{
		$file= "uploads/report/".$files;

		$headers = array('Content-Type: application/pdf');

		return Response::download($file, $files, $headers);
	}


	public function photos(Request $req)
    {
		$menus = Menu::where('parent_id',NULL)->get();
		$photos = Gallery::all();
		return view('frontend.photos',compact('menus','photos'));
    }



	public function videos(Request $req)
    {
		$menus = Menu::where('parent_id',NULL)->get();
		$videos = VideoGallery::all();
		return view('frontend.videos',compact('menus','videos'));
    }


    public function bookNow(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
			 'mobile' => ['required', 'string', 'max:255'],
			 'car_id' => ['required', 'string', 'max:255'],
			 'from_address' => ['required', 'string', 'max:255']
		]);

		Booking::insert($request->except('_token'));
        return redirect()->back()->with('message','Successfully Sent booking request');
    }


}
