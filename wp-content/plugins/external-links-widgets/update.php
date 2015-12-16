<?php
global $wpdb;

if(get_option('BG_LINK_VERSION')==null || get_option('BG_LINK_VERSION') < 11)
{

            
            update_option('BG_LINK_VERSION',BG_LINK_VERSION);
}

?>