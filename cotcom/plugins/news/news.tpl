<!-- BEGIN: NEWS -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"} -NEWS-
<!-- BEGIN: PAGE_ROW -->
<div class="item">
	<h4><a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}">{PAGE_ROW_SHORTTITLE}<span>{PAGE_ROW_DATE_STAMP|cot_date('date_full',$this)}</span></a></h4>
	{PAGE_ROW_TEXT_CUT}<!-- IF {PAGE_ROW_TEXT_IS_CUT} -->{PAGE_ROW_MORE}<!-- ENDIF -->
	<div class="info">{PAGE_ROW_COMMENTS} | {PHP.L.Author}: {PAGE_ROW_OWNER}</div>
</div>
<!-- END: PAGE_ROW -->

<div class="pagination">
	{PHP.L.Showing} {PAGE_ENTRIES_ONPAGE} {PHP.L.of} {PAGE_ENTRIES_TOTAL} {PHP.L.articles}
	{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}
</div>

<!-- END: NEWS -->
