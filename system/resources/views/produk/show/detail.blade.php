<h3>{{$produk->nama_produk}}</h3>
<hr>
<p>
	{{$produk->harga}} |
	Stok : {{$produk->stok}} |
	Berat : {{$produk->berat}} Kg |
	Seller : {{$produk->seller->username}} |
	Tanggal Produk : {{$produk->created_at->diffForHumans()}}
</p>