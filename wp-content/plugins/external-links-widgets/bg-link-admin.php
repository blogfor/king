<?php
/*
  Plugin Name: External Links Mangement
  Plugin URI: http://www.blogfordeveloper.com/
  Description: Add external links and display with a widget
  Version: 1.0
  Author: Ramen Dey & Bivash Kanti Pal
  Author URI: http://www.blogfordeveloper.com/about-us/
*/


global $wpdb;

define('BG_LINK_TABLE',$wpdb->prefix.'bg_links' );
define('BG_LINK_VERSION',10);
define('BG_LINK_VERSION_DISP','1.0');


/* Admin menu */
add_action( 'admin_menu', 'bg_link_menu' );

add_action( 'plugins_loaded', 'bg_link_plugins_update' );

function bg_link_plugins_update()
{
 include plugin_dir_path( __FILE__ ).'update.php';
}

function bg_link_admin_dashboard() {
	require 'bg-link-admin-dashboard.php';
}

function bg_link_menu() {
	add_menu_page( 'External Links', 'External Links', 'administrator', 'bg-link-menu', 'bg_link_admin_dashboard' );
	
}



/* Uninstall and Activation handlers */
register_activation_hook( __FILE__, 'bg_link_activate' );
register_deactivation_hook( __FILE__, 'bg_link_deactivate' );

register_uninstall_hook( __FILE__, 'bg_link_deactivate_uninstall' );

function bg_link_activate( ) {
	
    global $wpdb;
	if ( $wpdb->get_var( "SHOW TABLES LIKE '" . BG_LINK_TABLE . "'" ) != BG_LINK_TABLE ) {
		$query =  "CREATE TABLE IF NOT EXISTS " . BG_LINK_TABLE . "( 
			id INT PRIMARY KEY AUTO_INCREMENT, 
			title LONGTEXT NULL, 
			link LONGTEXT NULL, 
			reltag INT			
		)";
		require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
		$wpdb->query( $query );
	}
}

function bg_link_deactivate_uninstall( ) {
	global $wpdb;
	$query = "DROP TABLE IF EXISTS " . BG_LINK_TABLE;
	require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
	$wpdb->query( $query );
}

function bg_link_deactivate( ) {
	delete_option( 'BG_LINK_VERSION' );
}



// Creating the widget 
class bg_link_widget extends WP_Widget {

function __construct() {
parent::__construct(
// Base ID of your widget
'bg_link_widget', 

// Widget name will appear in UI
__('External Links Widget', 'wpb_widget_domain'), 

// Widget description
array( 'description' => __( 'Show list of External Links', 'wpb_widget_domain' ), ) 
);
}

// Creating widget front-end
// This is where the action happens
public function widget( $args, $instance ) {
$title = apply_filters( 'widget_title', $instance['title'] );
// before and after widget arguments are defined by themes
echo $args['before_widget'];
if ( ! empty( $title ) )
echo $args['before_title'] . $title . $args['after_title'];

// This is where you run the code and display the output
echo '<style></style>';
    global $wpdb;
    $rows=$wpdb->get_results( "SELECT * FROM " . BG_LINK_TABLE . "");
    echo '<div class="bg_links_sub_head">Pease Visit To The Following LIinks</div>';
    echo '<div id="bg_links_container"><ul class="bg_links">';
    foreach ($rows as $row)
        {
        echo '<li class="bg_links_item"><a href="'.$row->link.'" target="_blank" title="'.$row->title.'" '.((($row->reltag==1)?'rel="nofollow"':'')).'>'.$row->title.'</a></li>';
    }
    echo '</ul><div>';

echo $args['after_widget'];
}
		
// Widget Backend 
public function form( $instance ) {
if ( isset( $instance[ 'title' ] ) ) {
$title = $instance[ 'title' ];
}
else {
$title = __( 'IIT KGP CONNECT', 'wpb_widget_domain' );
}
// Widget admin form
?>
<p>
<label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title:' ); ?></label> 
<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
</p>
<?php 
}
	
// Updating widget replacing old instances with new
public function update( $new_instance, $old_instance ) {
$instance = array();
$instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';
return $instance;
}
} // Class wpb_widget ends here

// Register and load the widget
function wpb_load_widget() {
	register_widget( 'bg_link_widget' );
}
add_action( 'widgets_init', 'wpb_load_widget' );
?>