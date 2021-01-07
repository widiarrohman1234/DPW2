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
							@include('produk.show.detail')
							<p>
								{!! nl2br($produk->deskripsi) !!}
							</p>
							<p>
								<img src="{{ url("system/public/$produk->foto") }}" alt="{{$produk->foto}}">
							</p>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection