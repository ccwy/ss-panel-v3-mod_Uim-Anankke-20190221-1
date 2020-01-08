


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">签到记录</h1>
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
												
												<p>我的签到记录，数据仅供参考，可能会漏记。</p>  
										</div>
										
										<div class="card-table">
											<div class="table-responsive table-user">
											{$check_time_logs->render()}
												<table class="table">
													<thead>
													<tr>
														
														<th>签到用户</th>
														<th>签到流量</th>
														<th>签到时间</th>
													</tr>
													</thead>
													<tbody>
													{foreach $check_time_logs as $check_time_log}
														<tr>
															<td>{$check_time_log->check_user_name}</td>
															<td>{$check_time_log->check_traffic}MB</td>
															<td>{$check_time_log->check_time}</td>
															
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$check_time_logs->render()}
											</div>
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
