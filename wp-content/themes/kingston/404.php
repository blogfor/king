<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */

get_header(); ?>
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/404-style.css" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,700' rel='stylesheet' type='text/css' />
		
<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/introtzikas.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/script.js"></script>
<script type="text/javascript">
			//<![CDATA[
				$(document).ready(function() {
					$().introtzikas({
							line: 'white', 
							speedwidth: 2000, 
							speedheight: 1000, 
							bg: '#474747',
							lineheight: 2
					});	
				});
			//]]>
		</script>
		
	<img src="<?php echo get_template_directory_uri(); ?>/images/bg2.jpg" id="bg" alt="" /><!-- Background image -->
	<div class="bg_overlay"></div><!-- Pattern -->
	
		<div id="wrap">
			<div id="block">
				<div id="content">
					<div class="top_img">
						<div class="img_eror"></div>
					</div>
					<div class="srch">
						<div class="search">
							<?php get_search_form(); ?>
						</div>
					</div>
					<div class="text_eror">
						<h1>"Ooops! Page not found..."</h1>
						<p>Enter a keyword(s) in the search field above, maybe you'll find the page you're looking for. <br />
						   Or, you can take a look at our <a href="#">SITEMAP</a>. You can also return <a href="#">HOME</a>.</p>
					</div>
					
					
				</div>
			</div>
		</div>
	
		


<?php get_footer(); ?>
