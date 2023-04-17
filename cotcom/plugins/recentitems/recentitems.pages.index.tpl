<!-- BEGIN: MAIN -->
<ul class="list-group list-group-flush itemblock">
	<!-- BEGIN: PAGE_ROW -->
	<li class="list-group-item pb-0 {PAGE_ROW_ODDEVEN}">
		<a class="link-dark" href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a>
		<p class="lh-1 text-muted mb-2"><small>{PAGE_ROW_CATPATH_SHORT}</small></p>
	</li>
	<!-- END: PAGE_ROW -->
	<!-- BEGIN: NO_PAGES_FOUND -->
	<li class="list-group-item">{PHP.L.None}</li>
	<!-- END: NO_PAGES_FOUND -->
	<li class="list-group-item pb-0"><a class="link-muted" href="{PHP|cot_url('plug','e=recentitems')}" rel="nofollow">{PHP.L.recentitems_title}</a></li>
</ul>
<!-- END: MAIN -->

