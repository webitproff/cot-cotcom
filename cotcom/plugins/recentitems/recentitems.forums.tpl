<!-- BEGIN: MAIN -->
<div class="table-responsive">
  <table class="table table-striped table-hover caption-top">
  <caption><p class="fw-semibold text-dark-cot lead">{PHP.L.Forums}</p></caption>

    <thead class="table-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col">{PHP.L.Topics} / {PHP.L.Started}</th>
        <th scope="col">{PHP.L.Lastpost}</th>
        <th scope="col">{PHP.L.Posts} сообщений</th>
        <th scope="col">{PHP.L.Views}</th>
      </tr>
    </thead>
    <tbody class="table-group-divider">
      <!-- BEGIN: TOPICS_ROW -->
      <tr>
        <th class="{FORUM_ROW_ODDEVEN}">{FORUM_ROW_ICON}</th>
        <td class="{FORUM_ROW_ODDEVEN}">
          <h3 class="h5"><a class="link-dark" href="{FORUM_ROW_URL}">{FORUM_ROW_TITLE}</a></h3>
          
          <p><small>{FORUM_ROW_PATH}</small></p>
          
          <p><small>{FORUM_ROW_CREATIONDATE} {PHP.cfg.separator} {FORUM_ROW_FIRSTPOSTER}<!-- IF {FORUM_ROW_PAGES} --> {PHP.cfg.separator} {FORUM_ROW_PAGES}<!-- ENDIF --></small></p>
        </td>
        <td class="{FORUM_ROW_ODDEVEN}"><p><small>{FORUM_ROW_UPDATED} {PHP.cfg.separator} {FORUM_ROW_LASTPOSTER} - {FORUM_ROW_TIMEAGO}</small></p></td>
				<td class="{FORUM_ROW_ODDEVEN}">{FORUM_ROW_POSTCOUNT}</td>
				<td class="{FORUM_ROW_ODDEVEN}">{FORUM_ROW_VIEWCOUNT}</td>
      </tr>
      <!-- END: TOPICS_ROW -->
    </tbody>
  </table>
</div>
  <!-- BEGIN: NO_TOPICS_FOUND -->
  <div class="alert alert-warning" role="alert">{PHP.L.recentitems_nonewposts}</div>
  <!-- END: NO_TOPICS_FOUND -->

<!-- END: MAIN -->
