<!-- BEGIN: MAIN -->

<div class="col100 top bottom">
  <!-- BEGIN: COMMENTS_TITLE -->
  <h2><a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a></h2>
  <!-- END: COMMENTS_TITLE -->

  {FILE "{PHP.cfg.themes_dir}/cotcom/warnings.tpl"}

  <!-- BEGIN: COMMENTS_FORM_EDIT -->
  <div>
	  <form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
	  <table>
	  <tr>
		  <td class="width30"><strong>{COMMENTS_POSTER_TITLE}:</strong></td>
		  <td class="width30">{COMMENTS_POSTER}</td>
	  </tr>
	  <tr>
		  <td><b>{COMMENTS_IP_TITLE}:</b></td>
		  <td>{COMMENTS_IP}</td>
	  </tr>
	  <tr>
		  <td><b>{COMMENTS_DATE_TITLE}:</b></td>
		  <td>{COMMENTS_DATE}</td>
	  </tr>
	  <tr>
		  <td colspan="2">{COMMENTS_FORM_TEXT}</td>
	  </tr>
	  <tr>
		  <td colspan="2" class="valid">
			  <div align="center">
				  <button type="submit">{COMMENTS_FORM_UPDATE_BUTTON}</button>
			  </div>
		  </td>
	  </tr>
	  </table>
	  </form>
  </div>
  <!-- END: COMMENTS_FORM_EDIT -->
  </div>

<!-- END: MAIN -->

<!-- BEGIN: COMMENTS -->
<hr/>

<a name="comments"></a>

<div <!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display:none;"<!-- ENDIF -->>

<!-- BEGIN: COMMENTS_ROW -->
<div class="comment">
	<ins class="triangle"></ins>
	<small class="left">
		<a href="{COMMENTS_ROW_URL}" id="c{COMMENTS_ROW_ID}">{COMMENTS_ROW_ORDER}</a>.
		<strong>{COMMENTS_ROW_AUTHOR}</strong>&nbsp;&nbsp;{COMMENTS_ROW_DATE}
	</small>
	<small class="right">{COMMENTS_ROW_EDIT} {COMMENTS_ROW_ADMIN}</small>
	<div class="clearfix comm_block">
		<div class="comm_userinfo">
						<!-- IF {COMMENTS_ROW_AUTHOR_AVATAR_SRC} -->
						<img class="comm_avatar border border-warning rounded-circle" width="75" height="75" alt="{COMMENTS_ROW_AUTHOR_AVATAR_NICKNAME}" src="{COMMENTS_ROW_AUTHOR_AVATAR_SRC}" alt="{PHP.row.com_author}">
						<!-- ELSE -->
						<img class="comm_avatar border border-warning rounded-circle" width="75" height="75" alt="{COMMENTS_ROW_AUTHOR_AVATAR_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png" alt="{PHP.row.com_author}">
						<!-- ENDIF -->

			<!-- IF {COMMENTS_ROW_AUTHOR_THANKS} > 0 -->
			<p>
			<a href="{COMMENTS_ROW_AUTHOR_HANKS_URL}" title="{PHP.L.thanks_for_user}">{PHP.L.thanks_thanked}: {COMMENTS_ROW_AUTHOR_THANKS} {COMMENTS_ROW_AUTHOR_THANKS_TIMES}</a>
			</p>
			<!-- ENDIF -->

			<!-- IF {COMMENTS_ROW_THANK_CAN} -->
				<p>{COMMENTS_ROW_THANK_LINK}</p>
			<!-- ENDIF -->
		</div>
		<div class="comm_textblock">
			<div class="comm_text">{COMMENTS_ROW_TEXT}</div>
		</div>
	</div>
</div>
<!-- END: COMMENTS_ROW -->

<!-- BEGIN: PAGNAVIGATOR -->
<p class="pagination">{COMMENTS_PAGES_INFO} {COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</p>
<!-- END: PAGNAVIGATOR -->

<!-- BEGIN: COMMENTS_NEWCOMMENT -->
<div class="clear">
	<h3>{PHP.L.Newcomment}</h3>
	<form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment">
		<div>{COMMENTS_FORM_TEXT}</div>
		<div><button type="submit">{PHP.L.Submit}</button> <small>{COMMENTS_FORM_HINT}</small></div>
	</form>
</div>
<!-- END: COMMENTS_NEWCOMMENT -->

<!-- BEGIN: COMMENTS_EMPTY -->
<div class="notice">{COMMENTS_EMPTYTEXT}</div>
<!-- END: COMMENTS_EMPTY -->

<!-- BEGIN: COMMENTS_ERROR -->
<div class="error">{COMMENTS_ERROR_BODY}</div>
<!-- END: COMMENTS_ERROR -->

<!-- BEGIN: COMMENTS_CLOSED -->
<div class="error">{COMMENTS_CLOSED}</div>
<!-- END: COMMENTS_CLOSED -->

</div>

<!-- END: COMMENTS -->