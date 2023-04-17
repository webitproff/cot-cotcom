<!-- BEGIN: MAIN -->
<ul class="toc bullets">
	<!-- BEGIN: CATS -->
	<li class="<!-- IF {ROW_SUBCAT} -->pcthavesubelems <!-- ENDIF -->{ROW_CLASS}">
		<!-- IF {ROW_TYPE} == 'cat' -->
		<h{ROW_LEVEL_H}><a href="{ROW_HREF}">{ROW_TITLE}</a></h{ROW_LEVEL_H}>
		<!-- ELSE -->
		<a href="{ROW_HREF}">{ROW_TITLE}</a>
		<!-- ENDIF -->
		<!-- IF {ROW_SUBCAT} -->
		<div class="pctsubelems">
			{ROW_SUBCAT}
		</div>
		<!-- ENDIF -->
		{ROW_PAGES}
	</li>
	<!-- END: CATS -->
</ul>
<!-- END: MAIN -->
<!-- BEGIN: PAGES -->
<ul class="toc bullets">
	<!-- BEGIN: PAGE -->
	<li class="<!-- IF {ROW_SUBCAT} -->pcthavesubelems <!-- ENDIF -->{ROW_CLASS}"><a href="{ROW_HREF}">{ROW_TITLE}</a></li>
	<!-- END: PAGE -->
</ul>
<!-- END: PAGES -->
