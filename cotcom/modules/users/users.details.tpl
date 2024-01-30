<!-- BEGIN: MAIN -->
<section class="bg-gray-200">
  <div class="page-header min-vh-45" style="background-image: url(
		<!-- IF {USERS_DETAILS_USERIMGBG|file_exists($this)} -->{PHP.cfg.mainurl}/{PHP.urr.user_userimgbg})" loading="lazy">
    <!-- ELSE --> {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/bg-user-default.jpg)" loading="lazy">
    <!-- ENDIF -->
    <span class="mask bg-gradient-dark opacity-1"></span>
    <div class="container pb-5 ">
      <div class="row">
        <div class="col-lg-10 mx-auto p-lg-4 p-2 text-center bg-usertext-overlay">
          <h1 class="ff-monts text-white">{USERS_DETAILS_NICKNAME}</h1>
          <!-- IF {USERS_DETAILS_TEXT} -->
          <p class="ff-monts text-white lead-vw"> {USERS_DETAILS_TEXT|cot_string_truncate($this,120)} ... </p>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
  </div>
  <div class="container-fluid px-2 px-sm-3 px-lg-auto px-xxl-7 pb-7">
    <div class="card card-body blur shadow-blur px-2 px-md-3 px-sm-2 px-lg-5 mx-auto mt-lg-n5 mt-md-n6 mt-sm-3 mt-n5">
      <div class="row border-radius-md pb-4 mx-sm-0 mx-1">
        <div class="col-12 mx-auto mb-3">
          <!-- IF {PHP.urr.user_avatar} -->
          <div class="text-center mt-n5 mt-md-n5 ">
            <img class="avatar avatar-xxl border border-3 rounded-circle shadow-info shadow-lg z-index-2" src="{PHP.urr.user_avatar}" alt="" loading="lazy">
          </div>
          <!-- ELSE -->
          <div class="text-center mt-n5 mt-md-n5">
            <img class="avatar avatar-lg me-3 shadow-secondary shadow-xl" alt="{USERS_DETAILS_NICKNAME}" src="{PHP.R.userimg_default_avatar}">
          </div>
          <!-- ENDIF -->
<!-- IF {USERS_DETAILS_ONLINE} -->
<p class="text-center pt-1">
  <span class="badge rounded-pill bg-success">{PHP.L.Online}</span></p>
  <!-- ELSE -->
  <p class="text-center pt-1"><span class="badge rounded-pill bg-light text-dark">Offline</span>
</p>
<!-- ENDIF -->
          <div class="row">
            <div class="z-index-2 position-relative ">
              <div class="row mb-4 d-flex justify-content-around mb-2">
                <div class="col-auto d-none d-lg-block">
                  <h3 class="mb-0 text-dark-cot ff-monts">{USERS_DETAILS_NICKNAME}</h3>
                </div>
                <div class="col-auto">
                  <div class="d-block">
<!-- IF {PHP.cot_modules.pm} -->

	<!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} != {USERS_DETAILS_ID} -->
	<!-- это кнопка для авторизованных -->
	<a href="{PHP.id|cot_url('pm','m=send&to=$this', '', 1)}" class="pm_send btn btn-info btn-icon" data-bs-toggle="tooltip" data-bs-title="{PHP.L.users_sendpm}">
	  <span class="btn-inner--icon">
		<i class="fa-regular fa-envelope"></i>
	  </span>
	  <span class="btn-inner--text">{PHP.L.userdetails.pm_send_a_message}</span>
	</a>
	
	<!-- ELSE -->
	
		<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
		<!-- это кнопка для меня -->
		<a href="{PHP|cot_url('pm')}" class="pm_send btn btn-info btn-icon">
		  <span class="btn-inner--icon">
			<i class="fa-regular fa-envelope"></i>
		  </span>
		  <span class="btn-inner--text">{PHP.L.pm_inbox}</span>
		</a>
		<!-- ENDIF -->
		
	<!-- ENDIF -->

		<!-- IF {PHP.usr.id} == 0 -->
		<!-- это кнопка гостям -->
		<a href="{PHP|cot_url('login')}" class="pm_send btn btn-info btn-icon">
		  <span class="btn-inner--icon">
			<i class="fa-regular fa-envelope"></i>
		  </span>
		  <span class="btn-inner--text">{PHP.L.userdetails.pm_send_a_message}</span>
		</a>
		<!-- ENDIF -->
		
<!-- ENDIF -->

					<!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} == {PHP.urr.user_id} -->
                    <a href="{PHP|cot_url('users', 'm=profile')}" class="pm_send btn btn-warning btn-icon" data-bs-toggle="tooltip" data-bs-title="{PHP.L.Profile}">
                      <span class="btn-inner--icon">
                        <i class="fas fa-sliders-h fa-fw me-2"></i>
                      </span>
                      <span class="btn-inner--text">{PHP.L.Profile}</span>
                    </a>
					<!-- ELSE -->
                    <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
                    <a href="{USERS_DETAILS_ID|cot_url('users','m=edit&id=$this')}" class="btn btn-primary btn-icon" data-bs-toggle="tooltip" data-bs-title="{PHP.L.Edit}">
                      <span class="btn-inner--icon">
                        <i class="fa-solid fa-user-pen me-2"></i>
                      </span>
                      <span class="btn-inner--text">{PHP.L.Edit}</span>
                    </a>
                    <!-- ENDIF -->
					<!-- ENDIF -->
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-4 order-lg-first">
                  <span class="h6">{PHP.L.usr.Activity}</span>
                  <hr class="hr-cot my-3">
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Lastlogged}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_LASTLOG}</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.users_logcounter}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6">{USERS_DETAILS_LOGCOUNT|cot_declension($this, 'Times')}</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.thanks_thanked}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal">
                          <a href="{USERS_DETAILS_THANKS_URL}" title="{PHP.L.thanks_for_user}">{USERS_DETAILS_THANKS} {USERS_DETAILS_THANKS_TIMES}</a></span>
                      </div>
                    </div>
                  </div>
                  <span class="h6">
                    <!-- IF {PHP.L.usr.PersonalInfo} -->{PHP.L.usr.PersonalInfo}
                    <!-- ELSE -->Personal details
                    <!-- ENDIF -->
                  </span>
                  <hr class="hr-cot my-3">
                  <div class="col-12 mb-2">
                    <div class="row mb-2">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Registered}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_REGDATE}</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Maingroup}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_MAINGRP}</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-12 col-sm-6">
                        <span>{PHP.L.Groupsmembership}:</span>
                      </div>
                      <div class="col-12 col-sm-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_GROUPS}</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Country}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal"> {USERS_DETAILS_COUNTRYFLAG} {USERS_DETAILS_COUNTRY}</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-12 col-xl-6">
                        <span>{PHP.L.Timezone}:</span>
                      </div>
                      <div class="col-12 col-xl-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_TIMEZONE}</span>
                      </div>
                    </div>
                  </div>
                  <!-- IF {USERS_DETAILS_GENDER} -->
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Gender}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_GENDER}</span>
                      </div>
                    </div>
                  </div>
                  <!-- ENDIF -->
                  <!-- IF {USERS_DETAILS_BIRTHDATE} -->
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Birthdate}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_BIRTHDATE}</span>
                      </div>
                    </div>
                  </div>
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Age}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="h6 fw-normal">{USERS_DETAILS_AGE|cot_declension($this, 'Years')} </span>
                      </div>
                    </div>
                  </div>
                  <!-- ENDIF -->
                  <!-- IF {PHP.urr.user_photo} -->
                  <div class="col-12 mb-2">
                    <div class="row">
                      <div class="col-6 col-sm-6">
                        <span>{PHP.L.Photo}:</span>
                      </div>
                      <div class="col-6 col-sm-6">
                        <span class="text-dark d-flex justify-content-center" data-bs-toggle="tooltip" data-bs-title="{PHP.L.Photo} {PHP.urr.user_name}">
						<a class="" href="#" data-bs-toggle="modal" data-bs-target="#PhotoModal" title="">
                  <i class="fa-solid fa-camera-retro fs-3"></i>
                </a></span>
                      </div>
                    </div>
                  </div>
                  <!-- ENDIF -->
				  <hr class="hr-cot my-3">
                  <div class="col-12 mb-2">
                    <div class="d-flex justify-content-center"> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/AddToAny.tpl"} </div>
                  </div>
                </div>
                <div class="col-lg-8 order-first">
                  <!-- IF {USERS_DETAILS_TEXT} -->
                  <p class="ff-monts text-dark cot-text-justify lead-vw d-lg-none"> {USERS_DETAILS_TEXT} </p>
                  <p class="ff-monts fs-5 text-muted cot-text-justify d-none d-lg-block"> {USERS_DETAILS_TEXT} </p>
                  <!-- ENDIF -->
                  <div class="py-3 last">
                    <div class="useractivity clear">
                      <!-- IF {USERS_DETAILS_USERPAGES} -->
    <div class="title-bg-sea-cot">
        <h3 class="fs-5 text-white ff-monts">{PHP.L.Pages}</h3>
    </div>
 {USERS_DETAILS_USERPAGES}
                      <!-- ENDIF -->
                      <!-- IF {USERS_DETAILS_LATESTPOSTS} -->
    <div class="title-bg-sea-cot">
        <h3 class="fs-5 text-white ff-monts">{PHP.L.Forums}</h3>
    </div>
 {USERS_DETAILS_LATESTPOSTS}
                      <!-- ENDIF -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
      <div class="modal fade" id="PhotoModal" tabindex="-1" aria-labelledby="PhotoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">

<div class="card-body p-3">
<img class="img-fluid border-radius-lg z-index-2" src="{PHP.urr.user_photo}" alt="" loading="lazy">

</div>
          </div>
        </div>
      </div>
</section>
<!-- END: MAIN -->