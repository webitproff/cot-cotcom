<!-- BEGIN: POLL_VIEW -->
<div id="poll_{POLL_ID}">
  <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};{PHP|cot_url('polls')};mode=ajax">
    <input type="hidden" name="poll_id" value="{POLL_ID}" />
    <div class="table-responsive">
      <table class="table align-items-center mb-0">
        <!-- BEGIN: POLLTABLE -->
        <tr>
          <td>
            <div class="form-check mb-0"> {POLL_INPUT|cot_rc_modify($this, 'class="form-check-input"')} <label class="custom-control-label">{POLL_OPTIONS}</label>
            </div>
          </td>
          <td>
            <div class="bar_outer">
              <div class="bar_inner" style="width:{POLL_PER}%;"></div>
            </div>
          </td>
          <td>{POLL_PER}%</td>
          <td>{POLL_COUNT}</td>
        </tr>
        <!-- END: POLLTABLE -->
        <tr>
          <td class="valid" colspan="4">
            <button type="submit" class="btn btn-primary" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
          </td>
        </tr>
      </table>
    </div>
    <script type="text/javascript">
      function anim() {
        $(".bar_front").each(function() {
          var percentage = $(this).width();
          if (percentage != "") {
            $(this).width(0).animate({
              width: percentage
            }, "slow");
          }
        });
      }
      anim();
    </script>
    <p class="ff-monts font-weight-bold mb-0">{PHP.L.Votes}:{POLL_VOTERS}</p>
    <p class="ff-monts font-weight-bold mb-0">{PHP.L.Date} {POLL_SINCE}</p>
  </form>
</div>
<!-- END: POLL_VIEW -->
<!-- BEGIN: POLL_VIEW_VOTED -->
<div class="table-responsive">
  <table class="table align-items-center mb-0">
    <!-- BEGIN: POLLTABLE -->
    <tr>
      <td class="w-40">{POLL_OPTIONS}</td>
      <td class="w-50">

<div class="progress-wrapper">
  <div class="progress-info">
    <div class="progress-percentage">
      <span class="text-sm font-weight-bold">{POLL_PER}%</span>
    </div>
  </div>
  <div class="progress w-100">
    <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:{POLL_PER}%;"></div>
  </div>
</div>

      </td>
      <!-- <td>{POLL_PER}%</td> -->
      <td class="w-10">{POLL_COUNT}</td>
    </tr>
    <!-- END: POLLTABLE -->
    <tr>

    </tr>
  </table>
</div>
    <div class="alert alert-secondary alert-dismissible fade show m-3" role="alert">
        <span class="alert-text text-white">{PHP.L.polls_alreadyvoted}</span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>

<p class="ff-monts font-weight-bold mb-0">{PHP.L.Votes}:{POLL_VOTERS}</p>
<p class="ff-monts font-weight-bold mb-0">{PHP.L.Date} {POLL_SINCE}</p>
<!-- END: POLL_VIEW_VOTED -->
<!-- BEGIN: POLL_VIEW_LOCKED -->
<div class="table-responsive">
  <table class="table align-items-center mb-0">
    <!-- BEGIN: POLLTABLE -->
    <tr>
      <td>{POLL_OPTIONS}</td>
      <td>
<div class="progress-wrapper">
  <div class="progress-info">
    <div class="progress-percentage">
      <span class="text-sm font-weight-bold">{POLL_PER}%</span>
    </div>
  </div>
  <div class="progress">
    <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:{POLL_PER}%;"></div>
  </div>
</div>
      </td>
      <td>{POLL_PER}%</td>
      <td>{POLL_COUNT}</td>
    </tr>
    <!-- END: POLLTABLE -->
    <tr>
      <td class="strong valid" colspan="4">{PHP.L.polls_locked}</td>
    </tr>
  </table>
</div>
<p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
<!-- END: POLL_VIEW_LOCKED -->
<!-- BEGIN: POLL_VIEW_DISABLED -->
<div class="table-responsive">
  <table class="table align-items-center mb-0">
    <!-- BEGIN: POLLTABLE -->
    <tr>
      <td>{POLL_OPTIONS}</td>
    </tr>
    <!-- END: POLLTABLE -->
    <tr>
      <td>{PHP.L.rat_registeredonly}</td>
    </tr>
  </table>
</div>
<!-- END: POLL_VIEW_DISABLED -->
<!-- BEGIN: MAIN -->
<section class="bg-gray-200">
  <div class="min-vh-75">
    <div class="container  py-6 mt-2">

	  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
      <!-- BEGIN: POLLS_VIEW -->
      <nav aria-label="breadcrumb" class="d-none d-lg-block mb-5">
        <ol class="breadcrumb">
          <li class="breadcrumb-item text-dark opacity-5">
            <a href="{PHP|cot_url('index')}">{PHP.L.Home}</a>
          </li>
          <li class="breadcrumb-item text-dark active" aria-current="page">{POLLS_TITLE}</li>
        </ol>
      </nav> 
      <div class="card shadow-lg mb-3">
        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
          <div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
            <h3 class="mb-0 ff-monts text-white">{PHP.L.poll}</h3>
          </div>
        </div>
        <div class="card-body p-3">
          <h6 class="mb-0 pt-3 ff-monts text-dark-cot">{POLLS_TITLE}</h6>
          <div class="pt-3"> {POLLS_FORM} </div>
        </div>
      </div>
      <!-- {PHP.L.comments_comments}: {POLLS_COMMENTS}{POLLS_COMMENTS_DISPLAY} -->
      <!-- END: POLLS_VIEW -->
      <!-- BEGIN: POLLS_VIEWALL -->
      <nav aria-label="breadcrumb" class="d-none d-lg-block mb-5">
        <ol class="breadcrumb">
          <li class="breadcrumb-item text-dark opacity-5">
            <a href="{PHP|cot_url('index')}">{PHP.L.Home}</a>
          </li>
          <li class="breadcrumb-item text-dark active" aria-current="page">{PHP.L.polls_viewarchives}</li>
        </ol>
      </nav> 
      <div class="card shadow-lg mb-3">
        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
          <div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
            <h3 class="mb-0 ff-monts text-white">{PHP.L.polls_viewarchives}</h3>
          </div>
        </div>
        <div class="card-body p-3">
      <div class="table-responsive">
        <table class="table align-items-center mb-0">
          <!-- BEGIN: POLL_ROW -->
          <tr>
            <td>{POLL_DATE}</td>
            <td>
              <a href="{POLL_HREF}">{POLL_TEXT}</a>
            </td>
            <td>{POLLS_COMMENTS}</td>
          </tr>
          <!-- END: POLL_ROW -->
          <!-- BEGIN: POLL_NONE -->
          <tr>
            <td>{PHP.L.None}</td>
          </tr>
          <!-- END: POLL_NONE -->
        </table>
      </div>
        </div>
      </div>


      <!-- END: POLLS_VIEWALL -->
    </div>
  </div>
</section>
<!-- END: MAIN -->