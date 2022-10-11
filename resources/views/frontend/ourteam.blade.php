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
                <li>Team Members</li>
              </ol>
            </div>
          </div>
        </section>
        
        <section id="services" class="section-bg">
          <div class="container">
          	<div class="row">
                 @foreach($ourteams as $team)
                  <div class="col-md-3 col-lg-3 wow bounceInUp" data-wow-duration="1.4s" style="margin:0; padding:0">
                    <div class="box" style="min-height:auto;">
                     <a href="{{ route('ourteam.details',$team->id) }}"> <img src="{{ asset('uploads/employee/'.$team->image) }}" /></a>
                      <h4 class="title"><a href="{{ route('ourteam.details',$team->id) }}">{{ $team->name }}</a></h4>
                    </div>
                  </div>
                 @endforeach
              </div>
          </div>
        </section>
    </main>
@endsection


@section('footer')
    @parent
@endsection
