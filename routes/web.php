<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\ClientProdukController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//tampilan admin
    //beranda
Route::get('beranda', [HomeController::class, 'showBeranda']); //laravel8
        // Route::get('/beranda', 'showBeranda@HomeController']); laravel 7
Route::get('produk', [HomeController::class, 'showProduk']);
Route::get('kategori', [HomeController::class, 'showKategori']);
Route::get('promo', [HomeController::class, 'showPromo']);

//produk user controller
Route::get('/', [ClientProdukController::class, 'home']);
Route::get('produk_single/{produk}', [ClientProdukController::class, 'show']);

Route::prefix('admin')->middleware('auth')->group(function(){
		//produk admin controller
			Route::resource('produk', ProdukController::class);
			// Route::get('produk', [ProdukController::class, 'index']);
			// Route::get('produk/create', [ProdukController::class, 'create']);
			// Route::post('produk', [ProdukController::class, 'store']);
			// Route::get('produk/{produk}', [ProdukController::class, 'show']);
			// Route::get('produk/{produk}/edit', [ProdukController::class, 'edit']);
			// Route::put('produk/{produk}', [ProdukController::class, 'update']);
			// Route::delete('produk/{produk}', [ProdukController::class, 'destroy']);
		//CRUD admin
			Route::resource('user', UserController::class)->middleware('auth');
			// Route::get('user', [UserController::class, 'index']);
			// Route::get('user/create', [UserController::class, 'create']);
			// Route::post('user', [UserController::class, 'store']);
			// Route::get('user/{user}', [UserController::class, 'show']);
			// Route::get('user/{user}/edit', [UserController::class, 'edit']);
			// Route::put('user/{user}', [UserController::class, 'update']);
			// Route::delete('user/{user}', [UserController::class, 'destroy']);
});


    //login Admin
Route::get('loginAdmin', [AuthController::class, 'showLoginAdmin'])->name('login');
Route::post('loginAdmin', [AuthController::class, 'loginProcess']);
Route::get('logout', [AuthController::class, 'logout']);
Route::get('registration', [AuthController::class, 'registration']);

Route::get('/login', function () {
    return view('login');
});

Route::get('/about', function () {
    return view('about');
});

Route::get('/blog', function () {
    return view('blog');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::get('/produk_single', function () {
    return view('produk_single');
});
