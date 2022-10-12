<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>@yield('title')</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="gauto | Car Rental HTML Template from Themescare">
      <meta name="keyword" content="taxi,car,rent,hire,transport">
      <meta name="author" content="Themescare">
      <!-- Title -->
      <title>Zaman Car Rental</title>
      <!-- Favicon -->
      <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/frontend/img/favicon/favicon-32x32.png') }}">
      <!--Bootstrap css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/bootstrap.css') }}">
      <!--Font Awesome css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/font-awesome.min.css') }}">
      <!--Magnific css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/magnific-popup.css') }}">
      <!--Owl-Carousel css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/owl.carousel.min.css') }}">
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/owl.theme.default.min.css') }}">
      <!--Animate css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/animate.min.css') }}">
      <!--Nice Select css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/nice-select.css') }}">
      <!-- Lightgallery css -->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/lightgallery.min.css') }}">
      <!--Slicknav css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/slicknav.min.css') }}">
      <!--Site Main Style css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/style.css') }}">
      <!--Responsive css-->
      <link rel="stylesheet" href="{{ asset('assets/frontend/css/responsive.css') }}">
      
      <link rel="stylesheet" href="{{ asset('assets/frontend/colorbox/colorbox.css') }}" />

</head>

<body>

	 {{--  <section class="gauto-header-top-area">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="header-top-left">
                     <p>Need Help?: <i class="fa fa-phone"></i> Call: {{ $companyprofile->hotline}}</p>
                  </div>
               </div>
            </div>
         </div>
      </section> --}}
      <header class="gauto-main-header-area">
         <div class="container">
            <div class="row">
               <div class="col-lg-2 col-sm-12">
                  <div class="site-logo">
                     <a href="{{ route('home') }}">
                     <img src="{{ asset('uploads/companyprofile/'.$companyprofile->image) }}" alt="gauto" />
                     </a>
                  </div>
               </div>
               <div class="col-lg-6 col-sm-12">
                  <div class="header-promo">
                     
                     <div class="single-header-promo">
                        <div class="header-promo-icon">
                           <img src="{{ asset('assets/frontend/img/clock.png') }}" alt="clock" />
                        </div>
                        <div class="header-promo-info">
                           <h3>{{ Helper::translateBangla(date('l, d F Y'))}}</h3>
                           <h3><span id="currentTime"></span></h3>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="header-action">
                     <a href="#">For support: <i class="fa fa-phone"></i> {{ $companyprofile->contact}}</a>
                  </div>
               </div>
            </div>
         </div>
      </header>
    @section('sidebar')
      
         <section class="gauto-mainmenu-area">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <div class="mainmenu">
                     <nav>                        
                        <ul id="gauto_navigation">
                          <li class="active"><a href="{{ route('home')}}">Home</a></li>
                          @foreach($menus as $menu)
                            <?php
                                if($menu->page_structure=='Text'){	
                                    $mainurl = route('maincontent',[$menu->uri]);	
                                }
                                elseif($menu->page_structure!='Text'){
                                    $mainurl = route($menu->page_structure);	
                                }
                                else{
                                    $mainurl = route('home');	
                                }
                                $submenus = App\Models\Menu::where('parent_id',$menu->uri)->where('sparent_id', NULL);
                                 if($submenus->count()!=0){
                                    $mclass = 'drop-down';
                                 }
                                 else{
                                    $mclass = '';
                                 }
                            ?>
                              <li class="{{ $mclass }}"><a href="{{ $mainurl }}">{{ $menu->title }} </a>
                                @if($submenus->count()!=0)
                                    <ul>
                                      @foreach($submenus->get() as $smenu)
                                        <?php
                                            if($smenu->page_structure=='Text'){	
                                                $suburl = route('subcontent',[$menu->uri,$smenu->uri]);	
                                            }
                                            elseif($smenu->page_structure!='Text'){
                                                $suburl = route($smenu->page_structure);
                                            }							
                                            else{
                                                $suburl = route('home');
                                            }
                                            
                                            $lastmenus = App\Models\Menu::where('sparent_id',$smenu->uri);	
                                            if($lastmenus->count()!=0){
                                                $sclass = 'drop-down';
                                             }
                                             else{
                                                $sclass = '';
                                             }											
                                        ?>
                                      <li class="{{ $sclass }}"><a href="{{ $suburl }}">{{ $smenu->title }} </a>
                                        @if($lastmenus->count()!=0)
                                             <ul>
                                                 @foreach($lastmenus->get() as $lmenu)
                                                    <?php
                                                        if($lmenu->page_structure=='Text'){	
                                                            $lasturl = route('subsubcontent',[$menu->uri,$smenu->uri,$lmenu->uri]);	
                                                        }
                                                        elseif($lmenu->page_structure!='Text'){
                                                            $lasturl = route($lmenu->page_structure);
                                                        }							
                                                        else{
                                                            $lasturl = route('home');
                                                        }									
                                                    ?>
                                                    <li><a href="{{ $lasturl }}">{{ $lmenu->title }} </a></li>
                                                 @endforeach
                                            </ul>
                                        @endif
                                      </li>
                                      @endforeach
                                    </ul>
                                @endif
                              </li>
                          @endforeach
                        </ul>
                     </nav>
                  </div>
               </div>               
            </div>
         </div>
      </section>
    @show

    @yield('content')


    @section('footer')
        <footer class="gauto-footer-area">
         <div class="footer-top-area">
            <div class="container">
               <div class="row">
                  <div class="col-lg-4">
                     <div class="single-footer">
                        <div class="footer-logo">
                           <a href="#">
                           <img src="{{ asset('uploads/companyprofile/'.$companyprofile->image) }}" alt="footer-logo" />
                           </a>
                        </div>
                        <p>sed do eiusmod tempor incididunt ut labore et dolore magna as aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
                        <div class="footer-address">
                           <h3>Head office</h3>
                           <p>{{ $companyprofile->address}}</p>
                           <ul>
                              <li>Phone: {{ $companyprofile->contact}} </li>
                              <li>Email: {{ $companyprofile->email}}</li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-4">
                     <div class="single-footer quick_links">
                        <h3>Quick Links</h3>
                        <ul class="quick-links">
                           <li><a href="#">About us</a></li>
                           <li><a href="#">Our Services</a></li>
                           <li><a href="#">Case Studies</a></li>
                           <li><a href="#">Contact us</a></li>
                        </ul>
                        <ul class="quick-links">
                           <li><a href="#">Testimonials</a></li>
                           <li><a href="#">Privacy Policy</a></li>
                           <li><a href="#">latest News</a></li>
                        </ul>
                     </div>
                     	
                  </div>
                  
               </div>
            </div>
         </div>
         <div class="footer-bottom-area">
            <div class="container">
               <div class="row">
                  <div class="col-md-6">
                     <div class="copyright">
                        <p>Design by <i class="fa fa-heart"></i> from <a href="#">softXmagic</a></p>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="footer-social">
                        <ul>
                           <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                           <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                           <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                           <li><a href="#"><i class="fa fa-skype"></i></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
        
        <script>						
			setInterval(
				function() {
					var d = new Date(),
					h = (d.getHours()<10?'0':'') + d.getHours(),
					m = (d.getMinutes()<10?'0':'') + d.getMinutes();
					s = (d.getSeconds()<10?'0':'') + d.getSeconds();
				   document.getElementById('currentTime').innerHTML = h + ':' + m + ':' + s;
               // document.getElementById('currentTime').innerHTML = {{  Helper::translateBangla("<script>h + ':' + m + ':' + s</script>") }};
				}, 1000
			);
        </script>
      

      <script src="{{ asset('assets/frontend/js/jquery.min.js') }}"></script>
      <!-- Popper JS -->
      <script src="{{ asset('assets/frontend/js/popper.min.js') }}"></script>
      <!--Bootstrap js-->
      <script src="{{ asset('assets/frontend/js/bootstrap.min.js') }}"></script>
      <!--Owl-Carousel js-->
      <script src="{{ asset('assets/frontend/js/owl.carousel.min.js') }}"></script>
      <!--Lightgallery js-->
      <script src="{{ asset('assets/frontend/js/lightgallery-all.js') }}"></script>
      <script src="{{ asset('assets/frontend/js/custom_lightgallery.js') }}"></script>
      <!--Slicknav js-->
      <script src="{{ asset('assets/frontend/js/jquery.slicknav.min.js') }}"></script>
      <!--Magnific js-->
      <script src="{{ asset('assets/frontend/js/jquery.magnific-popup.min.js') }}"></script>
      <!--Nice Select js-->
      <script src="{{ asset('assets/frontend/js/jquery.nice-select.min.js') }}"></script>
      <!-- Datepicker JS -->
      <script src="{{ asset('assets/frontend/js/jquery.datepicker.min.js') }}"></script>
      <!--ClockPicker JS-->
      <script src="{{ asset('assets/frontend/js/jquery-clockpicker.min.js') }}"></script>
      <!--Main js-->
      <script src="{{ asset('assets/frontend/js/main.js') }}"></script>
      <script src="{{ asset('assets/frontend/colorbox/jquery.colorbox.js') }}"></script>
      <script>
         (function($) {
             $(".youtube").colorbox({iframe:true, width:"80%", height:"80%"});
             $(".photogallery").colorbox({
                 rel: 'gal', 
                 scalePhotos:true,
                 fadeOut:300,
                 slideshow:true, 
                 slideshowAuto:true,
                 slideshowSpeed:2500,
                 slideshowStart:'Start Auto slide',
                 slideshowStop:'Stop Auto slide',
                 width:"80%", 
                 height:"80%", 
             title: function(){
               var url = $(this).attr('href');
               return '<a href="' + url + '" target="_blank">Click here full view</a>';
             }});
             
         
         })(jQuery);
      </script>
    </body>

    </html>
@show
