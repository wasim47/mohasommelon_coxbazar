@extends('admin.include.master') 
	@section('title') Details - {{ $fastivalregistration->name }} - Sommilito Nagorik Forum @endsection 
@section('content')
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title">User Information Details</h3>
                    <ol class="breadcrumb">
                        <li><a href="{{ route('dashboard') }}">Home</a></li>
                        <li>Settings</li>
                        <li class="active">Details for {{ $fastivalregistration->name }}</li>
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
                      	<div class="col-sm-offset-2">  
                        
                        
                       <table width="100%" border="0" class="table-bordered table">
                       		
                             <tr>
                                <td>উৎসবের নাম</td>            
                                <td>{{ $fastivalregistration->fastival ? $fdata->fastival->name : '' }}</td>
                            </tr>
                             <tr>
                                <td width="26%">নিবন্ধন প্রার্থীর নাম<span style="color:#ff0000; font-size:20px;">*</span></td>            
                               <td width="74%">{{ $fastivalregistration->name }}</td>
                            </tr>
                            <tr>
                                <td>পিতার নাম</td>              
                                <td>{{ $fastivalregistration->fname }}</td>
                            </tr>
                            <tr>
                                <td>মাতার নাম</td>         
                                <td>{{ $fastivalregistration->mname }}</td>
                            </tr>
                            
                            <tr>
                               <td>জন্ম তারিখ</td>               
                                <td>{{ $fastivalregistration->dob}}</td>
                            </tr>
                            
                            <tr>
                               <td>জাতীয় পরিচয় পত্র</td>        
                                <td>{{ $fastivalregistration->nid }}</td>
                            </tr>
                            
                            <tr>
                                <td>রক্তের গ্রুপ</td>       
                                <td>{{ $fastivalregistration->blood_group }}</td>
                            </tr>
                            <tr>
                                 <td>পেশা</td>           
                                <td>{{ $fastivalregistration->profession }}</td>
                            </tr>
                            <tr>
                               <td>প্রিয় কবিতা ও কবি</td>                  
                                <td>{{ $fastivalregistration->favourite }}</td>
                            </tr>
                            <tr>
                                  <td>প্রকাশিত গ্রন্থ</td>         
                                <td>{{ $fastivalregistration->published_books }}</td>
                            </tr>
                            <tr>
                                 <td> মোবাইল নং</td>             
                                <td>{{ $fastivalregistration->mobile }}</td>
                            </tr>
                            <tr>
                                 <td>ইমেইল</td>        
                                <td>{{ $fastivalregistration->email }}</td>
                            </tr>
                            <tr>
                                  <td>ঠিকানা</td>  
                                <td>{{ $fastivalregistration->address }}</td>
                            </tr>
                            </table>
                    	</div>
                      </div>
              	
          </div>
        </div>  
      </div>
	</div>
  </div>
@endsection