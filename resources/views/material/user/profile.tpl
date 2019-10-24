


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">使用记录</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						

						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-doubleinner">
											<p class="card-heading">最近五分钟使用IP</p>
											<p>请确认都为自己的IP，如有异常请及时修改连接密码或联系管理员封禁异常IP。</p>
									</div>
									<div class="card-table">
										<div class="table-responsive table-user">
											<table class="table table-fixed">
												<tr>
												       
													<th>IP</th>
													<th>归属地</th>
													
												</tr>
												{foreach $userip as $single=>$location}
													<tr>
													        
														<td>{$single}</td>
														<td>{$location}</td>
													</tr>
												{/foreach}
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-doubleinner">
											<p class="card-heading">最近十次登录IP</p>
											<p>请确认都为自己的IP，如有异常请及时修改密码。</p>
									</div>
									<div class="card-table">
										<div class="table-responsive table-user">
											<table class="table table-fixed">
												<tr>
												       

													<th>IP</th>
													<th>归属地</th>
													
												</tr>
												{foreach $userloginip as $single=>$location}
													<tr>
													      

														<td>{$single}</td>
														<td>{$location}</td>
														
													</tr>
												{/foreach}
											</table>
										</div>
									</div>
								</div>

							</div>
						</div>
						
						{if $user->disconnect_ip !='' ||  $user->isAdmin()}
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="card-doubleinner">
											 <div class="card-heading">已封禁IP列表</div>
											 <div class="form-group form-group-label">
											 <label class="floating-label">以下IP已被封禁，将无法连接本账号下的任何节点，请确认，如有异常或者误封，请联系管理员处理。</label>													
									         <textarea class="form-control maxwidth-edit" disabled="true" rows="10">{$user->disconnect_ip}</textarea>
											 </div>
									    </div>	
									</div>		
								</div>
							</div>
						</div>
						{/if}

					</div>

				</div>
			</section>
		</div>
	</main>










{include file='user/footer.tpl'}

<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->
