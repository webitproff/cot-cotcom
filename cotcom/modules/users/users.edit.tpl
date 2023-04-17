<!-- BEGIN: MAIN -->
<section class="pt-5 bg-gray-200">
  <div class="container-xxl px-2 px-sm-2 px-lg-auto">
    <div class="row g-5">
      <div class="col-lg-8 order-lg-first">
        <div class="card shadow-lg mb-5">
          <div class="card-header p-0 position-relative mt-n4 z-index-2 bg-transparent">
            <div class="bg-gradient-secondary shadow-secondary border-radius-lg p-3">
              <a class="" href="{USERS_EDIT_DETAILSLINK}">
                <h4 class="mb-0 ff-monts link-warning">{PHP.urr.user_name} <i class="ms-2 fa-solid fa-square-up-right"></i>
                </h4>
              </a>
              <p class="fs-5 text-white opacity-10 mb-0">{PHP.L.usersedit.title}</p>
            </div>
          </div>
          <div class="card-body p-3"> {FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"} 
		  <div id="general-info" class="table-responsive">
              <table class="table table-striped">
                <tbody>
                  <tr>
                    <td>
                      <span class="fs-6 text-muted">{PHP.L.users_id}:</span>
                    </td>
                    <td>
                      <span class="fs-6 text-dark float-end"># {USERS_EDIT_ID}</span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <span class="fs-6 text-muted">{PHP.L.Maingroup}:</span>
                    </td>
                    <td>
                      <span class="fs-6 text-dark float-end">{USERS_EDIT_MAINGRP}</span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <span class="fs-6 text-muted">{PHP.L.Registered}:</span>
                    </td>
                    <td>
                      <span class="fs-6 text-dark float-end">{USERS_EDIT_REGDATE}</span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <span class="fs-6 text-muted">{PHP.L.Lastlogged}:</span>
                    </td>
                    <td>
                      <span class="fs-6 text-dark float-end">{USERS_EDIT_LASTLOG}</span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <span class="fs-6 text-muted">{PHP.L.users_logcounter}:</span>
                    </td>
                    <td>
                      <span class="fs-6 text-dark float-end">{USERS_EDIT_LOGCOUNT}</span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <span class="fs-6 text-muted">{PHP.L.users_lastip}:</span>
                    </td>
                    <td>
                      <span class="fs-6 text-dark float-end">{USERS_EDIT_LASTIP}</span>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <form action="{USERS_EDIT_SEND}" method="post" name="useredit" class="form-horizontal">
              <input type="hidden" name="id" value="{USERS_EDIT_ID}" />
              <div class="list-group list-group-flush px-0">
                <div class="list-group-item list-group-item-action px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-6">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.Username}:</span>
                      </label>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="col-12 fs-6 text-dark float-end">{USERS_EDIT_NAME}</div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-6">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.Maingroup}/{PHP.L.Groupsmembership}</span>
                      </label>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="col-12 fs-6 text-dark float-end">{USERS_EDIT_GROUPS}</div>
                    </div>
                  </div>
                </div>
                <div id="security" class="list-group-item list-group-item-action px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-6">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.aut_mailnoticetitle}:</span>
                      </label>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="col-12 fs-6 text-dark float-end">{USERS_EDIT_EMAIL} </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-8">
                      <p class="ff-monts">
                        <span class="h6">{PHP.L.users_newpass}:</span>
                        <br>
                        <span class="fs-6 text-muted">{PHP.L.users_newpasshint1}</span>
                      </p>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="col-12 fs-6 text-dark float-end">{USERS_EDIT_NEWPASS}</div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-8">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.users_hideemail}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-4">
                      <span class="h6 text-dark float-end">{USERS_EDIT_HIDEEMAIL}</span>
                    </div>
                  </div>
                </div>
                <!-- IF {PHP.cot_modules.pm} -->
                <div class="list-group-item list-group-item-action pb-0 pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-12 col-md-8">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.users_pmnotify}:</span>
                      </label>
                      <div class="text-xs">{PHP.L.users_pmnotifyhint}</div>
                    </div>
                    <div class="col-12 col-md-4">
                      <span class="h6 text-dark float-end">{USERS_EDIT_PMNOTIFY}</span>
                    </div>
                  </div>
                </div>
                <!-- ENDIF -->
              </div>
              <hr class="hr-cot my-3">
			  <div id="locale">
              <div class="row mb-2">
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Theme}:</span>
                    </label>
                    <div class="input-group input-group-static"> {USERS_EDIT_THEME|cot_rc_modify($this, 'id="rusertheme"')} </div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Language}:</span>
                    </label>
                    <div class="input-group input-group-static"> {USERS_EDIT_LANG|cot_rc_modify($this, 'id="language"')} </div>
                  </div>
                </div>
              </div>
			  </div>
              <div class="row mb-2">
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Country}:</span>
                    </label>
                    <div class="input-group input-group-static">{USERS_EDIT_COUNTRY|cot_rc_modify($this, 'id="rusercountry"')}</div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Timezone}:</span>
                    </label>
                    <div class="input-group input-group-static">{USERS_EDIT_TIMEZONE|cot_rc_modify($this, 'id="rusertimezone"')}</div>
                  </div>
                </div>
              </div>
              <hr class="hr-cot my-3">
              <div class="row mb-2">
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Gender}:</span>
                    </label>
                    <div class="input-group input-group-static">{USERS_EDIT_GENDER|cot_rc_modify($this, 'id="rusergender"')}</div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Birthdate}:</span>
                    </label> {USERS_EDIT_BIRTHDATE}
                  </div>
                </div>
              </div>
              <hr class="hr-cot my-3">
			  <div id="avatar-foto">
              <!-- IF {USERS_EDIT_AVATAR} -->
              <div class="form-group">
                <label>
                  <span class="h6">{PHP.L.Avatar}:</span>
                </label>
                <div class="input-group input-group-static">{USERS_EDIT_AVATAR}</div>
              </div>
              <!-- ENDIF -->
              <!-- IF {USERS_EDIT_PHOTO} -->
              <div class="form-group">
                <label>
                  <span class="h6">{PHP.L.Photo}:</span>
                </label>
                <div class="input-group input-group-static">{USERS_EDIT_PHOTO}</div>
              </div>
              <!-- ENDIF -->
              <!-- IF {USERS_EDIT_USERIMGBG} -->
              <div class="form-group">
                <label>
                  <span class="h6">{PHP.L.userimgbg}:</span>
                </label>
                <div class="input-group input-group-static">{USERS_EDIT_USERIMGBG}</div>
              </div>
              <!-- ENDIF -->
			  </div>
              <hr class="hr-cot my-3">
              <div id="signature">
                <div class="col-12">
                  <div class="form-group mb-4 mt-md-0 mt-4">
                    <label class="form-control-label">
                      <span class="h6">{PHP.L.Signature}:</span>
                    </label>
                    <div class="input-group input-group-static">{USERS_EDIT_TEXT}</div>
                  </div>
                </div>
              </div>
              <div class="list-group list-group-flush px-0">
                <div class="list-group-item list-group-item-action pb-0 pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-12 col-md-8">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.users_deleteuser}:</span>
                      </label>
                    </div>
                    <div class="col-12 col-md-4">
                      <span class="h6 text-dark float-end">{USERS_EDIT_DELETE}</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="text-center">
                <button type="submit" class="btn bg-gradient-success w-50 mt-4 mb-2">{PHP.L.Update}</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-4 order-first">
        <div class="card shadow mb-5 position-sticky sticky-lg-top top-5 shadow-lg">
          <div class="card-header p-0 position-relative mt-lg-n4 mt-sm-n2 z-index-2 bg-transparent">
            <div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
              <h5 class="mb-0 text-light ff-monts font-weight-bold">
                {PHP.L.Menu}
              </h5>
            </div>
          </div>
            <div class="list-group list-group-flush">
              <a data-easing="linear" href="{PHP.id|cot_url('users', 'm=edit&id='$this, '#general-info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.usersedit.usergeneral-info}</a>
			  <a data-easing="linear" href="{PHP.id|cot_url('users', 'm=edit&id='$this, '#security')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.Security}</a>
			  <a data-easing="linear" href="{PHP.id|cot_url('users', 'm=edit&id='$this, '#locale')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.Locale}</a>
			  <a data-easing="linear" href="{PHP.id|cot_url('users', 'm=edit&id='$this, '#avatar-foto')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.usersedit.avatar-foto}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('users', 'm=edit&id='$this, '#signature')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.Signature}</a>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- END: MAIN -->