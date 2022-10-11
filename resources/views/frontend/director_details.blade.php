@extends('layouts.app')

@section('title', 'Our Products')

@section('sidebar')
    @parent
@endsection
@section('content')
	   
     <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>{{ $managements->name }}</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                         <li><a href="{{ route('home') }}">Home</a></li>
                        <li><a href="{{ route('director') }}">Board of Director</a></li>
                        <li>{{ $managements->name }}</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      @if($managements!="")
      	<section class="gauto-service-details-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-4">
                  <div class="service-details-left">
                     <div class="sidebar-widget">
                        <ul class="service-menu">
                           @foreach($alldirector as $director)
                           <li><a href="{{ route('director.details',$director->id) }}">{{ $director->name }}</a></li>
                           @endforeach
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-lg-8">
                  @if($managements!="")
                        <div class="col-sm-12">
                            <div style="width:100%; height:auto; float:left; margin-bottom:30px;  text-align:left; padding:10px;">
                                <div class="col-sm-12">
                                <img src="{{ asset('uploads/management/'.$managements->image) }}" style="width:200px; height:auto; margin:0; padding:0"  /></div>
                                <div class="col-sm-6">
                                
                                <table>
                                	<tr>
                                    	<td>Name</td>
                                    	<td>{{ $managements->name }}</td>
                                    </tr>
                                    <tr>
                                    	<td>Designation</td>
                                    	<td>{{ $managements->designation }}</td>
                                    </tr>
                                </table>
                                </div>
                                <div class="col-sm-12">
                                <h4>Profile</h4>
                                <p>{!! $managements->details !!}</p>
                                </div>
                                </div>
                                
                                
                        </div>
                    @endif
               </div>
            </div>
         </div>
      </section>
      @endif
@endsection


@section('footer')
    @parent
@endsection
