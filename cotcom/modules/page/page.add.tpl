<!-- BEGIN: MAIN -->
<section class="pt-5 bg-gray-200">
  <div class="container-xxl px-2 px-sm-2 px-lg-auto">
    <div class="row g-5">
      <div class="col-lg-8 order-lg-first">
        <div class="card shadow-lg mb-5">
          <div class="card-header p-0 position-relative mt-n4 z-index-2 bg-transparent">
            <div class="bg-gradient-secondary shadow-secondary border-radius-lg p-3">
              <h3 class="mb-0 ff-monts text-white">{PHP.L.page.add_title}:</h3>
              <p class="text-white opacity-8 mb-0">{PHP.L.page.add_subtitle}:</p>
            </div>
          </div>
          <div class="card-body p-3"> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="form-horizontal">
              <div class="list-group list-group-flush px-0">
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Category}:</span>
                      </label>
                      <div class="input-group input-group-static">{PAGEADD_FORM_CAT|cot_rc_modify($this, 'id="rpagecat"')}</div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">PAGEADD_ADMINEMAIL</span>
                      </label>
                      <div class="input-group input-group-static">{PAGEADD_ADMINEMAIL}</div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Title}:</span>
                      </label>
                      <div class="input-group input-group-outline mb-4">
                        <label class="form-label">{PHP.L.Title}</label> {PAGEADD_FORM_TITLE}
                      </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.page.description_Short}:</span>
                        <span class="badge badge-pill badge-md bg-gradient-warning ms-3">&lt;= 255</span>
                      </label>
                      <div class="input-group input-group-outline mb-4"> {PAGEADD_FORM_DESC} </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Alias}:</span>
                      </label>
                      <div class="input-group input-group-outline mb-4">
                        <label class="form-label">{PHP.L.Alias}</label> {PAGEADD_FORM_ALIAS}
                      </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.page_metatitle}:</span>
                      </label>
                      <div class="input-group input-group-outline mb-4">
                        <label class="form-label">{PHP.L.page_metatitle}</label> {PAGEADD_FORM_METATITLE}
                      </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.page_metadesc}:</span>
                      </label>
                      <div class="input-group input-group-outline mb-4"> {PAGEADD_FORM_METADESC} </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Author}:</span>
                      </label>
                      <div class="input-group input-group-outline mb-4">
                        <label class="form-label">{PHP.L.Author}:</label> {PAGEADD_FORM_AUTHOR}
                      </div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group row">
                    <div class="col-6 col-md-4">
                      <label>
                        <span class="fs-6 text-muted">{PHP.L.Owner}:</span>
                      </label>
                    </div>
                    <div class="col-6 col-md-8">
                      <span class="fs-6 text-dark float-end">{PAGEADD_FORM_OWNER}</span>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Begin}:</span>
                      </label> {PAGEADD_FORM_BEGIN}
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Expire}:</span>
                      </label> {PAGEADD_FORM_EXPIRE}
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                <div class="input-group row">
                  <div class="col-6 col-md-4">
                    <label>
                      <span class="h6">{PHP.L.Parser}:</span>
                    </label>
                  </div>
                  <div class="col-6 col-md-8">
				  <div class="input-group input-group-static">{PAGEADD_FORM_PARSER|cot_rc_modify($this, 'id="rpageparser"')}</div>
                     
                  </div>
                </div>

                </div>
              </div>
              <div class="list-group list-group-flush px-0">
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.page.description_Full}:</span>
                      </label>
                      <div class="input-group input-group-static mb-4"> {PAGEADD_FORM_TEXT} </div>
                    </div>
                  </div>
                </div>
<!-- IF {PHP.cot_modules.pfs} -->
<!-- IF {PAGEADD_FORM_PFS} -->
<div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto mb-3">
  <div class="input-group input-group-outline row">
	<div class="col-12 col-md-6">
	  <p>
		<span class="fs-6 text-muted">{PHP.L.Mypfs}</span>
	  </p>
	</div>
	<div class="col-12 col-md-6">
	  <div class="col-12 fs-6 text-dark float-end">{PAGEADD_FORM_PFS} </div>
	</div>
  </div>
<!-- IF {PAGEADD_FORM_HEAD_SCREEN_1} -->
<div class="input-group input-group-static row">
  <div class="col-12 col-md-4">
	<p>
	  <span class="fs-6 text-muted">{PAGEADD_FORM_HEAD_SCREEN_1_TITLE}<span class="h6 text-danger ff-monts"> {PHP.L.URL}</span>:</span> 
	</p>
  </div>
  <div class="col-12 col-md-8">
	<div class="input-group input-group-static mb-4"> {PAGEADD_FORM_HEAD_SCREEN_1}</div>
  </div>
</div>
<!-- ENDIF -->
<!-- IF {PAGEADD_FORM_HEAD_SCREEN_2} -->
<div class="input-group input-group-static row">
  <div class="col-12 col-md-4">
	<p>
	  <span class="fs-6 text-muted">{PAGEADD_FORM_HEAD_SCREEN_2_TITLE}<span class="h6 text-danger ff-monts"> {PHP.L.URL}</span>:</span> 
	</p>
  </div>
  <div class="col-12 col-md-8">
	<div class="input-group input-group-static mb-4"> {PAGEADD_FORM_HEAD_SCREEN_2}</div>
  </div>
</div>
<!-- ENDIF -->
<!-- IF {PAGEADD_FORM_HEAD_SCREEN_3} -->
<div class="input-group input-group-static row">
  <div class="col-12 col-md-4">
	<p>
	  <span class="fs-6 text-muted">{PAGEADD_FORM_HEAD_SCREEN_3_TITLE}<span class="h6 text-danger ff-monts"> {PHP.L.URL}</span>:</span> 
	</p>
  </div>
  <div class="col-12 col-md-8">
	<div class="input-group input-group-static mb-4"> {PAGEADD_FORM_HEAD_SCREEN_3}</div>
  </div>
</div>
</div>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- ENDIF -->
                <!-- IF {PAGEADD_FORM_SFS} -->
                <div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-6">
                      <p>
                        <span class="fs-6 text-muted">xxxxxxx</span>
                      </p>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="col-12 fs-6 text-dark float-end">{PAGEADD_FORM_SFS} </div>
                    </div>
                  </div>
                </div>
                <!-- ENDIF -->
                <div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-6">
                      <p>
                        <span class="fs-6 text-muted">{PHP.L.page_file}:</span>
                        <br>
                        <span class="text-xs text-danger ff-monts">{PHP.L.page_filehint}</span>
                      </p>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="col-12 fs-6 text-dark float-end">{PAGEADD_FORM_FILE}</div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-6">
                      <p>
                        <span class="fs-6 text-muted">{PHP.L.page_filesize}:</span>
                        <br>
                        <span class="text-xs text-danger ff-monts">{PHP.L.page_filesizehint}</span>
                      </p>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="col-12 fs-6 text-dark float-end">{PAGEADD_FORM_SIZE}</div>
                    </div>
                  </div>
                </div>
                <div class="list-group-item list-group-item-action pb-2 px-2 px-sm-2 px-lg-auto">
                  <div class="input-group input-group-outline row">
                    <div class="col-12 col-md-6">
                      <p>
                        <span class="fs-6 text-muted">{PHP.L.URL}:</span>
                        <br>
                        <span class="text-xs text-danger ff-monts">{PHP.L.page_urlhint}</span>
                      </p>
                    </div>
                    <div class="col-12 col-md-6">
                      <div class="col-12 fs-6 text-dark float-end">{PAGEADD_FORM_URL} <br />{PAGEADD_FORM_PFS_URL_USER} {PAGEADD_FORM_PFS_URL_SITE} </div>
                    </div>
                  </div>
                </div>
                <!-- ENDIF -->
                <!-- BEGIN: TAGS -->
                <div class="list-group-item list-group-item-action pb-0 px-2 px-sm-2 px-lg-auto">
                  <div class="col-12">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PAGEADD_TOP_TAGS}:</span>
                      </label>
                      <div class="input-group input-group-outline mb-4">
                        <label class="form-label">({PAGEADD_TOP_TAGS_HINT})</label> {PAGEADD_FORM_TAGS|cot_rc_modify($this, 'class="form-control form-control-lg col-12"')}
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END: TAGS -->
              </div>
              <div class="row g-3">
                <div class="col-sm-4">
                  <button type="submit" name="rpagestate" value="2" class="col-12 submit btn bg-gradient-secondary mt-4 mb-2">{PHP.L.Saveasdraft}</button>
                </div>
                <div class="col-sm-4">
                  <button type="submit" name="rpagestate" value="1" class="col-12 btn bg-gradient-info mt-4 mb-2">{PHP.L.Submitforapproval}</button>
                </div>
                <!-- IF {PHP.usr_can_publish} -->
                <div class="col-sm-4">
                  <button type="submit" name="rpagestate" value="0" class="col-12 btn bg-gradient-success mt-4 mb-2">{PHP.L.Publish}</button>
                </div>
                <!-- ENDIF -->
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-4 order-first">
        <div class="card shadow mb-5 position-sticky sticky-lg-top top-5 shadow-lg">
          <div class="card-header p-0 position-relative mt-lg-n4 mt-sm-n2 z-index-2 bg-transparent">
            <div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
              <h5 class="mb-0 text-light ff-monts font-weight-bold"> {PHP.L.Menu} </h5>
            </div>
          </div>
          <div class="list-group list-group-flush">
            <a data-easing="linear" href="{PHP|cot_url('users', 'm=profile', '#general-info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.usersedit.usergeneral-info}</a>
          </div>
        </div>
      </div>
    </div>
</section>
<!-- END: MAIN -->