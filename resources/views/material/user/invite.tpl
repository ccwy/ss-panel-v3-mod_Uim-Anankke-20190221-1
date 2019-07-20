{include file='user/main.tpl'}

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">邀请</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
{if $user->class>1}
					<div class="col-xx-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">说明</p>
										<p>您每邀请1位用户注册，对方首次充值时您会获得对方充值金额 <code>{$config["code_payback"]} %</code> 的返利。</p>
										
										<p class="card-heading">累计返利总额：<code>{$paybacks_sum}</code> 元 （仅做统计）</p>
										<p class="card-heading">剩余返利金额：<code>{$user->fanli} </code> 元</p>
										
										<p>返利记录：<a class="btn btn-brand waves-attach" href="/user/fanlifile">点击查询</a> </p>    
										<p>返利提现：<a class="btn btn-brand waves-attach" href="/user/fanli">点击提现</a></p>
									</div>

								</div>
							</div>
						</div>
					</div>

					

					{if $user->invite_num!=-1}
					{if $user->id != 16 && $user->id != 36 && $user->id != 63 && $user->id != 85 && $user->id !=147 }	
					<div class="col-xx-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<div class="card-inner margin-bottom-no">
											<div class="cardbtn-edit">
													<div class="card-heading">邀请链接</div>
													{if $config['register_mode']!='close'}<div class="reset-flex"><span>重置链接</span><a class="reset-link btn btn-brand-accent btn-flat"><i class="icon">autorenew</i>&nbsp;</a></div>{/if}
											</div>
										<p>剩余可邀请次数：{if $user->invite_num<0}无限{else}<code>{$user->invite_num}</code>{/if}</p>
										<p>请将下面邀请链接给有需要的人注册使用，禁止将邀请链接给陌生人，禁止将邀请链接放到论坛，贴吧等公共场所，请保护好自己的邀请链接。</p>
										{if $config['register_mode']!='close'}
										<div class="invite-link">
											<input type="text" class="input form-control form-control-monospace cust-link" name="input1" readonly="" value="{$config["baseUrl"]}/auth/register?code={$code->code}">
											<button class="copy-text btn btn-subscription" type="button" data-clipboard-text="{$config["baseUrl"]}/auth/register?code={$code->code}">点击复制</button>				
										</div>
										{else}
										<div class="form-group">
							            <p>{$config["appName"]} 已停止用户注册，有其他问题，请发工单联系管理员</p>
						                </div>
										{/if}
									</div>
								</div>
							</div>
						</div>
					</div>
					{if $config['custom_invite_price']>=0}
					<div class="col-xx-12 {if $config['invite_price']>=0}col-lg-6{/if}">
							<div class="card margin-bottom-no">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<div class="card-inner margin-bottom-no">
												<div class="cardbtn-edit">
													<div class="card-heading">定制链接后缀 <code class="card-tag tag-green">{$config['custom_invite_price']} RMB/次</code></div>
													<button class="btn btn-flat" id="custom-invite-confirm"><span class="icon">check</span>&nbsp;</button>
												</div>
											<p>例:输入<code>vip</code>则链接变为<code>{$config["baseUrl"]}/auth/register?code=vip</code></p>
											<div class="form-group form-group-label">
												<label class="floating-label" for="custom-invite-link">输入链接后缀</label>
												<input class="form-control maxwidth-edit" id="custom-invite-link" type="num">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						{/if}
					{/if}
					{/if}

					{if $config['invite_price']>=0}
					<div class="col-xx-12 {if $config['custom_invite_price']>=0}col-lg-6{/if}">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
									<div class="cardbtn-edit">
											<div class="card-heading">购买邀请次数 <code class="card-tag tag-green">{$config['invite_price']} RMB/个</code></div>
											<button class="btn btn-flat" id="buy-invite"><span class="material-icons">shopping_cart</span></button>
									</div>		
										<p>在下方输入需要购买的邀请次数</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="buy-invite-num">输入购买次数</label>
											<input class="form-control maxwidth-edit" id="buy-invite-num" type="num">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					{/if}

                   	{else}

                  	<div class="col-xx-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
                                 	<p class="card-heading">邀请链接</p>
									<h3>{$user->user_name}，您不是VIP暂时无法使用邀请链接，<a href="/user/shop">成为VIP请点击这里</a></h3>
								</div>
							</div>
						</div>
					</div>

					{/if}
					
	
				<div aria-hidden="true" class="modal modal-va-middle fade" id="invite_reset_modal" role="dialog" tabindex="-1">
					<div class="modal-dialog modal-xs">
						<div class="modal-content">
							<div class="modal-heading">
								<a class="modal-close" data-dismiss="modal">×</a>
								<h2 class="modal-title">确认要重置邀请链接？</h2>
							</div>
							<div class="modal-inner">
								<p>请您确认。</p>
							</div>
							<div class="modal-footer">
								<p class="text-right"><button class="btn btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal" type="button">取消</button><button class="btn btn-flat btn-brand-accent" data-dismiss="modal" id="invite_reset_link" type="button">确定</button></p>
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

<script>
	$(function(){
		new Clipboard('.copy-text');
	});

	$(".copy-text").click(function () {
		$("#result").modal();
		$("#msg").html("已复制到您的剪贴板，请您继续接下来的操作。");
	});
	


    $(document).ready(function () {
        $("#invite").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/invite",
                dataType: "json",
                success: function (data) {
                    window.location.reload();
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
                }
            })
        })
    })
</script>

<script>

$("#buy-invite").click(function () {
    $.ajax({
        type: "POST",
        url: "/user/buy_invite",
        dataType: "json",
        data: {
            num: $("#buy-invite-num").val(),
        },
        success: function (data) {
             if (data.ret) {
     			$("#result").modal();
				$("#msg").html(data.msg);
				window.setTimeout("location.href='/user/invite'", {$config['jump_delay']});
	        } else {
                $("#result").modal();
			    $("#msg").html(data.msg);
            }
	    },
        error: function (jqXHR) {
            $("#result").modal();
        	$("#msg").html(data.msg+"     出现了一些错误。");
        }
    })
});

$("#custom-invite-confirm").click(function () {
    $.ajax({
        type: "POST",
        url: "/user/custom_invite",
        dataType: "json",
        data: {
            customcode: $("#custom-invite-link").val(),
        },
        success: function (data) {
             if (data.ret) {
     			$("#result").modal();
				$("#msg").html(data.msg);
				window.setTimeout("location.href='/user/invite'", {$config['jump_delay']});
	        } else {
                $("#result").modal();
			    $("#msg").html(data.msg);
            }
	    },
        error: function (jqXHR) {
            $("#result").modal();
        	$("#msg").html(data.msg+"     出现了一些错误。");
        }
    })
});

</script>

<script>
$(".reset-link").click(function () {
 $("#invite_reset_modal").modal();
});
	
$("#invite_reset_link").click(function () {
	$("#result").modal();
	$("#msg").html("已重置您的邀请链接，复制您的邀请链接发送给其他人！");
	window.setTimeout("location.href='/user/inviteurl_reset'", {$config['jump_delay']});
});
</script>

<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
