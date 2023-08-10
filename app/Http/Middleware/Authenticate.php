<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Closure;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     */

    public function handle($request, Closure $next, ...$guards)
    {
        if ($token = $request->cookie('cookie_token')){
            $request->headers->set('Autorization', 'Bearer '. $token);
        }
        $this->authenticate($request, $guards);
        return $next($request);
    }
}
