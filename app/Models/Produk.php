<?php

namespace App\Models;
use App\Models\User;
use Illuminate\Support\Str;

class Produk extends Model{
	protected $table = 'produk';

	protected $casts = [
		'created_at' => 'datetime',
		'updated_at' => 'datetime',
		'berat' => 'decimal:2'
	];

	function seller(){
		return $this->belongsTo(user::class, 'id_user');
	}

	function getHargaAttribute(){
		return "Rp. ".number_format($this->attributes['harga']);
	}

	// function getTanggalProduksiAttribute(){
	// 	$tanggal = $this->created_at;
	// 	return strftime("%d %b %Y" ,strtotime($this->created_at));
	// }

	function hadleUpdloadFoto(){
		if(request()->hasFile('foto')){
			$foto = request()->file('foto');
			$destination = "images/produk";
			$randomStr = Str::random(5);
			$filename = $this->id."-".time()."-".$randomStr.".".$foto->extension();
			$url = $foto->storeAs($destination, $filename);
			$this->foto = "app/".$url;
			$this->save();
		}
	}
}