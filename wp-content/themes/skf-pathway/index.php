<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme and one
 * of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query,
 * e.g., it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>

<div class="motopress-wrapper content-holder clearfix">
<div class="container">
<div class="row">
<div class="span12" data-motopress-wrapper-file="page-home.php" data-motopress-wrapper-type="content">
<div class="row">
<div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-slider.php">
<div id="slider-wrapper" class="slider">
<div class="container">
<div class="slider-inner clearfix">

<div id="camera" class="camera_wrap">
<div data-src='<?php echo get_template_directory_uri(); ?>/images/11.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/11.jpg' style=""> 
</div>
<div data-src='<?php echo get_template_directory_uri(); ?>/images/slider12.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/slider12.jpg'> 
</div>

<div data-src='<?php echo get_template_directory_uri(); ?>/images/slider13.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/slider13.jpg'> 
</div>

<div data-src='<?php echo get_template_directory_uri(); ?>/images/slider14.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/slider14.jpg'> 
</div>
<div data-src='<?php echo get_template_directory_uri(); ?>/images/slider15.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/slider15.jpg'> 
</div>
<div data-src='<?php echo get_template_directory_uri(); ?>/images/slider16.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/slider16.jpg'> 
</div>
</div> 

</div>
</div>
</div>  </div>
</div>
</div>
</div>
<div id="content">
<div data-motopress-type="loop" data-motopress-loop-file="loop/loop-page.php">
<div id="post-203" class="post-203 page type-page status-publish hentry page">
<div class="carousel-wrap ">
<div id="carousel-blog" class="es-carousel-wrapper">
<div class="es-carousel">

<ul class="es-carousel_list unstyled">
<li class="es-carousel_li ">
<figure class="featured-thumbnail"><a href="?page_id=51" title="Lorem ipsum"><img src="<?php echo get_template_directory_uri(); ?>/images/ico5-58x64.png" alt="WANT TO DONATE"/></a></figure>
<div class="desc"><h5><a href="?page_id=51" title="WANT TO DONATE">WANT TO DONATE</a></h5><a href="?page_id=51" class="btn btn-primary" title="Lorem ipsum">read more</a></div>
</li>

<li class="es-carousel_li "><figure class="featured-thumbnail"><a href="?page_id=18" title="GALLERY"><img src="<?php echo get_template_directory_uri(); ?>/images/ico3.png" alt="GALLERY"/></a></figure>
<div class="desc"><h5><a href="?page_id=18" title="GALLERY">GALLERY</a></h5><a href="?page_id=18" class="btn btn-primary" title="GALLERY">read more</a></div></li>

<li class="es-carousel_li ">
<figure class="featured-thumbnail"><a href="?page_id=47" title="ANNOUNCEMENTS"><img src="<?php echo get_template_directory_uri(); ?>/images/ico2.png" alt="ANNOUNCEMENTS"/></a></figure>
<div class="desc"><h5><a href="?page_id=47" title="ANNOUNCEMENTS"><marquee>ANNOUNCEMENTS</marquee></a></h5><a href="?page_id=47" class="btn btn-primary" title="ANNOUNCEMENTS">read more</a></div></li>
<li class="es-carousel_li ">
<figure class="featured-thumbnail"><a href="?page_id=49" title="ORGANIZE AND EVENT"><img src="<?php echo get_template_directory_uri(); ?>/images/ico4-58x64.png" alt="ORGANIZE AND EVENT"/></a></figure>
<div class="desc">
  <h5><a href="?page_id=92" title="ORGANIZE AND EVENT">ORGANIZE AN EVENT</a></h5><a href="?page_id=92" class="btn btn-primary" title="REUNIONS">read more</a></div></li>

<li class="es-carousel_li "><figure class="featured-thumbnail"><a href="?page_id=43" title="NEWS LETTER"><img src="<?php echo get_template_directory_uri(); ?>/images/ico1.png" alt="join  our university"/></a></figure>
<div class="desc"><h5><a href="?page_id=43" title="NEWS LETTER">NEWS LETTER</a></h5><a href="?page_id=43" class="btn btn-primary" title="NEWS LETTER">read more</a></div></li></ul></div></div><script>
					jQuery("#carousel-blog").elastislide({
						imageW 		: 58,
						minItems	: 3,
						speed		: 600,
						easing		: "easeOutQuart",
						margin		: 18,
						border		: 0,
						onClick		: function() {}
					});</script></div>
<div class="hr"> </div>
<div class="row">
<div class="span3"><h2>IIT KGP CONNECT</h2>
<ul class="mini-posts-list ">
<?php


$args = array( 'posts_per_page' => 2, 'offset'=> 1, 'category' => 5 );

$myposts = get_posts( $args );
foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
<li class="mini-post-holder clearfix"><div class="mini-post-content"><h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
<div class="mini-post-meta" style="float:left;"><img src="<?php echo get_template_directory_uri(); ?>/images/ico1.png" width="30px" height="30px"/></div><div class="excerpt"><?php the_excerpt(); ?> </div></div>
</li>
<?php endforeach; 
wp_reset_postdata();?>


</ul>  
<a href="?page_id=109" title="read more" class="btn btn-link btn-normal btn-inline " target="_self">read more</a> </div>




<div class="span3"><h2>PAST EVENTS</h2>

<ul class="mini-posts-list ">
<?php


$args = array( 'posts_per_page' => 2, 'offset'=> 1, 'category' => 4 );

$myposts = get_posts( $args );
foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
<li class="mini-post-holder clearfix"><div class="mini-post-content"><h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
<div class="mini-post-meta" style="float:left;"><img src="<?php echo get_template_directory_uri(); ?>/images/ico1.png" width="30px" height="30px"/></div><div class="excerpt"><?php the_excerpt(); ?> </div></div>
</li>
<?php endforeach; 
wp_reset_postdata();?>


</ul> 
<a href="?page_id=51" title="read more" class="btn btn-link btn-normal btn-inline " target="_self">read more</a> </div>

<!--<div class="span6"><h2>ANNOUNCEMENTS</h2>
<ul class="recent-posts admission unstyled">
<li class="recent-posts_li post-73 post type-post status-publish format-standard hentry category-admission category-services tag-lorem cat-4-id cat-5-id">
<figure class="thumbnail featured-thumbnail"><a href="#" title="AWARDS AND ACHIEVEMENTS"><img src="<?php echo get_template_directory_uri(); ?>/images/ico1.png"/></a>
</figure>
<span style="float:left; font-size:18px;"><a href="#" title="AWARDS AND ACHIEVEMENTS">AWARDS AND ACHIEVEMENTS</a></span>
<div class="excerpt" style="float:left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit... </div>
<div class="clear"></div></li>

 <li class="recent-posts_li post-63 post type-post status-publish format-standard hentry category-admission category-services tag-lorem cat-4-id cat-5-id">
 <figure class="thumbnail featured-thumbnail"><a href="#" title="Lorem ipsum"><img src="<?php echo get_template_directory_uri(); ?>/images/ico2.png"/></a></figure>
<span style="float:left; font-size:18px;"><a href="#" title="AWARDS AND ACHIEVEMENTS">AWARDS AND ACHIEVEMENTS</a></span>
<div class="excerpt" style="float:left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit... </div>
<div class="clear"></div>

<div class="clear"></div>
</li> 
</ul> 
<a href="#" title="read more" class="btn btn-link btn-normal btn-inline " target="_self">read more</a> </div>-->
<div class="span4"><h2>WANT TO BECOME A NEW MEMBER</h2>
<div class="list styled arrow2-list">
<ul>
<li><a href="?page_id=26">Register</a></li>
<li><a href="?page_id=29">Login</a></li>
</ul>
</div>
<div class="list styled arrow2-list" style="margin-left:50px;">
<img src="<?php echo get_template_directory_uri(); ?>/images/shakehand.png" />
</div>
 </div>
</div>  


<div class="hr"> </div>
<style>
.row1
{
  float:left;
  border:1px solid #000000;
  width:23%;
  height:200PX;
}
</style>
<div class="row1">
<div class="span3">
ADVERTISEMENT 1
</div>
</div>  

<div class="row1">
<div class="span3">
ADVERTISEMENT 2
</div>
</div>

<div class="row1">
<div class="span3">
ADVERTISEMENT 3
</div>
</div>

<div class="row1">
<div class="span3">
ADVERTISEMENT 4
</div>
</div>


<div class="hr"> </div>
<div class="row" style="display:none;">




<div class="span4"><h2>WANT TO BECOME NEW MEMBER</h2>
<a href="#" >Register Here</a>
  </div>
</div>  
 
</div> 
</div>
</div>
</div>
</div>

<?php
get_footer();
