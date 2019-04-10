{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">充值失败</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
						
						<div class="col-lg-12 col-md-12">
							<section class="content-inner margin-top-no">
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p>充值失败可能是以下原因导致，请查看！</p>
										<p>1，充值时关闭了网页二维码，导致无法自动到账；<br>
										2，网络不稳定导致充值不到账；<br>
										3，订单超时导致充值不到账，请检查网页二维码倒计时是否超时。</p>
										
									</div>
								</div>
							</div>
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p>解决方法，请按以下格式发送工单联系管理员处理。</p>										
										<p>工单标题：充值失败<br>										
										内容按下面格式填写：<br>
										付款方式：支付宝？微信 （使用的付款方式）<br>
										充值金额：xx元 （充值了多少钱）<br>
										付款订单号：xxxxxxxxxxxxxxxxxxxxxxxxx  （付款订单号在支付宝/微信账单里面可以找到）<br>										
										充值时间：2019/4/10 09:12:22 （付款时间）</p>										
									</div>
								</div>
							</div>

							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p>点击下面按钮进入工单系统，点击右下角红色+号创建工单，请留意查看管理员回复工单内容，工单系统入口在导航栏可以看到。</p>										
										<p><a class="btn btn-brand waves-attach" href="/user/ticket">点击进入工单系统</a></p>										
									</div>
								</div>
							</div>

						</div>
						
					</div>
						
					
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}



<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
