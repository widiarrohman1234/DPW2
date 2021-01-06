<?php

namespace App\Models;
use App\Models\Produk;

class Customer extends Model{
	protected $table = 'produk';

	function produk(){
    	return $this->hasMany(produk::class, 'id_user');
    }

}