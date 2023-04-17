<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns="http://www.w3.org/1999/xhtml" lang="{PHP.lang}" class="no-js">
  <head>
    <title>{HEADER_TITLE}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{HEADER_META_DESCRIPTION}">
    <meta name="keywords" content="{HEADER_META_KEYWORDS}">
    <meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset={HEADER_META_CHARSET}">
    <meta property="og:locale" content="{PHP.lang}" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="{HEADER_TITLE}" />
    <meta property="og:description" content="{HEADER_META_DESCRIPTION}" />
    <meta property="og:url" content="{HEADER_CANONICAL_URL}" />
    <meta property="og:site_name" content="{PHP.cfg.maintitle}" />
	<!-- IF {PHP.env.ext} == 'page' AND {PHP.env.location} == 'pages' -->
	<meta property="og:image" content="{PHP.cfg.mainurl}/{PHP.pag.page_head_screen_1}" />
	<!-- ELSE -->
	<meta property="og:image" content="{PHP.cfg.mainurl}/apple-touch-icon.png}" />
	<!-- ENDIF -->
    <meta property="og:image:type" content="image/jpeg" />
<!-- Twitter -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="{HEADER_TITLE}">
<meta name="twitter:description" content="{HEADER_META_DESCRIPTION}">
<meta name="twitter:image:src" content="{PHP.cfg.mainurl}/{PHP.pag.page_head_screen_1}" />
<meta name="twitter:url" content="{HEADER_CANONICAL_URL}">

    <meta name="generator" content="Cotonti https://www.cotonti.com">
    <link rel="canonical" href="{HEADER_CANONICAL_URL}" /> {HEADER_BASEHREF} {HEADER_HEAD}
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600&family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/3c202149f5.js" crossorigin="anonymous"></script> {HEADER_COMPOPUP}
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark z-index-3 navbar-head-cot">
      <div class="container-fluid px-2 px-sm-2 px-lg-auto d-flex align-items-center">
        <a class="navbar-brand" href="{PHP|cot_url('index')}">
          <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/logo.png" alt="{PHP.cfg.maintitle}" width="" height="32" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2">
          <i class="fa-solid fa-indent text-white me-3"></i>
        </button>
        <div class="offcanvas offcanvas-end bg-dark-head-cot text-bg-dark" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title text-white" id="offcanvasNavbar2Label">{PHP.cfg.maintitle}</h5>
            <a class="btn-close" href="#" data-bs-dismiss="offcanvas">
              <i class="fa-regular fs-3 text-white fa-rectangle-xmark"></i>
            </a>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav navbar-nav-hover mx-auto d-flex align-items-lg-center">
              <li class="nav-item d-lg-none">
                <a class="nav-link link-light opacity-10" href="{PHP|cot_url('index')}">
                  <i class="fa-solid fa-house"></i>
                  <span class="d-lg-none  ms-2">{PHP.L.Home}</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link link-light opacity-10" href="#" data-bs-toggle="modal" data-bs-target="#SearchModal" title="{PHP.L.Search}">
                  <i class="fa-solid fa-magnifying-glass"></i>
                  <span class="d-lg-none ms-2">{PHP.L.Search}</span>
                </a>
              </li>
              <li class="nav-item">
                <div class="d-none d-lg-block vr h-100 mx-lg-2 text-light"></div>
              </li>
              <!-- BEGIN: I18N_LANG -->
              <li class="nav-item dropdown" data-bs-toggle="tooltip" data-bs-title="{PHP.L.header.Interface_Localization}">
                <a class="nav-link link-light opacity-10 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <span class="text-uppercase">{PHP.i18n_locale}</span>
                  <span class="d-lg-none ms-2">{PHP.L.header.Interface_Localization}</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- BEGIN: I18N_LANG_ROW -->
                  <li>
                    <a class="dropdown-item" href="{I18N_LANG_ROW_URL}">
                      <img src="images/flags/{I18N_LANG_ROW_FLAG}.png" class="me-2" alt="{I18N_LANG_ROW_CODE}">{I18N_LANG_ROW_TITLE} </a>
                  </li>
                  <!-- END: I18N_LANG_ROW -->
                </ul>
              </li>
              <!-- END: I18N_LANG -->
              </li>
              <li class="nav-item">
                <div class="d-none d-lg-block vr h-100 mx-lg-2 text-light"></div>
              </li>
              <li class="nav-item dropdown" data-bs-toggle="tooltip" data-bs-title="{PHP.L.header.InDepth}">
                <a class="
																				<!-- IF {PHP.env.ext} == 'page' AND {PHP.al} == 'docs' -->active 
																				<!-- ENDIF -->nav-link link-light opacity-10 dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                  <i class="fa-solid fa-book-medical"></i>
                  <span class="ms-1">{PHP.L.header.Documentation}</span>
                </a>
                <ul class="dropdown-menu shadow">
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=docs')}">{PHP.L.header.DocsIndex}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=genoa')}">{PHP.L.header.DocsLegacy}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=docs&al=start')}">{PHP.L.header.Installation}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=docs&al=administrator')}">{PHP.L.Administration}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=docs&al=devel')}">{PHP.L.header.Development}</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <div class="d-none d-lg-block vr h-100 mx-lg-2 text-light"></div>
              </li>
              <li class="nav-item dropdown" data-bs-toggle="tooltip" data-bs-title="{PHP.L.header.UpdateExtend}">
                <a class="
																				<!-- IF {PHP.env.ext} == 'page' AND {PHP.al} == 'download' -->active 
																				<!-- ENDIF -->nav-link link-light opacity-10 dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                  <i class="fa-solid fa-download text-white"></i>
                  <span class="ms-1">{PHP.L.header.Download}</span>
                </a>
                <ul class="dropdown-menu shadow">
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=download')}">{PHP.L.header.CoreFiles}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=extensions')}">{PHP.L.header.Extensions}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=themes')}">{PHP.L.header.Themes}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=locales')}">{PHP.L.header.Locales}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=addons')}">{PHP.L.header.Addons}</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <div class="d-none d-lg-block vr h-100 mx-lg-2 text-light"></div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link link-light opacity-10  dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" uk-tooltip="{PHP.L.header.BleedingEdge}" title="">
                  <i class="fa-solid fa-code text-white"></i>
                  <span class="ms-1">{PHP.L.header.Codebase}</span>
                </a>
                <ul class="dropdown-menu shadow">
                  <li>
                    <a class="dropdown-item" href="https://github.com/Cotonti/Cotonti/milestones">{PHP.L.header.Roadmap}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="https://github.com/Cotonti/Cotonti/commits">{PHP.L.header.Timeline}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="https://github.com/Cotonti/Cotonti/issues">{PHP.L.header.Tickets}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="https://github.com/Cotonti/Cotonti">{PHP.L.header.BrowseSource}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="https://github.com/Cotonti/Cotonti/graphs/contributors">{PHP.L.header.Contributers}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP.cfg.mainurl}/pastebin/">Pastebin</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP.cfg.mainurl}/tpltags">TPL Tags</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <div class="d-none d-lg-block vr h-100 mx-lg-2 text-light"></div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link link-light opacity-10 dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside" title="{PHP.L.header.GetInvolved}">
                  <i class="fa-solid fa-users-gear text-white"></i>
                  <span class="ms-1">{PHP.L.header.Community} <span>
                </a>
                <ul class="dropdown-menu shadow">
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=news')}">{PHP.L.News}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=articles&al=benefits')}">{PHP.L.header.Benefits}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('page', 'c=articles&al=credits')}">{PHP.L.header.Credits}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('users')}">{PHP.L.Users}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP.cfg.mainurl}/chat">{PHP.L.header.Chat}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('thanks')}">{PHP.L.header.SiteActivity}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('plug', 'e=showcase')}">{PHP.L.header.Showcase}</a>
                  </li>
                  <li class="">
                    <a class="dropdown-item bg-gray-300" href="{PHP|cot_url('page', 'c=usersposts')}">Новости пользователей</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <div class="d-none d-lg-block vr h-100 mx-lg-2 text-light"></div>
              </li>
              <li class="nav-item">
                <a href="{PHP|cot_url('forums')}" class="<!-- IF {PHP.env.ext} == 'forums' -->active <!-- ENDIF -->nav-link link-light opacity-10" data-bs-toggle="tooltip" data-bs-title="Техническая поддержка сообщества">
                  <i class="fa-solid fa-comments"></i>
                  <span class="ms-1">{PHP.L.Forums} <span>
                </a>
              </li>
            </ul>
            <!-- BEGIN: GUEST -->
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0 profile-menu">
              <li class="nav-item dropdown dropdown-hover">
                <a class="nav-link link-light opacity-10 dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <i class="fa-solid fa-circle-user"></i>
                  <span class="ms-2">{PHP.L.userdetails.MyAcc}</span>
                </a>
                <ul id="guest" class="dropdown-menu dropdown-menu-end">
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('login')}">{PHP.L.Login}</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a>
                  </li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('users','m=passrecover')}">{PHP.L.users_lostpass}</a>
                  </li>
                </ul>
              </li>
            </ul>
            <!-- END: GUEST -->
            <!-- BEGIN: USER -->
            <ul id="user" class="navbar-nav ms-auto d-flex align-items-lg-center mb-lg-0 profile-menu">
              <!-- IF {PHP.out.notices} OR {PHP.cot_modules.pm} > 0 -->
              <li class="nav-item dropdown dropdown-hover">
                <a class="nav-link link-light opacity-10" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <!-- IF {PHP.out.notices} OR {PHP.usr.messages} > 0 -->
                  <span class="fs-4 text-primary" data-bs-toggle="tooltip" data-bs-title="{PHP.L.header_notices_yes}">
                    <i class="fa-solid fa-circle-exclamation"></i>
                  </span><span class="d-lg-none">{PHP.L.header_notices_yes}</span>
                  <!-- ELSE -->
                  <span class="fs-4 text-muted" data-bs-toggle="tooltip" data-bs-title="{PHP.L.header_notices_no}">
                    <i class="fa-solid fa-circle-exclamation"></i>
                  </span><span class="d-lg-none">{PHP.L.header_notices_no}</span>
                  <!-- ENDIF -->
                  
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                  <!-- IF {PHP.out.notices} -->
                  <li id="notices">{HEADER_NOTICES}</li>
                  <!-- ENDIF -->

<!-- IF {HEADER_USER_PMREMINDER} -->
<li class="dropdown-item"><i class="fa-regular fa-envelope me-2"></i>
{HEADER_USER_PMREMINDER}</li>

                  <!-- ENDIF -->
                  <!-- IF {EVENTS_HEADER} -->
                  <li  class="dropdown-item">{EVENTS_HEADER}</li>
                  <!-- ENDIF -->

                </ul>
              </li>
              <!-- ENDIF -->
              <li class="nav-item dropdown dropdown-hover">
                <a class="nav-link link-light opacity-10 dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <span class="">
                    <!-- IF {PHP.usr.profile.user_avatar} -->
                    <img class="rounded-circle border border-secondary" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="27" height="27" />
                    <!-- ELSE -->
                    <i class="fa-solid fa-circle-user"></i>
                    <!-- ENDIF --> {PHP.usr.name}
                  </span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('users', 'm=profile')}" id="profile" title="{PHP.L.Profile}">
                      <i class="fas fa-sliders-h fa-fw me-2"></i>{PHP.L.Profile} </a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">
                      <i class="fa-solid fa-id-card-clip me-2"></i>{PHP.L.userdetails.PersnAcc} </a>
                  </li>
                  <!-- IF {PHP.cot_modules.pfs} -->
                  <li>
                    <a class="dropdown-item" href="{PHP|cot_url('pfs')}" id="files" title="{PHP.L.Files}">
                      <i class="fa-regular fa-folder-open me-2"></i>{PHP.L.Files} </a>
                  </li>
                  <!-- ENDIF -->
                  <!-- IF {PHP.usr.isadmin} -->
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li>
                    <a class="dropdown-item link-danger" href="{PHP|cot_url('admin', '', '', 0, 1)}" id="admin" title="{PHP.L.Administration}">
                      <i class="fa-solid fa-gauge-high me-2"></i>{PHP.L.Administration} </a>
                  </li>
                  <!-- ENDIF -->
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li>
                    <a class="dropdown-item" href="{PHP.sys.xk|cot_url('login', 'out=1&x=$this', '', 0, 1)}" id="logout" title="{PHP.L.Logout}">
                      <i class="fas fa-sign-out-alt fa-fw"></i>{PHP.L.Logout} </a>
                  </li>
                </ul>
                <!-- END: USER -->
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
      <!-- Modal SearchModal -->
      <div class="modal fade" id="SearchModal" tabindex="-1" aria-labelledby="SearchModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">

<div class="card-body px-2 pb-2 pt-3">
<form  id="searchform" action="find" method="GET">

<div class="row justify-space-between">
<div class="col-lg-8 col-sm-6 mt-lg-0 mt-4">
                <div class="input-group input-group-static">
                  <label class="form-label">{PHP.L.Search}:</label> <input class="form-control form-control-lg" type="text" name="q" value="">
                </div>

</div>
<div class="col-lg-4 col-sm-6 mt-lg-0 mt-4">
<button type="submit" class="col-12 btn bg-gradient-info" data-bs-toggle="tooltip" data-bs-title="{PHP.L.Go}">{PHP.L.Go}!</button>
</div>
</div>


</form>
</div>
          </div>
        </div>
      </div>
    <div id="body" class="base-height {PHP.env.location}">
      <!-- END: HEADER -->