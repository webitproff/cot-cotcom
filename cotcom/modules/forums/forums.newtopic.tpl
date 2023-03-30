<!-- BEGIN: MAIN -->
<section class="py-5 pt-md-3 pb-md-5 pt-lg-5 bg-gray-200">
  <div class="container mb-4 mt-4 px-2">
    <h2>{FORUMS_NEWTOPIC_PAGETITLE}</h2>
    <div class="card shadow-lg">
      <div class="card-body py-2"> {FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"} 
	  <form action="{FORUMS_NEWTOPIC_SEND}" method="post" name="newtopic">
          <div class="row">
            <div class="col-md-12 pe-2 mb-3 mt-4">
              <div class="input-group input-group-dynamic">
                <label class="form-label"> {PHP.L.Title} </label> {FORUMS_NEWTOPIC_TITLE}
              </div>
            </div>
            <div class="col-md-12 pe-2 mb-3 mt-4">
              <div class="input-group input-group-dynamic">
                <label class="form-label"> {PHP.L.Description} </label> {FORUMS_NEWTOPIC_DESC}
              </div>
            </div>
            <div class="col-md-12 pe-2 mb-3 mt-4">
              <div class="input-group input-group-static mb-2">
                <label></label> {FORUMS_NEWTOPIC_TEXT}
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
            <!-- BEGIN: FORUMS_NEWTOPIC_TAGS -->
            <div class="col-md-12 pe-2 mb-3">
              <div class="input-group input-group-static">
                <label class="form-label">{PHP.L.Tags}: </label>{FORUMS_NEWTOPIC_FORM_TAGS|cot_rc_modify($this, 'class="form-control form-control-lg col-12"')} <p class="small">({FORUMS_NEWTOPIC_TOP_TAGS_HINT})</p>
              </div>
            </div>
            <!-- END: FORUMS_NEWTOPIC_TAGS -->
            <!-- BEGIN: POLL -->
            <div class="my-4">
              <div id="forumpoll">
                <!-- Trigger Buttons HTML -->
                <button type="button" class="btn btn-secondary w-auto me-2" data-bs-toggle="collapse" data-bs-target="#myCollapse">{PHP.L.forums.AddPoll}</button>
                <!-- Collapsible Element HTML -->
                <div class="collapse" id="myCollapse">
                  <!-- BEGIN: POLL -->
                  <div class="row">
                    <div class="col-md-12 pe-2 mb-3 mt-4">
                      <p></p>
                      <div class="input-group input-group-dynamic">
                        <label class="form-label"> {PHP.L.poll}: </label>
                        <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                        <script type="text/javascript">
                          var ansMax = {
                            PHP.cfg.polls.max_options_polls
                          };
                        </script> {EDIT_POLL_IDFIELD} {EDIT_POLL_TEXT}
                      </div>
                    </div>
                    <p class="p"> {PHP.L.Options} </p>
                    <!-- BEGIN: OPTIONS -->
                    <div class="col-md-12 pe-2">
                      <div class="input-group input-group-outline polloptiondiv  my-3">
                        <label class="form-label">Option </label> {EDIT_POLL_OPTION_TEXT} <span class="input-group-text">
                          <input name="deloption" value="x" type="button" class="deloption" style="display:none;" />
                        </span>
                      </div>
                    </div>
                    <!-- END: OPTIONS -->
                    <input id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn bg-gradient-primary btn-sm me-2" style="display:none;" />
                    <div class="col-md-12 pe-2 mb-3">
                      <div class="input-group input-group-static"> {EDIT_POLL_MULTIPLE} </div>
                    </div>
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
<div class="input-group input-group-outline">
  <label class="form-label"> {PHP.L.Options} </label>
  <div class="polloptiondiv"> {EDIT_POLL_OPTION_TEXT} <span class="input-group-text">
      <input name="deloption" value="x" type="button" class="deloption" style="display:none;" />
    </span>
  </div>
</div>