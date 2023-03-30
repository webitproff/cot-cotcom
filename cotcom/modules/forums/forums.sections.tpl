<!-- BEGIN: MAIN -->
<section class="py-3 bg-gray-200">
  <div class="container-xxl">
    <div class="row g-3 mb-3">
      <div class="col-lg-4 col-md-6 col-sm-12">
        <h2>{FORUMS_SECTIONS_PAGETITLE}</h2>
      </div>
      <div class="col-lg-8 col-md-6 col-sm-12">
        <div class="d-flex justify-content-end">
          <div class="row py-3">
            <div class="mx-2">
              <!-- <a href="{PHP|cot_url('forums','c=fold')}#top" rel="nofollow"><span class="badge  bg-gradient-info w-auto">{PHP.L.forums_foldall}</span></a> -->
              <!-- <a href="{PHP|cot_url('forums','c=unfold')}#top" rel="nofollow"><span class="badge  bg-gradient-info w-auto">{PHP.L.forums_unfoldall}</span></a> -->
              <a href="{PHP|cot_url('find','a=forums')}">
                <span class="badge  bg-gradient-info w-auto">{PHP.L.forums_searchinforums}</span>
              </a>
              <a href="{PHP|cot_url('forums','n=markall')}" rel="nofollow">
                <span class="badge  bg-gradient-info w-auto">{PHP.L.forums_markasread}</span>
              </a>
              <a href="{PHP|cot_url('rss','c=forums')}">
                <span class="badge  bg-gradient-info w-auto">RSS</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="container-xxl px-2 px-sm-2 px-lg-auto min-vh-50">
    <!-- BEGIN: FORUMS_SECTIONS -->
    <!-- BEGIN: CAT -->
    <div class="card mb-4">
      <div class="table-responsive pb-3 z-index-2 border-radius-lg position-relative overflow-hidden">
        <table class="table table-hover align-items-center mb-0">
          <thead class="bg-gradient-info" id="{FORUMS_SECTIONS_ROW_CAT}">
            <tr>
              <th class=""></th>
              <th>
                <a class="text-uppercase text-white ff-monts text-md font-weight-bolder" href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')">{FORUMS_SECTIONS_ROW_TITLE}</a>
              </th>
              <th class="text-uppercase text-white ff-monts text-xs font-weight-bolder">{PHP.L.forums_topics} </td>
              <th class="text-uppercase text-white ff-monts text-xs font-weight-bolder">{PHP.L.forums_posts} </td>
              <th class="text-uppercase text-white ff-monts text-xs font-weight-bolder">{PHP.L.Lastpost} </td>
            </tr>
          </thead>
          <tbody id="blk_{FORUMS_SECTIONS_ROW_CAT}" <!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> class="hidden"
            <!-- ENDIF -->>
            <!-- BEGIN: SECTION -->
            <tr class="{FORUMS_SECTIONS_ROW_ODDEVEN}">
              <td class="w-5 align-middle text-center text-sm">
                <!-- IF {FORUMS_SECTIONS_ROW_ACTIVITY} -->{FORUMS_SECTIONS_ROW_ACTIVITY}
                <!-- ENDIF -->
              </td>
              <td class="w-60">
                <a class="ff-monts text-md text-uppercase font-weight-bolder" href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a>
                <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                <p class="text-xs text-secondary mb-0 text-wrap">{FORUMS_SECTIONS_ROW_DESC}</p>
                <!-- ENDIF -->
                <ul class="subforums">
                  <!-- BEGIN: SUBSECTION -->
                  <li>
                    <a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a>
                  </li>
                  <!-- END: SUBSECTION -->
                </ul>
              </td>
              <td class="w-5 align-middle text-center text-sm">{FORUMS_SECTIONS_ROW_TOPICCOUNT}</td>
              <td class="w-5 align-middle text-center text-sm">{FORUMS_SECTIONS_ROW_POSTCOUNT}</td>
              <td class="w-25 align-middle text-sm text-wrap"> {FORUMS_SECTIONS_ROW_LASTPOST} <br /> {FORUMS_SECTIONS_ROW_LASTPOSTDATE} {FORUMS_SECTIONS_ROW_LASTPOSTER} </td>
            </tr>
            <!-- END: SECTION -->
          </tbody>
        </table>
      </div>
    </div>
    <!-- END: CAT -->
    <!-- END: FORUMS_SECTIONS -->
  </div>
</section>
<!-- END: MAIN -->