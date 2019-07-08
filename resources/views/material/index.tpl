<!DOCTYPE HTML> 
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
{if $config['appName'] == '跑路'}
<script>window.location.href='{$config["baseUrl"]}/paolu.html';</script>
{/if}
<html>
	<head>
		<title>{$config["appName"]}</title>
        <meta name="keywords" content=""/>
        <meta name="description" content=""/>
        <meta charset="utf-8" />
        <link rel="shortcut icon" href="/favicon.ico"/>
        <link rel="bookmark" href="/favicon.ico"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
		<link rel="stylesheet" href="/assets/css/main.css"/>
        <noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript> 
	
  </head>
  
       <body>
       
			<div id="wrapper">
              <!--首页开始-->
					<header id="header">
						<div class="logo">
						<span class="icon fa-rocket"></span>
                      </div>
                       {if $user->isLogin}
						<div class="content">
							<div class="inner">
                                  <p>用户：<code>{$user->user_name}</code>
                                    等级：{if $user->class ==0}
											  <dd>账号未激活</dd>	
											  {elseif $user->class ==3}
											  <dd> 永久会员</dd>
											  {elseif $user->class ==11}
											  <dd>月付VIP1</dd>
											  {elseif $user->class ==12}
											  <dd>月付VIP2</dd>
											  {elseif $user->class ==13}
											  <dd>月付VIP3</dd>
											  {elseif $user->class ==14}
											  <dd>月付VIP4</dd>
											  
											  {elseif $user->class ==16}
											  <dd> 永久会员</dd>
											  {elseif $user->class==17}											  
                                              <dd> 等级未到期</dd>
                                              {elseif $user->class==18}
											  <dd> 月付VIP2</dd>
											  {elseif $user->class==19}
											  <dd> 月付VIP3</dd>
											  {elseif $user->class==20}
											  <dd> 月付VIP4</dd>
											  {elseif $user->class==21}
											  <dd> 月付VIP5</dd>
											  {elseif $user->class==22}
											  <dd> 月付VIP6</dd>
											  {elseif $user->class==23}
											  <dd> 年付SVIP1</dd>
											  {elseif $user->class==24}
											  <dd> 年付SVIP2</dd>
											  {elseif $user->class==25}
											  <dd> 年付SVIP3</dd>
											  
											  {elseif $user->class==26}
											  <dd> 年付SVIP1</dd>
											  {elseif $user->class==27}
											  <dd> 年付SVIP2</dd>
											  {elseif $user->class==28}
											  <dd> 年付SVIP3</dd>
											  {elseif $user->class==29}
											  <dd> 年付SVIP4</dd>
											  
											  
											  {elseif $user->class==5}
											  <dd> 年付VIP</dd>
											
                                                                                          {else}
                                                                                          <dd> 未知等级</dd>
                                                                                          {/if}
										 
                                    过期时间：{if $user->class_expire!="1989-06-04 00:05:00"}
											    <code>{$user->class_expire}</code>
                                          {else}
                                              <code>不过期</code>
                                              {/if}</p>
                                  <p>总流量：<code>{$user->enableTraffic()}</code>
                                  已用流量：<code>{$user->usedTraffic()}</code>
                                  剩余流量：<code>{$user->unusedTraffic()}</code></p>
                          </div>
                      </div>	
					  	<nav>
							<ul>
                                <li><a href="#1">简介</a></li>
					            <li><a href="/user">用户中心</a></li>
								
								<li><a href="/cous">联系我们</a></li>
								<li><a href="/user/logout">退出登录</a></li>
                        </ul>
						</nav>
                              {else}
                              <div class="content">
							<div class="inner">
								<h1>{$config["appName"]}</h1>
								<!--
								如果想自定义文本请删除下面这段script代码,格式为
								<p>自定义文本</p>
								
								<script type="text/javascript" src="https://api.lwl12.com/hitokoto/v1?encode=js&charset=utf-8"></script><div id="lwlhitokoto"><script>lwlhitokoto()</script></div>-->
                          </div>
                      </div>	
                              <nav>
							<ul>
                               <li><a href="#1">简介</a></li>
								<li><a href="/auth/login">登录</a></li>
								<li><a href="/auth/register">注册</a></li>
								{if $config['register_mode']!='close'}
                                <li><a href="/shop">价格</a></li>
								{/if}																
								<li><a href="/cous">联系我们</a></li>
                           </ul>
						</nav>
                              {/if}

              </header> 
              <!--首页结束-->
					<div id="main">
                      <!--标签1开始-->
                      <article id="1">
                      <h2 class="major">简介</h2>
                      <h3 align="center">云霄阁</h3>
					  <p>中国式的比萨斜塔——福建省上杭县中都镇云霄阁始建于1522—1566年间（明嘉靖年间），属于外斜内正的建筑结构。游客无论从哪一个角度观察该楼，楼均向相反的方向倾斜，400多年来无人能解其中之奥秘。</p>
					  <p>云霄阁于1582年（明万历十年）重修，距今己有400多年历史，系土木结构，呈迭式塔形，共七层，高20多米。底层分前后两座：前堂为夫人宫，门前有联云：“黄鹤归来带得松花香丈室，白云飞去放开明月照禅心”。后堂为仙师殿，供奉仙师菩萨，有联云“佛地有尘风自扫，禅寺无锁月常关”。第二层为观音殿，奉观音佛像，有联曰“紫金山清源山不如此处神灵救灾更快，禅林寺义合寺总是共个菩萨求福在诚”。第三层为玄天帝殿，第四层为北帝祖师殿，第五层天后圣母殿，第六层为魁星点斗殿，第七层为钟鼓。</p>
					  </article>
					  
                     
                      <!--全部标签结束-->
                      
                              </div>
                     <!-- 版权底部 -->
                      <footer id="footer">
                   <p class="copyright">&copy;{date("Y")} {$config["appName"]} |  <a href="/fstaffs">STAFF</a>  |  <a href="/toos">用户协议(TOS)</a></p>
                      </footer>
              <!-- 版权结束 -->
			 </div>
               
			
	        	

	     <script language="javascript">
try{
	if(window.console&&window.console.log){
        
		console.log("%c{$config["appName"]}"," text-shadow: 0 1px 0 #ccc,0 2px 0 #c9c9c9,0 3px 0 #bbb,0 4px 0 #b9b9b9,0 5px 0 #aaa,0 6px 1px rgba(0,0,0,.1),0 0 5px rgba(0,0,0,.1),0 1px 3px rgba(0,0,0,.3),0 3px 5px rgba(0,0,0,.2),0 5px 10px rgba(0,0,0,.25),0 10px 10px rgba(0,0,0,.2),0 20px 20px rgba(0,0,0,.15);font-size:5em");
		console.log("%chttps://github.com/NimaQu/ss-panel-v3-mod_Uim","background: rgba(252,234,187,1);background: -moz-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%,rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -webkit-gradient(left top, right top, color-stop(0%, rgba(252,234,187,1)), color-stop(12%, rgba(175,250,77,1)), color-stop(28%, rgba(0,247,49,1)), color-stop(39%, rgba(0,210,247,1)), color-stop(51%, rgba(0,189,247,1)), color-stop(64%, rgba(133,108,217,1)), color-stop(78%, rgba(177,0,247,1)), color-stop(87%, rgba(247,0,189,1)), color-stop(100%, rgba(245,22,52,1)));background: -webkit-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -o-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: -ms-linear-gradient(left, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);background: linear-gradient(to right, rgba(252,234,187,1) 0%, rgba(175,250,77,1) 12%, rgba(0,247,49,1) 28%, rgba(0,210,247,1) 39%, rgba(0,189,247,1) 51%, rgba(133,108,217,1) 64%, rgba(177,0,247,1) 78%, rgba(247,0,189,1) 87%, rgba(245,22,52,1) 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fceabb', endColorstr='#f51634', GradientType=1 );font-size:3em");
	}
}catch(e){
};
 
</script>

{include file='injs.tpl'}

	</body>
</html>
