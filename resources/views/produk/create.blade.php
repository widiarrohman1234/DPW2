@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Tambah Data Produk
				</div>
				<div class="card-body">
					<form action="{{url('produk')}}" method="post">
						@csrf
					<div class="form-group">
						<label for="" class="control-label">Nama </label>
						<input type="text" name="nama_produk" class="form-control">
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="" class="control-label">Harga</label>
								<input type="text" name="harga" class="form-control">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="" class="control-label">Berat</label>
								<input type="text" name="berat" class="form-control">
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<label for="" class="control-label">Stok</label>
								<input type="text" name="stok" class="form-control">
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="" class="control-label">Deskripsi</label>
						<textarea name="deskripsi" class="form-control"></textarea>
					</div>

					<button class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection