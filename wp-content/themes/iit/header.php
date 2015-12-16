<!DOCTYPE html>
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
        <!-- core CSS -->
        <link href="<?php echo get_template_directory_uri(); ?>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo get_template_directory_uri(); ?>/css/font-awesome.min.css" rel="stylesheet">
        <link href="<?php echo get_template_directory_uri(); ?>/css/animate.min.css" rel="stylesheet">
        <link href="<?php echo get_template_directory_uri(); ?>/css/prettyPhoto.css" rel="stylesheet">
        <link href="<?php echo get_template_directory_uri(); ?>/css/main.css" rel="stylesheet">
        <link href="<?php echo get_template_directory_uri(); ?>/css/responsive.css" rel="stylesheet">
        <link href="<?php echo get_template_directory_uri(); ?>/css/slick.css" rel="stylesheet">
        <link href="<?php echo get_template_directory_uri(); ?>/css/slick-theme.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="<?php echo get_template_directory_uri(); ?>/js/html5shiv.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/js/respond.min.js"></script>
        <![endif]-->       
        <script src="<?php echo get_template_directory_uri(); ?>/js/jquery.js"></script>
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
    </head>
    <body class="homepage">

        <header id="header">
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-xs-4">
                            <div class="top-number"><a class="navbar-brand" href="<?php echo esc_url(home_url('/')); ?>"><img height="80" src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="IIT KHARAGPUR ALUMNI ASSOCIATION, KOLKATA" title="IIT KHARAGPUR ALUMNI ASSOCIATION, KOLKATA"></a></div>
                            <div class="myclass"> IIT KHARAGPUR ALUMNI ASSOCIATION KOLKATA</div>
                        </div>
                        <div class="col-sm-4 col-xs-8" style="text-align:right;">
                            <h2><a href="<?php echo get_permalink(26);?>">Register</a> / <a href="<?php echo get_permalink(29);?>">Login</a></h2> 

                        </div>
                    </div>
                </div><!--/.container-->
            </div><!--/.top-bar-->

            <nav class="navbar navbar-inverse" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>

                    <div class="collapse navbar-collapse navbar-left">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="<?php echo esc_url(home_url('/')); ?>">Home</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">About Us <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href='<?php echo get_permalink(6);?>'><span>VISION AND MISSION</span></a></li>
                                    <li><a href='<?php echo get_permalink(8);?>'><span>EXECUTIVE COMMITTEE</span></a></li>
                                    <li><a href='<?php echo get_permalink(10);?>'><span>HISTORY</span></a></li>
                                    <li><a href='<?php echo get_permalink(12);?>'><span>ABOUT IIT KHARAGPUR</span></a></li>
                                    <li><a href='<?php echo get_permalink(20);?>'><span>MESSAGE FROM THE PRESIDENT</span></a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">EVENTS <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href='<?php echo get_permalink(297);?>'><span>UPCOMING EVENTS</span></a></li>
                                    <li><a href='<?php echo get_permalink(51);?>'><span>PAST EVENTS</span></a></li>

                                </ul>
                            </li>
                            <li class='last'><a href='<?php echo get_permalink(103);?>'><span>MEMBERSHIP</span></a></li>
                            <li class='last'><a href='<?php echo get_permalink(16);?>'><span>PRESS & MEDIA</span></a></li>
                            <li class='last'><a href='<?php echo get_permalink(22);?>'><span>CONTACT US</span></a></li>                        
                        </ul>
                    </div>
                </div><!--/.container-->
            </nav><!--/nav-->

        </header><!--/header-->