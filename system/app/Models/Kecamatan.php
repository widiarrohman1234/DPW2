<?php

namespace App\Models;
use App\Models\Desa;
use App\Models\Kabupaten;

class Kecamatan extends Model{
	protected $table = 'kecamatan';

	function desa(){
		return $this->hasMany(Desa::class, 'id_kecamatan');
	}

	function kabupaten(){
		return $this->belongsTo(Kabupaten::class, 'id_kabupaten');
	}
}