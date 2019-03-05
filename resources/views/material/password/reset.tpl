{include file='header.tpl'}


			<!-- 新的 -->
			<div class="authpage">
				<div class="container">
					
						<div class="auth-main auth-row auth-col-one">
							<div class="auth-top auth-row">
								<a class="boardtop-left" href="/">
									<div>首 页</div>
								</a>
								<div class="auth-logo">
									<img src="/images/authlogo.jpg" alt="">
								</div>
								<a href="/auth/login" class="boardtop-right">
									<div>登 录</div>
								</a>
							</div>
							<div class="auth-row">
								<div class="form-group-label auth-row row-login">
									<label class="floating-label" for="email">邮箱</label>
									<input class="form-control maxwidth-auth" id="email" type="text">
								</div>
							</div>
							
							<div class="btn-auth auth-row">
								<button id="reset" type="submit" class="btn btn-block btn-brand waves-attach waves-light">重置密码</button>
							</div>
							<div class="auth-help auth-row">
								<div class="auth-help-table auth-row auth-reset">
									<a href="" onclick="return false;" data-toggle='modal' data-target='#email_nrcy_modal'>收不到验证码？点击这里</a>
								</div>
							</div>
							<div class="auth-bottom auth-row auth-reset">
								<div class="tgauth">
								<p>请妥善保管好自己的登录密码</p>	
								</div>
							</div>
						</div>
				
					<div class="card auth-tg">
						<div class="card-main">
							
						</div>
					</div>
				</div>
			</div>
										
								
						{include file='dialog.tpl'}
						
						<div aria-hidden="true" class="modal modal-va-middle fade" id="email_nrcy_modal" role="dialog" tabindex="-1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-heading">
										<h2 class="modal-title">收不到验证码？</h2>
									</div>
									<div class="modal-inner">
										{include file='email_nrcy.tpl'}
									</div>
									<div class="modal-footer">
										<p class="text-right">
										<button class="btn btn-flat btn-brand-accent waves-attach waves-effect" data-dismiss="modal" type="button">我知道了</button>
                                      </p>
									</div>
								</div>
							</div>
						</div>
						
					
	
{include file='footer.tpl'}


<script>
    $(document).ready(function(){
        function reset(){
			$("#result").modal();
            $("#msg").html("sending, please wait....");
            $.ajax({
                type:"POST",
                url:"/password/reset",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                },
                success:function(data){
                    if(data.ret == 1){
                        $("#result").modal();
                        $("#msg").html(data.msg);
                       // window.setTimeout("location.href='/auth/login'", 2000);
                    }else{
                        $("#result").modal();
                        $("#msg").html(data.msg);
                    }
                },
                error:function(jqXHR){
                    $("#result").modal();
                    $("#msg").html(data.msg);
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                reset();
            }
        });
        $("#reset").click(function(){
            reset();
        });
    })
</script>

{if $config['fack'] == 'true'}{include file='fuck.tpl'}{/if}
{if $geetest_html != null}
    <script>
        var handlerEmbed = function (captchaObj) {
            // 将验证码加到id为captcha的元素里

            captchaObj.onSuccess(function () {
                validate = captchaObj.getValidate();
            });

            captchaObj.appendTo("#embed-captcha");

            captcha = captchaObj;
            // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
        };

        initGeetest({
            gt: "{$geetest_html->gt}",
            challenge: "{$geetest_html->challenge}",
            product: "embed", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
            offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
        }, handlerEmbed);
    </script>
{/if}
