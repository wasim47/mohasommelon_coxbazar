<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CarType;
use Auth;
use DB;

class CartypeController extends Controller
{
    public function index()
    {
        $cartype = CarType::all();
        return view('admin.cartype.index',compact('cartype'));
    }

    public function create()
    {
        return view('admin.cartype.create');
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            'name'=>'Required'
        ]);

        $mname = $request->name;
        $slug=strtolower(implode('-', explode(' ', $mname)));
        $m = new CarType;

        $m->slug = $slug;
        $m->name = $request->name;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/cartype');
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $menu = CarType::find($id);
        return view('admin.cartype.edit',compact('menu'));
    }


    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name'=>'Required'
        ]);


        $menu = CarType::find($id);
        $slug = strtolower(implode('-', explode(' ', $request->name)));

        $menuUpdate = array(
			'name'=>$request->name,
            'slug'=>$slug
        );

        $menu->update($menuUpdate);
        return redirect('administration/cartype');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $menuItem = CarType::find($id);
        $menuItem->delete();
        return redirect('/mne/cartype');
    }
}
