<?php
/*
Simple:Press
Admin Integration Storage Locations Form
$LastChangedDate: 2014-06-21 04:47:00 +0100 (Sat, 21 Jun 2014) $
$Rev: 11582 $
*/

if (preg_match('#'.basename(__FILE__).'#', $_SERVER['PHP_SELF'])) die('Access denied - you cannot directly call this file');

function spa_integration_language_form() {
	include_once SF_PLUGIN_DIR.'/admin/library/sp-languages.php';
	global $siteLang, $locale;

	$spCode = '';

	# Get language setting and see if on glotpress
	$locale = get_locale();
	if(!empty($locale)) {
		foreach($langSets as $lKey => $wpData) {
			if($locale == $wpData['wpCode']) {
				$siteLang = $wpData['wpCode'];
				$spCode = $lKey;
				break;
			}
		}
	}

	if($siteLang=='en_US' || $siteLang=='en-US') {
		echo '<br /><div class="sfoptionerror">';
		spa_etext('Your site language setting is English/USA and therefore no translation files are required for Simple:Press');
		echo '</div>';
		return;
	}
	# check we can download
	if (ini_get('allow_url_fopen') == false) {
		echo '<br /><div class="sfoptionerror">';
		spa_etext('Your server will not allow us to download the language files from Simple:Press');
		echo '</div>';
		return;
	}

	$userLang = array();
	$userLang['spLang'] = $siteLang;
	$userLang['spCode'] = $spCode;

	$formLang = '';
	$displayLang = '';

	spa_paint_open_tab(spa_text('Integration').' - '.spa_text('Language Settings'));
		spa_paint_open_panel();
			spa_paint_open_fieldset(spa_text('Language'), true, 'language-select');

				if(!empty($userLang) && array_key_exists($userLang['spCode'], $langSets)) {
					$formLang = $userLang['spLang'];
				} elseif (array_key_exists($siteLang, $langSets)) {
					$formLang = $siteLang;
				}

				if(!empty($formLang)) {
					foreach($langSets as $lKey => $wpData) {
						if($formLang == $wpData['wpCode']) $displayLang = $wpData['langName'];
					}
				}
				if(empty($formLang)) {
					$link = '<a href="http://simple-press.com/documentation/codex/installation/installation-information/localization/" target="blank">'.spa_text('This Codex Page').'</a>';
					echo '<br /><div class="sfoptionerror">';
					spa_etext('Your WordPress site language setting has not been recognised by Simple:Press');
					echo '<br /><br />'.sprintf(spa_text('Please see %s for manual install instructions'), $link);
					echo '</div>';
				} else {
					echo '<br /><div class="sfoptionerror">';
					echo spa_text('Your site language is set to').' <b>'.$formLang.' - '.$displayLang.'</b>';
					echo '</div>';
				}

			spa_paint_close_fieldset();
		spa_paint_close_panel();

		spa_paint_close_container();
		echo '<div class="sfform-panel-spacer"></div>';

	spa_paint_close_tab();

	echo '<div class="sfform-panel-spacer"></div>';

	# Now stop if we still do not know the language
	if(empty($userLang['spLang'])) return;

	# load up the XML file
	$c = wp_remote_get('http://simple-press.com/downloads/simple-press/simple-press.xml');
	if (is_wp_error($c) || wp_remote_retrieve_response_code($c) != 200) {
		echo '<p>'.spa_text('Unable to communicate with Simple Press server').'</p>';
		return;
	}
	$l = new SimpleXMLElement($c['body']);
	if (empty($l)) {
		echo '<p>'.spa_text('Unable to communicate with Simple Press server').'</p>';
		return;
	}

	# Core, theme and plugin lists and downloads
	$gif = SFCOMMONIMAGES.'working.gif';
	$site = SFHOMEURL.'index.php?sp_ahah=integration-langs&amp;sfnonce='.wp_create_nonce('forum-ahah');
	$x = 0;

	spa_paint_open_tab(spa_text('Integration').' - '.spa_text('Language Translations'), true);
		spa_paint_open_panel();
			echo '<br />';
			echo '&nbsp;&nbsp;<img src="'.SFADMINIMAGES.'sp_Yes.png" title="'.spa_text('Translation file installed').'" alt="" style="vertical-align: middle;" />&nbsp;&nbsp;'.spa_text('Translation file installed');
			echo '&nbsp;&nbsp;<img src="'.SFADMINIMAGES.'sp_No.png" title="'.spa_text('No Translation file installed').'" alt="" style="vertical-align: middle;" />&nbsp;&nbsp;'.spa_text('No Translation file installed');

# Core - front and admin --------------------------------------

			spa_paint_open_fieldset(spa_text('Core Simple:Press'), false);

				$item = $l->core;
				$version = $item->version;

				echo '<table class="wp-list-table widefat">';
					echo '<tr><td style="width:50%"><b>Core: Simple:Press '.$version.'</b></td>';
					$thisItem = $site.'&amp;item=corefront&amp;version='.sp_format_version($version).'&amp;langcode='.$userLang['spCode'].'&amp;textdom=sp';
					$target = 'spItem'.$x;
					$x++;
					echo '<td><span id="'.$target.'">';
					if(sp_check_for_mo('language-sp', 'sp', $thisItem, $target) ? $btext = spa_text('Get Latest') : $btext = spa_text('Install'));
					echo '&nbsp;&nbsp;';
					echo '<input type="button" class="logDetail button" value="'.$btext.'" onclick="spjLoadAhah(\''.$thisItem.'\', \''.$target.'\', \''.$gif.'\');" /></span></td></tr>';

					echo '<tr class="alternate"><td style="width:50%"><b>Core: Administration '.$version.'</b></td>';
					$thisItem = $site.'&amp;item=coreadmin&amp;version='.sp_format_version($version).'&amp;langcode='.$userLang['spCode'].'&amp;textdom=spa';
					$target = 'spItem'.$x;
					$x++;
					echo '<td><span id="'.$target.'">';
					if(sp_check_for_mo('language-sp', 'spa', $thisItem, $target) ? $btext = spa_text('Get Latest') : $btext = spa_text('Install'));
					echo '&nbsp;&nbsp;';
					echo '<input type="button" class="logDetail button" value="'.$btext.'" onclick="spjLoadAhah(\''.$thisItem.'\', \''.$target.'\', \''.$gif.'\');" /></span></td></tr>';
				echo '</table>';

			spa_paint_close_fieldset();

# Themes in use --------------------------------------

			spa_paint_open_fieldset(spa_text('Active Simple:Press Themes'), false);

				$list = $l->themes;
//ashow($list);
				$done = array();
				$class = 'alternate';
				$child = false;

				echo '<table class="wp-list-table widefat">';

# Core Theme
					$t = sp_get_option('sp_current_theme');
					if(!empty($t['parent'])) {
						# Is a child theme
						$child = true;
						$theme=$t['parent'];
						$done[]=$theme;
						$done[]=$t['theme'];
					} else {
						$theme=$t['theme'];
						$done[]=$theme;
					}

					$data = sp_get_xml_theme_entry($list, $theme);
					$class = ( $class == 'alternate' ) ? '' : 'alternate';
					$name = (isset($data->name)) ? $data->name : $theme;
					echo '<tr class="'.$class.'"><td style="width:50%"><b>'.$name.'</b>';
					if($child) echo '&nbsp;('.spa_text('Child Theme Parent').')';
					echo '</td>';
					if(isset($data->name)) {
						$thisItem = $site.'&amp;item=theme&amp;langcode='.$userLang['spCode'].'&amp;textdom='.$data->lang.'&amp;name='.$theme;
						$target = 'spItem'.$x;
						$x++;
						echo '<td><span id="'.$target.'">';
						if(sp_check_for_mo('language-sp-themes', $data->lang, $thisItem, $target) ? $btext = spa_text('Get Latest') : $btext = spa_text('Install'));
						echo '&nbsp;&nbsp;';
						echo '<input type="button" class="logDetail button" value="'.$btext.'" onclick="spjLoadAhah(\''.$thisItem.'\', \''.$target.'\', \''.$gif.'\');" /></span></td></tr>';
					} else {
						echo '<td>'.spa_text('No Translation Project Exists').'</td></tr>';
					}

# Tablet Theme
					$t = sp_get_option('sp_tablet_theme');
					if($t['active']) {
						$child = false;
						if(!empty($t['parent'])) {
							# Is a child theme
							$child = true;
							$theme=$t['parent'];
						} else {
							$theme=$t['theme'];
						}

						if(!in_array($theme, $done)) {
							if($child) {
								$done[]=$theme;
								$done[]=$t['theme'];
							} else {
								$done[]=$theme;
							}

							$data = sp_get_xml_theme_entry($list, $theme);
							$class = ( $class == 'alternate' ) ? '' : 'alternate';
							$name = (isset($data->name)) ? $data->name : $theme;
							echo '<tr class="'.$class.'"><td style="width:50%"><b>'.$name.'</b></td>';
							echo '<tr class="'.$class.'"><td style="width:50%"><b>'.$name.'</b>';
							if($child) echo '&nbsp;('.spa_text('Child Theme Parent').')';
							echo '</td>';
							if(isset($data->name)) {
								$thisItem = $site.'&amp;item=theme&amp;langcode='.$userLang['spCode'].'&amp;textdom='.$data->lang.'&amp;name='.$theme;
								$target = 'spItem'.$x;
								$x++;
								echo '<td><span id="'.$target.'">';
								if(sp_check_for_mo('language-sp-themes', $data->lang, $thisItem, $target) ? $btext = spa_text('Get Latest') : $btext = spa_text('Install'));
								echo '&nbsp;&nbsp;';
								echo '<input type="button" class="logDetail button" value="'.$btext.'" onclick="spjLoadAhah(\''.$thisItem.'\', \''.$target.'\', \''.$gif.'\');" /></span></td></tr>';
							} else {
								echo '<td>'.spa_text('No Translation Project Exists').'</td></tr>';
							}
						}
					}

# Mobile theme
					$t = sp_get_option('sp_mobile_theme');
					if($t['active']) {
						$child = false;
						if(!empty($t['parent'])) {
							# Is a child theme
							$child = true;
							$theme=$t['parent'];
						} else {
							$theme=$t['theme'];
						}

						if(!in_array($theme, $done)) {
							if($child) {
								$done[]=$theme;
								$done[]=$t['theme'];
							} else {
								$done[]=$theme;
							}

							$data = sp_get_xml_theme_entry($list, $theme);
							$class = ( $class == 'alternate' ) ? '' : 'alternate';
							$name = (isset($data->name)) ? $data->name : $theme;
							echo '<tr class="'.$class.'"><td style="width:50%"><b>'.$name.'</b>';
							if($child) echo '&nbsp;('.spa_text('Child Theme Parent').')';
							echo '</td>';
							if(isset($data->name)) {
								$thisItem = $site.'&amp;item=theme&amp;langcode='.$userLang['spCode'].'&amp;textdom='.$data->lang.'&amp;name='.$theme;
								$target = 'spItem'.$x;
								$x++;
								echo '<td><span id="'.$target.'">';
								if(sp_check_for_mo('language-sp-themes', $data->lang, $thisItem, $target) ? $btext = spa_text('Get Latest') : $btext = spa_text('Install'));
								echo '&nbsp;&nbsp;';
								echo '<input type="button" class="logDetail button" value="'.$btext.'" onclick="spjLoadAhah(\''.$thisItem.'\', \''.$target.'\', \''.$gif.'\');" /></span></td></tr>';
							} else {
								echo '<td>'.spa_text('No Translation Project Exists').'</td></tr>';
							}
						}
					}
				echo '</table>';

			spa_paint_close_fieldset();

# Plugins if any --------------------------------------

			$plugins = sp_get_option('sp_active_plugins');
			if($plugins) {

				spa_paint_open_fieldset(spa_text('Active Simple:Press Plugins'), false);

					echo '<table class="wp-list-table widefat">';

						$list = $l->plugins;
						$class = 'alternate';

						foreach($plugins as $plugin) {
							$name = explode('/', $plugin);
							$data = sp_get_xml_plugin_entry($list, $name[0]);
							$class = ( $class == 'alternate' ) ? '' : 'alternate';
							$plugname = (isset($data->name)) ? $data->name : $name[0];
							echo '<tr class="'.$class.'"><td style="width:50%"><b>'.$plugname.'</b></td>';
							if(isset($data->name)) {
								$thisItem = $site.'&amp;item=plugin&amp;langcode='.$userLang['spCode'].'&amp;textdom='.$data->lang.'&amp;name='.$name[0];
								$target = 'spItem'.$x;
								$x++;
								echo '<td><span id="'.$target.'">';
								if(sp_check_for_mo('language-sp-plugins', $data->lang, $thisItem, $target) ? $btext = spa_text('Get Latest') : $btext = spa_text('Install'));
								echo '&nbsp;&nbsp;';
								echo '<input type="button" class="logDetail button" value="'.$btext.'" onclick="spjLoadAhah(\''.$thisItem.'\', \''.$target.'\', \''.$gif.'\');" /></span></td></tr>';
							} else {
								echo '<td>'.spa_text('No Translation Project Exists').'</td></tr>';
							}
						}
					echo '</table>';

				spa_paint_close_fieldset();
			}

		spa_paint_close_panel();
		echo '<div class="sfform-panel-spacer"></div>';

		spa_paint_close_container();
	spa_paint_close_tab();
}

# --- Support Functions ---

function sp_format_version($ver) {
	$v = explode('.', $ver);
	$ver = $v[0].$v[1];
	return $ver;
}

function sp_get_xml_theme_entry($list, $cTheme) {
	$data = '';
	foreach ($list->theme as $theme) {
		if(strcasecmp($theme->name, $cTheme) == 0) {
			$data = $theme;
			break;
		}
	}
	return $data;
}

function sp_get_xml_plugin_entry($list, $cPlugin) {
	$data = '';
	foreach ($list->plugin as $plugin) {
		if(strcasecmp($plugin->folder, $cPlugin) == 0) {
			$data = $plugin;
			break;
		}
	}
	return $data;
}

function sp_check_for_mo($folder, $tDom, $thisItem, $target) {
	global $spPaths, $siteLang;
	$moFile = SF_STORE_DIR.'/'.$spPaths[$folder].'/'.$tDom.'-'.$siteLang.'.mo';
	if(file_exists($moFile)) {
		$gif = SFCOMMONIMAGES.'working.gif';
		echo '<img src="'.SFADMINIMAGES.'sp_Yes.png" title="'.spa_text('Translation file found').'" alt="" style="vertical-align: middle;" />';
		echo '&nbsp;&nbsp;';
		$thisItem.= '&amp;remove=1';
		echo '<input type="button" class="logDetail button" value="'.spa_text('Remove').'" onclick="spjLoadAhah(\''.$thisItem.'\', \''.$target.'\', \''.$gif.'\');" />';
		return true;
	} else {
		echo '<img src="'.SFADMINIMAGES.'sp_No.png" title="'.spa_text('No translation file found').'" alt="" style="vertical-align: middle;" />';
		return false;
	}
}

?>