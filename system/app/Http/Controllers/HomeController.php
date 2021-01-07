<?php

namespace App\Http\Controllers;
use App\Models\Produk;

class HomeController extends Controller{
	
	function showLoginAdmin ()	{
		return view('loginAdmin');
	}

	function showDaftar ()	{
		return view('daftar');
	}

	function showBeranda ()	{
		return view('beranda');
	}

	function showProduk ()	{
		return view('produk');
	}

	function showKategori ()	{
		return view('kategori');
	}

	function showPromo ()	{
		return view('promo');
	}

	function testColletion(){
		$list_bike = ['Honda', 'Yamaha', 'Suzuki', 'KTM', 'BMW', 'Astrea', 'Vespa', 'Kawasaki'];
		$list_bikes = collect($list_bike);
		$count_bike = $list_bikes->count();
		$data['list']  = produk::all();

		$list = Produk::all();
		$map = $list->map(function($item){
			$result['nama'] = $item->nama_produk;
			$result['harga'] = $item->harga;
			return $result;
		});
		dd($map);
		dd($list_bike, $count_bike);
		//return view('test-collection',$data);
	}


}