<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
get_header();
?>
<script>
    jQuery('#myCarousel').carousel({
        interval: 10000
    })
    jQuery('.carousel .item').each(function() {
        var next = jQuery(this).next();
        if (!next.length) {
            next = jQuery(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo(jQuery(this));

        if (next.next().length > 0) {
            next.next().children(':first-child').clone().appendTo(jQuery(this));
        }
        else {
            jQuery(this).siblings(':first').children(':first-child').clone().appendTo(jQuery(this));
        }
    });
</script>

<div>

    <div style="overflow: hidden; width: 100%; height: 415px;" class="banner has-dots">
        <ul style="width: 400%; position: relative; left: -300%; height: 415px;">
            <li style="width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/A.jpg" width="100%" height="auto" alt="banner" class="img-responsive">


            </li>

            <li style="width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/B.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>

            <li style="width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/C.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>

            <li style="width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/D.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>
            <li style="width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/E.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>
            <li style="width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/F.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>
        </ul>

    </div>


    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery-latest.js"></script>


    <script src="<?php echo get_template_directory_uri(); ?>/js/unslider.js"></script>
    <script>
        if (window.chrome) {
            $('.banner li').css('background-size', '100% 100%');
        }

        $('.banner').unslider({
            fluid: true,
            dots: true,
            speed: 500
        });

        //  Find any element starting with a # in the URL
        //  And listen to any click events it fires
        $('a[href^="#"]').click(function() {
            //  Find the target element
            var target = $($(this).attr('href'));

            //  And get its position
            var pos = target.offset(); // fallback to scrolling to top || {left: 0, top: 0};

            //  jQuery will return false if there's no element
            //  and your code will throw errors if it tries to do .offset().left;
            if (pos) {
                //  Scroll the page
                $('html, body').animate({
                    scrollTop: pos.top,
                    scrollLeft: pos.left
                }, 1000);
            }

            //  Don't let them visit the url, we'll scroll you there
            return false;
        });

        var GoSquared = {acct: 'GSN-396664-U'};
    </script>



</div>



<div class="container">
    <div class="col-md-9">
        <div class="row">

            <div class="col-lg-4 col-md-4 col-sm-4 bg"><div class="heading-box thumbnail"> <img src="<?php echo get_template_directory_uri(); ?>/images/training-icon.png" width="41" height="48"> 

                    <h2>Notice</h2>
                    <p>The cell looks beyond the academic curriculum and adopts every step to inculcate among students the required skill sets that are vital for their... </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 bg"><div class="heading-box thumbnail"><img src="<?php echo get_template_directory_uri(); ?>/images/placement-icon.png" width="71" height="48">  
                    <h2>Achievements</h2>
                    <p>The Placement Cell actively looks after student's placement and helps them in finding proper job exposure after course completion. They interact with companies</p></div></div>
            <div class="col-lg-4 col-md-4 col-sm-4 bg"><div class="heading-box thumbnail"><img  src="<?php echo get_template_directory_uri(); ?>/images/computer_lab-icon.png" width="42" height="48">  
                    <h2>Announcements</h2>
                    <p>In the separate Computer Laboratories, adequate computers have been installed.  Dedicated internet connection for 24 Hours, in the internet lab.</p></div> </div>    


        </div><!-- 1st row-->
        <div class="row">
            <div class="container">
                <div class="col-lg-12  col-md-12 col-sm-12 gallery"><h2>PHOTO GALLERY</h2>
                </div>
            </div>
        </div><!-- 2nd row--> 

        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 photo_gallery photos">
                <div class="col-md-12">

                    <div class="list_carousel responsive">
                        <ul id="foo5">
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/1.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/2.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/3.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/4.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/5.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/6.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/7.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/8.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/9.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/10.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/11.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/12.jpg"></li>
                            <li><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/13.jpg"></li>

                        </ul>
                        <div class="clearfix"></div>
                    </div>



                </div>

            </div>

        </div><!-- 3rd row--> 


        <div class="row">
            <div class="container">
                <div class="col-lg-12 col-md-12 col-sm-12  facilities"><h2>HIGHLIGHTS</h2>
                </div> 
            </div> 
        </div><!-- 4th row--> 

        <?php
        $args = array(
            'posts_per_page' => 99999,
            'offset' => 0,
            'category' => '',
            'category_name' => '',
            'orderby' => 'date',
            'order' => 'DESC',
            'include' => '',
            'exclude' => '',
            'meta_key' => '',
            'meta_value' => '',
            'post_type' => 'highlight',
            'post_mime_type' => '',
            'post_parent' => '',
            'author' => '',
            'post_status' => 'publish',
            'suppress_filters' => true
        );
        $posts_array = get_posts($args);
        ?>
<div class="row">
        <?php
        $i = 0;
        foreach ($posts_array as $post) : setup_postdata($post);
            ?>

                <?php if ($i % 3 == 0) { ?>
                </div>
                <div class="row">
    <?php } ?>
                <div class="col-lg-6 col-md-6 col-sm-12 Cafeteria">
                    <ul><li><a href="<?php the_permalink();?>"><?php the_title();?></a></li></ul>
                        <?php the_excerpt();?>
                </div>


           


        <?php
        
        $i++;
        endforeach;
        wp_reset_postdata();
        ?>
</div>
      

    </div><!--left-->

<?php get_sidebar(); ?>
</div>
<?php get_footer(); ?>