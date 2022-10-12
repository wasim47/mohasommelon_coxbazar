@extends('admin.include.master') 
	@section('title') New User - Sommilito Nagorik Forum @endsection 
@section('content')
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title">Create New User</h3>
                        <ol class="breadcrumb">
                            <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                            <li>Settings</li>
                            <li class="active">New User</li>
                            <li style="text-align:right; float:right">
                            	<a  href="{{ route('fastivalregistration.index') }}" style="color:#fff;"><i class="fa fa-list"></i> View User List</a>
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
                            <form method="POST" action="{{ route('fastivalregistration.store') }}" enctype="multipart/form-data" id="tabs" style="width:100%;">
                                @csrf					
                              
                            <table width="100%" border="0" class="table-bordered table">
                                <tr>
                                    <td width="23%">উৎসব সমূহ<span style="color:#ff0000; font-size:20px;">*</span></td>            
                              <td width="77%">
                      <select name="fastival_id" class="form-control">
                                            <option value="">Select</option>
                                            @foreach($links as $link)
                                             <option value="{{ $link->id }}">{{  $link->name  }}</option>
                                            @endforeach
                                        </select>
                                        @if ($errors->has('fastival_id'))
<span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('fastival_id') }}</strong>
                                            </span>
                                        @endif
                                    </td>
                              </tr>
                               
                                <tr>
                                    <td>নিবন্ধন প্রার্থীর নাম<span style="color:#ff0000; font-size:20px;">*</span></td>            
                                    <td>
                                        <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required>
                                        @if ($errors->has('name'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                        @endif
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>পিতার নাম</td>            
                                    <td>
                                        <input id="market" type="text" class="form-control" name="fname" value="{{ old('fname') }}"> 
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>মাতার নাম</td>            
                                    <td>
                                        <input id="mname" type="text" class="form-control" name="mname" value="{{ old('mname') }}"> 
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>জন্ম তারিখ</td>            
                                    <td>
                                        <input type="date" class="form-control" name="dob" value="{{ old('dob') }}"> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>জাতীয় পরিচয় পত্র</td>            
                                    <td>
                                        <input type="text" class="form-control" name="nid" value="{{ old('nid') }}"> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>রক্তের গ্রুপ</td>            
                                    <td> 
                                        <select name="blood_group" class="form-control" >
                                        	<option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>পেশা</td>            
                                    <td>
                                        <input type="text" class="form-control" name="profession" value="{{ old('profession') }}"> 
                                    </td>
                                </tr>
                                
                                 <tr>
                                    <td>প্রিয় কবিতা ও কবি</td>            
                                    <td>
                                        <input type="text" class="form-control" name="favourite" value="{{ old('favourite') }}"> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>প্রকাশিত গ্রন্থ</td>            
                                    <td>
                                        <input type="text" class="form-control" name="published_books" value="{{ old('published_books') }}"> 
                                    </td>
                                </tr>
                               
                               <tr>
                                    <td> মোবাইল নং</td>            
                                    <td>
                                        <input id="vat" type="text" class="form-control" name="mobile" value="{{ old('mobile') }}"> 
                                    </td>
                                </tr>   
                               
                                <tr>
                                    <td>ইমেইল</td>            
                                    <td>
                                        <input type="email" class="form-control" name="email" value="{{ old('email') }}"> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>ঠিকানা</td>            
                                    <td>
                                        <input type="text" class="form-control" name="address" value="{{ old('address') }}"> 
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>ছবি</td>            
                                    <td>
                                        <input type="file" class="form-control" name="image"> 
                                    </td>
                                </tr>
                                
                               
                               <tr><td><button type="submit" class="btn btn-primary">{{ trans('app.submit') }}</button></td></tr>
                           </table>
                        </form> 
                    	</div>
                      </div>
                  </div>
                </div>  
              </div>
			</div>
        </div>
@endsection