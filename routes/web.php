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


Route::get('/login','authController@login')->name('login');
Route::post('/postlogin','authController@postlogin');
Route::get('/logout','authController@logout');
Route::get('/visi-misi/{id}/get','dashboard@visi_misi');

Route::group(['middleware' => ['auth','checkRole:admin']],function(){
	Route::get('/home-admin','admin@home');
	Route::get('/user-all','admin@user_all');
	Route::get('/add-user-all','admin@add_user_all');
	Route::post('/upload','admin@upload');
	Route::get('/candidate_user','admin@candidate_user');
	Route::get('/add-candidate','admin@add_candidate');
	Route::post('/upload_candidate','admin@upload_candidate');
	Route::get('/candidate/{id}/edit','admin@candidate_edit');
	Route::get('/candidate/{id}/hapus','admin@delete');
	Route::post('/upload_candidate_edit/{id}/upload_edit','admin@upload_edit');
	Route::get('/result_voice','admin@result');
	Route::get('/pesan','admin@pesan');
});
Route::group(['middleware' => ['auth','checkRole:admin,user']],function(){
	Route::get('/home','dashboard@home');
	Route::post('/pilih','dashboard@pilih');
	Route::get('/comand','dashboard@comand');
	Route::get('/comand-post','dashboard@comandpost');
	Route::post('/post/{id}/comand-post','dashboard@comandpostadd');
	Route::get('/feedback','dashboard@feedbackhome');
	Route::post('/post/{id}/comand-respon','dashboard@responpostadd');
	Route::get('/close','dashboard@close');
});