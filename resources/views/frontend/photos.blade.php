@extends('layouts.app')

@section('title', 'Photo Gallery')

@section('sidebar')
    @parent
@endsection
<style>
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css');
</style>
@section('content')
	 <!-- Breadcromb Area Start -->
      <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Gallery</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index-2.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Gallery</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
       
       
      <!-- Gallery Area Start -->
      <section class="gauto-gallery-area section_70">
         <div class="container">
            <div class="row" id="lightgallery">
            @if($photos!="")
			<?php $i=0; ?>
            @foreach($photos as $photo)
            <?php
                $i++;
                $photoImagePath = asset('uploads/photogallery/'.$photo->image);			
                if($photo->image!=""){
                    $coverImage = $photoImagePath;
                }
                else{
                  $coverImage = asset('assets/front/images/defaultlogo.png');	
                }
            ?>
               <div class="col-lg-4" data-src="{{ $coverImage }}">
                  <div class="single-gallery">
                     <div class="img-holder">
                        <img src="{{ $coverImage }}" title="{{ $photo->name }}" alt="{{ $photo->name }}" style="width:100%; height:250px;" />
                        <div class="overlay-content">
                           <div class="inner-content">
                              <div class="title-box">
                                 <h3><a href="#">{{ $photo->name }}</a></h3>
                              </div>
                           </div>
                        </div>
                        <div class="link-zoom-button">
                           <div class="single-button">
                              <a class="zoom lightbox-image" href="{{ $coverImage }}"><span class="fa fa-link"></span>Zoom</a>
                           </div>
                           
                        </div>
                     </div>
                  </div>
               </div>
              @endforeach
             @endif
               
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="load-more">
                     <a href="#" class="gauto-btn">More Pictures</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Gallery Area End -->
@endsection


@section('footer')
    @parent
@endsection
