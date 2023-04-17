<!-- BEGIN: MAIN -->
<section class="py-5 bg-gray-200">
  <div class="container-xxl px-2 px-sm-2 px-lg-auto">
<div class="row pb-2 mt-n4 w-100">
<nav aria-label="breadcrumb">
<ol class="breadcrumb">
<li class="breadcrumb-item active" aria-current="page">{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID} <span class="text-primary fw-normal">{PHP.pag.page_title}</span></li>
</ol>
</nav>

</div>

    <div class="row g-5">
      <div class="col-lg-8 order-lg-first">
        <div class="card shadow-lg mb-5">
          <div class="card-header p-0 position-relative mt-n4 z-index-2 bg-transparent">
            <div class="title-bg-sea-cot">
              <h3 class="mb-0 ff-monts text-white">{PHP.L.page.edit_title}:</h3>
              <p class="text-white opacity-8 mb-0">{PHP.L.page.edit_subtitle}:</p>
            </div>
          </div>
          <div class="card-body px-2"> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="form-horizontal">
      <div class="mx-auto">
        <div class="accordion" id="page_accordion">
          <div class="accordion-item mb-3">
            <h5 class="accordion-header px-2 title-bg-light-cot border-radius-lg" id="heading_m_general_info">
              <button class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_m_general_info" aria-expanded="true" aria-controls="collapse_m_general_info">
                {PHP.L.page.m_general_info}
                <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0"></i>
                <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0"></i>
              </button>
            </h5>
            <div id="collapse_m_general_info" class="accordion-collapse collapse" aria-labelledby="heading_m_general_info" data-bs-parent="#page_accordion">
              <div class="accordion-body text-sm opacity-8">
                <div class="input-group row">
                  <div class="col-12 col-md-8">
                    <label>
                      <span class="fs-6 text-muted">{PHP.L.page.PageID}:</span>
                    </label>
                  </div>
                  <div class="col-12 col-md-4">
                    <span class="h6 text-dark float-end">#{PAGEEDIT_FORM_ID}</span>
                  </div>
                </div>
                <div class="form-group row mb-4 mt-md-0 mt-4">
                  <label class="form-control-label">
                    <span class="h6">{PHP.L.Category}:</span>
                  </label>
                  <div class="input-group">{PAGEEDIT_FORM_CAT|cot_rc_modify($this, 'id="rpagecat"')}</div>
                </div>
                <div class="form-group row mb-4 mt-md-0 mt-4">
                  <label class="form-control-label">
                    <span class="h6">{PHP.L.Title}:</span>
                  </label>
                  <div class="input-group mb-4"> {PAGEEDIT_FORM_TITLE} </div>
                </div>
                <div class="form-group row mb-4 mt-md-0 mt-4">
                  <label class="form-control-label">
                    <span class="h6">{PHP.L.page.description_Short}:</span>
                    <span class="badge badge-pill badge-md bg-gradient-warning ms-3">&lt;= 255</span>
                  </label>
                  <div class="input-group input-group-outline mb-4"> {PAGEEDIT_FORM_DESC} </div>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item mb-3">
            <h5 class="accordion-header px-2 title-bg-light-cot border-radius-lg" id="heading_m_meta_info">
              <button class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_m_meta_info" aria-expanded="false" aria-controls="collapse_m_meta_info">
                {PHP.L.page.m_meta_info}
                <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0"></i>
                <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0"></i>
              </button>
            </h5>
            <div id="collapse_m_meta_info" class="accordion-collapse collapse" aria-labelledby="heading_m_meta_info" data-bs-parent="#page_accordion">
              <div class="accordion-body text-sm opacity-8">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Alias}:</span>
                      </label>
                      <div class="input-group input-group-outline mb-4">
                         {PAGEEDIT_FORM_ALIAS}
                      </div>
                    </div>

                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.page_metatitle}:</span>
                      </label>
                      <div class="input-group mb-4">
                         {PAGEEDIT_FORM_METATITLE}
                      </div>
                    </div>

                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.page_metadesc}:</span>
                      </label>
                      <div class="input-group mb-4"> {PAGEEDIT_FORM_METADESC} </div>
                    </div>

                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Author}:</span>
                      </label>
                      <div class="input-group mb-4">
                         {PAGEEDIT_FORM_AUTHOR}
                      </div>
                    </div>
              </div>
            </div>
          </div>
          <div class="accordion-item mb-3">
            <h5 class="accordion-header px-2 title-bg-light-cot border-radius-lg" id="heading_m_datatime_info">
              <button class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_m_datatime_info" aria-expanded="false" aria-controls="collapse_m_datatime_info">
                {PHP.L.page.m_datatime_info}
                <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0"></i>
                <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0"></i>
              </button>
            </h5>
            <div id="collapse_m_datatime_info" class="accordion-collapse collapse" aria-labelledby="heading_m_datatime_info" data-bs-parent="#page_accordion">
              <div class="accordion-body px-lg-3 opacity-8">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Date}:</span>
                      </label>
					  <p class="text-small">{PAGEEDIT_FORM_DATENOW} {PHP.L.page_date_now}</p>
					  {PAGEEDIT_FORM_DATE}
                    </div>

                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Begin}:</span>
                      </label> {PAGEEDIT_FORM_BEGIN}
                    </div>


                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PHP.L.Expire}:</span>
                      </label> {PAGEEDIT_FORM_EXPIRE}
                    </div>
              </div>
            </div>
          </div>

          <!-- BEGIN: ADMIN -->
          <div class="accordion-item mb-3">
            <h5 class="accordion-header px-2 title-bg-light-cot border-radius-lg" id="heading_m_adminsection_info">
              <button class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_m_adminsection_info" aria-expanded="false" aria-controls="collapse_m_adminsection_info">
                {PHP.L.page.m_adminsection_info}
                <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0"></i>
                <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0"></i>
              </button>
            </h5>
            <div id="collapse_m_adminsection_info" class="accordion-collapse collapse" aria-labelledby="heading_m_adminsection_info" data-bs-parent="#page_accordion">
              <div class="accordion-body px-lg-3 opacity-8">
                <div class="input-group row">
                  <div class="col-12 col-md-8">
                    <label>
                      <span class="fs-6 text-muted">{PHP.L.page.Hits}:</span>
                    </label>
                  </div>
                  <div class="col-12 col-md-4">
                    <div class="input-group mb-4"> {PAGEEDIT_FORM_PAGECOUNT} </div>
                  </div>
                </div>
                <div class="input-group row">
                  <div class="col-6 col-md-4">
                    <label>
                      <span class="h6">{PHP.L.Parser}:</span>
                    </label>
                  </div>
                  <div class="col-6 col-md-8">
				  <div class="input-group">{PAGEEDIT_FORM_PARSER|cot_rc_modify($this, 'id="rpageparser"')}</div>
                     
                  </div>
                </div>
                <div class="input-group row">
                  <div class="col-6 col-md-4">
                    <label>
                      <span class="fs-6 text-muted">{PHP.L.Owner}:</span>
                    </label>
                  </div>
                  <div class="col-6 col-md-8">
                    <div class="input-group mb-4"> {PAGEEDIT_FORM_OWNERID} </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

		  <!-- END: ADMIN -->
          <div class="accordion-item mb-3">
            <h5 class="accordion-header px-2 title-bg-light-cot border-radius-lg" id="heading_m_mainpagecontent_info">
              <button class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_m_mainpagecontent_info" aria-expanded="true" aria-controls="collapse_m_mainpagecontent_info">
                {PHP.L.page.m_mainpagecontent_info}
                <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0"></i>
                <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0"></i>
              </button>
            </h5>
            <div id="collapse_m_mainpagecontent_info" class="accordion-collapse collapse show" aria-labelledby="heading_m_mainpagecontent_info" data-bs-parent="#page_accordion">
		      <div class="accordion-body px-lg-3 opacity-8">
		        <div class="form-group mb-4 mt-md-0 mt-4">
		          <label class="form-control-label">
		            <span class="h6">{PHP.L.page.description_Full}:</span>
		          </label>
		          <div class="input-group mb-4"> {PAGEEDIT_FORM_TEXT} </div>
		        </div>
		      </div>
            </div>
          </div>
		  <!-- IF {PHP.cot_modules.pfs} -->
          <div class="accordion-item mb-3">
            <h5 class="accordion-header px-2 title-bg-light-cot border-radius-lg" id="heading_m_filesdownloads_info">
              <button class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_m_filesdownloads_info" aria-expanded="false" aria-controls="collapse_m_filesdownloads_info">
                {PHP.L.page.m_filesdownloads_info}
                <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0"></i>
                <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0"></i>
              </button>
            </h5>
            <div id="collapse_m_filesdownloads_info" class="accordion-collapse collapse" aria-labelledby="heading_m_filesdownloads_info" data-bs-parent="#page_accordion">
		      <div class="accordion-body px-lg-3 opacity-8">
		        <!-- IF {PAGEEDIT_FORM_PFS} -->
		        <div class="input-group row">
		          <div class="col-12 col-md-6">
		            <p>
		              <span class="h6 text-muted">PFS</span>
		            </p>
		          </div>
		          <div class="col-12 col-md-6">
		            <div class="col-12 fs-6 text-dark float-end">{PAGEEDIT_FORM_PFS} </div>
		          </div>
		        </div>
		        <!-- ENDIF -->
		        <!-- IF {PAGEEDIT_FORM_SFS} -->
		        <div class="input-group row">
		          <div class="col-12 col-md-6">
		            <p>
		              <span class="h6 text-muted">SFS</span>
		            </p>
		          </div>
		          <div class="col-12 col-md-6">
		            <div class="col-12 fs-6 text-dark float-end">{PAGEEDIT_FORM_SFS} </div>
		          </div>
		        </div>
		        <!-- ENDIF -->
		        <div class="input-group row">
		          <div class="col-12 col-md-6">
		            <p>
		              <span class="fs-6 text-muted">{PHP.L.page_file}:</span>
		              <br>
		              <span class="text-xs text-danger ff-monts">{PHP.L.page_filehint}</span>
		            </p>
		          </div>
		          <div class="col-12 col-md-6">
		            <div class="input-group mb-4"> {PAGEEDIT_FORM_FILE} </div>
		          </div>
		        </div>
		        <div class="input-group row">
		          <div class="col-12 col-md-6">
		            <p>
		              <span class="fs-6 text-muted">{PHP.L.page_filesize}:</span>
		              <br>
		              <span class="text-xs text-danger ff-monts">{PHP.L.page_filesizehint}</span>
		            </p>
		          </div>
		          <div class="col-12 col-md-6">
		            <div class="input-group mb-4"> {PAGEEDIT_FORM_SIZE} </div>
		          </div>
		        </div>
		        <div class="input-group row">
		          <div class="col-12 col-md-6">
		            <p>
		              <span class="fs-6 text-muted">{PHP.L.URL}:</span>
		              <br>
		              <span class="text-xs text-danger ff-monts">{PHP.L.page_urlhint}</span>
		            </p>
		          </div>
		          <div class="col-12 col-md-6">
		            <div class="input-group mb-4"> {PAGEEDIT_FORM_URL} <br />{PAGEEDIT_FORM_PFS_URL_USER} <br /> {PAGEEDIT_FORM_PFS_URL_SITE} </div>
		          </div>
		        </div>
				<hr>
				<!-- IF {PAGEEDIT_FORM_HEAD_SCREEN_1} -->
		        <div class="input-group row">
		          <div class="col-12 col-md-4">
		            <p>
		              <span class="fs-6 text-muted">{PAGEEDIT_FORM_HEAD_SCREEN_1_TITLE}<span class="text-sm text-danger ff-monts"> {PHP.L.URL}</span>:</span> 
		            </p>
		          </div>
		          <div class="col-12 col-md-8">
		            <div class="input-group mb-4"> {PAGEEDIT_FORM_HEAD_SCREEN_1}</div>
		          </div>
		        </div>
				<!-- ENDIF -->
				<!-- IF {PAGEEDIT_FORM_HEAD_SCREEN_2} -->
		        <div class="input-group row">
		          <div class="col-12 col-md-4">
		            <p>
		              <span class="fs-6 text-muted">{PAGEEDIT_FORM_HEAD_SCREEN_2_TITLE}<span class="h6 text-danger ff-monts"> {PHP.L.URL}</span>:</span> 
		            </p>
		          </div>
		          <div class="col-12 col-md-8">
		            <div class="input-group mb-4"> {PAGEEDIT_FORM_HEAD_SCREEN_2}</div>
		          </div>
		        </div>
				<!-- ENDIF -->
				<!-- IF {PAGEEDIT_FORM_HEAD_SCREEN_3} -->
		        <div class="input-group row">
		          <div class="col-12 col-md-4">
		            <p>
		              <span class="fs-6 text-muted">{PAGEEDIT_FORM_HEAD_SCREEN_3_TITLE}<span class="text-sm text-danger ff-monts"> {PHP.L.URL}</span>:</span> 
		            </p>
		          </div>
		          <div class="col-12 col-md-8">
		            <div class="input-group mb-4"> {PAGEEDIT_FORM_HEAD_SCREEN_3}</div>
		          </div>
		        </div>
				<!-- ENDIF -->
		      </div>
            </div>
          </div>

		  <!-- ENDIF -->
		  <!-- BEGIN: TAGS -->
          <div class="accordion-item mb-3">
            <h5 class="accordion-header px-2 title-bg-light-cot border-radius-lg" id="heading_m_tages_info">
              <button class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_m_tages_info" aria-expanded="false" aria-controls="collapse_m_tages_info">
                {PHP.L.page.m_tages_info}
                <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0"></i>
                <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0"></i>
              </button>
            </h5>
            <div id="collapse_m_tages_info" class="accordion-collapse collapse" aria-labelledby="heading_m_tages_info" data-bs-parent="#page_accordion">
		      <div class="accordion-body px-lg-3 opacity-8">
                    <div class="form-group mb-4 mt-md-0 mt-4">
                      <label class="form-control-label">
                        <span class="h6">{PAGEEDIT_TOP_TAGS}:</span>
                        <br>
                        <span class="text-xs text-danger ff-monts">({PAGEEDIT_TOP_TAGS_HINT})</span>
                      </label>
                      <div class="input-group mb-4">
                        {PAGEEDIT_FORM_TAGS|cot_rc_modify($this, 'class="form-control form-control-lg col-12"')}
                      </div>
                    </div>
		      </div>
            </div>
          </div>

		  <!-- END: TAGS -->
		  <div class="accordion-item mb-3">
		    <h5 class="px-2 title-bg-light-cot border-radius-lg accordion-header" id="heading_m_pagemanagement_info">
		      <div class="accordion-button pt-0 pb-1 text-dark ff-monts fw-normal"> {PHP.L.page.m_pagemanagement_info}
		      </div>
		    </h5>
		    <div class="accordion-collapse ">
		      <div class="accordion-body px-lg-3 opacity-8">
                  <div class="input-group row">
                    <div class="col-12 col-md-8">
                      <label>
                        <span class="fs-6 text-danger">{PHP.L.page.Deletethispage}:</span>
                      </label>
                    </div>
                    <div class="col-12 col-md-4">
                      <span class="h6 text-dark float-end">{PAGEEDIT_FORM_DELETE}</span>
                    </div>
                  </div>
              <div class="row g-2">
                <div class="col-12 col-lg-4">
                  <button type="submit" name="rpagestate" value="2" class="col-12 submit btn bg-gradient-secondary mb-2">{PHP.L.Saveasdraft}</button>
                </div>
                <div class="col-12 col-lg-4">
                  <button type="submit" name="rpagestate" value="1" class="col-12 btn bg-gradient-info mb-2">{PHP.L.Submitforapproval}</button>
                </div>
                <!-- IF {PHP.usr_can_publish} -->
                <div class="col-12 col-lg-4">
                  <button type="submit" name="rpagestate" value="0" class="col-12 btn bg-gradient-success mb-2">{PHP.L.Publish}</button>
                </div>
                <!-- ENDIF -->
              </div>				  
		      </div>
		    </div>
		  </div>
        </div>
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
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_general_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_general_info}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_meta_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_meta_info}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_datatime_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_datatime_info}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_adminsection_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_adminsection_info}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_mainpagecontent_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_mainpagecontent_info}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_filesdownloads_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_filesdownloads_info}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_tages_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_tages_info}</a>
              <a data-easing="linear" href="{PHP.id|cot_url('page', 'm=edit&id='$this, '#heading_m_pagemanagement_info')}" class="list-group-item list-group-item-action" data-scroll>{PHP.L.page.m_pagemanagement_info}</a>
          </div>
        </div>
      </div>
    </div>

    </div>
	<div class="container-lg py-5">
	{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
    </div>
</section>

<!-- END: MAIN -->
