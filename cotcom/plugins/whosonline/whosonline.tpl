<!-- BEGIN: MAIN -->
<section class="pt-5 pt-md-5 pb-md-5 pt-lg-8 bg-gray-200">
<div class="container pb-5">
 <div class="card shadow-lg">
<div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
<div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
<a href="{PHP|cot_url('plug','e=whosonline')}"><h3 class="mb-0 ff-monts">{PHP.L.WhosOnline}</h3></a>
</div>
</div>
<div class="card-body p-5">
			<!-- IF {WHO_TOTALPAGES} > 1 -->
			<p class="paging"><span>{PHP.L.Page} {WHO_CURRENTPAGE} {PHP.L.Of} {WHO_TOTALPAGES}</span>{WHO_PAGEPREV}{WHO_PAGINATION}{WHO_PAGENEXT}</p>
			<!-- ENDIF -->
			<div class="table-responsive">

			<table class="table table-striped table-hover">

				<thead>
					<tr>
						<th>{PHP.L.User}</th>
						<th>{PHP.L.Group}</th>
						<th>{PHP.L.OnlineLocation}</th>
						<th>{PHP.L.LastSeen}</th>
						<!-- IF {PHP.usr.isadmin} --><th>{PHP.L.IPaddress}</th><!-- ENDIF -->
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<!-- BEGIN: USERS -->
					<tr>
						<td>{USER_LINK}</td>
						<td>{USER_MAINGRP}</td>
						<td>{USER_LOCATION} {USER_SUBLOCATION}</td>
						<td>{USER_LASTSEEN}</td>
						<!-- IF {PHP.usr.isadmin} --><td>{USER_IP}</td><!-- ENDIF -->
					</tr>
					<!-- END: USERS -->
					<!-- BEGIN: GUESTS -->
					<tr>
						<td>{PHP.L.Visitor} #{GUEST_NUMBER}</td>
						<td>{GUEST_LOCATION} {GUEST_SUBLOCATION}</td>
						<td>{GUEST_LASTSEEN}</td>
						<!-- IF {PHP.usr.isadmin} --><td>{GUEST_IP}</td><!-- ENDIF -->
					</tr>
					<!-- END: GUESTS -->
				</tbody>
			</table>
			</div>
			<p><strong>{PHP.L.NowOnline}:</strong> {STAT_COUNT_USERS} {USERS}<!-- IF !{PHP.cfg.plugin.whosonline.disable_guests} -->, {STAT_COUNT_GUESTS} {GUESTS}<!-- ENDIF --></p>
			<!-- IF {STAT_MAXUSERS} --><p><strong>{PHP.L.MostOnline}:</strong> {STAT_MAXUSERS}</p><!-- ENDIF -->
</div>
</div>
</div>
</section>
<!-- END: MAIN -->