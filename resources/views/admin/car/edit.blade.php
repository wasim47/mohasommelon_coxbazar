@extends('admin.include.master')
	@section('title') Edit - {{ $car->name }} - Zaman Car Rental @endsection
@section('content')

    <div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title">Car Information Edit</h3>
                    <ol class="breadcrumb">
                        <li><a href="{{ route('dashboard') }}">Home</a></li>
                        <li>Settings</li>
                        <li class="active">Edit - {{ $car->name }}</li>
                         <li style="text-align:right; float:right">
                            	<a  href="{{ route('car.index') }}" style="color:#fff;"><i class="fa fa-list"></i> View Car List</a>
                            </li>
                    </ol>
                </div>

              @if (session()->has('messageType'))
                  <div class="alert alert-{{ session()->get('messageType') }}" role="alert">
                      <strong>STATUS: </strong> {{ session()->get('message') }}
                  </div>
              @endif
		</div>
      <div class="row-fluid">
        <div class="col-sm-12">
          <div class="card">
            	<div class="row" style="margin:10px">
                      	<div class="col-sm-offset-2">
						{!! Form::model($car, ['route'=>['car.update', $car->id], 'files' => true, 'method'=>'PATCH', 'class'=>'form-horizontal']) !!}


                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Type') }}</label>
                            <div class="col-md-8">
                                <select class="form-control" name="type">
                                	<option value="{{ $car->gettype->id }}">{{ $car->gettype->name }}</option>
                                    @foreach ($cartype as $type)
                                     <option value="{{ $type->id }}">{{ $type->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Car Name') }}</label>
                            <div class="col-md-8">
                                <input id="name" type="text" class="form-control" name="name" value="{{ $car->name }}" required>
                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Model') }}</label>
                            <div class="col-md-8">
                                <input id="model" type="text" class="form-control" name="model" value="{{ $car->model }}" required>
                                @if ($errors->has('model'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('model') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Brand') }}</label>
                            <div class="col-md-8">
                                <input id="brand" type="text" class="form-control" name="brand" value="{{ $car->brand }}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Function') }}</label>
                            <div class="col-md-8">
                                <select class="form-control" name="function">
                                    <option value="{{ $car->function }}">{{ $car->function }}</option>
                                    <option value="Manual">Manual</option>
                                    <option value="Automatic">Automatic</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="distance" class="col-md-2 col-form-label text-md-right">{{ __('Distance/Hour') }}</label>
                            <div class="col-md-8">
                                <input id="distance" type="text" class="form-control" name="distance"
                                value="{{ $car->distance }}" placeholder="Ex: 25Kmpl">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Hire Price') }}</label>
                            <div class="col-md-8">
                                <input id="hireprice" type="text" class="form-control" name="hireprice"
                                value="{{ $car->hireprice }}" placeholder="Ex: 5000/Day">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Details') }}</label>
                            <div class="col-md-8">
                                <textarea id="details" class="form-control ckeditor" name="details">{{ $car->details }}</textarea>
                                @if ($errors->has('details'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('details') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Image') }}</label>
                            <div class="col-md-6">
                                <input id="image" type="file" class="form-control" name="image">
                                @if ($errors->has('image'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('image') }}</strong>
                                    </span>
                                @endif

                                <img src="{{ asset('uploads/car/'.$car->image) }}" style="width:100px; height:auto" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Status') }}</label>
                            <div class="col-md-6">
                               <select name="status" class="form-control">
                               	 <option value="1">Display</option>
                                 <option value="0">Not Display</option>
                               </select>
                               <input id="stillthumb" type="hidden" class="form-control" name="stillthumb" value="{{ $car->image }}">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Save') }}
                                </button>
                            </div>
                        </div>
                    </form>
                    	</div>
                      </div>

          </div>
        </div>
      </div>
	</div>
  </div>
@endsection
