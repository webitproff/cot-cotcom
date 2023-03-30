<!-- BEGIN: MAIN -->

<div class="col100 top bottom page">
	<h2>{PAGEEDIT_PAGETITLE}</h2>
	{FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"}
	<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<table class="cells">
			<tr>
				<td class="width30">{PHP.L.Category}:</td>
				<td class="width70">{PAGEEDIT_FORM_CAT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{PAGEEDIT_FORM_TITLE}</td>
			</tr>
			<tr>
				<td>{PAGEEDIT_FORM_LANGCODE_TITLE}:</td>
				<td>{PAGEEDIT_FORM_LANGCODE}</td>
			</tr>
			<tr>
				<td>{PAGEEDIT_FORM_VERSION_TITLE}:</td>
				<td>{PAGEEDIT_FORM_VERSION}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{PAGEEDIT_FORM_DESC}</td>
			</tr>
			<tr>
				<td>{PHP.L.Author}:</td>
				<td>{PAGEEDIT_FORM_AUTHOR}</td>
			</tr>
			<tr>
				<td>{PHP.L.Alias}:</td>
				<td>{PAGEEDIT_FORM_ALIAS}</td>
			</tr>
			<!-- BEGIN: ADMIN -->
			<tr>
				<td>{PHP.L.Owner}:</td>
				<td>{PAGEEDIT_FORM_OWNERID}</td>
			</tr>
			<tr>
				<td>{PHP.L.Parser}:</td>
				<td>{PAGEEDIT_FORM_PARSER}</td>
			</tr>
			<tr>
				<td>{PHP.L.page.Hits}:</td>
				<td>{PAGEEDIT_FORM_PAGECOUNT}</td>
			</tr>
			<!-- END: ADMIN -->
			<tr>
				<td colspan="2">
					{PAGEEDIT_FORM_TEXT}
					<!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
					<!-- IF {PAGEEDIT_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
				</td>
			</tr>
			<tr>
				<td>{PHP.L.File}:<br />
				{PHP.L.Filehint}</td>
				<td>{PAGEEDIT_FORM_FILE}</td>
			</tr>
			<tr>
				<td>{PHP.L.URL}:<br />{PHP.L.URLhint}</td>
				<td>{PAGEEDIT_FORM_URL}<br />{PAGEEDIT_FORM_PFS_URL_USER} &nbsp; {PAGEEDIT_FORM_PFS_URL_SITE}</td>
			</tr>
			<tr>
				<td>{PHP.L.page.Filesize}:<br />{PHP.L.Filesizehint}</td>
				<td>{PAGEEDIT_FORM_SIZE}</td>
			</tr>
			<tr>
				<td>{PHP.L.page.Filehitcount}:<br />{PHP.L.Filehitcounthint}</td>
				<td>{PAGEEDIT_FORM_FILECOUNT}</td>
			</tr>
			<tr>
				<td>{PHP.L.page.PageID}:</td>
				<td>#{PAGEEDIT_FORM_ID}</td>
			</tr>
			<tr>
				<td>{PHP.L.page.Deletethispage}:</td>
				<td>{PAGEEDIT_FORM_DELETE}</td>
			</tr>
			<tr>
				<td colspan="2">
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
