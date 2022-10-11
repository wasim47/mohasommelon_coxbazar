@extends('layouts.app')

@section('title', 'Our Products')

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
                     <h3>Car Listing</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="{{ route('home') }}">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Car</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
       
       
      <!-- Car Listing Area Start -->
      <section class="gauto-car-listing section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-4">
                  <div class="car-list-left">
                     <div class="sidebar-widget">
                        <form>
                           <p>
                              <input type="text" placeholder="From Address" />
                           </p>
                           <p>
                              <input type="text" placeholder="To Address" />
                           </p>
                           <p>
                              <select>
                                 <option data-display="Select">AC Car</option>
                                 <option>Non-AC Car</option>
                              </select>
                           </p>
                           <p>
                              <input id="reservation_date" name="reservation_date" placeholder="Journey Date" data-select="datepicker" type="text">
                           </p>
                           <p class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
                              <input type="text" class="form-control" placeholder="Journey Time" />
                           </p>
                           <p>
                              <button type="submit" class="gauto-theme-btn">Find Car</button>
                           </p>
                        </form>
                     </div>
                     <div class="sidebar-widget">
                        <ul class="service-menu">
                           <li class="active">
                              <a href="#">All Brands<span>(2376)</span></a>
                           </li>
                           <li>
                              <a href="#">Toyota<span>(237)</span></a>
                           </li>
                           <li>
                              <a href="#">nissan<span>(123)</span></a>
                           </li>
                           <li>
                              <a href="#">mercedes<span>(23)</span></a>
                           </li>
                           <li>
                              <a href="#">hyundai<span>(467)</span></a>
                           </li>
                           <li>
                              <a href="#">Audi<span>(123)</span></a>
                           </li>
                           <li>
                              <a href="#">datsun<span>(23)</span></a>
                           </li>
                           <li>
                              <a href="#">Mitsubishi<span>(223)</span></a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-lg-8">
                  <div class="car-listing-right">
                     <div class="property-page-heading">
                        <div class="propertu-page-head">
                           <ul>
                              <li class="active"><a href="#"><i class="fa fa-th-list"></i></a></li>
                              <li><a href="#"><i class="fa fa-th-large"></i></a></li>
                           </ul>
                        </div>
                        <div class="paging_status">
                           <p>1-10 of 25 results</p>
                        </div>
                        <div class="propertu-page-shortby">
                           <label><i class="fa fa-sort-amount-asc"></i>Sort By</label>
                           <select class="chosen-select-no-single">
                              <option>Default</option>
                              <option>Price (Low to High)</option>
                              <option>Price (High to Low)</option>
                              <option>Featured</option>
                           </select>
                        </div>
                     </div>
                     <div class="car-grid-list">
                        <div class="row">
                        	@foreach($products as $product)
                         	  <div class="col-md-6">
                              <div class="single-offers">
                                 <div class="offer-image">
                                    <a href="{{ route('product.details',[$product->slug,'type'=>'details']) }}">
                                    <img src="{{ asset('uploads/car/'.$product->image) }}" alt="offer 1" />
                                    </a>
                                 </div>
                                 <div class="offer-text">
                                    <a href="{{ route('product.details',$product->slug) }}">
                                       <h3>{{ $product->name }}</h3>
                                    </a>
                                    <h4>BDT {{ $product->hireprice }}</h4>
                                       <ul>
                                          <li><i class="fa fa-car"></i>Model: {{ $product->model }}</li>
                                          <li><i class="fa fa-dashboard"></i>{{ $product->brand }}</li>
                                          <li><i class="fa fa-cogs"></i>{{ $product->function }}</li>
                                          <li><i class="fa fa-dashboard"></i>{{ $product->distance }}</li>
                                       </ul>
                                    <div class="offer-action">
                                       <a href="{{ route('product.details',[$product->slug,'type'=>'rent']) }}" class="offer-btn-1">Rent Car</a>
                                       <a href="{{ route('product.details',[$product->slug,'type'=>'details']) }}" class="offer-btn-2">Details</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           @endforeach
                        </div>
                        
                     </div>
                     <div class="pagination-box-row">
                        <p>Page 1 of 6</p>
                        <ul class="pagination">
                           <li class="active"><a href="#">1</a></li>
                           <li><a href="#">2</a></li>
                           <li><a href="#">3</a></li>
                           <li>...</li>
                           <li><a href="#">6</a></li>
                           <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Car Listing Area End -->
@endsection


@section('footer')
    @parent
@endsection
