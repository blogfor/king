<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */

get_header(); ?>

	<div class="container">
 		<div class="col-md-9">

			<section class="error-404 not-found">
				<header class="page-header">
					<div class="row abt-us"><h2><?php _e( 'Oops! That page can&rsquo;t be found.', 'twentyfifteen' ); ?></h2></div>
				</header><!-- .page-header -->

				<div class="page-content">
					<p><?php _e( 'It looks like nothing was found at this location. Maybe try a search?', 'twentyfifteen' ); ?></p>
					<p>&nbsp;</p>

					<?php get_search_form(); ?>
				</div><!-- .page-content -->
				<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
			</section><!-- .error-404 -->
		</div>
	</div>

<?php get_footer(); ?>
