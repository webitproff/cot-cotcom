<!-- BEGIN: POLL_VIEW -->
<div id = "poll_{POLL_ID}">
	<form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};{PHP|cot_url('polls')};mode=ajax&amp;poll_theme=index">
		<input type="hidden" name="poll_id" value="{POLL_ID}" />
			<!-- BEGIN: POLLTABLE -->
				<div class="form-check mb-0">
				  {POLL_INPUT|cot_rc_modify($this, 'class="form-check-input"')}
				  <label class="custom-control-label">{POLL_OPTIONS}</label>
				</div>
			<!-- END: POLLTABLE -->
		<button type="submit" class="btn btn-primary btn-sm" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
	</form>
</div>
<!-- END: POLL_VIEW -->

<!-- BEGIN: POLL_VIEW_VOTED -->
	<div class="table-responsive">
	<table class="table align-items-center mb-0">
	<!-- BEGIN: POLLTABLE -->
	<tr>
		<td>{POLL_OPTIONS}</td>
		<td>

			  <div class="progress-info">
				<div class="progress-percentage">
				  <span class="ff-monts font-weight-bold text-dark-cot">{POLL_PER}%</span>
				</div>
			  </div>
			  <div class="progress">
				<div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:{POLL_PER}%;"></div>
			  </div>
		
		</td>
	</tr>
	<!-- END: POLLTABLE -->
</table>
<p class="text-center">{PHP.L.Votes}: {POLL_VOTERS}</p>
</div>
<!-- END: POLL_VIEW_VOTED -->

<!-- BEGIN: POLL_VIEW_DISABLED -->
<table>
	<!-- BEGIN: POLLTABLE -->
	<tr>
		<td>{POLL_OPTIONS} POLL_VIEW_DISABLED</td>
	</tr>
	<!-- END: POLLTABLE -->
	<tr>
		<td>{PHP.L.rat_registeredonly}</td>
	</tr>
</table>
<!-- END: POLL_VIEW_DISABLED -->

<!-- BEGIN: POLL_VIEW_LOCKED -->
<table>
	<!-- BEGIN: POLLTABLE -->
	<tr>
		<td>{POLL_OPTIONS}</td>
		<td><div class="bar_outer"><div class="bar_inner" style="width:{POLL_PER}%;"></div></div></td>
		<td class="textright">{POLL_PER}%</td>
	</tr>
	<!-- END: POLLTABLE -->
</table>
<p>{PHP.L.Date} {POLL_SINCE_SHORT} {PHP.L.Votes} {POLL_VOTERS} </p>
<!-- END: POLL_VIEW_LOCKED -->

<!-- BEGIN: INDEXPOLLS -->
<!-- BEGIN: POLL -->
<a class="strong" href="{IPOLLS_URL}">{IPOLLS_TITLE}</a>
	{IPOLLS_FORM}
<!-- END: POLL -->
<!-- BEGIN: ERROR -->
<p class="text-warning">{IPOLLS_ERROR}</p>
<!-- END: ERROR -->
<p class=""><a href="{PHP|cot_url('polls')}">{PHP.L.polls_viewarchives}</a></p>
<!-- END: INDEXPOLLS -->