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
                     <h3>{{ $services->name }}</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                         <li><a href="{{ route('home') }}">Home</a></li>
                        <li><a href="{{ route('activities') }}">Activities</a></li>
                        <li>{{ $services->name }}</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      @if($services!="")
      	<section class="gauto-service-details-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-4">
                  <div class="service-details-left">
                     <div class="sidebar-widget">
                        <ul class="service-menu">
                           @foreach($allservice as $service)
                           <li><a href="{{ route('activities.details',$service->slug) }}">{{ $service->name }}</a></li>
                           @endforeach
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-lg-8">
                  <div class="service-details-right">
                     <h3>{{ $services->name }}</h3>
                  	 <div class="row"><img src="{{ asset('uploads/service/'.$services->image) }}" style="width:auto; max-width:100%; height:auto; margin:0; padding:0"  /></div>
                     <p>{!! $services->details !!}</p>                     
                  </div>
               </div>
            </div>
         </div>
      </section>
      @endif
@endsection


@section('footer')
    @parent
@endsection
