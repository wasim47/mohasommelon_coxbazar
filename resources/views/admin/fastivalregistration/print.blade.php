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
	}
	page[size="A4"] {
		width:21cm;
		height:21cm;
	}
	page[size="A4"][layout="portrait"] {
		width:21cm;
		height:21cm;
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
</style>
<link href="{{ asset('assets/lib/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
<body>
<page size="A4" layout="portrait">
    <div style="width:100%; height:auto;page-break-before: auto; page-break-after: auto">
    	<div class="col-sm-4 offset-5">
            <img src="{{ asset('assets/img/logo.png') }}" style="width:100px; height:auto">
        </div>
		<table width="100%" border="0" class="table-bordered table">
  			 <tr>
                <td>উৎসবের নাম</td>            
                <td>{{ $fastivalregistration->fastival->name }}</td>
            </tr>
             <tr>
                <td width="26%">নিবন্ধন প্রার্থীর নাম<span style="color:#ff0000; font-size:20px;">*</span></td>            
               <td width="74%">{{ $fastivalregistration->name }}</td>
            </tr>
            <tr>
                <td>পিতার নাম</td>              
                <td>{{ $fastivalregistration->fname }}</td>
            </tr>
            <tr>
                <td>মাতার নাম</td>         
                <td>{{ $fastivalregistration->mname }}</td>
            </tr>
            
            <tr>
               <td>জন্ম তারিখ</td>               
                <td>{{ $fastivalregistration->dob}}</td>
            </tr>
            
            <tr>
               <td>জাতীয় পরিচয় পত্র</td>        
                <td>{{ $fastivalregistration->nid }}</td>
            </tr>
            
            <tr>
                <td>রক্তের গ্রুপ</td>       
                <td>{{ $fastivalregistration->blood_group }}</td>
            </tr>
            <tr>
                 <td>পেশা</td>           
                <td>{{ $fastivalregistration->profession }}</td>
            </tr>
            <tr>
               <td>প্রিয় কবিতা ও কবি</td>                  
                <td>{{ $fastivalregistration->favourite }}</td>
            </tr>
            <tr>
                  <td>প্রকাশিত গ্রন্থ</td>         
                <td>{{ $fastivalregistration->published_books }}</td>
            </tr>
            <tr>
                 <td> মোবাইল নং</td>             
                <td>{{ $fastivalregistration->mobile }}</td>
            </tr>
            <tr>
                 <td>ইমেইল</td>        
                <td>{{ $fastivalregistration->email }}</td>
            </tr>
            <tr>
                  <td>ঠিকানা</td>  
                <td>{{ $fastivalregistration->address }}</td>
            </tr>
    </table>
    </div>
</page>
</body>
<script type="text/javascript">
	window.print();
</script> 