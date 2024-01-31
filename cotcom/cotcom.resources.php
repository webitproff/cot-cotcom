<?php
/**
 * Cotonti Model Theme
 *
 * @package Cotcom
 * @version 1.0.0
 * @author webitproff
 * @copyright Copyright (c) 2022-2024 Cotonti Team, webitproff
 * @license BSD
 */

/**
 * @github public Repository https://github.com/webitproff/cot-cotcom
 * Self-Support and topic of discussion this template on the forum: https://abuyfile.com/forums/cotonti/original/skins/tpl-free/topic25
 */

$R['code_title_page_num'] = ' (' . cot::$L['Page'] . ' {$num})';
$R['link_pagenav_current'] = '<li class="page-item active"><a class="page-link link-white" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>'.cot::$L['pagenav_first'].'</a></li>';
$R['link_pagenav_gap'] = '<li class="page-item disabled"><a class="page-link" href="javascript:void();">...</a></li>';
$R['link_pagenav_last'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>'.cot::$L['pagenav_last'].'</a></li>';
$R['link_pagenav_main'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>'.cot::$L['pagenav_next'].'</a></li>';
$R['link_pagenav_prev'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>'.cot::$L['pagenav_prev'].'</a></li>';
$R['input_checkbox'] = '
<div class="form-check">
<input type="hidden" name="{$name}" value="{$value_off}" />
  <input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs}>
  <label class="custom-control-label">{$title}</label>
</div>
';
$R['input_check'] = '
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs}>
  <label class="custom-control-label">{$title}</label>
</div>';
$R['input_default'] = '<input class="border border-ligh form-control form-control-lg px-2 col-12" type="{$type}" name="{$name}" value="{$value}"{$attrs} />{$error}';
/* $R['input_radio'] = '<div class="form-check">
<input class="form-check-input" type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} /><label class="form-check-label">{$title}</label></div>'; */
$R['input_radio_separator'] = ' ';
$R['input_select'] = '<select class="border border-ligh form-control form-control-lg px-2 col-12" name="{$name}" {$attrs}> {$options}</select>{$error}';
$R['input_select_ruserbirthdate'] = '<select class="form-select bg-light-cot col-12" name="{$name}" {$attrs}> {$options}</select>{$error}';
$R['input_select_option'] = '<option value="{$value}"{$selected}>{$title}</option>';
$R['input_submit'] = '<button class="btn bg-gradient-primary w-100" type="submit" name="{$name}" {$attrs}>{$value}</button>';
$R['input_file'] = '<label class="file"><input type="file" name="{$name}" value="{$value}" {$attrs} /><span class="file-custom"></span></label>{$error}';
$R['input_text'] = '<input class="border border-ligh form-control form-control-lg px-2 col-12" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_textarea'] = '<textarea class="border border-ligh form-control form-control-lg px-2 col-12" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_editor'] =  '<textarea class="editor w-100 border-radius-lg" name="{$name}" rows="{$rows}" {$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_medieditor'] =  '<textarea class="medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_minieditor'] =  '<textarea class="minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';

$R['input_date'] =  '<div class="row g-3">
  <div class="col-12 col-sm-2"><label class="form-label">'.cot::$L['date_number'].'</label>{$day}</div>
  <div class="col-12 col-sm-3"><label class="form-label">'.cot::$L['date_month'].'</label>{$month}</div>
  <div class="col-12 col-sm-2"><label class="form-label">'.cot::$L['date_year'].'</label>{$year}</div>
  <div class="col-sm-2"><label class="form-label">'.cot::$L['time_hour'].'</label>{$hour}</div>
  <div class="col-sm-2"><label class="form-label">'.cot::$L['time_minute'].'</label>{$minute}</div>
</div>';

$R['input_date_short'] =  '<div class="row g-3"><div class="col-12 col-sm-4">{$day}</div><div class="col-12 col-sm-4">{$month}</div><div class="col-12 col-sm-4">{$year}</div></div>';


function ul_transform($code) {
    $code = str_replace("<a", "<li><a", $code);
    $code = str_replace("</a>", "</a></li>", $code);
    $code = str_replace("<span", "<li><span", $code);
    $code = str_replace("</span>", "</span></li>", $code);
    $code = str_replace("</li>  /", "</li>", $code);
    return $code;
}

