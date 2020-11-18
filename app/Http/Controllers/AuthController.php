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
			return redirect('beranda')->with('success','Login Berhasil, Selamat datang');
		} else {
			return back()->with('danger', 'Login gagal, Silahkan coba kembali');
		}
		//dd(request()->all());
	}

	function logout(){
		Auth::logout();
		return redirect('loginAdmin');
	}

	function registration(){
		return view('registration');
	}

	function forgotPassword(){
		
	}
}
