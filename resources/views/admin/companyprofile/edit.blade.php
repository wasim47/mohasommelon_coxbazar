@extends('admin.include.master')
	@section('title') Edit - {{ $companyprofile->name }} - Zaman Car Rental @endsection
@section('content')

  <link href="{{ asset('/app-assets/plugins/datatables/datatables.css') }}" rel="stylesheet" type="text/css">

    <div class="layout-content">
        <div class="layout-content-body">
        	<div class="col-sm-12">
                <div class="page-header">
                    <h3 class="page-title"> Information Edit</h3>
                    <ol class="breadcrumb">
                        <li><a href="{{ route('dashboard') }}">Home</a></li>
                        <li>Settings</li>
                        <li class="active">Edit - {{ $companyprofile->name }}</li>
                         <li style="text-align:right; float:right">
                            	<a  href="{{ route('companyprofile.index') }}" style="color:#fff;"><i class="fa fa-list"></i> View  List</a>
                            </li>
                    </ol>
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
            	<div class="row" style="margin:10px">
                      	<div class="col-sm-offset-2">
						{!! Form::model($companyprofile, ['route'=>['companyprofile.update', $companyprofile->id], 'files' => true, 'method'=>'PATCH', 'class'=>'form-horizontal']) !!}


                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Company Name') }}</label>
                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ $companyprofile->name }}" required>
                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="slogan" class="col-md-2 col-form-label text-md-right">{{ __('Slogan') }}</label>
                            <div class="col-md-6">
                                <input id="slogan" type="text" class="form-control" name="slogan" value="{{ $companyprofile->slogan }}" required>
                                @if ($errors->has('slogan'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('slogan') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-2 col-form-label text-md-right">{{ __('Email') }}</label>
                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ $companyprofile->email }}" required>
                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="contact" class="col-md-2 col-form-label text-md-right">{{ __('Contact No') }}</label>
                            <div class="col-md-6">
                                <input id="contact" type="text" class="form-control" name="contact" value="{{ $companyprofile->contact }}" required>
                                @if ($errors->has('contact'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('contact') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="address" class="col-md-2 col-form-label text-md-right">{{ __('Address') }}</label>
                            <div class="col-md-6">
                                <input id="address" type="text" class="form-control" name="address" value="{{ $companyprofile->address }}" required>
                                @if ($errors->has('address'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('address') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="hotline" class="col-md-2 col-form-label text-md-right">{{ __('Hotline') }}</label>
                            <div class="col-md-6">
                                <input id="hotline" type="text" class="form-control" name="hotline" value="{{ $companyprofile->hotline }}" required>
                                @if ($errors->has('hotline'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('hotline') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Image') }}</label>
                            <div class="col-md-6">
                                <input id="image" type="file" class="form-control" name="image">
                                @if ($errors->has('image'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('image') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('URL (Optional)') }}</label>
                            <div class="col-md-6">
                                <input id="url" type="text" class="form-control" name="url" value="{{ $companyprofile->url }}">
                            </div>
                        </div>
                        
                        
                        <div class="form-group row">
                            <label for="tin" class="col-md-2 col-form-label text-md-right">{{ __('TIN') }}</label>
                            <div class="col-md-6">
                                <input id="tin" type="text" class="form-control" name="tin" value="{{ $companyprofile->tin }}" required>
                                @if ($errors->has('tin'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('tin') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
                        
                        <div class="form-group row">
                            <label for="bin" class="col-md-2 col-form-label text-md-right">{{ __('BIN') }}</label>
                            <div class="col-md-6">
                                <input id="bin" type="text" class="form-control" name="bin" value="{{ $companyprofile->bin }}" required>
                                @if ($errors->has('bin'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('bin') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
                        

                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Meta Details') }}</label>
                            <div class="col-md-6">
                                <input id="meta_details" type="text" class="form-control" name="meta_details" value="{{ $companyprofile->meta_details }}">
                                @if ($errors->has('meta_details'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('meta_details') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Keywords') }}</label>
                            <div class="col-md-6">
                                <input id="keywords" type="text" class="form-control" name="keywords" value="{{ $companyprofile->keywords }}">
                                @if ($errors->has('keywords'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('keywords') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Sequence') }}</label>
                            <div class="col-md-6">
                                <input id="sequence" type="number" class="form-control" name="sequence" value="{{ $companyprofile->sequence }}" style="width:30%">
                                @if ($errors->has('sequence'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('sequence') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-md-2 col-form-label text-md-right">{{ __('Status') }}</label>
                            <div class="col-md-6">
                               <select name="status" class="form-control">
                               	 <option value="1">Display</option>
                                 <option value="0">Not Display</option>
                               </select>
                               <input id="stillthumb" type="hidden" class="form-control" name="stillthumb" value="{{ $companyprofile->image }}">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Save') }}
                                </button>
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
@endsection

  <script src="{{ asset('/app-assets/plugins/datatables/dataTables.min.js') }}"></script>
  <script src="{{ asset('/app-assets/plugins/datatables/dataTables.bootstrap.js') }}"></script>
  <script src="{{ asset('/app-assets/pages/datatables.js') }}"></script>
