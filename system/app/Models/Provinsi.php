<?php

namespace App\Models;
use App\Models\Kabupaten;

class Provinsi extends Model{
	protected $table = 'provinsi';

	function kabupaten(){
		return $this->hasMany(Kabupaten::class, 'id_provinsi');
	}
}