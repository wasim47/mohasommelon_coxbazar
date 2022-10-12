@extends('admin.include.master')
	@section('title') New Career - Zaman Car Rentals @endsection
@section('content')

	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title">Create New Career</h3>
                        <ol class="breadcrumb">
                            <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                            <li>Settings</li>
                            <li class="active">New Career</li>
                            <li style="text-align:right; float:right">
                            	<a  href="{{ route('career.index') }}" style="color:#fff;"><i class="fa fa-list"></i> View Career List</a>
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
                            <form method="POST" action="{{ route('career.store') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Job Title') }}</label>
                            <div class="col-md-6">
                                <input id="job_title" type="text" class="form-control" name="job_title" value="{{ old('job_title') }}" required>
                                @if ($errors->has('job_title'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('job_title') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Job Requirement') }}</label>
                            <div class="col-md-6">
                                <textarea id="job_requirement" class="form-control" name="job_requirement">{{ old('job_requirement') }}</textarea>
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Education Requirement') }}</label>
                            <div class="col-md-6">
                                <textarea id="edu_requirement" class="form-control" name="edu_requirement">{{ old('edu_requirement') }}</textarea>
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Experience') }}</label>
                            <div class="col-md-6">
                                <input type="text" id="experience" class="form-control" name="experience" value="{{ old('experience') }}">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Salary') }}</label>
                            <div class="col-md-6">
                                <input type="text" id="salary" class="form-control" name="salary" value="{{ old('salary') }}">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Job Type') }}</label>
                            <div class="col-md-6">
                                <select name="job_type" class="form-control">
                                	<option value="Full Time">Full Time</option>
                                	<option value="Part Time">Part Time</option>
                                	<option value="Contractual">Contractual</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Publish Date') }}</label>
                            <div class="col-md-6">
                                <input type="date" id="publishdate" class="form-control" name="publishdate" value="{{ old('publishdate') }}">
                            </div>
                        </div>
                        
                         <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Expire Date') }}</label>
                            <div class="col-md-6">
                                <input type="date" id="deadline" class="form-control" name="deadline" value="{{ old('deadline') }}">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="name" class="col-md-3 col-form-label text-md-right">{{ __('Status') }}</label>
                            <div class="col-md-6">
                               <select name="status" class="form-control">
                               	 <option value="1">Publish</option>
                                 <option value="0">Not Now</option>
                               </select>
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
