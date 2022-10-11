@extends('layouts.app')

@section('title', 'Our Products')

@section('sidebar')
    @parent
@endsection
@section('content')
	   
    <main id="main">
        <section class="breadcrumbs">
          <div class="container">
            <div class="d-flex justify-content-between align-items-center">
              <h2>Our Team</h2>
              <ol>
                <li><a href="{{ route('home') }}">Home</a></li>
                <li><a href="{{ route('ourteam') }}">Our Team</a></li>
                <li>{{ $ourteams->name }}</li>
              </ol>
            </div>
          </div>
        </section>
        
        <section id="services" class="section-bg">
          <div class="container">
          	<div class="row">
            	<div class="fullbox">
                   @if($ourteams!="")
                        <div class="col-sm-12">
                            <div style="width:100%; height:auto; float:left; margin-bottom:30px;  text-align:left; padding:10px;">
                                <div class="col-sm-12">
                                <img src="{{ asset('uploads/employee/'.$ourteams->image) }}" style="width:200px; height:auto; margin:0; padding:0"  /></div>
                                <div class="col-sm-6">
                                
                                <table>
                                	<tr>
                                    	<td>Name</td>
                                    	<td>{{ $ourteams->name }}</td>
                                    </tr>
                                    <tr>
                                    	<td>Designation</td>
                                    	<td>{{ $ourteams->designation }}</td>
                                    </tr>
                                    <tr>
                                    	<td>Department</td>
                                    	<td>{{ $ourteams->department }}</td>
                                    </tr>
                                    <tr>
                                    	<td>Branch</td>
                                    	<td>{{ $ourteams->branch }}</td>
                                    </tr>
                                    <tr>
                                    	<td>Contact no.</td>
                                    	<td>{{ $ourteams->mobile }}</td>
                                    </tr>
                                    <tr>
                                    	<td>Email</td>
                                    	<td>{{ $ourteams->email }}</td>
                                    </tr>
                                </table>
                                </div>
                                <div class="col-sm-12">
                                <h4>Profile</h4>
                                <p>{!! $ourteams->details !!}</p>
                                </div>
                                </div>
                                
                                
                        </div>
                    @endif
                  </div>
              </div>
          </div>
        </section>
    </main>
@endsection


@section('footer')
    @parent
@endsection
