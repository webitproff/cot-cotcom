<!-- BEGIN: MAIN -->
<!---->
<main>
  <!-- IF {PHP.usr.id} == 0 -->
  <style>
    .bubble {
      background: linear-gradient(#EC5DC1, #D61A6F);
      border-radius: 50%;
      box-shadow: 0 30px 15px rgba(0, 0, 0, 0.15);
      position: absolute;
    }

    .bubble:before,
    .bubble:after {
      content: "";
      background: linear-gradient(#EC5DC1, #f8a732);
      border-radius: 50%;
      box-shadow: 0 30px 15px rgba(0, 0, 0, 0.15);
      position: absolute;
    }

    .bubble:nth-child(1) {
      top: 10vh;
      left: 3vw;
      height: 12vmin;
      width: 12vmin;
    }

    .bubble:nth-child(1):before {
      width: 6vmin;
      height: 6vmin;
      bottom: -25vh;
      right: -10vmin;
    }

    .bubble:nth-child(2) {
      top: 20vh;
      left: 7vw;
      height: 10vmin;
      width: 10vmin;
    }

    .bubble:nth-child(2):before {
      width: 5vmin;
      height: 5vmin;
      bottom: -10vh;
      left: -8vmin;
    }

    .bubble:nth-child(3) {
      top: 7vh;
      right: 0vw;
      height: 12vmin;
      width: 12vmin;
    }

    .bubble:nth-child(3):before {
      width: 3vmin;
      height: 3vmin;
      bottom: -15vh;
      left: -18vmin;
      z-index: 6;
    }

    .bubble:nth-child(4) {
      top: 25vh;
      right: 7vw;
      height: 9vmin;
      width: 9vmin;
    }

    .bubble:nth-child(4):before {
      width: 7vmin;
      height: 7vmin;
      bottom: -10vmin;
      left: -15vmin;
    }

    .bubble:nth-child(5) {
      top: 60vh;
      right: 0vw;
      height: 28vmin;
      width: 28vmin;
    }

    .bubble:nth-child(5):before {
      width: 10vmin;
      height: 10vmin;
      bottom: 5vmin;
      left: -25vmin;
    }
  </style>
  <div class="d-none d-lg-block">
    <div class="bubble"></div>
    <div class="bubble"></div>
    <div class="bubble"></div>
    <div class="bubble"></div>
    <div class="bubble"></div>
  </div>
  <!-- ENDIF -->
  <div class="px-4 pt-5 my-5 text-center border-bottom">
    <div class="d-lg-none">
      <h1 class="display-4 ff-monts text-dark-cot fw-bold">Cotonti <span class="text-info">Siena</span>
        <span class="badge text-bg-warning">{PHP.cfg.version}</span>
      </h1>
    </div>
    <div class="d-none d-lg-block">
      <h1 class="display-4 ff-monts text-dark-cot fw-bold">Cotonti
        <!-- IF {PHP.usr.id} == 0 -->
        <span class="text-info" id="cot-typed"></span>
        <div id="typed-strings">
          <h1>Siena</h1>
          <h1>CMF</h1>
          <h1>Open Source</h1>
        </div>
        <!-- ELSE -->
        <span class="text-info">Siena</span>
        <!-- ENDIF -->
        <span class="badge text-bg-warning">{PHP.cfg.version}</span>
      </h1>
    </div>
    <div class="col-lg-6 mx-auto">
      <p class="lead text-dark mb-4 ff-monts fw-normal">{PHP.L.index.Tagline}</p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
        <a href="{PHP.cfg.mainurl}/download/" class="btn bg-success bg-gradient-success btn-lg px-4 me-sm-3">{PHP.L.Download}</a>
        <a href="{PHP.cfg.mainurl}/docs/" class="btn btn-info bg-gradient-info opacity-10 btn-lg px-4">{PHP.L.header.Documentation}</a>
      </div>
    </div>
    <div class="overflow-hidden d-none d-lg-block" style="max-height: 40vh;">
      <div class="container px-5">
        <img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/index-cotonti-code.png" class="img-fluid border rounded-3 shadow-lg " width="700" height="500" alt="Cotonti Siena" loading="lazy">
      </div>
    </div>
  </div>
</main>
<section class="py-5 bg-gray-200">
  <div class="container-fluid px-2 px-sm-3 px-lg-auto px-xxl-7">
    <div class="card col-lg-9 mx-auto p-4 mb-3">
      <div class="row">
        <div class="col-lg-8">
          <h2 class="ff-monts">{PHP.L.index.WhyChoose}</h2>
          <p class="text-lg ff-monts mb-0 pt-2 cot-text-justify">{PHP.L.index.Intro}</p>
        </div>
        <div class="col-lg-4 text-end d-flex flex-column justify-content-center"> {PHP.L.index.Benefits} </div>
      </div>
    </div>
    <!-- IF {PHP.usr.id} == 0 -->
    <div class="row row-cols-1 row-cols-md-3 g-4 mt-lg-5 mt-4">
      <div class="col-lg-4 col-md-6 mb-5">
        <div class="card h-100">
          <div class="ps-4 mt-n4">
            <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark shadow text-center border-radius-xl">
              <i class="fa-brands fa-github  opacity-10"></i>
            </div>
          </div>
          <div class="card-body border-radius-lg position-relative overflow-hidden pb-4">
            <h5 class="mt-2">{PHP.L.index.FtOpen}</h5>
            <p class="mb-3">Cotonti - это бесплатное решение для создания и поддержки сайтов, это гибкий движок для вебмастеров, разработчиков, дизайнеров и компаний</p>
            <a target="_blank" href="https://github.com/Cotonti/Cotonti" class="font-weight-bold text-xs text-uppercase font-weight-bolder text-dark icon-move-right"> {PHP.L.header.BrowseSource} <i class="fas fa-arrow-right text-xs ms-1"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-5">
        <div class="card h-100">
          <div class="ps-4 mt-n4">
            <div class="icon icon-lg icon-shape bg-gradient-success shadow-success shadow text-center border-radius-xl">
              <i class="fa-solid fa-shield-virus opacity-10"></i>
            </div>
          </div>
          <div class="card-body border-radius-lg position-relative overflow-hidden pb-4">
            <h5 class="mt-2">{PHP.L.index.FtSecure}</h5>
            <p class="mb-3">If everything I did failed - which it doesn&#39;t, it actually succeeds - just the fact that I&#39;m willing to fail is an inspiration. People are so scared to lose that they don&#39;t even try. And this is sad.</p>
            <a href="javascript:;" class="font-weight-bold text-xs text-uppercase font-weight-bolder text-success icon-move-right"> Check more <i class="fas fa-arrow-right text-xs ms-1"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-5">
        <div class="card h-100">
          <div class="ps-4 mt-n4">
            <div class="icon icon-lg icon-shape bg-gradient-info shadow-info shadow text-center border-radius-xl">
              <i class="fa-solid fa-jet-fighter-up opacity-10"></i>
            </div>
          </div>
          <div class="card-body border-radius-lg position-relative overflow-hidden pb-4">
            <h5 class="mt-2">{PHP.L.index.FtFast}</h5>
            <p class="mb-3">You have the opportunity to play this game of life you need to appreciate every moment. A lot of people don’t appreciate the moment until it’s motivating the other doers.</p>
            <a href="javascript:;" class="font-weight-bold text-info text-xs text-uppercase font-weight-bolder icon-move-right"> See details <i class="fas fa-arrow-right text-xs ms-1"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-5">
        <div class="card h-100">
          <div class="ps-4 mt-n4">
            <div class="icon icon-lg icon-shape bg-gradient-warning shadow-warning shadow text-center border-radius-xl">
              <i class="fa-solid fa-cubes opacity-10"></i>
            </div>
          </div>
          <div class="card-body border-radius-lg position-relative overflow-hidden pb-4 px-sm-5 ">
            <h5 class="mt-2">{PHP.L.index.FtModular}</h5>
            <p class="mb-3">For standing out. But the time is now to be okay to be the greatest you. Would you believe in what you believe in, if you were the only one who believed it? What do you think?</p>
            <a href="{PHP|cot_url('page', 'c=extensions')}" class="font-weight-bold text-xs text-uppercase font-weight-bolder text-warning icon-move-right"> {PHP.L.header.Extensions} <i class="fas fa-arrow-right text-xs ms-1"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-5">
        <div class="card h-100">
          <div class="ps-4 mt-n4">
            <div class="icon icon-lg icon-shape bg-gradient-secondary shadow-secondary shadow text-center border-radius-xl">
              <i class="fa-solid fa-object-ungroup opacity-10"></i>
            </div>
          </div>
          <div class="card-body border-radius-lg position-relative overflow-hidden pb-4">
            <h5 class="mt-2">{PHP.L.index.FtMVC}</h5>
            <p class="mb-3">MVC - схема разделения данных приложения и управляющей логики на три отдельных компонента: модель, представление и контроллер</p>
            <a href="javascript:;" class="font-weight-bold text-xs text-uppercase font-weight-bolder text-secondary icon-move-right"> See all <i class="fas fa-arrow-right text-xs ms-1"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-5">
        <div class="card h-100">
          <div class="ps-4 mt-n4">
            <div class="icon icon-lg icon-shape bg-gradient-danger shadow-danger shadow text-center border-radius-xl">
              <i class="fa-solid fa-code opacity-10"></i>
            </div>
          </div>
          <div class="card-body border-radius-lg position-relative overflow-hidden pb-4">
            <h5 class="mt-2">{PHP.L.index.FtTpl}</h5>
            <p class="mb-3">Каждый аспект внешнего вида может быть настроен в шаблоне, стиле или строке ресурса.</p>
            <a href="javascript:;" class="font-weight-bold text-xs text-uppercase font-weight-bolder text-danger icon-move-right"> Find story <i class="fas fa-arrow-right text-xs ms-1"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- ENDIF -->
  </div>
</section>
<section class="pt-1 pb-3 bg-gray-200">
  <div class="container-fluid px-2 px-sm-3 px-lg-auto px-xxl-7">
    <div class="row g-5">
      <div class="col-lg-4 order-first">
        <!-- IF {PHP.cfg.plugin.recentitems.recentforums} AND !{PHP.cfg.disable_forums} -->
        <div class="card mb-5">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
            <div class="title-bg-primary-cot shadow">
              <h3 class="fs-5 text-white ff-monts">{PHP.L.index.RecentForumPosts}</h3>
            </div>
          </div>
          <div class="card-body"> {RECENT_FORUMS} </div>
        </div>
        <!-- ENDIF -->
        <!-- IF {PHP.cfg.plugin.recentitems.recentpages} AND !{PHP.cfg.disable_page} -->
        <div class="card mb-5">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
            <div class="title-bg-light-cot shadow-dark shadow-lg shadow">
              <h3 class="fs-5 text-dark-cot ff-monts">{PHP.L.index.RecentAdditions}</h3>
            </div>
          </div>
          <div class="card-body"> {RECENT_PAGES} </div>
        </div>
        <!-- ENDIF -->
        <!-- IF {PHP.cot_modules.polls} -->
        <div class="card mb-5">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
            <div class="title-bg-grey-cot shadow">
              <h3 class="fs-5 text-white ff-monts">{PHP.L.poll}</h3>
            </div>
          </div>
          <div class="card-body"> {INDEX_POLLS} </div>
        </div>
        <!-- ENDIF -->


        <!-- IF {PHP.cot_plugins_active.whosonline} -->
        <div class="card mb-5">
          <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
            <div class="title-bg-success-cot  shadow">
              <a href="{PHP|cot_url('plug','e=whosonline')}">
                <h3 class="fs-5 text-white ff-monts">{PHP.L.NowOnline}</h3>
              </a>
            </div>
          </div>
          <div class="card-body"> {PHP.out.whosonline} </div>
        </div>
        <!-- ENDIF -->
      </div>
      <div class="col-lg-8 order-lg-first">
        <div id="news"> {INDEX_NEWS} </div>
      </div>
    </div>
  </div>
</section>
<!-- END: MAIN -->