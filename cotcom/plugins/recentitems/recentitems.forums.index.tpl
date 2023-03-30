<!-- BEGIN: MAIN -->

<ul class="list-group list-group-flush itemblock">
	<!-- BEGIN: TOPICS_ROW -->
	<li class="list-group-item pb-0 {FORUM_ROW_ODDEVEN}">
		<a class="link-dark" href="{FORUM_ROW_LASTPOSTURL}"><span class="badge bg-gradient-primary me-2">{FORUM_ROW_POSTCOUNT}</span><span class="me-2">{FORUM_ROW_TITLE}</span> {FORUM_ROW_UPDATED_STAMP|cot_date('date_full', $this)}</a>
		<p class="lh-1 text-muted mb-2"><small>{FORUM_ROW_PATH}</small></p>


	</li>
	<!-- END: TOPICS_ROW -->
	<!-- BEGIN: NO_TOPICS_FOUND -->
	<li class="list-group-item pb-0">{PHP.L.None}</li>
	<!-- END: NO_TOPICS_FOUND -->
	<li class="list-group-item pb-0"><a class="link-muted" href="{PHP|cot_url('plug','e=recentitems')}" rel="nofollow">{PHP.L.recentitems_title}</a></li>
</ul>

<!-- END: MAIN -->