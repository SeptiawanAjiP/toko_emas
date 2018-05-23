<?php

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

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => ['auth']], function(){
	Route::resource('pembelian', 'PembelianController');
    Route::resource('penjualan', 'PenjualanController');
    Route::resource('inventori', 'InventoriController');
    Route::resource('kategori', 'KategoriController');
	Route::resource('user', 'UserController');
});

Auth::routes();

//product
Route::get('/home', 'HomeController@index')->name('home');
Route::get('produk','InventoriController@index');
Route::get('/tambah-produk','InventoriController@add');
Route::post('/save-product','InventoriController@saveProduct');

//category
Route::get('/category','InventoriController@getCategory');
Route::get('/add-category','InventoriController@addCategory');
Route::post('/save-category','InventoriController@saveCategory');
Route::post('/edit-category','InventoriController@editCategory');
Route::post('/update-category','InventoriController@updateCategory');

//content
Route::get('/content','InventoriController@getContent');
Route::get('/add-content','InventoriController@addContent');
Route::post('/save-content','InventoriController@saveContent');
Route::post('/edit-content','InventoriController@editContent');
Route::post('/update-content','InventoriController@updateContent');

