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
													<li>这里介绍Windows系统使用方法，使用系统是win7 64位旗舰版</li>
													<li>请打开网站用户中心，往下滑动到快速添加节点处，点击下载SSR软件</li>
													<p><img src="/images/m-win-1.png"/></p>
													<li>下载SSR软件到桌面并解压缩</li>
												</ol>
											</ul>
											<ul>
												<h3><li>导入节点</li> </h3>
												<ul>
													<li>解压客户端，双击shadowsocksr4.0的客户端(打不开就用2.0，2.0打不开请下载安装net.framework4.0，还打不开麻烦升级到win7系统)</li>
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
														<li>在快速添加节点中找到【备用导入节点方法】，点击点击复制链接小按钮</li>
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
													<li>鼠标右键点击小飞机，然后点击服务器->找到云霄阁->选择一个节点单击</li>
													<p><img src="/images/m-win-15.png"/></p>
													<li>然后打开浏览器输入www.google.com试试吧！</li>
													<p><img src="/images/m-win-16.png"/></p>
												</ol>
												<ul>以上教程均为电脑没有安装过任何代理软件的步骤，如果安装过其他代理软件可能产生冲突</ul>
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
											<ul>
												<h3><li>下载软件</li> </h3>
												<ol>
													<li>注册一个非中国区的Apple ID账号（一般注册美区或港区的比较多，不会注册的百度搜一下就有教程了）</li>
													<li>回到主屏幕，点击设置</li>
													<p><img src="/images/ios-14.jpg"/></p>
													<li>滑动到itunes store与Apple store，点击进去</li>
													<p><img src="/images/ios-18.jpg"/></p>
													<li>点击你的apple账号，点击退出登录</li>
													<p><img src="/images/ios-17.jpg"/></p>
													<li>退出你的apple账号后，点击登录，登录你新注册的外区apple ID</li>
													<li>回到主屏幕，点击Apple store，点击屏幕右下角的搜索（Search）在搜索框里面输入shadowrocket，看到shadowrocket软件，点击购买(Get)或者下载，此软件非免费，并非本站开发和提供，属于第三方软件，自身不带任何节点，售价在2.99美元，请自行决定是否购买，Apple Store有免费的第三方SSR软件Potatso Lite可供下载使用，此软件同样不带节点，以上两款SSR软件都可可使用本站节点</li>
													<p><img src="/images/ios-3.jpg"/></p>
													
												</ol>
											</ul>
											<ul>
												<h3><li>导入节点</li> </h3>
												<ul>
													<li>返回浏览器，打开云霄阁网站，登录后在用户中心，往下滑动找到快速添加节点，点击SSR，点击IOS，下面有两种添加节点方法</li>
													<p><img src="/images/ios-1.jpg"></p>
													<li>方法一（推荐）：</li>
													<ol>
														<li>找到订阅地址，点击复制订阅地址</li>
														<p><img src="/images/ios-2.jpg"/></p>
														<li>返回主屏幕，找到shadowrocket软件，点击打开，然后点击软件右上角的+号</li>
														<p><img src="/images/ios-4.jpg"/></p>
														
														<li>点击类型</li>
														<p><img src="/images/ios-5.jpg"/></p>
														<li>类型选择Subscribe</li>
														<p><img src="/images/ios-6.jpg"/></p>
														<li>在URL输入框粘贴前面在网站复制的订阅地址，在备注里面填入云霄阁，点击右上角的完成</li>
														<p><img src="/images/ios-7.jpg"/></p>
														<li>更新完成后节点就会出来了，由于节点是禁Ping的，所以你点击那个延迟测试是会显示超时的，如需要测试，请到软件设置里面把延迟测试方法改为TCP就可以测试了。</li>
														<p><img src="/images/ios-8.jpg"/></p>
														
													</ol>
													<li>方法二：</li>
													<ol>
														<li>找到小火箭一键订阅按钮，在Safari浏览器里面点击它，就会自动跳转到shadowrocket并添加节点了</li>
														
														<p><img src="/images/ios-2.1.jpg"/></p>
														
													</ol>
												</ul>
											</ul>
											<ul>
												<h3><li>选择节点并开始使用</li></h3>
												<ol>
												    <li>选择一个节点</li>
													<p><img src="/images/ios-9.jpg"/></p>
													<li>滑动到最顶部，全局路由那里要选择配置或者全局，点击箭头所示的开关按钮</li>
													<p><img src="/images/ios-10.jpg"/></p>
													<li>在弹出的弹窗点击Allow</li>
													<p><img src="/images/ios-11.jpg"/></p>
													<li>输入手机锁屏密码或者通过指纹、面部识别确认</li>
													<p><img src="/images/ios-12.jpg"/></p>
													<li>如箭头所示，这就表示连上节点了，你可以在Safari浏览器打开谷歌或者YouTube试试了</li>
													<p><img src="/images/ios-13.jpg"/></p>
													
												</ol>
												<ul>以上教程均为IOS系统shadowrocket代理软件的步骤，如果安装过其他代理软件可能产生冲突</ul>
												<ul>shadowrocket还可以通过扫码添加节点，你可以在节点列表点击查看节点二维码</ul>
											</ul>											
										</div>

										<div class="tab-pane fade page-course" id="all_ssr_android">
											<p>1：下载app（用户中心可以看到下载链接）</p>
											<p><img src="/images/c_android_1.jpg"/></p>
											<p>2：添加订阅并更新</p>
											<p><img src="/images/c_android_2.jpg"/></p>
											<p><img src="/images/c_android_3.jpg"/></p>
											<p><img src="/images/c_android_4.jpg"/></p>
											<p><img src="/images/c_android_5.jpg"/></p>
											<p>3：选择一个节点并设置路由</p>
											<p><img src="/images/c_android_6.jpg"/></p>
											<p><img src="/images/c_android_7.jpg"/></p>
											<p>4：连接</p>
											<p><img src="/images/c_android_8.jpg"/></p>
											<p>注释：国产安卓系统为定制系统，如需要Youtube、Google套件等，需要安装Google框架，具体机型如何安装各不相同，请直接查找教程</p>
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
