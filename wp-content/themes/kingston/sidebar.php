<?php
/**
 * The sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?>
<div class="col-sm-1">&nbsp;</div>
<div class="col-lg-3 col-md-3 col-sm-12" >
    <div class="row">

        <div class="col-lg-12 col-md-12 col-sm-12 ">
            <div class="adm-bg">
                <div class="adm_form">
                    <div class="adm_head"><h3>ADMISSION QUERY</h3></div>
                    <div class="form1"><input name="Name" type="text" value="Name...">
                        <input name="Email" type="text" value="Email..">
                        <input name="Subject" type="text" value="Subject">
                        <input name="Contact No." type="text" value="Contact No."></div>
                    <div class="form_message"><textarea cols="" rows="" >Message...</textarea></div>
                    <div class="btn"><input name="" type="button" value="Send message"></div></div>
            </div>
        </div>

    </div><!-- 1st row--> 
    <div class="row">

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="map"><h2>WHERE WE ARE</h2>
                <img src="<?php echo get_template_directory_uri(); ?>/images/map.jpg" width="270" height="218"></div>
        </div>

    </div><!-- 2nd row--> 
    <div class="row">

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="tie-up">
                <div class="tie_head">
                    <h2>OUR CAMPUS DRIVE</h2>
                </div>
                <div class="tie-up1">


                    <div class="list_carousel responsive">
                        <ul id="foo4">
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/ibm.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/ibm.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/ibm.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/ibm.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                            <li><img src="<?php echo get_template_directory_uri(); ?>/images/avery.png" ></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>



                </div>
            </div>
        </div>
        <?php if (has_nav_menu('primary') || has_nav_menu('social') || is_active_sidebar('sidebar-1')) : ?>
            <div id="secondary" class="secondary">

                <?php if (has_nav_menu('primary')) : ?>
                    <nav id="site-navigation" class="main-navigation" role="navigation">
                        <?php
                        // Primary navigation menu.
                        wp_nav_menu(array(
                            'menu_class' => 'nav-menu',
                            'theme_location' => 'primary',
                        ));
                        ?>
                    </nav><!-- .main-navigation -->
                <?php endif; ?>

                <?php if (has_nav_menu('social')) : ?>
                    <nav id="social-navigation" class="social-navigation" role="navigation">
                        <?php
                        // Social links navigation menu.
                        wp_nav_menu(array(
                            'theme_location' => 'social',
                            'depth' => 1,
                            'link_before' => '<span class="screen-reader-text">',
                            'link_after' => '</span>',
                        ));
                        ?>
                    </nav><!-- .social-navigation -->
                <?php endif; ?>

                <?php if (is_active_sidebar('sidebar-1')) : ?>
                    <div id="widget-area" class="widget-area" role="complementary">
                        <?php dynamic_sidebar('sidebar-1'); ?>
                    </div><!-- .widget-area -->
                <?php endif; ?>

            </div><!-- .secondary -->

        <?php endif; ?>
    </div><!-- 3rd row--> 
</div><!--right-->