<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\VehicleFeedback;
use Validator;
use Image;


class VehicleFeedbackController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allvehicle_feedback = VehicleFeedback::orderBy('id','desc')->get();
    	return view('admin.vehicle_feedback.index',compact('allvehicle_feedback'));
     }


    public function create()
    {
        return view('admin.vehicle_feedback.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
		]);


        $m = new VehicleFeedback;
		$m->name = $request->name;
		$m->company = $request->company;
		$m->message = $request->message;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/vehicle_feedback');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $vehicle_feedback = VehicleFeedback::find($id);
        return view('admin.vehicle_feedback.edit',compact('vehicle_feedback'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
		]);

        $vehicle_feedback = VehicleFeedback::find($id);
        $menuUpdate = array(
			'name'=>  $request->name,
			'company'=>  $request->company,
			'message'=>  $request->message,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $vehicle_feedback->update($menuUpdate);
        return redirect('administration/vehicle_feedback');
    }

    public function destroy($id)
    {
        $menuItem = VehicleFeedback::find($id);
        $menuItem->delete();
        return redirect('administration/vehicle_feedback');
    }

}
