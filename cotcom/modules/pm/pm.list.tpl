<!-- BEGIN: MAIN -->

<section class="py-3 bg-gray-200">
  <!-- BEGIN: BEFORE_AJAX -->
  <div id="ajaxBlock">
    <!-- END: BEFORE_AJAX -->
    <div class="container">
      <nav id="breadcrumb" aria-label="breadcrumb" class="text-dark d-none d-lg-block mb-4">{PM_PAGETITLE}</nav>
    </div>
    <div class="container-xxl px-2 px-sm-2 px-lg-auto min-vh-50">
      <div class="row g-3">
        <div class="col-lg-9 order-lg-first">
          <form action="{PM_FORM_UPDATE}" method="post" name="update" id="update" class="ajax">
            <div class="card mb-4">
              <div class="table-responsive py-3">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7"> {PM_SENT_TYPE} <p class="text-xs text-secondary mb-0">{PHP.L.Subject}</p>
                      </th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">{PHP.L.Date}</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">{PHP.L.Status}</th>
                      <th class="text-center text-uppercase text-secondary text-xxs opacity-7"> {PHP.L.pm_starred}</th>
                      </th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">{PHP.L.Action}</th>
                      <th class="text-secondary opacity-7">
                        <!-- IF {PHP.cfg.jquery} -->
						<div class="form-check">
                        <input class="form-check-input checkbox" type="checkbox" value="{PHP.themelang.pm.Selectall}/{PHP.themelang.pm.Unselectall}" onclick="$('.checkbox').attr('checked', this.checked);" />
						</div>
                        <!-- ENDIF -->
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <!-- BEGIN: PM_ROW -->
                    <tr>
                      <td class="{PM_ROW_ODDEVEN}">
                        <a href="{PM_ROW_URL}" data-bs-toggle="tooltip" data-bs-title="open and read the message">
                          <div class="d-flex px-2 py-1">
                            <div>
                              <!-- IF {PM_ROW_USER_AVATAR_SRC} -->
                              <img src="{PM_ROW_USER_AVATAR_SRC}" class="avatar avatar-sm me-3">
                              <!-- ELSE -->
                              <img src="{PHP.R.userimg_default_avatar}" class="avatar avatar-sm me-3">
                              <!-- ENDIF -->
                            </div>
                            <div class="d-flex flex-column justify-content-center">
                              <h5 class="mb-0 text-xs text-dark-cot ff-monts">{PM_ROW_USER_NICKNAME}</h5>
                              <p class="text-xs text-secondary mb-0">
                                <span class="text-dark-cot">{PHP.row.pm_title}</span> {PM_ROW_DESC|strip_tags($this)|cot_string_truncate($this,36)} ...
                              </p>
                            </div>
                          </div>
                        </a>
                      </td>
                      <td class="align-middle {PM_ROW_ODDEVEN}">
                        <p class="font-weight-bold text-xs ff-monts">{PM_ROW_DATE}</p>
                      </td>
                      <td class="align-middle text-center text-sm {PM_ROW_ODDEVEN}"> {PM_ROW_ICON_STATUS} </td>
                      <td class="align-middle text-center text-sm {PM_ROW_ODDEVEN}"> {PM_ROW_STAR} </td>
                      <td class="align-middle text-center">
                        <span class="text-secondary text-xs font-weight-bold">{PM_ROW_ICON_EDIT} {PM_ROW_ICON_DELETE}</span>
                      </td>
                      <td class="align-middle">
						<div class="form-check">
                        <input class="form-check-input checkbox" type="checkbox" name="msg[{PM_ROW_ID}]" />
						</div>

                      </td>
                    </tr>
                    <!-- END: PM_ROW -->
                  </tbody>
                </table>
              </div>
            </div>
            <!-- BEGIN: PM_ROW_EMPTY -->
            <div class="py-4 alert alert-light text-white font-weight-bold" role="alert">
              <p class="h6 fw-normal">
                <strong>{PHP.L.None}</strong>
              </p>
            </div>
            <!-- END: PM_ROW_EMPTY -->
            <!-- IF {PHP.jj} > 0 -->
            <div class="card p-3 ">
              <div class="row  py-2">
                <div class="col-lg-4 col-sm-6 mt-lg-0 mt-4">
                  <label>
                    <span class="h6">{PHP.L.pm_selected}:</span>
                  </label>
                </div>
                <div class="col-lg-4 col-sm-6 mt-lg-0 mt-4">
                  <div id="pm_selected" class="input-group input-group-static">
                    <select class="form-select col-12" name=" action" size="1">
                      <option value="delete">{PHP.L.Delete}</option>
                      <option value="star" selected="selected">{PHP.L.pm_putinstarred}</option>
                    </select>
                  </div>
                </div>
                <div class="col-lg-4 col-sm-6 mt-lg-0 mt-4">
                  <button type="submit" name="delete" class="btn btn-warning">{PHP.L.Confirm}</button>
                </div>
              </div>
            </div>
            <nav role="navigation" class="pagination pagination-info pagination-md m-4">{PM_PAGEPREV}{PM_PAGES}{PM_PAGENEXT}</nav>
            <!-- ENDIF -->
          </form>
        </div>
        <div class="col-lg-3 order-first">
          <div class="card mb-4 border-radius-lg px-2 py-3">
            <div class="list-group list-group-flush ">
              <a href="{PHP|cot_url('pm')}" class="list-group-item list-group-item-action
									<!-- IF {PHP.f} == 'inbox'  --> text-primary fw-bold
									<!-- ENDIF -->">{PHP.L.pm_inbox} </a>
              <a href="{PHP|cot_url('pm', 'f=sentbox')}" class="list-group-item list-group-item-action
									<!-- IF {PHP.f} == 'sentbox'  --> text-primary fw-bold
									<!-- ENDIF -->">{PHP.L.pm_sentbox} </a>
              <a href="{PM_SENDNEWPM_URL}" class="list-group-item list-group-item-action">{PHP.L.pm_sendnew}</a>
            </div>
          </div>
          <div class="card mb-4 border-radius-lg px-2 py-3">
            <h6 class="font-weight-normal text-center"> {PHP.L.Filter}: </h6>
            <div class="list-group list-group-flush">
              <div class="list-group-item list-group-item-action">{PM_FILTER_UNREAD}</div>
              <div class="list-group-item list-group-item-action">{PM_FILTER_STARRED}</div>
              <div class="list-group-item list-group-item-action">{PM_FILTER_ALL}</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- BEGIN: AFTER_AJAX -->
  </div>
  <!-- END: AFTER_AJAX -->
</section>
<!-- END: MAIN -->