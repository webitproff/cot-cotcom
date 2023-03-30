<!-- BEGIN: MAIN -->
<section class="pt-5 pb-5 bg-gray-200">
  <div class="container-xxl px-2 px-sm-2 px-lg-auto">
 <div class="card shadow-lg">
	<div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
		<div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
		<h3 class="mb-0 ff-monts text-white">{PHP.L.find_title}</h3>
		</div>
	</div>
<div class="card-body px-2 px-sm-3 px-lg-5">

	<form action="{FORM_ACTION}" method="GET">
	<div id="find_form">
    <div class="row justify-space-between py-2">
      <div class="col-lg-9 col-sm-6 mt-lg-0 mt-4">
        <div class="input-group input-group-dynamic">
          
          <input class="form-control form-control-lg" type="text" name="q" value="{PHP.query}" type="text"  placeholder="{PHP.L.Search}" aria-label="{PHP.L.Search}">
        </div>
      </div>
      <div class="col-lg-3 col-sm-6 mt-lg-0 mt-4">
        <button type="submit" class="col-12 btn bg-gradient-info" data-bs-toggle="tooltip" data-bs-title="{PHP.L.Search}">{PHP.L.Search}</button>

      </div>
    </div>

		
	</div>
	<div id="find_sources">

		<h3>{PHP.L.find_in}</h3>

		<ul class="list-group list-group-flush">
			<!-- BEGIN: SOURCES -->
			<li class="list-group-item">
				<a href="{URL}"{CLASS}><p class="mb-0 h6 ff-monts text-dark-cot">{TITLE}</p> </a>{INPUT}
				<!-- BEGIN: FIELDS -->
				<ul class="list-group">
					<!-- BEGIN: FIELD -->
					<li class="list-group-item list-group-item-action">{CHECKBOX}</li>
					<!-- END: FIELD -->
				</ul>
				<!-- END: FIELDS -->
			</li>
			<!-- END: SOURCES -->
		</ul>
	</div>
	<!-- IF {PHP|cot_plugin_active('gsearch')} -->
	<div id="googlesearch">
		<div id="cse" style="width: 100%;">Loading...</div>
		<script src="https://www.google.com/jsapi" type="text/javascript"></script>
		<script type="text/javascript">
		  //google.load('search', '1', {style : google.loader.themes.V2_DEFAULT});
		  // It seems that  Module "search" is not supported any more
		  // Todo try to use https://developers.google.com/custom-search/v1/overview
//		  google.load('search', '1');

//		  google.setOnLoadCallback(function() {

//		    var customSearchOptions = {};
//			var customSearchControl = new google.search.CustomSearchControl(
//		      '006853451886477552886:8zx-q-qfbrs', customSearchOptions);
//		    customSearchControl.setResultSetSize(google.search.Search.SMALL_RESULTSET);
//		    customSearchControl.draw('cse');
//		    customSearchControl.execute('{PHP.query}');
//			console.log(customSearchControl);
//			console.log('{PHP.query}');
//		  }, true);
		</script>
	</div>
	<!-- ENDIF -->
	</form>
	
	<p class="sidebar_hint">{PHP.L.find_hint}</p>
</div>
<div class="card-footer p-5">
	<!-- BEGIN: RESULTS -->
	<div id="find_paging" class="pagination">{PAGE_PREV}{PAGE_NAV}{PAGE_NEXT}</div>
	<div id="find_results">
	<small>{RESULTS_TEXT}</small>
		<!-- BEGIN: ITEMS -->
		<div>
			<b>{TYPE_NAME}:</b> <a href="{FIND_URL}">{FIND_SHORTTITLE}</a> <small>{FIND_DATE_STAMP|cot_date('date_text', $this)}</small>
			<p>{EXTRACT}...</p>
		</div>
		<!-- END: ITEMS -->
	</div>
	<div id="find_paging" class="pagination">{PAGE_PREV}{PAGE_NAV}{PAGE_NEXT}</div>
	<!-- END: RESULTS -->
	<!-- BEGIN: NORESULTS -->
  <div class="alert alert-danger" role="alert">
      <p class="mb-0 ff-monts text-white"><strong>{PHP.L.find_no_resultst}</strong></p>
  </div>
	
	<!-- END: NORESULTS -->
</div>

</div>
</div>
</section>

<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
	$('#find_form input').focus();
});
//]]>
</script>

<!-- END: MAIN -->
	<div id="find_sources">
		<h3>{PHP.L.find_in}</h3>
		<ul class="list-group list-group-flush">
			<!-- BEGIN: SOURCES -->
			<li class="list-group-item list-group-item-action">
				<a href="{URL}"{CLASS}>{TITLE}</a>{INPUT}
				<!-- BEGIN: FIELDS -->
				<ul class="list-group list-group-flush">
					<!-- BEGIN: FIELD -->
					<li class="list-group-item list-group-item-action">{CHECKBOX}</li>
					<!-- END: FIELD -->
				</ul>
				<!-- END: FIELDS -->
			</li>
			<!-- END: SOURCES -->
		</ul>
	</div>
