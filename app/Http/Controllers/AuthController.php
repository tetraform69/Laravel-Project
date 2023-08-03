<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $email = $request->email;
        $password = $request->password;

        $user = User::where('email', $email)->first();

        $credentials = [
            "email" => $email,
            "password" => $password,
        ];

        if(Auth::attempt($credentials)){
            $request->session()->regenerate();
            $token = $user->createToken('auth_token')->plainTextToken;

            return  to_route("$user->rol");
        }
        if (empty($user)) {
            $data = [
                "message" => "user doesn't exist"
            ];
        } elseif (Hash::check($password, $user->password)) {
            $token = $user->createToken('auth_token')->plainTextToken;
            if ($token) {
                return to_route("$user->rol");
            } else {
                $data = [
                    "message" => "internal server error, can't login"
                ];
            }
        } else {
            $data = [
                "message" => 'incorrect password'
            ];
        }

        return to_route('login', $data);
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return to_route('index');
    }
}
