





{include file='user/main.tpl'}





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
								<p><i class="icon icon-lg">monetization_on</i>&nbsp;余额：&nbsp;<font color="red" size="5">{$user->money}</font>&nbsp;元</p>
								    <p>
									1，余额不足？您可以 <a href="/user/code">点我充值</a> 余额到账户；<br>
								    2，本站无游戏节点，不保证可以观看TVB\NF\huhu等视频网站；<br>
								    3，<font color="red">套餐不可叠加，新购套餐会覆盖旧套餐的效果；本站有节点分级，购买前请先</font><a href="/user/node">点击这里查看节点列表</a><br>
								    4，本站不提供退款，本站不提供任何技术支持，使用方法请看<a href="/user/guide">使用教程</a>；<br>
								    5，注册即代表您同意并愿意遵守本站<a href="/toos">用户协议（TOS）</a>。							
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
											{if $shop->id == 60 }{$shop->connector()} <span>个</span>{elseif $shop->id == 68}不变{else}{$user->node_connector} <span>个</span>{/if}
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
								<a class="btn btn-brand-accent shop-btn" href="javascript:void(0);" onClick="buy('{$shop->id}',{$shop->auto_renew})">购买</a>
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
						<a class="btn btn-brand-accent shop-btn" href="javascript:void(0);" onClick="buy('{$shop->id}',{$shop->auto_renew})">购买</a>
						
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
								
								<div class="card-tag tag-black">客户端限制</div> <div class="card-tag tag-blue">{if $shop->id == 60 }{$shop->connector()} 个{elseif $shop->id == 68}无{else}{$user->node_connector} 个{/if}</div>
						{/if}		
						{if $shop->id == 68 }
						        <div class="card-tag tag-black">重置流量</div><div class="card-tag tag-blue">{$shop->bandwidth()}G</div>
						{/if}		
						{if $shop->id == 60 }		
							    <div class="card-tag tag-black">客户端限制</div> <div class="card-tag tag-blue">{if $shop->id == 60 }{$shop->connector()} 个{elseif $shop->id == 68}无{else}{$user->node_connector} 个{/if}</div>
						{/if}
								
						</div>
					</div>
					{/foreach}
				
            </div>
					
					
					
					<div aria-hidden="true" class="modal modal-va-middle fade" id="coupon_modal" role="dialog" tabindex="-1">
						<div class="modal-dialog modal-xs">
							<div class="modal-content">
								<div class="modal-heading">
									<a class="modal-close" data-dismiss="modal">×</a>
									<h2 class="modal-title">您有优惠码吗？</h2>
								</div>
								<div class="modal-inner">
									<div class="form-group form-group-label">
										<label class="floating-label" for="coupon">有的话，请在这里输入。没有的话，直接确定吧</label>
										<input class="form-control maxwidth-edit" id="coupon" type="text">
									</div>
								</div>
								<div class="modal-footer">
									<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="coupon_input" type="button">确定</button></p>
								</div>
							</div>
						</div>
					</div>
					
					
					<div aria-hidden="true" class="modal modal-va-middle fade" id="order_modal" role="dialog" tabindex="-1">
						<div class="modal-dialog modal-xs">
							<div class="modal-content">
								<div class="modal-heading">
									<a class="modal-close" data-dismiss="modal">×</a>
									<h2 class="modal-title">订单确认</h2>
								</div>
								<div class="modal-inner">
									<p id="name">商品名称：</p>
									<p id="credit">优惠额度：</p>
									<p id="total">总金额：</p>

									<div class="checkbox switch">
										<label for="disableothers">
											<input checked class="access-hide" id="disableothers" type="checkbox">
											<span class="switch-toggle"></span>关闭旧套餐自动续费
										</label>
									</div>
									<br/>
									<div class="checkbox switch" id="autor">
										<label for="autorenew">
											<input checked class="access-hide" id="autorenew" type="checkbox">
											<span class="switch-toggle"></span>到期时自动续费
										</label>
									</div>
									
								</div>
								
								<div class="modal-footer">
									<p class="text-right"><button class="btn btn-flat btn-brand waves-attach" data-dismiss="modal" id="order_input" type="button">确定</button></p>
								</div>
							</div>
						</div>
					</div>
						
					{include file='dialog.tpl'}
	</section>
			</div>
			
			
			
		</div>
	</main>



{include file='user/footer.tpl'}
<script>
$(document).ready(function(){
    $("#result").modal();
    $("#msg").html("在购买套餐前，建议您先到<a href="/user/node">节点列表看看节点分级</a>，然后再回到这里选购合适的套餐。");
})
</script>
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
    

$("#coupon_input").click(function () {
		$.ajax({
			type: "POST",
			url: "coupon_check",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop
			},
			success: function (data) {
				if (data.ret) {
					$("#name").html("商品名称："+data.name);
					$("#credit").html("优惠额度："+data.credit);
					$("#total").html("总金额："+data.total);
					$("#order_modal").modal();
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});
	
$("#order_input").click(function () {

		if(document.getElementById('autorenew').checked)
		{
			var autorenew=1;
		}
		else
		{
			var autorenew=0;
		}

		if(document.getElementById('disableothers').checked){
			var disableothers=1;
		}
		else{
			var disableothers=0;
		}
			
		$.ajax({
			type: "POST",
			url: "buy",
			dataType: "json",
			data: {
				coupon: $("#coupon").val(),
				shop: shop,
				autorenew: autorenew,
				disableothers:disableothers
			},
			success: function (data) {
				if (data.ret) {
					$("#result").modal();
					$("#msg").html(data.msg);
					window.setTimeout("location.href='/user'", {$config['jump_delay']});
				} else {
					$("#result").modal();
					$("#msg").html(data.msg);
				}
			},
			error: function (jqXHR) {
				$("#result").modal();
                $("#msg").html(data.msg+"  发生了错误。");
			}
		})
	});

</script>

<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
