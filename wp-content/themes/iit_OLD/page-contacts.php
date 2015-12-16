<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that
 * other 'pages' on your WordPress site will use a different template.
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>
<br />
<br />
<div class="motopress-wrapper content-holder clearfix">
    <div class="container">

        <div style="float: left; width:50%;">
            <?php
            // Start the Loop.
            while (have_posts()) : the_post();

                // Include the page content template.
                get_template_part('content', 'page');

                // If comments are open or we have at least one comment, load up the comment template.
                if (comments_open() || get_comments_number()) {
                    comments_template();
                }
            endwhile;
            ?>
        </div>
        <div style="float: right;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d14323.809311086785!2d28.28044!3d-26.165682!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1424079792262" width="100%" height="350" frameborder="0" style="border:0"></iframe>
        </div>
        <div style="clear: both;"></div>

    </div></div>
<?php
get_footer();
