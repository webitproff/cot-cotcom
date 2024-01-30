<!-- BEGIN: MAIN -->
<div class="col100 top bottom pretty">
	<h2>{PHP.L.thanks_top}</h2>
	<!-- IF {PHP.count_last_days} -->
	<p class="msg-box info">{THANKS_RATING_INFO} {THANKS_THANKED_USERS}</p>
	<!-- ENDIF -->
	<table class="cells table table-striped table-hovered">
		<thead>
		<tr>
			<th class="coltop">#</th>
			<th class="coltop">{PHP.L.User}</th>
			<th class="coltop">{THANKS_COUNT}</th>
			<!-- IF {PHP.show_totals} --><th class="coltop">{THANKS_TOTAL}</th><!-- ENDIF -->
		</tr>
		</thead>
		<tbody>
		<!-- BEGIN: THANKS_ROW -->
		<tr>
			<td>{THANKS_ROW_NUM}</td>
			<td>{THANKS_ROW_NAME}</td>
			<td><a href="{THANKS_ROW_URL}">{THANKS_ROW_TOTALCOUNT}</a></td>
			<!-- IF {PHP.show_totals} --><td><a href="{THANKS_ROW_URL}">{THANKS_ROW_USERTOTAL}</a></td><!-- ENDIF -->
		</tr>
		<!-- END: THANKS_ROW -->
		</tbody>
	</table>

	<p class="pagination">{PAGEPREV} {PAGENAV} {PAGENEXT}</p>
</div>
<!-- END: MAIN -->