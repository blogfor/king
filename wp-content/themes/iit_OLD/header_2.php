<?php
/**
 * The Header for our theme
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
?><!DOCTYPE html>

<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) & !(IE 8)]><!-->
<html <?php language_attributes(); ?>>
    <!--<![endif]-->
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta name="viewport" content="width=device-width">
        <title><?php wp_title('|', true, 'right'); ?></title>
        <link rel="profile" href="http://gmpg.org/xfn/11">
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">
        <!--[if lt IE 9]>
        <script src="<?php echo get_template_directory_uri(); ?>/js/html5.js"></script>
        <![endif]-->
        <?php wp_head(); ?>


        <!--mak-->   

        <!--[if lt IE 8]>
               <div style=' clear: both; text-align:center; position: relative;'>
               <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
           </div>
               <![endif]-->
        <link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri(); ?>/css/button.css"/>

        <link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri(); ?>/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri(); ?>/css/responsive.css"/>
        <link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri(); ?>/css/prettyPhoto.css"/>
        <link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri(); ?>/css/camera.css"/>
        <link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri(); ?>/css/style.css"/>

        <link rel='stylesheet' id='contact-form-7-css' href='<?php echo get_template_directory_uri(); ?>/css/styles2.css?ver=3.3' type='text/css' media='all'/>
        <link rel='stylesheet' id='options_typography_Cinzel-css' href='http://fonts.googleapis.com/css?family=Cinzel&#038;subset=latin' type='text/css' media='all'/>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery-1.7.2.min.js?ver=1.7.2'></script>
<!--        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>-->
<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/script.js'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/modernizr.js?ver=2.0.6'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/superfish.js?ver=1.5.3'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.easing.1.3.js?ver=1.3'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.prettyPhoto.js?ver=3.1.5'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.elastislide.js?ver=1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/swfobject.js?ver=2.2-20120417'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.mobilemenu.js?ver=1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.twitter.js?ver=1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.flexslider.js?ver=2.1'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jflickrfeed.js?ver=1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/si.files.js?ver=1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/camera.min.js?ver=1.3.4'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jplayer.playlist.min.js?ver=2.1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.jplayer.min.js?ver=2.2.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/custom.js?ver=1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.debouncedresize.js?ver=1.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.isotope.js?ver=1.5.25'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/bootstrap.min.js?ver=2.3.0'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/comment-reply.js?ver=3.4'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.roundabout.min.js?ver=3.4'></script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.roundabout-shapes.min.js?ver=3.4'></script>

        <style type='text/css'>h1{font:normal 30px/30px Cinzel;color:#1e1d1d;}h2{font:bold 24px/36px Cinzel;color:#d84541;}h3{font:normal 20px/22px Cinzel;color:#1e1d1d;}h4{font:normal 14px/18px Arial,Helvetica,sans-serif;color:#1e1d1d;}h5{font:bold 14px/20px Arial,Helvetica,sans-serif;color:#0672a7;}h6{font:normal 12px/18px Arial,Helvetica,sans-serif;color:#1e1d1d;}.main-holder{font:normal 13px/18px Arial,Helvetica,sans-serif;color:#656565;}.logo_h__txt,.logo_link{font:normal 24px/30px Cinzel;color:#FFFFFF;}.sf-menu>li>a{font:bold 14px/18px Arial,Helvetica,sans-serif;color:#fff;}.nav.footer-nav a{font:normal 12px/18px Arial,Helvetica,sans-serif;color:#0088CC;}</style>
        <!--[if (gt IE 9)|!(IE)]><!-->
        <script src="<?php echo get_template_directory_uri(); ?>/js/jquery.mobile.customized.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            jQuery(function() {
                jQuery('.sf-menu').mobileMenu();
            });
        </script>
        <!--<![endif]-->
        <script type="text/javascript">
            // Init navigation menu
            jQuery(function() {
                // main navigation init
                jQuery('ul.sf-menu').superfish({
                    delay: 1000, // the delay in milliseconds that the mouse can remain outside a sub-menu without it closing
                    animation: {opacity: 'show', height: 'show'}, // used to animate the sub-menu open
                    speed: 'normal', // animation speed 
                    autoArrows: true, // generation of arrow mark-up (for submenu)
                    disableHI: true // to disable hoverIntent detection
                });
            });

            // Init for si.files
            SI.Files.stylizeAll();

            //Zoom fix
            jQuery(function() {
                // IPad/IPhone
                var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
                        ua = navigator.userAgent,
                        gestureStart = function() {
                    viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";
                },
                        scaleFix = function() {
                    if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
                        viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
                        document.addEventListener("gesturestart", gestureStart, false);
                    }
                };
                scaleFix();
            })
        </script>
        <style type="text/css">
        </style>
        <script type="text/javascript">
            /* <![CDATA[ */
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-7078796-5']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

            (function(b) {
                (function(a) {
                    "__CF"in b && "DJS"in b.__CF ? b.__CF.DJS.push(a) : "addEventListener"in b ? b.addEventListener("load", a, !1) : b.attachEvent("onload", a)
                })(function() {
                    "FB"in b && "Event"in FB && "subscribe"in FB.Event && (FB.Event.subscribe("edge.create", function(a) {
                        _gaq.push(["_trackSocial", "facebook", "like", a])
                    }), FB.Event.subscribe("edge.remove", function(a) {
                        _gaq.push(["_trackSocial", "facebook", "unlike", a])
                    }), FB.Event.subscribe("message.send", function(a) {
                        _gaq.push(["_trackSocial", "facebook", "send", a])
                    }));
                    "twttr"in b && "events"in twttr && "bind"in twttr.events && twttr.events.bind("tweet", function(a) {
                        if (a) {
                            var b;
                            if (a.target && a.target.nodeName == "IFRAME")
                                a:{
                                    if (a = a.target.src) {
                                        a = a.split("#")[0].match(/[^?=&]+=([^&]*)?/g);
                                        b = 0;
                                        for (var c; c = a[b]; ++b)
                                            if (c.indexOf("url") === 0) {
                                                b = unescape(c.split("=")[1]);
                                                break a
                                            }
                                    }
                                    b = void 0
                                }
                            _gaq.push(["_trackSocial", "twitter", "tweet", b])
                        }
                    })
                })
            })(window);
            /* ]]> */
        </script>


        <style>
            @media (min-width: 1200px){
            .slider-inner {
                padding-left: 0px;
                .home #content {
                    padding-left: 0px;
                }

                .es-carousel_li {
                    width: 228px !important;
                    padding: 30px 0px 5px 13px !important;
                    margin-right: 26px !important;
                }

                .span4 {
                    width: 500px;
                }

                .sf-menu > li {
                    margin-left: 30px;
                    /* width: 170px; */
                }

            }
            .slider-inner {
                padding-left: 0px;
            }
            .home #content {
                padding-left: 0px;
            }

            .es-carousel_li {
                width: 228px !important;
                padding: 30px 0px 5px 13px !important;
                margin-right: 26px !important;
            }

            .span4 {
                width: 500px;
            }
            .sf-menu > li {
                display: inline-block;
                float: none;
                margin-left: 10px;
                /* width: 140px; */
                min-width:120px;
                width: auto;
                background: none;
                text-align: left;
            }
            ul.sub-menu 
            {
                display: none; width: 208px; visibility: hidden;
            }

            body
            {
                background:url(<?php echo get_template_directory_uri(); ?>/images/body-bg.jpg);
            }
            .footer
            {
                background:url(<?php echo get_template_directory_uri(); ?>/images/body-bg.jpg);
            }
            a
            {
                color: #4cb6ea;
                text-decoration: none;
            }
            li.current-menu-item > a {
                border-color: #94b52e;
                background: none;
                color: #313149;
            }

            .sf-menu > li > a:hover, .sf-menu > li.sfHover > a, .sf-menu > li.current-menu-item > a {
                border-color: #94b52e;
                background: none;
                color: #313149;
            }
            .mini-post-meta time span {
                display: block;
                font-size: 30px;
                line-height: 1;
                color: #94b52e;
            }

            #back-top span {
                display: block;
                margin-bottom: 7px;
                width: 50px;
                height: 50px;
                background: #94b52e url(<?php echo get_template_directory_uri(); ?>/images/up-arrow.png) no-repeat center center;
                -webkit-transition: 1s;
                -moz-transition: 1s;
                -o-transition: 1s;
                transition: 1s;
                color:#FFF;
            }
            input#gobutton{
                cursor:pointer; /*forces the cursor to change to a hand when the button is hovered*/
                padding:5px 25px; /*add some padding to the inside of the button*/
                background:#35b128; /*the colour of the button*/
                border:1px solid #33842a; /*required or the default border for the browser will appear*/
                /*give the button curved corners, alter the size as required*/
                -moz-border-radius: 10px;
                -webkit-border-radius: 10px;
                border-radius: 10px;
                /*give the button a drop shadow*/
                -webkit-box-shadow: 0 0 4px rgba(0,0,0, .75);
                -moz-box-shadow: 0 0 4px rgba(0,0,0, .75);
                box-shadow: 0 0 4px rgba(0,0,0, .75);
                /*style the text*/
                color:#f3f3f3;
                font-size:1.1em;
            }
            /***NOW STYLE THE BUTTON'S HOVER AND FOCUS STATES***/
            input#gobutton:hover, input#gobutton:focus{
                background-color :#399630; /*make the background a little darker*/
                /*reduce the drop shadow size to give a pushed button effect*/
                -webkit-box-shadow: 0 0 1px rgba(0,0,0, .75);
                -moz-box-shadow: 0 0 1px rgba(0,0,0, .75);
                box-shadow: 0 0 1px rgba(0,0,0, .75);
            }
            .element_1
            {
                float:left;
            }
            }
        </style>


        

    </head>

    <body class="home page page-id-203 page-template page-template-page-home-php">
        <div id="motopress-main" class="main-holder">
            <header class="motopress-wrapper header">

                <!--Sanat-->
                <div class="container">
                    <div>
                        <a href="<?php echo esc_url(home_url('/')); ?>" class="logo_h logo_h__img"><img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="COMPASS UNIVERSITY" title="IIT KHARAGPUR ALUMNI ASSOCIATION, KOLKATA"></a>
                        <div class="myclass"> IIT KHARAGPUR ALUMNI ASSOCIATION KOLKATA</div>
                        <div  style="float:right; font-size:18px; text-align:center; font-weight:bold;">
                            <a href="?page_id=26"><strong>Register</strong></a> / <a href="?page_id=29"><strong>Login</strong></a> </div>
                    </div>
                </div>
                <!--sant RND-->
        </div>
        <div> 

            <div id='cssmenu'>
                <ul>
                    <li><a href='<?php echo esc_url(home_url('/')); ?>'><span class="active" style="padding-left:250px;">Home</span></a></li>

                    <li class='has-sub'><a href='?page_id=2'><span>About Us</span></a>


                        <ul>

                            <li><a href='?page_id=6'><span>VISION AND MISSION</span></a>
                            <li><a href='?page_id=8'><span>EXECUTIVE COMMITTEE</span></a>
                            <li><a href='?page_id=10'><span>HISTORY</span></a>
                            <li><a href='?page_id=12'><span>ABOUT IIT KHARAGPUR</span></a>
                            <li><a href='?page_id=20'><span>MESSAGE FROM THE PRESIDENT</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class='has-sub'><a href='?page_id=45'><span>EVENTS</span></a>
                        <ul>
                            <li><a href='?page_id=297'><span>UPCOMING EVENTS</span></a>
                            <li><a href='?page_id=51'><span>PAST EVENTS</span></a>


                            </li>
                        </ul></li>
                    <li class='last'><a href='?page_id=103'><span>MEMBERSHIP</span></a></li>
                    <li class='last'><a href='?page_id=16'><span>PRESS & MEDIA</span></a></li>
                    <li class='last'><a href='?page_id=22'><span>CONTACT US</span></a></li>
                </ul>
            </div>
        </div>

    </header>