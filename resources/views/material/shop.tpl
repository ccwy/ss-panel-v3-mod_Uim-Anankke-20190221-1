





{include file='header.tpl'}


<link rel="stylesheet" href="/theme/material/css/user.css">
	<!-- jquery -->
    <script src="/theme/material/js/jquery.min.js"></script>
    <script src="/theme/material/js/qrcode.min.js"></script>




	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">商品列表</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								
								   <p> 
								     1，本站无游戏节点，不保证可以观看TVB\NF\huhu等视频网站；不同套餐可用节点数量不同，高等级可使用全部低等级节点；<br>
								     2，<font color="red">套餐不可叠加，新购套餐会覆盖旧套餐的效果，本站不提供任何技术支持，使用方法请看教程；</font><br>
									 3，本站不提供试用和退款，注册或使用即代表您同意并愿意遵守本站<a href="/toos">用户协议（TOS）</a>。
								   </p>
							</div>
						</div>
					</div>

					<div class="ui-switch">
                         <div class="card">
							 <div class="card-main">
								 <div class="card-inner ui-switch">
										<div class="switch-btn" id="switch-cards"><a href="#" onclick="return false"><i class="mdui-icon material-icons">apps</i></a></div>
										<div class="switch-btn" id="switch-table"><a href="#" onclick="return false"><i class="mdui-icon material-icons">dehaze</i></a></div>
								 </div>
							 </div>
						 </div>
					</div>
			
								
            <div class="shop-flex">
				
				{foreach $shops as $shop}
                  <div class="card">
					  <div class="card-main">
								<div class="shop-name">{$shop->name}</div>
								<div class="shop-price">{$shop->price}</div>
								<div class="shop-tat">
								{if $shop->auto_reset_day == 0 }
									<span>{$shop->bandwidth()}</span> / <span>{$shop->class_expire()}</span>
									{else}
									<span>{$shop->bandwidth()}</span> / <span>30</span>
									{/if}
								</div>
								<div class="shop-cube">
									<div>
									{if $shop->auto_reset_day == 1 }
										<div class="cube-detail">
											<span></span>SVIP
										</div>
										<div class="cube-title">
											SVIP年付
										</div>
										{elseif $shop->id == 68 }
										<div class="cube-detail">
											<span></span>流量包
										</div>
										<div class="cube-title">
											年付用户专用
										</div>
										{elseif $shop->id == 60 }
										<div class="cube-detail">
											<span></span>仅
										</div>
										<div class="cube-title">
											变更在线ip数
										</div>
										{else}
										<div class="cube-detail">
											<span></span>VIP
										</div>
										<div class="cube-title">
											VIP月付
										</div>
										{/if}
									</div>
									<div>
										<div class="cube-detail">
											{if $shop->id == 60 }{$shop->connector()} <span>个</span>{elseif $shop->id == 76}无限制{elseif $shop->id == 68}不变{else}3 <span>个</span>{/if}
										</div>
										<div class="cube-title">
											客户端数量
										</div>
									</div>
									<div>
										<div class="cube-detail">
											{if {$shop->speedlimit()} == '0' }无限制{else}{$shop->speedlimit()}<span> Mbps</span>{/if}
										</div>
										<div class="cube-title">
											端口速率
										</div>
									</div>

								</div>
								<div class="shop-content">
								{if $shop->id == 68 }
								
									<div class="shop-content-left">仅重置流量为</div><div class="shop-content-right">50G</div>
									<div class="shop-content-left">仅限流量用尽</div><div class="shop-content-right">购买</div>
									<div class="shop-content-left">仅限年付用户</div><div class="shop-content-right">购买</div>
								{elseif $shop->id == 60}
								    <div class="shop-content-left">在线设备数</div><div class="shop-content-right">{$shop->connector()}个</div>
									<div class="shop-content-left">永久有效</div><div class="shop-content-right">购买</div>
									<div class="shop-content-left">无其他作用</div><div class="shop-content-right">购买</div>
								{else}	
									<div class="shop-content-left">等级有效期:</div><div class="shop-content-right">{$shop->class_expire()}<span>天</span></div>
									<div class="shop-content-left">重置周期:</div><div class="shop-content-right">{if $shop->auto_reset_day == 0 }N / A{else}30<span>天</span>{/if}</div>
									<div class="shop-content-left">每月流量:</div><div class="shop-content-right">{if $shop->auto_reset_day == 0 }N / A{else}{$shop->bandwidth()}<span>G</span> {/if}</div>
								{/if}	
								</div>
								<div class="shop-content-extra">
									{foreach $shop->content_extra() as $service}
									<div><span class="icon">{$service[0]}</span> {$service[1]}</div>
									{/foreach}
								</div>
								<a class="btn btn-brand-accent shop-btn" href="/user/shop">购买</a>
					  </div>
				  </div>
				{/foreach}
				
				<div class="flex-fix3"></div>
				<div class="flex-fix4"></div>
			</div>

            <div class="shop-table">
				
					{foreach $shops as $shop}
					<div class="shop-gridarea">
                        <div class="card">
								<div>
									<div class="shop-name"> <span>{$shop->name}</span></div>
									{if $shop->auto_reset_day == 1 }
									<div class="card-tag tag-gold">SVIP年付</div>
									{elseif $shop->id == 68}
									<div class="card-tag tag-gold">流量包</div>
									{elseif $shop->id == 60}
									<div class="card-tag tag-gold">变更同时在线ip为{$shop->connector()}个</div>
									{else}
									<div class="card-tag tag-gold">VIP月付</div>
									{/if}
									
									<div class="card-tag tag-orange">¥ {$shop->price}</div>
									
									{if $shop->id != 60}
									{if $shop->auto_reset_day!=1 }
									<div class="card-tag tag-cyan">{$shop->bandwidth()} G</div>
									{else}
									<div class="card-tag tag-cyan">每月 {$shop->bandwidth()} G</div>
									{/if}
									
									{if $shop->id != 68}									
									<div class="card-tag tag-blue">{$shop->class_expire()} 天</div>
									{/if}
									{/if}
								</div>
								<div>
								<i class="material-icons">expand_more</i>
								</div>	
						</div>
						<a class="btn btn-brand-accent shop-btn" href="/user/shop">购买</a>
						
						<div class="shop-drop dropdown-area">
						{if $shop->id != 60 && $shop->id != 68}						       					       
							<div class="card-tag tag-black">等级有效期</div> <div class="card-tag tag-blue">{$shop->class_expire()} 天</div>
						        	
							{if $shop->auto_reset_day!=1 }
							<div class="card-tag tag-black">重置周期</div> <div class="card-tag tag-blue">N/A</div>
							{else}
							<div class="card-tag tag-black">重置周期</div> <div class="card-tag tag-blue">30 天</div>
							<div class="card-tag tag-black">每月流量</div><div class="card-tag tag-blue">{$shop->bandwidth()}G</div>
							{/if}
								{if {$shop->speedlimit()} == '0' }
								<div class="card-tag tag-black">端口速率</div> <div class="card-tag tag-blue">无限制</div>
								{else}
								<div class="card-tag tag-black">端口限速</div> <div class="card-tag tag-blue">{$shop->speedlimit()} Mbps</div>
								{/if}
								
								<div class="card-tag tag-black">客户端数量</div> <div class="card-tag tag-blue">{if $shop->id == 60 }{$shop->connector()} 个{elseif $shop->id == 68}无{elseif $shop->id == 76}无限制{else}3 个{/if}</div>
						{/if}		
						{if $shop->id == 68 }
						        <div class="card-tag tag-black">重置流量</div><div class="card-tag tag-blue">{$shop->bandwidth()}G</div>
						{/if}
						{if $shop->id == 60}		
							    <div class="card-tag tag-black">客户端限制</div> <div class="card-tag tag-blue">{$shop->connector()} 个</div>
						{/if}
								
						</div>
					</div>
					{/foreach}
				
            </div>
					
				
					{include file='dialog.tpl'}
	</section>	
			</div>
			
			
			
		</div>
	</main>









{include file='footer.tpl'}


<script>
function buy(id,auto) {
	if(auto==0)
	{
		document.getElementById('autor').style.display="none";
	}
	else
	{
		document.getElementById('autor').style.display="";
	}
	shop=id;
	$("#coupon_modal").modal();
}

;(function(){
	
	//UI切换
	let elShopCard = $$.querySelector(".shop-flex");
	let elShopTable = $$.querySelector(".shop-table");
	
	let switchToCard = new UIswitch('switch-cards',elShopTable,elShopCard,'flex','tempshop');
	switchToCard.listenSwitch();
    
	let switchToTable = new UIswitch('switch-table',elShopCard,elShopTable,'flex','tempshop');
	switchToTable.listenSwitch();

	switchToCard.setDefault();
	switchToTable.setDefault();
	
	//手风琴
	let dropDownButton = document.querySelectorAll('.shop-table .card');
	let dropDownArea = document.querySelectorAll('.dropdown-area');
	let arrows = document.querySelectorAll('.shop-table .card i');
	
	for (let i=0;i<dropDownButton.length;i++) {
		rotatrArrow(dropDownButton[i],arrows[i]);
		custDropdown(dropDownButton[i], dropDownArea[i]);
	}

})();
    
</script>

<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
