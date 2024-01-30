<!-- BEGIN: MAIN -->
<section class="py-5 bg-gray-100">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-12">
        <div class="row">
          <!-- BEGIN: LIST_ROW -->
          <div>
            <div class="col-lg-10 mx-auto text-center">
              <div class="card card-blog card-plain">
                <!-- IF {LIST_ROW_HEAD_SCREEN_1} -->
                <div class="card-header p-0 position-relative z-index-2">
                  <a class="d-block blur-shadow-image">
                    <img src="{LIST_ROW_HEAD_SCREEN_1}" alt="img-blur-shadow" class="img-fluid border-radius-lg">
                  </a>
                </div>
                <!-- ENDIF -->
                <div class="card-body px-0 pt-4">
                  <a href="{LIST_ROW_URL}">
                    <h4> {LIST_ROW_SHORTTITLE} </h4>
                  </a>
                  <p>
                    <!-- IF {LIST_ROW_DESC} -->{LIST_ROW_DESC}
                    <!-- ELSE -->{LIST_ROW_TEXT|strip_tags|mb_substr($this,0,120)}...
                    <!-- ENDIF -->
                  </p>
                  <div class="row text-center">
                    <div class="col">
                      <img src="{LIST_ROW_OWNER_AVATAR_SRC}" alt="..." class="avatar border-radius-lg avatar-sm shadow me-2">
                      <p class="my-auto">{LIST_ROW_OWNER_NICKNAME}</p>
                    </div>
                    <div class="col">
                      <a class="btn bg-gradient-primary mt-3" href="{LIST_ROW_URL}">Read more</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END: LIST_ROW -->
        </div>
      </div>
      <div class="col-lg-4 col-12">
        <div class="card">
          <div class="card-body">

              <!-- IF {PHP.usr.auth_write} -->
                <a class="btn bg-gradient-info w-100" href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">
                  <span class="">{PHP.L.page_addtitle}</span>
                </a>
              <!-- ENDIF -->

          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<div class="extensions col75 bottom list">
	<!-- IF {LIST_TOP_PAGINATION} -->
	<p class="pagination">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</p>
	<!-- ENDIF -->
</div>

<!-- END: MAIN -->
