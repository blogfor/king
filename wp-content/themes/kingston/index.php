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
            <li style="background-image: url(img/sunset.jpg); width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/banner.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>

            <li style="background-image: url(img/wood.jpg); width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/banner2.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>

            <li style="background-image: url(img/subway.jpg); width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/banner3.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>

            <li style="background-image: url(img/shop.jpg); width: 25%;">
                <img src="<?php echo get_template_directory_uri(); ?>/images/banner4.jpg" width="100%" height="auto" alt="banner" class="img-responsive">
            </li>
        </ul>
        <ol class="dots"><li class="dot">1</li><li class="dot">2</li><li class="dot">3</li><li class="dot active">4</li></ol></div>


    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery-latest.js"></script>


    <script src="<?php echo get_template_directory_uri(); ?>/js/unslider.js"></script>
    <script>
        if (window.chrome) {
            jQuery('.banner li').css('background-size', '100% 100%');
        }

        jQuery('.banner').unslider({
            fluid: true,
            dots: true,
            speed: 500
        });

        //  Find any element starting with a # in the URL
        //  And listen to any click events it fires
        jQuery('a[href^="#"]').click(function() {
            //  Find the target element
            var target = jQuery(jQuery(this).attr('href'));

            //  And get its position
            var pos = target.offset(); // fallback to scrolling to top || {left: 0, top: 0};

            //  jQuery will return false if there's no element
            //  and your code will throw errors if it tries to do .offset().left;
            if (pos) {
                //  Scroll the page
                jQuery('html, body').animate({
                    scrollTop: pos.top,
                    scrollLeft: pos.left
                }, 1000);
            }

            //  Don't let them visit the url, we'll scroll you there
            return false;
        });

        var GoSquared = {acct: 'GSN-396664-U'};
    </script>



</div><!--banner-->



<div class="container">
    <div class="col-md-9">
        <div class="row">

            <div class="col-lg-4 col-md-4 col-sm-4 bg"><div class="heading-box thumbnail"> <img src="<?php echo get_template_directory_uri(); ?>/images/training-icon.png" width="41" height="48"> 

                    <h2>NOTICE</h2>
                    <p>The cell looks beyond the academic curriculum and adopts every step to inculcate among students the required skill sets that are vital for their... </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 bg"><div class="heading-box thumbnail"><img src="<?php echo get_template_directory_uri(); ?>/images/placement-icon.png" width="71" height="48">  
                    <h2>Achievements</h2>
                    <p>The Placement Cell actively looks after student's placement and helps them in finding proper job exposure after course completion. They interact with companies ...</p></div></div>
            <div class="col-lg-4 col-md-4 col-sm-4 bg"><div class="heading-box thumbnail"><img  src="<?php echo get_template_directory_uri(); ?>/images/computer_lab-icon.png" width="42" height="48">  
                    <h2>Announcements</h2>
                    <p>In the separate Computer Laboratories, adequate computers have been installed.  Dedicated internet connection for 24 Hours, in the internet lab.</p></div> </div>    

        </div><!-- 1st row-->
        <div class="row">
            <div class="container">
                <div class="col-lg-12  col-md-12 col-sm-12 gallery"><h2>Events</h2>
                </div>
            </div>
        </div><!-- 2nd row--> 

        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 photo_gallery photos">
                <div class="col-md-12">




                    <div id="myCarousel" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="item">
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="http://placehold.it/500/eeeeee&amp;text=3"></a></div></div>
                            <div class="item">
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>

                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="http://placehold.it/500/f4f4f4&amp;text=4"></a></div></div>
                            <div class="item active">
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="http://placehold.it/500/fcfcfc/333&amp;text=5"></a></div></div>
                            <div class="item">
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div></div>
                            <div class="item">
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div></div>
                            <div class="item">
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div>
                                <div class="col-md-4 col-sm-4"><a href="#"><img class="img-responsive" src="<?php echo get_template_directory_uri(); ?>/images/p1.jpg"></a></div></div>
                        </div>
                        <a data-slide="prev" href="#myCarousel" class="left carousel-control"><i class="glyphicon glyphicon-chevron-left"></i></a>
                        <a data-slide="next" href="#myCarousel" class="right carousel-control"><i class="glyphicon glyphicon-chevron-right"></i></a>
                    </div>
                </div>
            </div>
        </div><!-- 3rd row--> 


        <div class="row">
            <div class="container">
                <div class="col-lg-12 col-md-12 col-sm-12  facilities"><h2>OUR FACILITIES</h2>
                </div> 
            </div> 
        </div><!-- 4th row--> 

        <div class="row">

            <div class="col-lg-6 col-md-6 col-sm-12 Cafeteria  ">
                <ul><li><a href="#">Cafeteria</a></li></ul>
                <p>The Institutes run a Central Cafeteria for all the units, providing palatable and wholesome food. The hostel residents, will of course, dine units at the separate</p>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-12 Cafeteria"><ul><li><a href="#">Reprographics System</a></li></ul>
                <p>The Institute's Xerox centre will facilitate students in reprographics so that they do not have to depend on centers located in distant market places</p>
            </div> 

        </div><!-- 5th row--> 

        <div class="row">

            <div class="col-lg-6 col-md-6 col-sm-12 Cafeteria "> <ul><li><a href="#">Multi-Gym</a></li></ul>
                <p>Keeping in tune with the maxim a sound mind in a sound body the Institute provides every opportunity to the students to build up their physique with the</p>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-12 Cafeteria"><ul><li><a href="#">Hostel</a></li></ul>
                <p>Two separate hostels for boys & girls are provided to accommodate outstation students with catering facilities, at affordable rates.</p>
            </div>

        </div><!-- 5th row-->
        <div class="row">

            <div class="col-lg-6 col-md-6 col-sm-12 Cafeteria "><ul><li><a href="#">Play Ground</a></li></ul>
                <p>A huge and spectacular has been provided for supplementing the classroom education....</p>
            </div> 

            <div class="col-lg-6 col-md-6 col-sm-12 Cafeteria "><ul><li><a href="#">Anti Ragging</a></li></ul>
                <p>We have anti ragging committee, who is looking after anti ragging matter.</p>
            </div>

        </div><!-- 5th row--> 


    </div><!--left-->
    <div class="col-lg-3 col-md-3 col-sm-12" >
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12 ">
                <div class="adm-bg">
                    <div class="adm_form">
                        <div class="adm_head"><h3>ADMISSION QUERY</h3></div>
                        <div class="form1"><input name="Name" type="text" value="Name...">
                            <input name="Email" type="text" value="Email..">
                            <input name="Subject" type="text" value="Subject">
                         <input name="Subject" type="text" value="Contact No">
                        </div>
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

        </div><!-- 3rd row--> 




    </div><!--right-->
</div>
<?php get_footer(); ?>