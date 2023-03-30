<!-- BEGIN: MAIN -->

<div class="container-xxl mb-4 mt-4">

		<a class="btn btn-outline-secondary" href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow">{PHP.L.forums_newtopic}</a>
		<!-- BEGIN: FORUMS_SECTIONS_POLLS -->
		<a class="btn btn-outline-secondary" href="{FORUMS_TOPICS_NEWPOLLURL}" rel="nofollow">{PHP.L.forums_newpoll}</a>
		<!-- END: FORUMS_SECTIONS_POLLS -->
		<a class="btn btn-outline-secondary" href="{PHP.s|cot_url('rss','c=section&id=$this')}">RSS</a>

	<h2>{FORUMS_TOPICS_PAGETITLE}</h2>
	<!-- BEGIN: FORUMS_SECTIONS -->
	<table class="subforums">
		<thead>
			<tr>
				<th colspan="2">{PHP.L.Subforums}</th>
				<th class="center" style="width:10%;">{PHP.L.Topics}</th>
				<th class="center" style="width:10%;">{PHP.L.Posts}</th>
				<th style="width:25%;">{PHP.L.Lastpost}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION -->
			<tr class="{FORUMS_SECTIONS_ROW_ODDEVEN}">
				<td class="center" style="width:6%;"><img src="{PHP.cfg.themes_dir}/cotcom/img/folder.png" alt="" /></td>
				<td>
					<h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
					<span class="desc">{FORUMS_SECTIONS_ROW_DESC}</span>
					<ul class="subforums">
						<!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION_SLAVES -->
						<li>{FORUMS_SECTIONS_ROW_SLAVE}</li>
						<!-- END: FORUMS_SECTIONS_ROW_SECTION_SLAVES -->
					</ul>
				</td>
				<td class="center">{FORUMS_SECTIONS_ROW_TOPICCOUNT}</td>
				<td class="center">{FORUMS_SECTIONS_ROW_POSTCOUNT}</td>
				<td class="lastpost">
					<strong>{FORUMS_SECTIONS_ROW_LASTPOST}</strong><br />
					{PHP.L.forums.Posted}: {FORUMS_SECTIONS_ROW_TIMEAGO} {PHP.L.ago} {PHP.L.by} {FORUMS_SECTIONS_ROW_LASTPOSTER}
				</td>
			</tr>
			<!-- END: FORUMS_SECTIONS_ROW_SECTION -->
		</tbody>
	</table>
	<!-- END: FORUMS_SECTIONS -->

	<table class="forums">
		<thead>
			<tr>
				<th colspan="2">{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</th>
				<th></th>
				<th class="center" style="width:10%;">{FORUMS_TOPICS_TITLE_POSTS}</th>
				<th class="center" style="width:10%;">{FORUMS_TOPICS_TITLE_VIEWS}</th>
				<th style="width:25%;">{FORUMS_TOPICS_TITLE_LASTPOST}</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: FORUMS_TOPICS_ROW -->
			<tr class="{FORUMS_TOPICS_ROW_ODDEVEN}">
				<td class="center" style="width:5%;">{FORUMS_TOPICS_ROW_ICON}</td>
				<td>
					<h4><a href="{FORUMS_TOPICS_ROW_URL}">{FORUMS_TOPICS_ROW_TITLE}</a></h4>
					<!-- IF {FORUMS_TOPICS_ROW_DESC} --><span class="desc">{FORUMS_TOPICS_ROW_DESC}</span><br/><!-- ENDIF -->
					<span>{FORUMS_TOPICS_ROW_CREATIONDATE}: {FORUMS_TOPICS_ROW_FIRSTPOSTER} &nbsp; </span>
				</td>
				<td class="pages">{FORUMS_TOPICS_ROW_PAGES}</td>
				<td class="center">{FORUMS_TOPICS_ROW_POSTCOUNT}</td>
				<td class="center">{FORUMS_TOPICS_ROW_VIEWCOUNT}</td>
				<td class="lastpost">
					{FORUMS_TOPICS_ROW_TIMEAGO} {PHP.L.ago} {PHP.L.by} {FORUMS_TOPICS_ROW_LASTPOSTER}
				</td>
			</tr>
			<!-- END: FORUMS_TOPICS_ROW -->
		</tbody>
	</table>

  <a name="bottom"></a>
	<p class="pagination clearfix">{FORUMS_TOPICS_PAGEPREV}{FORUMS_TOPICS_PAGES}{FORUMS_TOPICS_PAGENEXT}</p>

	<h2>{PHP.L.Information}</h2>
	<table class="legend">
		<tr>
			<td>{PHP.R.forums_icon_posts} {PHP.L.forums_nonewposts}</td>
			<td>{PHP.R.forums_icon_posts_new} {PHP.L.forums_newposts}</td>
			<td>{PHP.R.forums_icon_posts_hot} {PHP.L.forums_nonewpostspopular}</td>
			<td>{PHP.R.forums_icon_posts_new_hot} {PHP.L.forums_newpostspopular}</td>
		</tr>
		<tr>
			<td>{PHP.R.forums_icon_posts_sticky} {PHP.L.forums_sticky}</td>
			<td>{PHP.R.forums_icon_posts_new_sticky} {PHP.L.forums_newpostssticky}</td>
			<td>{PHP.R.forums_icon_posts_locked} {PHP.L.forums_locked}</td>
			<td>{PHP.R.forums_icon_posts_new_locked} {PHP.L.forums_newpostslocked}</td>
		</tr>
		<tr>
			<td>{PHP.R.forums_icon_posts_sticky_locked} {PHP.L.forums_announcment}</td>
			<td>{PHP.R.forums_icon_posts_new_sticky_locked} {PHP.L.forums_newannouncment}</td>
			<td>{PHP.R.forums_icon_posts_moved} {PHP.L.forums_movedoutofthissection}</td>
			<td></td>
		</tr>
	</table>
</div>
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/skininfo.tpl"}
<!-- END: MAIN -->
