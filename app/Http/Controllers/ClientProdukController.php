<?php

namespace App\Http\Controllers;
use App\Models\Produk;

class ClientProdukController extends Controller
{
	function home(){
		$data['list_produk'] = produk::all();
		return view('home', $data);
	}

	function show(Produk $produk){
		$data['produk'] = $produk;
		return view('produk_single', $data);
	}
}