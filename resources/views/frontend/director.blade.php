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
                     <h3>Board of Director</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                         <li><a href="{{ route('home') }}">Home</a></li>
                        <li><a href="{{ route('director') }}">Board of Director</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
        
         <section id="services" class="section-bg">
          <div class="container">
          	 <div class="car-grid-list">
                 <div class="row" style="margin:15px">
                 @foreach($managements as $team)
                  <div class="col-md-3 col-lg-3" data-wow-duration="1.4s">
                    <div class="newscard" style="min-height:320px; padding:10px">
                     <a href="{{ route('director.details',$team->id) }}"> <img src="{{ asset('uploads/management/'.$team->image) }}" /></a>
                      <div class="offer-text"><a href="{{ route('director.details',$team->id) }}"><h3>{{ $team->name }}</h3></a></div>
                    </div>
                  </div>
                 @endforeach
            </div>
            </div>
          </div>
        </section>
@endsection


@section('footer')
    @parent
@endsection
