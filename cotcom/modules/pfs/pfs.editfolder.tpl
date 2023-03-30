<!-- BEGIN: MAIN -->

<!-- BEGIN: STANDALONE_HEADER -->
<html>
<head>
<title>{PHP.cfg.maintitle}</title>
<link href="{PHP.cfg.themes_dir}/{PHP.theme}/css/{PHP.scheme}.css" type="text/css" rel="stylesheet" />
</head>
<body>
<!-- END: STANDALONE_HEADER -->

<div class="pfs container mb-4 mt-4">
	<h2>{PFS_TITLE}</h2>
	<!-- IF {PFS_SUBTITLE} --><small>{PFS_SUBTITLE}</small><!-- ENDIF -->
	{FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"}
	<form id="editfolder" action="{PFS_ACTION}" method="post">
		<table class="cells">
			<!--<tr>
				<td class="width20">{PHP.L.pfs_parentfolder}:</td>
				<td class="width80">{PFF_FOLDER}</td>
			</tr>-->
			<tr>
				<td>{PHP.L.Folder}:</td>
				<td>{PFF_TITLE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{PFF_DESC}</td>
			</tr>
			<tr>
				<td>{PHP.L.Date}:</td>
				<td>{PFF_DATE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Updated}:</td>
				<td>{PFF_UPDATED}</td>
			</tr>
			<tr>
				<td>{PHP.L.pfs_ispublic}</td>
				<td>
					{PFF_ISPUBLIC}
				</td>
			</tr>
			<tr>
				<td>{PHP.L.pfs_isgallery}</td>
				<td>
					{PFF_ISGALLERY}
				</td>
			</tr>
			<tr>
				<td colspan="2" class="valid">
					<button type="submit">{PHP.L.Update}</button>
				</td>
			</tr>
		</table>
	</form>
</div>
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
<!-- BEGIN: STANDALONE_FOOTER -->
</body>
</html>
<!-- END: STANDALONE_FOOTER -->

<!-- END: MAIN -->
