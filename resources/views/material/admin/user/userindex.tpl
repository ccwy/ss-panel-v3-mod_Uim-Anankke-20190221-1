{include file='admin/main.tpl'}

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">系统分析</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
					<div class="col-xx-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<p>下面是系统运行情况简报；用户总余额  {$sts->moneyone()} 元，用户总返利  {$sts->fanlione()} 元，总付费用户  {$sts->classuseraa()}  人 ，月付用户   {$sts->classusermoth()}   人，年付用户   {$sts->classuseryear()}   人， 全站已用总流量   {$sts->ssnodeTrafficUsage()}  </p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ui-card-wrap">
					<div class="row">
					
						<div class="col-xx-12 col-sm-6">
						
						
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
									
										<div id="check_chart" style="height: 300px; width: 100%;"></div>
										
										<script src="/theme/material/js/canvasjs.min.js"></script>
                                        <script>
											var chart = new CanvasJS.Chart("check_chart",
											{
												title:{
													text: "累计流水(总流水 {$sts->totalIncome()} 元)",
													fontFamily: "Impact",
													fontWeight: "normal"
												},

												legend:{
													verticalAlign: "bottom",
													horizontalAlign: "center"
												},
												data: [
												{
													//startAngle: 45,
													indexLabelFontSize: 20,
													indexLabelFontFamily: "Garamond",
													indexLabelFontColor: "darkgrey",
													indexLabelLineColor: "darkgrey",
													indexLabelPlacement: "outside",
													type: "doughnut",
													showInLegend: true,
													dataPoints: [														
														{
															y: {$sts->moneyone()/$sts->totalIncome()*100}, legendText:"用户总余额 {number_format($sts->moneyone()/$sts->totalIncome()*100,2)}% {$sts->moneyone()}元", indexLabel: "用户总余额 {number_format($sts->moneyone()/$sts->totalIncome()*100,2)}% {$sts->moneyone()}元"
														},
														{
															y: {$sts->thisyearIncome()/$sts->totalIncome()*100}, legendText:"今年流水 {number_format($sts->thisyearIncome()/$sts->totalIncome()*100,2)}% {$sts->thisyearIncome()}元", indexLabel: "今年流水 {number_format($sts->thisyearIncome()/$sts->totalIncome()*100,2)}% {$sts->thisyearIncome()}元"
														},
														{
															y: {$sts->threeyearIncome()/$sts->totalIncome()*100}, legendText:"{$sts->oneyear()}年流水 {number_format($sts->threeyearIncome()/$sts->totalIncome()*100,2)}% {$sts->threeyearIncome()}元", indexLabel: "{date("Y")-1}年流水 {number_format($sts->threeyearIncome()/$sts->totalIncome()*100,2)}% {$sts->threeyearIncome()}元"
														},
														{
															y: {$sts->twoyearIncome()/$sts->totalIncome()*100}, legendText:"{$sts->twoyear()}年流水 {number_format($sts->twoyearIncome()/$sts->totalIncome()*100,2)}% {$sts->twoyearIncome()}元", indexLabel: "{date("Y")-2}年流水 {number_format($sts->twoyearIncome()/$sts->totalIncome()*100,2)}% {$sts->twoyearIncome()}元"
														},
														{
															y: {$sts->oneyearIncome()/$sts->totalIncome()*100}, legendText:"{$sts->threeyear()}年流水 {number_format($sts->oneyearIncome()/$sts->totalIncome()*100,2)}% {$sts->oneyearIncome()}元", indexLabel: "{date("Y")-3}年流水 {number_format($sts->oneyearIncome()/$sts->totalIncome()*100,2)}% {$sts->oneyearIncome()}元"
														},
														{
															y: {$sts->fouryearIncome()/$sts->totalIncome()*100}, legendText:"{$sts->threeyear()}年流水 {number_format($sts->fouryearIncome()/$sts->totalIncome()*100,2)}% {$sts->fouryearIncome()}元", indexLabel: "{date("Y")-4}年流水 {number_format($sts->fouryearIncome()/$sts->totalIncome()*100,2)}% {$sts->fouryearIncome()}元"
														}
													]
												}
												]
											});

											chart.render();

										</script>
										
									</div>
									
								</div>
							</div>
							
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
									
										<div id="alive_chart" style="height: 300px; width: 100%;"></div>
										
										<script src="/theme/material/js/canvasjs.min.js"></script>
										<script type="text/javascript">
											var chart = new CanvasJS.Chart("alive_chart",
											{
												title:{
													text: "今年月度流水(总流水 {$sts->thisyearIncome()}元)",
													fontFamily: "Impact",
													fontWeight: "normal"
												},

												legend:{
													verticalAlign: "bottom",
													horizontalAlign: "center"
												},
												data: [
												{
													//startAngle: 45,
													indexLabelFontSize: 20,
													indexLabelFontFamily: "Garamond",
													indexLabelFontColor: "darkgrey",
													indexLabelLineColor: "darkgrey",
													indexLabelPlacement: "outside",
													type: "doughnut",
													showInLegend: true,
													dataPoints: [
														{
															y: {$sts->thisMonthIncome()/$sts->thisyearIncome()*100}, legendText:"本月流水 {number_format($sts->thisMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->thisMonthIncome()}元", indexLabel: "本月流水 {number_format($sts->thisMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->thisMonthIncome()}元"
														},
														{
															y: {$sts->lastMonthIncome()/$sts->thisyearIncome()*100}, legendText:"{$sts->oneMonth()}月流水 {number_format($sts->lastMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->lastMonthIncome()}元", indexLabel: "{$sts->oneMonth()}月流水 {number_format($sts->lastMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->lastMonthIncome()}元"
														},
														{
															y: {$sts->oneMonthIncome()/$sts->thisyearIncome()*100}, legendText:"{$sts->twoMonth()}月流水 {number_format($sts->oneMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->oneMonthIncome()}元", indexLabel: "{$sts->twoMonth()}月流水 {number_format($sts->oneMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->oneMonthIncome()}元"
														},
														{
															y: {$sts->twoMonthIncome()/$sts->thisyearIncome()*100}, legendText:"{$sts->threeMonth()}月流水 {number_format($sts->twoMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->twoMonthIncome()}元", indexLabel: "{$sts->threeMonth()}月流水 {number_format($sts->twoMonthIncome()/$sts->thisyearIncome()*100,2)}% {$sts->twoMonthIncome()}元"
														}
													]
												}
												]
											});

											chart.render();
											
										</script>
										
									</div>
									
								</div>
							</div>
						
						
						</div>
						
						
						<div class="col-xx-12 col-sm-6">
						
						
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
									
										<div id="node_chart" style="height: 300px; width: 100%;"></div>
										
										<script src="/theme/material/js/canvasjs.min.js"></script>
										<script type="text/javascript">
											var chart = new CanvasJS.Chart("node_chart",
											{
												title:{
													text: "节点在线情况(节点数 {$sts->getTotalNodes()}个)",
													fontFamily: "Impact",
													fontWeight: "normal"
												},

												legend:{
													verticalAlign: "bottom",
													horizontalAlign: "center"
												},
												data: [
												{
													//startAngle: 45,
													indexLabelFontSize: 20,
													indexLabelFontFamily: "Garamond",
													indexLabelFontColor: "darkgrey",
													indexLabelLineColor: "darkgrey",
													indexLabelPlacement: "outside",
													type: "doughnut",
													showInLegend: true,
													dataPoints: [
														{if $sts->getTotalNodes()!=0}
															{
																y: {(1-($sts->getAliveNodes()/$sts->getTotalNodes()))*100}, legendText:"离线节点 {number_format((1-($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getTotalNodes()-$sts->getAliveNodes()}个", indexLabel: "离线节点 {number_format((1-($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getTotalNodes()-$sts->getAliveNodes()}个"
															},
															{
																y: {(($sts->getAliveNodes()/$sts->getTotalNodes()))*100}, legendText:"在线节点 {number_format((($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getAliveNodes()}个", indexLabel: "在线节点 {number_format((($sts->getAliveNodes()/$sts->getTotalNodes()))*100,2)}% {$sts->getAliveNodes()}个"
															}
														{/if}
													]
												}
												]
											});

											chart.render();
										</script>
										
									</div>
									
								</div>
							</div>
							
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
									
										<div id="traffic_chart" style="height: 300px; width: 100%;"></div>
										
										<script src="/theme/material/js/canvasjs.min.js"></script>
										<script type="text/javascript">
											var chart = new CanvasJS.Chart("traffic_chart",
											{
												title:{
													text: "流量使用情况(总分配流量 {$sts->getTotalTraffic()})",
													fontFamily: "Impact",
													fontWeight: "normal"
												},

												legend:{
													verticalAlign: "bottom",
													horizontalAlign: "center"
												},
												data: [
												{
													//startAngle: 45,
													indexLabelFontSize: 20,
													indexLabelFontFamily: "Garamond",
													indexLabelFontColor: "darkgrey",
													indexLabelLineColor: "darkgrey",
													indexLabelPlacement: "outside",
													type: "doughnut",
													showInLegend: true,
													dataPoints: [
														{if $sts->getRawTotalTraffic()!=0}
															{
																y: {(($sts->getRawUnusedTrafficUsage()/$sts->getRawTotalTraffic()))*100},label: "总剩余可用", legendText:"总剩余可用 {number_format((($sts->getRawUnusedTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getUnusedTrafficUsage()))}", indexLabel: "总剩余可用 {number_format((($sts->getRawUnusedTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getUnusedTrafficUsage()))}"
															},
															{
																y: {(($sts->getRawLastTrafficUsage()/$sts->getRawTotalTraffic()))*100},label: "总过去已用", legendText:"总过去已用 {number_format((($sts->getRawLastTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getLastTrafficUsage()))}", indexLabel: "总过去已用 {number_format((($sts->getRawLastTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getLastTrafficUsage()))}"
															},
															{
																y: {(($sts->getRawTodayTrafficUsage()/$sts->getRawTotalTraffic()))*100},label: "总今日已用", legendText:"总今日已用 {number_format((($sts->getRawTodayTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getTodayTrafficUsage()))}", indexLabel: "总今日已用 {number_format((($sts->getRawTodayTrafficUsage()/$sts->getRawTotalTraffic()))*100,2)}% {(($sts->getTodayTrafficUsage()))}"
															}
														{/if}
													]
												}
												]
											});

											chart.render();
										</script>
										
									</div>
									
								</div>
							</div>
						
						
						</div>
						
					</div>
				</div>
			</section>
		</div>
	</main>



{include file='admin/footer.tpl'}
