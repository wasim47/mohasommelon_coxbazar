@extends('admin.include.master')
	@section('title') User List - Sommilito Nagorik Forum @endsection
@section('content')
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header" style="border:none">
                    <h3 class="page-title">View User List</h3>
                        <div class="col-sm-3" style="margin:0; padding:0">
                            <ol class="breadcrumb" style="padding:13px;">
                                <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                                <li>User</li>
                            </ol>
                        </div>
                        <div class="col-sm-9 breadcrumb" style="float:right; text-align:right">
                          <span style="margin-right:10px; font-size:15px">Total: {{ count($allfastivalregistration) }}</span>
                          <a  href="javascript:void()" onclick="permissions('shop_information','1');" style="color:#000; margin-right:0;" class="btn btn-success btn-sm"><i class="fa fa-check"></i> Approved</a>
                          <a  href="javascript:void()" onclick="permissions('shop_information','0');" style="color:#000; margin-right:0;" class="btn btn-warning btn-sm"><i class="fa fa-times"></i> Disapproved</a>
                          <a  href="javascript:void()" onclick="deletedata('masterdelete','shop_information');" style="color:#fff; margin-right:0;" class="btn btn-danger btn-sm"><i class="fa fa-times"></i> Multiple Delete</a>
                          <a  href="{{ route('fastivalregistration.create') }}" style="color:#fff; margin-right:0" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i> Create New User</a>
                          <a href="{{ route('export',['filename'=>'fastivalregistration']) }}" class="btn btn-success btn-sm" style="color:#fff"><i class="fa fa-download"></i> Export</a>
                          <a href="javascript:void(0)" class="btn btn-info	 btn-sm" style="color:#fff" data-toggle="modal" data-target="#exampleModalLong"><i class="fa fa-upload"></i> Import</a>
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
                		
                        <div style="width:35%; float:left">
                            <input type="text" name="keyword" id="keyword" class="form-control" placeholder="নাম, পিতার নাম, মাতার নাম, মোবাইল নং......" />
                        </div>
                        
                        <div style="width:20%; float:left">
                                <select name="fastival_id" id="fastival_id" class="form-control" required>
                                    <option value="">উৎসব সমূহ</option>
                                    @foreach($links as $link)
                                     <option value="{{ $link->id }}">{{  $link->name  }}</option>
                                    @endforeach
                                </select>
                        </div>
                        <div style="width:20%; float:left">
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
                        <div style="width:25%; float:left"><button type="button" class="btn btn-primary btn-sm" onclick="ajaxSearch();">অনুসন্ধান করুন</button></div>
                           
                 </div>
                <div class="col-sm-12">
                  <div class="card">

                      <div class="card-block">
                          
                      	<form id="form_check">
                            	<div style="overflow-x:auto; max-width:1024px;">
                                	<div id="responsedata">
                                    	<table id="responsive-datatable" class="table-striped table-bordered table" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                      <th width="4%"><input name="checkbox" onclick='checkedAll();' type="checkbox" readonly="readonly" /></th>
                                       <th>অ্যাকশান</th>                                      
                                       <th>উৎসব</th>
                                       <th>নিবন্ধন প্রার্থীর নাম*</th>
                                       <th>পিতার নাম</th>
                                       <th>মাতার নাম</th>
                                       <th> জন্ম তারিখ</th>
                                       <th>জাতীয় পরিচয় পত্র</th>
                                       <th>রক্তের গ্রুপ</th>
                                       <th>পেশা</th>                                    
                                       <th> প্রিয় কবিতা ও কবি</th>
                                       <th>প্রকাশিত গ্রন্থ</th>
                                       <th>মোবাইল নং</th>
                                       <th>ইমেইল</th>
                                       <th>ঠিকানা</th>
                                  </tr>
                			  </thead>
                               <tbody>
                			<?php $i=0; ?>
                            @foreach($allfastivalregistration as $menu)
                            <?php $i++;
							?>

                            <tr id="tablerow<?php echo $menu->id;?>" class="tablerow">
                              <td><input type="checkbox"  name="summe_code[]" id="summe_code<?php echo $i; ?>" value="{{ $menu->id }}" /></td>
                               <td align="right">
                                  <div style="width:50%; float:left">
                                     <a href="{{ route('fastivalregistration.edit', $menu->id) }}" class="btn btn-warning" style="font-size: 12px; float:left; padding:3px 5px"><i class="fa fa-edit"></i></a>
                                  </div>
                                  <div style="width:50%; float:left">
                                      <button type="button" class="btn btn-danger" style="font-size: 12px; float:left; padding:3px 5px"
                                        onclick="deleteSingle('<?php echo $menu->id;?>','masterdelete','shop_information')"><i class="fa fa-trash"></i></button>
                                  </div>
                                  <a href="{{ route('fastivalregistration.show', $menu->id) }}" class="btn btn-info btn-sm" style="padding:2px 5px; font-size:12px;"><i class="fa fa-file"></i></a>               
                                  <a href="{{ route('fastivalregistration.printinfo',$menu->id) }}" class="btn btn-success btn-sm" style="padding:2px 5px; font-size:12px;" target="_blank">
                                    <i class="fa fa-print"></i></a>         
                                     
                              </td>
                                <td>@if($menu->fastival) {{ $menu->fastival->name }} @endif</td>
                                <td>{{ $menu->name }}</td>
                                <td>{{ $menu->fname }}</td>
                                <td>{{ $menu->mname }}</td>
                                <td>{{ $menu->dob }}</td>
                                <td>{{ $menu->nid }}</td>
                                <td>{{ $menu->blood_group }}</td>   
                                <td>{{ $menu->profession }}</td>     
                                <td>{{ $menu->favourite }}</td>     
                                <td>{{ $menu->published_books }}</td>     
                                <td>{{ $menu->mobile }}</td>     
                                <td>{{ $menu->email }}</td>       
                                <td>{{ $menu->address }}</td>    	                          
                            </tr>
                            @endforeach
            				</tbody>
                      </table>
                      				</div>
                                </div>
                      		<div class="col-sm-12" style="margin:10px">{{ $allfastivalregistration->links() }}</div>
                        </form>
                      </div>
                  </div>
                </div>
              </div>
    </div>
</div>


<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLongTitle" style="color:#333; width:50%; float:left">Bulk Import </h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style=" width:50%; float:right">X</button>
      </div>
      <div class="modal-body">
           <div class="row">
                <div class="col-sm-4">
                	<label style="color:#333">Download excel format</label>
                    <a href="{{ route('samplefiledownload',['filename'=>'fastivalregistration']) }}" class="btn btn-warning">Click here to download</a>
                </div>
                <div class="col-sm-8">
                	<label style="color:#333">Choose your excel file</label>
                    <form method="post" action="{{ route('import') }}" enctype="multipart/form-data">
                    	{{ csrf_field() }}
                        <div class="col-sm-8">
                        
                            <input type="hidden" name="filename" value="fastivalregistration"/>
                        	<input type="file" name="importfile" class="form-control" />
                            <small style="color:#FF0000">
                            	ডাটা ইম্পর্ট করার পুর্বে অবশ্যই সেক্রেটারি নাম ও সেবার নাম আগে থেকে ডাটাবেজ এ প্রবেশ করাতে হবে।
                            </small>
                            
                        </div>
                        <div class="col-sm-4"><button type="submit" class="btn btn-info">Upload</button></div>
                    </form>
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
	  
	  var surl = '{{ route("admin.shopsearch") }}';
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
