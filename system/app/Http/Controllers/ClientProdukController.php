<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Produk;
use App\Models\Provinsi;
use App\Models\Cart;
use App\Models\Checkout;



class ClientProdukController extends Controller
{
	function home(){
		$data['list_produk'] = Produk::paginate(4);
		return view('customer.home', $data);
	}

	function show(Produk $produk){
		$data['produk'] = $produk;
		return view('customer.produk_single', $data);
	}

	function seller(Produk $produk){
		$data['list_produk'] = produk::all();
		return view('customer.seller', $data);
	}

	function about(){
		return view('customer.about');
	}
	function blog(){
		return view('customer.blog');
	}
	function contact(){
		return view('customer.contact');
	}
	function filter(){
		$nama = request('nama');
		$data['list_produk'] = Produk::where('nama_produk', 'like', "%$nama%")->get();
		$data['nama'] = $nama;

		// dd(request()->all());
		return view('customer.produk', $data);
	}
    function cart(){
		$data['list_cart'] = Cart::all();
		$data['list_provinsi'] = Provinsi::all();
		return view('customer.cart', $data);
	}

	function store(){
		$produk = new Produk;
		$produk->id_user = request()->user()->id;
		$produk->nama_produk = request('nama_produk');
		$produk->foto = request('foto');
		$produk->harga = request('harga');
		$produk->berat = request('berat');
		$produk->deskripsi = request('deskripsi');
		$produk->stok = request('stok');
		$produk->save();

		$produk->hadleUpdloadFoto();

		return redirect('admin/produk')->with('success','Data Berhasil Ditambahkan');
		// dd(request()->all());
	}

	function Produk(){
		$data['list_produk'] = Produk::all();
		return view('customer.produk', $data);
	}

	function checkout(){
		return view('customer.checkout');
	}

	function postcheckout(){
		$produk = new Checkout;
		$produk->firtname = request('firtname');
		$produk->lastname = request('lastname');
		$produk->address = request('address');
		$produk->phone = request('phone');
		$produk->email = request('email');
		// dd(request()->all());
		$produk->save();

		return redirect('cart');
	}
}