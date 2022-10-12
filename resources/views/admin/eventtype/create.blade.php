@extends('admin.include.master') 
	@section('title') Event Type @endsection 
@section('content')

  <link href="{{ asset('/app-assets/plugins/datatables/datatables.css') }}" rel="stylesheet" type="text/css">
	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title">Create New Event Type</h3>
                        <ol class="breadcrumb">
                            <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                            <li>Settings</li>
                            <li class="active">New Event Type</li>
                            <li style="text-align:right; float:right">
                            	<a  href="{{ route('eventtype.index') }}" style="color:#fff;"><i class="fa fa-list"></i> View Menu List</a>
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
                            <form method="POST" action="{{ route('eventtype.store') }}" class="form-horizontal form-label-left">
                              {{ csrf_field() }}
                              
                              
                              <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="menuname">Name <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <input type="text" name="name" class="form-control col-md-7 col-xs-12">
                                </div>
                                @if($errors->has('name'))
                                <label class="col-md-3 col-sm-3 col-xs-12" style="color: red; display: inline;">
                                 {{ $errors->first('name') }}                      
                                </label>
                                @endif
                              </div>
                              
                              <div class="col-sm-12">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                  <button type="submit" class="btn btn-success" style="margin:10px;">Submit</button>
                                  <a href="{{ route('eventtype.index') }}" class="btn btn-primary">Cancel</a>
                                </div>
                              </div>
            
                            </form> 
                      </div>
                  </div>
                </div>  
              </div>
			</div>
        </div>
@endsection