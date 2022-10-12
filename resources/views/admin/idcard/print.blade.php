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
	font-size:14px;
	position:absolute;
	width:100%;
	float:left;
	font-weight:bold;
	color:#000;
	font-family:BNG,SutonnyBanglaOMJ,SolaimanLipi;
}
.username{
	margin-top:252px;
	margin-left:50px;
}
.favourite{
	margin-top:276px;
	margin-left:22px;
	color:red;
}
.address{
	margin-top:297px;
	text-align:left;
	margin-left:20px;
	font-size:16px;
}
.mobile{
	margin-top:297px;
	text-align:left;
	margin-left:125px;
	font-size:16px;
}
.images {
    margin-top: 142px;
    text-align: left;
    margin-left: 17px;
    width: 80px;
    height: 90px;
    position: absolute;
    float: left;
}
</style>
<link href="{{ asset('assets/lib/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
<body>
<page size="A4" layout="portrait">
    <div style="width:100%; height:auto;page-break-before: auto; page-break-after: auto">
            @foreach($allfastivalregistration as $fastivalregistration)  
                <div style="width:31%; height:380px; float:left; background:#990000; margin:1%;">   
                    <div class="commonclass username">{{ $fastivalregistration->name }}</div>                         
                    <div class="commonclass favourite">{{ $fastivalregistration->profession }}</div> 
                    <div class="commonclass address">{{ $fastivalregistration->address }}</div> 
                    <div class="commonclass mobile">{{ $fastivalregistration->mobile }}</div> 
                    @if($fastivalregistration->image!="")
                        <img src="{{ asset('uploads/user/'.$fastivalregistration->image) }}" class="images" />    
                    @else
                        <img src="{{ asset('assets/images/default.png') }}" class="images" />    
                    @endif                 
                    <img src="{{ asset('assets/images/carddesign_small.png') }}" style="width:100%; height:380px;" />
                </div>
            @endforeach
    </div>
</page>
</body>
<script type="text/javascript">
	window.print();
</script> 