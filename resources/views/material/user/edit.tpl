


{include file='user/main.tpl'}

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">修改资料</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
             

{if $user->class > 1}
					<div class="col-xx-12 col-sm-6">
					
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">节点连接密码修改</div>
												<button class="btn btn-flat" id="ss-pwd-update"><span class="icon">check</span>&nbsp;</button>
										</div>
										
										<p>当前连接密码：<code id="ajax-user-passwd">{$user->passwd}</code><button class="kaobei copy-text btn btn-subscription" type="button" data-clipboard-text="{$user->passwd}">点击拷贝</button></p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="sspwd">新连接密码</label>
											<input class="form-control maxwidth-edit" id="sspwd" type="text">
										</div>
									</div>
								</div>
							</div>
						</div>
                      
                    
                      


						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">加密方式修改</div>
												<button class="btn btn-flat" id="method-update"><span class="icon">check</span>&nbsp;</button>
										</div>
										<p>注意：SS/SSD/SSR 支持的加密方式有所不同，请根据实际情况来进行选择</p>
										<p>当前加密方式：<code id="ajax-user-method" data-default="method">[{if URL::CanMethodConnect($user->method) == 2}SS/SSD{else}SS/SSR{/if} 可连接] {$user->method}</code></p>
										<div class="form-group form-group-label control-highlight-custom dropdown">
											<label class="floating-label" for="method">加密方式</label>
											<button id="method" class="form-control maxwidth-edit" data-toggle="dropdown" value="{$user->method}"></button>
											<ul class="dropdown-menu" aria-labelledby="method">
												{$method_list = $config_service->getSupportParam('method')}
												{foreach $method_list as $method}
												<li><a href="#" class="dropdown-option" onclick="return false;" val="{$method}" data="method">[{if URL::CanMethodConnect($method) == 2}SS/SSD{else}SS/SSR{/if} 可连接] {$method}</a></li>
												{/foreach}
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>  




						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">协议&混淆设置</div>
												<button class="btn btn-flat" id="ssr-update"><span class="icon">check</span>&nbsp;</button>
										</div>
										<p>当前协议：<code id="ajax-user-protocol" data-default="protocol">[{if URL::CanProtocolConnect($user->protocol) == 3}SS/SSD/SSR{else}SSR{/if} 可连接] {$user->protocol}</code></p>
										<p>注意1：如果需要兼容 SS/SSD 请设置为 origin 或选择带_compatible的兼容选项</p>
										<p>注意3：auth_chain 系为实验性协议，可能造成不稳定或无法使用，开启前请询问是否支持</p>
										<div class="form-group form-group-label control-highlight-custom dropdown">
											<label class="floating-label" for="protocol">协议</label>
											<button id="protocol" class="form-control maxwidth-edit" data-toggle="dropdown" value="{$user->protocol}"></button>
											<ul class="dropdown-menu" aria-labelledby="protocol">
												{$protocol_list = $config_service->getSupportParam('protocol')}
												{foreach $protocol_list as $protocol}
												<li><a href="#" class="dropdown-option" onclick="return false;" val="{$protocol}" data="protocol">[{if URL::CanProtocolConnect($protocol) == 3}SS/SSD/SSR{else}SSR{/if} 可连接] {$protocol}</a></li>
												{/foreach}
											</ul>
										</div>

									</div>

									<div class="card-inner">
										<p>当前混淆方式：<code id="ajax-user-obfs" data-default="obfs">[{if URL::CanObfsConnect($user->obfs) >= 3}SS/SSD/SSR{elseif URL::CanObfsConnect($user->obfs) == 1}SSR{else}SS/SSD{/if} 可连接] {$user->obfs}</code></p>
										<p>注意1：如果需要兼容 SS/SSD 请设置为 plain 或选择带_compatible的兼容选项</p>
										<p>注意2：SS/SSD 和 SSR 支持的混淆类型有所不同，simple_obfs_* 为 SS/SSD 的混淆方式，其他为 SSR 的混淆方式</p>
										<p>注意3：如果使用 SS/SSD 作为客户端，请确保自己知道如何下载并使用混淆插件</p>
										<div class="form-group form-group-label control-highlight-custom dropdown">
											<label class="floating-label" for="obfs">混淆方式</label>
											<button id="obfs" class="form-control maxwidth-edit" data-toggle="dropdown" value="{$user->obfs}"></button>
											<ul class="dropdown-menu" aria-labelledby="obfs">
											{$obfs_list = $config_service->getSupportParam('obfs')}
											{foreach $obfs_list as $obfs}
											<li><a href="#" class="dropdown-option" onclick="return false;" val="{$obfs}" data="obfs">[{if URL::CanObfsConnect($obfs) >= 3}SS/SSD/SSR{else}{if URL::CanObfsConnect($obfs) == 1}SSR{else}SS/SSD{/if}{/if} 可连接] {$obfs}</a></li>
											{/foreach}
										    </ul>
										</div>
									</div>

									

								</div>
							</div>
						</div>
					</div> 	
                       {/if}						








					<div class="col-xx-12 col-sm-6">

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
									<div class="cardbtn-edit">
										<div class="card-heading">账号登录密码修改</div>
										<button class="btn btn-flat" id="pwd-update"><span class="icon">check</span>&nbsp;</button>
									</div>
										<div class="form-group form-group-label">
											<label class="floating-label" for="oldpwd">当前密码</label>
											<input class="form-control maxwidth-edit" id="oldpwd" type="password">
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="pwd">新密码</label>
											<input class="form-control maxwidth-edit" id="pwd" type="password">
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="repwd">确认新密码</label>
											<input class="form-control maxwidth-edit" id="repwd" type="password">
										</div>
									</div>
									
								</div>
							</div>
						</div>



						{if $user->class > 1}
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">重置端口</div>
												<button class="btn btn-flat" id="portreset"><span class="icon">autorenew</span>&nbsp;</button>
										</div>
										
										<p>重置后1分钟内生效</p>
										<p>当前端口：<code id="ajax-user-port">{$user->port}</code></p>
									</div>
									

									{if $config['port_price_specify']>=0}
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">钦定端口</div>
												<button class="btn btn-flat" id="portspecify"><span class="icon">call_made</span>&nbsp;</button>
										</div>
										<p>不想摇号？来钦定端口吧～！</p>
										<p>价格：<code>{$config['port_price_specify']}</code>元/次</p>
										<p>端口范围：<code>{$config['min_port']}～{$config['max_port']}</code></p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="port-specify">在这输入想钦定的号</label>
											<input class="form-control maxwidth-edit" id="port-specify" type="num">
										</div>
									</div>
									
									{/if}
								</div>
							</div>
						</div>
						{/if}

                       {* {if $user->class > 1}
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">自定义规则</div>
												<button class="btn btn-flat" id="setpac"><span class="icon">settings</span>&nbsp;</button>
										</div>
										<p>适用于ACL/PAC/Surge</p>
										<p>格式参看<a href="https://adblockplus.org/zh_CN/filters">撰写 Adblock Plus 过滤规则</a></p>
										<p>IP 段请使用 |127.0.0.0/8 类似格式表示</p>
										<div class="form-group form-group-label control-highlight-custom">
											<label class="floating-label" for="pac">规则书写区</label>
											<code contenteditable="true" class="form-control maxwidth-edit" id="pac">{$user->pac}</code>
										</div>

									</div>
					
								</div>
							</div>
						</div>
						{/if} *}

						{if $config['enable_telegram'] == 'true'}
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
									{if $user->telegram_id != 0}
										<div class="cardbtn-edit">
												<div class="card-heading">Telegram 绑定</div>
												<div><a class="btn btn-flat btn-brand-accent" href="/user/telegram_reset"><span class="icon">not_interested</span>&nbsp;</a></div>
										</div>{/if}
                                      {if $user->telegram_id == 0}
										<p>Telegram 添加机器人账号 <a href="https://t.me/{$telegram_bot}">@{$telegram_bot}</a>，拍下下面这张二维码发给它。</p>
										<div class="form-group form-group-label">
											<div class="text-center">
												<div id="telegram-qr" class="qr-center"></div>
												{elseif $user->telegram_id != 0}
												当前绑定Telegram账户：<a href="https://t.me/{$user->im_value}">@{$user->im_value}</a>
												{/if}
									        </div>
									    </div>
								    </div>
							    </div>
						    </div>
					    </div>
						{/if}
					</div>




					{include file='dialog.tpl'}

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
	$("#msg").html("已复制到您的剪贴板。");
});


</script>

<script>
    $(document).ready(function () {
        $("#portreset").click(function () {
            $.ajax({
                type: "POST",
                url: "resetport",
                dataType: "json",
                data: {

                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-port").html(data.msg);
						$("#msg").html("设置成功，新端口是"+data.msg);
						
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
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#portspecify").click(function () {
            $.ajax({
                type: "POST",
                url: "specifyport",
                dataType: "json",
                data: {
					port: $("#port-specify").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-port").html($("#port-specify").val());
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
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#setpac").click(function () {
            $.ajax({
                type: "POST",
                url: "pacset",
                dataType: "json",
                data: {
                   pac: $("#pac").text()
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
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "password",
                dataType: "json",
                data: {
                    oldpwd: $("#oldpwd").val(),
                    pwd: $("#pwd").val(),
                    repwd: $("#repwd").val()
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
        })
    })
</script>

<script>

	{if $config['enable_telegram'] == 'true'}

	var telegram_qrcode = 'mod://bind/{$bind_token}';

	if ($$.getElementById("telegram-qr")) {
		let qrcode2 = new QRCode(document.getElementById("telegram-qr"));
		qrcode2.clear();
		qrcode2.makeCode(telegram_qrcode);
	}

	{/if}
</script>

<script>
    $(document).ready(function () {
        $("#wechat-update").click(function () {
            $.ajax({
                type: "POST",
                url: "wechat",
                dataType: "json",
                data: {
                    wechat: $("#wechat").val(),
					imtype: $("#imtype").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-im").html($("#imtype").find("option:selected").text()+" "+$("#wechat").val());
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
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#ssr-update").click(function () {
            $.ajax({
                type: "POST",
                url: "ssr",
                dataType: "json",
                data: {
                    protocol: $("#protocol").val(),
					obfs: $("#obfs").val()
					
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-protocol").html($("#protocol").val());
						$("#ajax-user-obfs").html($("#obfs").val());
						$("#ajax-user-obfs-param").html($("#obfs-param").val());
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
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#relay-update").click(function () {
            $.ajax({
                type: "POST",
                url: "relay",
                dataType: "json",
                data: {
                    relay_enable: $("#relay_enable").val(),
					relay_info: $("#relay_info").val()
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
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#unblock").click(function () {
            $.ajax({
                type: "POST",
                url: "unblock",
                dataType: "json",
                data: {
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-block").html("IP: "+data.msg+" 没有被封");
						$("#msg").html("发送解封命令解封 "+data.msg+" 成功");
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
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-test").click(function () {
            $.ajax({
                type: "POST",
                url: "gacheck",
                dataType: "json",
                data: {
                    code: $("#code").val()
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
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-set").click(function () {
            $.ajax({
                type: "POST",
                url: "gaset",
                dataType: "json",
                data: {
                    enable: $("#ga-enable").val()
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
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ss-pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "sspwd",
                dataType: "json",
                data: {
                    sspwd: $("#sspwd").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-passwd").html($("#sspwd").val());
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
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#mail-update").click(function () {
            $.ajax({
                type: "POST",
                url: "mail",
                dataType: "json",
                data: {
                    mail: $("#mail").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-mail").html($("#mail").val()=="1"?"发送":"不发送");
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
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#theme-update").click(function () {
            $.ajax({
                type: "POST",
                url: "theme",
                dataType: "json",
                data: {
                    theme: $("#theme").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href='/user/edit'", {$config['jump_delay']});
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
        })
    })
</script>



<script>
    $(document).ready(function () {
        $("#method-update").click(function () {
            $.ajax({
                type: "POST",
                url: "method",
                dataType: "json",
                data: {
                    method: $("#method").val()
                },
                success: function (data) {
					$("#ajax-user-method").html($("#method").val());
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html("修改成功");
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
        })
    })
</script>


<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
