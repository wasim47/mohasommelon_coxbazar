@extends('admin.include.master')
	@section('title') New Card Design - Zaman Car Rentals @endsection
@section('content')

	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title">Create New Card Design</h3>
                        <ol class="breadcrumb">
                            <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                            <li>Settings</li>
                            <li class="active">New Card Design</li>
                            <li style="text-align:right; float:right">
                            	<a  href="{{ route('carddesign.index') }}" style="color:#fff;"><i class="fa fa-list"></i> View Card Design List</a>
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
                            <form method="POST" action="{{ route('carddesign.store') }}" enctype="multipart/form-data">
                                @csrf

                                <div class="form-group row">
                                    <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Holding No') }}</label>
                                    <div class="col-md-6">
                                        <input id="holding" type="text" class="form-control" name="holding" value="{{ old('holding') }}" required>
                                        @if ($errors->has('holding'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('holding') }}</strong>
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
