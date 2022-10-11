<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use Hash;
use App\Models\Car;
use App\Models\CarType;
use Validator;
use Image;


class CarController extends Controller
{
     public function __construct()
     {
        $this->middleware('auth:administration');
     }

	 public function index(Request $request)
     {
	 	$allcar = Car::with('getType')->orderBy('id','desc')->get();
    	return view('admin.car.index',compact('allcar'));
     }


    public function create()
    {
        $cartype = CarType::all();
        return view('admin.car.create',compact('cartype'));
    }

    public function store(Request $request)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255']
		]);


		if ($request->hasFile('carimage')) {
            if($request->file('carimage')->isValid()) {
                try {
                    $file = $request->file('carimage');
                    $savedFileName = 'car_'.time() . '.' . $file->getClientOriginalExtension();

					$pathLarge = 'uploads/car/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 450, 250);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = '';
         }
		$request['image'] = $savedFileName;
		Car::insert($request->except('_token','carimage'));
        return redirect('administration/car');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $car = Car::with('getType')->find($id);
        $cartype = CarType::all();
        return view('admin.car.edit',compact('car','cartype'));

    }

    public function update(Request $request, $id)
    {
		$validator = Validator::make($request->all(), [
			 'name' => ['required', 'string', 'max:255']
		]);


		if ($request->hasFile('carimage')) {
            if($request->file('carimage')->isValid()) {
                try {
                    $file = $request->file('carimage');
                    $savedFileName = 'car_'.time() . '.' . $file->getClientOriginalExtension();

					$pathLarge = 'uploads/car/'.$savedFileName;
          			$this->imageResize($file,$pathLarge,$savedFileName, 450, 250);

                } catch (Illuminate\Filesystem\FileNotFoundException $e) {
              }
            }
        }
        else{
            $savedFileName = $request->stillthumb;
         }


        $car = Car::find($id);
        $request['image'] = $savedFileName;
        $car->update($request->except('_token','carimage'));
        return redirect('administration/car');
    }

    public function destroy($id)
    {
        $menuItem = Car::find($id);
        $menuItem->delete();
        return redirect('administration/car');
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
