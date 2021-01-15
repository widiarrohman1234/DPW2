<?php

namespace App\Http\Controllers;
use Auth;
use App\Models\User;

class AuthController extends Controller
{
	function showLoginAdmin(){
		return view('loginAdmin');
	}

	function loginProcess(User $user){
		if(Auth::attempt(['email' => request('email'), 'password' => request('password')])) {
			$user = Auth::user();
			if($user->level == 1)return redirect('beranda/admin')->with('success','Login Berhasil, Selamat datang');
			if($user->level == 2)return redirect('beranda/user')->with('success','Login Berhasil, Selamat datang');
			if($user->level == 3)return redirect('beranda/penjual')->with('success','Login Berhasil, Selamat datang');
			if($user->level == 4)return redirect('beranda/pembeli')->with('success','Login Berhasil, Selamat datang');

		} else {
			return back()->with('danger', 'Login gagal, Silahkan coba kembali');
		}

		// if (request('login_as') == 1) {
		// 	if(Auth::guard('pembeli')->attempt(['email' => request('email'), 'password' => request('password')])){
		// 		return redirect('beranda/pembeli')->with('success','Login Berhasil, Selamat datang');
		// 	}else{
		// 		return back()->with('danger', 'Login gagal, Silahkan coba kembali');
		// 	}
		// } else {
		// 	if(Auth::guard('penjual')->attempt(['email' => request('email'), 'password' => request('password')])){
		// 		return redirect('beranda/penjual')->with('success','Login Berhasil, Selamat datang');
		// 	}else{
		// 		return back()->with('danger', 'Login gagal, Silahkan coba kembali');
		// 	}
		// }
		

		//dd(request()->all());
	}

	function logout(){
		Auth::logout();
		Auth::guard('pembeli')->logout();
		Auth::guard('penjual')->logout();
		return redirect('loginAdmin');
	}

	function showRegistration(){
		return view('indexRegistration');
	}

	function storeRegistration(){
		$user = new User;
		$user->nama_user = request('nama_user');
		$user->username = request('username');
		$user->email = request('email');
		$user->password = bcrypt(request('password'));
		$user->save();

		return redirect('loginAdmin')->with('success','Data Berhasil Ditambahkan');
		//dd(request()->all());
	}

	function forgotPassword(){
		
	}
}