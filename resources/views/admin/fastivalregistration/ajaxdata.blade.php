<div style="overflow-x:auto; width:100%;max-width:1110px;">
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