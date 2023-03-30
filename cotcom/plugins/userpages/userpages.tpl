<!-- BEGIN: USERPAGES -->
<!-- BEGIN: YES -->
<div class="userpostslist uinfolist">
{UP_AJAX_BEGIN}
<p>
	{PHP.L.plu_sort_by} <a href="users.php?m=details&amp;id={UP_USER_ID}&amp;ps=date&amp;dp={UP_PAGE_ID}"{UP_ORDER_SET_DAT}>{PHP.L.plu_date}</a> | <a href="users.php?m=details&amp;id={UP_USER_ID}&amp;ps=cat&amp;dp={UP_PAGE_ID}"{UP_ORDER_SET_CAT}>{PHP.L.plu_category}</a>
</p>
<ul class="list-group list-group-flush">
	<!-- BEGIN: PAGES -->
	
	<li class="list-group-item pb-0 bg-transparent">
		<a class="" href="{UP_URL}"><i class="fa-solid fa-pen-to-square text-info me-2"></i>{UP_SHORTTITLE}</a>
		<p class="lh-1 text-muted mb-2">{UP_DATE}<small class="ms-2">{UP_CATPATH}</small></p>
	</li>
	<!-- END: PAGES -->

	<li class="list-group-item pb-0 bg-transparent">{PHP.L.Total} : <span class="badge bg-gradient-light text-dark me-2">{UP_TOTALITEMS}</span> {PHP.L.Onpage} : {UP_COUNT_ON_PAGE}</li>
</ul>

<nav role="navigation" class="pagination pagination-info pagination-md m-4">{UP_PAGENAV_PREV}&nbsp;{UP_PAGENAV}&nbsp;{UP_PAGENAV_NEXT}</nav>
{UP_AJAX_END}
</div>

<!-- END: YES -->
<!-- END: USERPAGES -->
