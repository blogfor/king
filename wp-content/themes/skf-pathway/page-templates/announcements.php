<?php
/**
 * Template Name: ANNOUNCEMENTS
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>
<br />
<br />
<div class="motopress-wrapper content-holder clearfix">
<div class="container">
<h1>ANNOUNCEMENTS</h1>
<br />
<br />
			
<?php


$args = array( 'posts_per_page' => -1, 'offset'=> 1, 'category' => 3 );

$myposts = get_posts( $args );
foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
<ul style="list-style-type:none;">
	<li>
		<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
	</li>
	<li><?php the_time(get_option('date_format')) ?></li>
	<li><?php the_excerpt(); ?></li>
	
	<li><a href="<?php the_permalink(); ?>">READ MORE</a></li>
	</ul>
	<hr />
<?php endforeach; 
wp_reset_postdata();?>



</div></div>

<?php
//get_sidebar();
get_footer();
