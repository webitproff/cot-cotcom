<?php
/* ====================
[BEGIN_COT_THEME]
Name=Cotcom by webitproff
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Cotonti official theme
 *
 * @package Cotonti
 * @version 1.1.0
 * @author Koradhil / Stam
 * @copyright Cotonti Team
 */

defined('COT_CODE') or die('Wrong URL');

global $theme_reload, $cfg, $L, $Ls, $R;

if (empty(cot::$L['comments_comments'])) {
    require_once cot_langfile('comments', 'plug');
}
if (empty(cot::$L['forums_topicoptions'])) {
    require_once cot_langfile('forums', 'module');
}
if (empty(cot::$L['pm_sendnew'])) {
    require_once cot_langfile('pm', 'module');
}

$R['l10n_state_class'] = array('info','info', 'info', 'info', 'warning', 'warning', 'danger','danger','danger','info','warning');

/* autotoc plugin */
$R['autotoc_anchor'] = '<{$elem}{$attr}><a class="{$class}" href="{$url}" name="{$prefix}{$number}" id="{$prefix}{$number}">#</a>{$number}. {$title}</{$elem}>';
$R['autotoc_item'] = '<li><a class="atoc_item" href="{$url}" title="{$title_safe}">{$number}. {$title}</a>{$sublist}</li>';
$R['autotoc_list'] = '<ol style="list-style:none;" class="page_summary">{$toc_list}</ol>';

$R['icon_down'] = '<img class="icon" src="'.$cfg['themes_dir'].'/cotcom/img/arrow-down.png" alt="" />';
$R['icon_right'] = '<img class="icon" src="'.$cfg['themes_dir'].'/cotcom/img/arrow-right.png" alt="" />';
$R['icon_left'] = '<img class="icon" src="'.$cfg['themes_dir'].'/cotcom/img/arrow-left.png" alt="" />';
$R['icon_up'] = '<img class="icon" src="'.$cfg['themes_dir'].'/cotcom/img/arrow-up.png" alt="" />';

$R['userimg_existing'] = '<div class="text-center"><img class="img-fluid mb-3 img border-radius-lg" src="{$url_file}" alt="" /><br><a class="btn btn-danger" href="{$url_delete}">' . cot::$L['Delete'].'</a></div>';
$R['userimg_selectfile'] = '{$form_input}';
$R['userimg_default_avatar'] = $cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/img/avatar.png';
$R['userimg_img_avatar'] = '{$src}';
$R['userimg_img_photo'] = '{$src}';
$R['userimg_img'] = '{$src}';

$R['comments_link'] = '<a href="{$url}" class="comments_link">{$count} '.cot::$L['comments_comments'].'</a>';

$R['tags_link_tag'] = '<a class="tag" href="{$url}" title="{$tag_title}" rel="nofollow tag">{$tag_title}</a>';

$R['forums_icon_section_activity'] = '<img class="icon" src="' . cot::$cfg['themes_dir'] . '/cotcom/img/activity{$secact_num}.png" alt="' . cot::$L['forums_activity'] . ' {$secact_num}" />';
$R['forums_code_adminoptions'] = '<div id="topicoptions">' . cot::$L['forums_topicoptions'] . ':
	<a href="{$bump_url}">' . cot::$L['forums_bump'] . '</a>
	<a href="{$lock_url}">' . cot::$L['Lock'].'</a>
	<a href="{$sticky_url}">' . cot::$L['forums_makesticky'] . '</a>
	<a href="{$announce_url}">' . cot::$L['forums_announcment'] . '</a>
	<a href="{$private_url}">' . cot::$L['forums_private'] . ' (#)</a>
	<a href="{$clear_url}">' . cot::$L['Default'].'</a>
	<a href="{$delete_url}">' . cot::$L['Delete'].'</a>
	<a id="movetopic">' . cot::$L['Move'].'</a><form action="{$move_url}" method="post"><div id="movetopic">' . cot::$L['forums']['MoveTopic'].'<br/>{$movebox_select} <button type="submit">' . cot::$L['Move'].'</button><br/>{$movebox_keep} ' . cot::$L['forums_keepmovedlink'].'</div></form></div>';
$R['forums_rowquote'] = '<a href="{$url}" class="my-auto m-1 badge bg-gradient-warning ff-monts text-white text-xs">' . cot::$L['Quote'] . '</a>';
$R['forums_rowedit'] = '<a href="{$url}" class="my-auto m-1 badge bg-light ff-monts text-dark-cot text-xs">' . cot::$L['Edit'] . '</a>';
$R['forums_rowdelete'] = '<a href="{$url}" class="confirmLink my-auto m-1 badge bg-gradient-secondary ff-monts text-white text-xs">' . cot::$L['Delete'] . '</a>';
$R['forums_code_bottom'] = '<a name="bottom" id="bottom"></a>';
//$R['forums_rowquote'] = '<a href="{$url}" class="postquote">' . cot::$L['Quote'].'</a>';
$R['forums_code_quote'] = '<blockquote class="fp"><a href="{$url}">#{$id}</a> <strong>{$postername}: </strong><br />{$text}</blockquote><p>&nbsp;</p>';
$R['forums_code_update'] = '<p class="updated"><strong>{$updated}</strong></p>';
/* Private Message Icons */

//$R['pm_icon'] = '<span class="fs-4 text-success ms-2"><i class="fa-regular fa-envelope"></i></span>';
$R['pm_icon_new'] =
	'<span class="fs-4 text-danger ms-2" title="'.cot::$L['pm_unread'].'" data-bs-toggle="tooltip" data-bs-title="'.cot::$L['pm_unread'].'"><i class="fa-solid fa-square-envelope"></i></span>';
$R['pm_icon_archive'] = '<img class="icon" src="images/icons/default/pm-archive.png" alt="' . cot::$L['pm_putinarchives'].'" />';
$R['pm_icon_trashcan'] = '<span class="text-danger fs-5 mb-0" title="' . cot::$L['Delete'].'" data-bs-toggle="tooltip" data-bs-title="' . cot::$L['Delete'] . '"><i class="fa-solid fa-trash-can mx-2"></i></span>';
$R['pm_icon_edit'] = '<span class="text-success fs-5 mb-0" title="' . cot::$L['Edit'].'" alt="' . cot::$L['Edit'].'" data-bs-toggle="tooltip" data-bs-title="' . cot::$L['Edit'].'"><i class="fa-solid fa-user-pen mx-2"></i></span>';
/* Private Message Icons */
$R['notices_container'] = '<span class="dropdown"></span><ul class="list-unstyled">{$notices}</ul>';
$R['notices_separator'] = '';
$R['notices_link'] = '<a  class="dropdown-item" href="{$url}" title="{$title}">{$title}</a>';
$R['notices_plain'] = '{$title}';
$R['notices_notice'] = '<li class="item">{$notice}</li>';
$R['users_code_grplist_begin'] = '<div class="list-group list-group-flush bg-transparent">';
$R['users_code_grplist_end'] = '</div>';
$R['users_code_grplist_item'] = '<div class="list-group-item form-check">{$item}</div>';
$R['users_code_grplist_item_main'] = '<div class="list-group-item form-check"><strong>{$item}</strong></div>';
$R['users_input_grplist_checkbox'] = '<label class="me-2"><input type="checkbox" class="form-check-input" name="{$name}" value="1"{$checked}{$attrs} /></label>';
$R['users_input_grplist_radio'] = '<label class="me-2"><input type="radio" class="form-check-input" name="{$name}" value="{$value}"{$checked}{$attrs} /></label>';
$R['input_check'] = '
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs}>
  <label class="custom-control-label">{$title}</label>
</div>';
$R['input_radio'] = '<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} /><label class="form-check-label">{$title}</label></div>';
$R['list_more'] ='<a class="text-info text-md text-uppercase font-weight-bolder icon-move-right" href="{$page_url}" title="' . cot::$L['ReadMore'].'">' . cot::$L['ReadMore'].'<i class="fas fa-arrow-right text-xs ms-1"></i></a>';
$R['input_text_rtags'] = '<input class="form-control form-control-lg col-12" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_text'] = '<input class="border border-light form-control form-control-lg px-2 col-12" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';

header("X-UA-Compatible: IE=edge,chrome=1");
