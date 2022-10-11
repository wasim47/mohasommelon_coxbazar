@extends('admin.include.master')
	@section('title') Update Information List - Zaman Car Rental @endsection
@section('content')
	<div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header" style="border:none">
                    <h3 class="page-title">View Booking List</h3>
                        <div class="col-sm-5" style="margin:0; padding:0">
                            <ol class="breadcrumb" style="padding:13px;">
                                <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                                <li>Settings</li>
                                <li class="active">Booking List</li>
                            </ol>
                        </div>
                        <div class="col-sm-7 breadcrumb pull-right" style="float:right; text-align:right">

                          <a  href="javascript:void()" onclick="deletedata('masterdelete','bookings');" style="color:#fff; margin-right:20px;" class="btn btn-danger btn-sm"><i class="fa fa-times"></i> Multiple Delete</a>

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
                  <div class="card">

                      <div class="card-block">
                      	<form id="form_check">
                            <table id="responsive-datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                      <th width="2%"><input name="checkbox" onclick='checkedAll();' type="checkbox" readonly="readonly" /></th>
                                      <th width="76%">Name</th>
                                      <th width="76%">Mobile</th>
                                      <th width="76%">Email</th>
                                      <th width="76%">From Address</th>
                                      <th width="76%">Destination</th>
                                      <th width="76%">Journey Date</th>
                                      <th width="76%">Journey Time</th>
                                      <th width="76%">Car</th>
                                      <th width="11%" align="right">Action</th>
                                  </tr>
                			  </thead>
                               <tbody>
                			<?php $i=0; ?>
                            @foreach($allbooking as $booking)
                            <?php $i++;	?>

                            <tr id="tablerow<?php echo $booking->id;?>" class="tablerow">
                              <td><input type="checkbox"  name="summe_code[]" id="summe_code<?php echo $i; ?>" value="{{ $booking->id }}" /></td>
                              <td>{{ $booking->name }}</td>
                              <td>{{ $booking->mobile }}</td>
                              <td>{{ $booking->email }}</td>
                              <td>{{ $booking->from_address }}</td>
                              <td>{{ $booking->to_address }}</td>
                              <td>{{ $booking->journey_date }}</td>
                              <td>{{ $booking->journey_time }}</td>
                              <td>{{ $booking->getCar->name }}</td>
                              <td align="right">
                              	  <button type="button" class="btn btn-danger" style="font-size: 12px; float:left; padding:3px 5px"
                                    onclick="deleteSingle('<?php echo $booking->id;?>','masterdelete','bookings')"><i class="fa fa-trash"></i></button>
                              </td>
                            </tr>
                            @endforeach
            				</tbody>
                      </table>
                        </form>
                      </div>
                  </div>
                </div>
              </div>
    </div>
</div>
@endsection
