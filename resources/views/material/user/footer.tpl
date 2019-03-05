
	
	<footer class="ui-footer">
		<div class="container">
			<marquee>&copy;{date("Y")} {$config["appName"]} |  <a href="/fstaffs">STAFF</a>  |  <a href="/toos">用户协议(TOS)</a></marquee>{if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}
		</div>
	</footer>


	<!-- js -->
	<script src="/theme/material/js/jquery.validate.min.js"></script>
    {if isset($geetest_html)}
	<script src="/theme/material/js/gt.js"></script>
    {/if}
	<script src="/theme/material/js/base.min.js"></script>
	<script src="/theme/material/js/project.min.js"></script>
	<script src="/theme/material/js/clipboard.min.js"></script>
	</body>	
<!-- js -->
<script src="/theme/material/js/fuck.js">
<!-- js -->


</html>
