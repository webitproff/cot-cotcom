<!-- BEGIN: MAIN -->
<div class="col-lg-6 mx-auto min-vh-35">
<div class="px-4 pt-5 my-5 text-center">
<div class="card shadow shadow-lg">
          <div class="card-header p-0 bg-transparent">
            <div class="bg-gradient-warning shadow-warning border-radius-lg p-3">
              <h5 class="mb-0 text-light ff-monts font-weight-bold">
                 {MESSAGE_TITLE}
              </h5>
            </div>
          </div>
  <div class="card-body">
    <p class="error card-text">{MESSAGE_BODY}</p>
	  <!-- BEGIN: MESSAGE_CONFIRM -->
        <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton btn btn-danger col-3 p-2" >{PHP.L.Yes}</a>
        <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton btn btn-info col-3 p-2">{PHP.L.No}</a>
		<!-- END: MESSAGE_CONFIRM -->
  </div>
</div>
</div>
</div>



<!-- END: MAIN -->
<div class="position-relative">

  <div class="position-absolute top-50 start-50 translate-middle">
  <div class="col100 top bottom">
	<h2>{MESSAGE_TITLE}</h2>
	<p class="error">{MESSAGE_BODY}</p>
	<!-- BEGIN: MESSAGE_CONFIRM -->
	<table class="inline" style="width:80%">
		<tr>
			<td>
				<a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton">{PHP.L.Yes}</a>
			</td>
			<td>
				<a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton">{PHP.L.No}</a>
			</td>
		</tr>
	</table>
					
</div>
  </div>

</div>
<div class="modal fade show" id="message-confirmBox" tabindex="-1" aria-labelledby="exampleModalCenterTitle" style="display: block;" aria-modal="true" role="dialog">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="message-confirmBox">{MESSAGE_TITLE}</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p class="error">{MESSAGE_BODY}</p>
      </div>
      <div class="modal-footer">
	  <!-- BEGIN: MESSAGE_CONFIRM -->
        <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton btn btn-secondary" data-bs-dismiss="modal">{PHP.L.Yes}</a>
        <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton btn btn-primary">{PHP.L.No}</a>
		<!-- END: MESSAGE_CONFIRM -->
      </div>
    </div>
  </div>
</div>
<div class="modal fade show" id="message-confirmBox" tabindex="-1" aria-labelledby="exampleModalCenterTitle" style="display: block;" aria-modal="true" role="dialog">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="message-confirmBox"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" data-bs-target="#message-confirmBox" aria-label="Close"></button>

      </div>
      <div class="modal-body">
        <p class="error">{MESSAGE_BODY}</p>
      </div>
      <div class="modal-footer">
	  <!-- BEGIN: MESSAGE_CONFIRM -->
        <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton btn btn-secondary" >{PHP.L.Yes}</a>
        <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton btn btn-primary">{PHP.L.No}</a>
		<!-- END: MESSAGE_CONFIRM -->
      </div>
    </div>
  </div>
</div>
message.tpl
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}