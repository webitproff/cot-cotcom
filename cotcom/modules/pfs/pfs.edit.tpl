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
	<form id="edit" action="{PFS_ACTION}" method="post">
		<table>
			<tr>
				<td>{PHP.L.File}:</td>
				<td>{PFS_FILE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Date}:</td>
				<td>{PFS_DATE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Folder}:</td>
				<td>{PFS_FOLDER}</td>
			</tr>
			<tr>
				<td>{PHP.L.URL}:</td>
				<td><a href="{PFS_URL}">{PFS_URL}</a></td>
			</tr>
			<tr>
				<td>{PHP.L.Size}:</td>
				<td>{PFS_SIZE} {PHP.L.kb}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{PFS_DESC}</td>
			</tr>
			<tr>
				<td colspan="2" class="valid"><button type="submit">{PHP.L.Update}</button></td>
			</tr>
		</table>
	</form>
</div>

<!-- BEGIN: STANDALONE_FOOTER -->
</body>
</html>
<!-- END: STANDALONE_FOOTER -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
<!-- END: MAIN -->
