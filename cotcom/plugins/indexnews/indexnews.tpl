<!-- BEGIN: MAIN -->
<div class="row">
  <!-- BEGIN: PAGE_ROW -->
  <div class="col-md-10 ms-auto me-auto">
    <div class="card card-plain card-blog mt-5">
      <div class="row">
        <div class="col-md-4">
          <div class="card-image position-relative border-radius-lg mb-3">
            <div class="blur-shadow-image">
              <img class="img border-radius-lg" src="{PAGE_ROW_HEAD_SCREEN_1}">
            </div>
          </div>
          <div class="author align-items-center">
            <img src="{PAGE_ROW_OWNER_AVATAR_SRC}" alt="..." class="avatar shadow border-radius-lg">
            <div class="name ps-3">
              <span>{PAGE_ROW_OWNER_NICKNAME}</span>
              <div class="stats">
                <small>{PAGE_ROW_DATE_STAMP|cot_date('date_full', $this)}</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-7 my-auto ms-md-3 mt-md-auto mt-4">
          <h3>
            <a href="{PAGE_ROW_URL}" class="text-dark font-weight-normal">{PAGE_ROW_SHORTTITLE}</a>
          </h3>
          <span class="text-gradient text-warning text-uppercase text-xs font-weight-bold my-2">{PAGE_ROW_CATTITLE}</span>
          <p> {PAGE_ROW_TEXT_CUT|strip_tags($this)}
            <!-- IF {PAGE_ROW_TEXT_IS_CUT} --> {PAGE_ROW_MORE}
            <!-- ENDIF -->
          </p>
        </div>
      </div>
    </div>
  </div>
  <!-- END: PAGE_ROW -->
</div>
<p class="paging">{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}</p>
<!-- END: MAIN -->
<div class="card mb-5">
  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
    <div class="title-bg-sea-cot">
      <a href="{PAGE_ROW_URL}" class="" title="{PAGE_ROW_SHORTTITLE}">
        <h3 class="fs-5 text-white ff-monts">{PAGE_ROW_SHORTTITLE}</h3>
      </a>
    </div>
  </div>
  <div class="card-body pt-2">
        <p class="text-dark-cot ff-monts fw-normal mb-0">
        <i class="far fa-calendar-alt me-2"></i>{PAGE_ROW_DATE_STAMP|cot_date('date_full', $this)} <span class=" mx-2">|</span> {PAGE_ROW_CATTITLE}
      </p>
    <!-- IF {PAGE_ROW_DESC} -->
    <div class="pt-1 pb-0 px-4 mb-0">
      <p class="h5 lh-sm text-dark ff-monts fw-normal cot-text-justify">{PAGE_ROW_DESC}</p>
    </div>
    <!-- ENDIF -->
    <p class="card-text cot-text-justify"> {PAGE_ROW_TEXT_CUT|strip_tags($this)}
      <!-- IF {PAGE_ROW_TEXT_IS_CUT} -->{PAGE_ROW_MORE}
      <!-- ENDIF -->
    </p>
  </div>
</div>
            <div class="col-lg-10 mx-auto text-center">
              <div class="card card-blog card-plain">
                <!-- IF {PAGE_ROW_HEAD_SCREEN_1} -->
                <div class="card-header p-0 position-relative z-index-2">
                  <a class="d-block blur-shadow-image">
                    <img src="{PAGE_ROW_HEAD_SCREEN_1}" alt="img-blur-shadow" class="img-fluid border-radius-lg">
                  </a>
                </div>
                <!-- ENDIF -->
                <div class="card-body px-0 pt-4">
				<p class="text-gradient text-primary text-gradient font-weight-bold text-sm text-uppercase">{PAGE_ROW_CATPATH_SHORT}</p>
                  <a href="{PAGE_ROW_URL}">
                    <h4> {PAGE_ROW_SHORTTITLE} </h4>
                  </a>
                  <p>
                    <!-- IF {PAGE_ROW_DESC} -->{PAGE_ROW_DESC}
                    <!-- ELSE -->{PAGE_ROW_TEXT|strip_tags|mb_substr($this,0,120)}...
                    <!-- ENDIF -->
                  </p>
                  <div class="row text-center">
                    <div class="col">
                      <img src="{PAGE_ROW_OWNER_AVATAR_SRC}" alt="..." class="avatar border-radius-lg avatar-sm shadow me-2">
                      <p class="my-auto">{PAGE_ROW_OWNER_NICKNAME}</p>
                    </div>
                    <div class="col">
                      <a class="btn bg-gradient-primary mt-3" href="{PAGE_ROW_URL}">Read more</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
			
			        <div class="card mb-5">
          <div class="card-header p-0 m-3 mt-n4 position-relative z-index-2">
            <a class="d-block blur-shadow-image">
              <img src="{PAGE_ROW_HEAD_SCREEN_1}" alt="img-blur-shadow" class="img-fluid border-radius-lg">
            </a>
          </div>
          <div class="card-body pt-2">
            <span class="text-gradient text-warning text-uppercase text-xs font-weight-bold my-2">{PAGE_ROW_CATTITLE}</span>
            <a href="{PAGE_ROW_URL}" class="h5 d-block text-dark">
              {PAGE_ROW_SHORTTITLE}
            </a>
            <p class="card-description mb-4">
              {PAGE_ROW_TEXT_CUT|strip_tags($this)}
      <!-- IF {PAGE_ROW_TEXT_IS_CUT} -->{PAGE_ROW_MORE}
      <!-- ENDIF -->
            </p>
            <div class="author align-items-center">
              <img src="{PAGE_ROW_OWNER_AVATAR_SRC}" alt="..." class="avatar shadow border-radius-lg">
              <div class="name ps-3">
                <span>{PAGE_ROW_OWNER_NICKNAME}</span>
                <div class="stats">
                  <small>{PAGE_ROW_DATE_STAMP|cot_date('date_full', $this)}</small>
                </div>
              </div>
            </div>
          </div>
        </div>