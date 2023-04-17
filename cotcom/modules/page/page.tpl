<!-- BEGIN: MAIN -->
<section class="bg-gray-200">
  <div class="pt-5 pb-3 px-3 lazy" style="background-size: cover; background-image: url(themes/cotcom/img/bg-head-page-title.jpg);">
    <div class="container-xxl px-2 px-sm-2 px-lg-3 py-3 bg-page-title-overlay">
      <h1>
        <span class="text-white ff-monts cc-{PAGE_CAT}">{PAGE_SHORTTITLE}</span>
      </h1>
      <!-- IF {PAGE_DESC} -->
      <p>
        <span class="text-white">{PAGE_DESC}</span>
      </p>
      <!-- ELSE -->
      <p class="text-white">{PAGE_CATTITLE} - {PAGE_TEXT|strip_tags($this)|mb_substr($this, 0, 220, 'UTF-8')}...</p>
      <!-- ENDIF -->
    </div>
  </div>

  <div class="container-xxl py-5 px-2 px-sm-2 px-lg-auto">
    <div id="pagemain" class="pretty locale-{PHP.i18n_locale} i18n-{PHP.pag.ipage_locale}-off">
      <nav id="breadcrumb" aria-label="breadcrumb" class=" mb-4 d-none d-lg-block">{PAGE_TITLE}</nav>
      <div class="row ">
        <div class="col-lg-9 order-lg-first">
          <div class="card shadow-lg mb-5">
<!-- IF {PHP.pag.page_head_screen_1} OR {PHP.pag.page_head_screen_2} OR {PHP.pag.page_head_screen_3} -->
<!-- блок слайдшоу показываем, если прикреплена хотябы одна картинка -->
<div class="card-header p-0 mx-3 my-3 position-relative z-index-1">
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
	<!-- IF {PAGE_HEAD_SCREEN_1} -->
	<!-- на случай, если картинок менье трех -->
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	 <!-- ENDIF -->
	 <!-- IF {PAGE_HEAD_SCREEN_2} -->
	 <!-- на случай, если картинок менье трех -->
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	  <!-- ENDIF -->
	  <!-- IF {PAGE_HEAD_SCREEN_3} -->
	  <!-- на случай, если картинок менье трех -->
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  <!-- ENDIF -->
    </div>
    <div class="carousel-inner shadow-info shadow-lg">
	<!-- IF {PAGE_HEAD_SCREEN_1} -->
	<!-- на случай, если картинок менье трех -->
      <div class="carousel-item active">
        <img src="{PHP.cfg.mainurl}/{PAGE_HEAD_SCREEN_1}" class="d-block w-100 img-fluid border-radius-md" alt="{PAGE_SHORTTITLE}" loading="lazy">
      </div>
	  <!-- ENDIF -->
	  <!-- IF {PAGE_HEAD_SCREEN_2} -->
	  <!-- на случай, если картинок менье трех -->
      <div class="carousel-item">
        <img src="{PHP.cfg.mainurl}/{PAGE_HEAD_SCREEN_2}" class="d-block w-100 img-fluid border-radius-md" alt="{PAGE_SHORTTITLE}" loading="lazy">
      </div>
	  <!-- ENDIF -->
	  <!-- IF {PAGE_HEAD_SCREEN_3} -->
	  <!-- на случай, если картинок менье трех -->
      <div class="carousel-item">
        <img src="{PHP.cfg.mainurl}/{PAGE_HEAD_SCREEN_3}" class="d-block w-100 img-fluid border-radius-md" alt="{PAGE_SHORTTITLE}" loading="lazy">
      </div>
	  <!-- ENDIF -->
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>
<!-- ENDIF -->
            <div class="card-body px-lg-5">
              <div class="page_content localfont"> {PAGE_TEXT} </div>
              <hr />
              <div class="card-footer p-5">
                <div class="d-flex justify-content-center"> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/AddToAny.tpl"} </div>
              </div>
            </div>
          </div>
          <div class="card shadow-lg mb-5">

            <div class="card-body  px-lg-5">
              <!-- IF {PHP.tags} -->
              <div>
                <ul class="tags">
                  <!-- BEGIN: PAGE_TAGS_ROW -->
                  <li>
                    <a class="tag" href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
                  </li>
                  <!-- END: PAGE_TAGS_ROW -->
                </ul>
              </div>
              <!-- ENDIF --> {PAGE_COMMENTS_DISPLAY}
            </div>
          </div>
        </div>
        <div class="col-lg-3 order-first">
          <!-- Page info for small devices -->
          <div class="d-lg-none">
            <div class="dropdown">
              <button class="col-12 btn bg-gradient-info w-100 border-radius-lg p-3 text-light ff-monts font-weight-bold dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                <!-- IF {PHP.L.page.Info} -->{PHP.L.page.Info}
                <!-- ELSE -->Page info
                <!-- ENDIF -->
              </button>
              <div class="list-group list-group-flush dropdown-menu border-radius-lg px-2 py-3" aria-labelledby="dropdownMenuButton">
                <!-- IF {PHP.usr.auth_write} -->
                <a class="mt-3 list-group-item list-group-item-action" href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.id} == {PAGE_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
                <a class="list-group-item list-group-item-action" href="{PAGE_ID|cot_url('page','m=edit&id='$this)}">{PHP.L.Edit}</a>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
                <div class="list-group-item list-group-item-action"> {PAGE_ADMIN_UNVALIDATE} </div>
                <!-- ENDIF -->
                <div class="list-group-item list-group-item-action">
                  <strong>{PHP.L.Author}:</strong>
                  <!-- IF !{PAGE_AUTHOR} OR {PAGE_AUTHOR} == {PAGE_OWNERNAME} --> {PAGE_OWNER}
                  <!-- ELSE --> {PAGE_AUTHOR}
                  <!-- ENDIF -->
                  <!-- IF {PHP.cot_modules.pm} && {PHP.usr.id} > 0 AND {PHP.usr.id} != {PAGE_OWNER_ID} -->
                  <a href="{PHP.pag.user_id|cot_url('pm','m=send&to=$this', '', 1)}" class="pm_send" data-bs-toggle="tooltip" data-bs-title="{PHP.L.users_sendpm}">
                    <span class="fs-4 text-info ms-2">
                      <i class="fa-regular fa-envelope"></i>
                    </span>
                  </a>
                  <!-- ENDIF -->
                </div>
                <!-- IF {PAGE_BEGIN_STAMP} -->
                <div class="list-group-item list-group-item-action">
                  <div class="row">
                    <div class="col-6 col-sm-6">
                      <span>{PHP.L.page.Published}:</span>
                    </div>
                    <div class="col-6 col-sm-6">
                      <span class="h6">{PAGE_DATE_STAMP|cot_date('date_full',$this)}</span>
                    </div>
                  </div>
                </div>
                <!-- ENDIF -->
                <!-- IF {PAGE_UPDATED_STAMP} -->
                <div class="list-group-item list-group-item-action">
                  <div class="row">
                    <div class="col-6 col-sm-6">
                      <span>{PHP.L.Updated}:</span>
                    </div>
                    <div class="col-6 col-sm-6">
                      <span class="h6">{PAGE_UPDATED_STAMP|cot_date('date_full',$this)}</span>
                    </div>
                  </div>
                </div>
                <!-- ENDIF -->
                <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item list-group-item-action">Morbi leo risus</a>
                <a href="#" class="list-group-item list-group-item-action">Porta ac consectetur ac</a>
                <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
              </div>
            </div>
          </div>
          <!-- Page info for Large devices -->
          <div class="d-none d-lg-block">
            <div class="card shadow mb-5 p-3">
              <div class="list-group list-group-flush px-0">
                <div class="list-group-item pb-2 pt-0">
                  <div class="position-relative">
                    <div class="text-center pt-3">
                      <!-- IF {PAGE_OWNER_AVATAR_SRC} -->
                      <img src="{PAGE_OWNER_AVATAR_SRC}" class="avatar avatar-xxl border border-3 rounded-circle shadow-info shadow-lg" alt="{PHP.pag.user_name}">
                      <!-- ELSE -->
                      <img src="{PHP.R.userimg_default_avatar}" class="avatar avatar-xxl border border-3 rounded-circle shadow-info shadow-lg" alt="{PHP.pag.user_name}">
                      <!-- ENDIF -->
                    </div>
                    <div class="position-absolute top-0 end-0">
                      <!-- IF {PAGE_OWNER_ONLINE} -->
                      <p class="text-center pt-1">
                        <span class="badge rounded-pill bg-success">{PHP.L.Online}</span>
                      </p>
                      <!-- ELSE -->
                      <p class="text-center pt-1">
                        <span class="badge rounded-pill bg-light text-dark">Offline</span>
                      </p>
                      <!-- ENDIF -->
                    </div>
                    <div class="position-absolute top-0 start-0">
                      <!-- IF {PHP.cot_modules.pm} && {PHP.usr.id} > 0 AND {PHP.usr.id} != {PAGE_OWNER_ID} -->
                      <a href="{PHP.pag.user_id|cot_url('pm','m=send&to=$this', '', 1)}" class="pm_send" data-bs-toggle="tooltip" data-bs-title="{PHP.L.users_sendpm}">
                        <span class="fs-4 text-info ms-2">
                          <i class="fa-regular fa-envelope"></i>
                        </span>
                      </a>
                      <!-- ENDIF -->
                    </div>
                  </div>
                  <h4 class="text-center ff-monts text-dark-cot fw-bold pt-2 mb-0">
                    <!-- IF !{PAGE_AUTHOR} OR {PAGE_AUTHOR} == {PAGE_OWNERNAME} --> 
					{PAGE_OWNER}
                    <!-- ELSE --> 
					{PAGE_AUTHOR}
                    <!-- ENDIF -->
                  </h4>
                </div>

                <!-- IF {PHP.usr.auth_write} -->
                <div class="list-group-item list-group-item-action px-0">
				<a class="" href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
				</div>
                
                <!-- ENDIF -->
                <!-- IF {PHP.usr.id} == {PAGE_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
                <div class="list-group-item list-group-item-action px-0">
				<a class="" href="{PAGE_ID|cot_url('page','m=edit&id='$this)}">{PHP.L.Edit}</a>
				</div>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
                <div class="list-group-item list-group-item-action px-0"> {PAGE_ADMIN_UNVALIDATE} </div>
                <div class="list-group-item list-group-item-action px-0"> {PAGE_ADMIN_DELETE} </div>
                <!-- ENDIF -->
                <!-- IF {PAGE_DATE_STAMP} -->
                <div class="list-group-item list-group-item-action px-0">
                  <div class="row">
                    <div class="col-6 col-sm-6">
                      <span>{PHP.L.page.Published}:</span>
                    </div>
                    <div class="col-6 col-sm-6">
                      <span class="fw-normal">
					  {PAGE_DATE_STAMP|cot_date('date_full',$this)}
					  </span>
                    </div>
                  </div>
                </div>
                <!-- ENDIF -->
                <!-- IF {PAGE_UPDATED_STAMP} -->
                <div class="list-group-item list-group-item-action px-0">
                  <div class="row">
                    <div class="col-6 col-sm-6 col-xs-12">
                      <span>{PHP.L.Updated}:</span>
                    </div>
                    <div class="col-6 col-sm-6 col-xs-12">
                      <span class="fw-normal">
					  {PAGE_UPDATED_STAMP|cot_date('date_full',$this)}
					  </span>
                    </div>
                  </div>
                </div>
                <!-- ENDIF -->
                <!-- BEGIN: PAGE_MULTI -->
                <div class="list-group-item list-group-item-action px-0">
                  <div class="row">
                    <div class="col-6 col-sm-6 col-xs-12">
                      <span>{PHP.L.page.Chapters}:</span>
                    </div>
                    <div class="col-6 col-sm-6 col-xs-12">
                      <span class="fw-normal">
					  {PAGE_MULTI_TABTITLES}
					  </span>
                    </div>
                  </div>
                </div>
                <!-- END: PAGE_MULTI -->
                <!-- BEGIN: PAGE_FILE -->
                <div class="list-group-item list-group-item-action px-0">
				<p>{PHP.L.page.PageHasAttachment}</p>
                  <div class="row">
                    <div class="col-6 col-sm-6 col-xs-12">
                      <span>					<!-- BEGIN: DOWNLOAD -->
					<a class="btn btn-dark btn-sm w-auto me-2" href="{PAGE_FILE_URL}">{PHP.L.page.DownloadFile}</a>
					<!-- END: DOWNLOAD --></span>
                    </div>
                    <div class="col-6 col-sm-6 col-xs-12">
                      <span class="fw-normal">
					  {PAGE_FILE_NAME} <!-- IF {PAGE_FILE_SIZE} -->({PAGE_FILE_SIZE})<!-- ENDIF --></span>
					  </span>
                    </div>
                  </div>
                </div>
                <!-- END: PAGE_FILE -->
				<!-- IF {PHP.pag_i18n_locales} > 1 -->
					<!-- BEGIN: I18N_LANG -->
					<div class="list-group-item list-group-item-action px-0">
					<p class="list-title">{PHP.L.Language}:</p>
					<ul class="list">
						<!-- BEGIN: I18N_LANG_ROW -->
						<!-- IF {PHP.i18n_locale} != {I18N_LANG_ROW_CODE} -->
						<li>
							<a href="{I18N_LANG_ROW_URL}" class="i18n-link">
								<!-- IF {I18N_LANG_ROW_CODE|is_file('images/flags/$this.png')} -->
								<img alt="{I18N_LANG_ROW_CODE}" src="images/flags/{I18N_LANG_ROW_CODE}.png" class="flag">
								<!-- ENDIF -->
								{I18N_LANG_ROW_TITLE}
							</a>
						</li>
						<!-- ENDIF -->
						<!-- END: I18N_LANG_ROW -->
					</ul>
					<!-- END: I18N_LANG -->
					</div>
				<!-- ENDIF -->
				
				<!-- IF {PAGE_I18N_TRANSLATE} -->
				<div class="list-group-item list-group-item-action  px-0">
				<a href="{PHP.url_i18n}" class="btn btn-info bg-gradient-info opacity-10 btn-lg px-4">{PHP.L.i18n_translate}</a>
				</div>
				<!-- ENDIF -->
				<!-- IF {PAGE_THANK_CAN} -->
				<div class="list-group-item list-group-item-action px-0">
				<div class="buttons">
					<a href="{PAGE_THANK_URL}" onclick="return confirm('{PHP.L.thanks_ensure}')"><strong>{PHP.L.thanks_thanks}</strong></a>
				</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {PAGE_TOC} -->
				<div class="list-group-item list-group-item-action px-0">
				<h4>{PHP.L.Summary}</h4>
				<div class="page_summary">{PAGE_TOC}</div>
				</div>
				<!-- ENDIF -->
              </div>
            </div>
        <div class="card shadow mb-5">
          <div class="card-header p-0 position-relative mt-lg-n4 mt-sm-n2 z-index-2 bg-transparent">
            <div class="title-bg-light-cot shadow-dark shadow-lg shadow">
              <h5 class="mb-0 ff-monts font-weight-bold"> {PHP.L.Categories}</h5>
            </div>
          </div>
          <div class="card-body">
			  <ul class="list-group list-group-flush">
				<!-- BEGIN: LIST_ROWCAT -->
				<li class="list-group-item">
            
            <a class="" href="{LIST_ROWCAT_URL}" title="{LIST_ROWCAT_TITLE}">
              <!-- IF {LIST_ROWCAT_ICON} -->
              <img src="{LIST_ROWCAT_ICON}" alt="" />
              <!-- ELSE -->
              <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/cat_folder.png" alt="" title="{LIST_ROWCAT_DESC}" />
              <!-- ENDIF -->
              <span>{LIST_ROWCAT_TITLE}</span>
              <!-- IF {LIST_ROWCAT_DESC} -->
              <p>{LIST_ROWCAT_DESC}</p>
              <!-- ENDIF -->
            </a>
            
				</li>
				<!-- END: LIST_ROWCAT -->
				<li class="list-group-item"></li>
			  </ul>
		<div class="block">
			<h3>{PHP.L.TOC}</h3>
			{PHP|toc('docs', 'toc', 1)}
		</div>
				<!-- IF {PAGE_TOC} -->
				<h4>{PHP.L.Summary}</h4>
				<div class="page_summary">{PAGE_TOC}</div>
				<!-- ENDIF -->
	</aside>
            <!-- IF {LISTCAT_PAGNAV} -->
            <p class="pagination">{LISTCAT_PAGEPREV}{LISTCAT_PAGNAV}{LISTCAT_PAGENEXT}</p>
            <!-- ENDIF -->
          </div>
        </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
<!-- END: MAIN --> 


********* <div class="card shadow-lg mb-5 bg-white border-radius-lg p-3 position-sticky top-10 shadow-lg">
  <aside id="pageinfo" class="page-info">
    <div>
      <div></div>
      <div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">{PAGE_ADMIN_EDIT}</li>
          <!-- IF {PAGE_I18N_DELETE_URL} -->
          <li class="list-group-item">
            <a href="{PAGE_I18N_DELETE_URL}">{PHP.L.page.DeleteTranslation}</a>
          </li>
          <!-- ENDIF -->
          <li class="list-group-item">{PAGE_ADMIN_UNVALIDATE}</li>
          <li class="list-group-item">{PAGE_ADMIN_DELETE}</li>
          <li class="list-group-item">
            <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
          </li>
          <li class="list-group-item">
            <strong>{PHP.L.Author}:</strong>
            <!-- IF !{PAGE_AUTHOR} OR {PAGE_AUTHOR} == {PAGE_OWNERNAME} --> {PAGE_OWNER} <a class="pm_send" href="{PHP.pag.user_id|cot_url('pm','m=send&to=$this', '', 1)}">
              <img class="icon" src="images/icons/{PHP.cfg.defaulticons}/pm-archive.png" alt="{PHP.L.pm_sendnew}" />
            </a>
            <!-- ELSE --> {PAGE_AUTHOR}
            <!-- ENDIF -->
          </li>
          <!-- IF {PHP.pag_i18n.ipage_locale} AND ({PAGE_AUTHOR} != {PHP.pag_i18n.ipage_translatorname}) AND ({PAGE_OWNERNAME} != {PHP.pag_i18n.ipage_translatorname}) -->
          <li class="list-group-item">
            <strong>{PHP.L.page.TranslatorName}:</strong>
            <a href="{PHP.pag_i18n.ipage_translatorid|cot_url('users', 'm=details&id=$this')}">{PHP.pag_i18n.ipage_translatorname}</a>
            <a class="pm_send" href="{PHP.pag.ipage_translatorid|cot_url('pm','m=send&to=$this', '', 1)}">
              <img class="icon" src="images/icons/{PHP.cfg.defaulticons}/pm-archive.png" alt="{PHP.L.pm_sendnew}" />
            </a>
          </li>
          <!-- ENDIF -->
          <!-- IF {PAGE_BEGIN_STAMP} -->
          <li class="list-group-item">
            <strong>{PHP.L.page.Published}:</strong> {PAGE_DATE_STAMP|cot_date('date_full',$this)}
          </li>
          <!-- ENDIF -->
          <li class="list-group-item">
            <strong>{PHP.L.Updated}:</strong> {PAGE_UPDATED_STAMP|cot_date('date_full',$this)}
          </li>
          <!-- BEGIN: PAGE_MULTI -->
          <li class="list-group-item">
            <strong>{PHP.L.page.Chapters}:</strong>
            <br /> {PAGE_MULTI_TABTITLES}
          </li>
          <!-- END: PAGE_MULTI -->
          <li class="list-group-item">A third item</li>
          <li class="list-group-item"></li>
        </ul>
      </div>
    </div>
    <div class="">
      <div>
        <!-- BEGIN: PAGE_FILE -->
        <p>{PHP.L.page.PageHasAttachment}</p>
        <div class="center">
          <!-- BEGIN: MEMBERSONLY -->
          <a class="graybutton" href="login">{PHP.L.page.LoginToDownload}</a>
          <!-- END: MEMBERSONLY -->
          <!-- BEGIN: DOWNLOAD -->
          <a class="darkbutton" href="{PAGE_FILE_URL}">{PHP.L.page.DownloadFile}</a>
          <!-- END: DOWNLOAD -->
          <br />
          <span class="small">{PAGE_FILE_NAME}
            <!-- IF {PAGE_FILE_SIZE} -->({PAGE_FILE_SIZE})
            <!-- ENDIF -->
          </span>
        </div>
        <!-- END: PAGE_FILE -->
        <!-- IF {PHP.al} == 'credits' -->
        <script type="text/javascript" src="https://www.ohloh.net/p/316548/widgets/project_partner_badge.js"></script>
        <!-- ENDIF -->
        <!-- IF {PHP.pag_i18n_locales} > 1 -->
        <!-- BEGIN: I18N_LANG -->
        <p class="list-title">{PHP.L.Language}:</p>
        <ul class="page_langs">
          <!-- BEGIN: I18N_LANG_ROW -->
          <!-- IF {PHP.i18n_locale} != {I18N_LANG_ROW_CODE} -->
          <li>
            <a href="{I18N_LANG_ROW_URL}" class="i18n-link">
              <!-- IF {I18N_LANG_ROW_CODE|is_file('images/flags/$this.png')} -->
              <img alt="{I18N_LANG_ROW_CODE}" src="images/flags/{I18N_LANG_ROW_CODE}.png" class="flag">
              <!-- ENDIF --> {I18N_LANG_ROW_TITLE}
            </a>
          </li>
          <!-- ENDIF -->
          <!-- END: I18N_LANG_ROW -->
        </ul>
        <!-- END: I18N_LANG -->
        <!-- ENDIF -->
        <!-- IF {PAGE_I18N_TRANSLATE} -->
        <div class="buttons">
          <span class="translate">{PAGE_I18N_TRANSLATE}</span>
        </div>
        <!-- ENDIF -->
        <!-- IF {PAGE_THANK_CAN} -->
        <div class="buttons">
          <a href="{PAGE_THANK_URL}" onclick="return confirm('{PHP.L.thanks_ensure}')">
            <strong>{PHP.L.thanks_thanks}</strong>
          </a>
        </div>
        <!-- ENDIF -->
        <!-- IF {PAGE_TOC} -->
        <h4>{PHP.L.Summary}</h4>
        <div class="page_summary">{PAGE_TOC}</div>
        <!-- ENDIF -->
      </div>
    </div>
  </aside>
</div> ******** <aside class="col30 top bottom first page">
  <div class="block">
    <h3>{PAGE_SHORTTITLE}</h3>
    <div>
      <div class="buttons">{PAGE_ADMIN_EDIT} {PAGE_ADMIN_UNVALIDATE}</div>
      <p>
        <strong>{PHP.L.Author}:</strong>
        <!-- IF {PAGE_AUTHOR} -->{PAGE_AUTHOR}
        <!-- ELSE -->{PAGE_OWNER}
        <!-- ENDIF -->
      </p>
      <!-- IF {PAGE_BEGIN_STAMP} -->
      <p>
        <strong>{PHP.L.page.Published}:</strong> {PAGE_BEGIN_STAMP|cot_date('date_full',$this)}
      </p>
      <!-- ENDIF -->
      <!-- BEGIN: PAGE_MULTI -->
      <p>
        <strong>{PHP.L.page.Chapters}:</strong>
        <br /> {PAGE_MULTI_TABTITLES}
      </p>
      <!-- END: PAGE_MULTI -->
      <!-- BEGIN: PAGE_FILE -->
      <p>{PHP.L.page.PageHasAttachment}</p>
      <div class="center">
        <!-- BEGIN: MEMBERSONLY -->
        <a class="graybutton" href="login">{PHP.L.page.LoginToDownload}</a>
        <!-- END: MEMBERSONLY -->
        <!-- BEGIN: DOWNLOAD -->
        <a class="darkbutton" href="{PAGE_FILE_URL}">{PHP.L.page.DownloadFile}</a>
        <!-- END: DOWNLOAD -->
        <br />
        <span class="small">{PAGE_FILE_NAME}
          <!-- IF {PAGE_FILE_SIZE} -->({PAGE_FILE_SIZE})
          <!-- ENDIF -->
        </span>
      </div>
      <!-- END: PAGE_FILE -->
      <div class="buttons">
        <p id="addthisBox" class="addthis_toolbox addthis_default_style">
          <a href="http://www.addthis.com/bookmark.php?v=250&amp;username=cotonti" class="addthis_button_compact" target="_blank">{PHP.L.Share}</a>
        </p>
      </div>
      <!-- IF {PHP.al} == 'credits' -->
      <script type="text/javascript" src="https://www.ohloh.net/p/316548/widgets/project_partner_badge.js"></script>
      <!-- ENDIF -->
      <p>
        <!-- BEGIN: I18N_LANG --> {PHP.L.Language}:
      <ul>
        <!-- BEGIN: I18N_LANG_ROW -->
        <li>
          <a href="{I18N_LANG_ROW_URL}">{I18N_LANG_ROW_TITLE}</a>
        </li>
        <!-- END: I18N_LANG_ROW -->
      </ul>
      <!-- END: I18N_LANG -->
      <div class="buttons">{PAGE_I18N_TRANSLATE} {PAGE_I18N_DELETE}</div>
      </p>
      <!-- IF {PAGE_THANK_CAN} -->
      <div class="buttons">
        <a href="{PAGE_THANK_URL}" onclick="return confirm('{PHP.L.thanks_ensure}')">
          <strong>{PHP.L.thanks_thanks}</strong>
        </a>
      </div>
      <!-- ENDIF -->
      <!-- IF {PAGE_TOC} -->
      <h4>{PHP.L.Navigation}</h4> {PAGE_TOC}
      <!-- ENDIF -->
    </div>
  </div>
  <!-- IF {PAGE_TAGS_ROW} -->
  <div class="block">
    <h3>{PHP.L.Tags}</h3>
    <div>
      <!-- BEGIN: PAGE_TAGS_ROW -->
      <!-- IF {PHP.tag_i} > 0 -->,
      <!-- ENDIF -->
      <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
      <!-- END: PAGE_TAGS_ROW -->
      <!-- BEGIN: PAGE_NO_TAGS --> {PHP.L.None}
      <!-- END: PAGE_NO_TAGS -->
    </div>
  </div>
  <!-- ENDIF -->
</aside>