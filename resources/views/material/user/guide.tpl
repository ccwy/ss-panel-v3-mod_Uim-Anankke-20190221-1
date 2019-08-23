{include file='user/main.tpl'}

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">使用教程</h1>
			</div>
		</div>
      
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
                  {if $user->class>1}
					
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="card-main">
                                  
									<div class="card-inner">
										<nav class="tab-nav margin-top-no">
											<ul class="nav nav-list">
												<li class="active">
													<a class="" data-toggle="tab" href="#all_ssr_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Windows</a>
												</li>
												<li>
													<a class="" data-toggle="tab" href="#all_ssr_mac"><i class="icon icon-lg">laptop_mac</i>&nbsp;MacOS</a>
												</li>
												{*<li>
													<a class="" data-toggle="tab" href="#all_ssr_linux"><i class="icon icon-lg">dvr</i>&nbsp;Linux</a>
												</li>*}
												<li>
													<a class="" data-toggle="tab" href="#all_ssr_ios"><i class="icon icon-lg">phone_iphone</i>&nbsp;iOS</a>
												</li>
												<li>
													<a class="" data-toggle="tab" href="#all_ssr_android"><i class="icon icon-lg">android</i>&nbsp;Android</a>
												</li>
												{*<li>
													<a class="" data-toggle="tab" href="#all_ssr_router"><i class="icon icon-lg">router</i>&nbsp;路由器</a>
												</li>
												<li>
													<a class="" data-toggle="tab" href="#all_ssr_game"><i class="icon icon-lg">videogame_asset</i>&nbsp;游戏端</a>
												</li>*}
											</ul>
										</nav>
                                      
										<div class="tab-pane fade active in page-course" id="all_ssr_windows">
											<ul>
												<h3><li>下载软件</li> </h3>
												<ol>
													<li>这里介绍Windows系统使用方法，使用系统是win7 64位旗舰版，XP系统、win10也是可以一样设置，不建议使用XP系统</li>
													<li>请打开{$config["appName"]}网站（本次演示使用的是chrome浏览器），登录后在用户中心，，往下滑动到快速添加节点处，点击下载SSR客户端</li>
													<p><img src="/images/m-win-1.png"/></p>
													<li>下载SSR客户端到桌面并解压缩到桌面</li>
												</ol>
											</ul>
											<ul>
												<h3><li>导入节点</li> </h3>
												<ul>
													<li>解压SSR客户端，双击shadowsocksr4.0的客户端(打不开就用2.0，2.0打不开请下载安装net.framework4.0系统组件（百度搜一下就有了），还打不开麻烦升级到win7或者win10系统)</li>
													<p><img src="/images/m-win-3.png"/></p>
													<li>方法一（推荐）：</li>
													<ol>
														<li>在快速添加节点中找到订阅地址</li>
														<p><img src="/images/m-win-2.png"/></p>
														<li>在屏幕右下角找到小飞机图标，如截图</li>
														<p><img src="/images/m-win-4.png"/></p>
														<li>鼠标右键点击小飞机图标，鼠标左键点击下那个负载均衡，取消掉负载均衡</li>
														<p><img src="/images/m-win-5.png"/></p>
														<li>再次鼠标右键点击小飞机图标，点击服务器订阅</li>
														<p><img src="/images/m-win-6.png"/></p>
														<li>鼠标左键点击服务器订阅设置</li>
														<p><img src="/images/m-win-7.png"/></p>
														<li>点击Add，添加订阅地址</li>
														<p><img src="/images/m-win-8.png"/></p>
														<li>点击网址输入框，选中里面的全部内容，然后删除</li>
														<p><img src="/images/m-win-9.png"/></p>
														<li>然后把刚刚在网站复制的订阅地址粘贴到网址输入框，并点击下方的确定按钮</li>
														<p><img src="/images/m-win-10.png"/></p>
														<li>鼠标右键点击屏幕右下角的小飞机图标，然后点击服务器订阅，然后点击更新SSR服务器订阅（不通过代理）</li>
														<p><img src="/images/m-win-11.png"/></p>
														<li>屏幕右下角出现如图所示的通知就表示获取节点成功，订阅更新成功了</li>
														<p><img src="/images/m-win-12.png"/></p>
														
														
														
													</ol>
													<li>方法二：</li>
													<ol>
														<li>在快速添加节点中找到【备用导入节点方法】，点击 链接 小按钮</li>
														<p><img src="/images/m-win-17.png"/></p>
														<li>鼠标右键点击小飞机图标，鼠标左键点击下那个负载均衡，取消掉负载均衡</li>
														<p><img src="/images/m-win-5.png"/></p>
														<li>再次鼠标右键点击小飞机图标，点击【剪切板批量导入ssr://链接】，等待导入节点完成，弹出页面点击确定，节点导入完成</li>
														<p><img src="/images/m-win-18.png"/></p>
														
													</ol>
												</ul>
											</ul>
											<ul>
												<h3><li>选择节点并开始使用</li></h3>
												<ol>
													<li>找到屏幕有下角小飞机图标，鼠标左键点击一下，在弹出页面里面删除最顶上那个无效节点FreeSSR-public，然后点击确定</li>
													<p><img src="/images/m-win-13.png"/></p>
													<li>鼠标右键点击小飞机，然后点击服务器->找到{$config["appName"]}->选择一个节点单击</li>
													<p><img src="/images/m-win-15.png"/></p>
													<li>然后打开浏览器输入www.google.com试试吧！</li>
													<p><img src="/images/m-win-16.png"/></p>
												</ol>
												<ul>以上教程均为电脑没有安装过任何代理软件的步骤，如果安装过其他代理软件可能产生冲突</ul>
												<ul>SSR客户端还可以通过扫码添加节点，你可以在节点列表点击查看节点二维码，然后鼠标右键点击小飞机图标，左键点击扫描屏幕二维码即可添加节点</ul>
												<ul>如果出现端口占用提示，请鼠标右键点击小飞机，点击选项设置，找到本地代理，本地端口默认是1080，你可以把它改成1081或者1082之类的，以避免端口冲突</ul>
												<ul>更新订阅方式：鼠标右键点击小飞机->点击服务器订阅->点击更新SSR服务器订阅（不通过代理），等待更新成功的提示即可。</ul>
											</ul>
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_mac">
											<p>1：把下载的DMG包放入应用程序列表（用户中心->快速添加节点处有下载链接）</p>
											<p><img src="/images/c_mac_1.png"/></p>
											<p>2：打开程式</p>
											<p><img src="/images/c_mac_2.png"/></p>
											<p>3：如提示不安全，请到系统偏好设置打开程式</p>
											<p><img src="/images/c_mac_3.png"/></p>
											<p>4：服务器-编辑订阅</p>
											<p><img src="/images/c_mac_4.png"/></p>
											<p>5：点击+号后填入订阅链接后手动更新订阅</p>
											<p><img src="/images/c_mac_5.png"/></p>
											<p><img src="/images/c_mac_4.png"/></p>
											<p>6：选择一个节点</p>
											<p><img src="/images/c_mac_6.png"/></p>
											<p>7：打开谷歌测试一下吧</p>
											
										</div>

										{*<div class="tab-pane fade page-course" id="all_ssr_linux">
											<h3>Ubuntu使用Shadowsocks-qt5科学上网</h3>
											<h4>说明：shadowsocks-qt5是ubuntu上一个可视化的版本</h4>
											<hr/>
											<h5>安装shadowsocks-qt5</h5>
											<pre><code>1.$ sudo add-apt-repository ppa:hzwhuang/ss-qt5
												2.$ sudo apt-get update
												3.$ sudo apt-get install shadowsocks-qt5</code></pre>
											<h5>如果安装成功之后，按<code>win</code>键搜索应该能够找到软件，如下图所示：</h5>
											<p><img src="/images/c-linux-1.png"/></p>
											<h5>配置shadowsocks-qt5</h5>
											<h6>填写对应的服务器IP，端口，密码，加密方式，红色标注地方请与图片一样</h6>
											<p><img src="/images/c-linux-4.png"/></p>
											<h5>配置系统代理模式</h5>
											<p><img src="/images/c-linux-5.png"/></p>
											<h5>配置浏览器代理模式（本次为Ubuntu自带FireFox浏览器为例）</h5>
											<p><img src="/images/c-linux-6.png"/></p>
											<h5>连接并开始上网</h5>
											<p><img src="/images/c-linux-7.png"/></p>
											<hr/>
											
										</div>*}

										<div class="tab-pane fade page-course" id="all_ssr_ios">
										            <nav class="tab-nav margin-top-no">
														<ul class="nav nav-list">
															<li class="active">
																<a class="" data-toggle="tab" href="#ios_ssr_shadowrocket">Shadowrocket</a>
															</li>
															<li>
																<a class="" data-toggle="tab" href="#ios_ssr_Potatso">Potatso Lite</a>
															</li>
														</ul>
													</nav>
										    <div class="tab-pane fade active in" id="ios_ssr_shadowrocket">
											<ul>
												<h3><li>下载软件</li> </h3>
												<ol>
													<li>由于政策原因，Apple Store中国区代理类软件被强制下架，所以需要注册一个非中国区的Apple ID账号（一般注册美区或港区的比较多，不会注册的百度搜一下就有教程了）；由于IOS系统限制，必须要IOS9以上系统才可以使用此类代理软件</li>
													<li>回到主屏幕，点击设置</li>
													<p><img src="/images/m-ios-14.jpg"/></p>
													<li>滑动到itunes store与Apple store，点击进去</li>
													<p><img src="/images/m-ios-18.jpg"/></p>
													<li>点击你的apple账号，点击退出登录</li>
													<p><img src="/images/m-ios-17.jpg"/></p>
													<li>退出你的apple账号后，点击登录，登录你新注册的外区apple ID</li>
													<li>回到主屏幕，点击Apple store，点击屏幕右下角的搜索（Search）在搜索框里面输入shadowrocket，看到shadowrocket软件，点击购买(Get)或者下载，此软件非免费，并非本站开发和提供，属于第三方软件，自身不带任何节点，售价在2.99美元，请自行决定是否购买，Apple Store有免费的第三方SSR软件Potatso Lite可供下载使用，此软件同样不带节点，以上两款SSR软件都可可使用本站节点</li>
													<p><img src="/images/m-ios-3.jpg"/></p>													
												</ol>
											</ul>
											<ul>
												<h3><li>导入节点</li> </h3>
												<ul>
													<li>返回浏览器（本次演示使用的是chrome浏览器），打开{$config["appName"]}网站，登录后在用户中心，往下滑动找到快速添加节点，点击SSR，点击IOS，下面有两种添加节点方法</li>
													<p><img src="/images/m-ios-1.jpg"></p>
													<li>方法一（推荐）：</li>
													<ol>
														<li>找到订阅地址，点击复制订阅地址</li>
														<p><img src="/images/m-ios-2.jpg"/></p>
														<li>返回主屏幕，找到shadowrocket软件，点击打开，然后点击软件右上角的+号</li>
														<p><img src="/images/m-ios-4.jpg"/></p>														
														<li>点击类型</li>
														<p><img src="/images/m-ios-5.jpg"/></p>
														<li>类型选择Subscribe</li>
														<p><img src="/images/m-ios-6.jpg"/></p>
														<li>在URL输入框粘贴前面在网站复制的订阅地址，在备注里面填入{$config["appName"]}，点击右上角的完成</li>
														<p><img src="/images/m-ios-7.jpg"/></p>
														<li>更新完成后节点就会出来了，由于节点是禁Ping的，所以你点击那个延迟测试是会显示超时的，如需要测试，请到软件设置里面把延迟测试方法改为TCP就可以测试了。</li>
														<p><img src="/images/m-ios-8.jpg"/></p>
														
													</ol>
													<li>方法二：</li>
													<ol>
														<li>找到小火箭一键订阅按钮，在Safari浏览器里面点击它，就会自动跳转到shadowrocket并添加节点了</li>														
														<p><img src="/images/m-ios-2.1.jpg"/></p>														
													</ol>
												</ul>
											</ul>
											<ul>
												<h3><li>选择节点并开始使用</li></h3>
												<ol>
												    <li>选择一个节点</li>
													<p><img src="/images/m-ios-9.jpg"/></p>
													<li>滑动到最顶部，全局路由那里要选择配置或者全局，点击箭头所示的开关按钮</li>
													<p><img src="/images/m-ios-10.jpg"/></p>
													<li>在弹出的弹窗点击Allow</li>
													<p><img src="/images/m-ios-11.jpg"/></p>
													<li>输入手机锁屏密码或者通过指纹、面部识别确认</li>
													<p><img src="/images/m-ios-12.jpg"/></p>
													<li>如箭头所示，这就表示连上节点了，你可以在Safari浏览器打开谷歌或者YouTube试试了</li>
													<p><img src="/images/m-ios-13.jpg"/></p>
													<p><img src="/images/m-ios-29.jpg"/></p>													
												</ol>
												<ul>以上教程均为IOS系统shadowrocket代理软件的步骤，如果安装过其他代理软件可能产生冲突</ul>
												<ul>shadowrocket还可以通过扫码添加节点，你可以在节点列表点击查看节点二维码</ul>
												<ul>shadowrocket更新订阅方法，向左滑动订阅选项，就会出现更新按钮了</ul>
											</ul>
											</div>
											
											<div class="tab-pane fade page-course" id="ios_ssr_Potatso">
											<ul>
												<h3><li>下载软件</li> </h3>
												<ol>
													<li>由于政策原因，Apple Store中国区代理类软件被强制下架，所以需要注册一个非中国区的Apple ID账号（一般注册美区或港区的比较多，不会注册的百度搜一下就有教程了）；由于IOS系统限制，必须要IOS9以上系统才可以使用此类代理软件</li>
													<li>回到主屏幕，点击设置</li>
													<p><img src="/images/m-ios-14.jpg"/></p>
													<li>滑动到itunes store与Apple store，点击进去</li>
													<p><img src="/images/m-ios-18.jpg"/></p>
													<li>点击你的apple账号，点击退出登录</li>
													<p><img src="/images/m-ios-17.jpg"/></p>
													<li>退出你的apple账号后，点击登录，登录你新注册的外区apple ID</li>
													<li>回到主屏幕，点击Apple store，点击屏幕右下角的搜索（Search）在搜索框里面输入Potatso Lite，看到Potatso Lite软件，点击购买(Get)或者下载，此软件非免费，并非本站开发和提供，属于第三方软件，自身不带任何节点，免费SSR代理软件</li>
													<p><img src="/images/m-ios-19.jpg"/></p>													
												</ol>
											</ul>
											<ul>
												<h3><li>导入节点</li> </h3>
												<ol>
													<li>返回浏览器（本次演示使用的是chrome浏览器），打开{$config["appName"]}网站，登录后在用户中心，往下滑动找到快速添加节点，点击SSR，点击IOS</li>
													<p><img src="/images/m-ios-1.jpg"></p>
													<li>找到订阅地址，点击复制订阅地址</li>
													<p><img src="/images/m-ios-2.jpg"/></p>
													<li>返回主屏幕，找到Potatso Lite软件，点击打开</li>
													<p><img src="/images/m-ios-20.jpg"/></p>
													<li>点击立即使用</li>
													<p><img src="/images/m-ios-21.jpg"/></p>
													<li>点击现在添加</li>
													<p><img src="/images/m-ios-22.jpg"/></p>
													<li>点击订阅</li>
													<p><img src="/images/m-ios-23.jpg"/></p>
													<li>在Subscription URL输入框粘贴前面在网站复制的订阅地址，在Name里面填入{$config["appName"]}，点击右上角的 √ 完成</li>
													<p><img src="/images/m-ios-24.jpg"/></p>
													<li>更新完成后节点就会出来了</li>
												</ol>
											</ul>
											<ul>
												<h3><li>选择节点并开始使用</li></h3>
												<ol>
												    <li>选择一个可用节点</li>
													<p><img src="/images/m-ios-25.jpg"/></p>
													<li>开启智能路由，并点击下方的开始</li>
													<p><img src="/images/m-ios-26.jpg"/></p>
													<li>在弹出的弹窗点击Allow</li>
													<p><img src="/images/m-ios-27.jpg"/></p>
													<li>输入手机锁屏密码或者通过指纹、面部识别确认</li>
													<p><img src="/images/m-ios-12.jpg"/></p>
													<li>如箭头所示，这就表示连上节点了，你可以在Safari浏览器打开谷歌或者YouTube试试了</li>
													<p><img src="/images/m-ios-28.jpg"/></p>
													<p><img src="/images/m-ios-29.jpg"/></p>
													
												</ol>
												<ul>以上教程均为IOS系统Potatso Lite代理软件的步骤，如果安装过其他代理软件可能产生冲突</ul>
												
												<ul>Potatso Lite更新订阅方法，点击节点，点击订阅为{$config["appName"]}这个，点击右上角那个 √ 就会自动更新订阅了</ul>
											</ul>
											</div>
											
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_android">
										    <ul>
												<h3><li>下载软件</li> </h3>
												<ol>
													<li>请打开{$config["appName"]}网站（本次演示使用的是chrome浏览器），登陆后到用户中心，滑动到快速添加节点处，下载SSR安卓客户端，下载后完成安装，并打开SSR客户端；</li>
													<p><img src="/images/m-android-1.png"/></p>												
												</ol>
											</ul>
											<ul>
												<h3><li>导入节点</li> </h3>
												<ul>
													<li>返回浏览器（本次演示使用的是chrome浏览器），打开{$config["appName"]}网站，登录后在用户中心，往下滑动找到快速添加节点，点击SSR，点击ANDROID，下面有两种添加节点方法</li>
													<p><img src="/images/m-android-16.png"/></p>	
													<li>方法一（推荐）：</li>
													<ol>
														<li>找到订阅地址，点击复制订阅地址</li>
														<p><img src="/images/m-android-2.png"/></p>
														<li>返回主屏幕，找到SSR软件，点击打开，然后点击软件左上角箭头所指处的ShadowsocksR</li>
														<p><img src="/images/m-android-3.png"/></p>
														
														<li>向左滑动删除Android SSR Default，然后点击屏幕右下角的那个大 + 号，看箭头所指</li>
														<p><img src="/images/m-android-4.png"/></p>
														<li>点击添加/升级SSR订阅</li>
														<p><img src="/images/m-android-5.png"/></p>
														<li>删除订阅列表里面默认的那个订阅地址FreeSSR-public（一定要删除这个，否则会导致无法更新订阅），然后点击添加订阅地址</li>
														<p><img src="/images/m-android-6.png"/></p>
														<li>在输入框里面粘贴你在网站复制的订阅地址，点击确定</li>
														<p><img src="/images/m-android-7.png"/></p>
														<li>更新出订阅列表了，里面显示了{$config["appName"]}就表示有订阅了，然后点击确定并升级</li>
														<p><img src="/images/m-android-8.png"/></p>
														<li>更新完成订阅后节点就都出来了</li>
														
														
													</ol>
													<li>方法二：</li>
													<ol>
														<li>在快速添加节点中找到【备用导入节点方法】，点击 链接 小按钮，就会自动跳转到SSR客户端里面，会提示是否添加，点击确定就会自动添加节点了</li>
														
														<p><img src="/images/m-android-15.png"/></p>
														
													</ol>
												</ul>
											</ul>
											<ul>
												<h3><li>选择节点并开始使用</li></h3>
												<ol>
												    <li>随便选择一个节点，例如HK03，点击它就是选择它了</li>
													<p><img src="/images/m-android-9.png"/></p>
													<li>点击箭头所示的开关按钮开启代理</li>
													<p><img src="/images/m-android-10.png"/></p>
													<li>在弹出的弹窗点击确定</li>
													<p><img src="/images/m-android-11.png"/></p>
													<li>看到小飞机上面的斜杠没了就表示开启代理了，并且手机状态栏会显示vpn图标</li>
													<p><img src="/images/m-android-12.png"/></p>
													<li>你可以在浏览器打开谷歌或者YouTube试试了</li>
													<p><img src="/images/m-android-13.png"/></p>
													
												</ol>
												<ul>以上教程均为安卓系统SSR代理软件的步骤，如果安装过其他代理软件可能产生冲突</ul>
												<ul>SSR客户端还可以通过扫码添加节点，你可以在节点列表点击查看节点二维码</ul>
												<ul>SSR客户端更新订阅方法，点击添加/升级SSR订阅，点击确定并升级，就会自动更新订阅了</ul>
												<ul>注释：国产安卓系统为定制系统，如需要Youtube、Google软件等，需要安装Google框架，具体机型如何安装各不相同，请直接在谷歌/百度查找教程</ul>
											</ul>	
										
										</div>

										{*<div class="tab-pane fade" id="all_ssr_router">
											<h2 class="major">路由器</h2>
										</div>  
										
										<div class="tab-pane fade" id="all_ssr_game">
											<h2 class="major">游戏端</h2>
										</div>*}

									</div>

								</div>
							</div>
							
						
				
							
						
						
						
					    </div>
						
					
                   	{else}

                  	<div class="col-xx-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
                                 	
									<h3>{$user->user_name}，您不是VIP暂时无法查看使用教程，<a href="/user/shop">成为VIP请点击这里</a></h3>
								</div>
							</div>
						</div>
					</div>
					{/if}
					
					{include file='dialog.tpl'}
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}




<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
