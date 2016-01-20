<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
    <head>
        <meta charset="<?php bloginfo('charset'); ?>"> 
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="profile" href="http://gmpg.org/xfn/11">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
        <!--[if lt IE 9]>
        <script src="<?php echo esc_url(get_template_directory_uri()); ?>/js/html5.js"></script>
        <![endif]-->
        <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/images/favicon.ico">
		<link href="<?php echo get_template_directory_uri(); ?>/fonts/OpenSans/OpenSans.css" rel="stylesheet">        
        <!-- Bootstrap core CSS -->
        <link href="<?php echo get_template_directory_uri(); ?>/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <!-- Custom styles for this template -->
        <link href="<?php echo get_template_directory_uri(); ?>/css/style.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="<?php echo get_template_directory_uri(); ?>/js/jquery.js"></script>
        <?php wp_head(); ?>
    </head>
    <body>
        <div class="head_top">

                <div class="container">
                    <div class="col-lg-6 col-md-6 col-sm-6 logo"><a href="<?php echo site_url();?>"><img src="<?php echo get_template_directory_uri(); ?>/images/logo2.png" width="548" height="86" alt="Kingston Educational Institute" class="img-responsive"></a>
                        </div> 
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="contact-box">
                            <div class="helpline"><P>HELPLINE</P></div>
							<div class="ph_number"><p>Call: 8100981098</p></div>
                            <div class="ph_number"><p>Call: 9883493503</p></div>
                            <div class="ph_number"><p>Call: 9681848780</p></div>
                             
                             

                        </div>

                        <!--<div class="iso"><p> AN ISO 9001 :2008 CERTIFIED INSTITUTE</p></div>-->

                    </div>
                </div>


            </div><!-- header-->
		
		  <!-- head_top-->






            <nav class="navbar navbar-default">
                <div class="navbar navbar-default nav ">
                    <div class="container">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse">                          
							 <?php 
                            $defaults = array(
                                
                                'menu'            => 'Top_Menu',
                                'container'       => 'div',
                                'container_class' => '',
                                'container_id'    => '',
                                'menu_class'      => 'nav navbar-nav navbar-right',
                                'menu_id'         => '',
                                'echo'            => true,
                                'fallback_cb'     => 'wp_page_menu',
                                'before'          => '',
                                'after'           => '',
                                'link_before'     => '',
                                'link_after'      => '',
                                'items_wrap'      => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                                'depth'           => 0,
                                'walker'          => new themeslug_walker_nav_menu
                        );

                        wp_nav_menu( $defaults );
                            ?>
                        </div>
                    </div>
                </div>
            </nav>
	<script src="<?php echo get_template_directory_uri(); ?>/js/jquery-latest.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/unslider.js"></script>