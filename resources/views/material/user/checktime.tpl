


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">签到记录</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">
					
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="card-table">
									<div class="table-responsive table-user">
										{$Check_in_times->render()}
										<table class="table">
											<tr>
												
											    <th>ID</th>
												<th>签到用户</th>
												<th>签到流量</th>
												<th>签到时间</th>
												
											</tr>
											{foreach $Check_in_times as $Check_in_time}
												<tr>
													
												   <td>#{$Check_in_time->id}</td>  
												   <td>{$Check_in_time->user_name}</td>
													<td>{$Check_in_time->traffic}</td>
													<td>{$Check_in_time->check_time}</td>
													
												</tr>
											{/foreach}
										</table>
										{$Check_in_times->render()}
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>	
							
			</div>
			
			
			
		</div>
	</main>






{include file='user/footer.tpl'}






<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->





