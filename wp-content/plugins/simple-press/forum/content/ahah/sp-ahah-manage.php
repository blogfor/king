<?php
/*
Simple:Press
general ahah routines
$LastChangedDate: 2015-08-12 07:21:39 -0700 (Wed, 12 Aug 2015) $
$Rev: 13286 $
*/

if (preg_match('#'.basename(__FILE__).'#', $_SERVER['PHP_SELF'])) die('Access denied - you cannot directly call this file');

sp_forum_api_support();

# get out of here if no action specified
if (empty($_GET['action'])) die();
$action = sp_esc_str($_GET['action']);

if ($action == 'page-popup') {
    sp_text('Jump to page:');

    $permalink = trailingslashit(sp_esc_str($_GET['url']));
    $max = sp_esc_str($_GET['max']);

	$out = '<div id="spMainContainer">';
	$out.= '<form action="'.sp_url().'" method="post" id ="pagejump" name="pagejump">'."\n";
	$out.= '<input type="hidden" id="url" name="url" value="'.$permalink.'" />'."\n";
	$out.= '<input type="hidden" id="max" name="max" value="'.$max.'" />'."\n";
    $out.= '<label>'.sp_text('Enter page you want to go to:').'</label>';
	$out.= '<input class="spSubmit" type="text" id="page" name="page" value="" />'."\n";
	$out.= '<div style="text-align:center"><p><input type="submit" class="spButton" name="pagejump" value="'.sp_text('Go').'" onclick="spjPageJump(); return false;" /></p></div>';
	$out.= '</form></div>'."\n";
    echo apply_filters('sph_jump_page', $out);
}

die();
?>