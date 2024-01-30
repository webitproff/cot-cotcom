<!-- BEGIN: USERLATESTPOSTS -->

<!-- BEGIN: YES -->
<div class="userpostslist uinfolist">
{UPF_AJAX_BEGIN}
<ul class="list-group list-group-flush">
	<!-- BEGIN: TOPIC -->
	
	<li class="list-group-item pb-0 bg-transparent px-0 px-sm-3">
		<a class="" href="{UPF_FORUMS_POST_URL}"><i class="fa-solid fa-pen-to-square text-info me-2"></i> {UPF_FORUMS_TITLE}</a>
		<p class="lh-1 text-muted mb-2">{UPF_DATE}<small class="ms-2">{UPF_FORUMS}</small></p>
	</li>
	<!-- END: TOPIC -->

	<li class="list-group-item pb-0 bg-transparent">{PHP.L.Total} : <span class="badge bg-gradient-light text-dark me-2">{UPF_TOTALITEMS}</span> {PHP.L.Onpage} : {UPF_COUNT_ON_PAGE}</li>
</ul>

<nav role="navigation" class="pagination pagination-info pagination-md m-4">{UPF_PAGENAV_PREV}&nbsp;{UPF_PAGENAV}&nbsp;{UPF_PAGENAV_NEXT}</nav>
{UPF_AJAX_END}
</div>
<!-- END: YES -->
<!-- END: USERLATESTPOSTS -->
