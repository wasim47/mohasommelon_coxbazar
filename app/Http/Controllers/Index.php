<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use App\Models\Car;
use App\Models\Content;
use App\Models\Gallery;
use App\Models\Management;
use App\Models\Member;
use App\Models\Menu;
use App\Models\Message;
use App\Models\Sponsor;
use App\Models\VideoGallery;
use Illuminate\Http\Request;
use Validator;

class Index extends Controller
{
    public function __construct()
    {
    }

    public function index()
    {
        $banners = Banner::where('status', 1)->orderBy('sequence', 'ASC')->get();
        $articles = Content::where('menu_id', 1)->first();
        $messages = Message::where('status', 1)->orderBy('sequence', 'ASC')->get();
        $partners = Sponsor::where('status', 1)->orderBy('id', 'ASC')->get();
        $galleries = Gallery::where('status', 1)->orderBy('sequence', 'ASC')->get();
        $members = Member::where('status', 1)->orderBy('id', 'ASC')->take(15)->get();
        $boardofdirector = Management::inRandomOrder()->take(9)->get();

        return view('frontend.home', compact('banners', 'articles', 'members', 'boardofdirector', 'messages', 'partners', 'galleries'));
    }

    public function contents()
    {
        // dd(request());
        $slug = request()->segment(2);
        $sslug = request()->segment(3);
        $ssslug = request()->segment(4);

        $menus = Menu::where('parent_id', null)->get();
        if ($slug != '' && $sslug != '' && $ssslug != '') {
            $getParentID = Menu::where('uri', $ssslug)->select('parent_id', 'sparent_id')->first();
            $menuslug = Menu::where([['parent_id', $slug], ['sparent_id', $sslug], ['uri', $ssslug]])->first();
        } elseif ($slug != '' && $sslug != '' && $ssslug == '') {
            $getParentID = Menu::where('uri', $sslug)->select('parent_id')->first();
            $menuslug = Menu::where([['parent_id', $slug], ['uri', $sslug]])->first();
        } elseif ($slug != '' && $sslug == '' && $ssslug == '') {
            $menuslug = Menu::where('uri', $slug)->first();
        } else {
            return redirect(route('home'));
        }

        $articles = Content::where('menu_id', $menuslug->id)->first();
        $allsubmenus = Menu::where('parent_id', $menuslug->id);

        return view('frontend.article', compact('articles', 'menus', 'menuslug', 'allsubmenus'));
    }

    public function messages()
    {
        $menus = Menu::where('parent_id', null)->get();
        $services = Service::all();

        return view('frontend.service', compact('menus', 'services'));
    }

    public function messages_details($id)
    {
        $messages = Message::where('id', $id)->orderBy('id', 'DESC')->first();

        return view('frontend.message_details', compact('messages'));
    }

    public function director(Request $req)
    {
        $menus = Menu::where('parent_id', null)->get();
        $managements = Management::all();

        return view('frontend.director', compact('managements', 'menus'));
    }

    public function director_details($id)
    {
        $menus = Menu::where('parent_id', null)->get();
        $alldirector = Management::all();
        $managements = Management::where('id', $id)->first();

        return view('frontend.director_details', compact('menus', 'managements', 'alldirector'));
    }

    public function ourteam(Request $req)
    {
        $menus = Menu::where('parent_id', null)->get();
        $ourteams = Employee::all();

        return view('frontend.ourteam', compact('ourteams', 'menus'));
    }

    public function ourteam_details($id)
    {
        $menus = Menu::where('parent_id', null)->get();
        $ourteams = Employee::where('id', $id)->first();

        return view('frontend.ourteam_details', compact('menus', 'ourteams'));
    }

    public function product(Request $req)
    {
        $menus = Menu::where('parent_id', null)->get();
        $products = Car::all();

        return view('frontend.product', compact('menus', 'products'));
    }

    public function product_details($slug, Request $request)
    {
        if (count($request->all()) > 0) {
            if ($request->has('type')) {
                $detailsType = $request->type;
            } else {
                $detailsType = '';
            }
        } else {
            $detailsType = '';
        }

        $menus = Menu::where('parent_id', null)->get();
        $products = Car::where('slug', $slug)->first();

        return view('frontend.product_details', compact('menus', 'products', 'detailsType'));
    }

    public function getDownload($name, $files)
    {
        $file = 'uploads/report/'.$files;

        $headers = ['Content-Type: application/pdf'];

        return Response::download($file, $files, $headers);
    }

    public function photos(Request $req)
    {
        $menus = Menu::where('parent_id', null)->get();
        $photos = Gallery::all();

        return view('frontend.photos', compact('menus', 'photos'));
    }

    public function videos(Request $req)
    {
        $menus = Menu::where('parent_id', null)->get();
        $videos = VideoGallery::all();

        return view('frontend.videos', compact('menus', 'videos'));
    }

    public function bookNow(Request $request)
    {
        $validator = Validator::make($request->all(), [
             'name' => ['required', 'string', 'max:255'],
             'mobile' => ['required', 'string', 'max:255'],
             'car_id' => ['required', 'string', 'max:255'],
             'from_address' => ['required', 'string', 'max:255'],
        ]);

        Booking::insert($request->except('_token'));

        return redirect()->back()->with('message', 'Successfully Sent booking request');
    }
}
