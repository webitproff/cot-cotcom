<!-- BEGIN: MAIN -->
<section class="py-5 pt-md-3 pb-md-5 pt-lg-5 bg-gray-200">
  <div class="container mb-4 mt-4 px-2">
    <h3 class="text-uppercase text-secondary text-md font-weight-bold opacity-7 ps-2">{FORUMS_EDITPOST_PAGETITLE}</h3>
    <!-- IF {FORUMS_EDITPOST_SUBTITLE} -->
    <div class="alert alert-light text-dark font-weight-bold" role="alert"> {FORUMS_EDITPOST_SUBTITLE} </div>
    <!-- ENDIF -->
    <div class="card shadow-lg">
      <div class="card-body py-2"> {FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"} 
	  <form action="{FORUMS_EDITPOST_SEND}" method="post" name="editpost" autocomplete="off">
          <div class="row">
            <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
            <div class="col-md-12 pe-2 mb-3 mt-4">
              <div class="input-group input-group-static">
                <label>
                  <span class="badge bg-gradient-light text-dark text-ltspc">{PHP.L.forums_topic}:</span>
                </label> {FORUMS_EDITPOST_TOPICTITTLE}
              </div>
            </div>
            <div class="col-md-12 pe-2 mb-3 mt-4">
              <div class="input-group input-group-static">
                <label>
                  <span class="badge bg-gradient-light text-dark text-ltspc"> {PHP.L.Description}</span>
                </label> {FORUMS_EDITPOST_TOPICDESCRIPTION}
              </div>
            </div>
            <!-- END: FORUMS_EDITPOST_FIRSTPOST -->
            <div class="col-md-12 pe-2 mb-3 mt-4">
              <div class="input-group input-group-static mb-2">
                <label></label> {FORUMS_EDITPOST_TEXT}
              </div>
            </div>
            <!-- BEGIN: PRIVATE -->
            <div class="col-md-12 pe-2 mb-3">
              <div class="input-group input-group-static">
                <label>
                  <span class="badge bg-gradient-light text-dark text-ltspc">{PHP.L.forums_privatetopic1}:</span>
                </label>{FORUMS_NEWTOPIC_ISPRIVATE} <p class="small">({PHP.L.forums_privatetopic2})</p>
              </div>
            </div>
            <!-- END: PRIVATE -->
            <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
            <div class="col-md-12 pe-2 mb-3">
              <div class="input-group input-group-static">
                <label>
                  <span class="badge bg-gradient-light text-dark text-ltspc">{PHP.L.Tags}:</span>
                </label>{FORUMS_EDITPOST_FORM_TAGS|cot_rc_modify($this, 'class="form-control form-control-lg col-12"')} <p class="small">({FORUMS_EDITPOST_TOP_TAGS_HINT})</p>
              </div>
            </div>
            <!-- END: FORUMS_EDITPOST_TAGS -->
            <!-- BEGIN: POLL -->
            <div class="my-4">
              <div id="forumpoll">
                <!-- Trigger Buttons HTML -->
                <button type="button" class="btn btn-secondary w-auto me-2" data-bs-toggle="collapse" data-bs-target="#myCollapse">{PHP.L.Poll}</button>
                <!-- Collapsible Element HTML -->
                <div class="collapse" id="myCollapse">
                  <!-- BEGIN: POLL -->
                  <div class="row">
                    <div class="col-md-12 pe-2 mb-3 mt-4">
                      <div class="input-group input-group-static">
                        <label>
                          <span class="badge bg-gradient-light text-dark text-ltspc"> {PHP.L.poll}: </span>
                        </label>
                        <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                        <script type="text/javascript">
                          var ansMax = {
                            PHP.cfg.polls.max_options_polls
                          };
                        </script>{EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}
                      </div>
                    </div>
                    <p class="p"> {PHP.L.Options} </p>
                    <!-- BEGIN: OPTIONS -->
                    <div class="col-md-12 pe-2">
                      <div class="input-group input-group-outline polloptiondiv  my-3"> {EDIT_POLL_OPTION_TEXT} <span class="input-group-text">
                          <input name="deloption" value="x" type="button" class="deloption" style="display:none;" />
                        </span>
                      </div>
                    </div>
                    <!-- END: OPTIONS -->
                    <input id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn bg-gradient-primary btn-sm me-2" style="display:none;" />
                    <div class="col-md-12 pe-2 mb-3">
                      <div class="input-group input-group-static"> {EDIT_POLL_MULTIPLE} </div>
                    </div>
                    <!-- BEGIN: EDIT -->
                    <div class="col-md-12 pe-2 mb-3 mt-4">
                      <div class="input-group input-group-static mb-2">
                        <label></label> {EDIT_POLL_CLOSE} {EDIT_POLL_RESET} {EDIT_POLL_DELETE}
                      </div>
                    </div>
                    <!-- END: EDIT -->
                  </div>
                  <!-- END: POLL -->
                </div>
              </div>
            </div>
            <!-- END: POLL -->
            <div class="row">
              <div class="col-md-6 text-end ms-auto">
                <button type="submit" class="btn btn-primary bg-gradient-primary mb-0">{PHP.L.Submit}</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</section> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"} 
<!-- END: MAIN -->