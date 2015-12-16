<?php
/**
 * Template Name: PAST EVENTS
 *
 * @package WordPress
 * @subpackage Twenty_Fourteen
 * @since Twenty Fourteen 1.0
 */
get_header();
?>
<br />
<br />
<div class="motopress-wrapper content-holder clearfix">
    <div class="container">
        <h1>PAST EVENTS</h1>
        <br />
        <br />

        <?php
        $events = eo_get_events(array(
            'numberposts' => -1,
            'event_end_before' => 'today',
            'showpastevents' => true, //Will be deprecated, but set it to true to play it safe.
        ));

        if ($events):
global $post;
            foreach ($events as $event):
                setup_postdata($event);
                echo '<ul style="list-style-type:none;">';
                //Check if all day, set format accordingly
                $format = ( eo_is_all_day($event->ID) ? get_option('date_format') : get_option('date_format') . ' ' . get_option('time_format') );


                printf(
                        '<li><a href="%s"> %s </a>', get_permalink($event->ID), get_the_title($event->ID));

                echo '</li>';
                echo '<li>' . eo_get_the_start($format, $event->ID, null, $event->occurrence_id) . '</li>';
                echo '<li>' . the_excerpt() . '</li>';
                printf(
                        '<li><a href="%s"> READ MORE </a><li>', get_permalink($event->ID));


                echo '</ul><hr />';
            endforeach;

        endif;
        ?>



    </div></div>

<?php
//get_sidebar();
get_footer();
