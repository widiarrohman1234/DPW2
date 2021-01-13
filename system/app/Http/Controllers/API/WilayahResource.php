<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Produk;
use App\Models\Kabupaten;
use App\Models\Kecamatan;
use App\Models\Desa;


class WilayahResource extends Controller
{
    function getKabupaten($id_provinsi){
        return Kabupaten::where("id_provinsi", $id_provinsi)->get()->toJson();
    }
    function getKecamatan($id_kabupaten){
        return Kecamatan::where("id_kabupaten", $id_kabupaten)->get()->toJson();
    }
    function getDesa($id_kecamatan){
        return Desa::where("id_kecamatan", $id_kecamatan)->get()->toJson();
    }

}
