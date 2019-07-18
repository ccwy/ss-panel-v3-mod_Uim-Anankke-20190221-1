<?php

namespace App\Middleware;

use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\ResponseInterface;
use App\Services\Auth as AuthService;
use App\Services\Config;

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
		
        if ($user->enable == 0) {
			
			if ($_SERVER["REQUEST_URI"] == "/user/announcement" || $_SERVER["REQUEST_URI"] == "/user/bought" || $_SERVER["REQUEST_URI"] == "/user/code" || $_SERVER["REQUEST_URI"] == "/user/codefail" || $_SERVER["REQUEST_URI"] == "/user/detect" || $_SERVER["REQUEST_URI"] == "/user/detect/log" || $_SERVER["REQUEST_URI"] == "/user/edit" || $_SERVER["REQUEST_URI"] == "/user/fanli" || $_SERVER["REQUEST_URI"] == "/user/guide" || $_SERVER["REQUEST_URI"] == "/user" || $_SERVER["REQUEST_URI"] == "/user/invite" || $_SERVER["REQUEST_URI"] == "/user/node" || $_SERVER["REQUEST_URI"] == "/user/profile" || $_SERVER["REQUEST_URI"] == "/user/shop" || $_SERVER["REQUEST_URI"] == "/user/trafficlog" || $_SERVER["REQUEST_URI"] == "/user/relay" || $_SERVER["REQUEST_URI"] == "/user/relay/create" ) {
			
            $newResponse = $response->withStatus(302)->withHeader('Location', '/user/disable');
            return $newResponse;
        }
		}
		
        $response = $next($request, $response);
        return $response;
    }
}
