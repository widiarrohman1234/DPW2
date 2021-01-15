<?php

namespace App\Http\Controllers;
use App\Http\Requests\UserStoreRequest;
use App\Models\User;
use App\Models\UserDetail;


class UserController extends Controller
{
	function index(){
		//menampilkan semua user
			//$data['list_user'] = User::all();
		//menampilkan user yang memiliki produk lebih dari sama dengan  1
			//$data['list_user'] = User::has('produk', '>=', '1')->get();
		//hanya menampilkan user yang memiliki produk
			//$data['list_user'] = User::has('produk')->get();
		$data['list_user'] = User::withCount('produk')->get();
		return view('user.index', $data);
	}

	function create(){
		return view('user.create');
	}

	function store(UserStoreRequest $request){
		$user = new User;
		$user->level = request('level');

		$user->username = request('username');
		$user->email = request('email');
		$user->nama_user = request('nama_user');
		$user->jenis_kelamin = request('jenis_kelamin');
		$user->password = request('password');
		$user->save();

		$userDetail = new UserDetail;
		$userDetail->id_user = $user->id;
		$userDetail->no_handphone = request('no_handphone');
		$userDetail->save();

		return redirect('admin/user')->with('success','Data Berhasil Ditambahkan');
		// dd(request()->all());
	}

	function show(User $user){
		$data['user'] = $user;
		return view('user.show', $data);
	}

	function edit(User $user){
		$data['user'] = $user;
		return view('user.edit', $data);
	}

	function update(User $user){
		$user->username = request('username');
		$user->email = request('email');
		$user->nama_user = request('nama_user');
		$user->jenis_kelamin = request('jenis_kelamin');
		if(request('password')) $user->password = request('password');
		$user->save();

		return redirect('admin/user')->with('success','Data Berhasil Diubah');
	}

	function destroy(User $user){
		$user->delete();
		return redirect('admin/user')->with('danger','Data Berhasil Dihapus');
	}
}