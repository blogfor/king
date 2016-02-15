<?php
/**
 * The sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?>
<div class="col-lg-3 col-md-3 col-sm-12 body-side-container" >
<?php if ( is_active_sidebar( 'sidebar-1' ) ) : ?>			
<?php dynamic_sidebar( 'sidebar-1' ); ?>		
<?php endif; ?>    
</div><!--right-->