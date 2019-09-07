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
    return redirect('login');
});

Route::get('/home', 'HomeController@index');
Auth::routes();


Route::resource('users', 'usersController');

Route::resource('users', 'usersController');

Route::resource('inventaris', 'inventarisController');

Route::resource('pemeliharaans', 'pemeliharaanController');

Route::resource('penghapusans', 'penghapusanController');

Route::resource('barangs', 'barangController');

Route::resource('alamats', 'alamatController');

Route::resource('jenisbarangs', 'jenisbarangController');