<?php

/*

Plugin Name: Profile Builder Customizations

Plugin URI: 

Description: This is a plugin which you can use to run the code added via the filters existing in Profile Builder to customize aspect, functionality etc. This plugin was created to improve code readability.

Version: 1

Author: Reflection Media, Barina Gabriel

Author URI: http://www.reflectionmedia.ro

License: GPL2



== Copyright ==

Copyright 2011 Reflection Media (wwww.reflectionmedia.ro)



This program is free software; you can redistribute it and/or modify

it under the terms of the GNU General Public License as published by

the Free Software Foundation; either version 2 of the License, or

(at your option) any later version.

This program is distributed in the hope that it will be useful,

but WITHOUT ANY WARRANTY; without even the implied warranty of

MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the

GNU General Public License for more details.

You should have received a copy of the GNU General Public License

along with this program; if not, write to the Free Software

Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

*/


function redirectUseBasedOnRole($redirectMessage, $permaLnk2){
    if ( 'POST' == $_SERVER['REQUEST_METHOD'] && !empty( $_POST['action'] ) && $_POST['action'] == 'log-in' && wp_verify_nonce($_POST['login_nonce_field'],'verify_true_login') && ($_POST['formName'] == 'login') ){
        $user = get_user_by('login', $_POST['user-name']);
        $userData = get_userdata( $user->ID );
 
        if (in_array('manage_options', $userData->allcaps)){
            //echo 'The current user is an administrator'; for more capabilities check http://codex.wordpress.org/Roles_and_Capabilities</a>
 
            $newURL = "http://www.gleafsolutions.com/demo/iit/?page_id=35"; //set new url
 
            return '<font id="messageTextColor">' . sprintf(__('You will soon be redirected automatically. If you see this page for more than 1 second, please click %1$s', 'profilebuilder'), '<a href="'.$newURL.'">'. __('here', 'profilebuilder').'</a>.<meta http-equiv="Refresh" content="1;url='.$newURL.'" />') . '</font><br/><br/>';
        }
    }
 
}
 
add_filter('wppb_login_redirect_message', 'redirectUseBasedOnRole', 10, 2);
add_filter('wppb_login_widget_redirect_message', 'redirectUseBasedOnRole', 10, 2);