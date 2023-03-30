<!-- BEGIN: MAIN -->
<section class="py-5 bg-gray-200">
  <div class="container-xxl pt-5 px-2 px-sm-2 px-lg-auto min-vh-45">
    <div class="card shadow-lg mb-5">
      <div class="card-header p-0 position-relative mt-n4 z-index-2 bg-transparent">
        <div class="title-bg-sea-cot">
          <h1 class="mb-0 h4 ff-monts text-white">{PHP.L.thanks_for_user}:</h1>
          <p class="">
            <a class="mb-0 ff-monts text-white" href="{THANKS_USER_URL}">{THANKS_USER_NAME}</a>
          </p>
        </div>
      </div>
      <div class="card-body p-3">
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead>
              <tr>
                <th class="text-xs text-secondary mb-0">{PHP.L.Date}</th>
                <th class="text-xs text-secondary mb-0">{PHP.L.Sender}</th>
                <th class="text-xs text-secondary mb-0">{PHP.L.Category}</th>
                <th class="text-xs text-secondary mb-0">{PHP.L.Item}</th>
              </tr>
            </thead>
            <tbody>
              <!-- BEGIN: THANKS_ROW -->
              <tr>
                <td>{THANKS_ROW_DATE}</td>
                <td>
                  <a href="{THANKS_ROW_FROM_URL}">{THANKS_ROW_FROM_NAME}</a>
                </td>
                <td>
                  <a href="{THANKS_ROW_CAT_URL}">{THANKS_ROW_CAT_TITLE}</a>
                </td>
                <td>
                  <a href="{THANKS_ROW_URL}">{THANKS_ROW_TITLE}</a>
                </td>
              </tr>
              <!-- END: THANKS_ROW -->
            </tbody>
          </table>
        </div>
      </div>
	  <nav role="navigation" class="pagination pagination-info pagination-md m-4">{PAGEPREV} {PAGENAV} {PAGENEXT}</nav>
    </div>
  </div>
</section>
<!-- END: MAIN -->