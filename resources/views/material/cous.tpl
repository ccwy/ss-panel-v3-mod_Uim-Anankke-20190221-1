<!DOCTYPE HTML>
<html>
	<head>
		<title>{$config["appName"]}</title>
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
								<h1>联系我们</h1>
                          </div>
                        </div>

											
                                 <div class="table-wrapper">
										<table>

											<tbody>
												<tr>
													<td>如您未注册或无法登陆？</td>
													
												</tr>
												<tr>
													<td>请发送Email联系我们的管理员，有任何疑问都可以得到解答。</td>
													
												</tr>
												
												<tr>
													<td>Email：<a href="mailto:{$config["cousemail"]}">{$config["cousemail"]}</a></td>
													
												</tr>
												<tr>
													<td>如果屏幕右下角的蓝色小按钮可用，你也可以通过它联系管理员。</td>
													
												</tr>
												{if $config['telegram3'] !=''}
												<tr>
													<td>Telegram群组：<a href="{$config["telegram3"]}"  target="_blank">点击加入</a></td>
													
												</tr>
												{/if}
												
												<tr>
													<td>已经是我们用户？请登录后发送工单联系管理员可。</td>
													
												</tr>
												</tbody>
										</table>
								</div>
                                        
									
						
										

                           <nav>
							<ul>  
                          <a href="javascript:history.back();" class="button">返回上一页</a>  <a href="/" class="button">返回到首页</a>
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
