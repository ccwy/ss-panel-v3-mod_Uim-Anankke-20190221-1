	<footer class="ui-footer">
		<div class="container">
			<marquee>&copy;{date("Y")} {$config["appName"]} |  <a href="/fstaffs">STAFF</a>  |  <a href="/toos">用户协议(TOS)</a></marquee>{if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}
		</div>
	</footer>

	<!-- js -->
	
	
	<script src="/theme/material/js/jquery.dataTables.min.js"></script>
	<script src="/theme/material/js/jquery.validate.min.js"></script>
	<script src="/theme/material/js/dataTables.material.min.js"></script>
	
	<script src="/theme/material/js/base.min.js"></script>
	<script src="/theme/material/js/project.min.js"></script>
	{*<script type="text/javascript" color="0,217,255" opacity="0.5" count="49" src="https://cdn.jsdelivr.net/npm/canvas-nest.js@1.0.1"></script>*}

</body>
</html>
