<!-- BEGIN: MAIN -->
<div class="col100 top bottom">

<div class="breadcrumb">{PHP.L.ikassabilling_title}</div>

<!-- BEGIN: IKASSAFORM -->
	<div class="alert alert-info">{PHP.L.ikassabilling_formtext}</div>
	<script>
		$(document).ready(function(){
			setTimeout(function() {
				$("#ikassaform").submit();
			}, 3000);
		});
	</script>
	{IKASSA_FORM}
<!-- END: IKASSAFORM -->

<!-- BEGIN: ERROR -->
	<h4>{IKASSA_TITLE}</h4>
	{IKASSA_ERROR}
<!-- END: ERROR -->

</div>
<!-- END: MAIN -->
