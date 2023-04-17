<!-- BEGIN: MAIN -->
<div class="col25 top bottom">
	<h2>{PHP.L.tags_Search_tags}</h2>
	<form action="{TAGS_ACTION}" method="post">
		<input type="text" name="t" value="{TAGS_QUERY}" />
		<button type="submit">{PHP.L.Search}</button>
		<select name="order">
			<option value="">{PHP.L.tags_Orderby}</option>
			<option value="">--</option> {TAGS_ORDER}
		</select>
		<div class="clearfix"></div>
	</form>
	
	<div>
		<p class="sidebar_hint">{TAGS_HINT}</p>
	</div>
</div>

<div class="col75 top bottom last">
<div class="pretty tags-search i18n-{PHP.i18n_locale}">
<!-- BEGIN: TAGS_CLOUD -->
	<h2 class="tags">{PHP.L.tags_All}</h2>
	{TAGS_CLOUD_BODY}
<!-- END: TAGS_CLOUD -->
<!-- BEGIN: TAGS_RESULT -->
	
	<div class="page_text"> 
	<h1 class="search">{TAGS_RESULT_TITLE}</h1>
	<ul class="list-unstyled">
		<!-- BEGIN: TAGS_RESULT_ROW -->
		<li class="block">
			<h2 class="strong-">
				<!-- IF {PHP.row.ipage_locale} -->{PHP.row.ipage_locale|cot_rc('icon_flag', 'code=$this&alt=$this')}<!-- ENDIF -->
				<a href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a>
			</h2>
			<div class="result">
			<p>{PHP.L.Sections}: {TAGS_RESULT_ROW_PATH}</p>
			<br /> 
			<ul class="tags"><li class="tag">
				{TAGS_RESULT_ROW_TAGS|explode(',',$this)|implode('</li><li class="tag">',$this)}
			</li></ul>
			<div class="page_content">{TAGS_RESULT_ROW_TEXT_CUT}</div> 
			</div>
			<hr />
		</li>
		<!-- END: TAGS_RESULT_ROW -->
	</ul>
	</div>
	
	<!-- BEGIN: TAGS_RESULT_NONE -->
	<div class="notice">{PHP.L.Noitemsfound}</div>
	<!-- END: TAGS_RESULT_NONE -->
<!-- END: TAGS_RESULT -->
<!-- IF {TAGS_PAGNAV} --><nav role="navigation" class="pagination ">{TAGS_PAGEPREV}{TAGS_PAGNAV}{TAGS_PAGENEXT}</nav><!-- ENDIF -->
	</div>
</div>
<!-- END: MAIN -->