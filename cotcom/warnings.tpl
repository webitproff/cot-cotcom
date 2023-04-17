<!-- BEGIN: ERROR -->
<div class="error">
	<h4>{PHP.L.Error}</h4>
	<ul>
		<!-- BEGIN: ERROR_ROW -->
		<li>{ERROR_ROW_MSG}</li>
		<!-- END: ERROR_ROW -->
	</ul>
</div>
<!-- END: ERROR -->

<!-- BEGIN: WARNING -->
<div class="warning notice">
	<h4>{PHP.L.Warning}</h4>
	<ul>
		<!-- BEGIN: WARNING_ROW -->
		<li>{WARNING_ROW_MSG}</li>
		<!-- END: WARNING_ROW -->
	</ul>
</div>
<!-- END: WARNING -->

<!-- BEGIN: DONE -->
<div class="alert alert-success" role="alert">
	<h3 class="fs-5 text-white ff-monts"><i class="fa-solid fa-face-smile me-3"></i>{PHP.L.Done} !</h3>
	<ul class="list-group list-group-flush">
		<!-- BEGIN: DONE_ROW -->
		<li class="bg-transparent list-group-item text-white ff-monts fw-normal ps-0"><i class="fa-regular fa-square-check me-3 fs-5"></i>{DONE_ROW_MSG}</li>
		<!-- END: DONE_ROW -->
	</ul>
</div>
<!-- END: DONE -->