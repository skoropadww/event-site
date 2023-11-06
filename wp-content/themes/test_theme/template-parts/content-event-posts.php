<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package test_theme
 */

$post_id = get_the_ID();
$title = get_the_title();
$content = get_the_content();
$image = get_post_thumbnail_id();
$custom_field_year = get_post_meta($post_id, '_my_meta_value_key_year', true);
$custom_field_mounth = get_post_meta($post_id, '_my_meta_value_key_mounth', true);
$custom_field_place = get_post_meta($post_id, '_my_meta_value_key_place', true);
?>

<article id="post-<?php the_ID(); ?>"  class="event-item" data-year="<?php echo $custom_field_year;?>" data-mounth="<?php echo $custom_field_mounth;?>" data-place="<?php echo $custom_field_place;?>">
	<div class="event-item__wrapper">
		<?php if(isset($image) && !empty($image)) :
		echo wp_get_attachment_image( $image, 'full', null, array('class' => 'event-item__image') );
		endif;?>    
		<?php if(isset($title) && !empty($title)) :?>
			<h2 class="event-item__title"><?php echo $title;?></h2                                                          >
		<?php endif;?>  
		<?php if(isset($content) && !empty($content)) :?>
			<div class="event-item__excerpt">
				<?php echo wp_trim_words( $content, $num_words = 25, $more = null )?>
			</div>  
		<?php endif;?>
		<div class="event-item__meta-data">
			<?php echo ($custom_field_year . ' : ' . $custom_field_mounth . ' : ' . $custom_field_place);?>
		</div>
	</div>
</article>

