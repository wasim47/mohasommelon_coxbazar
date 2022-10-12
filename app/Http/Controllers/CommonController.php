<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menu;
use Auth;
use DB;
use App\Models\Administration;
use App\Models\UnionInformation;
use App\Models\Shopinformation;
use App\Models\Fastival;
use App\Models\Secretary;
use Redirect;
use Rap2hpoutre\FastExcel\FastExcel;
use Validator;

class CommonController extends Controller
{
   public function deletedata(Request $req)
    {
	    $id = $req->id;
		$deletetype = $req->deletetype;
		$deleteimage = $req->deleteimage;
		$tablename = $req->tablename;

		if($deletetype=='single'){
			//$menuItem = Administration::find($id)->delete();
			DB::table($tablename)->where('id', $id)->delete();
		}
		elseif($deletetype=='multiple'){
			//$menuItem = Administration::whereIn('id', $id)->delete();
			DB::table($tablename)->whereIn('id', $id)->delete();
		}
		 return $id;
    }


	public function permissionsHospital(Request $req)
    {
		$approve_val = $req->approve_val;
		$valuearray = explode(',',$approve_val);
		
		$status = $req->status;

		 $arrayuval =  array(
			'status'=>$status
		);
		$updval = DB::table('hospitals')->whereIn('id', $valuearray)->update($arrayuval);
		$updval1 = DB::table('hospital_users')->whereIn('hospital_id', $valuearray)->update($arrayuval);

         return Redirect::back();
    }
	
	
	public function permissions(Request $req)
    {
		$approve_val = $req->approve_val;
		$valuearray = explode(',',$approve_val);
		//dd($valuearray);
		$tablename = $req->tablename;
		$status = $req->status;

		 $arrayuval =  array(
			'status'=>$status
		);
		$updval = DB::table($tablename)->whereIn('id', $valuearray)->update($arrayuval);

         return Redirect::back();
    }
	public function adminPermissions(Request $req)
    {
		$approve_val = $req->approve_val;
		$valuearray = explode(',',$approve_val);
		//dd($valuearray);
		$tablename = $req->tablename;
		$status = $req->status;

		 $arrayuval =  array(
			'active'=>$status
		);
		$updval = DB::table($tablename)->whereIn('id', $valuearray)->update($arrayuval);

         return Redirect::back();
    }



	public function changestatus(Request $req)
    {
		$approve_val = $req->approve_val;
		$valuearray = explode(',',$approve_val);
		$tablename = $req->tablename;
		$status = $req->status;

		 $arrayuval =  array(
			'member_type'=>$status
		);
		$updval = DB::table($tablename)->whereIn('id', $valuearray)->update($arrayuval);

         return Redirect::back();
    }


	public function codeGeneration()
    {
		$token = $this->getToken(5);
        $codes = 'Sommilito Nagorik Forum'.$token;
		return $codes;
    }
	
	private function getToken($length){    
        $token = "";
        $codeAlphabet = "abcdefghijklmnopqrstuvwxyx";
        $codeAlphabet.= "0123456789";

	   mt_srand(time());
        for($i=0;$i<$length;$i++){
            $token .= $codeAlphabet[mt_rand(0,strlen($codeAlphabet)-1)];
        }
        return $token;
    }
	
	
	
	public function updateSlug(Request $req)
    {
		$getDatas = DB::table('news')->get();		
		foreach($getDatas as $gData){
			$expval=explode(' ',$gData->name);
			$impval=implode('-',$expval);
			$slug   = str_replace([',', "'",'"', '/','|','.','`',':'],'' , $impval);
			
			 $menuUpdate = array(
				'slug'=> $slug,
				'updated_at'=> date('Y-m-d H:i:s')
			 );
	
			DB::table('news')->where('id',$gData->id)->update($menuUpdate);		
		}
		

	}
	
	
	
	  public function sampleFileDownload(Request $req)
		{
			//$getFile = base64_decode($req->filename);
			$getFile = $req->filename.'.csv';	
			$filePath = public_path("samplefiles/".$getFile);		
			$headers = ['Content-Type: application/csv'];
			return response()->download($filePath, $getFile, $headers);
		}
	
	
	public function import(Request $req)
    {
		if ($req->hasFile('importfile')) {
			$validator = Validator::make(
			  [
				  'file'      => $req->importfile,
				  'extension' => strtolower($req->importfile->getClientOriginalExtension()),
			  ],
			  [
				  'file'          => 'required',
				  'extension'      => 'required|in:csv,xlsx,xls',
			  ]
			);
	
			$file = $req->file('importfile');
			
			$file->move(public_path('import-directory'), $file->getClientOriginalName());
			
	
			$files = $file->getClientOriginalName();
			
			$filename = pathinfo($files, PATHINFO_FILENAME);
			$extension = pathinfo($files, PATHINFO_EXTENSION);
			$importfiles = $filename.'.'.$extension;
			if($extension=='csv' || $extension=='xlsx' || $extension=='xls'){
			
				$path = public_path('import-directory').'/'.$importfiles;	
				if($req->filename =='holdinginfo'){
					$users = (new FastExcel)->import($path, function ($line) {
						$checkservice = Fastival::where('name',$line['Service Name'])->first();
						if($checkservice!=""){
							$serviceid = $checkservice->id;
						}
						else{
							$serviceid = 0;
						}
						
						$checkuser = Secretary::where('fullname',$line['Secretary Name'])->first();
						if($checkuser!=""){
							$secreteryid = $checkuser->id;
						}
						else{
							$secreteryid = 0;
						}
						UnionInformation::create([
							'secretary_id' => $secreteryid,
							'usefulllink_id' => $serviceid,
							'name' => $line['Name'],
							'spouse_name' => $line['Father_Husband Name'],
							'village' => $line['Village'],
							'profession' => $line['Profession'],
							'nid' => $line['NID'],
							'holding_no' => $line['Holding No'],
							'wordno' => $line['Word No'],
							'land' => $line['Amount of land'],
							'house_type' => $line['House Type'],
							'yearly_tax' => $line['Yearly tax'],
							'budget_year' => $line['Budget Year'],
							'remark' => $line['Remart'],
						]);
					});	
				}	
				elseif($req->filename =='holdinginfo'){
					$users = (new FastExcel)->import($path, function ($line) {
						$checkservice = Fastival::where('name',$line['Service Name'])->first();
						if($checkservice!=""){
							$serviceid = $checkservice->id;
						}
						else{
							$serviceid = 0;
						}
						
						Shopinformation::create([
							'usefulllink_id' => $serviceid,
							'institute_name' => $line['Institute Name'],
							'propitor_name' => $line['Proprietor Name'],
							'market' => $line['Market'],
							'vat' => $line['Vat'],
							'word_no' => $line['Word No'],
							'budget_year' => $line['Budget Year'],
							'remark' => $line['Remart'],
						]);
						
					});	
				}
		
				return redirect()->back();		
			}
			else{
				return redirect()->back()->with('error','Please select excel or csv file only');
			}
		}
		else{
			return redirect()->back()->with('error','Please select excel file');
		}
    }
	
	
	public function export(Request $req)
    {
		$type = $req->filename;
			
		if($type=='holdinginfo'){
			function usersGenerator() {
			foreach (UnionInformation::cursor() as $user) {
				$checkservice = Fastival::where('id',$user->usefulllink_id )->first();
				if($checkservice!=""){
					$serviceid = $checkservice->name;
				}
				else{
					$serviceid = '';
				}
				
				$checkuser = Secretary::where('id',$user->secretary_id )->first();
				if($checkuser!=""){
					$secreteryid = $checkuser->fullname;
				}
				else{
					$secreteryid = '';
				}
			
				$arrayval = array(					
					'Secretary Name' => $secreteryid,
					'Service Name' => $serviceid,
					'Name' => $user->name,
					'Father/Husband Name' => $user->spouse_name,
					'Village' => $user->village,
					'Profession' => $user->profession,
					'NID' => $user->nid,
					'Holding No' => $user->holding_no,
					'Word No' => $user->wordno,
					'Amount of land' => $user->land,
					'House Type' => $user->house_type,
					'Yearly tax' => $user->yearly_tax,
					'Budget Year' => $user->budget_year,
					'Remart' => $user->remark,
				);	

				yield $arrayval;
			}
		}	
			return (new FastExcel(usersGenerator()))->download('Holding_Information_'.date('Y-m-d H-m-i').'.csv');			
		}
		elseif($type=='shopinfo'){
			function usersGenerator() {
			foreach (Shopinformation::cursor() as $user) {
				$checkservice = Fastival::where('id',$user->usefulllink_id )->first();
				if($checkservice!=""){
					$serviceid = $checkservice->name;
				}
				else{
					$serviceid = '';
				}
				
				$arrayval = array(					
					'Service Name' => $serviceid,
					'Institute Name' => $user->institute_name,
					'Proprietor Name' => $user->propitor_name,
					'Market' => $user->market,
					'Word No' => $user->wordno,
					'Budget Year' => $user->budget_year,
					'Remart' => $user->remark,
				);	

				yield $arrayval;
			}
		}	
			return (new FastExcel(usersGenerator()))->download('Shop_Information_'.date('Y-m-d H-m-i').'.csv');			
		}
				
    }

}
