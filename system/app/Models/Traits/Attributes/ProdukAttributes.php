<?php
namespace App\Models\Traits\Attributes;

use Illuminate\Support\Str;

trait ProdukAttributes {
	// 	function getHargaAttribute(){
	// 	return "Rp. ".number_format($this->attributes['harga']);
	// }

	// function getTanggalProduksiAttribute(){
	// 	$tanggal = $this->created_at;
	// 	return strftime("%d %b %Y" ,strtotime($this->created_at));
	// }

	function hadleUpdloadFoto(){
		$this->handleDelete();
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

	function handleDelete(){
		$foto = $this->foto;
		$path = public_path($foto);
		if(file_exists($path)){
			unlink($path);
		}
		return true;
	}
}