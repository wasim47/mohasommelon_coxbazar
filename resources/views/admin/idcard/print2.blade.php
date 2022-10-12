<style>
body {
	  background: #ddd; 
	  text-align:center;
	  margin:auto;
	}
	page {
		background: #fff;
		display: block;
		margin: 0 auto;
		margin-bottom: 0.5cm;
		box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);
		width:21cm;
		height:29.7cm;
	}
	page[size="A4"] {
		width:21cm;
		height:29.7cm;
	}
	page[size="A4"][layout="portrait"] {
		width:21cm;
		height:29.7cm;
	}
	page[size="A3"][layout="portrait"] {
		 width: 42cm;
		 height: 29.7cm;
	 }
	 page[size="A5"] {
		 width: 14.8cm;
		 height: 21cm;
	 }
	 page[size="A5"][layout="portrait"] {
		 width: 21cm;
		 height: 14.8cm;
	 }
	 @media print {
		 body, page {
			 margin: 0;
			 box-shadow: none;
		 }
	 }
	 
.commonclass{
	font-size:20px;
	position:absolute;
	width:100%;
	float:left;
	color:#000;
	font-family:BNG,SutonnyBanglaOMJ,SolaimanLipi;
}
.username{
	margin-top:485px;
}
.favourite{
	margin-top:525px;
	color:red;
}
.address{
	margin-top:575px;
	text-align:left;
	margin-left:55px;
	font-size:16px;
}
.mobile{
	margin-top:575px;
	text-align:left;
	margin-left:270px;
	font-size:16px;
}
.images {
    margin-top: 269px;
    text-align: left;
    margin-left: 37px;
    width: 137px;
    height: 168px;
    position: absolute;
    float: left;
}

.qrcode {
    margin-top: 300px;
    text-align: right;
    margin-left: 400px;
    width: 100px;
    height: 100px;
    position: absolute;
    float: right;
}
</style>
<body>
    <div style="width:100%; height:auto;page-break-before: auto; page-break-after: auto">
            @foreach($allfastivalregistration as $fastivalregistration)  
                <div style="width:48%; height:auto; float:left; margin:1%; position:relative;page-break-before: auto; page-break-after: auto">   
                    <div class="commonclass username">{{ $fastivalregistration->name }}</div>                         
                    <div class="commonclass favourite">{{ $fastivalregistration->profession }}</div> 
                    <div class="commonclass address">{{ $fastivalregistration->address }}</div> 
                    <div class="commonclass mobile">{{ $fastivalregistration->mobile }}</div> 
                    @if($fastivalregistration->image!="")
                        <img src="{{ asset('uploads/user/'.$fastivalregistration->image) }}" class="images" />    
                    @else
                        <img src="{{ asset('assets/images/default.png') }}" class="images" />    
                    @endif                  
                    
                    <img src="{{ asset('assets/images/qrcode.jpeg') }}" class="qrcode" /> 
                    <img src="{{ asset('assets/images/carddesign.png') }}" style="width:100%; height:auto;" />
                </div>
            @endforeach
    </div>
</body>
<script type="text/javascript">
	window.print();
</script> 