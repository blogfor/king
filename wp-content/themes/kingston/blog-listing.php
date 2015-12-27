<?php
/**
 * Template Name: BLOG PAGE
 *
 */

get_header(); 
query_posts('post_type=post' );
?>
<section id="primary" class="content-area">
  <main id="main" class="site-main" role="main">
	<div class="container">
 		<div class="col-md-8 blog-holder">

		<?php if ( have_posts() ) : ?>

			<?php if ( is_home() && ! is_front_page() ) : ?>
				<header>
					<div class="row abt-us"><h2><?php single_post_title(); ?></h2></div>
				</header>
			<?php endif; ?>

			<?php
			// Start the loop.
			while ( have_posts() ) : the_post();

				/*
				 * Include the Post-Format-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
				 */
				get_template_part( 'content', get_post_format() );

			// End the loop.
			endwhile;

			// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Previous page', 'twentyfifteen' ),
				'next_text'          => __( 'Next page', 'twentyfifteen' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyfifteen' ) . ' </span>',
			) );

		// If no content, include the "No posts found" template.
		else :
			get_template_part( 'content', 'none' );

		endif;
		?>

		</div><!-- .site-main -->
		<?php get_sidebar(); ?>
	</div><!-- .content-area -->
   </main>
</section>

<?php get_footer(); ?>