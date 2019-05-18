<?php
/*
//屏蔽中国ip
include('ip/geoip.inc');    
global $countryCode;    
$geoData = geoip_open('ip/GeoIP.dat', GEOIP_STANDARD);  
$countryCode = geoip_country_code_by_addr($geoData, $_SERVER['REMOTE_ADDR']);  
geoip_close($geoData);  
global $countryCode;  
*/

//屏蔽中国ip，透过cf
$countryCode = $_SERVER["HTTP_CF_IPCOUNTRY"];
if($countryCode == 'CN') {
if (substr($_SERVER["REQUEST_URI"],0,9) === '/error_ip' or substr($_SERVER["REQUEST_URI"],0,5) === '/cous' or substr($_SERVER["REQUEST_URI"], 0, 6) === '/link/') {	
define('PUBLIC_PATH', __DIR__);
require PUBLIC_PATH.'/../bootstrap.php';
require BASE_PATH.'/config/routes.php';
}else {
	header("Location: /error_ip"); 
	exit;
} 
if ($_SERVER["REMOTE_ADDR"] === '47.244.12.64') {
define('PUBLIC_PATH', __DIR__);
require PUBLIC_PATH.'/../bootstrap.php';
require BASE_PATH.'/config/routes.php';
}
} else {
define('PUBLIC_PATH', __DIR__);
require PUBLIC_PATH.'/../bootstrap.php';
require BASE_PATH.'/config/routes.php';
}


/*
//  PUBLIC_PATH
define('PUBLIC_PATH', __DIR__);
// Bootstrap
require PUBLIC_PATH.'/../bootstrap.php';
// Init slim routes
require BASE_PATH.'/config/routes.php';
*/

