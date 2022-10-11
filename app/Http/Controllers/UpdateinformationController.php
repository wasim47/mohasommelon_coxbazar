<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\UpdateInformation;
use Validator;
use Image;


class UpdateinformationController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allupdateinformation = UpdateInformation::orderBy('id','desc')->get();
    	return view('admin.updateinformation.index',compact('allupdateinformation'));
     }


    public function create()
    {
        return view('admin.updateinformation.create');
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
		]);


        $m = new UpdateInformation;
		$m->name = $request->name;
		$m->status = $request->status;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/updateinformation');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $updateinformation = UpdateInformation::find($id);
        return view('admin.updateinformation.edit',compact('updateinformation'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255'],
		]);

        $updateinformation = UpdateInformation::find($id);
        $menuUpdate = array(
			'name'=>  $request->name,
			'status'=>  $request->status,
			'updated_at'=> date('Y-m-d H:i:s')
		 );

        $updateinformation->update($menuUpdate);
        return redirect('administration/updateinformation');
    }

    public function destroy($id)
    {
        $menuItem = UpdateInformation::find($id);
        $menuItem->delete();
        return redirect('administration/updateinformation');
    }

}
