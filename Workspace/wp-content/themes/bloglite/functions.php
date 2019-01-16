<?php 
/*This file is part of Bloglite child theme.

All functions of this file will be loaded before of parent theme functions.
Learn more at https://codex.wordpress.org/Child_Themes.

Note: this function loads the parent stylesheet before, then child theme stylesheet
(leave it in place unless you know what you are doing.)
*/

add_action( 'wp_enqueue_scripts', 'bloglite_enqueue_child_styles');
function bloglite_enqueue_child_styles() {
	wp_enqueue_style( 'bloglite-parent-style', get_template_directory_uri() . '/style.css',array('bootstrap','font-awesome'), '', 'all');
   wp_enqueue_style( 'bloglite-style',get_stylesheet_directory_uri() . '/css/child.css');
  
}

