<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Booking;


class BookingController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allbooking = Booking::with('getCar')->orderBy('id','desc')->get();
    	return view('admin.booking.index',compact('allbooking'));
     }

    public function destroy($id)
    {
        $menuItem = Booking::find($id);
        $menuItem->delete();
        return redirect('administration/Booking');
    }

}
