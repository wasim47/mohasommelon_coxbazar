@extends('layouts.app')

@section('title', $products->name)

@section('sidebar')
    @parent
@endsection

@section('content')
    
     <!-- Breadcromb Area Start -->
      <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>{{ $products->name }}</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li><a href="{{ route('product') }}">Car</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>{{ $products->name }}</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
       
       
      <!-- Car Booking Area Start -->
      <section class="gauto-car-booking section_50">
     	 @if($products!="")
         	<div class="container">
            <div class="row">
               <div class="col-lg-6">
                  <div class="car-booking-image">
                     <img src="{{ asset('uploads/car/'.$products->image) }}" alt="car" />
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="car-booking-right">
                     <p class="rental-tag">rental</p>
                     <h3>{{ $products->name }}</h3>
                     <div class="price-rating">
                        <div class="price-rent">
                           <h4>BDT {{ $products->hireprice }}</h4>
                        </div>
                        
                     </div>
                     <div class="car-features clearfix">
                       <ul>
                          <li><i class="fa fa-car"></i>Model: {{ $products->model }}</li>
                          <li><i class="fa fa-dashboard"></i>{{ $products->brand }}</li>
                          <li><i class="fa fa-cogs"></i>{{ $products->function }}</li>
                          <li><i class="fa fa-dashboard"></i>{{ $products->distance }}</li>
                       </ul>
                     </div>
                     
                     <p> {!! $products->details !!}</p>
                  </div>
               </div>
            </div>
         </div>
         @endif
      </section>
      <!-- Car Booking Area End -->
       
       
      <!-- Booking Form Area Start -->
      <section class="gauto-booking-form section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-8">
                  <div class="booking-form-left">
                  
                            @if(session()->has('message'))
                                <div class="alert alert-success">
                                    {{ session()->get('message') }}
                                </div>
                            @endif
                   <form action="{{ route('bookNow') }}" enctype="application/x-www-form-urlencoded" method="POST">
                                {{ csrf_field() }}
                     <div class="single-booking">
                        <h3>Personal Information</h3>
                       
                           <div class="row">
                              <div class="col-md-6">
                                 <p>
                                    <input type="text" placeholder="Your Full Name*" id="name" name="name" required/>
                                    @if ($errors->has('name'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                 </p>
                              </div>
                              
                              <div class="col-md-6">
                                 <p>
                                    <input type="email" placeholder="Your Email Address*" id="email" name="email" required/>
                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                 </p>
                              </div>
                              <div class="col-md-6">
                                 <p>
                                    <input type="tel" placeholder="Your Phone Number*" id="mobile" name="mobile" required/>
                                    @if ($errors->has('mobile'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('mobile') }}</strong>
                                        </span>
                                    @endif
                                 </p>
                              </div>
                           </div>
                     </div>
                     <div class="single-booking">
                        <h3>Booking Detail</h3>
                           <div class="row">
                              <div class="col-md-6">
                                 <p>
                                    <input type="text" placeholder="From Address*" name="from_address" required/>
                                    @if ($errors->has('from_address'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('from_address') }}</strong>
                                        </span>
                                    @endif
                                 </p>
                              </div>
                              <div class="col-md-6">
                                 <p>
                                    <input type="text" placeholder="To Address" name="to_address">
                                 </p>
                              </div>
                           </div>
                           
                           <div class="row">
                              <div class="col-md-6">
                                 <p>
                                    <input id="reservation_date" name="journey_date" placeholder="Journey Date" data-select="datepicker" type="text">
                                 </p>
                              </div>
                              <div class="col-md-6">
                                 <p class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
                                    <input type="text" class="form-control" placeholder="Journey Time" name="journey_time" />
                                 </p>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-md-12">
                                 <p>
                                    <button type="submit" class="gauto-theme-btn">Book Now</button>
                                 </p>
                                  
                              </div>
                           </div>
                           <input type="hidden" name="car_id" value="{{ $products->id }}" />
                        
                     </div>
                     </form>
                  </div>
               </div>
               
            </div>
         </div>
      </section>
      <!-- Booking Form Area End -->
      
      
    
    <script>
	
        function scrollToBottom() {
			window.scrollTo({ left: 0, top: document.body.scrollHeight/2, behavior: "smooth" });			
			$("html, body").animate({ scrollTop: document.body.scrollHeight/2 }, 1000, function(){
            	$('#name').focus();
            });
        }		
		
    </script>
    @if($detailsType!="" && $detailsType=='rent')
    	<script>window.onload = scrollToBottom();</script>
    @endif
@endsection


@section('footer')
    @parent
@endsection
