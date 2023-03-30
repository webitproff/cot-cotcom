<!-- BEGIN: MAIN -->
<div class="table-responsive">
  <table class="table table-striped table-hover caption-top">
  <caption><p class="fw-semibold text-dark-cot lead">{PHP.L.Pages}</p></caption>

    <thead class="table-light">
      <tr>
        <th scope="col">#</th>
        <th scope="col">{PHP.L.Page}</th>
        <th scope="col">{PHP.L.Owner}</th>
        <th scope="col">{PHP.L.Views}</th>
      </tr>
    </thead>
    <tbody class="table-group-divider">
      <!-- BEGIN: PAGE_ROW -->
      <tr>
        <th class="{PAGE_ROW_ODDEVEN}">{PHP.R.icon_page}</th>
        <td class="{PAGE_ROW_ODDEVEN}">
          <h3 class="h5"><a class="link-dark" href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a></h3>
          <!-- IF {PAGE_ROW_DESC} -->
          <p><small>{PAGE_ROW_DESC}</small></p>
          <!-- ENDIF -->
          <p><small>{PAGE_ROW_CATPATH}</small></p>
        </td>
        <td class="{PAGE_ROW_ODDEVEN}"><p><small>{PAGE_ROW_OWNER}: {PAGE_ROW_DATE}</small></p></td>
        <td class="{PAGE_ROW_ODDEVEN}">{PAGE_ROW_COUNT}</td>
      </tr>
      <!-- END: PAGE_ROW -->
    </tbody>
  </table>
</div>
  <!-- BEGIN: NO_PAGES_FOUND -->
  <div class="alert alert-warning" role="alert"> {PHP.L.recentitems_nonewpages} </div>
  <!-- END: NO_PAGES_FOUND -->

<!-- END: MAIN -->