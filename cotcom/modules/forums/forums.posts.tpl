<!-- BEGIN: MAIN -->
<section class="py-5 pt-md-3 pb-md-5 pt-lg-5 bg-gray-200">
  <div class="container-xxl px-2 py-0 mt-0">
    <h1 class="text-dark-cot ff-monts text-lg fw-normal ps-3">{FORUMS_POSTS_PAGETITLE} &nbsp;|&nbsp; <a href="{PHP.q|cot_url('rss','c=topics&id=$this')}">RSS</a></h1>
    <!-- IF {FORUMS_POSTS_TOPICDESC} -->
    <h3 class="ff-monts fs-4 text-dark-cot fw-bold ps-3">{FORUMS_POSTS_TOPICDESC}</h3>
    <!-- ENDIF -->
  </div>
  <div class="container-xxl mb-4 mt-4 px-2">
    <div class="pagination"> {TRANSLATE_SELECT}
    </div>
    <div class="">
      <!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
      <div class="alert alert-danger font-weight-bold ff-monts text-white" role="alert"> {PHP.L.forums_privatetopic} </div>
      <!-- END: FORUMS_POSTS_TOPICPRIVATE -->
      <!-- BEGIN: POLLS_VIEW -->
      <div class="card shadow-lg">
        <div class="card-body py-2 my-2">
          <h3 class="ff-monts text-dark-cot text-lg font-weight-bold opacity-9">{POLLS_TITLE}</h3> {POLLS_FORM}
        </div>
      </div>
      <!-- END: POLLS_VIEW -->
      <!-- BEGIN: FORUMS_POSTS_ADMIN -->
      <div class="card shadow-lg my-3">
        <div class="card-body py-2 my-2">
          <h3 class="text-uppercase text-primary text-md font-weight-bold opacity-7 ps-2">{PHP.L.forums_topicoptions}</h3>
          <form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post">
            <div class="row justify-space-between text-center py-3">
              <div class="col-12 mx-auto">
                <a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a> {PHP.cfg.separator} <a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}">{PHP.L.Lock}</a> {PHP.cfg.separator} <a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a> {PHP.cfg.separator} <a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a> {PHP.cfg.separator} <a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private} (#)</a> {PHP.cfg.separator} <a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a> {PHP.cfg.separator} <a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}">{PHP.L.Delete}</a>
              </div>
            </div>
            <div class="row g-3 mb-3">
              <div class="col-auto">
                <p class="h5"> {PHP.L.Move}: </p>
              </div>
              <div class="col-md-6 col-sm-12">
                <div class="">{FORUMS_POSTS_MOVEBOX_SELECT} </div>
                <div class="form-check"> {FORUMS_POSTS_MOVEBOX_KEEP|cot_rc_modify($this, 'class="form-check-input" id="flexCheckDefault"')} <label class="form-check-label" for="flexCheckDefault"> {PHP.L.forums_keepmovedlink} </label>
                </div>
              </div>
              <div class="col-md-2 col-sm-12">
                <div class="btn-group">
                  <button type="submit" class="btn bg-gradient-info btn-sm w-auto me-2">{PHP.L.Move}</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
      <!-- END: FORUMS_POSTS_ADMIN -->
      <!-- BEGIN: FORUMS_POSTS_ROW -->
      <p class="pagination">{FORUMS_POSTS_PAGEPREV}{FORUMS_POSTS_PAGES}{FORUMS_POSTS_PAGENEXT}</p>
      <!-- IF {FORUMS_POSTS_TOPICDESC} -->
      <h3 class="ff-monts text-dark-cot fw-bold ps-2">{FORUMS_POSTS_TOPICDESC}</h3>
      <!-- ENDIF -->
      <p class="pagination">
        <span class="badge bg-secondary text-dark">{FORUMS_POSTS_TAGS}</span>
      </p>
      <div class="card border-warning mb-3 forumpost {FORUMS_POSTS_ROW_ODDEVEN} n{FORUMS_POSTS_ROW_ORDER}">
        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
          <div class="title-bg-sea-cot text-white">
            <div class="row">
              <div class="col-md-6 col-sm-12 d-flex">
                <h4 class="ff-monts fw-bold text-white text-md my-auto"> {FORUMS_POSTS_ROW_ANCHORLINK} {FORUMS_POSTS_ROW_CREATION}
                  <!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
                  <span class="mx-2 my-auto">{PHP.L.from} {PHP.L.IPaddress}</span> <span class="mx-2 my-auto">{FORUMS_POSTS_ROW_POSTERIP|cot_rc_modify($this, 'class="ff-monts fw-bold text-white text-md my-auto"')} </span>
				  
                </h4>
                <!-- ENDIF -->
              </div>
              <div class="col-md-6 col-sm-12">
                <div class="d-flex justify-content-end">
                  <div class="row">
                    <div class="col-auto">
                      <a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" class="my-auto mx-2" rel="nofollow">
                        <span class="badge bg-gradient-primary ff-monts fw-bold text-white text-xs">#{FORUMS_POSTS_ROW_ORDER}</span>
                      </a>
                    </div>
                    <!-- IF {FORUMS_POSTS_ROW_QUOTE} -->
                    <div class="col-auto"> {FORUMS_POSTS_ROW_QUOTE} </div>
                    <!-- ENDIF -->
                    <!-- IF {FORUMS_POSTS_ROW_EDIT} -->
                    <div class="col-auto"> {FORUMS_POSTS_ROW_EDIT} </div>
                    <!-- ENDIF -->
                    <!-- IF {FORUMS_POSTS_ROW_DELETE} -->
                    <div class="col-auto"> {FORUMS_POSTS_ROW_DELETE} </div>
                    <!-- ENDIF -->
                    <div class="col-auto">
                      <a class="" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="text-white fs-3 my-auto ms-2 fa-solid fa-square-share-nodes"></i>
                      </a>
                      <ul class="dropdown-menu p-4 dropdown-menu-end shadow-lg "> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/AddToAny-forumposts.tpl"} </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card-body">
          <div class="row g-2">
            <div class="col-lg-3 col-sm-12">
              <div class="actions list-group list-group-flush px-2">
                <div class="list-group-item pb-2 pt-0">
                  <div class="position-relative">
                    <div class="text-center">
                      <!-- IF {PHP.row.user_avatar} -->
                      <img src="{PHP.row.user_avatar}" class="avatar avatar-xxl border border-3 rounded-circle shadow-info shadow-lg" alt="{FORUMS_POSTS_ROW_USERAVATAR_NICKNAME}">
                      <!-- ELSE -->
                      <img src="{PHP.R.userimg_default_avatar}" class="avatar avatar-xxl border border-3 rounded-circle shadow-info shadow-lg" alt="{FORUMS_POSTS_ROW_USERAVATAR_NICKNAME}">
                      <!-- ENDIF -->
                    </div>
                    <div class="position-absolute top-0 end-0">
                      <!-- IF {FORUMS_POSTS_ROW_USERONLINE} -->
                      <p class="text-center pt-1">
                        <span class="badge rounded-pill bg-success">{PHP.L.Online}</span>
                      </p>
                      <!-- ELSE -->
                      <p class="text-center pt-1">
                        <span class="badge rounded-pill bg-light text-dark">Offline</span>
                      </p>
                      <!-- ENDIF -->
                    </div>
                  </div>
                  <h4 class="text-center ff-monts text-dark-cot fw-bold pt-2 mb-0">{FORUMS_POSTS_ROW_USERNAME} </h4>
<!-- IF {PHP.rowt.ft_firstposterid}  ==  {PHP.row.user_id} -->
<h6 class="text-center ff-monts text-dark-cot fw-bold pt-2 mb-0">Создатель темы</h6>
<!-- ENDIF -->
                </div>
                <div class="list-group-item p-0">
                  <p class="text-center text-lg-start py-0 my-0"> {FORUMS_POSTS_ROW_USERMAINGRP}</p>
                  <!-- IF {FORUMS_POSTS_ROW_USERTHANKS} > 0 -->
                  <p class="text-center text-lg-start py-0 my-0">
                    <a href="{FORUMS_POSTS_ROW_USERTHANKS_URL}" title="{PHP.L.thanks_for_user}">{PHP.L.thanks_thanked}: {FORUMS_POSTS_ROW_USERTHANKS} {FORUMS_POSTS_ROW_USERTHANKS_TIMES}</a>
                  </p>
                  <!-- ENDIF -->
                </div>
              </div>
            </div>
            <div class="col-lg-9 col-sm-12">
              <div class="forums_col_main pretty userlang-{PHP.row.user_lang}">
                <div class="bbox page_text border-bottom">
                  <div class="translatable page_content">{FORUMS_POSTS_ROW_TEXT}</div>
                </div>
              </div>
              <!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} -->
              <p class="small updatedby">
                <i class="fa-solid fa-clock"></i> {FORUMS_POSTS_ROW_UPDATEDBY}
              </p>
              <!-- ENDIF -->
              <!-- IF {FORUMS_POSTS_ROW_USERTEXT} -->
              <p class="signature text-muted text-sm mb-0">
                <i class="fa-solid fa-quote-left"></i> {FORUMS_POSTS_ROW_USERTEXT|cot_string_truncate($this,120)} ... <i class="fa-solid fa-quote-right"></i>
              </p>
              <!-- ENDIF -->
            </div>
          </div>
        </div>
      </div>
      <!-- END: FORUMS_POSTS_ROW -->
        <ul class="pagination pagination-info pagination-lg m-4">
{FORUMS_POSTS_PAGEPREV}{FORUMS_POSTS_PAGES}{FORUMS_POSTS_PAGENEXT}
        </ul>


          <!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
          <div class="alert alert-warning text-white font-weight-bold" role="alert">{FORUMS_POSTS_TOPICLOCKED_BODY}</div>
          <!-- END: FORUMS_POSTS_TOPICLOCKED -->
          <!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
          <div>{FORUMS_POSTS_ANTIBUMP_BODY}</div>
          <!-- END: FORUMS_POSTS_ANTIBUMP --> {FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"}
          <!-- BEGIN: FORUMS_POSTS_NEWPOST -->
      <div class="card border-warning mb-3">
        <div class="card-body">
          <form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost">
            <div class="input-group input-group-static">
              <label><span class="badge bg-gradient-info ff-monts mb-2">{PHP.L.forums_post}</span></label> {FORUMS_POSTS_NEWPOST_TEXT}
            </div>
            <button class="btn btn-primary my-3" type="submit">{PHP.L.Reply}</button>
          </form>
        </div>
      </div>
          <!-- END: FORUMS_POSTS_NEWPOST -->

    </div>
  </div>
</section> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
<!-- END: MAIN -->