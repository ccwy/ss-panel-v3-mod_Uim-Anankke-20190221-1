{include file='admin/main.tpl'}

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">汇总</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
					<div class="col-xx-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<p>下面是系统运行情况简报；用户总余额  {$sts->moneyone()} 元，用户总返利  {$sts->fanlione()} 元，总付费用户  {$sts->classuseraa()}  人 ，月付用户   {$sts->classusermoth()}   人，年付用户   {$sts->classuseryear()}   人， 全站已用总流量   {$sts->ssnodeTrafficUsage()} </p>
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
													text: "用户总余额 {$sts->moneyone()} 元",
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
															y: {$sts->todayIncome()/$sts->thisyearIncome()*100}, legendText:"今日流水 {number_format($sts->todayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->todayIncome()}元", indexLabel: "今日流水 {number_format($sts->todayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->todayIncome()}元"
														},
														{
															y: {$sts->yesterdayIncome()/$sts->thisyearIncome()*100}, legendText:"{date("d")-1}日流水 {number_format($sts->yesterdayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->yesterdayIncome()}元", indexLabel: "{date("d")-1}日流水 {number_format($sts->yesterdayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->yesterdayIncome()}元"
														},
														{
															y: {$sts->twodayIncome()/$sts->thisyearIncome()*100}, legendText:"{date("d")-2}日流水 {number_format($sts->twodayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->twodayIncome()}元", indexLabel: "{date("d")-2}日流水 {number_format($sts->twodayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->twodayIncome()}元"
														},
														{
															y: {$sts->threedayIncome()/$sts->thisyearIncome()*100}, legendText:"{date("d")-3}日流水 {number_format($sts->threedayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->threedayIncome()}元", indexLabel: "{date("d")-3}日流水 {number_format($sts->threedayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->threedayIncome()}元"
														},
													    {
															y: {$sts->fourdayIncome()/$sts->thisyearIncome()*100}, legendText:"{date("d")-4}日流水 {number_format($sts->fourdayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->fourdayIncome()}元", indexLabel: "{date("d")-4}日流水 {number_format($sts->fourdayIncome()/$sts->thisyearIncome()*100,2)}% {$sts->fourdayIncome()}元"
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
													text: "用户在线情况(总用户 {$sts->getTotalUser()}人)",
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
															y: {(($sts->getUnusedUser()/$sts->getTotalUser()))*100}, legendText:"从未在线的用户 {number_format((($sts->getUnusedUser()/$sts->getTotalUser()))*100,2)}% {(($sts->getUnusedUser()))}人", indexLabel: "从未在线的用户 {number_format((($sts->getUnusedUser()/$sts->getTotalUser()))*100,2)}% {(($sts->getUnusedUser()))}人"
														},
														{
															y: {(($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())/$sts->getTotalUser())*100}, legendText:"一天以前在线的用户 {number_format((($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())/$sts->getTotalUser())*100,2)}% {($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())}人", indexLabel: "一天以前在线的用户 {number_format((($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())/$sts->getTotalUser())*100,2)}% {($sts->getTotalUser()-$sts->getOnlineUser(86400)-$sts->getUnusedUser())}人"
														},
														{
															y: {($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))/$sts->getTotalUser()*100}, legendText:"一天内在线的用户 {number_format(($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))}人", indexLabel: "一天内在线的用户 {number_format(($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(86400)-$sts->getOnlineUser(3600))}人"
														},
														{
															y: {($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))/$sts->getTotalUser()*100}, legendText:"一小时内在线的用户 {number_format(($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))}人", indexLabel: "一小时内在线的用户 {number_format(($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(3600)-$sts->getOnlineUser(60))}人"
														},
														{
															y: {($sts->getOnlineUser(60))/$sts->getTotalUser()*100}, legendText:"一分钟内在线的用户 {number_format(($sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(60))}人", indexLabel: "一分钟内在线的用户 {number_format(($sts->getOnlineUser(60))/$sts->getTotalUser()*100,2)}% {($sts->getOnlineUser(60))}人"
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
													text: "用户数量(总数 {$sts->getTotalUser()}人，付费数{$sts->classuseraa()}人)",
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
															y: {$sts->classuseroff()/$sts->getTotalUser()*100}, legendText:"已过期用户 {number_format($sts->classuseroff()/$sts->getTotalUser()*100,2)}% {$sts->classuseroff()}人", indexLabel: "已过期用户 {number_format($sts->classuseroff()/$sts->getTotalUser()*100,2)}% {$sts->classuseroff()}人"
														},
														{
															y: {$sts->classusermoth()/$sts->getTotalUser()*100}, legendText:"月付用户 {number_format($sts->classusermoth()/$sts->getTotalUser()*100,2)}% {$sts->classusermoth()}人", indexLabel: "月付用户 {number_format($sts->classusermoth()/$sts->getTotalUser()*100,2)}% {$sts->classusermoth()}人"
														},														
														{
															y: {$sts->classuseryear()/$sts->getTotalUser()*100}, legendText:"年付用户 {number_format($sts->classuseryear()/$sts->getTotalUser()*100,2)}% {$sts->classuseryear()}人", indexLabel: "年付用户 {number_format($sts->classuseryear()/$sts->getTotalUser()*100,2)}% {$sts->classuseryear()}人"
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
									
										<div id="traffic_chart" style="height: 300px; width: 100%;"></div>
										
										<script src="/theme/material/js/canvasjs.min.js"></script>
										<script type="text/javascript">
											var chart = new CanvasJS.Chart("traffic_chart",
											{
												title:{
													text: "今年新增( {$sts->thisyearreg()}人)",
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
															y: {$sts->todayreg()/$sts->thisyearreg()*100}, legendText:"今天新增 {number_format($sts->todayreg()/$sts->thisyearreg()*100,2)}% {$sts->todayreg()}人", indexLabel: "今天新增 {number_format($sts->todayreg()/$sts->thisyearreg()*100,2)}% {$sts->todayreg()}人"
														},
														{
															y: {$sts->yesterdayreg()/$sts->thisyearreg()*100}, legendText:"昨天新增 {number_format($sts->yesterdayreg()/$sts->thisyearreg()*100,2)}% {$sts->yesterdayreg()}人", indexLabel: "昨天新增 {number_format($sts->yesterdayreg()/$sts->thisyearreg()*100,2)}% {$sts->yesterdayreg()}人"
														},														
														{
															y: {$sts->thisMonthreg()/$sts->thisyearreg()*100}, legendText:"本月新增 {number_format($sts->thisMonthreg()/$sts->thisyearreg()*100,2)}% {$sts->thisMonthreg()}人", indexLabel: "本月新增 {number_format($sts->thisMonthreg()/$sts->thisyearreg()*100,2)}% {$sts->thisMonthreg()}人"
														},
														{
															y: {$sts->lastMonthreg()/$sts->thisyearreg()*100}, legendText:"上月新增 {number_format($sts->lastMonthreg()/$sts->thisyearreg()*100,2)}% {$sts->lastMonthreg()}人", indexLabel: "上月新增 {number_format($sts->lastMonthreg()/$sts->thisyearreg()*100,2)}% {$sts->lastMonthreg()}人"
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
						
					</div>
				</div>
			</section>
		</div>
	</main>



{include file='admin/footer.tpl'}
