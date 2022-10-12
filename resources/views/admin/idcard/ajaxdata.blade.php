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