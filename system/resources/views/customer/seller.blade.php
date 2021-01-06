@extends('customer.template.baseUser')

@section('content')


            <div class="sidebar-box ftco-animate">
              <h3 class="heading">penjual 1</h3>
            </div>

      <div class="row">
              @foreach($list_produk as $data)
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="product">
              <a href="{{url('produk_single', $data->id)}}" class="img-prod"><img class="img-fluid" src="../images/product-{{$data->id}}.jpg" alt="Colorlib Template">
                
                <div class="overlay"></div>
              </a>
              <div class="text py-3 pb-4 px-3 text-center">
                <h3>{{$data->nama_produk}}</h3>
                <div class="d-flex">
                  <div class="pricing">
                    <p class="price">
                      <span class="price-sale">Rp. {{number_format($data->harga)}}</span>
                      | Stok : {{$data->stok}} <br>
                      Berat : {{$data->berat}} | Seller : {{$data->seller->username}}
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
        </div>
@endsection