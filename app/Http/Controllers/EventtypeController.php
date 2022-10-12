<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\EventType;
use Auth;
use DB;

class EventtypeController extends Controller
{
    public function index()
    {
        $eventtype = EventType::all();
        return view('admin.eventtype.index',compact('eventtype'));
    }

    public function create()
    {
        return view('admin.eventtype.create');
    }

  
    public function store(Request $request)
    {
        $this->validate($request, [
            'name'=>'Required'
        ]);

        $mname = $request->name;
        $slug=strtolower(implode('-', explode(' ', $mname)));
        $m = new EventType;
        
        $m->slug = $slug;
        $m->name = $request->name;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/eventtype');
    }

   
    public function show($id)
    {
        //
    }

   
    public function edit($id)
    {
        $menu = EventType::find($id);		
        return view('admin.eventtype.edit',compact('menu'));
    }

  
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name'=>'Required'
        ]);


        $menu = EventType::find($id);
        $slug = strtolower(implode('-', explode(' ', $request->name)));

        $menuUpdate = array(
			'name'=>$request->name,
            'slug'=>$slug
        );

        $menu->update($menuUpdate);
        return redirect('administration/eventtype');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $menuItem = EventType::find($id);
        $menuItem->delete();
        return redirect('/mne/eventtype');
    }
}
