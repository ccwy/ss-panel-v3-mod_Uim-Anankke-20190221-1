<ul>
	<img src="/images/email_nrcy.jpg" height="458" width="468">
	<br />
	
	<p>如果发现“收信查询”中没有找到邮件，请<a href="/cous">点击这里</a>联系管理员：</p>
	
	{if $config["enable_admin_contact"] == 'true'}
	{if $config["admin_contact1"]!=null}
	<li>{$config["admin_contact1"]}</li>
	{/if}
	{if $config["admin_contact2"]!=null}
	<li>{$config["admin_contact2"]}</li>
	{/if}
	{if $config["admin_contact3"]!=null}
	<li>{$config["admin_contact3"]}</li>
	{/if}
	{/if}
</ul>