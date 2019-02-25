	<footer class="ui-footer">
		<div class="container">
			<marquee>&copy;{date("Y")} {$config["appName"]} |  <a href="/fstaffs">STAFF</a>  |  <a href="/toos">用户协议(TOS)</a></marquee>{if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}
		</div>
	</footer>

<!-- Google Analytics -->
    <script>
        window.ga=window.ga||function(){ (ga.q=ga.q||[]).push(arguments) };ga.l=+new Date;
        ga('create', 'UA-135138510-1', 'auto');
        var hostDomain = window.location.host || document.location.host || document.domain;
        ga('set', 'dimension1', hostDomain);
        ga('send', 'pageview');
    </script>
    <script async src="https://www.google-analytics.com/analytics.js"></script>
    <!-- End Google Analytics -->
    
	<!-- js -->
	<script src="/theme/material/js/jquery.validate.min.js"></script>
    {if isset($geetest_html)}
	<script src="/theme/material/js/gt.js"></script>
    {/if}
	<script src="/theme/material/js/base.min.js"></script>
	<script src="/theme/material/js/project.min.js"></script>
	<script src="/theme/material/js/clipboard.min.js"></script>
	
</body>
</html>
