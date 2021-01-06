@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Tambah Data User
				</div>
				<div class="card-body">
					<form action="{{url('admin/user')}}" method="post">
						@csrf
					<div class="form-group">
						<label for="" class="control-label">Nama </label>
						<input type="text" name="nama_user" class="form-control">
					</div>

					<div class="form-group">
						<label for="" class="control-label">Jenis Kelamin </label>
						<select class="form-control" name="jenis_kelamin">
							<option value="">-Jenis Kelamin-</option>
							<option value="1">Laki-laki</option>
							<option value="2">Perempuan</option>
						</select>
					</div>

					<div class="form-group">
						<label for="" class="control-label">Username </label>
						<input type="text" name="username" class="form-control">
					</div>

					<div class="form-group">
						<label for="" class="control-label">Email </label>
						<input type="text" name="email" class="form-control">
					</div>

					<div class="form-group">
						<label for="" class="control-label">Password </label>
						<input type="password" name="password" class="form-control">
					</div>

					<div class="form-group">
						<label for="" class="control-label">No Handphone </label>
						<input type="text" name="no_handphone" class="form-control">
					</div>

					<button type="submit" class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection