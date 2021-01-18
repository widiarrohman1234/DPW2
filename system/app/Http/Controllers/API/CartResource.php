<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Cart;

use Illuminate\Http\Request;

class CartResource extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $list_produk = Produk::all();
        // return $list_produk->toJson();
            //menampilkan produk
        return Cart::all();
    }

    public function store()
    {
        if(request('nama_produk') && request('harga') && request('berat') && request('deskripsi') && request('stok')){

            $produk = new Cart;
            $produk->id_user = request('id_user');
            $produk->nama_produk = request('nama_produk');
            $produk->harga = request('harga');
            $produk->foto = request('foto');
            $produk->berat = request('berat');
            $produk->deskripsi = request('deskripsi');
            $produk->stok = request('stok');
            // dd(request()->all());
            $produk->save();

            return collect([
                'respond' => 200,
                'data' => $produk
            ]);

        } else {
            return collect([
                'respond' => 500,
                'message' => "Ada Field yang kosong"
            ]);
        }
    }

    public function show($id)
    {
        $produk = Cart::find($id);
        if($produk) {
            return collect ([
                'status' =>200,
                'data' => $produk
            ]);
        }
        return collect([
            'repsond' => 500,
            'message' => "Produk tidak ditemukan"
        ]);
    }

    public function update($id)
    {
        $produk = Cart::find($id);
        if($produk){
            $produk->nama_produk = request('nama_produk') ?? $produk->nama_produk;
            $produk->harga = request('harga') ?? $produk->nama_produk;
            $produk->berat = request('berat') ?? $produk->nama_produk;
            $produk->deskripsi = request('deskripsi') ?? $produk->nama_produk;
            $produk->stok = request('stok') ?? $produk->nama_produk;
            $produk->save();

            return collect ([
                    'status' =>200,
                    'data' => $produk
                ]);
        }
        return collect([
            'repsond' => 500,
            'message' => "Produk tidak ditemukan"
        ]);
    }

    public function destroy($id)
    {
        $produk = Cart::find($id);
        if($produk) {
            $produk->delete($id);
            return collect ([
                'status' =>200,
                'data' => 'produk berhasil dihapus'
            ]);
        }
        return collect([
            'repsond' => 500,
            'message' => "Produk tidak ditemukan"
        ]);
    }
}
