@extends('customer.template.baseUser')

@section('content')

              <form action="{{('filter')}}" class="search-form" method="get">
                <div class="form-group">
                  <span class="icon ion-ios-search"></span>
                  <input type="input" class="form-control" placeholder="Cari nama produk..." name="nama" value="{{$nama ?? ''}}">
                </div>
              </form>

            <div class="sidebar-box ftco-animate">
              <h3 class="heading">Seller</h3>
              <ul class="categories">
                <li><a href="#">super_user<span>(2)</span></a></li>
                <li><a href="{{url('seller')}}">penjual 1 <span>(3)</span></a></li>
                <li><a href="#">penjual 2 <span>(4)</span></a></li>
              </ul>
            </div>

			<div class="row">
    					@foreach($list_produk as $data)
    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="{{url('produk_single', $data->id)}}" class="img-prod">
                <img class="img-fluid" src="{{ url("system/public/$data->foto")}}" alt="{{$data->foto}}">
    						
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3>{{$data->nama_produk}}</h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price">
		    							<span class="price-sale">Rp. {{$data->harga}}</span>
		    							| Stok : {{$data->stok}} <br>
		    							Berat : {{$data->berat}} | Seller : 
		    						</p>
		    					</div>
	    					</div>
	    					<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
	    							<a href="#" class="heart d-flex justify-content-center align-items-center ">
	    								<span><i class="ion-ios-heart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
    			</div>
    					@endforeach
          <div class="row">
            <div class="col-md-12">
              <div class="float-right">
                {{$list_produk->links()}}
              </div>
            </div>
          </div>
    		</div>
@endsection