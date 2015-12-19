<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "site-content" div and all content after.
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?>

	 
  
  <div class="ftr">
  <div class="container">
  <div class="col-lg-12"><p>All right reserved @ kingston educational institute</p></div>
  </div>
  </div><!--footer-->

   
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   <script src="<?php echo get_template_directory_uri();?>/js/jquery.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<?php echo get_template_directory_uri();?>/js/bootstrap.min.js"></script>
 <script>
	$('.dropdown').hover(function(){
		$('.dropdown-toggle',this) .trigger('click');
		});
    </script>
   
   
   

    <script type="text/javascript" language="javascript" src="<?php echo get_template_directory_uri();?>/js/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script type="text/javascript" language="javascript">
			$(function() {

				
			//	Responsive layout, resizing the items
				$('#foo4').carouFredSel({
					responsive: true,
					width: '100%',
					scroll: 2,
					items: {
						width: 400,
					//	height: '30%',	//	optionally resize item-height
						visible: {
							min: 1,
							max: 6
						}
					}
				});

				//	Fuild layout, centering the items
				$('#foo5').carouFredSel({
					width: '100%',
					scroll: 2
				});

			});
		</script>
  </body>
</html>

<?php wp_footer(); ?>

