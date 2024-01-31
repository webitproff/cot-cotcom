<?php
/**
 * JavaScript and CSS loader
 */

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


defined('COT_CODE') or die('Wrong URL.');

//cot_rc_add_file($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/css/uikit.min.css');

cot_rc_add_file($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/bootstrap/css/bootstrap.min.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/css/mkp.min.css');

cot_rc_add_file($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/css/cot-style.css');
//cot_rc_add_file($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/styles/default.css');
//cot_rc_add_file($cfg['themes_dir'].'/cotcom/js/jquery.cotcom.js');

  
cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/core/bootstrap.bundle.min.js');

//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/core/uikit.min.js');
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/core/uikit-icons.min.js');
 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/anime.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/chartjs.min.js'); 
cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/choices.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/countup.min.js');
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/flatpickr.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/glide.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/highlight.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/nouislider.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/parallax.min.js'); 
cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/perfect-scrollbar.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/photoswipe-ui-default.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/photoswipe.min.js');
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/prism.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/rellax.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/round-slider.min.js'); 
cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/smooth-scroll.polyfills.min.js'); 
//cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/tilt.min.js'); 
cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/plugins/typedjs.js'); 
cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/assets/js/mkp.min.js'); /* после bootstrap и плагинов  */
cot_rc_link_footer($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/js/cot-script.js'); /* после mkp.min.js */

// loading necessary styles for CKEditor instance
$ckeditor_css_to_load = array(
	$cfg['themes_dir'].'/cotcom/css/reset.css',
	$cfg['themes_dir'].'/cotcom/css/default.css',
);
require_once cot_rc($cfg['themes_dir'].'/'.$cfg['defaulttheme'].'/'.$cfg['defaulttheme'].'.resources.php');
