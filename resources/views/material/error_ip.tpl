<!DOCTYPE HTML>
<html>
	<head>
		<title>{$config["appName"]} --禁止访问！</title>
        <meta name="keywords" content="{$config["appName"]}"/>
        <meta name="description" content="{$config["appName"]}"/>
        <meta charset="utf-8" />
        <link rel="shortcut icon" href="/favicon.ico"/>
        <link rel="bookmark" href="/favicon.ico"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
		<link rel="stylesheet" href="assets/css/main.css"/>
        <link href="/bootstrap" type="text/html" rel="stylesheet">
        <noscript><link rel="stylesheet" href="./assets/css/noscript.css" /></noscript>   
  </head>
  
       <body>
			<div id="wrapper">
              <!--首页开始-->
                          <div class="content">
							<div class="inner">
								<h1>禁止访问！</h1>
                          </div>
                        </div>

											
                                 <div class="table-wrapper">
										<table>

											<tbody>
												<tr>
													<td>根据相关法律法规要求，你所在地区被禁止访问这个网站！</td>
													<iframe width='320' height='36' scrolling='no' frameborder='0' allowTransparency='true' src='http://www.showaddress.net/ShowIP.asp?size=12&lineht=18&color=00FFFF&bgcolor=000000&type=3'></iframe>
												</tr>
												
												</tbody>
										</table>
								</div>
                                        
									
						
										

                           <nav>
							<ul>  
                          <a href="/cous"  class="button">联系管理员</a>  
                           </ul>
						</nav>
                 
                 
             
              <!--首页结束-->
					<div id="main">
                     
                      <!--全部标签结束-->
                              </div>
                     <!-- 版权底部 -->
                      <footer id="footer">
                   <p class="copyright">&copy;{date("Y")} {$config["appName"]} |  <a href="/fstaffs">STAFF</a>  |  <a href="/toos">用户协议(TOS)</a></p>
                      </footer>
              <!-- 版权结束 -->
			 </div>
               
	        {include file='injs.tpl'}	
	</body>
</html>
