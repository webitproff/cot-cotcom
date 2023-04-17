<!-- BEGIN: MAIN -->

<div class="col100 top bottom page">
	<h2 class="page">{PAGEADD_PAGETITLE}</h2>
	{FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"}
	<form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<table class="cells">
			<tr>
				<td class="width30">{PHP.L.Category}:</td>
				<td class="width70">{PAGEADD_FORM_CAT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{PAGEADD_FORM_TITLE}</td>
			</tr>
			<tr>
				<td>{PAGEADD_FORM_LANGCODE_TITLE}:</td>
				<td>{PAGEADD_FORM_LANGCODE}</td>
			</tr>
			<tr>
				<td>{PAGEADD_FORM_VERSION_TITLE}:</td>
				<td>{PAGEADD_FORM_VERSION} {PHP.c}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{PAGEADD_FORM_DESC}</td>
			</tr>
			<tr>
				<td>{PHP.L.Author}:</td>
				<td>{PAGEADD_FORM_AUTHOR}</td>
			</tr>
			<tr>
				<td>{PHP.L.Alias}:</td>
				<td>{PAGEADD_FORM_ALIAS}</td>
			</tr>
			<tr>
				<td colspan="2">
					{PAGEADD_FORM_TEXT}
					<!-- IF {PAGEADD_FORM_PFS} -->{PAGEADD_FORM_PFS}<!-- ENDIF -->
					<!-- IF {PAGEADD_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEADD_FORM_SFS}<!-- ENDIF -->
				</td>
			</tr>
			<tr>
				<td>{PHP.L.page_file}:</td>
				<td>
					{PAGEADD_FORM_FILE}
					<p>{PHP.L.page_filehint}</p>
				</td>
			</tr>
			<tr>
				<td>{PHP.L.URL}:<br />{PHP.L.page_urlhint}</td>
				<td>{PAGEADD_FORM_URL}<br />{PAGEADD_FORM_PFS_URL_USER} &nbsp; {PAGEADD_FORM_PFS_URL_SITE}</td>
			</tr>
			<tr>
				<td>{PHP.L.page_filesize}:<br />{PHP.L.page_filesizehint}</td>
				<td>{PAGEADD_FORM_SIZE}</td>
			</tr>
			<tr>
				<td colspan="2" class="valid">
				<button type="submit" name="rpagestate" value="2" class="submit">{PHP.L.Saveasdraft}</button>
				<button type="submit" name="rpagestate" value="1">{PHP.L.Submitforapproval}</button>
				<!-- IF {PHP.usr_can_publish} -->
				<button type="submit" name="rpagestate" value="0">{PHP.L.Publish}</button>
				<!-- ENDIF -->
				</td>
			</tr>
		</table>
	</form>
</div>
	<div class="container-lg py-5">
	{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
    </div>
<!-- END: MAIN -->
