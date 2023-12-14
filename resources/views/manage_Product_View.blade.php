@extends('layoutView')
  <title>Product Manage</title>
    <style>
        .description {
           text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap; 
            /* word-wrap: break-word;
            min-width: 80px;
            max-width: 80px;
            white-space:normal; */
        }
        /* table,tr,td,th{
            width: 100%;
            height: 100%;
            border:1px solid black;
        } */
         td  {
            width:80px;
        }
        th{
            font-size:16px;
        }
        
        
    </style>
    <script>
            var msg = '{{Session::get('alert1')}}';
            var exist = '{{Session::has('alert1')}}';
            if(exist){
            alert(msg);
            }
    </script>
</head>
@section('content')
<body>
<div class="container">
    <div class="row">
        <div style="  margin-top:20px;" >
            <div class="col-sm-6" style=" margin-bottom:20px;">
                <a href="{{route('add')}}" class="material-icons">library_add</a>            
            </div>
            <form action="{{route('manage.search')}}" role="search">
                <div class="col-sm-6"  style="width:300px; float:right; display: flex;">
                <input type="search" name="manage_search" value="" class="form-control" >
                <button class='btn btn-default btn-circle' ><i class=' fas fa-search' ></i></button>
                </div>
            </form>
        </div>
    </div>
    

         <!-- makeup -->
    <div style=" margin-top:20px;" class="table-responsive" >    
        <table  class="table table-hover"> 
             <thead  style="background-color: #DDDDDD;">
            <tr>
                    <th style="width:3%">YAMAHA</th>
                    <th style="width:5%">MSP</th>
                    <th style="width:10%">Type</th>
                    <th style="width:20%">Productname</th>
                    <th style="width:15%">Productimg</th>
                    <th style="width:10%">Productprice</th>
                    <th style="width:30%">Productdescription</th>
                    <th>Action</th>
            </tr>

            </thead>
            <tbody >
                    @foreach ($yamaha as $product)
                <tr >
                    <td><input type="checkbox"></td>
                    <td>{{$product->msp}}</td>
                    <td>{{$product->type}}</td>
                    <td>{{$product->product_name}}</td>
                    <td><img src="{{$product->product_img}}" class="img-responsive"></td>
                    <td> 
                        @if($product->sale==0)
                            <p class="single-item-price">{{ number_format($product->product_price,0,',','.') }} VNĐ</p>
                        @else
                            <p class="price"><del>{{number_format($product->price,0,',','.')}} VNĐ</del> -> {{number_format($product->product_price,0,',','.')}} VNĐ</p>
                        @endif
                    
                    </td>
                    <td >{{$product->product_description}}</td>
                    <td align=right>
                        <form>
                            <a href="{{route('edit',$product->id)}}"><i class=" fas fa-edit"></i></a>
                            <a style="width:42px;" href="{{route('destroy',$product->id)}}"><i  class="fas fa-trash" ></i></a>
                        </form>
                    </td>
                </tr>
                    @endforeach
            </tbody>
        </table>
    </div>
    <div align="right">{{$yamaha->links()}}</div>       
        

<!-- skincare -->
    <div style=" margin-top:20px;" class="table-responsive" >    
        <table  class="table table-hover"> 
             <thead style="background-color: #DDDDDD;">
            <tr>
                    <th style="width:5%">HONDA</th>
                    <th style="width:5%">MSP</th>
                    <th style="width:10%">Type</th>
                    <th style="width:20%">Productname</th>
                    <th style="width:15%">Productimg</th>
                    <th style="width:10%">Productprice</th>
                    <th style="width:30%">Productdescription</th>
                    <th ></th>
            </tr>

            </thead>
            <tbody >
                    @foreach ($honda as $product)
                <tr >
                    <td><input type="checkbox"></td>
                    <td>{{$product->msp}}</td>
                    <td>{{$product->type}}</td>
                    <td>{{$product->product_name}}</td>
                    <td><img src="{{$product->product_img}}" class="img-responsive"></td>
                    <td>{{$product->product_price}}</td>
                    <td >{{$product->product_description}}</td>
                    <td >
                        <form>
                            <a href="{{route('edit',$product->id)}}"><i class=" fas fa-edit"></i></a>
                            <a style="width:42px;" href="{{route('destroy',$product->id)}}"><i  class="fas fa-trash" ></i></a>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <div align="right">{{$honda->links()}}</div>
        <!-- hair -->

    <div style=" margin-top:20px;" class="table-responsive" >    
        <table  class="table table-hover"> 
             <thead style="background-color: #DDDDDD;">
            <tr>
                    <th style="width:5%">SUZUKI</th>
                    <th style="width:5%">MSP</th>
                    <th style="width:10%">Type</th>
                    <th style="width:20%">Productname</th>
                    <th style="width:15%">Productimg</th>
                    <th style="width:10%">Productprice</th>
                    <th style="width:30%">Productdescription</th>
                    <th ></th>
            </tr>

            </thead>
            <tbody >
                    @foreach ($suzuki as $product)
                <tr >
                    <td><input type="checkbox"></td>
                    <td>{{$product->msp}}</td>
                    <td>{{$product->type}}</td>
                    <td>{{$product->product_name}}</td>
                    <td><img src="{{$product->product_img}}" class="img-responsive"></td>
                    <td>{{$product->product_price}}</td>
                    <td >{{$product->product_description}}</td>
                    <td >
                    <form>
                            <a href="{{route('edit',$product->id)}}"><i class=" fas fa-edit"></i></a>
                            <a style="width:42px;" href="{{route('destroy',$product->id)}}"><i  class="fas fa-trash" ></i></a>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <div align="right">{{$suzuki->links()}}</div>

        <!-- bath_body -->
        <div style=" margin-top:20px;" class="table-responsive" >    
        <table  class="table table-hover"> 
             <thead style="background-color: #DDDDDD;">
            <tr>
                    <th style="width:5%">KAWASAKI</th>
                    <th style="width:5%">MSP</th>
                    <th style="width:10%">Type</th>
                    <th style="width:20%">Productname</th>
                    <th style="width:15%">Productimg</th>
                    <th style="width:10%">Productprice</th>
                    <th style="width:30%">Productdescription</th>
                    <th ></th>
            </tr>

            </thead>
            <tbody >
                    @foreach ($kawasaki as $product)
                <tr >
                    <td><input type="checkbox"></td>
                    <td>{{$product->msp}}</td>
                    <td>{{$product->type}}</td>
                    <td>{{$product->product_name}}</td>
                    <td><img src="{{$product->product_img}}" class="img-responsive"></td>
                    <td>{{$product->product_price}}</td>
                    <td >{{$product->product_description}}</td>
                    <td >
                        <form>
                            <a href="{{route('edit',$product->id)}}"><i class=" fas fa-edit"></i></a>
                            <a style="width:42px;" href="{{route('destroy',$product->id)}}"><i  class="fas fa-trash" ></i></a>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        </div>
        <div align="right">{{$kawasaki->links()}}</div>

        <!-- foods -->
        <div style=" margin-top:20px;" class="table-responsive" >    
        <table  class="table  table-hover"> 
             <thead style="background-color: #DDDDDD;">
            <tr>
                    <th style="width:5%">DUCATI</th>
                    <th style="width:5%">MSP</th>
                    <th style="width:10%">Type</th>
                    <th style="width:20%">Productname</th>
                    <th style="width:15%">Productimg</th>
                    <th style="width:10%">Productprice</th>
                    <th style="width:30%">Productdescription</th>
                    <th ></th>
            </tr>

            </thead>
            <tbody >
                    @foreach ($ducati as $product)
                <tr >
                    <td><input type="checkbox"></td>
                    <td>{{$product->msp}}</td>
                    <td>{{$product->type}}</td>
                    <td>{{$product->product_name}}</td>
                    <td><img src="{{$product->product_img}}" class="img-responsive"></td>
                    <td>{{$product->product_price}}</td>
                    <td >{{$product->product_description}}</td>
                    <td >
                        <form>
                            <a href="{{route('edit',$product->id)}}"><i class=" fas fa-edit"></i></a>
                            <a style="width:42px;" href="{{route('destroy',$product->id)}}"><i  class="fas fa-trash" ></i></a>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        </div>
        <div align="right">{{$ducati->links()}}</div>

        <!-- tools -->
    <div style=" margin-top:20px;" class="table-responsive" >    
        <table  class="table  table-hover"> 
             <thead style="background-color: #DDDDDD;">
            <tr>
                    <th style="width:5%">SYM</th>
                    <th style="width:5%">MSP</th>
                    <th style="width:10%">Type</th>
                    <th style="width:20%">Productname</th>
                    <th style="width:15%">Productimg</th>
                    <th style="width:10%">Productprice</th>
                    <th style="width:30%">Productdescription</th>
                    <th ></th>
            </tr>

            </thead>
            <tbody >
                    @foreach ($sym as $product)
                <tr >
                    <td><input type="checkbox"></td>
                    <td>{{$product->msp}}</td>
                    <td>{{$product->type}}</td>
                    <td>{{$product->product_name}}</td>
                    <td><img src="{{$product->product_img}}" class="img-responsive"></td>
                    <td>{{$product->product_price}}</td>
                    <td >{{$product->product_description}}</td>
                    <td >
                    <form>
                            <a href="{{route('edit',$product->id)}}"><i class=" fas fa-edit"></i></a>
                            <a style="width:42px;" href="{{route('destroy',$product->id)}}"><i  class="fas fa-trash" ></i></a>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        </div>
        <div align="right">{{$sym->links()}}
    </div>
  </div>      
</div>
@endsection