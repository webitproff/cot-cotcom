<!-- BEGIN: MAIN -->
<section class="bg-gray-200">
  <div class="container-xxl px-2 px-sm-2 px-lg-auto py-7">
    <div class="row">
      <div class="col-xl-6 col-lg-6 col-md-7 mx-auto"> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} 
	  <div class="card rounded-3 bg-surface-secondary text-dark px-2 px-sm-2 px-lg-auto">
            <div class="card-header p-0 position-relative mt-n4 mx-1 mx-lg-auto z-index-2">
              <div class="position-absolute top-0 start-2 translate-middle">
                <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon-bottom-cotonti.png" width="55" height="55" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}" />
              </div>
              <div class="bg-gradient-info shadow-info border-radius-lg px-3 text-center py-4">
                <h4 class="font-weight-bolder text-white mt-1 mb-0 ff-monts">{PASSRECOVER_TITLE}</h4>
              </div>
            </div>
			<div class="card-body px-2 px-sm-2 px-lg-auto">
          <!-- IF {PHP.msg} == 'request' -->
          <p>{PHP.L.pasrec_mailsent}</p>
          <!-- ENDIF -->
          <!-- IF {PHP.msg} == 'auth' -->
          <p>{PHP.L.pasrec_mailsent2}</p>
          <!-- ENDIF -->
          <!-- IF !{PHP.msg} -->
          <ol class="list-group list-group-numbered list-group-flush">
            <li class="list-group-item bg-transparent">{PHP.L.pasrec_explain1} <strong> my-email@example.com</strong>
            </li>
            <li class="list-group-item bg-transparent">{PHP.L.pasrec_explain2}</li>
            <li class="list-group-item bg-transparent">{PHP.L.pasrec_explain3}</li>
          </ol>
          <form name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post">
            <div class="input-group input-group-outline col-lg-6 mb-4 mt-4">
              <label class="form-label">{PHP.L.pasrec_youremail}</label>
              <input class="form-control text" type="text" name="email" value="" size="20" maxlength="64" />
            </div>
            <div class="mb-1">
              <button type="submit" class="btn btn-success m-2">{PHP.L.pasrec_request}</button>
            </div>
          </form>
          <div class="m-2">
            <p class="desc text-danger">{PHP.L.pasrec_explain4}</p>
          </div>
          <!-- ENDIF -->
		  </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- END: MAIN -->