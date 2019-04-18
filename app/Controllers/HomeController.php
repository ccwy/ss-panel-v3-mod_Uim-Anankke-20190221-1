<?php

namespace App\Controllers;

use App\Models\InviteCode;
use App\Models\User;
use App\Models\Code;
use App\Models\Payback;
use App\Models\Paylist;
use App\Services\Auth;
use App\Services\Config;
use App\Services\Payment;
use App\Utils\AliPay;
use App\Utils\Tools;
use App\Utils\Telegram;
use App\Utils\Tuling;
use App\Utils\TelegramSessionManager;
use App\Utils\QRcode;
use App\Utils\Pay;
use App\Utils\TelegramProcess;
use App\Utils\Spay_tool;
//shop
use App\Models\Shop;

/**
 *  HomeController
 */
class HomeController extends BaseController
{
    public function index()
    {
        return $this->view()->display('index.tpl');
    }

    public function code()
    {
        $codes = InviteCode::where('user_id', '=', '0')->take(10)->get();
        return $this->view()->assign('codes', $codes)->display('code.tpl');
    }

    public function down()
    {
    }

    public function toos()
    {
        return $this->view()->display('toos.tpl');
    }
    
    public function fstaffs()
    {
        return $this->view()->display('fstaffs.tpl');
    }
    //联系我们
    public function cous()
    {
        return $this->view()->display('cous.tpl');
    }
	//充值错误
	public function code_error()
    {
        return $this->view()->display('code_error.tpl');
    }
     //禁止中国ip
	public function error_ip()
    {
        return $this->view()->display('error_ip.tpl');
    }
	//商店
    public function shop($request, $response, $args)
    {
        $shops = Shop::where("status", 1)->orderBy('id', 'desc')->get();  //商品显示模式优化
        return $this->view()->assign('shops', $shops)->display('shop.tpl');
    }

    public function telegram($request, $response, $args)
    {
        $token = "";
        if (isset($request->getQueryParams()["token"])) {
            $token = $request->getQueryParams()["token"];
        }
        
        if ($token == Config::get('telegram_request_token')) {
            TelegramProcess::process();
        } else {
            echo("不正确请求！");
        }
    }
    
    public function page404($request, $response, $args)
    {
        return $this->view()->display('404.tpl');
    }
    
    public function page405($request, $response, $args)
    {
        return $this->view()->display('405.tpl');
    }
    
    public function page500($request, $response, $args)
    {
		return $this->view()->display('500.tpl');
    }

    public function getOrderList($request, $response, $args)
    {
        $key = $request->getParam('key');
        if (!$key || $key != Config::get('key')) {
            $res['ret'] = 0;
            $res['msg'] = "错误";
            return $response->getBody()->write(json_encode($res));
        }
        return $response->getBody()->write(json_encode(['data' => AliPay::getList()]));
    }

    public function setOrder($request, $response, $args)
    {
        $key = $request->getParam('key');
        $sn = $request->getParam('sn');
        $url = $request->getParam('url');
        if (!$key || $key != Config::get('key')) {
            $res['ret'] = 0;
            $res['msg'] = "错误";
            return $response->getBody()->write(json_encode($res));
        }
        return $response->getBody()->write(json_encode(['res' => AliPay::setOrder($sn, $url)]));
    }
}
