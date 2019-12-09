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
										<p>充值不到账可能是以下原因导致，请查看！</p>
										<p>1，充值时关闭了网页二维码，导致无法自动到账；<br>
										2，网络不稳定导致充值不到账；<br>
										3，订单超时导致充值不到账，请检查网页二维码倒计时是否超时;<br>
										4，充值金额和实际付款金额不一致，导致无法自动到账。</p>
										
									</div>
								</div>
							</div>
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p>解决方法：请按以下格式发工单联系管理员处理。</p>										
										<p>工单标题：充值失败</p>
										<p>工单内容按下面格式填写：</p>
										<p>付款方式：支付宝？微信 （使用的付款方式）<br>
										充值金额：xx元 （充值了多少钱）<br>
										付款订单号：xxxxxxxxxxxxxxxxxxxxxxxxx  （付款订单号在支付宝/微信账单里面可以找到）<br>										
										充值时间：2019/4/10 09:12:22 （填写实际付款时间）</p>										
									</div>
								</div>
							</div>
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p>解决方法：请按以下格式发工单联系管理员处理。</p>										
										<p>工单标题：充值失败</p>
										<p>工单内容按下面格式填写：</p>
										<div class="form-group form-group-label">
										<label class="floating-label" for="code">付款方式：支付宝？微信 </label>
										<input class="form-control maxwidth-edit" id="meto" type="text">
										</div>
										<div class="form-group form-group-label">
										<label class="floating-label" for="code">充值金额 </label>
										<input class="form-control maxwidth-edit" id="meto" type="text">
										</div>
										<div class="form-group form-group-label">
										<label class="floating-label" for="code">付款订单号 </label>
										<input class="form-control maxwidth-edit" id="meto" type="text">
                                        </div>
										<div class="form-group form-group-label">
										<label class="floating-label" for="code">付款时间 </label>
										<input class="form-control maxwidth-edit" id="meto" type="text">
										</div>
									</div>
									<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="fanli-update" ><span class="icon">check</span>&nbsp;提交</button>
									</div>
								</div>
							</div>

							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p>点击下面按钮进入工单系统，点击右下角红色+号创建工单，然后按上面格式填写工单，提交后请留意查看管理员回复工单内容，工单系统入口在菜单栏可以看到。</p>										
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
