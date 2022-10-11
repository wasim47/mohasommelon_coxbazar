@extends('admin.include.master')
	@section('title') New Update Information - Zaman Car Rental @endsection
@section('content')

	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title">Create New Update Information</h3>
                        <ol class="breadcrumb">
                            <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                            <li>Settings</li>
                            <li class="active">New Update Information</li>
                            <li style="text-align:right; float:right">
                            	<a  href="{{ route('vehicle_feedback.index') }}" style="color:#fff;"><i class="fa fa-list"></i> View Update Information List</a>
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
                      	<div class="col-sm-12">
                            <form method="POST" action="{{ route('vehicle_feedback.store') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Feedback from (Name)') }}</label>
                            <div class="col-md-8">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required>
                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="company" class="col-md-2 col-form-label text-md-right">{{ __('Company Name') }}</label>
                            <div class="col-md-8">
                                <input id="company" type="text" class="form-control" name="company" value="{{ old('company') }}" required>
                                @if ($errors->has('company'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('company') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Message') }}</label>
                            <div class="col-md-8">
                                <textarea name="message" class="form-control"></textarea>
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
