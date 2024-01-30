<!-- BEGIN: MAIN -->
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>{MESSAGE_TITLE}</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="generator" content="Cotonti http://www.cotonti.com" />
    <link href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/assets/css/mkp.min.css" type="text/css" rel="stylesheet" />
	<link href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/css/cot-style.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/css/404-style.css">
	{MESSAGE_BASEHREF} {MESSAGE_STYLESHEET} {MESSAGE_REDIRECT}
  </head>
  <body>

    <div class=""> 
<div class="bubble"></div>
<div class="bubble"></div>
<div class="bubble"></div>
<div class="bubble"></div>
<div class="bubble"></div>
    <div id="main" class="main">
      <div class="container-fluid">
        <div class="align-self-center">
          <div class="alert alert-warning p-3" role="alert">
            <h1 class="display-4 text-dark-cot fw-bold">{MESSAGE_TITLE}</h1>
            <div class="warning">
			<p class="lead text-dark mb-4 ff-monts fw-normal">{MESSAGE_BODY} </p>
			</div>
    <div class="col-lg-6 mx-auto">

      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5 mt-5">
        <a href="{PHP|cot_url('index')}" class="btn bg-success bg-gradient-success btn-lg px-4 me-sm-3">{PHP.L.Home}</a>
        <a href="{PHP|cot_url('find')}" class="btn btn-info bg-gradient-info btn-lg px-4">{PHP.L.Search}</a>
      </div>
    </div>
          </div>
        </div>
      </div>
    </div>
	</div>
  </body>
</html>
<!-- END: MAIN -->