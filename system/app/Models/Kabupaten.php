<?php

namespace App\Models;
use App\Models\Kecamatan;
use App\Models\Provinsi;

class Kabupaten extends Model{
	protected $table = 'kabupaten';

	function kecamatan(){
		return $this->hasMany(Kecamatan::class, 'id_kabupaten');
	}

	function provinsi(){
		return $this->belongsTo(Provinsi::class, 'id_provinsi');
	}
}