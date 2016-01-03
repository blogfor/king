<?php
/**
 * The sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?>

<div class="col-lg-3 col-md-3 col-sm-12" >
    <div class="row">

        <?php  echo do_shortcode( '[contact-form-7 id="160" title="Admission Query"]' ); ?>
		

    </div><!-- 1st row--> 
    <div class="row">

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="map"><h2>WHERE WE ARE</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1841.4082897255228!2d88.41423239882693!3d22.623323599467565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f89f417450d265%3A0xa875f457f8457a71!2sKingston+Educational+Institute!5e0!3m2!1sen!2sin!4v1451239549427" width="320px" height="268px" frameborder="0" style="border:0" allowfullscreen></iframe>
				
				</div>
        </div>

    </div><!-- 2nd row--> 
    <div class="row">

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="tie-up">
                <div class="tie_head">
                    <h2>OUR CAMPUS DRIVE</h2>
                </div>
                <div class="tie-up1">
					 <?php dynamic_sidebar( 'home_top_gallery' ); ?>

                    



                </div>
            </div>
        </div>
       
    </div><!-- 3rd row--> 
</div><!--right-->