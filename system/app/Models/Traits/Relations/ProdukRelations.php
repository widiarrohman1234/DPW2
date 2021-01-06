<?php
namespace App\Models\Traits\Relations;

use App\Models\User;

trait ProdukRelations {
	function seller(){
		return $this->belongsTo(user::class, 'id_user');
	}
}