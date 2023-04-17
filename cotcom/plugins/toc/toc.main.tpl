<!-- BEGIN: LIST -->
<ul class="list-group list-group-flush toc-main list-level-{LIST_LEVEL}">
	<!-- BEGIN: ROW -->
	<li class="list-group-item {ROW_CURRENT} level-{ROW_LEVEL}">
		
		<span class="line {ROW_TYPE}">
		<span class="number">{ROW_NUMBER}.</span>
		<a class="{ROW_CODE} {ROW_TYPE}" href="{ROW_URL}" title="{ROW_DESC}">
		{ROW_TITLE}
		</a>
		<!-- IF {ROW_FLAG} AND {ROW_LOCALE} != {PHP.cfg.defaultlang} AND {ROW_TYPE} == 'page' -->
		{ROW_FLAG}
		<!-- ENDIF -->
		<!-- IF {ROW_DATE} > ({PHP.sys.now} - 2592000) -->
		({ROW_DATE|cot_date('date_text',$this)})
		<!-- ENDIF -->
		</span>
		{ROW_ITEMS}
	</li>
	<!-- END: ROW -->
</ul>
<!-- END: LIST -->
