{include file='user/main.tpl'}
	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">在线设备数</h1>
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
										<p>在线设备数说明</p>
										<p>1，因防止有人恶意分享节点，本站注册用户默认限制同时在线设备数为 3 个；<br>
										2，如您有正当需求，需要增加账户同时在线设备数，请在此处购买；<br>
										3，同时在线设备60元永久为账号变更在线设备数为 6 个。
										</p>
										
									</div>
								</div>
							</div>
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<div class="nodename">在线设备数<code id="ajax-user-port">{$user->online_ip_count()} / {$user->node_connector}</code></div>
									
										 <p><i class="icon icon-lg">monetization_on</i>&nbsp;账户余额：&nbsp;<font color="red" size="5">{$user->money}</font>&nbsp;元</p>
										<p>点击下面按钮变更同时在线设备数为 6 个，并自动扣除账户余额 60 元。</p>
										
										<div class="form-group form-group-label">
											<button class="btn btn-brand waves-attach" id="buy-aliveip">购买在线设备数</button>
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

<script>
$("#buy-aliveip").click(function () {
    $.ajax({
        type: "POST",
        url: "/user/buy_aliveip",
        dataType: "json",
        data: {
            
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
        	$("#msg").html(data.msg+"     出现了一些错误。");
        }
    })
});
</script>


<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
