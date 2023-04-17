<!-- BEGIN: MAIN -->
<div class="col100 top bottom">
	<h2 class="plugin"><a href="{QWEBIRC_URL}">{PHP.L.qwebirc_qwebirc}</a></h2>
	<div><a href="{PHP.out.uri}#" onclick="window.open('http://webchat.freenode.net/?nick={QWEBIRC_USERNAME}..&channels={QWEBIRC_CHANNEL}&prompt=1','{QWEBIRC_POPNAME}','width=550,height=400,scrollbars=no,resizable=yes')">{PHP.L.qwebirc_popup_link}</a></div>
	<iframe src="http://webchat.freenode.net/?nick={QWEBIRC_USERNAME}..&channels={QWEBIRC_CHANNEL}&prompt=1" width="775" height="400"></iframe>
	<br /><br />
	{PHP.L.qwebirc_message}
</div>
<!-- END: MAIN -->