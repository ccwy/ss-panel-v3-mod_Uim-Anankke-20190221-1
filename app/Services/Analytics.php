<?php

namespace App\Services;

use App\Models\User;
use App\Models\Node;
use App\Utils\Tools;
use App\Models\Code;
use App\Models\Bought;

class Analytics
{
    public function getTotalUser()
    {
        return User::count();
    }

    public function getCheckinUser()
    {
        return User::where('last_check_in_time', '>', 0)->count();
    }
    
    public function getTodayCheckinUser()
    {
        return User::where('last_check_in_time', '>', strtotime('today'))->count();
    }

    public function getTrafficUsage()
    {
        $total = User::sum('u') + User::sum('d');
        return Tools::flowAutoShow($total);
    }
    
    public function getTodayTrafficUsage()
    {
        $total = User::sum('u') + User::sum('d') - User::sum('last_day_t');
        return Tools::flowAutoShow($total);
    }
    
    
    public function getRawTodayTrafficUsage()
    {
        $total = User::sum('u') + User::sum('d') - User::sum('last_day_t');
        return $total;
    }
    
    public function getLastTrafficUsage()
    {
        $total = User::sum('last_day_t');
        return Tools::flowAutoShow($total);
    }
    
    
    public function getRawLastTrafficUsage()
    {
        $total = User::sum('last_day_t');
        return $total;
    }
    
    public function getUnusedTrafficUsage()
    {
        $total = User::sum('transfer_enable') - User::sum('u') - User::sum('d');
        return Tools::flowAutoShow($total);
    }
    
    public function getRawUnusedTrafficUsage()
    {
        $total = User::sum('transfer_enable') - User::sum('u') - User::sum('d');
        return $total;
    }
    
    
    public function getTotalTraffic()
    {
        $total = User::sum('transfer_enable');
        return Tools::flowAutoShow($total);
    }
    
    public function getRawTotalTraffic()
    {
        $total = User::sum('transfer_enable');
        return $total;
    }

    public function getOnlineUser($time)
    {
        $time = time() - $time;
        return User::where('t', '>', $time)->count();
    }
    
    public function getUnusedUser()
    {
        return User::where('t', '=', 0)->count();
    }

    public function getTotalNode()
    {
        return Node::count();
    }
    
    public function getTotalNodes()
    {
        return Node::where('node_heartbeat', '>', 0)->where(
                    function ($query) {
                        $query->Where('sort', '=', 0)
                            ->orWhere('sort', '=', 10)
                            ->orWhere('sort', '=', 11);
                    }
                )->count();
    }
    
    public function getAliveNodes()
    {
        return Node::where(
            function ($query) {
                $query->Where('sort', '=', 0)
                    ->orWhere('sort', '=', 10)
                ->orWhere('sort', '=', 11);
            }
        )->where('node_heartbeat', '>', time()-90)->count();
    }
	
	//余额
    public function moneyone()
    {
        $total = User::sum('money');
        return $total;
    }
   //返利
    public function fanlione()
    {
        $total = User::sum('fanli');
        return $total;
    }
	//付费用户，排除443端口和管理员、测试账号
    public function classuseraa()
    {
        return User::where('class', '>', 10)->where('id','!=',2293)->count();
    }
	//统计全站已用总流量
	public function ssnodeTrafficUsage()
    {
        $total = Node::sum('node_bandwidth');
        return Tools::flowAutoShow($total);
    }
	//年付用户
	public function classuseryear()
    {
        return User::where('class', '>=', 23)->where('id','!=', 2293)count();
    }
	//月付用户
	public function classusermoth()
    {
        return User::where('class', '>', 10)->where('class', '<', 15)->where('id','!=', 2293)->count();
     
    }
	//已过期用户
	public function classuseroff()
    {
        return User::where('class', '=', 0)->count();
    }
	//大大前天流水
	public function fourdayIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m-d%', strtotime('-4 days')))->sum('number');
        return is_null($number)?0:$number;
    }
   //大前天流水
	public function threedayIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m-d%', strtotime('-3 days')))->sum('number');
        return is_null($number)?0:$number;
    }
	//前天流水
	public function twodayIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m-d%', strtotime('-2 days')))->sum('number');
        return is_null($number)?0:$number;
    }
	//昨日流水
	public function yesterdayIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m-d%', strtotime('-1 days')))->sum('number');
        return is_null($number)?0:$number;
    }
    //今日流水
    public function todayIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m-d%'))->sum('number');
        return is_null($number)?0:$number;
    }
    //本月流水
    public function thisMonthIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m%'))->sum('number');
        return is_null($number)?0:$number;
    }
    //上月流水
    public function lastMonthIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m%', strtotime('-1 months')))->sum('number');
        return is_null($number)?0:$number;
    }
	
	//上上月流水
    public function oneMonthIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m%', strtotime('-2 months')))->sum('number');
        return is_null($number)?0:$number;
    }
	//上上上月流水
    public function twoMonthIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y-m%', strtotime('-3 months')))->sum('number');
        return is_null($number)?0:$number;
    }
	//今年流水
    public function thisyearIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y%'))->sum('number');
        return is_null($number)?0:$number;
    }
	//2018年流水
    public function threeyearIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y%', strtotime('-1 years')))->sum('number');
        return is_null($number)?0:$number;
    }
	//2017年流水
    public function twoyearIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y%', strtotime('-2 years')))->sum('number');
        return is_null($number)?0:$number;
    }
	//2016年流水
    public function oneyearIncome()
    {
        $number = Code::where('usedatetime', 'like', date('Y%', strtotime('-3 years')))->sum('number');
        return is_null($number)?0:$number;
    }
    //网站运营总金额
    public function totalIncome()
    {
        $number = Code::where('usedatetime', 'like', date('%'))->sum('number');
        return is_null($number)?0:$number;
    }
	
    //昨日注册
	public function yesterdayreg()
    {
        $number = User::where('reg_date', 'like', date('Y-m-d%', strtotime('-1 days')))->count();
        return is_null($number)?0:$number;
    }
    //今日注册
    public function todayreg()
    {
        $number = User::where('reg_date', 'like', date('Y-m-d%'))->count();
        return is_null($number)?0:$number;
    }
    //本月注册
    public function thisMonthreg()
    {
        $number = User::where('reg_date', 'like', date('Y-m%'))->count();
        return is_null($number)?0:$number;
    }
    //上月注册
    public function lastMonthreg()
    {
        $number = User::where('reg_date', 'like', date('Y-m%', strtotime('-1 months')))->count();
        return is_null($number)?0:$number;
    }
	//今年注册
    public function thisyearreg()
    {
        $number = User::where('reg_date', 'like', date('Y%'))->count();
        return is_null($number)?0:$number;
    }
	//日期
	//去年
	 public function oneyear()
    {
        $number = date('Y', strtotime('-1 years'));
        return $number;
    }
	//前年
	 public function twoyear()
    {
        $number = date('Y', strtotime('-2 years'));
        return $number;
    }
	//大前年
	 public function threeyear()
    {
        $number = date('Y', strtotime('-3 years'));
        return $number;
    }
	//上个月
	 public function oneMonth()
    {
        $number = date('m', strtotime('-1 months'));
        return $number;
    }
	//上上个月
	 public function twoMonth()
    {
        $number = date('m', strtotime('-2 months'));
        return $number;
    }
	
	//上上上个月
	 public function threeMonth()
    {
        $number = date('m', strtotime('-3 months'));
        return $number;
    }
	 public function fourMonth()
    {
        $number = date('Y-m', strtotime('-4 months'));
        return $number;
    }
	 public function FivesMonth()
    {
        $number = date('Y-m', strtotime('-5 months'));
        return $number;
    }
	 public function sixMonth()
    {
        $number = date('Y-m', strtotime('-6 months'));
        return $number;
    }
	 public function SevenMonth()
    {
        $number = date('Y-m', strtotime('-7 months'));
        return $number;
    }
	 public function EightMonth()
    {
        $number = date('Y-m', strtotime('-8 months'));
        return $number;
    }
	 public function nineMonth()
    {
        $number = date('Y-m', strtotime('-9 months'));
        return $number;
    }
	 public function tenMonth()
    {
        $number = date('Y-m', strtotime('-10 months'));
        return $number;
    }
	 public function elevenMonth()
    {
        $number = date('Y-m', strtotime('-11 months'));
        return $number;
    }
	 public function twelveMonth()
    {
        $number = date('Y-m', strtotime('-12 months'));
        return $number;
    }
	
	//昨天
	 public function onedays()
    {
        $number = date('d', strtotime('-1 days'));
        return $number;
    }
	//前天
	 public function twodays()
    {
        $number = date('d', strtotime('-2 days'));
        return $number;
    }
	//大前天
	 public function threedays()
    {
        $number = date('d', strtotime('-3 days'));
        return $number;
    }
	//大大前天
	 public function fourdays()
    {
        $number = date('d', strtotime('-4 days'));
        return $number;
    }
	 public function Fivesdays()
    {
        $number = date('d', strtotime('-5 days'));
        return $number;
    }
	 public function sixdays()
    {
        $number = date('d', strtotime('-6 days'));
        return $number;
    }
	 public function Sevendays()
    {
        $number = date('d', strtotime('-7 days'));
        return $number;
    }
	 public function Eightdays()
    {
        $number = date('d', strtotime('-8 days'));
        return $number;
    }
	 public function ninedays()
    {
        $number = date('d', strtotime('-9 days'));
        return $number;
    }
	 public function tendays()
    {
        $number = date('d', strtotime('-10 days'));
        return $number;
    }
	 public function elevendays()
    {
        $number = date('d', strtotime('-11 days'));
        return $number;
    }
	 public function twelvedays()
    {
        $number = date('d', strtotime('-12 days'));
        return $number;
    }
	 public function thirteendays()
    {
        $number = date('d', strtotime('-13 days'));
        return $number;
    }
	 public function fourteendays()
    {
        $number = date('d', strtotime('-14 days'));
        return $number;
    }
	 public function fifteendays()
    {
        $number = date('d', strtotime('-15 days'));
        return $number;
    }
	 public function sixteendays()
    {
        $number = date('d', strtotime('-16 days'));
        return $number;
    }
	 public function Seventeendays()
    {
        $number = date('d', strtotime('-17 days'));
        return $number;
    }
	 public function eighteendays()
    {
        $number = date('d', strtotime('-18 days'));
        return $number;
    }
	 public function Nineteendays()
    {
        $number = date('d', strtotime('-19 days'));
        return $number;
    }
	 public function twentydays()
    {
        $number = date('d', strtotime('-20 days'));
        return $number;
    }
	 public function twentyonedays()
    {
        $number = date('d', strtotime('-21 days'));
        return $number;
    }
	 public function twentytwodays()
    {
        $number = date('d', strtotime('-22 days'));
        return $number;
    }
	 public function twentythreedays()
    {
        $number = date('d', strtotime('-23 days'));
        return $number;
    }
	 public function twentyfourdays()
    {
        $number = date('d', strtotime('-24 days'));
        return $number;
    }
	 public function twentyfivedays()
    {
        $number = date('d', strtotime('-25 days'));
        return $number;
    }
	public function Twentysixdays()
    {
        $number = date('d', strtotime('-26 days'));
        return $number;
    }
	 public function Twentysevendays()
    {
        $number = date('d', strtotime('-27 days'));
        return $number;
    }
	 public function Twentyeightdays()
    {
        $number = date('d', strtotime('-28 days'));
        return $number;
    }
	 public function Twentyninedays()
    {
        $number = date('d', strtotime('-29 days'));
        return $number;
    }
	 public function thirtydays()
    {
        $number = date('d', strtotime('-30 days'));
        return $number;
    }

}
