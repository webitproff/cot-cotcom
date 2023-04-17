<!-- BEGIN: MAIN -->
<section class="py-5 pt-md-3 pb-md-5 pt-lg-5 bg-gray-200">
  <!-- BEGIN: BEFORE_AJAX -->
  <div id="ajaxBlock">
    <!-- END: BEFORE_AJAX -->
    <div class="pm container px-2">
      <div class="card shadow-lg">
        <div class="row justify-space-between text-center py-3">
          <div class="col-12 mx-auto">
            <a href="pm" class="btn bg-gradient-primary w-auto me-2 ajax">{PHP.L.pm_inbox}</a>
            <a href="pm?f=sentbox" class="btn bg-gradient-info w-auto me-2 ajax">{PHP.L.pm_sentbox}</a>
          </div>
        </div> {FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"} 
		<form action="{PMSEND_FORM_SEND}" method="post" name="newmessage" id="mewmessage">
          <div class="card-body py-2">
            <h3>{PHP.L.pm_sendnew}</h3>
            <div class="row">
              <!-- BEGIN: PMSEND_USERLIST -->
              <div class="col-md-12 pe-2 mb-3">
                <div class="input-group input-group-static">
                  <label>
                    <span class="badge bg-gradient-light text-dark text-ltspc">{PHP.L.Recipients}:</span>
                  </label> {PMSEND_FORM_TOUSER} <p class="small">{PHP.L.pm_sendmessagetohint}</p>
                </div>
              </div>
              <!-- END: PMSEND_USERLIST -->
              <div class="col-md-12 pe-2 mb-3">
                <div class="input-group input-group-static mb-2">
                  <label>
                    <span class="badge bg-gradient-light text-dark text-ltspc">{PHP.L.Subject}:</span>
                  </label> {PMSEND_FORM_TITLE} <p class="small">{PHP.themelang.pmsend.Sendmessagetohint}</p>
                </div>
              </div>
              <div class="col-md-12 pe-2 mb-3">
                <div class="input-group input-group-static mb-2">
                  <label>
                    <span class="badge bg-gradient-light text-dark text-ltspc mb-3">{PHP.L.Message}:</span>
                  </label> {PMSEND_FORM_TEXT}
                </div>
              </div>
            </div>
            <input type="checkbox" class="checkbox" name="fromstate" value="3" /> {PHP.L.pm_notmovetosentbox} <div class="row">
              <div class="col-md-6 text-end ms-auto">
                <button type="submit" class="btn btn-primary bg-gradient-primary mb-0">{PHP.L.Submit}</button>
              </div>
            </div>
          </div>
        </form>
      </div>

      <!-- BEGIN: AFTER_AJAX -->
    </div>
    <!-- END: AFTER_AJAX -->
  </div>
</section>
<!-- END: MAIN -->