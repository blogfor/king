<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme and one
 * of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query,
 * e.g., it puts together the home page when no home.php file exists.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */

get_header(); ?>

<div class="motopress-wrapper content-holder clearfix">
<div class="container">
<div class="row">
<div class="span12" data-motopress-wrapper-file="page-home.php" data-motopress-wrapper-type="content">
<div class="row">
<div class="span12" data-motopress-type="static" data-motopress-static-file="static/static-slider.php">
<div id="slider-wrapper" class="slider">
<div class="container">
<div class="slider-inner clearfix">
<script type="text/javascript">
    jQuery(window).load(function() {
        jQuery(function(){
            jQuery('#camera').camera({
                alignment           : 'topCenter', //topLeft, topCenter, topRight, centerLeft, center, centerRight, bottomLeft, bottomCenter, bottomRight
                autoAdvance         : true,   //true, false
                mobileAutoAdvance   : true, //true, false. Auto-advancing for mobile devices
                barDirection        : 'leftToRight',    //'leftToRight', 'rightToLeft', 'topToBottom', 'bottomToTop'
                barPosition         : 'top',    //'bottom', 'left', 'top', 'right'
                cols                : 12,
                easing              : 'easeOutQuad',  //for the complete list http://jqueryui.com/demos/effect/easing.html
                mobileEasing        : '',   //leave empty if you want to display the same easing on mobile devices and on desktop etc.
                fx                  : 'simpleFade',    //'random','simpleFade', 'curtainTopLeft', 'curtainTopRight', 'curtainBottomLeft',          'curtainBottomRight', 'curtainSliceLeft', 'curtainSliceRight', 'blindCurtainTopLeft', 'blindCurtainTopRight', 'blindCurtainBottomLeft', 'blindCurtainBottomRight', 'blindCurtainSliceBottom', 'blindCurtainSliceTop', 'stampede', 'mosaic', 'mosaicReverse', 'mosaicRandom', 'mosaicSpiral', 'mosaicSpiralReverse', 'topLeftBottomRight', 'bottomRightTopLeft', 'bottomLeftTopRight', 'bottomLeftTopRight'
                                                //you can also use more than one effect, just separate them with commas: 'simpleFade, scrollRight, scrollBottom'
                mobileFx            : '',   //leave empty if you want to display the same effect on mobile devices and on desktop etc.
                gridDifference      : 250,  //to make the grid blocks slower than the slices, this value must be smaller than transPeriod
                height              : '47.4%', //here you can type pixels (for instance '300px'), a percentage (relative to the width of the slideshow, for instance '50%') or 'auto'
                imagePath           : '<?php echo get_template_directory_uri(); ?>/images/',    //he path to the image folder (it serves for the blank.gif, when you want to display videos)
                loader              : 'no',    //pie, bar, none (even if you choose "pie", old browsers like IE8- can't display it... they will display always a loading bar)
                loaderColor         : '#ffffff',
                loaderBgColor       : '#eb8a7c',
                loaderOpacity       : 1,    //0, .1, .2, .3, .4, .5, .6, .7, .8, .9, 1
                loaderPadding       : 0,    //how many empty pixels you want to display between the loader and its background
                loaderStroke        : 3,    //the thickness both of the pie loader and of the bar loader. Remember: for the pie, the loader thickness must be less than a half of the pie diameter
                minHeight           : '147px',  //you can also leave it blank
                navigation          : false, //true or false, to display or not the navigation buttons
                navigationHover     : false,    //if true the navigation button (prev, next and play/stop buttons) will be visible on hover state only, if false they will be visible always
                pagination          : false,
                playPause           : false,   //true or false, to display or not the play/pause buttons
                pieDiameter         : 33,
                piePosition         : 'rightTop',   //'rightTop', 'leftTop', 'leftBottom', 'rightBottom'
                portrait            : true, //true, false. Select true if you don't want that your images are cropped
                rows                : 8,
                slicedCols          : 12,
                slicedRows          : 8,
                thumbnails          : false,
                time                : 7000,   //milliseconds between the end of the sliding effect and the start of the next one
                transPeriod         : 1500, //lenght of the sliding effect in milliseconds
 
				////////callbacks
 
                onEndTransition     : function() {  },  //this callback is invoked when the transition effect ends
                onLoaded            : function() {  },  //this callback is invoked when the image on a slide has completely loaded
                onStartLoading      : function() {  },  //this callback is invoked when the image on a slide start loading
                onStartTransition   : function() {  }   //this callback is invoked when the transition effect starts
            });
        });
    });
</script>
<div id="camera" class="camera_wrap">
<div data-src='<?php echo get_template_directory_uri(); ?>/images/3.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/3.jpg'> <div class="camera_caption fadeIn">
<h2>Transforming campus</h2>
<p>Take a campus tour - at your desk or on foot - with enhanced podcast.</p>
<a href="#">see more</a> </div>
</div><div data-src='<?php echo get_template_directory_uri(); ?>/images/slide2-940x446.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/slide2-96x41.jpg'> 

<!--<div class="camera_caption fadeIn">
<h2>innovations impact</h2>
<p>29 Percent of respondents reported being entrepreneurs who founded an organization (for-profit or nonprofit)</p>
<a href="#">see more</a> </div>-->

</div><div data-src='<?php echo get_template_directory_uri(); ?>/images/slide3-940x446.jpg' data-thumb='<?php echo get_template_directory_uri(); ?>/images/slide3-96x41.jpg'> <div class="camera_caption fadeIn">
<h2>graduate admissions</h2>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, seddiam nonmmy nibh euis</p>
<a href="#">see more</a> </div>
</div></div> </div>
</div>
</div>  </div>
</div>
</div>
</div>
<div id="content">
<div data-motopress-type="loop" data-motopress-loop-file="loop/loop-page.php">
<div id="post-203" class="post-203 page type-page status-publish hentry page">
<div class="carousel-wrap "><div id="carousel-blog" class="es-carousel-wrapper"><div class="es-carousel"><ul class="es-carousel_list unstyled"><li class="es-carousel_li "><figure class="featured-thumbnail"><a href="#" title="NEWS LETTER"><img src="<?php echo get_template_directory_uri(); ?>/images/ico1.png" alt="join  our university"/></a></figure>
<div class="desc"><h5><a href="#" title="NEWS LETTER">NEWS LETTER</a></h5><a href="#" class="btn btn-primary" title="NEWS LETTER">read more</a></div></li><li class="es-carousel_li "><figure class="featured-thumbnail"><a href="#" title="EVENTS AND UPDATES"><img src="<?php echo get_template_directory_uri(); ?>/images/ico3.png" alt="EVENTS AND UPDATES"/></a></figure>
<div class="desc"><h5><a href="#" title="EVENTS AND UPDATES">EVENTS AND UPDATES</a></h5><a href="#" class="btn btn-primary" title="EVENTS AND UPDATES">read more</a></div></li><li class="es-carousel_li "><figure class="featured-thumbnail"><a href="#" title="ANNOUNCEMENTS"><img src="<?php echo get_template_directory_uri(); ?>/images/ico2.png" alt="ANNOUNCEMENTS"/></a></figure>
<div class="desc"><h5><a href="#" title="ANNOUNCEMENTS">ANNOUNCEMENTS</a></h5><a href="#" class="btn btn-primary" title="ANNOUNCEMENTS">read more</a></div></li><li class="es-carousel_li "><figure class="featured-thumbnail"><a href="#" title="AWARDS AND ACHIEVEMENTS"><img src="<?php echo get_template_directory_uri(); ?>/images/ico4-58x64.png" alt="AWARDS AND ACHIEVEMENTS"/></a></figure>
<div class="desc"><h5><a href="#" title="AWARDS AND ACHIEVEMENTS">AWARDS AND ACHIEVEMENTS</a></h5><a href="#" class="btn btn-primary" title="REUNIONS">read more</a></div></li><li class="es-carousel_li "><figure class="featured-thumbnail"><a href="#" title="Lorem ipsum"><img src="<?php echo get_template_directory_uri(); ?>/images/ico5-58x64.png" alt="REUNIONS"/></a></figure>
<div class="desc"><h5><a href="#" title="REUNIONS">REUNIONS</a></h5><a href="#" class="btn btn-primary" title="Lorem ipsum">read more</a></div></li></ul></div></div><script>
					jQuery("#carousel-blog").elastislide({
						imageW 		: 58,
						minItems	: 3,
						speed		: 600,
						easing		: "easeOutQuart",
						margin		: 18,
						border		: 0,
						onClick		: function() {}
					});</script></div>
<div class="hr"> </div>
<div class="row">
<div class="span3"><h2>EVENTS AND UPDATES</h2>
<ul class="mini-posts-list "><li class="mini-post-holder clearfix"><div class="mini-post-content"><h4><a href="#" title="Donec tempor libero">Donec tempor libero</a></h4>
<div class="mini-post-meta" style="float:left;"><img src="<?php echo get_template_directory_uri(); ?>/images/ico1.png" width="30px" height="30px"/></div><div class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel... </div></div>
</li>

<li class="mini-post-holder clearfix"><div class="mini-post-content"><h4><a href="#" title="Vivamus vel sem at">Vivamus vel sem at</a></h4><div class="mini-post-meta" style="float:left;"><img src="<?php echo get_template_directory_uri(); ?>/images/ico2.png" width="30px" height="30px"/></div><div class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa vel... </div></div></li></ul> 
<a href="#" title="read more" class="btn btn-link btn-normal btn-inline " target="_self">read more</a> </div>



<div class="span4"><h2>ANNOUNCEMENTS</h2>
<ul class="recent-posts admission unstyled"><li class="recent-posts_li post-73 post type-post status-publish format-standard hentry category-admission category-services tag-lorem cat-4-id cat-5-id"><figure class="thumbnail featured-thumbnail"><a href="#" title="AWARDS AND ACHIEVEMENTS"><img src="<?php echo get_template_directory_uri(); ?>/images/ico1.png"/></a></figure>
<h5><a href="#" title="AWARDS AND ACHIEVEMENTS">AWARDS AND ACHIEVEMENTS</a></h5><div class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit... </div><div class="clear"></div></li> <li class="recent-posts_li post-63 post type-post status-publish format-standard hentry category-admission category-services tag-lorem cat-4-id cat-5-id"><figure class="thumbnail featured-thumbnail"><a href="#" title="Lorem ipsum"><img src="<?php echo get_template_directory_uri(); ?>/images/ico2.png"/></a></figure>
<h5><a href="#" title="Lorem ipsum">Lorem ipsum</a></h5><div class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit... </div><div class="clear"></div></li> </ul> 
<a href="#" title="read more" class="btn btn-link btn-normal btn-inline " target="_self">read more</a> </div>
<div class="span3"><h2>WANT TO BECOME A NEW MEMBER</h2>
<div class="list styled arrow2-list">
<ul>
<li><a href="index.html#">Register</a></li>
<li><a href="index.html#">Login</a></li>
</ul>
</div>
 </div>
</div>  



<div class="hr"> </div>
<div class="row" style="display:none;">




<div class="span4"><h2>WANT TO BECOME NEW MEMBER</h2>
<a href="#" >Register Here</a>
  </div>
</div>  
 
</div> 
</div>
</div>
</div>
</div>
<?php
get_footer();
