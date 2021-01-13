<?php

namespace App\Models;
use App\Models\Kecamatan;

class Desa extends Model{
	protected $table = 'desa';

	function kecamatan(){
		return $this->belongsTo(Kecamatan::class, 'id_kecamatan');
	}
}