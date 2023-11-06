<?php 
global $wpdb;

$meta_key_year = '_my_meta_value_key_year';
$meta_key_mounth = '_my_meta_value_key_mounth';
$meta_key_place = '_my_meta_value_key_place';

$query = $wpdb->prepare(" SELECT DISTINCT meta_key, meta_value FROM $wpdb->postmeta WHERE meta_key IN (%s, %s, %s)", $meta_key_year, $meta_key_mounth, $meta_key_place);

$results = $wpdb->get_results($query);
?>

<div class="js-filter-block">
    <?php if ($results) : ?>
        <form class="js-filter-block__form">
            <div class="js-filter-block__year">
                <?php 
                    foreach ($results as $result) :
                            $meta_key = $result->meta_key;
                            $meta_value = $result->meta_value;

                        if($meta_key == "_my_meta_value_key_year") :
                            echo '<label><input class="check-box" type="checkbox" name="meta_year" value="' . esc_attr($meta_value) . '"> ' . esc_html($meta_value) . '<span class="check-style"></span></label><br>';
                        endif;
                    endforeach;
                ?>
            </div>
            <div class="js-filter-block__mounth">
                <?php 
                    foreach ($results as $result) :
                            $meta_key = $result->meta_key;
                            $meta_value = $result->meta_value;

                        if($meta_key == "_my_meta_value_key_mounth") :
                            echo '<label><input class="check-box" type="checkbox" name="meta_mounth" value="' . esc_attr($meta_value) . '"> ' . esc_html($meta_value) . '<span class="check-style"></span></label><br>';
                        endif;
                    endforeach;
                ?>
            </div>
            <div class="js-filter-block__place">
                <select class="select" name="place-select" id="place-select">
                    <option value="all"> <?php _e('All');?></option>
                    <?php 
                        foreach ($results as $result) :
                            $meta_key = $result->meta_key;
                            $meta_value = $result->meta_value;

                            if($meta_key == "_my_meta_value_key_place") :
                                echo '<option value="' . esc_attr($meta_value) . '"> ' . esc_html($meta_value) . '</option>';
                            endif;
                        endforeach;
                    ?>
                </select>
            </div>
            <input class="js-filter-button" type="submit" value="Filter">
        </form>
    <?php endif;?>
</div>