<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    $data = ["message" => ""];
    return view('login', $data);
})->name('index');

Route::get('/login/{message?}', function (string $message = "") {
    $data = ["message" => $message];
    return view('login', $data);
})->whereIn('message', [
    '',
    "user doesn't exist",
    "internal server error, can't login",
    "incorrect password"
])->name('login');

Route::group(['middleware' => ['auth']],function () {
    Route::get('/user', function () {
        return view('user');
    })->name('user');

    Route::get('/admin', function () {
        return view('admin');
    })->name('admin');

    Route::get('/settings', function () {
        return view('settings');
    })->name('settings');
});