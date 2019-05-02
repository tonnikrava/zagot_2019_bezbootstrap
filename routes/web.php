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


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/',['uses'=>'MainController@getIndex','as'=>'home']);
Route::get('contacts',function () {return view('contacts');});// для контактов просто возращаем вид без конторллера
Route::get('news', ['uses' => 'MainController@newss', 'as' => 'newss']);



Route::get('{tovar}', ['uses' => 'MainController@category', 'as' => 'page']); // для всех страниц и категорий
Route::get('news/{page}', ['uses' => 'MainController@news', 'as' => 'news']);
Route::get('{catid}/{tovarid}', ['uses' => 'MainController@tovar', 'as' => 'tovar']);



