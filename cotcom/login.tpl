<!-- BEGIN: MAIN -->
<section class="bg-gray-200">
  <div class="page-header min-vh-75">
    <div class="container px-2 px-sm-2 px-lg-auto">
      <div class="row">
        <!-- IF {PHP.usr.id} <= 0 -->
        <div class="col-xl-4 col-lg-5 col-md-7 mx-auto">
          <div class="card z-index-0 mt-5">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="position-absolute top-0 start-100 translate-middle">
                <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon-bottom-cotonti.png" style="vertical-align:middle;" width="55" height="55" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}" />
              </div>
              <div class="bg-gradient-warning shadow-warning border-radius-lg py-3 pe-1 text-center py-4">
                <h4 class="font-weight-bolder text-white mt-1 mb-0 ff-monts">{PHP.L.aut_logintitle}</h4>
                <p class="font-weight-bolder mb-1 text-sm text-dark ff-monts">{PHP.L.hea_welcome}</p>
              </div>
            </div>
            <div class="card-body pb-0"> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <form name="login" action="{USERS_AUTH_SEND}" method="post"><label class="form-label">{PHP.L.users_nameormail}:</label>
                <div class="input-group input-group-outline mb-3">
                   {USERS_AUTH_USER}
                </div><label class="form-label">{PHP.L.Password}:</label>
                <div class="input-group input-group-outline mb-4">
                   {USERS_AUTH_PASSWORD}
                </div>
                <div class="form-check form-switch d-flex align-items-center">
                  <input class="form-check-input" name="rremember" type="checkbox" id="rememberMe">
                  <label class="form-check-label my-auto ms-2" for="rememberMe">{PHP.L.users_rememberme}</label>
                </div>
                <div class="text-center">
                  <button type="submit" class="btn bg-gradient-info w-100 mt-4 mb-2">{PHP.L.Login}</button>
                </div>
              </form>
            </div>
            <div class="card-footer text-center pt-0 px-sm-4 px-1">
              <div class="row px-xl-5 px-sm-4 px-3">
                <div class="py-2">
                  <a class="text-warning" href="{PHP|cot_url('users', 'm=passrecover')}" id="passrecover" title="{PHP.L.users_lostpass}">{PHP.L.users_lostpass}</a>
                </div>
                <p class="mb-0 mt-3 text-sm mx-auto">
                  <a class="text-info text-gradient font-weight-bold" href="{PHP|cot_url('users','m=register')}">{PHP.L.auth.Register}</a>
                </p>
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