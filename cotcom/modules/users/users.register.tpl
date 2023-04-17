<!-- BEGIN: MAIN -->
<section class="bg-gray-200">
  <div class="page-header min-vh-75">
    <div class="container mb-5 px-2 px-sm-2 px-lg-auto">
      <div class="row">
        <!-- IF {PHP.usr.id} <= 0 -->
        <div class="col-md-7 mx-auto">
          <div class="card z-index-0 mt-7">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="position-absolute top-0 start-0 translate-middle">
                <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon-bottom-cotonti.png" style="vertical-align:middle;" width="55" height="55" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}" />
              </div>
              <div class="title-bg-sea-cot shadow-info text-center py-4">
                <h4 class="font-weight-bolder text-white ff-monts">{USERS_REGISTER_TITLE}</h4>
              </div>
            </div>
            <div class="card-body pb-0"> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
			<form name="login" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data">
<div class="row mb-3">
  <div class="col-12 col-sm-4">
    <label class="col-form-label">{PHP.L.register.Username}:</label>
  </div>
  <div class="col-12 col-sm-8"> {USERS_REGISTER_USER} </div>
</div>
<div class="mb-3 row">
  <div class="col-12 col-sm-4">
    <label class="col-form-label">{PHP.L.register.Email}:</label>
  </div>
  <div class="col-12 col-sm-8"> {USERS_REGISTER_EMAIL} </div>
</div>
<div class="mb-3 row">
  <div class="col-12 col-sm-4">
    <label class="col-form-label">{PHP.L.Password}:</label>
  </div>
  <div class="col-12 col-sm-8"> {USERS_REGISTER_PASSWORD} </div>
</div>
<div class="mb-3 row">
  <div class="col-12 col-sm-4">
    <label class="col-form-label">{PHP.L.users_confirmpass}:</label>
  </div>
  <div class="col-12 col-sm-8"> {USERS_REGISTER_PASSWORDREPEAT} </div>
</div>
<div class="mb-3 row">
  <div class="col-12 col-sm-4">
    <label class="col-form-label">{PHP.L.register.Verification}:</label>
  </div>
  <div class="col-12 col-sm-4 text-center"><label class="col-form-label"> <span class="ms-1 text-warning font-weight-bolder ff-monts">{USERS_REGISTER_VERIFYIMG}</span></label> </div>
  <div class="col-12 col-sm-4"> {USERS_REGISTER_VERIFYINPUT} </div>
</div>

                <div class="text-center">
                  <button type="submit" class="btn bg-gradient-info mt-4 mb-2">{PHP.L.Register}</button>
                </div>
              </form>
            </div>
            <div class="card-footer text-center pt-0 px-sm-4 px-1">
              <div class="row px-xl-5 px-sm-4 px-3">
                <div class="py-2">
                  <p class="text-sm text-center mt-3 mb-0">Already have an account? <a href="{PHP|cot_url('login')}" class="text-dark font-weight-bolder">{PHP.L.Login}</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- ELSE -->
        <div class="col-xl-4 col-lg-5 col-md-7 mx-auto">
          <div class="card z-index-0 mt-7">
            <div class="card-body p-md-5 mx-md-4">
              <div class="text-center">
                <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon-bottom-cotonti.png" style="vertical-align:middle;" width="95" height="95" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}" />
                <h4 class="mt-1">{PHP.L.auth.LoggedInAs} <strong>{PHP.usr.name}</strong>
                </h4>
                <p>{PHP.L.auth.LogoutFirst}</p>
              </div>
              <p>
                <a class="darkbutton btn btn-danger" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">{PHP.L.Logout}</a>
              </p>
            </div>
          </div>
        </div>
        <!-- ENDIF -->
        <!-- BEGIN: USERS_AUTH_MAINTENANCE -->
        <div class="col-xl-4 col-lg-5 col-md-7 mx-auto">
          <div class="card z-index-0 mt-7">
            <div class="text-body px-3 py-4 p-md-5 mx-md-4">
              <h2 class="msg-box text-warning">{PHP.cfg.maintenancereason}</h2>
              <h4 class="mb-4">{PHP.L.users_maintenance1}</h4>
              <p class="mb-2">{PHP.L.users_maintenance2}</p>
            </div>
          </div>
        </div>
        <!-- END: USERS_AUTH_MAINTENANCE -->
      </div>
    </div>
</section>
<!-- END: MAIN -->