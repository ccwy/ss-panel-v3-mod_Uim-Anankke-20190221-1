<?php

namespace App\Middleware;

use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\ResponseInterface;
use App\Services\Auth as AuthService;
use App\Services\Config;
use App\Models\Ticket;
use App\Models\User;
use App\Services\Jwt;

class Auth
{
    public function __invoke(ServerRequestInterface $request, ResponseInterface $response, $next)
    {
        $user = AuthService::getUser();
        if (!$user->isLogin) {
            $newResponse = $response->withStatus(302)->withHeader('Location', '/auth/login');
            return $newResponse;
        }
		
		$user_id = User::where("id", "=", $user_id)->first();
		$tickeid = Ticket::where("id", "=", $tickeid)->Where("userid", "=", $user_id)->first();
        if ($user->enable == 0 && $_SERVER["REQUEST_URI"] != "/user/disable" && $_SERVER["REQUEST_URI"] != "/user/ticket" && $_SERVER["REQUEST_URI"] != "/user/ticket/create" && $_SERVER["REQUEST_URI"] != "/user/ticket/".$tickeid."/view") {
            $newResponse = $response->withStatus(302)->withHeader('Location', '/user/disable');
            return $newResponse;
        }
		
        $response = $next($request, $response);
        return $response;
    }
}
