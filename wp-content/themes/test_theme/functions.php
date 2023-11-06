<?php
/**
 * test_theme functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package test_theme
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function test_theme_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on test_theme, use a find and replace
		* to change 'test_theme' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'test_theme', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support( 'title-tag' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'menu-1' => esc_html__( 'Primary', 'test_theme' ),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'test_theme_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action( 'after_setup_theme', 'test_theme_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function test_theme_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'test_theme_content_width', 640 );
}
add_action( 'after_setup_theme', 'test_theme_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function test_theme_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'test_theme' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'test_theme' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'test_theme_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function test_theme_scripts() {
	wp_enqueue_style( 'test_theme-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'test_theme-style', 'rtl', 'replace' );
	wp_enqueue_style( 'test_theme-custom_style', get_template_directory_uri() . '/assets/css/style.css', array(), _S_VERSION );

	// Load JavaScripts
	wp_enqueue_script( 'jquery' );
	wp_enqueue_script( 'test_theme-navigation', get_template_directory_uri() . '/js/navigation.js', array('jquery'), _S_VERSION, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'test_theme_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

class RegisterPostType {
	public function register_post_type() {
        $args = array(
            'label'  => null,
			'labels' => [
				'name'               => 'events',
				'singular_name'      => 'Event',
				'add_new'            => 'Добавить Event',
				'add_new_item'       => 'Добавление Event',
				'edit_item'          => 'Редактирование Event',
				'new_item'           => 'Новое Event',
				'view_item'          => 'Смотреть Event',
				'search_items'       => 'Искать Event',
				'not_found'          => 'Не найдено',
				'not_found_in_trash' => 'Не найдено в корзине',
				'parent_item_colon'  => '',
				'menu_name'          => 'Event',
			],
			'description'            => '',
			'public'                 => true,
			'show_in_nav_menus'   => null,
			'show_in_menu'        => null,
			'show_in_admin_bar'   => null,
			'show_in_rest'        => null,
			'rest_base'           => null,
			'menu_position'       => null,
			'hierarchical'        => false,
			'supports'            => [ 'title', 'editor','thumbnail','excerpt','custom-fields' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
			'taxonomies'          => [],
			'has_archive'         => false,
			'rewrite'             => true,
			'query_var'           => true,
        );
        register_post_type('event-posts', $args);
    }

}

function register_post_types(){
	$custom_post_type = new RegisterPostType();
	$custom_post_type->register_post_type();
}
add_action( 'init', 'register_post_types' );

// ===========================================

function member_add_meta_box() {
	$screens = array( 'event-posts' );
	
	foreach ( $screens as $screen ) {
	
		add_meta_box(
			'member_sectionid',
			__( 'Information To Fill Out', 'member_textdomain' ),
			'member_meta_box_callback',
			$screen
		);
	 }
	}
	add_action( 'add_meta_boxes', 'member_add_meta_box' );
	
	function member_meta_box_callback( $post ) {
	
		wp_nonce_field( 'member_save_meta_box_data', 'member_meta_box_nonce' );
		
		$value_year = get_post_meta( $post->ID, '_my_meta_value_key_year', true );
		$value_month = get_post_meta( $post->ID, '_my_meta_value_key_mounth', true );
		$value_place = get_post_meta( $post->ID, '_my_meta_value_key_place', true );
		
		echo '<label for="member_new_year">';
		_e( 'Year', 'member_textdomain' );
		echo '</label> ';
		echo '<input type="text" id="member_new_year" name="member_new_year" value="' . esc_attr( $value_year ) . '" size="25" />';
		echo '<label for="member_new_month">';
		_e( ' Month', 'member_textdomain' );
		echo '</label> ';
		echo '<input type="text" id="member_new_month" name="member_new_month" value="' . esc_attr( $value_month ) . '" size="25" />';
		echo '<label for="member_new_place">';
		_e( ' Place', 'member_textdomain' );
		echo '</label> ';
		echo '<input type="text" id="member_new_place" name="member_new_place" value="' . esc_attr( $value_place ) . '" size="25" />';
	}
	
	 function member_save_meta_box_data( $post_id ) {
	
	 if ( ! isset( $_POST['member_meta_box_nonce'] ) ) {
		return;
	 }
	
	 if ( ! wp_verify_nonce( $_POST['member_meta_box_nonce'], 'member_save_meta_box_data' ) ) {
		return;
	 }
	
	 if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
		return;
	 }
	
	 if ( isset( $_POST['post_type'] ) && 'page' == $_POST['post_type'] ) {
	
		if ( ! current_user_can( 'edit_page', $post_id ) ) {
			return;
		}
	
	 } else {
	
		if ( ! current_user_can( 'edit_post', $post_id ) ) {
			return;
		}
	 }
	
	 if ( ! isset( $_POST['member_new_year'] ) ) {
		return;
	 }

	 if ( ! isset( $_POST['member_new_month'] ) ) {
		return;
	 }

	 if ( ! isset( $_POST['member_new_place'] ) ) {
		return;
	 }
	
	 $my_data_year = sanitize_text_field( $_POST['member_new_year'] );
	 $my_data_month = sanitize_text_field( $_POST['member_new_month'] );
	 $my_data_place = sanitize_text_field( $_POST['member_new_place'] );
	
	 update_post_meta( $post_id, '_my_meta_value_key_year', $my_data_year );
	 update_post_meta( $post_id, '_my_meta_value_key_mounth', $my_data_month );
	 update_post_meta( $post_id, '_my_meta_value_key_place', $my_data_place );
}

add_action( 'save_post', 'member_save_meta_box_data' );


function my_enqueue() {

    wp_enqueue_script( 'ajax-script', get_template_directory_uri() . '/assets/js/my-ajax-script.js', array('jquery'), _S_VERSION, true );

    wp_localize_script( 'ajax-script', 'ajax_object',
            array( 'ajaxurl' => admin_url( 'admin-ajax.php' ) ) );
}
add_action( 'wp_enqueue_scripts', 'my_enqueue' );


function filter_handler() {
	$result_array = array();
    $form_data = $_POST['formData'];
	$meta_year = array();
	$meta_mounth = array();
	$place_select = '';

	foreach ($form_data as $key => $value) {
		if($value['name'] == 'meta_year') {
			array_push($meta_year, $value['value']);
		}

		if($value['name'] == 'meta_mounth') {
			array_push($meta_mounth, $value['value']);
		}

		if($value['name'] == 'place-select') {
			$place_select = $value['value'];
		}
	}
	
	$args = array(
		'post_type'      => 'event-posts',
		'posts_per_page' => - 1,
		'meta_query'     => array(
		  'relation' => 'AND',
		)
	  );
	
	if ( $meta_year ) {
	$args['meta_query'][] = array(
		'key'     => '_my_meta_value_key_year',
		'value'   => $meta_year,
		'compare' => 'IN',
	);
	}

	if ( $meta_mounth ) {
	$args['meta_query'][] = array(
		'key'     => '_my_meta_value_key_mounth',
		'value'   => $meta_mounth,
		'compare' => 'IN',
	);
	}

	if ( $place_select && $place_select !== 'all' ) {
	$args['meta_query'][] = array(
		'key'     => '_my_meta_value_key_place',
		'value'   => $place_select,
		'compare' => 'IN',
	);
	}
	
	$query = new WP_Query( $args );
	ob_start();
	if ( $query->have_posts() ) {
		while ( $query->have_posts() ) {
			$query->the_post();

			get_template_part( 'template-parts/content', get_post_type() );
		}
		wp_reset_Query();
	} else {
		echo 'Пости не знайдено';
	}

	$result_array['result'] = ob_get_clean();

    wp_send_json_success($result_array);
    wp_die();
}

add_action('wp_ajax_filter_handler', 'filter_handler');
add_action('wp_ajax_nopriv_filter_handler', 'filter_handler');