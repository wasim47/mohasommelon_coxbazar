@extends('layouts.app')

@section('title', 'Zaman Car Rental')

@section('sidebar')
    @parent
@endsection

@section('content')

       
      <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>{{ $menuslug->title }}</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="{{ url('/') }}">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>{{ $menuslug->title }}</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      
      <section class="about-page-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <div class="about-page-left">
                     <h4>
                     	  @if($articles!="")
                            {{ $articles->title }}
                          @else
                            {{ $menuslug->title }}
                          @endif
                     </h4>
                     <h3>@if($articles!="") {{ $articles->title }}  @endif</h3>
                     <p>@if($articles!="") {!! $articles->content !!}  @endif</p>
                     
                  </div>
               </div>
               
            </div>
         </div>
      </section>
      

@endsection


@section('footer')
    @parent
@endsection


