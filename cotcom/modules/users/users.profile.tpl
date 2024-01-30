<!-- BEGIN: MAIN -->
<section class="pt-5 bg-gray-200">
  <div class="container-xxl px-2 px-sm-2 px-lg-auto">
    <div class="row g-5">
      <div class="col-lg-8 order-lg-first">
        <div class="card shadow-lg mb-5">
          <div class="card-header p-0 position-relative mt-n4 z-index-2 bg-transparent">
            <div class="title-bg-sea-cot">
              <h3 class="mb-0 ff-monts text-white">{PHP.L.pro_title}</h3>
              <p class="text-white opacity-8 mb-0">{PHP.L.pro_subtitle}</p>
            </div>
          </div>
          <div class="card-body p-3"> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile" class="form-horizontal">
              <input type="hidden" name="userid" value="{USERS_PROFILE_ID}" />
              <div class="list-group list-group-flush px-0"> 
                <div id="general-info" class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.Username}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-8">
                      <span class="h6 text-dark float-end">
                        <span class="badge bg-gradient-info me-2"># {USERS_PROFILE_ID} </span>
                        <a href="{USERS_PROFILE_NAME|cot_url('users', 'm=details&u=$this')}">{USERS_PROFILE_NAME}</a>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.Maingroup}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-8">
                      <span class="h6 text-dark float-end">{USERS_PROFILE_MAINGRP}</span>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.Registered}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-8">
                      <span class="fs-6 text-dark float-end">{USERS_PROFILE_REGDATE}</span>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.Lastlogged}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-8">
                      <span class="fs-6 text-dark float-end">{USERS_PROFILE_LASTLOG}</span>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.users_logcounter}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-8">
                      <span class="fs-6 text-dark float-end">{USERS_PROFILE_LOGCOUNT}</span>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.pasrec_youremail}</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-8">
                      <span class="fs-6 text-dark float-end">{PHP.usr.profile.user_email}</span>
                    </div>
                  </div>
                </div>
                <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
                <div class="list-group-item list-group-item-action px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.aut_mailnoticetitle}:</span>
                      </label>
                    </div>
                    <div class="col-12 col-md-8">
                      <div class="col-12 fs-6 text-dark float-end">{USERS_PROFILE_EMAIL} </div>
                    </div>
                  </div>
                </div>
                <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
                <div class="list-group-item list-group-item-action px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-4" id="emailtd">
                      <label>
                        <span class="fs-6 text-muted">
                          <a href="#email-change-info" data-bs-target="#email-change-info" data-bs-toggle="modal">
                            <span class="fs-4 text-info me-2">
                              <i class="fa-solid fa-circle-info"></i>
                            </span>
                          </a>{PHP.themelang.usersprofile_Emailpassword}: </span>
                      </label>
                    </div>
                    <div class="col-12 col-md-8">
                      <div class="col-12 fs-6 text-dark float-end">{USERS_PROFILE_EMAILPASS} </div>
                    </div>
                  </div>
                </div>
                <!-- END: USERS_PROFILE_EMAILPROTECTION -->
                <!-- END: USERS_PROFILE_EMAILCHANGE -->
                <div class="list-group-item list-group-item-action pb-0">
                  <div class="input-group row">
                    <div class="col-6 col-md-8">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.users_hideemail}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-4">
                      <span class="h6 text-dark float-end">{USERS_PROFILE_HIDEEMAIL}</span>
                    </div>
                  </div>
                </div>
                <!-- IF {PHP.cot_modules.pm} -->
                <div class="list-group-item list-group-item-action pb-0">
                  <div class="input-group row">
                    <div class="col-12 col-md-8">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.users_pmnotify}:</span>
                      </label>
                      <div class="text-xs">{PHP.L.users_pmnotifyhint}</div>
                    </div>
                    <div class="col-12 col-md-4">
                      <span class="h6 text-dark float-end">{USERS_PROFILE_PMNOTIFY}</span>
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
                    <div class="input-group input-group-static"> {USERS_PROFILE_THEME|cot_rc_modify($this, 'id="rusertheme"')} </div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Language}:</span>
                    </label>
                    <div class="input-group input-group-static"> {USERS_PROFILE_LANG|cot_rc_modify($this, 'id="language"')} </div>
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
                    <div class="input-group input-group-static">{USERS_PROFILE_COUNTRY|cot_rc_modify($this, 'id="rusercountry"')}</div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Timezone}:</span>
                    </label>
                    <div class="input-group input-group-static">{USERS_PROFILE_TIMEZONE|cot_rc_modify($this, 'id="rusertimezone"')}</div>
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
                    <div class="input-group input-group-static">{USERS_PROFILE_GENDER|cot_rc_modify($this, 'id="rusergender"')}</div>
                  </div>
                </div>
                <div class="col-lg-6 col-md-12">
                  <div class="form-group">
                    <label>
                      <span class="h6">{PHP.L.Birthdate}:</span>
                    </label> {USERS_PROFILE_BIRTHDATE}
                  </div>
                </div>
              </div>
              <hr class="hr-cot my-3">
				<div id="avatar-foto">
              <!-- IF {USERS_PROFILE_AVATAR} -->
                  <div class="form-group mb-4">
<div class="title-bg-light-cot mb-4">
	<h3 class="fs-5 text-dark ff-monts fw-normal">{PHP.L.Avatar}</h3>
</div>
                    <div class="input-group input-group-static">{USERS_PROFILE_AVATAR}</div>
                  </div>
              <!-- ENDIF -->
              <!-- IF {USERS_PROFILE_PHOTO} -->
                  <div class="form-group mb-4">
<div class="title-bg-light-cot mb-4">
	<h3 class="fs-5 text-dark ff-monts fw-normal">{PHP.L.Photo}:</h3>
</div>
                    <div class="input-group input-group-static">{USERS_PROFILE_PHOTO}</div>
                  </div>
              <!-- ENDIF -->
              <!-- IF {USERS_PROFILE_USERIMGBG} -->
                  <div class="form-group mb-4">
<div class="title-bg-light-cot mb-4">
	<h3 class="fs-5 text-dark ff-monts fw-normal">{PHP.L.userimgbg}:</h3>
</div>

                    <div class="input-group input-group-static">{USERS_PROFILE_USERIMGBG}</div>
                  </div>
              <!-- ENDIF -->
			  </div>
              <div id="signature">
                <div class="col-12">
                  <div class="form-group mb-4 mt-md-0 mt-4">
<div class="title-bg-light-cot mb-4">
	<h3 class="fs-5 text-dark ff-monts fw-normal">{PHP.L.Signature}:</h3>
</div>

                    <div class="input-group input-group-static">{USERS_PROFILE_TEXT}</div>
                  </div>
                </div>
              </div>
			  <div id="security">
              <div class="list-group list-group-flush px-0">
                <p class="ff-monts">
                  <span class="h6">{PHP.L.users_newpass}:</span>
                </p>
                <div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-8">
                      <p>
                        <span class="fs-6 text-muted">{PHP.L.users_newpasshint1}</span>
                        <br>
                        <span class="text-xs text-danger ff-monts">{PHP.L.users_oldpasshint}</span>
                      </p>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="col-12 fs-6 text-dark float-end">{USERS_PROFILE_OLDPASS} </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-8">
                      <p>
                        <span class="fs-6 text-muted">{PHP.L.users_newpasshint2}</span>
                      </p>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="row ">
                        <div class="col-12 mb-2"> {USERS_PROFILE_NEWPASS1} </div>
                        <div class="col-12"> {USERS_PROFILE_NEWPASS2} </div>
                      </div>
                    </div>
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
              <a data-easing="linear" href="{PHP|cot_url('users', 'm=profile', '#general-info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.usersedit.usergeneral-info}</a>
			  <a data-easing="linear" href="{PHP|cot_url('users', 'm=profile', '#locale')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.Locale}</a>
			  <a data-easing="linear" href="{PHP|cot_url('users', 'm=profile', '#avatar-foto')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.usersedit.avatar-foto}</a>
              <a data-easing="linear" href="{PHP|cot_url('users', 'm=profile', '#signature')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.Signature}</a>
			  <a data-easing="linear" href="{PHP|cot_url('users', 'm=profile', '#security')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.Security}</a>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>
    <div class="modal fade" id="email-change-info" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
            <div class="text-xs">{PHP.themelang.usersprofile_Emailnotes}</div>
          </div>
          <div class="modal-footer justify-content-between">
            <button type="button" class="btn bg-gradient-dark mb-0" data-bs-dismiss="modal">{PHP.L.Close}</button>
          </div>
        </div>
      </div>
    </div>
<!-- END: MAIN -->