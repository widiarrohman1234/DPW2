@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Detail Data Produk
				</div>
				<div class="card-body">
					<table class="table">
						<tbody>
							<h3>{{$produk->nama_produk}}</h3>
							<hr>
							<p>
							{{$produk->harga}} |
							Stok : {{$produk->stok}} |
							Berat : {{$produk->berat}} Kg |
							Seller : {{$produk->seller->username}} |
							Tanggal Produk : {{$produk->created_at->diffForHumans()}}

							</p>
							<p>
								{!! nl2br($produk->deskripsi) !!}
							</p>
							<p>
								<img src="{{ url($produk->foto) }}" alt="{{$produk->foto}}">
							</p>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection