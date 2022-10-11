@extends('layouts.app')
@section('seodetails')
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

@endsection

@section('title', 'Welcome to Zaman Car Rental.')
@section('content')


      <section class="gauto-slider-area fix">
         <div class="gauto-slide owl-carousel">
            @foreach($banners as $banner)
            <div class="gauto-main-slide slide-item-1" style="background-image: url({{ asset('uploads/banner/'.$banner->image)}})">
               <div class="gauto-main-caption">
                  <div class="gauto-caption-cell">
                     <div class="container">
                        <div class="row">
                           <div class="col-md-12">
                              <div class="slider-text">
                                 <h2>{{  $banner->name }}</h2>
                                 <a href="{{  $banner->url }}" class="gauto-btn">Click Now!</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            @endforeach


         </div>
      </section>
      <section class="gauto-find-area">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="find-box">
                     <div class="row">
                        <div class="col-md-4">
                           <div class="find-text">
                              <h3>Confirm you journey with US</h3>
                           </div>
                        </div>
                        <div class="col-md-8">
                           <div class="find-form">
                            @if(session()->has('message'))
                                <div class="alert alert-success">
                                    {{ session()->get('message') }}
                                </div>
                            @endif
                              <form action="{{ route('bookNow') }}" enctype="application/x-www-form-urlencoded" method="POST">
                                {{ csrf_field() }}

                                <div class="row">
                                    <div class="col-md-4">
                                       <p>
                                          <input type="text" placeholder="Name*" name="name" id="name" required />
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p>
                                          <input type="text" placeholder="Mobile*" name="mobile" required/>
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                        <p>
                                            <input type="email" placeholder="Email" name="email" />
                                         </p>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-4">
                                       <p>
                                          <input type="text" placeholder="From Address*" name="from_address" required/>
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p>
                                          <input type="text" placeholder="To Address" name="to_address"/>
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p>
                                          <select name="car_id">
                                             @foreach ($products as $cars)
                                             <option value="{{  $cars->id }}">{{  $cars->name }}</option>
                                             @endforeach
                                          </select>
                                       </p>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-4">
                                       <p>
                                          <input id="reservation_date" name="journey_date" placeholder="Journey Date" data-select="datepicker" type="text">
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
                                          <input type="text" class="form-control" name="journey_time" placeholder="Journey Time" />
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p>
                                          <button type="submit" class="gauto-theme-btn">Book Now</button>
                                       </p>
                                    </div>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="gauto-about-area section_50">
         <div class="container">
            <div class="row">
               {{-- <div class="col-lg-6">
                  <div class="about-left">
                     <h4>about us</h4>
                     <h2>Welcome to gauto</h2>
                     <p>Horem Ipsum passages, and more recently with desktop publishing software like aldus pageMaker including versions of all the Rorem Ipsum generators</p>
                     <div class="about-list">
                        <ul>
                           <li><i class="fa fa-check"></i>We are a trusted name</li>
                           <li><i class="fa fa-check"></i>we deal in have all brands</li>
                           <li><i class="fa fa-check"></i>have a larger stock of vehicles</li>
                           <li><i class="fa fa-check"></i>we are at worldwide locations</li>
                        </ul>
                     </div>
                     <div class="about-signature">
                        <div class="signature-left">
                           <img src="{{ asset('assets/frontend/img/signature.png') }}" alt="signature" />
                        </div>
                        <div class="signature-right">
                           <h3>Robertho Garcia</h3>
                           <p>President</p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="about-right">
                     <img src="{{ asset('assets/frontend/img/about.png') }}" alt="car" />
                  </div>
               </div> --}}
               {!! $articles->content !!}
            </div>
         </div>
      </section>
      <section class="gauto-service-area section_20">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>see our</h4>
                     <h2>Activities</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="service-slider owl-carousel">
                    @foreach($activities as $service)
                     <div class="single-service">
                        <span class="service-number">01 </span>
                            <a href="{{ route('activities.details',$service->slug) }}"><img src="{{ asset('uploads/service/'.$service->image) }}" style="width:100%; height:auto" /></a>

                        <div class="service-text">
                           <a href="{{ route('activities.details',$service->slug) }}"><h3>{{ $service->name }}</h3></a>
                           <p>{!! Str::limit($service->details,180) !!}</p>
                        </div>
                     </div>
                     @endforeach
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="gauto-promo-area">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="promo-box-left">
                     <img src="{{ asset('assets/frontend/img/toyota-offer-2.png') }}" alt="promo car" />
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="promo-box-right">
                     <h3>Do You Want To Book with Zaman Car Rental.</h3>
                     <a href="javascript:void(0)" class="gauto-btn" onclick="scrollToTop()">Book Now</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="gauto-offers-area section_20">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>Come with</h4>
                     <h2>Our Cars</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="offer-tabs">
                     <ul class="nav nav-tabs" id="offerTab" role="tablist">
                        <li class="nav-item">
                           <a class="nav-link active" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">All Brands</a>
                        </li>
                        @foreach ($cartype as $types)
                           <li class="nav-item">
                            <a class="nav-link" id="{{ $types->slug }}-tab" data-toggle="tab" href="#{{ $types->slug }}" role="tab" aria-controls="{{ $types->slug }}" aria-selected="false">{{ $types->name }}</a>
                            </li>
                        @endforeach
                     </ul>

                     </ul>
                     <div class="tab-content" id="offerTabContent">
                        <!-- All Tab Start -->
                        <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                            <div class="row">

                                @foreach ($products as $cars)
                                <div class="col-lg-4">
                                   <div class="single-offers newscard">
                                      <div class="offer-image">
                                         <a href="{{ route('product.details',[$cars->slug,'type'=>'rent']) }}">
                                         <img src="{{ asset('uploads/car/'.$cars->image) }}" alt="offer 1" />
                                         </a>
                                      </div>
                                      <div class="offer-text">
                                            <h3>{{ $cars->name }}</h3>
                                         <h4>BDT {{ $cars->hireprice }}</h4>
                                         <ul>
                                            <li><i class="fa fa-car"></i>Model: {{ $cars->model }}</li>
                                            <li><i class="fa fa-dashboard"></i>{{ $cars->brand }}</li>
                                            <li><i class="fa fa-cogs"></i>{{ $cars->function }}</li>
                                            <li><i class="fa fa-dashboard"></i>{{ $cars->distance }}</li>
                                         </ul>
                                         <div class="offer-action">
                                             <a href="{{ route('product.details',[$cars->slug,'type'=>'rent']) }}" class="offer-btn-1">Rent Car</a>
                                       		 <a href="{{ route('product.details',[$cars->slug,'type'=>'details']) }}" class="offer-btn-2">Details</a>
                                         </div>
                                      </div>
                                   </div>
                                </div>
                              @endforeach
                            </div>

                        </div>
                        <!-- All Tab End -->

                        @foreach ($cartype as $types)
                        <div class="tab-pane fade" id="{{ $types->slug }}" role="tabpanel" aria-labelledby="{{ $types->slug }}-tab">
                           <div class="row">

                             @foreach ($types->getCar as $cars)
                              <div class="col-lg-4">
                                 <div class="single-offers newscard">
                                    <div class="offer-image">
                                       <a href="{ route('product.details',[$cars->slug,'type'=>'rent']) }}">
                                       <img src="{{ asset('uploads/car/'.$cars->image) }}" alt="offer 1" />
                                       </a>
                                    </div>
                                    <div class="offer-text">
                                          <h3>{{ $cars->name }}</h3>
                                       <h4>BDT {{ $cars->hireprice }}</h4>
                                       <ul>
                                          <li><i class="fa fa-car"></i>Model: {{ $cars->model }}</li>
                                          <li><i class="fa fa-dashboard"></i>{{ $cars->brand }}</li>
                                          <li><i class="fa fa-cogs"></i>{{ $cars->function }}</li>
                                          <li><i class="fa fa-dashboard"></i>{{ $cars->distance }}</li>
                                       </ul>
                                       <div class="offer-action">
                                          <a href="{{ route('product.details',[$cars->slug,'type'=>'rent']) }}" class="offer-btn-1">Rent Car</a>
                                       	  <a href="{{ route('product.details',[$cars->slug,'type'=>'details']) }}" class="offer-btn-2">Details</a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                            @endforeach
                           </div>
                        </div>
                        @endforeach



                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="gauto-testimonial-area section_20">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h2>Experience for supplying vehicles</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="testimonial-slider owl-carousel">

                    @foreach ($feedback as $feed)
                        <div class="single-testimonial">
                            <div class="testimonial-text">
                            <p>{{ $feed->message }}</p>
                            <div class="testimonial-meta">
                                <div class="client-info">
                                    <h3>{{ $feed->name }}</h3>
                                    <p>{{ $feed->company }}</p>
                                </div>
                            </div>
                            </div>
                        </div>
                    @endforeach



                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="gauto-driver-area section_20">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>experts</h4>
                     <h2>Board of Director</h2>
                  </div>
               </div>
            </div>
            <div class="row">
                @foreach ($boardofdirector as $director)
                <div class="col-lg-3 col-sm-6">
                    <div class="single-driver">
                       <div class="driver-image">
                          <img src="{{ asset('uploads/management/'.$director->image) }}" alt="{{ $director->name }}" />

                       </div>
                       <div class="driver-text">
                          <div class="driver-name">
                             <a href="#">
                                <h3>{{ $director->name }}</h3>
                             </a>
                             <p>{{ $director->designation }}</p>
                          </div>
                       </div>
                    </div>
                 </div>
                @endforeach

            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="load-more">
                     <a href="#" class="gauto-btn">More Members</a>
                  </div>
               </div>
            </div>
         </div>
      </section>


     <section id="clients" class="section-bg section_20">

      <div class="container">
        <div class="row">
           <div class="col-md-12">
              <div class="site-heading">
                 <h2>Our valuable clients</h2>
              </div>
           </div>
        </div>

        <div class="row no-gutters clients-wrap clearfix wow fadeInUp">

		  @foreach($partners as $partner)
              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <a href="{{ $partner->url }}" target="_blank"><img src="{{ asset('uploads/partner/'.$partner->image) }}" class="img-fluid" alt="{{ $partner->name }}"></a>
                </div>
              </div>
          @endforeach
          
          
          

        </div>

      </div>

    </section>
    
    
    <section class="section-bg section_20">

      <div class="container">
        <div class="row">
           <div class="col-md-12">
              <div class="site-heading">
                 <h2>Our Partners</h2>
              </div>
           </div>
        </div>
        <div class="row no-gutters clients-wrap clearfix wow fadeInUp">
        <div class="col-sm-12" style="margin:20px 0;">
    		<div id="thumbnail-slider" class="splide">
          <div class="splide__track">
                <ul class="splide__list">
                    @foreach($partners as $partner)
                    <li class="splide__slide">
                        <a href="{{ $partner->url }}" target="_blank"><img src="{{ asset('uploads/partner/'.$partner->image) }}" class="img-fluid" alt="{{ $partner->name }}"></a>
                    </li>
                    @endforeach
                </ul>
          </div>
                </div>
                </div>
        </div>
     </div>
 </section>
@endsection

@section('footer')
    @parent
    
            <link rel="stylesheet" href="{{ asset('assets/frontend/css/splide.css') }}" />
            <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.6.12/dist/js/splide.min.js"></script>
            <script>
				document.addEventListener( 'DOMContentLoaded', function () {
				  new Splide( '#thumbnail-slider', {
				  fixedWidth : 150,
				  fixedHeight: 113,
				  gap        : 10,
				  rewind     : true,
				  pagination : false,
				  cover      : true,
				  autoplay	 : true,
				  focus      : 'center',
				  breakpoints: {
					600: {
					  fixedWidth : 60,
					  fixedHeight: 44,
					},
				  },
				}).mount();
				});
            </script>
    <script>
        function scrollToTop() {
            //document.getElementById('name').focus();
           // window.scrollTo({top: 400, behavior: 'smooth'});
           $("html, body").animate({ scrollTop: "400px" }, 1000, function(){
            $('#name').focus();
            });
        }
    </script>
@endsection
