<!-- BEGIN: MAIN -->
<div class="col70 top bottom page">
	<h2>{TITLE}</h2>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<table>
		<!-- BEGIN: ROW -->
		<tr>
			<!-- BEGIN: CELL -->
			<td class="{ODDEVEN}" style="width:30%;text-align:center;padding:15px">
				<h4><a href="{ITEM_LINK}">{ITEM_TITLE}</a></h4>
					{ITEM_IMAGE}<br />
				<strong>{PHP.L.Tags}:</strong> {ITEM_TAGS}
			</td>
			<!-- END: CELL -->
		</tr>
		<!-- END: ROW -->
	</table>

	<div class="pagination">{PAGEPREV} {PAGENAV} {PAGENEXT}</div>

	<hr>

	<!-- BEGIN: FORM -->
	<h4>{PHP.L.Add_another}</h4>
	<form action="{ACTION}" method="post">
		<input type="text" name="title" maxlength="{PHP.cfg.showcase.length}" placeholder="{PHP.L.Title}" />
		http://<input type="text" name="domain" placeholder="domain.tld" />
		<textarea name="descr" maxlength="255" placeholder="{PHP.L.Short_descr}"></textarea>
		<input type="text" name="tags" placeholder="{PHP.L.Tags_input}" /><br />
		<input type="submit" placeholder="{PHP.L.Submit}" />
	</form>
	<!-- END: FORM -->
</div>

<!-- BEGIN: VALIDATION -->
<aside class="col30 top bottom first page">

	<div class="block">
		<h3>{PHP.L.Validation_queue}</h3>
		<ul>
		<!-- BEGIN: ROW -->
			<li><a href="{ITEM_LINK}">{ITEM_TITLE}</a></li>
		<!-- END: ROW -->
		</ul>
	</div>
</aside>
<!-- END: VALIDATION -->

<!-- END: MAIN -->
