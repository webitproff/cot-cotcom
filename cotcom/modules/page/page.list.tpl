<!-- BEGIN: MAIN -->
<section class="bg-gray-200 pb-7">
  <div class="pt-3 pb-3 px-3 lazy" style="background-size: cover; background-image: url(themes/cotcom/img/bg-head-page-title.jpg);">
    <div class="container-xxl px-2 px-sm-2 px-lg-3 py-3 bg-page-title-overlay">
      <h1>
        <span class="text-white ff-monts">{LIST_CATTITLE}</span>
      </h1>
      <!-- IF {LIST_CATDESC} -->
      <p>
        <span class="text-white">{LIST_CATDESC}</span>
      </p>
      <!-- ELSE -->
      <p class="text-white"> Описание категории пока не заполненно</p>
      <!-- ENDIF -->
    </div>
  </div>
  <div class="container-xxl px-2 px-sm-2 px-lg-auto">
    <nav id="breadcrumb" aria-label="breadcrumb" class="breadcrumb text-dark d-none d-lg-block mb-3">{LIST_PAGETITLE}</nav>
    <div class="row g-3">
      <div class="col-lg-8 order-lg-first">

<div class="row">
  <!-- BEGIN: LIST_ROW -->
  <div class="col-md-12 ms-auto me-auto">
    <div class="card card-plain card-blog mt-5">
      <div class="row">
        <div class="col-md-4">
          <div class="card-image position-relative border-radius-lg mb-3">
            <div class="blur-shadow-image">
              <img class="img border-radius-lg" src="{LIST_ROW_HEAD_SCREEN_1}">
            </div>
          </div>
          <div class="author align-items-center">
            <img src="{LIST_ROW_OWNER_AVATAR_SRC}" alt="..." class="avatar shadow border-radius-lg">
            <div class="name ps-3">
              <span>{LIST_ROW_OWNER_NICKNAME}</span>
              <div class="stats">
                <small>{LIST_ROW_DATE_STAMP|cot_date('date_full', $this)}</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-8 my-auto">
          <h3>
            <a href="{LIST_ROW_URL}" class="text-dark font-weight-normal">{LIST_ROW_SHORTTITLE}</a>
          </h3>
          <span class="text-gradient text-warning text-uppercase text-xs font-weight-bold my-2">{LIST_ROW_CATTITLE}</span>
          <p> {LIST_ROW_TEXT_CUT|strip_tags($this)}
            <!-- IF {LIST_ROW_TEXT_IS_CUT} --> {LIST_ROW_MORE}
            <!-- ENDIF -->
          </p>
        </div>
      </div>
    </div>
  </div>
  <!-- END: LIST_ROW -->
</div>


      </div>
      <div class="col-lg-4 order-first">
        <!-- Page info for Large devices -->
        <div class="card shadow mb-5">
          <div class="card-header p-0 position-relative mt-lg-n4 mt-sm-n2 z-index-2 bg-transparent">
            <div class="title-bg-light-cot shadow-dark shadow-lg shadow">
              <h5 class="mb-0 ff-monts font-weight-bold">{PHP.L.TOC}</h5>
			  <p class="mb-0 ff-monts text-danger">Plug "Table of Contents"</p>
            </div>
          </div>
          <div class="card-body">
			{PHP|toc('docs', 'toc.docs')}
          </div>
        </div>
        <div class="card shadow mb-5">
          <div class="card-header p-0 position-relative mt-lg-n4 mt-sm-n2 z-index-2 bg-transparent">
            <div class="title-bg-light-cot shadow-dark shadow-lg shadow">
              <h5 class="mb-0 ff-monts font-weight-bold"> {PHP.L.Categories}</h5>
			  <p class="mb-0 ff-monts text-danger">LIST_ROWCAT_***</p>
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
				<li class="list-group-item">A third item</li>
			  </ul>
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
        <div class="card shadow mb-5">
          <div class="card-header p-0 position-relative mt-lg-n4 mt-sm-n2 z-index-2 bg-transparent">
            <div class="title-bg-light-cot shadow-dark shadow-lg shadow">
              <h5 class="mb-0 ff-monts font-weight-bold">{PHP.L.Administration}</h5>
            </div>
          </div>
          <div class="card-body">
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">{LIST_SUBMITNEWPAGE}</li>

				<li class="list-group-item">A third item</li>
			  </ul>

          </div>
        </div>
        <!--
			<div class="card shadow mb-5"><div class="card-header p-0 position-relative mt-lg-n4 mt-sm-n2 z-index-2 bg-transparent"><div class="bg-gradient-warning shadow-warning border-radius-lg p-3"><h5 class="mb-0 text-light ff-monts font-weight-bold">
                    {PHP.L.TOC}
                  </h5></div></div>
				{PHP|toc('docs', 'toc', 1)}
            </div> -->
      </div>
    </div>
  </div>
<!-- IF {PHP.cot_plugins_active.pagelist} -->
<div class="container-fluid">
  <div class="row">
    <div class="col-md-6 col-sm-12">
		{PHP|cot_pagelist('pagelist.admin', 7, 'page_count DESC', 'page_count > 0')}
	</div>
    <div class="col-md-6 col-sm-12">
		{PHP|cot_pagelist('pagelist.admin', '7', 'page_date DESC')}
	</div>
  </div>
</div>
<!-- ENDIF -->
</section> {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
<!-- END: MAIN -->
            <!-- BEGIN: LIST_ROW -->
            <p>
            <h3>
              <a href="{LIST_ROW_URL}" title="{LIST_ROW_SHORTTITLE}">{LIST_ROW_SHORTTITLE}</a>
            </h3>
            <!-- IF {LIST_ROW_DESC} -->
            <small>{LIST_ROW_DESC}</small>
            <!-- ENDIF -->
            </p>
            <!-- END: LIST_ROW -->
            <!-- IF {LIST_TOP_PAGINATION} -->
            <p class="pagination">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</p>
            <!-- ENDIF -->
<div class="container-xl mb-4 mt-4">
  <div class="row g-5">
    <div class="col-md-4">
      <div class="position-sticky border rounded mb-4 mt-4 shadow-sm p-3" style="top: 2rem;">
		<div class="card border-light mb-3">
		  <div class="card-header">{PHP.L.Administration}</div>
		  <div class="card-body">
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">{LIST_SUBMITNEWPAGE}</li>
				<li class="list-group-item">A second item</li>
				<li class="list-group-item">A third item</li>
			  </ul>

			<h5 class="card-title">Light card title</h5>
			<p class="card-text"></p>
		  </div>
		</div>	  
	  </div>
    </div>
    <div class="col-md-8">
      <div class="mb-4 mt-4">
	  
	  </div>	
	</div>

  </div>
</div>
<div class="container-xl mb-4 mt-4">
  <div class="row g-5">
    <div class="col-md-4">
      <div class="position-sticky border rounded mb-4 mt-4 shadow-sm p-3" style="top: 2rem;">
		<div class="card border-light mb-3">
		  <div class="card-header">{PHP.L.Administration}</div>
		  <div class="card-body">
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">{LIST_SUBMITNEWPAGE}</li>
				<li class="list-group-item">A second item</li>
				<li class="list-group-item">A third item</li>
			  </ul>

			<h5 class="card-title">Light card title</h5>
			<p class="card-text"></p>
		  </div>
		</div>	  
	  </div>
    </div>
	
    <div class="col-md-4">
      <div class="position-sticky border rounded mb-4 mt-4 shadow-sm p-3" style="top: 2rem;">
		<div class="card border-light mb-3">
		  <div class="card-header">{PHP.L.Administration}</div>
		  <div class="card-body">
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">{LIST_SUBMITNEWPAGE}</li>
				<li class="list-group-item">A second item</li>
				<li class="list-group-item">A third item</li>
			  </ul>

			<h5 class="card-title">Light card title</h5>
			<p class="card-text"></p>
		  </div>
		</div>	  
	  </div>
    </div>
	
    <div class="col-md-4">
      <div class="position-sticky border rounded mb-4 mt-4 shadow-sm p-3" style="top: 2rem;">
		<div class="card border-light mb-3">
		  <div class="card-header">{PHP.L.Administration}</div>
		  <div class="card-body">
			  <ul class="list-group list-group-flush">
				<li class="list-group-item">{LIST_SUBMITNEWPAGE}</li>
				<li class="list-group-item">A second item</li>
				<li class="list-group-item">A third item</li>
			  </ul>

			<h5 class="card-title">Light card title</h5>
			<p class="card-text"></p>
		  </div>
		</div>	  
	  </div>
    </div>
  </div>
</div>
  <div class="row g-5">
    <div class="col-sm-6">

    </div>
    <div class="col-sm-6">
	
	</div>

  </div>