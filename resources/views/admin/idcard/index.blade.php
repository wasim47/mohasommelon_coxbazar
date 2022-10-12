@extends('admin.include.master')
	@section('title') User List - Sommilito Nagorik Forum @endsection
@section('content')
<style>
.commonclass{
	font-size:25px;
	position:absolute;
	text-align:center;
	width:100%;
	float:left;
	color:#000;
	font-family:BNG,SutonnyBanglaOMJ,SolaimanLipi;
}
.username{
	margin-top:470px;
}
.favourite{
	margin-top:510px;
	color:red;
}
.address{
	margin-top:550px;
	text-align:left;
	margin-left:60px;
	font-size:25px;
}
.mobile{
	margin-top:550px;
	text-align:left;
	margin-left:260px;
	font-size:25px;
}
.images {
    margin-top: 275px;
    text-align: left;
    margin-left: 47px;
    width: 129px;
    height: 160px;
    position: absolute;
    float: left;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header" style="border:none">
                    <h3 class="page-title">View ID Card List</h3>
                        <div class="col-sm-2" style="margin:0; padding:0">
                            <ol class="breadcrumb" style="padding:13px;">
                                <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                                <li>ID Card</li>
                            </ol>
                        </div>
                        <div class="col-sm-10 breadcrumb" style="float:right; text-align:right">
                          
                          <div class="col-sm-12">
                                    <div style="width:15%; float:left; text-align:left">Total: {{ count($allfastivalregistration) }}</div>
                                    <div style="width:30%; float:left">
                                        <input type="text" name="keyword" id="keyword" class="form-control" placeholder="নাম, পিতার নাম, মাতার নাম, মোবাইল নং......" />
                                    </div>                                    
                                    <div style="width:15%; float:left">
                                            <select name="fastival_id" id="fastival_id" class="form-control" required>
                                                <option value="">উৎসব সমূহ</option>
                                                @foreach($links as $link)
                                                 <option value="{{ $link->id }}">{{  $link->name  }}</option>
                                                @endforeach
                                            </select>
                                    </div>
                                    <div style="width:10%; float:left">
                                        <select name="blood_group" class="form-control" >
                                        <option value="A+">A+</option>
                                        <option value="A-">A-</option>
                                        <option value="B+">B+</option>
                                        <option value="B-">B-</option>
                                        <option value="O+">O+</option>
                                        <option value="O-">O-</option>
                                        <option value="AB+">AB+</option>
                                        <option value="AB-">AB-</option>
                                    </select>
                                    </div>
                                    <div style="width:13%; float:left"><button type="button" class="btn btn-primary btn-sm" onclick="ajaxSearch();">অনুসন্ধান করুন</button></div>
                                    <div style="width:8%; float:left"><a href="{{ route('idcard.print',2) }}" class="btn btn-success btn-sm">প্রিন্ট 2</a></div>
                                    <div style="width:8%; float:left"><a href="{{ route('idcard.print',3) }} " class="btn btn-success btn-sm">প্রিন্ট 3</a></div>                                       
                         </div>
                      </div>
                </div>
              @if (session()->has('messageType'))
                  <div class="alert alert-{{ session()->get('messageType') }}" role="alert">
                      <strong>STATUS: </strong> {{ session()->get('message') }}
                  </div>
              @endif
            </div>
             <div class="row-fluid">
                      
                <div class="col-sm-12">
                	<div id="responsedata">
                      <div class="row"> 
                            @foreach($allfastivalregistration as $fastivalregistration)  
                                <div class="col-sm-6">   
                                    <div class="commonclass username">{{ $fastivalregistration->name }}</div>                         
                                    <div class="commonclass favourite">{{ $fastivalregistration->profession }}</div> 
                                    <div class="commonclass address">{{ $fastivalregistration->address }}</div> 
                                    <div class="commonclass mobile">{{ $fastivalregistration->mobile }}</div> 
                                    @if($fastivalregistration->image!="")
                                        <img src="{{ asset('uploads/user/'.$fastivalregistration->image) }}" class="images" />    
                                    @else
                                        <img src="{{ asset('assets/images/default.png') }}" class="images" />    
                                    @endif                  
                                    <img src="{{ asset('assets/images/carddesign.png') }}" style="width:95%; height:auto; margin:5% 2.5%" />
                                </div>
                            @endforeach
                      </div>
                     </div>
                </div>
              </div>
    </div>
</div>




<script>
function ajaxSearch()
{
	 var keyword = $("#keyword").val();
	  var blood_group = $("#blood_group").val();
	  var fastival_id = $("#fastival_id").val();
	  
	  var surl = '{{ route("admin.cardsearch") }}';
	  //alert(surl);
	  $.ajax({
		type: "GET",
		url: surl,
		data: {'keyword':keyword,'blood_group':blood_group,'fastival_id':fastival_id},

		cache: false,
		beforeSend: function(){
			$('#LoadingImageE').show();
		},
		complete: function(){
			$('#LoadingImageE').hide();
		},
		success: function(response) {
				//alert(response);
			  $('#responsedata').html(response);
			  $("#LoadingImageE").hide();
		},
		error: function (xhr, status) {
		  $("#LoadingImageE").hide();
		  alert('Unknown error ' + status);
		}
	  });
}
</script>
@endsection
