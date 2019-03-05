<!--
I'm glad you use this theme, the development is no so easy, I hope you can keep the copyright, I will thank you so much.
It will not impact the appearance and can give developers a lot of support :)

很高兴您使用并喜欢该主题，开发不易 十分谢谢与希望您可以保留一下版权声明。它不会影响美观并可以给开发者很大的支持和动力。 :)
-->    
<footer class="ui-footer">
	<div class="container">
		<marquee>&copy;{date("Y")} {$config["appName"]} |  <a href="/fstaffs">STAFF</a>  |  <a class="Keep Right" href="/toos">用户协议(TOS)</a></marquee>{if $config["enable_analytics_code"] == 'true'}{include file='analytics.tpl'}{/if}
	</div>
</footer>
	

	<!-- js -->
	<script src="/theme/material/js/jquery.min.js"></script>
    {if isset($geetest_html)}
	<script src="/theme/material/js/gt.js"></script>
    {/if}
	<script src="/theme/material/js/base.min.js"></script>
	<script src="/theme/material/js/project.min.js"></script>
	

</body>
</html>
