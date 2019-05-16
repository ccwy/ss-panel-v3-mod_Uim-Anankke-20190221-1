<?php
/*
//屏蔽中国ip
include('ip/geoip.inc');    
global $countryCode;    
$geoData = geoip_open('ip/GeoIP.dat', GEOIP_STANDARD);  
$countryCode = geoip_country_code_by_addr($geoData, $_SERVER['REMOTE_ADDR']);  
geoip_close($geoData);  
global $countryCode;   
if($countryCode == 'CN') {
if (substr($_SERVER["REQUEST_URI"],0,9) === '/error_ip' or substr($_SERVER["REQUEST_URI"],0,5) === '/cous' or substr($_SERVER["REQUEST_URI"], 0, 6) === '/link/'){	
//  PUBLIC_PATH
define('PUBLIC_PATH', __DIR__);
// Bootstrap
require PUBLIC_PATH.'/../bootstrap.php';
// Init slim routes
require BASE_PATH.'/config/routes.php';
}else {
	header("Location: /error_ip"); 
			exit;
} 
} else {
//  PUBLIC_PATH
define('PUBLIC_PATH', __DIR__);
// Bootstrap
require PUBLIC_PATH.'/../bootstrap.php';
// Init slim routes
require BASE_PATH.'/config/routes.php';
}
*/

$ip = $_SERVER['REMOTE_ADDR'];
$content = file_get_contents(‘http://ip.taobao.com/service/getIpInfo.php?ip=’.$ip);
$banned = json_decode(trim($content), true);
$lan = strtolower($_SERVER['HTTP_ACCEPT_LANGUAGE']);
if((!empty($banned['data']['country_id']) && $banned['data']['country_id'] == ‘CN’) || strstr($lan, ‘zh’))
{
header(“HTTP/1.0 404 Not Found”);
echo ‘HTTP/1.0 404 Not Found’;
exit;
}
/*
//  PUBLIC_PATH
define('PUBLIC_PATH', __DIR__);
// Bootstrap
require PUBLIC_PATH.'/../bootstrap.php';
// Init slim routes
require BASE_PATH.'/config/routes.php';
*/

