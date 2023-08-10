<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function read(Request $request)
    {
        if (isset($_GET["id"])) {
            $data = [
                'user' => User::find($_GET["id"]),
                'status' => 'ok'
            ];
        } else {
            $data = [
                'users' => User::all(),
                'status' => 'ok'
            ];
        }
        return response()->json($data);
    }

    public function profile(Request $request)
    {
        return Auth::user();
    }

    public function create(Request $request)
    {
        Auth::login(User::create($request->all()));
        $res = [
            'send' => $request->all(),
            'status' => 'ok'
        ];
        return response()->json($res);
        //return response($user, Response::HTTP_CREATED);
    }

    public function update(Request $request, User $user)
    {
        User::findOrFail($user->id)->update($request->all());
        $res = [
            'user' => User::find($user->id),
            'message' => "user update",
            'status' => 'ok'
        ];
        return response()->json($res);
    }

    public function delete(Request $request, User $user)
    {
        User::findOrFail($user->id)->delete();
        $res = [
            'user' => User::find($user->id),
            'message' => 'user delete',
            'status' => 'ok'
        ];
        return response()->json($res);
    }
}
