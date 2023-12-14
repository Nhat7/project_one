<?php

use Illuminate\Support\Facades\Route;
use App\DummyDetails;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
//home
Route::get('/', ['as'=> 'trangchu', 'uses' => 'pageController@index']);

//Lien he
Route::get('/contact', 'contactController@index')->name('contact');
Route::post('/contact', 'contactController@submitForm')->name('contact.submitForm');

//login
Route::get('login', 'LoginController@index') ->name('login');
Route::get('login/done', 'LoginController@login') ->name('logindone');

//sign
Route::get('sign', 'SignController@index')->name('signup');
Route::get('sign/done', 'SignController@create')->name('insert');

//check out
Route::get('logout', 'LoginController@logout')->name('logout');

//detail
Route::get('product/detail/{id}', 'pageController@detail')->name('detail');

//detail product
Route::get('yamaha', 'pageController@yamaha')->name('yamaha');
Route::get('honda', 'pageController@honda')->name('honda');
Route::get('suzuki', 'pageController@suzuki')->name('suzuki');
Route::get('kawasaki', 'pageController@kawasaki')->name('kawasaki');
Route::get('ducati', 'pageController@ducati')->name('ducati');
Route::get('sym', 'pageController@sym')->name('sym');
Route::get('bmw', 'pageController@bmw')->name('bmw');

Route::get('XG', 'dropdownController@DG')->name('XG');
Route::get('XS', 'dropdownController@UT')->name('XS');
Route::get('PKL', 'dropdownController@NT')->name('PKL');
Route::get('XC', 'dropdownController@ST')->name('XC');

//profile

Route::get('profile', 'pageController@profile')->name('profile');


//cart
Route::get('them-san-pham/{id}', 'cartController@addProductToCart')->name('get.add.product');
Route::get('gio-hang', 'cartController@listCartProduct')->name('gio-hang');
Route::get('/checkout', 'cartController@getCheckOut')->name('checkout');
Route::post('/checkout', 'cartController@postCheckOut');
Route::get('gio-hang/remove/{id}', 'cartController@remove')->name('remove');
 
//search manage
Route::get('manage/search', 'manageProductController@search')->name('manage.search');

// quan ly
Route::get('manage', 'manageProductController@index')->name('manage');
Route::get('manage/add', 'manageProductController@add')->name('add');
Route::get('manage/insert', 'manageProductController@update_insert')->name('manage.insert');
Route::get('manage/edit/{id}', 'manageProductController@edit')->name('edit');
Route::get('manage/edit/update/{id}', 'manageProductController@update')->name('update');
Route::get('manage/destroy/{id}', 'manageProductController@destroy')->name('bill_destroy');
Route::get('manage/bill_destroy/{id}', 'manageProductController@bill_destroy')->name('destroy');

//order
Route::get('order','manageProductController@bill')->name('order');
Route::get('bill_detail/{id}', 'manageProductController@bill_detail')->name('bill_detail');
Route::get('oder/search', 'manageProductController@bill_search')->name('bill_search');

//search
Route::get('search', 'searchController@search')->name('search');
