


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">返利记录</h1>
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
												<p class="card-heading">累计返利总额：<code>{$paybacks_sum}</code> 元 （仅做统计）</p>
												<p class="card-heading"><a class="btn btn-brand waves-attach" href="/user/fanli">提现</a> </p>  
										</div>
										
										<div class="card-table">
											<div class="table-responsive table-user">
											{$paybacks->render()}
												<table class="table">
													<thead>
													<tr>
														<th>###</th>
														<th>返利用户</th>
														<th>返利金额</th>
														<th>返利时间</th>
													</tr>
													</thead>
													<tbody>
													{foreach $paybacks as $payback}
														<tr>
															<td><b>{$payback->id}</b></td>
															{if $payback->user()!=null}
																<td>{$payback->user()->user_name}
																</td>
																{else}
																<td>已注销
																</td>
															{/if}
															</td>
															<td>{$payback->ref_get} 元</td>
															<td>{date('Y-m-d H:i:s',$payback->datetime)} </td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$paybacks->render()}
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
