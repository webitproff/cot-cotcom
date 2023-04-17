<!-- BEGIN: MAIN -->
<section class="bg-gray-200">
  <div class="min-vh-75">
    <div class="container py-7">
      <div class="card shadow-lg mb-3">
        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
          <div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
            <h3 class="mb-0 ff-monts text-white">{USERS_TITLE}</h3>
            <p class="text-white opacity-8 mb-0">{PHP.L.usr.MembersText}</p>
          </div>
        </div>
        <div class="card-body p-3 last users">
          <h3 class="mb-0 ff-monts text-dark-cot">{PHP.L.Filters}</h3>
          <form action="{USERS_TOP_FILTER_ACTION}" method="post">
            <div class="row row-cols-1 row-cols-md-3 g-4 mt-lg-5 mt-2">
              <div class="col-lg-4 col-md-6 mb-3">
                <div class="form-group row">
                  <label class="form-control-label"></label>
                  <div class="input-group input-group-static"> {USERS_TOP_FILTERS_COUNTRY|cot_rc_modify($this, 'id="bycountry"')} </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 mb-3">
                <div class="form-group row">
                  <label class="form-control-label"></label>
                  <div class="input-group input-group-static"> {USERS_TOP_FILTERS_MAINGROUP|cot_rc_modify($this, 'id="bymaingroup"')} </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 mb-3">
                <div class="form-group row">
                  <label class="form-control-label"></label>
                  <div class="input-group input-group-static"> {USERS_TOP_FILTERS_GROUP|cot_rc_modify($this, 'id="bygroupms"')} </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-8">
                <div class="input-group input-group-static mb-4">
                  <label class="form-label">{PHP.L.Username}:</label> {USERS_TOP_FILTERS_SEARCH}
                </div>
              </div>
              <div class="col-lg-4 mt-3 text-end d-flex flex-column justify-content-center"> {USERS_TOP_FILTERS_SUBMIT} </div>
            </div>
            <!-- BEGIN: BYFIRSTLETTER -->
            <p> {PHP.L.by_first_letter}: <br />
              <!-- BEGIN: LETTER-->
              <a href="{URL}">{LETTER}</a>
              <!-- END: LETTER -->
            </p>
            <!-- END: BYFIRSTLETTER -->
          </form>
        </div>
      </div>
      <div class="card shadow-lg mb-3">
        <div class="card-body p-3 users">
          <div class="table-responsive">
            <table class="table align-items-center mb-0">
              <thead>
                <tr>
                  <th>{USERS_TOP_NAME}</th>
                  <th>{USERS_TOP_GRPTITLE}</th>
                  <th>{USERS_TOP_COUNTRY}</th>
                </tr>
              </thead>
              <tbody>
                <!-- BEGIN: USERS_ROW -->
                <tr class="{USERS_ROW_ODDEVEN}">
                  <td>
                    <div class="d-flex px-2 py-1">
                      <div>
                        <!-- IF {USERS_ROW_AVATAR_SRC} -->
                        <img class="avatar avatar-lg me-3 shadow-info shadow-xl" alt="{USERS_ROW_NICKNAME}" src="{PHP.urr.user_avatar}">
                        <!-- ELSE -->
                        <img class="avatar avatar-lg me-3 shadow-secondary shadow-xl" alt="{USERS_ROW_NICKNAME}" src="{PHP.R.userimg_default_avatar}">
                        <!-- ENDIF -->
                      </div>
                      <div class="d-flex flex-column justify-content-center">
                        <h6 class="mb-0">{USERS_ROW_NAME}</h6>
                        <p class="text-xs text-secondary mb-0">{USERS_ROW_TAG} </p>
                      </div>
                    </div>
                  </td>
                  <td>{USERS_ROW_MAINGRP}</td>
                  <td class="centerall">{USERS_ROW_COUNTRYFLAG} {USERS_ROW_COUNTRY}</td>
                </tr>
                <!-- END: USERS_ROW -->
              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer p-3">
          <p class="text-dark mb-2 ff-monts">{PHP.L.Showing} <span class="text-warning font-weight-bold">{PHP.pagenav.onpage}</span> {PHP.L.of} <span class="text-info font-weight-bold ">{USERS_TOP_TOTALUSERS}</span> {PHP.L.usr.users} </p>
          <p class="pagination">{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- END: MAIN -->