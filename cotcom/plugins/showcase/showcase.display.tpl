<!-- BEGIN: MAIN -->
<div class="col100 top bottom">
<h2>{TITLE}</h2>
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

		<form action="{ACTION}" method="post">
		<h3>{ITEM_TITLE}</h3>
		<a href="{ITEM_URL}">{ITEM_URL}</a><br />
		{ITEM_IMAGE}<br />
		<strong>{PHP.L.Tags}:</strong> {ITEM_TAGS}<br />
		{ITEM_DESCR}<br />
		{ITEM_SAVE} &nbsp;&nbsp; {ITEM_REMOVE} &nbsp;&nbsp; {ITEM_VALIDATE}
		</form>
		{PHP.L.Owner}: {ITEM_OWNER}

		<h3>{PHP.L.Comments}</h3>
		{ITEM_COMMENTS_DISPLAY}
</div>
<!-- END: MAIN -->