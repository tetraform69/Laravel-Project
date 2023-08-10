<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $token = $user->createToken('auth_token')->plainTextToken;
            $cookie = cookie('cookie_token', $token, 60 * 24);
            return response(
                [
                    "token" => $token,
                    "user" => $user
                ],
                Response::HTTP_OK
            )->withCookie($cookie);
        } else {
            return response(
                [
                    "message" => "Credenticiales invalidas"
                ],
                Response::HTTP_UNAUTHORIZED
            );
        }
    }

    public function logout(Request $request)
    {
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        $cookie = Cookie::forget('cookie_token');
        return "Cierre de sesion ok";
    }

    public function hasSession(Request $request)
    {
        return ["message" => "Hay una sesion iniciada"];
    }
}
