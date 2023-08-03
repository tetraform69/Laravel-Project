<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::controller(UserController::class)->middleware('valData:user')->group(
    function () {
        Route::middleware('auth:sanctum')->group(function () {
            Route::get('users', 'read');
            Route::patch('users/update/{user}', 'update');
            Route::delete('users/delete/{user}', 'delete');
        });
        Route::post('users/create', 'create')->name('create');
    }
);

Route::post('auth', [AuthController::class, 'login'])->name('auth');
Route::get('auth', [AuthController::class, 'logout'])->name('logout');