<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class validateData
{
    private $dataType = [
        'user' => ['name', 'email', 'password'],
        'login' => ['email', 'password']
    ];
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next, string $type): Response
    {
        if ($request->isMethod('post') || $request->isMethod('patch')) {

            foreach ($this->dataType[$type] as $tipo => $val) {
                if (!isset($request->$val)) {
                    $res = [
                        'message' => 'No hay parametros validos',
                        'parametros' => $this->dataType[$type],
                        'status' => 'error'
                    ];
                    return response()->json($res);
                }
            }
        }
        return $next($request);
    }
}
