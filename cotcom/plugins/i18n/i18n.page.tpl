<!-- BEGIN: MAIN -->
<section class="py-5 bg-gray-200">
  <div id="i18n" class="container-fluide py-1 px-2 px-md-5 bg-light">
    <div class="col-lg-6 col-md-8 mx-auto text-center mb-5">
      <h3 class="text-dark">{I18N_TITLE}</h3>
      <p class="text-white opacity-6"></p>
    </div> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} 
	<form action="{I18N_ACTION}" method="post">
      <div class="row gy-3">
        <div class="col-lg-6 col-md-12 ms-lg-auto mb-sm-0 mb-5">
          <div class="card col-12">
            <div class="card-header">
              <h2> {PHP.L.i18n_original} ({I18N_ORIGINAL_LANG}) </h2>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-12 col-md-6">
                  <label for="inputPassword" class="col-12 col-md-6 col-form-label">
                    <span class="text-lg ff-monts text-muted">{PHP.L.Title}</span>
                  </label>
                </div>
                <div class="col-12 col-md-6"> {I18N_PAGE_TITLE} </div>
              </div>
              <div class="row">
                <div class="col-12 col-md-4">
                  <label class="col-12 col-form-label">
                    <span class="text-lg ff-monts text-muted">{PHP.L.Description}</span>
                  </label>
                </div>
                <div class="col-12 col-md-8"> {I18N_PAGE_DESC} </div>
              </div>
              <div class="mb-3">
                <label class="form-label">
                  <span class="text-lg ff-monts text-muted">{PHP.L.Text}</span>
                </label>
                <div class="i18n-page-text"> {I18N_PAGE_TEXT} </div>
              </div> {I18N_PAGE_TAGS}
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-12 me-lg-auto">
          <div class="card col-12">
            <div class="card-header">
              <div class="row">
                <div class="col-12 col-md-4">
                  <label class="col-12 col-form-label">
                    <span class="text-lg ff-monts text-muted"> {PHP.L.i18n_localized} </span>
                  </label>
                </div>
                <div class="col-12 col-md-8"> {I18N_LOCALIZED_LANG|cot_rc_modify($this, 'class="border border-dark form-select form-select-lg mb-3" aria-label=".form-select-lg"')} </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row mb-3">
                <div class="col-12 col-md-4">
                  <label class="col-12 col-form-label">
                    <span class="text-lg ff-monts text-muted"></span>{PHP.L.Title} </label>
                </div>
                <div class="col-12 col-md-8">
                  <input class="border border-dark form-control form-control-lg col-12" type="text" name="title" value="{I18N_IPAGE_TITLE}" />
                </div>
              </div>
              <div class="row mb-3">
                <div class="col-12 col-md-4">
                  <label class="col-12 col-form-label">
                    <span class="text-lg ff-monts text-muted">{PHP.L.Description}</span>
                  </label>
                </div>
                <div class="col-12 col-md-8">
                  <textarea class="border border-dark form-control form-control-lg col-12" name="desc" maxlength="255" rows="4" cols="64">{I18N_IPAGE_DESC}</textarea>
                </div>
              </div>
              <div class="row mb-3">
                <label class="col-12 col-form-label">
                  <span class="text-lg ff-monts text-muted">{PHP.L.Description}</span>
                </label>
                <div class="i18n-ipage-text"> {I18N_IPAGE_TEXT} </div>
              </div>
              <!-- BEGIN: TAGS -->
              <div class="row mb-3">
                <label class="col-12 col-form-label">
                  <span class="text-lg ff-monts text-muted">{PHP.L.Tags}</span>({PHP.L.tags_comma_separated}) </label> {I18N_IPAGE_TAGS}
              </div>
              <!-- END: TAGS -->
            </div>
          </div>
        </div>
      </div>
      <input class="btn bg-gradient-info mt-4" type="submit" value="{PHP.L.Submit}" />
    </form>
  </div>
  <div class="container-lg py-5"> themes/cotcom/plugins/i18n/i18n.page.tpl {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"} </div>
</section>
<!-- END: MAIN -->