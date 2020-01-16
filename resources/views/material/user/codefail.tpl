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
										<h4>充值不到账可能是以下原因导致，请查看！</h4>
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
										<h4>解决方法：请填写下面内容，然后点击提交工单，你可以随时点击查询工单处理进度，工单处理完就到账了，请留意工单回复内容。请勿重复提交工单。</h4>																														
										<div class="form-group form-group-label">
										<label class="floating-label" for="code_meto">付款方式：（支付宝？微信）</label>
										<select class="form-control maxwidth-edit" id="code_meto">														
										<option value="1">支付宝</option>
										<option value="2">微信</option>														
										</select>
										<p class="form-control-guide"><i class="material-icons">info</i>选择你的付款方式</p>
										</div>										
										<div class="form-group form-group-label">
										<label class="floating-label" for="code_money">充值金额：（付款金额）</label>
										<input class="form-control maxwidth-edit" id="code_money" type="number">
										<p class="form-control-guide"><i class="material-icons">info</i>填写实际支付金额</p>
										</div>
										<div class="form-group form-group-label">
										<label class="floating-label" for="code_olrid">付款订单号：（可在账单里面找到）</label>
										<input class="form-control maxwidth-edit" id="code_olrid" type="text">
										<p class="form-control-guide"><i class="material-icons">info</i>打开支付宝，点击我的，点击账单，找到付款订单，点进去复制订单号粘贴到上面输入框；打开微信，搜索微信支付，点进去查看支付凭证，找到付款订单，点进去复制转账单号粘贴到上面输入框</p>
                                        </div>
										<div class="form-group form-group-label">
										<label class="floating-label" for="code_time">付款时间：（格式：{date('Y-m-d H:i:s')}）</label>
										<input class="form-control maxwidth-edit" id="code_time" type="text">
										<p class="form-control-guide"><i class="material-icons">info</i>准确的付款时间，付款时间在账单里面有，格式：{date('Y-m-d H:i:s')}</p>
										</div>
									
									    <div class="card-action-btn pull-left">
											<button class="btn btn-brand waves-attach" id="code_pay_update" >提交工单</button>   <a class="btn btn-brand waves-attach" href="/user/ticket">查询工单进度</a>   <a class="btn btn-brand waves-attach" href="/user/code">返回充值页面</a>
									    </div>
									</div>	
								</div>
							</div>

						</div>
						
					</div>
						{include file='dialog.tpl'}
					
				</div>
			</section>
		</div>
	</main>


{include file='user/footer.tpl'}

<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->

	
<script>

var wait=30;
function time(o) {
		if (wait == 0) {
			o.removeAttr("disabled");
			o.text("提交工单");
			wait = 30;
		} else {
			o.attr("disabled","disabled");
			o.text("提交工单(" + wait + ")");
			wait--;
			setTimeout(function() {
				time(o)
			},
			1000)
		}
	}

	$(document).ready(function () {
		$("#code_pay_update").click(function () {
		time($("#code_pay_update"));
			$.ajax({
				type: "POST",
				url: "codefil",
				dataType: "json",
				data: {
					code_meto: $("#code_meto").val(),
					code_money: $("#code_money").val(),
					code_olrid: $("#code_olrid").val(),
					code_time: $("#code_time").val()
				},
				success: function (data) {
					if (data.ret) {
						$("#result").modal();
						$("#msg").html(data.msg);
						
					} else {
						$("#result").modal();
						$("#msg").html(data.msg);
						
					}
				},
				error: function (jqXHR) {
					$("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
				}
			})
		})
})
</script>
		
