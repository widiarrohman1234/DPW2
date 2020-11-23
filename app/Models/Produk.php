<?php

namespace App\Models;


class Produk extends Model{
	protected $table = 'produk';

	function seller(){
		return $this->belongsTo(user::class, 'id_user');
	}

}