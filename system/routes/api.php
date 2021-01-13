<?php

use App\Http\Controllers\API\ProdukResource;
use App\Http\Controllers\API\CartResource;

use App\Http\Controllers\API\WilayahResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::resource('produk', ProdukResource::class);
Route::resource('cart', CartResource::class);

Route::get('provinsi/{id}', [WilayahResource::class,'getKabupaten']);
Route::get('kabupaten/{id}', [WilayahResource::class,'getKecamatan']);
Route::get('kecamatan/{id}', [WilayahResource::class,'getDesa']);
 