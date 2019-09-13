


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">工单</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12 col-sm-12">
				<section class="content-inner margin-top-no">
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<p>有任何问题请直接右下角的+号提交新问题，工单回复时间在24小时内，工单回复时间在上午9点到晚上21点之间。</p>
							</div>
						</div>
					</div>
					
					<div class="card">
						<div class="card-main">
							<div class="card-inner">
								<div class="card-table">
									<div class="table-responsive table-user">
										{$tickets->render()}
										<table class="table">
											<tr>
												
											  <!--  <th>ID</th>   -->
												<th>发起日期</th>
												<th>工单标题</th>
												<th>工单状态</th>
											   <th>操作</th>
											</tr>
											{foreach $tickets as $ticket}
												<tr>
													
												 <!--   <td>#{$ticket->id}</td>  -->
													<td>{$ticket->datetime()}</td>
													<td>{$ticket->title}</td>
													{if $ticket->status==1}
													<td>工单服务中</td>
													{else}
													<td>工单已结束</td>
													{/if}
													 <td>
														<a class="btn btn-brand" href="/user/ticket/{$ticket->id}/view">查看</a>
													</td>
												</tr>
											{/foreach}
										</table>
										{$tickets->render()}
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					<div class="fbtn-container">
						<div class="fbtn-inner">
							<a class="fbtn fbtn-lg fbtn-brand-accent" href="/user/ticket/create">+</a>
							
						</div>
					</div>

							
			</div>
			
			
			
		</div>
	</main>






{include file='user/footer.tpl'}






<!-- js -->
{if $config["fack"] == 'true'}{include file='fuck.tpl'}{/if}
<!-- js -->





