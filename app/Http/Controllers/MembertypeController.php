<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MemberType;
use Auth;
use DB;

class MembertypeController extends Controller
{
    public function index()
    {
        $membertype = MemberType::all();
        return view('admin.membertype.index',compact('membertype'));
    }

    public function create()
    {
        return view('admin.membertype.create');
    }

  
    public function store(Request $request)
    {
        $this->validate($request, [
            'name'=>'Required'
        ]);

        $mname = $request->name;
        $slug=implode('-', explode(' ', $mname));
        $m = new MemberType;
        
        $m->slug = $slug;
        $m->name = $request->name;
        $m->created_at = date('Y-m-d H:i:s');
        $m->updated_at = date('Y-m-d H:i:s');
        $m->save();

        return redirect('administration/membertype');
    }

   
    public function show($id)
    {
        //
    }

   
    public function edit($id)
    {
        $menu = MemberType::find($id);		
        return view('admin.membertype.edit',compact('menu'));
    }

  
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name'=>'Required'
        ]);


        $menu = MemberType::find($id);
        $slug = implode('-', explode(' ', $request->name));

        $menuUpdate = array(
			'name'=>$request->name,
            'slug'=>$slug
        );

        $menu->update($menuUpdate);
        return redirect('administration/membertype');
    }


	 public function setHomePosition(Request $request)
    {	
		//MemberType::query()->update(['position'=>$request->position]);
		$id = $request->mid;	
		//dd($request->all());
		
		MemberType::where('id',$id)->update(['position'=>$request->position]);	
        return redirect('administration/membertype');
    }
	
	
    public function destroy($id)
    {
        $menuItem = MemberType::find($id);
        $menuItem->delete();
        return redirect('/mne/membertype');
    }
}
