<!-- BEGIN: MAIN -->

<!-- BEGIN: STANDALONE_HEADER -->
<html>
<head>
<title>{PHP.L.pfs_title} - {PHP.cfg.maintitle}</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<base href="{PHP.cfg.mainurl}/" />
{PFS_HEAD}
<script type="text/javascript">
//<![CDATA[
{PFS_HEADER_JAVASCRIPT}
//]]>
</script>
<link href="themes/cotcom/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="themes/cotcom/assets/css/mkp.min.css" type="text/css" rel="stylesheet" />
<link href="themes/cotcom/css/cot-style.css" type="text/css" rel="stylesheet" />
</head>
<body>
<!-- END: STANDALONE_HEADER -->
<div class="pfs container mb-4 mt-4">
<div class="col70 top bottom pfs">
	<h2>{PFS_TITLE} {PFS_PATH}</h2>
	<!-- IF {PFS_SUBTITLE} --><small>{PFS_SUBTITLE}</small><!-- ENDIF -->
	<div style="padding:10px 20px;">
		<p>{PHP.L.pfs_totalsize}: {PFS_TOTALSIZE} {PHP.L.Of} {PFS_MAXTOTAL} ({PFS_PERCENTAGE}%)</p>
		<div class="bar_back">
			<div class="bar_front" style="width:{PFS_PERCENTAGE}%;"></div>
		</div>
		<p>{PHP.L.pfs_maxsize}: {PFS_MAXFILESIZE}</p>
	</div>

	<!-- BEGIN: PFS_ERRORS -->
	<!-- BEGIN: PFS_ERRORS_ROW -->
	<div class="error">{PFS_ERRORS_ROW_MSG}</div>
	<!-- END: PFS_ERRORS_ROW -->
	<!-- END: PFS_ERRORS -->

	<fieldset>
		<legend>{PFF_FOLDERCOUNT} {PHP.L.Folders} / {PFF_FILESCOUNT} {PHP.L.Files} ({PHP.L.pfs_onpage}: {PFF_ONPAGE_FOLDERS} {PHP.L.Folders} / {PFF_ONPAGE_FILES} {PHP.L.Files})</legend>
		<table class="cells">
			<tr>
				<td class="coltop width10">&nbsp;</td>
				<td class="coltop width30">{PHP.L.Folder} / {PHP.L.Gallery}</td>
				<td class="coltop width10">{PHP.L.Public}</td>
				<td class="coltop width10">{PHP.L.Files}</td>
				<td class="coltop width10">{PHP.L.Size}</td>
				<td class="coltop width15">{PHP.L.Updated}</td>
				<td class="coltop width15">{PHP.L.Action}</td>
			</tr>
			<!-- BEGIN: PFF_ROW -->
			<tr>
				<td class="centerall"><a href="{PFF_ROW_URL}">{PFF_ROW_ICON}</a></td>
				<td>
					<p class="strong"><a href="{PFF_ROW_URL}">{PFF_ROW_TITLE}</a></p>
					<p class="small">{PFF_ROW_DESC}</p>
				</td>
				<td class="centerall">{PFF_ROW_ISPUBLIC}</td>
				<td class="centerall">{PFF_ROW_FCOUNT}</td>
				<td class="centerall">{PFF_ROW_FSIZE}</td>
				<td class="centerall">{PFF_ROW_UPDATED}</td>
				<td class="centerall">
					<a href="{PFF_ROW_EDIT_URL}">{PHP.L.Edit}</a>
					<a href="{PFF_ROW_DELETE_URL}">x</a>
				</td>
			</tr>
			<!-- END: PFF_ROW -->
		</table>
		<p class="pagination">{PFF_PAGING_PREV}{PFF_PAGING_CURRENT}{PFF_PAGING_NEXT}</p>
	</fieldset>

	<fieldset>
		<legend>{PFS_FILESCOUNT} {PHP.L.Files} {PFS_INTHISFOLDER} ({PHP.L.pfs_onpage}: {PFS_ONPAGE_FILES} {PHP.L.Files}) {PFS_SHOWTHUMBS}</legend>
		<table class="cells">
			<tr>
				<td class="coltop width10">&nbsp;</td>
				<td class="coltop width40">{PHP.L.File}</td>
				<td class="coltop width10">{PHP.L.Hits}</td>
				<td class="coltop width10">{PHP.L.Size}</td>
				<td class="coltop width15">{PHP.L.Date}</td>
				<td class="coltop width15">{PHP.L.Action}</td>
			</tr>
			<!-- BEGIN: PFS_ROW -->
			<tr>
				<td class="centerall">{PFS_ROW_ICON}</td>
				<td>
					<p class="strong"><a href={PFS_ROW_FILE_URL}>{PFS_ROW_FILE}</a></p>
					<p class="small">{PFS_ROW_TYPE} / {PFS_ROW_DESC}</p>
				</td>
				<td class="centerall">{PFS_ROW_COUNT}</td>
				<td class="centerall">{PFS_ROW_SIZE}</td>
				<td class="centerall">{PFS_ROW_DATE}</td>
				<td class="centerall">
					<input type="checkbox" name="folderid[{PFS_ROW_ID}]" />
					<a href="{PFS_ROW_DELETE_URL}">{PHP.L.Delete}</a>
					<a href="{PFS_ROW_EDIT_URL}">{PHP.L.Edit}</a>
					<br />{PFS_ROW_INSERT}
				</td>
			</tr>
			<!-- END: PFS_ROW -->
		</table>
		<p class="pagination">{PFS_PAGING_PREV}{PFS_PAGING_CURRENT}{PFS_PAGING_NEXT}</p>
	</fieldset>

	<fieldset>
		<legend>{PHP.L.pfs_newfile}</legend>
		<!-- BEGIN: PFS_UPLOAD_FORM -->
		<form enctype="multipart/form-data" action="{PFS_UPLOAD_FORM_ACTION}" method="post">
			<table class="cells">
				<tr>
					<td colspan="3" class="padding10">
						<input type="hidden" name="MAX_FILE_SIZE" value="{PFS_UPLOAD_FORM_MAX_SIZE}" />
						{PHP.L.Folder} : {PFS_UPLOAD_FORM_FOLDERS}
					</td>
				</tr>
				<tr>
					<td class="coltop">&nbsp;</td>
					<td class="coltop">{PHP.L.Description}</td>
					<td style="width:100%" class="coltop">{PHP.L.File}</td>
				</tr>
				<!-- BEGIN: PFS_UPLOAD_FORM_ROW -->
				<tr>
					<td style="text-align:center">#{PFS_UPLOAD_FORM_ROW_NUM}</td>
					<td><input type="text" class="text" name="ndesc[{PFS_UPLOAD_FORM_ROW_ID}]" value="" size="40" maxlength="255" /></td>
					<td><input name="userfile[{PFS_UPLOAD_FORM_ROW_ID}]" type="file" class="file" size="24" /></td>
				</tr>
				<!-- END: PFS_UPLOAD_FORM_ROW -->
				<tr>
					<td colspan="3" class="valid">
						<button type="submit">{PHP.L.Upload}</button>
					</td>
				</tr>
			</table>
		</form>
		<!-- END: PFS_UPLOAD_FORM -->
	</fieldset>

	<fieldset>
		<!-- BEGIN: PFS_NEWFOLDER_FORM -->
		<legend>{PHP.L.pfs_newfolder}</legend>
		<form id="newfolder" action="{NEWFOLDER_FORM_ACTION}" method="post">
		<table class="cells">
			<tr>
				<td>{PHP.L.Title}:</td>
				<td><input type="text" class="text" name="ntitle" value="" size="32" maxlength="64" /></td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td><input type="text" class="text" name="ndesc" value="" size="32" maxlength="255" /></td>
			</tr>
			<!--<tr>
				<td>{PHP.L.pfs_parentfolder}:</td>
				<td>{NEWFOLDER_FORM_INPUT_PARENT}</td>
			</tr>-->
			<tr>
				<td>{PHP.L.pfs_ispublic}</td>
				<td>
					<input type="radio" class="radio" name="nispublic" value="1" />{PHP.L.Yes} 
					<input type="radio" class="radio" name="nispublic" value="0" checked="checked" />{PHP.L.No}
				</td>
			</tr>
			<tr>
				<td>{PHP.L.pfs_isgallery}</td>
				<td>
					<input type="radio" class="radio" name="nisgallery" value="1" />{PHP.L.Yes} 
					<input type="radio" class="radio" name="nisgallery" value="0" checked="checked" />{PHP.L.No}
				</td>
			</tr>
			<tr>
				<td colspan="2" class="valid"><button type="submit">{PHP.L.Create}</button></td>
			</tr>
		</table>
		</form>
		<!-- END: PFS_NEWFOLDER_FORM -->
	</fieldset>
</div>

<aside class="col30 top bottom first pfs">
	<div class="block">
		<h3>{PHP.L.pfs_extallowed}</h3>
		<!-- BEGIN: ALLOWED_ROW -->
		<div class="floatleft small width20">
			<span style="vertical-align:-15px;">{ALLOWED_ROW_ICON}</span> {ALLOWED_ROW_EXT} {ALLOWED_ROW_DESC}
		</div>
		<!-- END: ALLOWED_ROW -->
	</div>
</aside>

<!-- BEGIN: STANDALONE_FOOTER -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
</div>
<script src="themes/cotcom/assets/js/core/bootstrap.bundle.min.js"></script>
<script src="themes/cotcom/assets/js/mkp.min.js"></script>
<script src="themes/cotcom/js/cot-script.js"></script>
</body>
</html>
<!-- END: STANDALONE_FOOTER -->

<!-- END: MAIN -->