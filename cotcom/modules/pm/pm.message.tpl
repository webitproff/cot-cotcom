<!-- BEGIN: MAIN -->
<section class="py-3 bg-gray-200">
  <!-- BEGIN: BEFORE_AJAX -->
  <div id="ajaxBlock">
    <!-- END: BEFORE_AJAX -->
    <div class="container">
      <nav id="breadcrumb" aria-label="breadcrumb" class="text-dark d-none d-lg-block mb-4">{PM_PAGETITLE}</nav>
    </div>
    <div class="container-xxl px-2 px-sm-2 px-lg-auto min-vh-45">
      <div class="row g-3">
        <div class="col-lg-9 order-lg-first">
          <div class="card p-2 mb-4 pm message">
            <div class="row mb-2">
              <div class="col-lg-3 col-sm-6">
                <div class="actions list-group list-group-flush">
                  <div class="list-group-item list-group-item-action">
                    <div class="text-center">
                      <!-- IF {PM_USER_AVATAR_SRC} -->
                      <img src="{PM_USER_AVATAR_SRC}" class="avatar avatar-xxl border border-3 rounded-circle shadow-info shadow-lg">
                      <!-- ELSE -->
                      <img src="{PHP.R.userimg_default_avatar}" class="avatar avatar-xxl border border-3 rounded-circle shadow-info shadow-lg">
                      <!-- ENDIF -->
                    </div>
                  </div>
                  <div class="list-group-item list-group-item-action text-center">
                    <!-- IF {PHP.f} == 'inbox' -->
                    <span class="fw-normal text-xs">{PHP.L.Sender}:</span>
                    <br>
                    <h5>{PM_USER_NAME}</h5>
                    <!-- ENDIF -->
                    <!-- IF {PHP.f} == 'sentbox' -->
                    <span class="fw-normal text-xs">{PHP.L.Recipient}:</span>
                    <br>
                    <h5>{PM_USER_NAME}</h5>
                    <!-- ENDIF -->
                  </div>
                  <div class="list-group-item list-group-item-action">
                    <p class="text-dark-cot mb-0">
                      <i class="fa-regular fa-calendar-check me-2"></i>{PM_DATE}
                    </p>
                  </div>
                  <!-- IF {PM_QUOTE} -->
                  <div class="list-group-item list-group-item-action">
                    <p class="text-warning mb-0">
                      <i class="fa-solid fa-quote-left me-2"></i>{PM_QUOTE}
                    </p>
                  </div>
                  <!-- ENDIF -->
                  <!-- IF {PM_EDIT} -->
                  <div class="list-group-item list-group-item-action">
                    <p class="text-success mb-0">
                      <i class="fa-solid fa-user-pen me-2"></i>{PM_EDIT}
                    </p>
                  </div>
                  <!-- ENDIF -->
                  <!-- IF {PM_DELETE} -->
                  <div class="list-group-item list-group-item-action">
                    <p class="text-danger mb-0">
                      <i class="fa-solid fa-trash-can me-2"></i>{PM_DELETE}
                    </p>
                  </div>
                  <!-- ENDIF -->
                  <!-- IF {PM_HISTORY} -->
                  <div class="list-group-item list-group-item-action">
                    <p class="text-sm text-info mb-0">
                      <i class="fa-solid fa-clock-rotate-left me-2"></i>{PM_HISTORY}
                    </p>
                  </div>
                  <!-- ENDIF -->
                </div>
              </div>
              <div class="col-lg-9 col-sm-6">
                <div class="pt-2">
                  <h5>
                    <span class="fw-normal">{PHP.L.Subject}:</span> {PM_TITLE}
                  </h5>
                  <div class="fw-normal">{PM_TEXT}</div>
                </div>
              </div>
            </div>
          </div>
          <!-- BEGIN: REPLY -->
		  <div class="card p-2 mb-4 mx-auto pm message">
          <h3>{PHP.L.pm_replyto}</h3>
          <form action="{PM_FORM_SEND}" method="post">
              <div class="col-md-12 pe-2 mb-3">
                <div class="input-group input-group-static">
                  <label>
                    <span class="badge bg-gradient-light text-dark text-ltspc">{PHP.L.Subject}:</span>
                  </label> {PM_FORM_TITLE}
                </div>
              </div>
              <div class="col-md-12 pe-2 mb-3">
                <div class="input-group input-group-static">
                    <label>
                    <span class="badge bg-gradient-light text-dark text-ltspc mb-3">{PHP.L.Message}:</span>
                  </label>{PM_FORM_TEXT}
                </div>
              </div>
              <div class="col-md-6 text-end ms-auto">
                <button type="submit" class="btn btn-primary bg-gradient-primary mb-0">{PHP.L.Submit}</button>
              </div>
              <input type="checkbox" class="checkbox" name="fromstate" value="3" /> {PHP.L.pm_notmovetosentbox}
            </p>
          </form>
		  </div>
          <!-- END: REPLY -->
          <div id="ajaxHistory">
            <h3>{PM_HISTORY}</h3>
            <span class="small">({PHP.L.clicktoexpand})</span>
            <!-- BEGIN: HISTORY -->
            <!-- BEGIN: PM_ROW -->
            <div class="card mb-4">
              <div class="list-group list-group-flush list-sriped">
                <div class="list-group-item list-group-item-action">
                  <div class="col-12 mb-2 {PM_ROW_ODDEVEN}">
                    <div class="row mb-2">
                      <div class="col-lg-2 col-sm-6">
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
                              <span class="text-dark">{PM_ROW_DATE}</span>
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-10 col-sm-6">
                        <div id="pm_text" class="fw-normal">{PM_ROW_TEXT}</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- END: PM_ROW -->
            <!-- BEGIN: PM_ROW_EMPTY --> {PHP.L.None}
            <!-- END: PM_ROW_EMPTY -->
            <!-- IF {PM_PAGES} -->
            <nav role="navigation" class="pagination pagination-info pagination-md m-4">{PM_PAGEPREV}{PM_PAGES}{PM_PAGENEXT}</nav>
            <!-- ENDIF -->
            <!-- END: HISTORY -->
          </div>
        </div>
        <div class="col-lg-3 order-first">
          <div class="card mb-4 border-radius-lg px-2 py-3">
            <div class="list-group list-group-flush ">
              <a href="{PHP|cot_url('pm')}" class="list-group-item list-group-item-action<!-- IF {PHP.f} == 'inbox' --> text-primary fw-bold<!-- ENDIF -->">{PHP.L.pm_inbox} </a>
              <a href="{PHP|cot_url('pm', 'f=sentbox')}" class="list-group-item list-group-item-action<!-- IF {PHP.f} == 'sentbox' --> active<!-- ENDIF -->">{PHP.L.pm_sentbox} </a>
              <a href="{PM_SENDNEWPM_URL}" class="list-group-item list-group-item-action">{PHP.L.pm_sendnew}</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- IF {PM_AJAX_MARKITUP} -->
    <script type="text/javascript">
      $(document).ready(function() {
        $("textarea.editor").markItUp(mySettings);
      });
    </script>
    <!-- ENDIF -->
    <!-- IF {PHP.cfg.jquery} -->
    <script type="text/javascript" src="{PHP.cfg.modules_dir}/pm/js/pm.js"></script>
    <!-- ENDIF -->
    <!-- BEGIN: AFTER_AJAX -->
  </div>
  <!-- END: AFTER_AJAX -->
</section>
<!-- END: MAIN -->