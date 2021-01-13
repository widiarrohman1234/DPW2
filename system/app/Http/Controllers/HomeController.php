<?php

namespace App\Http\Controllers;
use App\Models\Produk;
use App\Models\Provinsi;


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

		//map
		$list = Produk::all();
		$map = $list->map(function($item){
			$result['nama'] = $item->nama_produk;
			$result['harga'] = $item->harga;
			return $result;
		});

		//each
		//fungsi each sama dengan perulangan foreach
		// foreach ($list as $item) {
		// 	echo "$item->nama_produk<br>";
		// }

		// $list->each(function($item){
		// 	echo "$item->nama_produk<br>";
		// });


		//filter
		$filtered = $list->filter(function($item){
			return $item->harga > 50000;
		});

		//sum,max,min,avg
		$sum = $list->avg('harga');
		// dd($sum);
		// dd($list_bike, $count_bike);

		//pagination
		$data['pagination'] = Produk::simplePaginate(9); /*hanya next dan previos*/
		$data['pagination'] = Produk::paginate(9); /*ada nomor halaman*/

		return view('test-collection',$data);
	}

	function testAjax(){
		$data['list_provinsi'] = Provinsi::all();
		return view('test-ajax', $data);
	}

}