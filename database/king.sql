
--
-- Table structure for table `wp_bg_links`
--

DROP TABLE IF EXISTS `wp_bg_links`;
CREATE TABLE IF NOT EXISTS `wp_bg_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext,
  `link` longtext,
  `reltag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bg_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album`
--

DROP TABLE IF EXISTS `wp_bwg_album`;
CREATE TABLE IF NOT EXISTS `wp_bwg_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bwg_album`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album_gallery`
--

DROP TABLE IF EXISTS `wp_bwg_album_gallery`;
CREATE TABLE IF NOT EXISTS `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bwg_album_gallery`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_gallery`
--

DROP TABLE IF EXISTS `wp_bwg_gallery`;
CREATE TABLE IF NOT EXISTS `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) NOT NULL,
  `gallery_source` varchar(256) NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bwg_gallery`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image`
--

DROP TABLE IF EXISTS `wp_bwg_image`;
CREATE TABLE IF NOT EXISTS `wp_bwg_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bwg_image`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_comment`
--

DROP TABLE IF EXISTS `wp_bwg_image_comment`;
CREATE TABLE IF NOT EXISTS `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bwg_image_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_rate`
--

DROP TABLE IF EXISTS `wp_bwg_image_rate`;
CREATE TABLE IF NOT EXISTS `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bwg_image_rate`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_tag`
--

DROP TABLE IF EXISTS `wp_bwg_image_tag`;
CREATE TABLE IF NOT EXISTS `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_bwg_image_tag`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_option`
--

DROP TABLE IF EXISTS `wp_bwg_option`;
CREATE TABLE IF NOT EXISTS `wp_bwg_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `images_directory` mediumtext NOT NULL,
  `masonry` varchar(255) NOT NULL,
  `mosaic` varchar(255) NOT NULL,
  `resizable_mosaic` tinyint(1) NOT NULL,
  `mosaic_total_width` int(4) NOT NULL,
  `image_column_number` int(4) NOT NULL,
  `images_per_page` int(4) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `upload_thumb_width` int(4) NOT NULL,
  `upload_thumb_height` int(4) NOT NULL,
  `image_enable_page` tinyint(1) NOT NULL,
  `image_title_show_hover` varchar(20) NOT NULL,
  `album_column_number` int(4) NOT NULL,
  `albums_per_page` int(4) NOT NULL,
  `album_title_show_hover` varchar(8) NOT NULL,
  `album_thumb_width` int(4) NOT NULL,
  `album_thumb_height` int(4) NOT NULL,
  `album_enable_page` tinyint(1) NOT NULL,
  `extended_album_height` int(4) NOT NULL,
  `extended_album_description_enable` tinyint(1) NOT NULL,
  `image_browser_width` int(4) NOT NULL,
  `image_browser_title_enable` tinyint(1) NOT NULL,
  `image_browser_description_enable` tinyint(1) NOT NULL,
  `blog_style_width` int(4) NOT NULL,
  `blog_style_title_enable` tinyint(1) NOT NULL,
  `blog_style_images_per_page` int(4) NOT NULL,
  `blog_style_enable_page` tinyint(1) NOT NULL,
  `slideshow_type` varchar(16) NOT NULL,
  `slideshow_interval` int(4) NOT NULL,
  `slideshow_width` int(4) NOT NULL,
  `slideshow_height` int(4) NOT NULL,
  `slideshow_enable_autoplay` tinyint(1) NOT NULL,
  `slideshow_enable_shuffle` tinyint(1) NOT NULL,
  `slideshow_enable_ctrl` tinyint(1) NOT NULL,
  `slideshow_enable_filmstrip` tinyint(1) NOT NULL,
  `slideshow_filmstrip_height` int(4) NOT NULL,
  `slideshow_enable_title` tinyint(1) NOT NULL,
  `slideshow_title_position` varchar(16) NOT NULL,
  `slideshow_enable_description` tinyint(1) NOT NULL,
  `slideshow_description_position` varchar(16) NOT NULL,
  `slideshow_enable_music` tinyint(1) NOT NULL,
  `slideshow_audio_url` varchar(255) NOT NULL,
  `popup_width` int(4) NOT NULL,
  `popup_height` int(4) NOT NULL,
  `popup_type` varchar(16) NOT NULL,
  `popup_interval` int(4) NOT NULL,
  `popup_enable_filmstrip` tinyint(1) NOT NULL,
  `popup_filmstrip_height` int(4) NOT NULL,
  `popup_enable_ctrl_btn` tinyint(1) NOT NULL,
  `popup_enable_fullscreen` tinyint(1) NOT NULL,
  `popup_enable_info` tinyint(1) NOT NULL,
  `popup_info_always_show` tinyint(1) NOT NULL,
  `popup_enable_rate` tinyint(1) NOT NULL,
  `popup_enable_comment` tinyint(1) NOT NULL,
  `popup_enable_email` tinyint(1) NOT NULL,
  `popup_enable_captcha` tinyint(1) NOT NULL,
  `popup_enable_download` tinyint(1) NOT NULL,
  `popup_enable_fullsize_image` tinyint(1) NOT NULL,
  `popup_enable_facebook` tinyint(1) NOT NULL,
  `popup_enable_twitter` tinyint(1) NOT NULL,
  `popup_enable_google` tinyint(1) NOT NULL,
  `watermark_type` varchar(8) NOT NULL,
  `watermark_position` varchar(16) NOT NULL,
  `watermark_width` int(4) NOT NULL,
  `watermark_height` int(4) NOT NULL,
  `watermark_url` mediumtext NOT NULL,
  `watermark_text` mediumtext NOT NULL,
  `watermark_link` mediumtext NOT NULL,
  `watermark_font_size` int(4) NOT NULL,
  `watermark_font` varchar(16) NOT NULL,
  `watermark_color` varchar(8) NOT NULL,
  `watermark_opacity` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `popup_fullscreen` tinyint(1) NOT NULL,
  `gallery_role` tinyint(1) NOT NULL,
  `album_role` tinyint(1) NOT NULL,
  `image_role` tinyint(1) NOT NULL,
  `popup_autoplay` tinyint(1) NOT NULL,
  `album_view_type` varchar(16) NOT NULL,
  `popup_enable_pinterest` tinyint(1) NOT NULL,
  `popup_enable_tumblr` tinyint(1) NOT NULL,
  `show_search_box` tinyint(1) NOT NULL,
  `search_box_width` int(4) NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `preload_images_count` int(4) NOT NULL,
  `thumb_click_action` varchar(16) NOT NULL,
  `thumb_link_target` tinyint(1) NOT NULL,
  `comment_moderation` tinyint(1) NOT NULL,
  `popup_hit_counter` tinyint(1) NOT NULL,
  `enable_ML_import` tinyint(1) NOT NULL,
  `showthumbs_name` tinyint(1) NOT NULL,
  `show_album_name` tinyint(1) NOT NULL,
  `show_image_counts` tinyint(1) NOT NULL,
  `upload_img_width` int(4) NOT NULL,
  `upload_img_height` int(4) NOT NULL,
  `play_icon` tinyint(1) NOT NULL,
  `show_masonry_thumb_description` tinyint(1) NOT NULL,
  `slideshow_title_full_width` tinyint(1) NOT NULL,
  `popup_info_full_width` tinyint(1) NOT NULL,
  `show_sort_images` tinyint(1) NOT NULL,
  `autoupdate_interval` int(4) NOT NULL,
  `instagram_access_token` varchar(128) NOT NULL,
  `description_tb` tinyint(1) NOT NULL,
  `enable_seo` tinyint(1) NOT NULL,
  `autohide_lightbox_navigation` tinyint(1) NOT NULL,
  `autohide_slideshow_navigation` tinyint(1) NOT NULL,
  `read_metadata` tinyint(1) NOT NULL,
  `enable_loop` tinyint(1) NOT NULL,
  `enable_addthis` tinyint(1) NOT NULL,
  `addthis_profile_id` varchar(66) NOT NULL,
  `carousel_interval` int(4) NOT NULL,
  `carousel_width` int(4) NOT NULL,
  `carousel_height` int(4) NOT NULL,
  `carousel_image_column_number` int(4) NOT NULL,
  `carousel_image_par` varchar(32) NOT NULL,
  `carousel_enable_title` tinyint(1) NOT NULL,
  `carousel_enable_autoplay` tinyint(1) NOT NULL,
  `carousel_r_width` int(4) NOT NULL,
  `carousel_fit_containerWidth` tinyint(1) NOT NULL,
  `carousel_prev_next_butt` tinyint(1) NOT NULL,
  `carousel_play_pause_butt` tinyint(1) NOT NULL,
  `permissions` varchar(20) NOT NULL,
  `facebook_app_id` varchar(64) NOT NULL,
  `facebook_app_secret` varchar(64) NOT NULL,
  `show_tag_box` tinyint(1) NOT NULL,
  `show_hide_custom_post` tinyint(1) NOT NULL,
  `show_hide_post_meta` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_bwg_option`
--

INSERT INTO `wp_bwg_option` (`id`, `images_directory`, `masonry`, `mosaic`, `resizable_mosaic`, `mosaic_total_width`, `image_column_number`, `images_per_page`, `thumb_width`, `thumb_height`, `upload_thumb_width`, `upload_thumb_height`, `image_enable_page`, `image_title_show_hover`, `album_column_number`, `albums_per_page`, `album_title_show_hover`, `album_thumb_width`, `album_thumb_height`, `album_enable_page`, `extended_album_height`, `extended_album_description_enable`, `image_browser_width`, `image_browser_title_enable`, `image_browser_description_enable`, `blog_style_width`, `blog_style_title_enable`, `blog_style_images_per_page`, `blog_style_enable_page`, `slideshow_type`, `slideshow_interval`, `slideshow_width`, `slideshow_height`, `slideshow_enable_autoplay`, `slideshow_enable_shuffle`, `slideshow_enable_ctrl`, `slideshow_enable_filmstrip`, `slideshow_filmstrip_height`, `slideshow_enable_title`, `slideshow_title_position`, `slideshow_enable_description`, `slideshow_description_position`, `slideshow_enable_music`, `slideshow_audio_url`, `popup_width`, `popup_height`, `popup_type`, `popup_interval`, `popup_enable_filmstrip`, `popup_filmstrip_height`, `popup_enable_ctrl_btn`, `popup_enable_fullscreen`, `popup_enable_info`, `popup_info_always_show`, `popup_enable_rate`, `popup_enable_comment`, `popup_enable_email`, `popup_enable_captcha`, `popup_enable_download`, `popup_enable_fullsize_image`, `popup_enable_facebook`, `popup_enable_twitter`, `popup_enable_google`, `watermark_type`, `watermark_position`, `watermark_width`, `watermark_height`, `watermark_url`, `watermark_text`, `watermark_link`, `watermark_font_size`, `watermark_font`, `watermark_color`, `watermark_opacity`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `image_right_click`, `popup_fullscreen`, `gallery_role`, `album_role`, `image_role`, `popup_autoplay`, `album_view_type`, `popup_enable_pinterest`, `popup_enable_tumblr`, `show_search_box`, `search_box_width`, `preload_images`, `preload_images_count`, `thumb_click_action`, `thumb_link_target`, `comment_moderation`, `popup_hit_counter`, `enable_ML_import`, `showthumbs_name`, `show_album_name`, `show_image_counts`, `upload_img_width`, `upload_img_height`, `play_icon`, `show_masonry_thumb_description`, `slideshow_title_full_width`, `popup_info_full_width`, `show_sort_images`, `autoupdate_interval`, `instagram_access_token`, `description_tb`, `enable_seo`, `autohide_lightbox_navigation`, `autohide_slideshow_navigation`, `read_metadata`, `enable_loop`, `enable_addthis`, `addthis_profile_id`, `carousel_interval`, `carousel_width`, `carousel_height`, `carousel_image_column_number`, `carousel_image_par`, `carousel_enable_title`, `carousel_enable_autoplay`, `carousel_r_width`, `carousel_fit_containerWidth`, `carousel_prev_next_butt`, `carousel_play_pause_butt`, `permissions`, `facebook_app_id`, `facebook_app_secret`, `show_tag_box`, `show_hide_custom_post`, `show_hide_post_meta`) VALUES
(1, 'wp-content/uploads', 'vertical', 'vertical', 0, 100, 5, 30, 180, 90, 300, 300, 1, 'none', 5, 30, 'hover', 120, 90, 1, 150, 1, 800, 1, 1, 800, 1, 5, 1, 'fade', 5, 800, 500, 0, 0, 1, 1, 90, 0, 'top-right', 0, 'bottom-right', 0, '', 800, 500, 'fade', 5, 1, 70, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 'none', 'bottom-left', 90, 90, 'http://localhost/kingstonston/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 'https://web-dorado.com', 20, 'arial', 'FFFFFF', 30, 'none', 'middle-center', 15, 'http://localhost/kingstonston/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 20, 'arial', 'FFFFFF', 30, 0, 0, 0, 0, 0, 0, 'thumbnail', 0, 0, 0, 180, 0, 10, 'open_lightbox', 1, 0, 0, 0, 0, 0, 0, 1200, 1200, 1, 0, 0, 0, 0, 30, '', 0, 1, 1, 1, 1, 1, 0, '', 5, 300, 300, 5, '0.75', 0, 0, 800, 1, 1, 1, 'manage_options', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_shortcode`
--

DROP TABLE IF EXISTS `wp_bwg_shortcode`;
CREATE TABLE IF NOT EXISTS `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_shortcode`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_theme`
--

DROP TABLE IF EXISTS `wp_bwg_theme`;
CREATE TABLE IF NOT EXISTS `wp_bwg_theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` longtext NOT NULL,
  `default_theme` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Theme 1', '{"thumb_margin":4,"thumb_padding":0,"thumb_border_radius":"0","thumb_border_width":0,"thumb_border_style":"none","thumb_border_color":"CCCCCC","thumb_bg_color":"FFFFFF","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"0px 0px 0px #888888","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"scale","thumb_hover_effect_value":"1.1","thumb_transition":1,"thumb_title_font_color":"CCCCCC","thumb_title_font_style":"segoe ui","thumb_title_pos":"bottom","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_title_margin":"2px","thumb_title_shadow":"0px 0px 0px #888888","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"segoe ui","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"solid","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FFFFFF","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_overlay_bg_color":"000000","lightbox_overlay_bg_transparent":70,"lightbox_bg_color":"000000","lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":100,"lightbox_ctrl_btn_color":"FFFFFF","lightbox_toggle_btn_height":14,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"000000","lightbox_ctrl_cont_transparent":65,"lightbox_ctrl_cont_border_radius":4,"lightbox_close_btn_transparent":100,"lightbox_close_btn_bg_color":"000000","lightbox_close_btn_border_width":2,"lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"0","lightbox_close_btn_color":"FFFFFF","lightbox_close_btn_size":10,"lightbox_close_btn_width":20,"lightbox_close_btn_height":20,"lightbox_close_btn_top":"-10","lightbox_close_btn_right":"-10","lightbox_close_btn_full_color":"FFFFFF","lightbox_rl_btn_bg_color":"000000","lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":0,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"FFFFFF","lightbox_rl_btn_height":40,"lightbox_rl_btn_width":40,"lightbox_rl_btn_size":20,"lightbox_close_rl_btn_hover_color":"CCCCCC","lightbox_comment_pos":"left","lightbox_comment_width":400,"lightbox_comment_bg_color":"000000","lightbox_comment_font_color":"CCCCCC","lightbox_comment_font_style":"segoe ui","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"616161","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"3px","lightbox_comment_button_padding":"3px 10px","lightbox_comment_input_bg_color":"333333","lightbox_comment_input_border_color":"666666","lightbox_comment_input_border_width":1,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"0","lightbox_comment_input_padding":"2px","lightbox_comment_separator_width":1,"lightbox_comment_separator_style":"solid","lightbox_comment_separator_color":"383838","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"CCCCCC","lightbox_filmstrip_pos":"top","lightbox_filmstrip_rl_bg_color":"3B3B3B","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"FFFFFF","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"solid","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_rl_btn_style":"fa-chevron","lightbox_rl_btn_transparent":80,"album_compact_back_font_color":"000000","album_compact_back_font_style":"segoe ui","album_compact_back_font_size":16,"album_compact_back_font_weight":"bold","album_compact_back_padding":"0","album_compact_title_font_color":"CCCCCC","album_compact_title_font_style":"segoe ui","album_compact_thumb_title_pos":"bottom","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_title_margin":"2px","album_compact_title_shadow":"0px 0px 0px #888888","album_compact_thumb_margin":4,"album_compact_thumb_padding":0,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":0,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"CCCCCC","album_compact_thumb_bg_color":"FFFFFF","album_compact_thumbs_bg_color":"FFFFFF","album_compact_thumb_bg_transparent":0,"album_compact_thumb_box_shadow":"0px 0px 0px #888888","album_compact_thumb_transparent":100,"album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"scale","album_compact_thumb_hover_effect_value":"1.1","album_compact_thumb_transition":0,"album_extended_thumb_margin":2,"album_extended_thumb_padding":0,"album_extended_thumb_border_radius":"0","album_extended_thumb_border_width":0,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"CCCCCC","album_extended_thumb_bg_color":"FFFFFF","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":0,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"scale","album_extended_thumb_hover_effect_value":"1.1","album_extended_thumb_transition":0,"album_extended_back_font_color":"000000","album_extended_back_font_style":"segoe ui","album_extended_back_font_size":20,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FFFFFF","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"0 0 0 0","album_extended_div_margin":"0 0 5px 0","album_extended_div_padding":10,"album_extended_div_separator_width":1,"album_extended_div_separator_style":"solid","album_extended_div_separator_color":"E0E0E0","album_extended_thumb_div_bg_color":"FFFFFF","album_extended_thumb_div_border_radius":"0","album_extended_thumb_div_border_width":1,"album_extended_thumb_div_border_style":"solid","album_extended_thumb_div_border_color":"E8E8E8","album_extended_thumb_div_padding":"5px","album_extended_text_div_bg_color":"FFFFFF","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":1,"album_extended_text_div_border_style":"solid","album_extended_text_div_border_color":"E8E8E8","album_extended_text_div_padding":"5px","album_extended_title_span_border_width":1,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"segoe ui","album_extended_title_font_size":16,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":2,"album_extended_title_padding":"2px","album_extended_desc_span_border_width":1,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"000000","album_extended_desc_font_style":"segoe ui","album_extended_desc_font_size":14,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"2px","album_extended_desc_more_color":"F2D22E","album_extended_desc_more_size":12,"masonry_thumb_padding":4,"masonry_thumb_border_radius":"0","masonry_thumb_border_width":0,"masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":0,"masonry_thumb_transparent":100,"masonry_thumb_align":"center","masonry_thumb_hover_effect":"scale","masonry_thumb_hover_effect_value":"1.1","masonry_thumb_transition":0,"slideshow_cont_bg_color":"000000","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"000000","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"0px 0px 0px #000000","slideshow_rl_btn_color":"FFFFFF","slideshow_rl_btn_height":40,"slideshow_rl_btn_size":20,"slideshow_rl_btn_width":40,"slideshow_close_rl_btn_hover_color":"CCCCCC","slideshow_filmstrip_pos":"top","slideshow_filmstrip_thumb_border_width":1,"slideshow_filmstrip_thumb_border_style":"solid","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0 1px","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":80,"slideshow_filmstrip_rl_bg_color":"3B3B3B","slideshow_filmstrip_rl_btn_color":"FFFFFF","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"segoe ui","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"0 0 0 0","slideshow_description_font_size":14,"slideshow_description_font":"segoe ui","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":12,"slideshow_dots_height":12,"slideshow_dots_border_radius":"5px","slideshow_dots_background_color":"F2D22E","slideshow_dots_margin":3,"slideshow_dots_active_background_color":"FFFFFF","slideshow_dots_active_border_width":1,"slideshow_dots_active_border_color":"000000","slideshow_play_pause_btn_size":60,"slideshow_rl_btn_style":"fa-chevron","blog_style_margin":"2px","blog_style_padding":"0","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"solid","blog_style_border_color":"F5F5F5","blog_style_bg_color":"FFFFFF","blog_style_transparent":80,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"segoe ui","blog_style_img_font_color":"000000","blog_style_share_buttons_color":"B3AFAF","blog_style_share_buttons_bg_transparent":0,"blog_style_share_buttons_font_size":20,"image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"0","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"F5F5F5","image_browser_bg_color":"EBEBEB","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"0px 5px 0px 5px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"EBEBEB","image_browser_image_description_align":"center","image_browser_img_font_size":15,"image_browser_img_font_family":"segoe ui","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":2,"image_browser_full_border_style":"none","image_browser_full_border_color":"F7F7F7","image_browser_full_bg_color":"F5F5F5","image_browser_full_transparent":90,"lightbox_info_pos":"top","lightbox_info_align":"right","lightbox_info_bg_color":"000000","lightbox_info_bg_transparent":70,"lightbox_info_border_width":1,"lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"5px","lightbox_info_padding":"5px","lightbox_info_margin":"15px","lightbox_title_color":"FFFFFF","lightbox_title_font_style":"segoe ui","lightbox_title_font_weight":"bold","lightbox_title_font_size":18,"lightbox_description_color":"FFFFFF","lightbox_description_font_style":"segoe ui","lightbox_description_font_weight":"normal","lightbox_description_font_size":14,"lightbox_rate_pos":"bottom","lightbox_rate_align":"right","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":20,"lightbox_rate_stars_count":5,"lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":70,"lightbox_hit_border_width":1,"lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"segoe ui","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"masonry_description_font_size":12,"masonry_description_color":"CCCCCC","masonry_description_font_style":"segoe ui","album_masonry_back_font_color":"000000","album_masonry_back_font_style":"segoe ui","album_masonry_back_font_size":16,"album_masonry_back_font_weight":"bold","album_masonry_back_padding":"0","album_masonry_title_font_color":"CCCCCC","album_masonry_title_font_style":"segoe ui","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"2px","album_masonry_title_shadow":"0px 0px 0px #888888","album_masonry_thumb_margin":4,"album_masonry_thumb_padding":0,"album_masonry_thumb_border_radius":"0","album_masonry_thumb_border_width":0,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"CCCCCC","album_masonry_thumb_bg_color":"FFFFFF","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":0,"album_masonry_thumb_box_shadow":"0px 0px 0px #888888","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"scale","album_masonry_thumb_hover_effect_value":"1.1","album_masonry_thumb_transition":0,"mosaic_thumb_padding":4,"mosaic_thumb_border_radius":"0","mosaic_thumb_border_width":0,"mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":0,"mosaic_thumb_transparent":100,"mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"scale","mosaic_thumb_hover_effect_value":"1.1","mosaic_thumb_title_font_color":"CCCCCC","mosaic_thumb_title_font_style":"segoe ui","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_shadow":"0px 0px 0px #888888","mosaic_thumb_title_font_size":16,"carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":100,"carousel_rl_btn_bg_color":"000000","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"FFFFFF","carousel_rl_btn_height":40,"carousel_rl_btn_size":20,"carousel_play_pause_btn_size":20,"carousel_rl_btn_width":40,"carousel_close_rl_btn_hover_color":"CCCCCC","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"Arial","carousel_feature_border_width":2,"carousel_feature_border_style":"solid","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"white","carousel_title_opacity":100,"carousel_title_border_radius":"5px","mosaic_thumb_transition":1}', 1),
(2, 'Theme 2', '{"thumb_margin":4,"thumb_padding":4,"thumb_border_radius":"0","thumb_border_width":5,"thumb_border_style":"none","thumb_border_color":"FFFFFF","thumb_bg_color":"E8E8E8","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"0px 0px 0px #888888","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"rotate","thumb_hover_effect_value":"2deg","thumb_transition":1,"thumb_title_font_color":"CCCCCC","thumb_title_font_style":"segoe ui","thumb_title_pos":"bottom","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_title_margin":"5px","thumb_title_shadow":"","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"segoe ui","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"none","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FCFCFC","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_overlay_bg_color":"000000","lightbox_overlay_bg_transparent":70,"lightbox_bg_color":"000000","lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":80,"lightbox_ctrl_btn_color":"FFFFFF","lightbox_toggle_btn_height":14,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"000000","lightbox_ctrl_cont_transparent":80,"lightbox_ctrl_cont_border_radius":4,"lightbox_close_btn_transparent":95,"lightbox_close_btn_bg_color":"000000","lightbox_close_btn_border_width":0,"lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"","lightbox_close_btn_color":"FFFFFF","lightbox_close_btn_size":10,"lightbox_close_btn_width":20,"lightbox_close_btn_height":20,"lightbox_close_btn_top":"-10","lightbox_close_btn_right":"-10","lightbox_close_btn_full_color":"FFFFFF","lightbox_rl_btn_bg_color":"000000","lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":2,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"FFFFFF","lightbox_rl_btn_height":40,"lightbox_rl_btn_width":40,"lightbox_rl_btn_size":20,"lightbox_close_rl_btn_hover_color":"FFFFFF","lightbox_comment_pos":"left","lightbox_comment_width":400,"lightbox_comment_bg_color":"000000","lightbox_comment_font_color":"CCCCCC","lightbox_comment_font_style":"arial","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"333333","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"3px","lightbox_comment_button_padding":"3px 10px","lightbox_comment_input_bg_color":"333333","lightbox_comment_input_border_color":"666666","lightbox_comment_input_border_width":1,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"0","lightbox_comment_input_padding":"3px","lightbox_comment_separator_width":1,"lightbox_comment_separator_style":"solid","lightbox_comment_separator_color":"2B2B2B","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"FFFFFF","lightbox_filmstrip_pos":"top","lightbox_filmstrip_rl_bg_color":"2B2B2B","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"FFFFFF","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"none","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_rl_btn_style":"fa-chevron","lightbox_rl_btn_transparent":80,"album_compact_back_font_color":"000000","album_compact_back_font_style":"segoe ui","album_compact_back_font_size":14,"album_compact_back_font_weight":"normal","album_compact_back_padding":"0","album_compact_title_font_color":"CCCCCC","album_compact_title_font_style":"segoe ui","album_compact_thumb_title_pos":"bottom","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_title_margin":"5px","album_compact_title_shadow":"","album_compact_thumb_margin":4,"album_compact_thumb_padding":4,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":1,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"000000","album_compact_thumb_bg_color":"E8E8E8","album_compact_thumbs_bg_color":"FFFFFF","album_compact_thumb_bg_transparent":100,"album_compact_thumb_box_shadow":"","album_compact_thumb_transparent":100,"album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"rotate","album_compact_thumb_hover_effect_value":"2deg","album_compact_thumb_transition":1,"album_extended_thumb_margin":2,"album_extended_thumb_padding":4,"album_extended_thumb_border_radius":"0","album_extended_thumb_border_width":4,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"E8E8E8","album_extended_thumb_bg_color":"E8E8E8","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":100,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"rotate","album_extended_thumb_hover_effect_value":"2deg","album_extended_thumb_transition":0,"album_extended_back_font_color":"000000","album_extended_back_font_style":"segoe ui","album_extended_back_font_size":16,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FFFFFF","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"0","album_extended_div_margin":"0 0 5px 0","album_extended_div_padding":10,"album_extended_div_separator_width":1,"album_extended_div_separator_style":"none","album_extended_div_separator_color":"CCCCCC","album_extended_thumb_div_bg_color":"FFFFFF","album_extended_thumb_div_border_radius":"0","album_extended_thumb_div_border_width":0,"album_extended_thumb_div_border_style":"none","album_extended_thumb_div_border_color":"CCCCCC","album_extended_thumb_div_padding":"0","album_extended_text_div_bg_color":"FFFFFF","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":1,"album_extended_text_div_border_style":"none","album_extended_text_div_border_color":"CCCCCC","album_extended_text_div_padding":"5px","album_extended_title_span_border_width":1,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"segoe ui","album_extended_title_font_size":16,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":2,"album_extended_title_padding":"2px","album_extended_desc_span_border_width":1,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"000000","album_extended_desc_font_style":"segoe ui","album_extended_desc_font_size":14,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"2px","album_extended_desc_more_color":"FFC933","album_extended_desc_more_size":12,"masonry_thumb_padding":4,"masonry_thumb_border_radius":"2px","masonry_thumb_border_width":1,"masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":0,"masonry_thumb_transparent":80,"masonry_thumb_align":"center","masonry_thumb_hover_effect":"rotate","masonry_thumb_hover_effect_value":"2deg","masonry_thumb_transition":0,"slideshow_cont_bg_color":"000000","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"000000","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"","slideshow_rl_btn_color":"FFFFFF","slideshow_rl_btn_height":40,"slideshow_rl_btn_size":20,"slideshow_rl_btn_width":40,"slideshow_close_rl_btn_hover_color":"DBDBDB","slideshow_filmstrip_pos":"bottom","slideshow_filmstrip_thumb_border_width":1,"slideshow_filmstrip_thumb_border_style":"none","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0 1px","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":80,"slideshow_filmstrip_rl_bg_color":"303030","slideshow_filmstrip_rl_btn_color":"FFFFFF","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"segoe ui","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"5px 10px 5px 10px","slideshow_description_font_size":14,"slideshow_description_font":"segoe ui","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":10,"slideshow_dots_height":10,"slideshow_dots_border_radius":"10px","slideshow_dots_background_color":"292929","slideshow_dots_margin":1,"slideshow_dots_active_background_color":"292929","slideshow_dots_active_border_width":2,"slideshow_dots_active_border_color":"FFC933","slideshow_play_pause_btn_size":60,"slideshow_rl_btn_style":"fa-chevron","blog_style_margin":"2px","blog_style_padding":"4px","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"none","blog_style_border_color":"CCCCCC","blog_style_bg_color":"E8E8E8","blog_style_transparent":70,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"segoe ui","blog_style_img_font_color":"000000","blog_style_share_buttons_color":"A1A1A1","blog_style_share_buttons_bg_transparent":0,"blog_style_share_buttons_font_size":20,"image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"2px","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"E8E8E8","image_browser_bg_color":"E8E8E8","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"24px 0px 0px 0px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"E8E8E8","image_browser_image_description_align":"center","image_browser_img_font_size":14,"image_browser_img_font_family":"segoe ui","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":1,"image_browser_full_border_style":"solid","image_browser_full_border_color":"EDEDED","image_browser_full_bg_color":"FFFFFF","image_browser_full_transparent":90,"lightbox_info_pos":"top","lightbox_info_align":"right","lightbox_info_bg_color":"000000","lightbox_info_bg_transparent":70,"lightbox_info_border_width":1,"lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"5px","lightbox_info_padding":"5px","lightbox_info_margin":"15px","lightbox_title_color":"FFFFFF","lightbox_title_font_style":"segoe ui","lightbox_title_font_weight":"bold","lightbox_title_font_size":18,"lightbox_description_color":"FFFFFF","lightbox_description_font_style":"segoe ui","lightbox_description_font_weight":"normal","lightbox_description_font_size":14,"lightbox_rate_pos":"bottom","lightbox_rate_align":"right","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":20,"lightbox_rate_stars_count":5,"lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":70,"lightbox_hit_border_width":1,"lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"segoe ui","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"masonry_description_font_size":12,"masonry_description_color":"CCCCCC","masonry_description_font_style":"segoe ui","album_masonry_back_font_color":"000000","album_masonry_back_font_style":"segoe ui","album_masonry_back_font_size":14,"album_masonry_back_font_weight":"normal","album_masonry_back_padding":"0","album_masonry_title_font_color":"CCCCCC","album_masonry_title_font_style":"segoe ui","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"5px","album_masonry_title_shadow":"","album_masonry_thumb_margin":4,"album_masonry_thumb_padding":4,"album_masonry_thumb_border_radius":"0","album_masonry_thumb_border_width":1,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"000000","album_masonry_thumb_bg_color":"E8E8E8","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":100,"album_masonry_thumb_box_shadow":"","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"rotate","album_masonry_thumb_hover_effect_value":"2deg","album_masonry_thumb_transition":1,"mosaic_thumb_padding":4,"mosaic_thumb_border_radius":"2px","mosaic_thumb_border_width":1,"mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":0,"mosaic_thumb_transparent":80,"mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"rotate","mosaic_thumb_hover_effect_value":"2deg","mosaic_thumb_title_font_color":"CCCCCC","mosaic_thumb_title_font_style":"segoe ui","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_shadow":"0px 0px 0px #888888","mosaic_thumb_title_font_size":16,"carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":100,"carousel_rl_btn_bg_color":"000000","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"FFFFFF","carousel_rl_btn_height":40,"carousel_rl_btn_size":20,"carousel_play_pause_btn_size":20,"carousel_rl_btn_width":40,"carousel_close_rl_btn_hover_color":"CCCCCC","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"Arial","carousel_feature_border_width":2,"carousel_feature_border_style":"solid","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"white","carousel_title_opacity":100,"carousel_title_border_radius":"5px","default_theme":0,"mosaic_thumb_transition":1}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-12-16 02:34:17', '2015-12-16 02:34:17', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_eo_events`
--

DROP TABLE IF EXISTS `wp_eo_events`;
CREATE TABLE IF NOT EXISTS `wp_eo_events` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `FinishTime` time NOT NULL,
  `event_occurrence` bigint(20) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `StartDate` (`StartDate`),
  KEY `EndDate` (`EndDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_eo_events`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_eo_venuemeta`
--

DROP TABLE IF EXISTS `wp_eo_venuemeta`;
CREATE TABLE IF NOT EXISTS `wp_eo_venuemeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `eo_venue_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `eo_venue_id` (`eo_venue_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_eo_venuemeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itgallery_gallerys`
--

DROP TABLE IF EXISTS `wp_huge_itgallery_gallerys`;
CREATE TABLE IF NOT EXISTS `wp_huge_itgallery_gallerys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) unsigned DEFAULT NULL,
  `sl_width` int(11) unsigned DEFAULT NULL,
  `pause_on_hover` text,
  `gallery_list_effects_s` text,
  `description` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text,
  `huge_it_sl_effects` text NOT NULL,
  `display_type` int(11) DEFAULT '2',
  `content_per_page` int(11) DEFAULT '5',
  `rating` varchar(15) NOT NULL DEFAULT 'off',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_huge_itgallery_gallerys`
--

INSERT INTO `wp_huge_itgallery_gallerys` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `gallery_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `huge_it_sl_effects`, `display_type`, `content_per_page`, `rating`) VALUES
(1, 'My First Gallery', 375, 600, 'on', 'random', '4000', '1000', 'center', 1, '300', '5', 2, 5, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itgallery_images`
--

DROP TABLE IF EXISTS `wp_huge_itgallery_images`;
CREATE TABLE IF NOT EXISTS `wp_huge_itgallery_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `gallery_id` varchar(200) DEFAULT NULL,
  `description` text,
  `image_url` text,
  `sl_url` text,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned DEFAULT NULL,
  `published_in_sl_width` tinyint(4) unsigned DEFAULT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  `dislike` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_huge_itgallery_images`
--

INSERT INTO `wp_huge_itgallery_images` (`id`, `name`, `gallery_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `ordering`, `published`, `published_in_sl_width`, `like`, `dislike`) VALUES
(1, 'Rocky Balboa', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/1.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 0, 1, NULL, 0, 0),
(2, 'Skiing alone', '1', '<ul><li>lorem ipsumdolor sit amet</li><li>lorem ipsum dolor sit amet</li></ul><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/2.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 1, 1, NULL, 0, 0),
(3, 'Summer dreams', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/3.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 2, 1, NULL, 0, 0),
(4, 'Mr. Cosmo Kramer', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><h6>Dolor sit amet</h6><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/4.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 3, 1, NULL, 0, 0),
(5, 'Edgar Allan Poe', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/5.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 4, 1, NULL, 0, 0),
(6, 'Fix the moment !', '1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/6.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 5, 1, NULL, 0, 0),
(7, 'Lions eyes', '1', '<h6>Lorem Ipsum</h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/7.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 6, 1, NULL, 0, 0),
(8, 'Photo with exposure', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/8.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 7, 1, NULL, 0, 0),
(9, 'Travel with music', '1', '<h6>Lorem Ipsum </h6><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><ul><li>lorem ipsum</li><li>dolor sit amet</li><li>lorem ipsum</li><li>dolor sit amet</li></ul>', 'http://localhost/kingston/wp-content/plugins/gallery-images/Front_images/projects/9.jpg', 'http://huge-it.com/fields/order-website-maintenance/', 'image', 'on', 7, 1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_huge_itgallery_like_dislike`
--

DROP TABLE IF EXISTS `wp_huge_itgallery_like_dislike`;
CREATE TABLE IF NOT EXISTS `wp_huge_itgallery_like_dislike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `image_status` varchar(10) NOT NULL,
  `ip` varchar(35) NOT NULL,
  `cook` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_huge_itgallery_like_dislike`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_masterslider_options`
--

DROP TABLE IF EXISTS `wp_masterslider_options`;
CREATE TABLE IF NOT EXISTS `wp_masterslider_options` (
  `ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(120) NOT NULL,
  `option_value` text NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_masterslider_options`
--

INSERT INTO `wp_masterslider_options` (`ID`, `option_name`, `option_value`) VALUES
(1, 'masterslider_custom_css_ver', '1.5');

-- --------------------------------------------------------

--
-- Table structure for table `wp_masterslider_sliders`
--

DROP TABLE IF EXISTS `wp_masterslider_sliders`;
CREATE TABLE IF NOT EXISTS `wp_masterslider_sliders` (
  `ID` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `type` varchar(64) NOT NULL,
  `slides_num` smallint(5) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` mediumtext NOT NULL,
  `custom_styles` text NOT NULL,
  `custom_fonts` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'draft',
  PRIMARY KEY (`ID`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_masterslider_sliders`
--

INSERT INTO `wp_masterslider_sliders` (`ID`, `title`, `type`, `slides_num`, `date_created`, `date_modified`, `params`, `custom_styles`, `custom_fonts`, `status`) VALUES
(1, 'Campus Drive', 'custom', 9, '2016-01-03 07:53:58', '2016-01-03 09:33:23', 'eyJtZXRhIjp7IlNldHRpbmdzIWlkcyI6IjEiLCJTZXR0aW5ncyFuZXh0SWQiOjIsIlNsaWRlIWlkcyI6IjEsMiwzLDQsNSw2LDcsOCw5IiwiU2xpZGUhbmV4dElkIjoxMH0sIk1TUGFuZWwuU2V0dGluZ3MiOnsiMSI6IntcImlkXCI6XCIxXCIsXCJzbmFwcGluZ1wiOnRydWUsXCJkaXNhYmxlQ29udHJvbHNcIjpmYWxzZSxcIm5hbWVcIjpcIkNhbXB1cyBEcml2ZVwiLFwid2lkdGhcIjoyMDEsXCJoZWlnaHRcIjoxNDIsXCJ3cmFwcGVyV2lkdGhVbml0XCI6XCJweFwiLFwiYXV0b0Nyb3BcIjpmYWxzZSxcInR5cGVcIjpcImN1c3RvbVwiLFwic2xpZGVySWRcIjpcIjFcIixcImxheW91dFwiOlwiYm94ZWRcIixcImF1dG9IZWlnaHRcIjpmYWxzZSxcInRyVmlld1wiOlwiYmFzaWNcIixcInNwZWVkXCI6MTAsXCJzcGFjZVwiOjAsXCJzdGFydFwiOlwiMVwiLFwiZ3JhYkN1cnNvclwiOlwiMVwiLFwic3dpcGVcIjpcIjFcIixcIm1vdXNlXCI6XCIxXCIsXCJ3aGVlbFwiOlwiXCIsXCJhdXRvcGxheVwiOnRydWUsXCJsb29wXCI6dHJ1ZSxcInNodWZmbGVcIjpcIlwiLFwicHJlbG9hZFwiOlwiLTFcIixcIm92ZXJQYXVzZVwiOlwiMVwiLFwiZW5kUGF1c2VcIjpcIlwiLFwiaGlkZUxheWVyc1wiOlwiXCIsXCJkaXJcIjpcImhcIixcInBhcmFsbGF4TW9kZVwiOlwic3dpcGVcIixcInVzZURlZXBMaW5rXCI6ZmFsc2UsXCJkZWVwTGlua1R5cGVcIjpcInBhdGhcIixcInN0YXJ0T25BcHBlYXJcIjp0cnVlLFwic2Nyb2xsUGFyYWxsYXhNb3ZlXCI6MzAsXCJzY3JvbGxQYXJhbGxheEJHTW92ZVwiOjUwLFwic2Nyb2xsUGFyYWxsYXhGYWRlXCI6dHJ1ZSxcImNlbnRlckNvbnRyb2xzXCI6XCIxXCIsXCJpbnN0YW50U2hvd0xheWVyc1wiOlwiXCIsXCJjbGFzc05hbWVcIjpcIlwiLFwic2tpblwiOlwibXMtc2tpbi1kZWZhdWx0XCIsXCJtc1RlbXBsYXRlXCI6XCJjdXN0b21cIixcIm1zVGVtcGxhdGVDbGFzc1wiOlwiXCIsXCJ1c2VkRm9udHNcIjpcIlwifSJ9LCJNU1BhbmVsLlNsaWRlIjp7IjEiOiJ7XCJpZFwiOlwiMVwiLFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDE2LzAxL2F2ZXJ5LTE1MHgxNDIucG5nXCIsXCJvcmRlclwiOjAsXCJiZ1wiOlwiLzIwMTYvMDEvYXZlcnkucG5nXCIsXCJkdXJhdGlvblwiOlwiM1wiLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjpcIjFcIixcImJndl9tdXRlXCI6XCIxXCIsXCJiZ3ZfYXV0b3BhdXNlXCI6XCJcIixcImJnQWx0XCI6XCJcIixcImxheWVyX2lkc1wiOltdfSIsIjIiOiJ7XCJpZFwiOjIsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTYvMDEvaWJtLTE1MHgxNDIucG5nXCIsXCJvcmRlclwiOjEsXCJiZ1wiOlwiLzIwMTYvMDEvaWJtLnBuZ1wiLFwiZHVyYXRpb25cIjpcIjNcIixcImZpbGxNb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfZmlsbG1vZGVcIjpcImZpbGxcIixcImJndl9sb29wXCI6XCIxXCIsXCJiZ3ZfbXV0ZVwiOlwiMVwiLFwiYmd2X2F1dG9wYXVzZVwiOlwiXCIsXCJiZ0FsdFwiOlwiXCIsXCJsYXllcl9pZHNcIjpbXX0iLCIzIjoie1wiaWRcIjozLFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDE2LzAxL2FjYy0xNTB4MTQyLnBuZ1wiLFwib3JkZXJcIjoyLFwiYmdcIjpcIi8yMDE2LzAxL2FjYy5wbmdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwibGF5ZXJfaWRzXCI6W119IiwiNCI6IntcImlkXCI6NCxcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAxNi8wMS9icHQtMTUweDE0Mi5wbmdcIixcIm9yZGVyXCI6MyxcImJnXCI6XCIvMjAxNi8wMS9icHQucG5nXCIsXCJkdXJhdGlvblwiOlwiM1wiLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjpcIjFcIixcImJndl9tdXRlXCI6XCIxXCIsXCJiZ3ZfYXV0b3BhdXNlXCI6XCJcIixcImJnQWx0XCI6XCJcIixcImxheWVyX2lkc1wiOltdfSIsIjUiOiJ7XCJpZFwiOjUsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTYvMDEvY2hlbXRleC0xNTB4MTQyLnBuZ1wiLFwib3JkZXJcIjo0LFwiYmdcIjpcIi8yMDE2LzAxL2NoZW10ZXgucG5nXCIsXCJkdXJhdGlvblwiOlwiM1wiLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjpcIjFcIixcImJndl9tdXRlXCI6XCIxXCIsXCJiZ3ZfYXV0b3BhdXNlXCI6XCJcIixcImJnQWx0XCI6XCJcIixcImxheWVyX2lkc1wiOltdfSIsIjYiOiJ7XCJpZFwiOjYsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTYvMDEvZGVzY29uLTE1MHgxNDIucG5nXCIsXCJvcmRlclwiOjUsXCJiZ1wiOlwiLzIwMTYvMDEvZGVzY29uLnBuZ1wiLFwiZHVyYXRpb25cIjpcIjNcIixcImZpbGxNb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfZmlsbG1vZGVcIjpcImZpbGxcIixcImJndl9sb29wXCI6XCIxXCIsXCJiZ3ZfbXV0ZVwiOlwiMVwiLFwiYmd2X2F1dG9wYXVzZVwiOlwiXCIsXCJiZ0FsdFwiOlwiXCIsXCJsYXllcl9pZHNcIjpbXX0iLCI3Ijoie1wiaWRcIjo3LFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDE2LzAxL2hjbC0xNTB4MTQyLnBuZ1wiLFwib3JkZXJcIjo2LFwiYmdcIjpcIi8yMDE2LzAxL2hjbC5wbmdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwibGF5ZXJfaWRzXCI6W119IiwiOCI6IntcImlkXCI6OCxcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAxNi8wMS9tYWduZXQtMTUweDE0Mi5wbmdcIixcIm9yZGVyXCI6NyxcImJnXCI6XCIvMjAxNi8wMS9tYWduZXQucG5nXCIsXCJkdXJhdGlvblwiOlwiM1wiLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjpcIjFcIixcImJndl9tdXRlXCI6XCIxXCIsXCJiZ3ZfYXV0b3BhdXNlXCI6XCJcIixcImJnQWx0XCI6XCJcIixcImxheWVyX2lkc1wiOltdfSIsIjkiOiJ7XCJpZFwiOjksXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMTYvMDEvb2JyZW1iby0xNTB4MTQyLnBuZ1wiLFwib3JkZXJcIjo4LFwiYmdcIjpcIi8yMDE2LzAxL29icmVtYm8ucG5nXCIsXCJkdXJhdGlvblwiOlwiM1wiLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjpcIjFcIixcImJndl9tdXRlXCI6XCIxXCIsXCJiZ3ZfYXV0b3BhdXNlXCI6XCJcIixcImJnQWx0XCI6XCJcIixcImxheWVyX2lkc1wiOltdfSJ9fQ==', '', '', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=402 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/kingston/', 'yes'),
(2, 'home', 'http://localhost/kingston/', 'yes'),
(3, 'blogname', 'Kingston', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bikash.pal2000@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:35:"event-organiser/event-organiser.php";i:4;s:40:"external-links-widgets/bg-link-admin.php";i:5;s:31:"master-slider/master-slider.php";i:6;s:38:"php-execution-plugin/php_execution.php";i:7;s:40:"profile-builder-customizations/index.php";i:8;s:25:"profile-builder/index.php";i:9;s:27:"simple-press/sp-control.php";i:10;s:23:"user-meta/user-meta.php";}', 'yes'),
(247, 'eventorganiser_options', 'a:17:{s:8:"supports";a:8:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:6:"author";i:3;s:9:"thumbnail";i:4;s:7:"excerpt";i:5;s:13:"custom-fields";i:6;s:8:"comments";i:7;s:8:"eventtag";}s:14:"event_redirect";s:6:"events";s:10:"dateformat";s:5:"dd-mm";s:9:"prettyurl";i:1;s:9:"templates";i:1;s:9:"addtomenu";i:0;s:17:"excludefromsearch";i:0;s:8:"showpast";i:0;s:12:"group_events";s:0:"";s:9:"url_venue";s:13:"events/venues";s:7:"url_cat";s:15:"events/category";s:7:"url_tag";s:10:"events/tag";s:8:"navtitle";s:6:"Events";s:8:"eventtag";i:1;s:4:"feed";i:1;s:16:"runningisnotpast";i:0;s:13:"deleteexpired";i:0;}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'kingston', 'yes'),
(42, 'stylesheet', 'kingston', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '35700', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:5:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:129:"<div class="row">\r\n<div class="col-lg-12 col-md-12 col-sm-12">\r\n[contact-form-7 id="160" title="Admission Query"]\r\n</div>\r\n</div>";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:573:"<div class="row">\r\n        <div class="col-lg-12 col-md-12 col-sm-12">\r\n            <div class="map"><h2>WHERE WE ARE</h2>\r\n                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1841.4082897255228!2d88.41423239882693!3d22.623323599467565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f89f417450d265%3A0xa875f457f8457a71!2sKingston+Educational+Institute!5e0!3m2!1sen!2sin!4v1451239549427" width="100%" height="268px" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n				\r\n				</div>\r\n        </div>\r\n    </div><!-- 2nd row--> ";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:0:"";s:4:"text";s:391:"<div class="row">\r\n\r\n        <div class="col-lg-12 col-md-12 col-sm-12">\r\n            <div class="tie-up">\r\n                <div class="tie_head">\r\n                    <h2>OUR CAMPUS DRIVE</h2>\r\n                </div>\r\n                <div class="tie-up1 campus-box">\r\n                    [masterslider id="1"]\r\n                </div>\r\n            </div>\r\n        </div>\r\n       \r\n    </div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:3:{s:19:"captcha/captcha.php";s:20:"cptch_delete_options";s:35:"event-organiser/event-organiser.php";s:24:"eventorganiser_uninstall";s:40:"external-links-widgets/bg-link-admin.php";s:28:"bg_link_deactivate_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:88:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:11:"edit_events";b:1;s:14:"publish_events";b:1;s:13:"delete_events";b:1;s:18:"edit_others_events";b:1;s:20:"delete_others_events";b:1;s:19:"read_private_events";b:1;s:13:"manage_venues";b:1;s:23:"manage_event_categories";b:1;s:11:"execute_php";b:1;s:19:"access_masterslider";b:1;s:20:"publish_masterslider";b:1;s:19:"delete_masterslider";b:1;s:19:"create_masterslider";b:1;s:19:"export_masterslider";b:1;s:22:"duplicate_masterslider";b:1;s:18:"SPF Manage Options";b:0;s:17:"SPF Manage Forums";b:0;s:22:"SPF Manage User Groups";b:0;s:22:"SPF Manage Permissions";b:0;s:21:"SPF Manage Components";b:0;s:17:"SPF Manage Admins";b:0;s:16:"SPF Manage Users";b:0;s:19:"SPF Manage Profiles";b:0;s:18:"SPF Manage Toolbox";b:0;s:18:"SPF Manage Plugins";b:0;s:17:"SPF Manage Themes";b:0;s:22:"SPF Manage Integration";b:0;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:40:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:19:"access_masterslider";b:1;s:20:"publish_masterslider";b:1;s:19:"delete_masterslider";b:1;s:19:"create_masterslider";b:1;s:19:"export_masterslider";b:1;s:22:"duplicate_masterslider";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:16:"home_top_gallery";a:1:{i:0;s:27:"master-slider-main-widget-2";}s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:10:{i:1451816862;a:1:{s:14:"sph_stats_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1451831658;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451831659;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451836540;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451837369;a:1:{s:24:"user_meta_schedule_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451842061;a:1:{s:26:"sph_transient_cleanup_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451849460;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451874901;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1452017197;a:1:{s:13:"sph_news_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:16:"sp_news_interval";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(109, '_transient_random_seed', 'b910da79929368c3b99c8e4f246f7323', 'yes'),
(217, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1450920655;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(218, 'current_theme', '', 'yes'),
(219, 'theme_mods_kingston', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:0;s:6:"social";i:0;}}', 'yes'),
(181, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(182, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(183, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(184, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(185, 'widget_better-menu-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(186, 'widget_mk_post_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(187, 'widget_mk_page_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(396, '_site_transient_timeout_browser_72ccb266eb9276f497ef7e8eaecdaec0', '1452412424', 'yes'),
(397, '_site_transient_browser_72ccb266eb9276f497ef7e8eaecdaec0', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.0.2526.106";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(288, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1451156884', 'no'),
(289, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 09 Dec 2015 14:54:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.5-alpha-36079";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"WordPress 4.4 “Clifford', 'no'),
(290, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1451156884', 'no'),
(291, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1451113684', 'no'),
(292, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1451156894', 'no'),
(293, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1451156894', 'no'),
(301, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1451156898', 'no'),
(294, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1451113694', 'no'),
(302, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/12/clifford/''>WordPress 4.4 “Clifford', 'no'),
(308, 'masterslider_db_version', '1.03', 'yes'),
(309, 'masterslider_capabilities_added', '1', 'yes'),
(310, 'widget_master-slider-main-widget', 'a:2:{i:2;a:2:{s:5:"title";s:10:"fsdfsdfsdf";s:2:"id";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(311, 'msp_general_setting', '', 'yes'),
(312, 'msp_advanced', '', 'yes'),
(313, 'upgrade_to_pro', '', 'yes'),
(314, 'masterslider_lite_plugin_version', '2.7.1', 'yes'),
(318, 'cptui_post_types', 'a:1:{s:9:"highlight";a:23:{s:4:"name";s:9:"highlight";s:5:"label";s:10:"Highlights";s:14:"singular_label";s:9:"Highlight";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:7:"excerpt";}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(295, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1451156898', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(296, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 26 Dec 2015 06:57:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 13 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:27:"Your WordPress, Simplified.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Protect your WordPress site by hiding vital areas of your site, protecting access to important files, preventing brute-force login attempts, detecting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical user experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Sat, 26 Dec 2015 07:08:10 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Mon, 23 Apr 2007 20:08:06 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20151223162206";}', 'no'),
(297, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1451156898', 'no'),
(298, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1451113698', 'no'),
(299, '_transient_timeout_plugin_slugs', '1451898127', 'no'),
(300, '_transient_plugin_slugs', 'a:11:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:35:"event-organiser/event-organiser.php";i:4;s:40:"external-links-widgets/bg-link-admin.php";i:5;s:31:"master-slider/master-slider.php";i:6;s:38:"php-execution-plugin/php_execution.php";i:7;s:25:"profile-builder/index.php";i:8;s:40:"profile-builder-customizations/index.php";i:9;s:27:"simple-press/sp-control.php";i:10;s:23:"user-meta/user-meta.php";}', 'no'),
(169, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1450928236', 'no'),
(170, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2015/12/clifford/''>WordPress 4.4 “Clifford', 'no'),
(172, 'recently_activated', 'a:0:{}', 'yes'),
(173, 'cptch_options', 'a:32:{s:21:"plugin_option_version";s:5:"4.1.7";s:17:"plugin_db_version";s:3:"1.2";s:13:"cptch_str_key";a:2:{s:4:"time";i:1450920514;s:3:"key";s:32:"b0941a83a494cf3e116c69dbda0e0db0";}s:16:"cptch_login_form";s:1:"1";s:19:"cptch_register_form";s:1:"1";s:24:"cptch_lost_password_form";s:1:"1";s:19:"cptch_comments_form";s:1:"1";s:19:"cptch_hide_register";s:1:"1";s:18:"cptch_contact_form";s:1:"0";s:22:"cptch_math_action_plus";s:1:"1";s:23:"cptch_math_action_minus";s:1:"1";s:26:"cptch_math_action_increase";s:1:"1";s:16:"cptch_label_form";s:0:"";s:21:"cptch_required_symbol";s:1:"*";s:23:"cptch_error_empty_value";s:29:"Please enter a CAPTCHA value.";s:27:"cptch_error_incorrect_value";s:35:"Please enter a valid CAPTCHA value.";s:22:"cptch_error_time_limit";s:58:"Time limit is exhausted. Please enter CAPTCHA value again.";s:17:"whitelist_message";s:25:"You are in the white list";s:23:"cptch_difficulty_number";s:1:"1";s:21:"cptch_difficulty_word";s:1:"1";s:22:"cptch_difficulty_image";s:1:"0";s:13:"first_install";i:1450886257;s:23:"display_settings_notice";i:0;s:27:"display_notice_about_images";i:0;s:28:"use_limit_attempts_whitelist";i:0;s:21:"display_reload_button";i:1;s:13:"used_packages";a:0:{}s:14:"enlarge_images";i:0;s:18:"whitelist_is_empty";b:1;s:14:"use_time_limit";i:1;s:10:"time_limit";i:120;s:20:"hide_premium_options";i:0;}', 'yes'),
(174, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.3.1";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(175, 'kpg_stop_sp_reg_options', 'a:227:{s:11:"chkadminlog";s:1:"Y";s:6:"chkaws";s:1:"N";s:13:"chkcloudflare";s:1:"Y";s:9:"chkgcache";s:1:"Y";s:15:"chkgenallowlist";s:1:"N";s:9:"chkgoogle";s:1:"Y";s:16:"chkmiscallowlist";s:1:"Y";s:9:"chkpaypal";s:1:"Y";s:10:"chkscripts";s:1:"Y";s:10:"chkvalidip";s:1:"Y";s:7:"chkwlem";s:1:"Y";s:11:"chkwluserid";s:1:"N";s:8:"chkwlist";s:1:"Y";s:16:"chkyahoomerchant";s:1:"Y";s:8:"chkemail";s:1:"Y";s:5:"chkip";s:1:"Y";s:11:"chkcomments";s:1:"Y";s:9:"chksignup";s:1:"Y";s:9:"chkxmlrpc";s:1:"Y";s:9:"chkwpmail";s:1:"Y";s:14:"addtoallowlist";s:1:"Y";s:9:"wlreqmail";s:0:"";s:5:"wlreq";s:1:"Y";s:5:"redir";s:1:"N";s:10:"chkcaptcha";s:1:"Y";s:6:"chkxff";s:1:"N";s:6:"notify";s:1:"Y";s:8:"chkspoof";s:1:"N";s:6:"chk404";s:1:"Y";s:9:"chkaccept";s:1:"Y";s:8:"chkadmin";s:1:"Y";s:8:"chkagent";s:1:"Y";s:9:"chkamazon";s:1:"N";s:9:"chkbcache";s:1:"Y";s:7:"chkblem";s:1:"Y";s:11:"chkbluserid";s:1:"N";s:7:"chkblip";s:1:"Y";s:11:"chkbotscout";s:1:"Y";s:7:"chkdisp";s:1:"Y";s:8:"chkdnsbl";s:1:"Y";s:11:"chkexploits";s:1:"Y";s:13:"chkgooglesafe";s:1:"N";s:8:"chkhoney";s:1:"Y";s:10:"chkhosting";s:1:"Y";s:12:"chkinvalidip";s:1:"Y";s:7:"chklong";s:1:"Y";s:9:"chkbbcode";s:1:"Y";s:10:"chkreferer";s:1:"Y";s:10:"chksession";s:1:"Y";s:6:"chksfs";s:1:"Y";s:12:"chkspamwords";s:1:"Y";s:6:"chktld";s:1:"Y";s:11:"chkubiquity";s:1:"Y";s:10:"chkakismet";s:1:"Y";s:8:"chkmulti";s:1:"Y";s:9:"badagents";a:154:{i:0;s:6:"Abonti";i:1;s:10:"aggregator";i:2;s:9:"AhrefsBot";i:3;s:8:"asterias";i:4;s:6:"BDCbot";i:5;s:7:"BLEXBot";i:6;s:13:"BuiltBotTough";i:7;s:8:"Bullseye";i:8;s:13:"BunnySlippers";i:9;s:10:"ca-crawler";i:10;s:5:"CCBot";i:11;s:9:"Cegbfeieh";i:12;s:9:"CheeseBot";i:13;s:12:"CherryPicker";i:14;s:17:"CherryPickerElite";i:15;s:14:"CherryPickerSE";i:16;s:14:"CopyRightCheck";i:17;s:6:"cosmos";i:18;s:25:"Crescent Internet ToolPak";i:19;s:8:"Crescent";i:20;s:8:"discobot";i:21;s:11:"DittoSpyder";i:22;s:3:"DOC";i:23;s:6:"DotBot";i:24;s:14:"Download Ninja";i:25;s:11:"EasouSpider";i:26;s:14:"EmailCollector";i:27;s:11:"EmailSiphon";i:28;s:9:"EmailWolf";i:29;s:10:"EroCrawler";i:30;s:6:"Exabot";i:31;s:12:"ExtractorPro";i:32;s:9:"Fasterfox";i:33;s:11:"FeedBooster";i:34;s:6:"Foobot";i:35;s:6:"Genieo";i:36;s:11:"grub-client";i:37;s:7:"Harvest";i:38;s:7:"hloader";i:39;s:7:"httplib";i:40;s:7:"HTTrack";i:41;s:10:"humanlinks";i:42;s:15:"ieautodiscovery";i:43;s:13:"InfoNaviRobot";i:44;s:10:"IstellaBot";i:45;s:7:"Java/1.";i:46;s:8:"JennyBot";i:47;s:8:"k2spider";i:48;s:13:"Kenjin Spider";i:49;s:19:"Keyword Density/0.9";i:50;s:6:"larbin";i:51;s:7:"LexiBot";i:52;s:6:"libWeb";i:53;s:6:"libwww";i:54;s:16:"LinkextractorPro";i:55;s:5:"linko";i:56;s:18:"LinkScan/8.1a Unix";i:57;s:10:"LinkWalker";i:58;s:11:"LNSpiderguy";i:59;s:11:"lwp-trivial";i:60;s:11:"lwp-trivial";i:61;s:6:"magpie";i:62;s:9:"Mata Hari";i:63;s:15:"MaxPointCrawler";i:64;s:9:"MegaIndex";i:65;s:21:"Microsoft URL Control";i:66;s:6:"MIIxpc";i:67;s:6:"Mippin";i:68;s:16:"Missigua Locator";i:69;s:10:"Mister PiX";i:70;s:7:"MJ12bot";i:71;s:5:"moget";i:72;s:11:"MSIECrawler";i:73;s:7:"NetAnts";i:74;s:9:"NICErsPRO";i:75;s:8:"Niki-Bot";i:76;s:5:"NPBot";i:77;s:5:"Nutch";i:78;s:16:"Offline Explorer";i:79;s:21:"Openfind data gathere";i:80;s:8:"Openfind";i:81;s:13:"panscient.com";i:82;s:7:"PHP/5.{";i:83;s:16:"ProPowerBot/2.14";i:84;s:12:"ProWebWalker";i:85;s:13:"Python-urllib";i:86;s:17:"QueryN Metasearch";i:87;s:10:"RepoMonkey";i:88;s:10:"RepoMonkey";i:89;s:3:"RMA";i:90;s:10:"SemrushBot";i:91;s:10:"SeznamBot ";i:92;s:7:"SISTRIX";i:93;s:26:"sitecheck.Internetseer.com";i:94;s:11:"SiteSnagger";i:95;s:14:"SnapPreviewBot";i:96;s:5:"Sogou";i:97;s:8:"SpankBot";i:98;s:7:"spanner";i:99;s:5:"spbot";i:100;s:7:"Spinn3r";i:101;s:7:"suzuran";i:102;s:11:"Szukacz/1.4";i:103;s:17:"Teleport Pro/1.29";i:104;s:8:"Teleport";i:105;s:11:"TeleportPro";i:106;s:8:"Telesoft";i:107;s:16:"The Intraformant";i:108;s:8:"TheNomad";i:109;s:12:"TightTwatBot";i:110;s:5:"Titan";i:111;s:21:"toCrawl/UrlDispatcher";i:112;s:10:"True_Robot";i:113;s:14:"True_Robot/1.0";i:114;s:8:"turingos";i:115;s:11:"TurnitinBot";i:116;s:10:"UbiCrawler";i:117;s:10:"UnisterBot";i:118;s:12:"URLy Warning";i:119;s:33:"VCI WebViewer VCI WebViewer Win32";i:120;s:3:"VCI";i:121;s:11:"WBSearchBot";i:122;s:18:"Web Downloader/6.9";i:123;s:19:"Web Image Collector";i:124;s:7:"WebAuto";i:125;s:9:"WebBandit";i:126;s:14:"WebBandit/3.50";i:127;s:14:"WebCopier v4.0";i:128;s:9:"WebCopier";i:129;s:11:"WebEnhancer";i:130;s:22:"WebmasterWorldForumBot";i:131;s:9:"WebReaper";i:132;s:9:"WebSauger";i:133;s:15:"Website Quester";i:134;s:11:"Webster Pro";i:135;s:11:"WebStripper";i:136;s:6:"WebZip";i:137;s:6:"Wotbox";i:138;s:9:"wsr-agent";i:139;s:15:"WWW-Collector-E";i:140;s:4:"Xenu";i:141;s:6:"yandex";i:142;s:3:"Zao";i:143;s:4:"Zeus";i:144;s:4:"Zeus";i:145;s:6:"ZyBORG";i:146;s:6:"coccoc";i:147;s:7:"Incutio";i:148;s:8:"lmspider";i:149;s:9:"memoryBot";i:150;s:10:"SemrushBot";i:151;s:4:"serf";i:152;s:7:"Unknown";i:153;s:12:"uptime files";}s:7:"badTLDs";a:0:{}s:5:"blist";a:0:{}s:10:"payoptions";a:0:{}s:5:"wlist";a:4:{i:0;s:13:"203.147.88.10";i:1;s:14:"45.123.216.102";i:2;s:14:"45.123.216.158";i:3;s:12:"45.64.225.11";}s:9:"spamwords";a:163:{i:0;s:7:"-online";i:1;s:2:"4u";i:2;s:3:"4-u";i:3;s:6:"adipex";i:4;s:7:"advicer";i:5;s:9:"baccarrat";i:6;s:9:"blackjack";i:7;s:9:"bllogspot";i:8;s:6:"booker";i:9;s:4:"byob";i:10;s:17:"car-rental-e-site";i:11;s:18:"car-rentals-e-site";i:12;s:12:"carisoprodol";i:13;s:6:"casino";i:14;s:8:"chatroom";i:15;s:6:"cialis";i:16;s:6:"coolhu";i:17;s:16:"credit-card-debt";i:18;s:13:"credit-report";i:19;s:4:"cwas";i:20;s:6:"cyclen";i:21;s:15:"cyclobenzaprine";i:22;s:13:"dating-e-site";i:23;s:11:"day-trading";i:24;s:18:"debt-consolidation";i:25;s:18:"debt-consolidation";i:26;s:16:"discreetordering";i:27;s:9:"duty-free";i:28;s:8:"dutyfree";i:29;s:11:"equityloans";i:30;s:8:"fioricet";i:31;s:20:"flowers-leading-site";i:32;s:16:"freenet-shopping";i:33;s:7:"freenet";i:34;s:9:"gambling-";i:35;s:9:"hair-loss";i:36;s:21:"health-insurancedeals";i:37;s:15:"homeequityloans";i:38;s:11:"homefinance";i:39;s:6:"holdem";i:40;s:17:"hotel-dealse-site";i:41;s:11:"hotele-site";i:42;s:12:"hotelse-site";i:43;s:6:"incest";i:44;s:16:"insurance-quotes";i:45;s:14:"insurancedeals";i:46;s:11:"jrcreations";i:47;s:7:"levitra";i:48;s:11:"macinstruct";i:49;s:14:"mortgagequotes";i:50;s:15:"online-gambling";i:51;s:14:"onlinegambling";i:52;s:14:"ottawavalleyag";i:53;s:8:"ownsthis";i:54;s:5:"paxil";i:55;s:5:"penis";i:56;s:8:"pharmacy";i:57;s:11:"phentermine";i:58;s:10:"poker-chip";i:59;s:4:"poze";i:60;s:5:"pussy";i:61;s:17:"rental-car-e-site";i:62;s:9:"ringtones";i:63;s:8:"roulette";i:64;s:7:"shemale";i:65;s:12:"slot-machine";i:66;s:11:"thorcarlson";i:67;s:8:"top-site";i:68;s:10:"top-e-site";i:69;s:8:"tramadol";i:70;s:8:"trim-spa";i:71;s:6:"ultram";i:72;s:28:"valeofglamorganconservatives";i:73;s:6:"viagra";i:74;s:5:"vioxx";i:75;s:5:"xanax";i:76;s:5:"zolus";i:77;s:6:"ambien";i:78;s:5:"poker";i:79;s:5:"bingo";i:80;s:8:"allstate";i:81;s:8:"insurnce";i:82;s:12:"work-at-home";i:83;s:10:"workathome";i:84;s:10:"home-based";i:85;s:9:"homebased";i:86;s:11:"weight-loss";i:87;s:10:"weightloss";i:88;s:17:"additional-income";i:89;s:12:"extra-income";i:90;s:15:"email-marketing";i:91;s:11:"sibutramine";i:92;s:4:"seo-";i:93;s:9:"fast-cash";i:94;s:10:"Buy direct";i:95;s:14:"Free gift card";i:96;s:12:"Meet singles";i:97;s:7:"Hot men";i:98;s:9:"Hot women";i:99;s:9:"Easy date";i:100;s:13:"Score tonight";i:101;s:11:"Dear Friend";i:102;s:17:"Additional income";i:103;s:18:"Double your income";i:104;s:10:"Home based";i:105;s:16:"Income from home";i:106;s:15:"Urgent proposal";i:107;s:11:"Opportunity";i:108;s:16:"Be your own boss";i:109;s:6:"Make $";i:110;s:22:"Online biz opportunity";i:111;s:18:"Potential earnings";i:112;s:15:"Earn extra cash";i:113;s:12:"Extra income";i:114;s:19:"Home based business";i:115;s:10:"Make money";i:116;s:13:"Online degree";i:117;s:19:"University diplomas";i:118;s:14:"Work from home";i:119;s:17:"You’re a winner";i:120;s:17:"Financial Schemes";i:121;s:3:"$$$";i:122;s:11:"Beneficiary";i:123;s:24:"One hundred percent free";i:124;s:14:"Save big money";i:125;s:14:"Unsecured debt";i:126;s:10:"Cash bonus";i:127;s:18:"Collect your prize";i:128;s:9:"Refinance";i:129;s:15:"Million dollars";i:130;s:8:"Mortgage";i:131;s:20:"Check or money order";i:132;s:11:"Stock alert";i:133;s:22:"Social Security Number";i:134;s:15:"Lead generation";i:135;s:26:"Search Engine Optimization";i:136;s:11:"Web traffic";i:137;s:13:"Email harvest";i:138;s:14:"Increase sales";i:139;s:18:"Internet marketing";i:140;s:19:"Marketing solutions";i:141;s:17:"Month trial offer";i:142;s:16:"Increase traffic";i:143;s:16:"Direct marketing";i:144;s:18:"Sign-up free today";i:145;s:14:"Cures baldness";i:146;s:6:"Viagra";i:147;s:11:"Lose weight";i:148;s:15:"Online pharmacy";i:149;s:12:"Stop snoring";i:150;s:16:"Removes wrinkles";i:151;s:14:"Reverses aging";i:152;s:14:"Perform in bed";i:153;s:22:"CraigsList Ads Posting";i:154;s:16:"BackPage Posting";i:155;s:21:"home security systems";i:156;s:9:"blackjack";i:157;s:10:"real money";i:158;s:4:"nike";i:159;s:7:"air max";i:160;s:20:"BackPage Ads Posting";i:161;s:4:"Shox";i:162;s:19:"barbour northumbria";}s:6:"apikey";s:0:"";s:8:"honeyapi";s:0:"";s:11:"botscoutapi";s:0:"";s:9:"googleapi";s:0:"";s:18:"recaptchaapisecret";s:0:"";s:16:"recaptchaapisite";s:0:"";s:22:"solvmediaapivchallenge";s:0:"";s:18:"solvmediaapiverify";s:0:"";s:11:"blogseyekey";s:0:"";s:8:"sesstime";i:4;s:7:"sfsfreq";i:0;s:6:"hnyage";i:9999;s:7:"botfreq";i:0;s:6:"sfsage";i:9999;s:8:"hnylevel";i:5;s:6:"botage";i:9999;s:8:"multicnt";i:5;s:9:"multitime";i:3;s:5:"chkAD";s:1:"N";s:5:"chkAE";s:1:"N";s:5:"chkAF";s:1:"N";s:5:"chkAL";s:1:"N";s:5:"chkAM";s:1:"N";s:5:"chkAR";s:1:"N";s:5:"chkAT";s:1:"N";s:5:"chkAU";s:1:"N";s:5:"chkAX";s:1:"N";s:5:"chkAZ";s:1:"N";s:5:"chkBA";s:1:"N";s:5:"chkBB";s:1:"N";s:5:"chkBD";s:1:"N";s:5:"chkBE";s:1:"N";s:5:"chkBG";s:1:"N";s:5:"chkBH";s:1:"N";s:5:"chkBN";s:1:"N";s:5:"chkBO";s:1:"N";s:5:"chkBR";s:1:"N";s:5:"chkBS";s:1:"N";s:5:"chkBY";s:1:"N";s:5:"chkBZ";s:1:"N";s:5:"chkCA";s:1:"N";s:5:"chkCD";s:1:"N";s:5:"chkCH";s:1:"N";s:5:"chkCL";s:1:"N";s:5:"chkCN";s:1:"N";s:5:"chkCO";s:1:"N";s:5:"chkCR";s:1:"N";s:5:"chkCU";s:1:"N";s:5:"chkCW";s:1:"N";s:5:"chkCY";s:1:"N";s:5:"chkCZ";s:1:"N";s:5:"chkDE";s:1:"N";s:5:"chkDK";s:1:"N";s:5:"chkDO";s:1:"N";s:5:"chkDZ";s:1:"N";s:5:"chkEC";s:1:"N";s:5:"chkEE";s:1:"N";s:5:"chkES";s:1:"N";s:5:"chkEU";s:1:"N";s:5:"chkFI";s:1:"N";s:5:"chkFJ";s:1:"N";s:5:"chkFR";s:1:"N";s:5:"chkGB";s:1:"N";s:5:"chkGE";s:1:"N";s:5:"chkGF";s:1:"N";s:5:"chkGI";s:1:"N";s:5:"chkGP";s:1:"N";s:5:"chkGR";s:1:"N";s:5:"chkGT";s:1:"N";s:5:"chkGU";s:1:"N";s:5:"chkGY";s:1:"N";s:5:"chkHK";s:1:"N";s:5:"chkHN";s:1:"N";s:5:"chkHR";s:1:"N";s:5:"chkHT";s:1:"N";s:5:"chkHU";s:1:"N";s:5:"chkID";s:1:"N";s:5:"chkIE";s:1:"N";s:5:"chkIL";s:1:"N";s:5:"chkIN";s:1:"N";s:5:"chkIQ";s:1:"N";s:5:"chkIR";s:1:"N";s:5:"chkIS";s:1:"N";s:5:"chkIT";s:1:"N";s:5:"chkJM";s:1:"N";s:5:"chkJO";s:1:"N";s:5:"chkJP";s:1:"N";s:5:"chkKE";s:1:"N";s:5:"chkKG";s:1:"N";s:5:"chkKH";s:1:"N";s:5:"chkKR";s:1:"N";s:5:"chkKW";s:1:"N";s:5:"chkKY";s:1:"N";s:5:"chkKZ";s:1:"N";s:5:"chkLA";s:1:"N";s:5:"chkLB";s:1:"N";s:5:"chkLK";s:1:"N";s:5:"chkLT";s:1:"N";s:5:"chkLU";s:1:"N";s:5:"chkLV";s:1:"N";s:5:"chkMD";s:1:"N";s:5:"chkME";s:1:"N";s:5:"chkMK";s:1:"N";s:5:"chkMM";s:1:"N";s:5:"chkMN";s:1:"N";s:5:"chkMO";s:1:"N";s:5:"chkMP";s:1:"N";s:5:"chkMQ";s:1:"N";s:5:"chkMT";s:1:"N";s:5:"chkMV";s:1:"N";s:5:"chkMX";s:1:"N";s:5:"chkMY";s:1:"N";s:5:"chkNC";s:1:"N";s:5:"chkNI";s:1:"N";s:5:"chkNL";s:1:"N";s:5:"chkNO";s:1:"N";s:5:"chkNP";s:1:"N";s:5:"chkNZ";s:1:"N";s:5:"chkOM";s:1:"N";s:5:"chkPA";s:1:"N";s:5:"chkPE";s:1:"N";s:5:"chkPG";s:1:"N";s:5:"chkPH";s:1:"N";s:5:"chkPK";s:1:"N";s:5:"chkPL";s:1:"N";s:5:"chkPR";s:1:"N";s:5:"chkPS";s:1:"N";s:5:"chkPT";s:1:"N";s:5:"chkPW";s:1:"N";s:5:"chkPY";s:1:"N";s:5:"chkQA";s:1:"N";s:5:"chkRO";s:1:"N";s:5:"chkRS";s:1:"N";s:5:"chkRU";s:1:"N";s:5:"chkSA";s:1:"N";s:5:"chkSC";s:1:"N";s:5:"chkSE";s:1:"N";s:5:"chkSG";s:1:"N";s:5:"chkSI";s:1:"N";s:5:"chkSK";s:1:"N";s:5:"chkSV";s:1:"N";s:5:"chkSX";s:1:"N";s:5:"chkSY";s:1:"N";s:5:"chkTH";s:1:"N";s:5:"chkTJ";s:1:"N";s:5:"chkTM";s:1:"N";s:5:"chkTR";s:1:"N";s:5:"chkTT";s:1:"N";s:5:"chkTW";s:1:"N";s:5:"chkUA";s:1:"N";s:5:"chkUK";s:1:"N";s:5:"chkUS";s:1:"N";s:5:"chkUY";s:1:"N";s:5:"chkUZ";s:1:"N";s:5:"chkVC";s:1:"N";s:5:"chkVE";s:1:"N";s:5:"chkVN";s:1:"N";s:5:"chkYE";s:1:"N";s:7:"version";s:4:"6.12";s:12:"kpg_sp_cache";i:25;s:11:"kpg_sp_hist";i:25;s:11:"kpg_sp_good";i:2;s:15:"kpg_sp_cache_em";i:4;s:8:"redirurl";s:0:"";s:11:"logfilesize";i:0;s:13:"rejectmessage";s:89:"Access Denied<br/>\r\nThis site is protected by the Stop Spammer Registrations Plugin.<br/>";}', 'yes'),
(176, 'kpg_stop_sp_reg_stats', 'a:195:{s:6:"badips";a:0:{}s:7:"goodips";a:0:{}s:4:"hist";a:6:{s:19:"2015/12/24 01:28:42";a:6:{i:0;s:14:"45.123.216.102";i:1;s:0:"";i:2;s:5:"admin";i:3;s:27:"/demo/kingston/wp-login.php";i:4;s:24:"authenticated user login";i:5;s:0:"";}s:19:"2015/12/24 15:46:31";a:6:{i:0;s:12:"45.64.225.11";i:1;s:0:"";i:2;s:16:"admin/admin2015*";i:3;s:27:"/demo/kingston/wp-login.php";i:4;s:50:"ERR: Connection timed out after 10000 milliseconds";i:5;s:0:"";}s:19:"2015/12/24 15:49:46";a:6:{i:0;s:14:"45.123.216.158";i:1;s:0:"";i:2;s:5:"admin";i:3;s:27:"/demo/kingston/wp-login.php";i:4;s:24:"authenticated user login";i:5;s:0:"";}s:19:"2015/12/24 15:51:47";a:6:{i:0;s:12:"45.64.225.11";i:1;s:0:"";i:2;s:5:"admin";i:3;s:27:"/demo/kingston/wp-login.php";i:4;s:26:"Allow List IP:45.64.225.11";i:5;s:0:"";}s:19:"2015/12/24 15:51:53";a:6:{i:0;s:12:"45.64.225.11";i:1;s:0:"";i:2;s:5:"admin";i:3;s:27:"/demo/kingston/wp-login.php";i:4;s:23:"Good Cache:45.64.225.11";i:5;s:0:"";}s:19:"2015/12/24 15:52:25";a:6:{i:0;s:12:"45.64.225.11";i:1;s:0:"";i:2;s:5:"admin";i:3;s:27:"/demo/kingston/wp-login.php";i:4;s:24:"authenticated user login";i:5;s:0:"";}}s:10:"wlrequests";a:0:{}s:10:"addonstats";a:0:{}s:5:"multi";a:1:{s:12:"45.64.225.11";a:2:{i:0;s:19:"2015/12/24 15:46:21";i:1;i:1;}}s:9:"cntchkaws";i:0;s:16:"cntchkcloudflare";i:0;s:12:"cntchkgcache";i:0;s:18:"cntchkgenallowlist";i:0;s:12:"cntchkgoogle";i:0;s:19:"cntchkmiscallowlist";i:0;s:12:"cntchkpaypal";i:0;s:13:"cntchkscripts";i:0;s:13:"cntchkvalidip";i:0;s:10:"cntchkwlem";i:0;s:14:"cntchkwluserid";i:0;s:11:"cntchkwlist";i:0;s:19:"cntchkyahoomerchant";i:0;s:7:"spcount";i:1;s:8:"spmcount";i:1;s:6:"cntcap";i:0;s:7:"cntncap";i:0;s:7:"cntpass";i:5;s:7:"spmdate";s:10:"2015/12/24";s:6:"spdate";s:10:"2015/12/24";s:9:"cntchk404";i:0;s:12:"cntchkaccept";i:0;s:11:"cntchkadmin";i:0;s:14:"cntchkadminlog";i:0;s:11:"cntchkagent";i:0;s:12:"cntchkamazon";i:0;s:13:"cntchkakismet";i:0;s:12:"cntchkbcache";i:0;s:10:"cntchkblem";i:0;s:12:"cntchkuserid";i:0;s:10:"cntchkblip";i:0;s:14:"cntchkbotscout";i:0;s:10:"cntchkdisp";i:0;s:11:"cntchkdnsbl";i:0;s:14:"cntchkexploits";i:0;s:16:"cntchkgooglesafe";i:0;s:11:"cntchkhoney";i:0;s:13:"cntchkhosting";i:0;s:15:"cntchkinvalidip";i:0;s:10:"cntchklong";i:0;s:12:"cntchkbbcode";i:0;s:13:"cntchkreferer";i:0;s:13:"cntchksession";i:0;s:9:"cntchksfs";i:1;s:15:"cntchkspamwords";i:0;s:9:"cntchktld";i:0;s:14:"cntchkubiquity";i:0;s:11:"cntchkmulti";i:0;s:8:"cntchkAD";i:0;s:8:"cntchkAE";i:0;s:8:"cntchkAF";i:0;s:8:"cntchkAL";i:0;s:8:"cntchkAM";i:0;s:8:"cntchkAR";i:0;s:8:"cntchkAT";i:0;s:8:"cntchkAU";i:0;s:8:"cntchkAX";i:0;s:8:"cntchkAZ";i:0;s:8:"cntchkBA";i:0;s:8:"cntchkBB";i:0;s:8:"cntchkBD";i:0;s:8:"cntchkBE";i:0;s:8:"cntchkBG";i:0;s:8:"cntchkBH";i:0;s:8:"cntchkBN";i:0;s:8:"cntchkBO";i:0;s:8:"cntchkBR";i:0;s:8:"cntchkBS";i:0;s:8:"cntchkBY";i:0;s:8:"cntchkBZ";i:0;s:8:"cntchkCA";i:0;s:8:"cntchkCD";i:0;s:8:"cntchkCH";i:0;s:8:"cntchkCL";i:0;s:8:"cntchkCN";i:0;s:8:"cntchkCO";i:0;s:8:"cntchkCR";i:0;s:8:"cntchkCU";i:0;s:8:"cntchkCW";i:0;s:8:"cntchkCY";i:0;s:8:"cntchkCZ";i:0;s:8:"cntchkDE";i:0;s:8:"cntchkDK";i:0;s:8:"cntchkDO";i:0;s:8:"cntchkDZ";i:0;s:8:"cntchkEC";i:0;s:8:"cntchkEE";i:0;s:8:"cntchkES";i:0;s:8:"cntchkEU";i:0;s:8:"cntchkFI";i:0;s:8:"cntchkFJ";i:0;s:8:"cntchkFR";i:0;s:8:"cntchkGB";i:0;s:8:"cntchkGE";i:0;s:8:"cntchkGF";i:0;s:8:"cntchkGI";i:0;s:8:"cntchkGP";i:0;s:8:"cntchkGR";i:0;s:8:"cntchkGT";i:0;s:8:"cntchkGU";i:0;s:8:"cntchkGY";i:0;s:8:"cntchkHK";i:0;s:8:"cntchkHN";i:0;s:8:"cntchkHR";i:0;s:8:"cntchkHT";i:0;s:8:"cntchkHU";i:0;s:8:"cntchkID";i:0;s:8:"cntchkIE";i:0;s:8:"cntchkIL";i:0;s:8:"cntchkIN";i:0;s:8:"cntchkIQ";i:0;s:8:"cntchkIR";i:0;s:8:"cntchkIS";i:0;s:8:"cntchkIT";i:0;s:8:"cntchkJM";i:0;s:8:"cntchkJO";i:0;s:8:"cntchkJP";i:0;s:8:"cntchkKE";i:0;s:8:"cntchkKG";i:0;s:8:"cntchkKH";i:0;s:8:"cntchkKR";i:0;s:8:"cntchkKW";i:0;s:8:"cntchkKY";i:0;s:8:"cntchkKZ";i:0;s:8:"cntchkLA";i:0;s:8:"cntchkLB";i:0;s:8:"cntchkLK";i:0;s:8:"cntchkLT";i:0;s:8:"cntchkLU";i:0;s:8:"cntchkLV";i:0;s:8:"cntchkMD";i:0;s:8:"cntchkME";i:0;s:8:"cntchkMK";i:0;s:8:"cntchkMM";i:0;s:8:"cntchkMN";i:0;s:8:"cntchkMO";i:0;s:8:"cntchkMP";i:0;s:8:"cntchkMQ";i:0;s:8:"cntchkMT";i:0;s:8:"cntchkMV";i:0;s:8:"cntchkMX";i:0;s:8:"cntchkMY";i:0;s:8:"cntchkNC";i:0;s:8:"cntchkNI";i:0;s:8:"cntchkNL";i:0;s:8:"cntchkNO";i:0;s:8:"cntchkNP";i:0;s:8:"cntchkNZ";i:0;s:8:"cntchkOM";i:0;s:8:"cntchkPA";i:0;s:8:"cntchkPE";i:0;s:8:"cntchkPG";i:0;s:8:"cntchkPH";i:0;s:8:"cntchkPK";i:0;s:8:"cntchkPL";i:0;s:8:"cntchkPR";i:0;s:8:"cntchkPS";i:0;s:8:"cntchkPT";i:0;s:8:"cntchkPW";i:0;s:8:"cntchkPY";i:0;s:8:"cntchkQA";i:0;s:8:"cntchkRO";i:0;s:8:"cntchkRS";i:0;s:8:"cntchkRU";i:0;s:8:"cntchkSA";i:0;s:8:"cntchkSC";i:0;s:8:"cntchkSE";i:0;s:8:"cntchkSG";i:0;s:8:"cntchkSI";i:0;s:8:"cntchkSK";i:0;s:8:"cntchkSV";i:0;s:8:"cntchkSX";i:0;s:8:"cntchkSY";i:0;s:8:"cntchkTH";i:0;s:8:"cntchkTJ";i:0;s:8:"cntchkTM";i:0;s:8:"cntchkTR";i:0;s:8:"cntchkTT";i:0;s:8:"cntchkTW";i:0;s:8:"cntchkUA";i:0;s:8:"cntchkUK";i:0;s:8:"cntchkUS";i:0;s:8:"cntchkUY";i:0;s:8:"cntchkUZ";i:0;s:8:"cntchkVC";i:0;s:8:"cntchkVE";i:0;s:8:"cntchkVN";i:0;s:8:"cntchkYE";i:0;s:7:"version";s:4:"6.12";}', 'yes'),
(177, 'ckeditor_wordpress', 'a:6:{s:10:"appearance";a:10:{s:4:"skin";s:5:"moono";s:7:"uicolor";s:7:"default";s:12:"uicolor_user";s:0:"";s:13:"default_state";s:1:"t";s:13:"excerpt_state";s:1:"f";s:12:"post_toolbar";s:13:"WordpressFull";s:18:"post_editor_height";i:300;s:14:"comment_editor";s:1:"t";s:15:"comment_toolbar";s:14:"WordpressBasic";s:21:"comment_editor_height";i:160;}s:6:"upload";a:6:{s:7:"browser";s:8:"disabled";s:4:"type";s:6:"native";s:14:"user_file_path";s:19:"wp-content/uploads/";s:17:"files_allowed_ext";s:202:"7z,aiff,asf,avi,bmp,csv,doc,fla,flv,gif,gz,gzip,jpeg,jpg,mid,mov,mp3,mp4,mpc,mpeg,mpg,ods,odt,pdf,png,ppt,pxd,qt,ram,rar,rm,rmi,rmvb,rtf,sdc,sitd,swf,sxc,sxw,tar,tgz,tif,tiff,txt,vsd,wav,wma,wmv,xls,zip";s:18:"images_allowed_ext";s:20:"bmp,gif,jpeg,jpg,png";s:17:"flash_allowed_ext";s:7:"swf,flv";}s:8:"ckfinder";a:11:{s:13:"file_max_size";s:2:"8M";s:12:"images_width";s:4:"1200";s:13:"images_height";s:4:"1600";s:14:"images_quality";s:2:"80";s:16:"thumbnails_width";s:3:"100";s:17:"thumbnails_height";s:3:"100";s:18:"thumbnails_quality";s:2:"80";s:18:"thumbnails_enabled";s:1:"t";s:24:"thumbnails_direct_access";s:1:"f";s:12:"license_name";s:0:"";s:11:"license_key";s:0:"";}s:3:"css";a:4:{s:4:"mode";s:7:"default";s:4:"path";s:0:"";s:6:"styles";s:7:"default";s:10:"style_path";s:0:"";}s:8:"advanced";a:10:{s:11:"load_method";s:11:"ckeditor.js";s:12:"load_timeout";i:0;s:20:"native_spell_checker";s:1:"t";s:17:"scayt_autoStartup";s:1:"f";s:8:"entities";s:1:"t";s:8:"p_indent";s:1:"t";s:19:"p_break_before_open";s:1:"t";s:18:"p_break_after_open";s:1:"t";s:20:"p_break_before_close";s:1:"t";s:19:"p_break_after_close";s:1:"t";}s:7:"plugins";a:5:{s:8:"autogrow";s:1:"f";s:11:"tableresize";s:1:"f";s:9:"wpgallery";s:1:"t";s:5:"scayt";s:1:"t";s:3:"wsc";s:1:"t";}}', 'yes'),
(178, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:19:"captcha/captcha.php";s:5:"1.8.0";}}}', 'yes'),
(189, 'finished_splitting_shared_terms', '1', 'yes'),
(190, 'site_icon', '0', 'yes'),
(191, 'medium_large_size_w', '768', 'yes'),
(192, 'medium_large_size_h', '0', 'yes'),
(193, 'db_upgraded', '', 'yes'),
(195, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.4.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.4-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.4";s:7:"version";s:3:"4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1451115076;s:15:"version_checked";s:3:"4.4";s:12:"translations";a:0:{}}', 'yes'),
(211, 'can_compress_scripts', '1', 'yes'),
(391, '_site_transient_timeout_theme_roots', '1451808723', 'yes'),
(392, '_site_transient_theme_roots', 'a:3:{s:3:"iit";s:7:"/themes";s:8:"kingston";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";}', 'yes'),
(307, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1451811725;s:7:"checked";a:11:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.4";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.3.1";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.1.3";s:35:"event-organiser/event-organiser.php";s:6:"2.13.7";s:40:"external-links-widgets/bg-link-admin.php";s:3:"1.0";s:31:"master-slider/master-slider.php";s:5:"2.7.1";s:38:"php-execution-plugin/php_execution.php";s:5:"1.0.0";s:25:"profile-builder/index.php";s:5:"2.2.7";s:40:"profile-builder-customizations/index.php";s:1:"1";s:27:"simple-press/sp-control.php";s:5:"5.6.1";s:23:"user-meta/user-meta.php";s:5:"1.1.7";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.4";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.4.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.3.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.3.1.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":7:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.1.3";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.1.3.zip";s:14:"upgrade_notice";s:72:"Bumping WordPress compatibility version only. No other changes involved.";}s:35:"event-organiser/event-organiser.php";O:8:"stdClass":7:{s:2:"id";s:5:"27828";s:4:"slug";s:15:"event-organiser";s:6:"plugin";s:35:"event-organiser/event-organiser.php";s:11:"new_version";s:6:"2.13.7";s:3:"url";s:46:"https://wordpress.org/plugins/event-organiser/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/event-organiser.2.13.7.zip";s:14:"upgrade_notice";s:143:"This fixes a bug with the event list widget on WordPress 4.4\nAdvance notice: As of 3.0.0 Event Organiser shall require WordPress 3.8 or better.";}s:31:"master-slider/master-slider.php";O:8:"stdClass":7:{s:2:"id";s:5:"51874";s:4:"slug";s:13:"master-slider";s:6:"plugin";s:31:"master-slider/master-slider.php";s:11:"new_version";s:5:"2.7.1";s:3:"url";s:44:"https://wordpress.org/plugins/master-slider/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/master-slider.zip";s:14:"upgrade_notice";s:51:"[Fix]: Minor issue with an undefined variable fixed";}s:38:"php-execution-plugin/php_execution.php";O:8:"stdClass":6:{s:2:"id";s:4:"6984";s:4:"slug";s:20:"php-execution-plugin";s:6:"plugin";s:38:"php-execution-plugin/php_execution.php";s:11:"new_version";s:5:"1.0.0";s:3:"url";s:51:"https://wordpress.org/plugins/php-execution-plugin/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/php-execution-plugin.1.0.1.zip";}s:25:"profile-builder/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"21897";s:4:"slug";s:15:"profile-builder";s:6:"plugin";s:25:"profile-builder/index.php";s:11:"new_version";s:5:"2.2.7";s:3:"url";s:46:"https://wordpress.org/plugins/profile-builder/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/profile-builder.2.2.7.zip";}s:23:"user-meta/user-meta.php";O:8:"stdClass":6:{s:2:"id";s:5:"23902";s:4:"slug";s:9:"user-meta";s:6:"plugin";s:23:"user-meta/user-meta.php";s:11:"new_version";s:5:"1.1.7";s:3:"url";s:40:"https://wordpress.org/plugins/user-meta/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/user-meta.1.1.7.zip";}}}', 'yes'),
(279, 'acf_version', '4.4.4', 'yes'),
(317, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1451806927;s:7:"checked";a:3:{s:3:"iit";s:3:"1.0";s:8:"kingston";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.0";}s:8:"response";a:1:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.4.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(248, 'eventorganiser_admin_notices', 'a:2:{i:0;s:15:"autofillvenue17";i:1;s:17:"changedtemplate17";}', 'yes'),
(220, 'theme_switched', '', 'yes'),
(383, 'rewrite_rules', 'a:146:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:15:"events/event/?$";s:25:"index.php?post_type=event";s:45:"events/event/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:40:"events/event/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:32:"events/event/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:57:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"category/(.+?)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"tag/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"type/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:64:"events/venues/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?event-venue=$matches[1]&feed=$matches[2]";s:59:"events/venues/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?event-venue=$matches[1]&feed=$matches[2]";s:42:"events/venues/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?event-venue=$matches[1]&paged=$matches[2]";s:24:"events/venues/([^/]+)/?$";s:33:"index.php?event-venue=$matches[1]";s:66:"events/category/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:53:"index.php?event-category=$matches[1]&feed=$matches[2]";s:61:"events/category/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:53:"index.php?event-category=$matches[1]&feed=$matches[2]";s:44:"events/category/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?event-category=$matches[1]&paged=$matches[2]";s:26:"events/category/([^/]+)/?$";s:36:"index.php?event-category=$matches[1]";s:61:"events/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:48:"index.php?event-tag=$matches[1]&feed=$matches[2]";s:56:"events/tag/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:48:"index.php?event-tag=$matches[1]&feed=$matches[2]";s:39:"events/tag/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?event-tag=$matches[1]&paged=$matches[2]";s:21:"events/tag/([^/]+)/?$";s:31:"index.php?event-tag=$matches[1]";s:37:"highlight/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"highlight/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"highlight/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"highlight/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"highlight/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"highlight/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"highlight/([^/]+)/embed/?$";s:42:"index.php?highlight=$matches[1]&embed=true";s:30:"highlight/([^/]+)/trackback/?$";s:36:"index.php?highlight=$matches[1]&tb=1";s:38:"highlight/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?highlight=$matches[1]&paged=$matches[2]";s:45:"highlight/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?highlight=$matches[1]&cpage=$matches[2]";s:34:"highlight/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?highlight=$matches[1]&page=$matches[2]";s:26:"highlight/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"highlight/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"highlight/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"highlight/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"highlight/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"highlight/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:97:"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:61:"index.php?post_type=event&ondate=$matches[1]&feed=$matches[2]";s:92:"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:61:"index.php?post_type=event&ondate=$matches[1]&feed=$matches[2]";s:75:"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/page/?([0-9]{1,})/?$";s:62:"index.php?post_type=event&ondate=$matches[1]&paged=$matches[2]";s:57:"events/event/on/([0-9]{4}(?:/[0-9]{2}(?:/[0-9]{2})?)?)/?$";s:44:"index.php?post_type=event&ondate=$matches[1]";s:40:"events/event/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"events/event/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"events/event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"events/event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"events/event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"events/event/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"events/event/([^/]+)/embed/?$";s:38:"index.php?event=$matches[1]&embed=true";s:33:"events/event/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:63:"events/event/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:58:"events/event/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:41:"events/event/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:48:"events/event/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:37:"events/event/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:29:"events/event/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"events/event/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"events/event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"events/event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"events/event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"events/event/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"(feed|rdf|rss|rss2|atom|eo-events)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"comments/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"comments/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:54:"search/(.+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"search/(.+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"author/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"([0-9]{4})/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:17:"forum/newposts/?$";s:40:"index.php?pagename=forum&sf_newposts=all";s:16:"forum/members/?$";s:40:"index.php?pagename=forum&sf_members=list";s:30:"forum/members/page-([0-9]+)/?$";s:60:"index.php?pagename=forum&sf_members=list&sf_page=$matches[1]";s:16:"forum/profile/?$";s:40:"index.php?pagename=forum&sf_profile=edit";s:24:"forum/profile/([^/]+)/?$";s:62:"index.php?pagename=forum&sf_profile=show&sf_member=$matches[1]";s:29:"forum/profile/([^/]+)/edit/?$";s:62:"index.php?pagename=forum&sf_profile=edit&sf_member=$matches[1]";s:12:"forum/rss/?$";s:36:"index.php?pagename=forum&sf_feed=all";s:20:"forum/rss/([^/]+)/?$";s:59:"index.php?pagename=forum&sf_feed=all&sf_feedkey=$matches[1]";s:16:"forum/([^/]+)/?$";s:45:"index.php?pagename=forum&sf_forum=$matches[1]";s:30:"forum/([^/]+)/page-([0-9]+)/?$";s:65:"index.php?pagename=forum&sf_forum=$matches[1]&sf_page=$matches[2]";s:20:"forum/([^/]+)/rss/?$";s:59:"index.php?pagename=forum&sf_forum=$matches[1]&sf_feed=forum";s:28:"forum/([^/]+)/rss/([^/]+)/?$";s:82:"index.php?pagename=forum&sf_forum=$matches[1]&sf_feed=forum&sf_feedkey=$matches[2]";s:24:"forum/([^/]+)/([^/]+)/?$";s:66:"index.php?pagename=forum&sf_forum=$matches[1]&sf_topic=$matches[2]";s:38:"forum/([^/]+)/([^/]+)/page-([0-9]+)/?$";s:86:"index.php?pagename=forum&sf_forum=$matches[1]&sf_topic=$matches[2]&sf_page=$matches[3]";s:28:"forum/([^/]+)/([^/]+)/rss/?$";s:80:"index.php?pagename=forum&sf_forum=$matches[1]&sf_topic=$matches[2]&sf_feed=topic";s:36:"forum/([^/]+)/([^/]+)/rss/([^/]+)/?$";s:103:"index.php?pagename=forum&sf_forum=$matches[1]&sf_topic=$matches[2]&sf_feed=topic&sf_feedkey=$matches[3]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"(.?.+?)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:50:"([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:45:"([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|eo-events)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(357, 'category_children', 'a:0:{}', 'yes'),
(250, 'wd_bwg_version', '1.2.81', 'no'),
(251, 'wd_bwg_theme_version', '1.0.0', 'no'),
(252, 'php_execution', 'a:1:{s:15:"observer_active";i:1;}', 'yes'),
(253, 'BG_LINK_VERSION', '10', 'yes'),
(254, 'widget_eo_events_agenda_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_eo_event_list_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_eo_calendar_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_eo-event-categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_eo-event-venues', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'widget_bg_link_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(260, 'widget_huge_it_gallery_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_bwp_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_wppb-login-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'wppb_version', '2.2.7', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(266, 'wppb_manage_fields', 'a:13:{i:0;a:21:{s:2:"id";i:1;s:5:"field";s:24:"Default - Name (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:4:"Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:1;a:21:{s:2:"id";i:2;s:5:"field";s:18:"Default - Username";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Username";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:2;a:21:{s:2:"id";i:3;s:5:"field";s:20:"Default - First Name";s:9:"meta-name";s:10:"first_name";s:11:"field-title";s:10:"First Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:3;a:21:{s:2:"id";i:4;s:5:"field";s:19:"Default - Last Name";s:9:"meta-name";s:9:"last_name";s:11:"field-title";s:9:"Last Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:4;a:21:{s:2:"id";i:5;s:5:"field";s:18:"Default - Nickname";s:9:"meta-name";s:8:"nickname";s:11:"field-title";s:8:"Nickname";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:5;a:21:{s:2:"id";i:6;s:5:"field";s:34:"Default - Display name publicly as";s:9:"meta-name";s:0:"";s:11:"field-title";s:24:"Display name publicly as";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:6;a:21:{s:2:"id";i:7;s:5:"field";s:32:"Default - Contact Info (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:12:"Contact Info";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:7;a:21:{s:2:"id";i:8;s:5:"field";s:16:"Default - E-mail";s:9:"meta-name";s:0:"";s:11:"field-title";s:6:"E-mail";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:8;a:21:{s:2:"id";i:9;s:5:"field";s:17:"Default - Website";s:9:"meta-name";s:0:"";s:11:"field-title";s:7:"Website";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:9;a:21:{s:2:"id";i:10;s:5:"field";s:34:"Default - About Yourself (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:14:"About Yourself";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:10;a:21:{s:2:"id";i:11;s:5:"field";s:27:"Default - Biographical Info";s:9:"meta-name";s:11:"description";s:11:"field-title";s:17:"Biographical Info";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:11;a:21:{s:2:"id";i:12;s:5:"field";s:18:"Default - Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:12;a:21:{s:2:"id";i:13;s:5:"field";s:25:"Default - Repeat Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:15:"Repeat Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}}', 'yes'),
(267, 'user_meta_history', 'a:1:{s:7:"version";a:2:{s:12:"last_version";s:5:"1.1.7";s:5:"1.1.7";a:1:{s:9:"timestamp";i:1450973370;}}}', 'yes'),
(268, 'eventorganiser_version', '2.13.7', 'yes'),
(272, 'bwg_admin_notice', 'a:2:{s:15:"two_week_review";a:2:{s:5:"start";s:8:"1/7/2016";s:3:"int";i:14;}s:16:"one_week_support";a:2:{s:5:"start";s:10:"12/31/2015";s:3:"int";i:7;}}', 'yes'),
(304, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1451124654', 'yes'),
(305, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5624";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3532";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3468";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2988";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2714";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2197";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2159";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1991";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1944";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1928";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1919";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1875";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1767";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1576";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1503";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1481";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1388";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1287";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1254";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1241";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1132";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1057";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1027";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"977";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"934";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"893";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"872";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"868";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"863";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"858";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"841";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"802";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"762";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"731";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"730";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"727";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"722";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"720";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"719";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"712";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"703";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"689";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"677";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"672";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"650";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"649";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"636";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"632";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"628";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"619";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"601";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"595";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"584";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"584";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"581";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"573";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"571";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"567";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"565";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"556";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"544";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"534";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"526";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"516";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"513";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"506";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"500";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"497";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"493";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"492";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"470";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"470";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"459";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"453";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"452";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"450";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"430";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"424";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"420";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"415";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"411";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"409";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"409";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"400";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"399";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"397";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"397";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"394";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"392";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"385";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"384";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"383";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"379";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"378";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"374";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"373";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"373";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"371";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"368";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"368";}}', 'yes'),
(281, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(390, '_site_transient_sp_update_themes', 'O:8:"stdClass":1:{s:8:"response";a:2:{s:8:"css-only";O:8:"stdClass":5:{s:4:"slug";s:8:"css-only";s:10:"stylesheet";s:12:"css-only.css";s:11:"new_version";s:6:"1.2.18";s:3:"url";s:23:"http://simple-press.com";s:7:"package";s:62:"http://simple-press.com/download-manager.php?id=636&wpupdate=1";}s:7:"default";O:8:"stdClass":5:{s:4:"slug";s:7:"default";s:10:"stylesheet";s:11:"default.php";s:11:"new_version";s:6:"1.2.18";s:3:"url";s:23:"http://simple-press.com";s:7:"package";s:62:"http://simple-press.com/download-manager.php?id=641&wpupdate=1";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=463 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:44:"[your-name] <wordpress@blogfordeveloper.com>";s:4:"body";s:187:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)";s:9:"recipient";s:24:"bikash.pal2000@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:41:"Kingston <wordpress@blogfordeveloper.com>";s:4:"body";s:129:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:34:"Reply-To: bikash.pal2000@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:8:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";}'),
(6, 4, '_additional_settings', ''),
(7, 4, '_locale', 'en_US'),
(8, 2, '_edit_last', '1'),
(9, 2, '_edit_lock', '1451208778:1'),
(10, 7, '_edit_last', '1'),
(11, 7, '_edit_lock', '1450978101:1'),
(12, 6, '_edit_last', '1'),
(13, 6, '_edit_lock', '1450978019:1'),
(14, 9, '_edit_last', '1'),
(15, 9, '_edit_lock', '1451239963:1'),
(16, 11, '_edit_last', '1'),
(17, 11, '_edit_lock', '1450978070:1'),
(18, 13, '_edit_last', '1'),
(19, 13, '_edit_lock', '1450978037:1'),
(292, 67, '_menu_item_url', ''),
(291, 67, '_menu_item_xfn', ''),
(290, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(289, 67, '_menu_item_target', ''),
(288, 67, '_menu_item_object', 'page'),
(262, 64, '_menu_item_target', ''),
(263, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(264, 64, '_menu_item_xfn', ''),
(287, 67, '_menu_item_object_id', '11'),
(286, 67, '_menu_item_menu_item_parent', '0'),
(285, 67, '_menu_item_type', 'post_type'),
(259, 64, '_menu_item_menu_item_parent', '0'),
(260, 64, '_menu_item_object_id', '44'),
(261, 64, '_menu_item_object', 'page'),
(283, 66, '_menu_item_url', ''),
(282, 66, '_menu_item_xfn', ''),
(255, 63, '_menu_item_xfn', ''),
(256, 63, '_menu_item_url', ''),
(258, 64, '_menu_item_type', 'post_type'),
(281, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(280, 66, '_menu_item_target', ''),
(279, 66, '_menu_item_object', 'page'),
(88, 26, '_edit_lock', '1450973809:1'),
(278, 66, '_menu_item_object_id', '40'),
(277, 66, '_menu_item_menu_item_parent', '0'),
(276, 66, '_menu_item_type', 'post_type'),
(274, 65, '_menu_item_url', ''),
(273, 65, '_menu_item_xfn', ''),
(87, 26, '_edit_last', '1'),
(272, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(271, 65, '_menu_item_target', ''),
(270, 65, '_menu_item_object', 'page'),
(269, 65, '_menu_item_object_id', '42'),
(268, 65, '_menu_item_menu_item_parent', '0'),
(252, 63, '_menu_item_object', 'page'),
(253, 63, '_menu_item_target', ''),
(254, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(267, 65, '_menu_item_type', 'post_type'),
(265, 64, '_menu_item_url', ''),
(251, 63, '_menu_item_object_id', '46'),
(250, 63, '_menu_item_menu_item_parent', '0'),
(249, 63, '_menu_item_type', 'post_type'),
(98, 29, '_edit_last', '1'),
(99, 29, '_edit_lock', '1450977882:1'),
(100, 31, '_edit_last', '1'),
(101, 31, '_edit_lock', '1450977904:1'),
(102, 33, '_edit_last', '1'),
(103, 33, '_edit_lock', '1450977954:1'),
(104, 38, '_edit_last', '1'),
(105, 38, '_edit_lock', '1450978161:1'),
(106, 40, '_edit_last', '1'),
(107, 40, '_edit_lock', '1451212183:1'),
(108, 42, '_edit_last', '1'),
(109, 42, '_edit_lock', '1451212264:1'),
(110, 44, '_edit_last', '1'),
(111, 44, '_edit_lock', '1451212360:1'),
(112, 46, '_edit_last', '1'),
(113, 46, '_edit_lock', '1451212995:1'),
(114, 48, '_menu_item_type', 'post_type'),
(115, 48, '_menu_item_menu_item_parent', '0'),
(116, 48, '_menu_item_object_id', '46'),
(117, 48, '_menu_item_object', 'page'),
(118, 48, '_menu_item_target', ''),
(119, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(120, 48, '_menu_item_xfn', ''),
(121, 48, '_menu_item_url', ''),
(122, 48, '_menu_item_orphaned', '1450978478'),
(123, 49, '_menu_item_type', 'post_type'),
(124, 49, '_menu_item_menu_item_parent', '0'),
(125, 49, '_menu_item_object_id', '44'),
(126, 49, '_menu_item_object', 'page'),
(127, 49, '_menu_item_target', ''),
(128, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(129, 49, '_menu_item_xfn', ''),
(130, 49, '_menu_item_url', ''),
(131, 49, '_menu_item_orphaned', '1450978478'),
(132, 50, '_menu_item_type', 'post_type'),
(133, 50, '_menu_item_menu_item_parent', '0'),
(134, 50, '_menu_item_object_id', '42'),
(135, 50, '_menu_item_object', 'page'),
(136, 50, '_menu_item_target', ''),
(137, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(138, 50, '_menu_item_xfn', ''),
(139, 50, '_menu_item_url', ''),
(140, 50, '_menu_item_orphaned', '1450978478'),
(141, 51, '_menu_item_type', 'post_type'),
(142, 51, '_menu_item_menu_item_parent', '0'),
(143, 51, '_menu_item_object_id', '40'),
(144, 51, '_menu_item_object', 'page'),
(145, 51, '_menu_item_target', ''),
(146, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(147, 51, '_menu_item_xfn', ''),
(148, 51, '_menu_item_url', ''),
(149, 51, '_menu_item_orphaned', '1450978478'),
(150, 52, '_menu_item_type', 'post_type'),
(151, 52, '_menu_item_menu_item_parent', '0'),
(152, 52, '_menu_item_object_id', '11'),
(153, 52, '_menu_item_object', 'page'),
(154, 52, '_menu_item_target', ''),
(155, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 52, '_menu_item_xfn', ''),
(157, 52, '_menu_item_url', ''),
(158, 52, '_menu_item_orphaned', '1450978478'),
(159, 53, '_menu_item_type', 'post_type'),
(160, 53, '_menu_item_menu_item_parent', '0'),
(161, 53, '_menu_item_object_id', '33'),
(162, 53, '_menu_item_object', 'page'),
(163, 53, '_menu_item_target', ''),
(164, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(165, 53, '_menu_item_xfn', ''),
(166, 53, '_menu_item_url', ''),
(167, 53, '_menu_item_orphaned', '1450978478'),
(168, 54, '_menu_item_type', 'post_type'),
(169, 54, '_menu_item_menu_item_parent', '0'),
(170, 54, '_menu_item_object_id', '31'),
(171, 54, '_menu_item_object', 'page'),
(172, 54, '_menu_item_target', ''),
(173, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(174, 54, '_menu_item_xfn', ''),
(175, 54, '_menu_item_url', ''),
(176, 54, '_menu_item_orphaned', '1450978479'),
(177, 55, '_menu_item_type', 'post_type'),
(178, 55, '_menu_item_menu_item_parent', '0'),
(179, 55, '_menu_item_object_id', '29'),
(180, 55, '_menu_item_object', 'page'),
(181, 55, '_menu_item_target', ''),
(182, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(183, 55, '_menu_item_xfn', ''),
(184, 55, '_menu_item_url', ''),
(185, 55, '_menu_item_orphaned', '1450978479'),
(186, 56, '_menu_item_type', 'post_type'),
(187, 56, '_menu_item_menu_item_parent', '0'),
(188, 56, '_menu_item_object_id', '26'),
(189, 56, '_menu_item_object', 'page'),
(190, 56, '_menu_item_target', ''),
(191, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(192, 56, '_menu_item_xfn', ''),
(193, 56, '_menu_item_url', ''),
(194, 56, '_menu_item_orphaned', '1450978479'),
(195, 57, '_menu_item_type', 'post_type'),
(196, 57, '_menu_item_menu_item_parent', '0'),
(197, 57, '_menu_item_object_id', '9'),
(198, 57, '_menu_item_object', 'page'),
(199, 57, '_menu_item_target', ''),
(200, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(201, 57, '_menu_item_xfn', ''),
(202, 57, '_menu_item_url', ''),
(203, 57, '_menu_item_orphaned', '1450978479'),
(204, 58, '_menu_item_type', 'post_type'),
(205, 58, '_menu_item_menu_item_parent', '0'),
(206, 58, '_menu_item_object_id', '7'),
(207, 58, '_menu_item_object', 'page'),
(208, 58, '_menu_item_target', ''),
(209, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(210, 58, '_menu_item_xfn', ''),
(211, 58, '_menu_item_url', ''),
(212, 58, '_menu_item_orphaned', '1450978479'),
(213, 59, '_menu_item_type', 'post_type'),
(214, 59, '_menu_item_menu_item_parent', '0'),
(215, 59, '_menu_item_object_id', '2'),
(216, 59, '_menu_item_object', 'page'),
(217, 59, '_menu_item_target', ''),
(218, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(219, 59, '_menu_item_xfn', ''),
(220, 59, '_menu_item_url', ''),
(221, 59, '_menu_item_orphaned', '1450978479'),
(222, 60, '_menu_item_type', 'post_type'),
(223, 60, '_menu_item_menu_item_parent', '0'),
(224, 60, '_menu_item_object_id', '38'),
(225, 60, '_menu_item_object', 'page'),
(226, 60, '_menu_item_target', ''),
(227, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(228, 60, '_menu_item_xfn', ''),
(229, 60, '_menu_item_url', ''),
(230, 60, '_menu_item_orphaned', '1450978479'),
(231, 61, '_menu_item_type', 'post_type'),
(232, 61, '_menu_item_menu_item_parent', '0'),
(233, 61, '_menu_item_object_id', '13'),
(234, 61, '_menu_item_object', 'page'),
(235, 61, '_menu_item_target', ''),
(236, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(237, 61, '_menu_item_xfn', ''),
(238, 61, '_menu_item_url', ''),
(239, 61, '_menu_item_orphaned', '1450978479'),
(240, 62, '_menu_item_type', 'post_type'),
(241, 62, '_menu_item_menu_item_parent', '0'),
(242, 62, '_menu_item_object_id', '6'),
(243, 62, '_menu_item_object', 'page'),
(244, 62, '_menu_item_target', ''),
(245, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(246, 62, '_menu_item_xfn', ''),
(247, 62, '_menu_item_url', ''),
(248, 62, '_menu_item_orphaned', '1450978479'),
(294, 68, '_menu_item_type', 'post_type'),
(295, 68, '_menu_item_menu_item_parent', '67'),
(296, 68, '_menu_item_object_id', '33'),
(297, 68, '_menu_item_object', 'page'),
(298, 68, '_menu_item_target', ''),
(299, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(300, 68, '_menu_item_xfn', ''),
(301, 68, '_menu_item_url', ''),
(303, 69, '_menu_item_type', 'post_type'),
(304, 69, '_menu_item_menu_item_parent', '67'),
(305, 69, '_menu_item_object_id', '31'),
(306, 69, '_menu_item_object', 'page'),
(307, 69, '_menu_item_target', ''),
(308, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(309, 69, '_menu_item_xfn', ''),
(310, 69, '_menu_item_url', ''),
(312, 70, '_menu_item_type', 'post_type'),
(313, 70, '_menu_item_menu_item_parent', '67'),
(314, 70, '_menu_item_object_id', '29'),
(315, 70, '_menu_item_object', 'page'),
(316, 70, '_menu_item_target', ''),
(317, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(318, 70, '_menu_item_xfn', ''),
(319, 70, '_menu_item_url', ''),
(321, 71, '_menu_item_type', 'post_type'),
(322, 71, '_menu_item_menu_item_parent', '67'),
(323, 71, '_menu_item_object_id', '26'),
(324, 71, '_menu_item_object', 'page'),
(325, 71, '_menu_item_target', ''),
(326, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(327, 71, '_menu_item_xfn', ''),
(328, 71, '_menu_item_url', ''),
(330, 72, '_menu_item_type', 'post_type'),
(331, 72, '_menu_item_menu_item_parent', '0'),
(332, 72, '_menu_item_object_id', '9'),
(333, 72, '_menu_item_object', 'page'),
(334, 72, '_menu_item_target', ''),
(335, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(336, 72, '_menu_item_xfn', ''),
(337, 72, '_menu_item_url', ''),
(339, 73, '_menu_item_type', 'post_type'),
(340, 73, '_menu_item_menu_item_parent', '0'),
(341, 73, '_menu_item_object_id', '7'),
(342, 73, '_menu_item_object', 'page'),
(343, 73, '_menu_item_target', ''),
(344, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(345, 73, '_menu_item_xfn', ''),
(346, 73, '_menu_item_url', ''),
(348, 74, '_menu_item_type', 'post_type'),
(349, 74, '_menu_item_menu_item_parent', '0'),
(350, 74, '_menu_item_object_id', '2'),
(351, 74, '_menu_item_object', 'page'),
(352, 74, '_menu_item_target', ''),
(353, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(354, 74, '_menu_item_xfn', ''),
(355, 74, '_menu_item_url', ''),
(357, 75, '_menu_item_type', 'post_type'),
(358, 75, '_menu_item_menu_item_parent', '74'),
(359, 75, '_menu_item_object_id', '38'),
(360, 75, '_menu_item_object', 'page'),
(361, 75, '_menu_item_target', ''),
(362, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(363, 75, '_menu_item_xfn', ''),
(364, 75, '_menu_item_url', ''),
(366, 76, '_menu_item_type', 'post_type'),
(367, 76, '_menu_item_menu_item_parent', '74'),
(368, 76, '_menu_item_object_id', '13'),
(369, 76, '_menu_item_object', 'page'),
(370, 76, '_menu_item_target', ''),
(371, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(372, 76, '_menu_item_xfn', ''),
(373, 76, '_menu_item_url', ''),
(375, 77, '_menu_item_type', 'post_type'),
(376, 77, '_menu_item_menu_item_parent', '74'),
(377, 77, '_menu_item_object_id', '6'),
(378, 77, '_menu_item_object', 'page'),
(379, 77, '_menu_item_target', ''),
(380, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(381, 77, '_menu_item_xfn', ''),
(382, 77, '_menu_item_url', ''),
(384, 78, '_menu_item_type', 'custom'),
(385, 78, '_menu_item_menu_item_parent', '0'),
(386, 78, '_menu_item_object_id', '78'),
(387, 78, '_menu_item_object', 'custom'),
(388, 78, '_menu_item_target', ''),
(389, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(390, 78, '_menu_item_xfn', ''),
(391, 78, '_menu_item_url', 'http://localhost/kingston/'),
(393, 79, '_edit_last', '1'),
(394, 79, '_edit_lock', '1451215231:1'),
(395, 80, '_edit_last', '1'),
(396, 80, '_edit_lock', '1451215298:1'),
(397, 81, '_edit_last', '1'),
(398, 81, '_edit_lock', '1451188021:1'),
(399, 81, '_wp_page_template', 'blog-listing.php'),
(400, 83, '_menu_item_type', 'post_type'),
(401, 83, '_menu_item_menu_item_parent', '0'),
(402, 83, '_menu_item_object_id', '81'),
(403, 83, '_menu_item_object', 'page'),
(404, 83, '_menu_item_target', ''),
(405, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(406, 83, '_menu_item_xfn', ''),
(407, 83, '_menu_item_url', ''),
(409, 9, '_wp_page_template', 'contact-us.php'),
(410, 40, '_wp_page_template', 'default'),
(411, 42, '_wp_page_template', 'default'),
(412, 44, '_wp_page_template', 'default'),
(413, 46, '_wp_page_template', 'default'),
(414, 137, '_edit_last', '1'),
(415, 137, '_edit_lock', '1451215333:1'),
(416, 138, '_edit_last', '1'),
(417, 138, '_edit_lock', '1451215350:1'),
(418, 139, '_edit_last', '1'),
(419, 139, '_edit_lock', '1451215368:1'),
(420, 140, '_edit_last', '1'),
(421, 140, '_edit_lock', '1451215520:1'),
(422, 1, '_edit_lock', '1451238586:1'),
(423, 145, '_wp_attached_file', '2015/12/photo-gallery-bg.jpg'),
(424, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:869;s:6:"height";i:326;s:4:"file";s:28:"2015/12/photo-gallery-bg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"photo-gallery-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"photo-gallery-bg-300x113.jpg";s:5:"width";i:300;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"photo-gallery-bg-768x288.jpg";s:5:"width";i:768;s:6:"height";i:288;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"photo-gallery-bg-825x326.jpg";s:5:"width";i:825;s:6:"height";i:326;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(425, 1, '_thumbnail_id', '145'),
(426, 1, '_edit_last', '1'),
(429, 149, '_wp_page_template', 'default'),
(430, 150, '_menu_item_type', 'post_type'),
(431, 150, '_menu_item_menu_item_parent', '0'),
(432, 150, '_menu_item_object_id', '149'),
(433, 150, '_menu_item_object', 'page'),
(434, 150, '_menu_item_target', ''),
(435, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(436, 150, '_menu_item_xfn', ''),
(437, 150, '_menu_item_url', ''),
(439, 151, '_wp_attached_file', '2016/01/avery.png'),
(440, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:17:"2016/01/avery.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"avery-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(441, 152, '_wp_attached_file', '2016/01/ibm.png'),
(442, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:15:"2016/01/ibm.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"ibm-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(443, 153, '_wp_attached_file', '2016/01/acc.png'),
(444, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:15:"2016/01/acc.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"acc-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(445, 154, '_wp_attached_file', '2016/01/bpt.png'),
(446, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:15:"2016/01/bpt.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"bpt-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(447, 155, '_wp_attached_file', '2016/01/chemtex.png'),
(448, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:19:"2016/01/chemtex.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"chemtex-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(449, 156, '_wp_attached_file', '2016/01/descon.png'),
(450, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:18:"2016/01/descon.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"descon-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(451, 157, '_wp_attached_file', '2016/01/hcl.png'),
(452, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:15:"2016/01/hcl.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"hcl-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(453, 158, '_wp_attached_file', '2016/01/magnet.png'),
(454, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:18:"2016/01/magnet.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"magnet-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(455, 159, '_wp_attached_file', '2016/01/obrembo.png'),
(456, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:142;s:4:"file";s:19:"2016/01/obrembo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"obrembo-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;s:8:"keywords";a:0:{}}}'),
(457, 160, '_form', '<div class="adm-bg">\n     <div class="adm_form">\n        <div class="adm_head"><h3>ADMISSION QUERY</h3></div>\n        <div class="form1">\n          [text* name id:name "Name..."]\n          [email* Email id:Email "Email.."]\n          [text* Subject id:Subject "Subject"]                       \n          [tel* Contact-No id:Contact-No "Contact No"]\n        </div>\n        <div class="form_message">[textarea* Message id:Message "Message..."]</div>\n        <div class="btn">[submit id:send "Send message"]</div>\n     </div>\n</div>'),
(458, 160, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:38:"[your-name] <bikash.pal2000@gmail.com>";s:4:"body";s:171:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)";s:9:"recipient";s:24:"bikash.pal2000@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(459, 160, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:35:"Kingston <bikash.pal2000@gmail.com>";s:4:"body";s:113:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:34:"Reply-To: bikash.pal2000@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(460, 160, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";}'),
(461, 160, '_additional_settings', ''),
(462, 160, '_locale', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=161 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-12-16 02:34:17', '2015-12-16 02:34:17', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory â€œnature is the best teachers, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.', 'Kingston Educational Institute Demo Post', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-12-27 14:25:39', '2015-12-27 14:25:39', '', 0, 'http://localhost/kingston/?p=1', 0, 'post', '', 1),
(2, 1, '2015-12-16 02:34:17', '2015-12-16 02:34:17', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.\r\n<h3>VISION</h3>\r\nTo achieve excellence in the world of education from KG to PG based on quality and innovation.\r\n<h3>MISSION</h3>\r\nEnabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life</li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction</li>\r\n	<li>Flourishing ideologies based on upcoming technologies</li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives</li>\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\nDear Students,\r\n\r\n<p><span class="tab"></span>It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.</p>\r\n<p>&nbsp;</p>\r\n<p>Prof. (Dr.) J.P. Bandyopadhyay<br/>\r\nPhd.(Tech) FIETE, SMIEEE(USA)<br/>\r\nProfessor Emeritus, Calcutta University</p>', 'About Us', '', 'publish', 'open', 'closed', '', 'about-us', '', '', '2015-12-27 09:23:26', '2015-12-27 09:23:26', '', 0, 'http://localhost/kingston/?page_id=2', 2, 'page', '', 0),
(88, 1, '2015-12-27 08:56:26', '2015-12-27 08:56:26', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 08:56:26', '2015-12-27 08:56:26', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-12-24 15:56:20', '2015-12-24 15:56:20', '', 'Student Login', '', 'publish', 'closed', 'closed', '', 'student-login', '', '', '2015-12-24 17:30:42', '2015-12-24 17:30:42', '', 0, 'http://localhost/kingston/?page_id=7', 9, 'page', '', 0),
(4, 1, '2015-12-23 15:41:32', '2015-12-23 15:41:32', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <wordpress@blogfordeveloper.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)\nbikash.pal2000@gmail.com\nReply-To: [your-email]\n\n0\n0\n\n[your-subject]\nKingston <wordpress@blogfordeveloper.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)\n[your-email]\nReply-To: bikash.pal2000@gmail.com\n\n0\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2015-12-23 15:41:32', '2015-12-23 15:41:32', '', 0, 'http://localhost/kingston/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2015-12-24 15:55:28', '2015-12-24 15:55:28', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/kingston/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-24 15:55:28', '2015-12-24 15:55:28', '', 2, 'http://localhost/kingston/2015/12/24/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2015-12-24 15:57:17', '2015-12-24 15:57:17', '', 'Our Mission', '', 'publish', 'closed', 'closed', '', 'our-mission', '', '', '2015-12-24 17:29:18', '2015-12-24 17:29:18', '', 2, 'http://localhost/kingston/?page_id=6', 1, 'page', '', 0),
(8, 1, '2015-12-24 15:56:20', '2015-12-24 15:56:20', '', 'Student Login', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-12-24 15:56:20', '2015-12-24 15:56:20', '', 7, 'http://localhost/kingston/2015/12/24/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-12-24 15:57:02', '2015-12-24 15:57:02', '<h3>Corporate Office</h3>\r\nPurbasha (Opp. Bimala Cinema)\r\n\r\nNew Barrackpore Bus Stop\r\n\r\nMadhyamgram, Jessore Road\r\n\r\nKolkata - 700 129, W.B.\r\n\r\nPh.: (033) 2538 9508, 25267077\r\n\r\nFax (033) 2538 9509\r\n<h3>College Campus</h3>\r\nKajibari, Barasat-Barrackpore Road\r\n\r\nBerunanpukuria, P.O. Malikapore\r\n\r\nAdjacent to W.B. State University\r\n\r\nP.S. Duttapukur,\r\n\r\nKolkata - 700 126,\r\n\r\nPh. (033) 2542 9800\r\n\r\n&nbsp;\r\n\r\nwebsite : www.keical.edu.in,\r\n\r\nE-mail : keduins@gmail.com\r\n&nbsp;\r\n&nbsp;\r\n\r\n[contact-form-7 id="4" title="Contact form 1"]\r\n&nbsp;\r\n&nbsp;\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1841.4082897255228!2d88.41423239882693!3d22.623323599467565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f89f417450d265%3A0xa875f457f8457a71!2sKingston+Educational+Institute!5e0!3m2!1sen!2sin!4v1451239549427" width="80%" height="500px" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2015-12-27 18:12:42', '2015-12-27 18:12:42', '', 0, 'http://localhost/kingston/?page_id=9', 8, 'page', '', 0),
(10, 1, '2015-12-24 15:57:02', '2015-12-24 15:57:02', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-24 15:57:02', '2015-12-24 15:57:02', '', 9, 'http://localhost/kingston/2015/12/24/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-12-24 15:58:07', '2015-12-24 15:58:07', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2015-12-24 15:58:07', '2015-12-24 15:58:07', '', 0, 'http://localhost/kingston/?page_id=11', 7, 'page', '', 0),
(12, 1, '2015-12-24 15:57:17', '2015-12-24 15:57:17', '', 'Our Mission', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-12-24 15:57:17', '2015-12-24 15:57:17', '', 6, 'http://localhost/kingston/2015/12/24/6-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-12-24 15:58:18', '2015-12-24 15:58:18', '2', 'Message From Academic Chairman', '', 'publish', 'closed', 'closed', '', 'message-from-academic-chairman', '', '', '2015-12-24 17:29:38', '2015-12-24 17:29:38', '', 2, 'http://localhost/kingston/?page_id=13', 2, 'page', '', 0),
(14, 1, '2015-12-24 15:58:07', '2015-12-24 15:58:07', '', 'Events', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-12-24 15:58:07', '2015-12-24 15:58:07', '', 11, 'http://localhost/kingston/2015/12/24/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-12-24 15:58:18', '2015-12-24 15:58:18', '', 'Message From Academic Chairman', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-12-24 15:58:18', '2015-12-24 15:58:18', '', 13, 'http://localhost/kingston/2015/12/24/13-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 11, 'http://localhost/kingston/?p=71', 11, 'nav_menu_item', '', 0),
(70, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 11, 'http://localhost/kingston/?p=70', 12, 'nav_menu_item', '', 0),
(69, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 11, 'http://localhost/kingston/?p=69', 13, 'nav_menu_item', '', 0),
(68, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 11, 'http://localhost/kingston/?p=68', 14, 'nav_menu_item', '', 0),
(67, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=67', 10, 'nav_menu_item', '', 0),
(64, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=64', 8, 'nav_menu_item', '', 0),
(65, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=65', 7, 'nav_menu_item', '', 0),
(66, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=66', 6, 'nav_menu_item', '', 0),
(26, 1, '2015-12-24 16:18:45', '2015-12-24 16:18:45', '', 'Coming Events', '', 'publish', 'closed', 'closed', '', 'coming-events', '', '', '2015-12-24 16:19:02', '2015-12-24 16:19:02', '', 11, 'http://localhost/kingston/?page_id=26', 1, 'page', '', 0),
(27, 1, '2015-12-24 16:18:45', '2015-12-24 16:18:45', '', 'Coming Events', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-12-24 16:18:45', '2015-12-24 16:18:45', '', 26, 'http://localhost/kingston/2015/12/24/26-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=63', 9, 'nav_menu_item', '', 0),
(29, 1, '2015-12-24 17:26:50', '2015-12-24 17:26:50', '', 'Past Events', '', 'publish', 'closed', 'closed', '', 'past-events', '', '', '2015-12-24 17:26:50', '2015-12-24 17:26:50', '', 11, 'http://localhost/kingston/?page_id=29', 2, 'page', '', 0),
(30, 1, '2015-12-24 17:26:50', '2015-12-24 17:26:50', '', 'Past Events', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2015-12-24 17:26:50', '2015-12-24 17:26:50', '', 29, 'http://localhost/kingston/2015/12/24/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-12-24 17:27:21', '2015-12-24 17:27:21', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2015-12-24 17:27:26', '2015-12-24 17:27:26', '', 11, 'http://localhost/kingston/?page_id=31', 3, 'page', '', 0),
(32, 1, '2015-12-24 17:27:21', '2015-12-24 17:27:21', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2015-12-24 17:27:21', '2015-12-24 17:27:21', '', 31, 'http://localhost/kingston/2015/12/24/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-12-24 17:28:00', '2015-12-24 17:28:00', '4', 'Videos', '', 'publish', 'closed', 'closed', '', 'videos', '', '', '2015-12-24 17:28:00', '2015-12-24 17:28:00', '', 11, 'http://localhost/kingston/?page_id=33', 4, 'page', '', 0),
(34, 1, '2015-12-24 17:28:00', '2015-12-24 17:28:00', '4', 'Videos', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2015-12-24 17:28:00', '2015-12-24 17:28:00', '', 33, 'http://localhost/kingston/2015/12/24/33-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2016-01-03 07:55:41', '2016-01-03 07:55:41', '', 'acc', '', 'inherit', 'open', 'closed', '', 'acc', '', '', '2016-01-03 07:55:41', '2016-01-03 07:55:41', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/acc.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2015-12-24 17:28:41', '2015-12-24 17:28:41', '1This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/kingston/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-24 17:28:41', '2015-12-24 17:28:41', '', 2, 'http://localhost/kingston/2015/12/24/2-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2015-12-24 17:29:38', '2015-12-24 17:29:38', '2', 'Message From Academic Chairman', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-12-24 17:29:38', '2015-12-24 17:29:38', '', 13, 'http://localhost/kingston/2015/12/24/13-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-12-24 17:31:43', '2015-12-24 17:31:43', '', 'Secretary''s Desk', '', 'publish', 'closed', 'closed', '', 'secretarys-desk', '', '', '2015-12-24 17:31:43', '2015-12-24 17:31:43', '', 2, 'http://localhost/kingston/?page_id=38', 3, 'page', '', 0),
(39, 1, '2015-12-24 17:31:43', '2015-12-24 17:31:43', '', 'Secretary''s Desk', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2015-12-24 17:31:43', '2015-12-24 17:31:43', '', 38, 'http://localhost/kingston/2015/12/24/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-12-24 17:32:22', '2015-12-24 17:32:22', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc. Honours (3 yrs.) :</strong>\r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc.   General (3 yrs.) :</strong>\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6"><strong>B.Com.</strong></div>\r\n		<div class="col-sm-6">\r\n			<div class="col-sm-6">\r\n				<strong>B.A. Honours (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>History</li>\r\n					<li>Education</li>				\r\n				</ul>\r\n			 </div>\r\n			<div class="col-sm-6">\r\n				<strong>B.A. General (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>Bengali</li>\r\n					<li>English</li>\r\n					<li>History</li>\r\n					<li>Education</li>	\r\n					<li>Geography</li>\r\n					<li>Economics</li>	\r\n					<li>Political Sc.</li>				\r\n				</ul>\r\n			 </div>\r\n	    </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>	\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n<h3>v) KINGSTON MODEL SCHOOL</h3>\r\n<p>ICSE Co-Education Day School</p>\r\n<p>School Day : Tuesday to Saturday</p>\r\n<p>Timing : 10.00 am to 4.00 pm.</p>\r\n<p>Transport available</p>\r\n<p><stong>Admission Details</strong></p>\r\n<p>Admission Form available – November onwards of each year</p>\r\n<div class="col-sm-12">\r\n	<div class="col-sm-6">\r\n		<div class="col-sm-2">\r\n		Age limit : \r\n		</div>\r\n		<div class="col-sm-10">\r\n		<p>Prep = 3 +</p>\r\n		<p>Lower KG = 4 +</p>\r\n		<p>Upper KG = 5 +</p>\r\n		<p>Class 1 = 6 +</p>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<p>(Age as on 1st April of the year of admission)</p>\r\n\r\n\r\n\r\n', 'Our Units', '', 'publish', 'closed', 'closed', '', 'our-units', '', '', '2015-12-27 10:31:52', '2015-12-27 10:31:52', '', 0, 'http://localhost/kingston/?page_id=40', 3, 'page', '', 0),
(41, 1, '2015-12-24 17:32:22', '2015-12-24 17:32:22', '', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-24 17:32:22', '2015-12-24 17:32:22', '', 40, 'http://localhost/kingston/2015/12/24/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-12-24 17:33:11', '2015-12-24 17:33:11', '<ul>	\r\n	<li>Laboratories</li>\r\n	<li>Computer Lab</li>\r\n	<li>Central Library</li>\r\n	<li>Digital Class Room</li>\r\n	<li>Seminar Hall</li>\r\n\r\n</ul>', 'Infrastructure', '', 'publish', 'closed', 'closed', '', 'infrastructure', '', '', '2015-12-27 10:33:15', '2015-12-27 10:33:15', '', 0, 'http://localhost/kingston/?page_id=42', 4, 'page', '', 0),
(43, 1, '2015-12-24 17:33:11', '2015-12-24 17:33:11', '', 'Infrastructure', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2015-12-24 17:33:11', '2015-12-24 17:33:11', '', 42, 'http://localhost/kingston/2015/12/24/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-12-24 17:33:40', '2015-12-24 17:33:40', '<ul>	\r\n	<li>Canteen</li>\r\n	<li>Play Ground</li>\r\n	<li>Transport</li>\r\n	<li>Hostel</li>\r\n	<li>Reprographics system</li>\r\n        <li>Anti Ragging Committee</li>\r\n\r\n</ul>', 'Facilities', '', 'publish', 'closed', 'closed', '', 'facilities', '', '', '2015-12-27 10:34:47', '2015-12-27 10:34:47', '', 0, 'http://localhost/kingston/?page_id=44', 5, 'page', '', 0),
(45, 1, '2015-12-24 17:33:40', '2015-12-24 17:33:40', '', 'Facilities', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2015-12-24 17:33:40', '2015-12-24 17:33:40', '', 44, 'http://localhost/kingston/2015/12/24/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2015-12-24 17:34:17', '2015-12-24 17:34:17', '<p>The cell looks beyond the academic curriculum and adopts every steps to inculcate among students the required skill sets that are vital for their overall development as today market ready professionals.</p>\r\n<p>&nbsp;</p>\r\n<p>Students are groomed through various technical & non-technical trainings, group discussions, workshops, seminars, soft skills and personality development programmers to make them market ready. In this process strength & weakness of each and every students are brought into limelight so that they are rectified in due course.</p>\r\n<p>&nbsp;</p>\r\n<p>The Cell will also invite corporate sector giants at regular interval for campus interview so that students get enough opportunity for showing their performance / ability to the corporate sector giants for their placement.</p>', 'Training & Placement', '', 'publish', 'closed', 'closed', '', 'training-placement', '', '', '2015-12-27 10:36:30', '2015-12-27 10:36:30', '', 0, 'http://localhost/kingston/?page_id=46', 6, 'page', '', 0),
(47, 1, '2015-12-24 17:34:17', '2015-12-24 17:34:17', '', 'Training & Placement', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2015-12-24 17:34:17', '2015-12-24 17:34:17', '', 46, 'http://localhost/kingston/2015/12/24/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-12-24 17:34:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2015-12-24 17:34:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2015-12-24 17:34:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2015-12-24 17:34:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2015-12-24 17:34:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2015-12-24 17:34:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:38', '0000-00-00 00:00:00', '', 11, 'http://localhost/kingston/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2015-12-24 17:34:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:38', '0000-00-00 00:00:00', '', 11, 'http://localhost/kingston/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 11, 'http://localhost/kingston/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 11, 'http://localhost/kingston/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/kingston/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 'Secretary''s Desk', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 2, 'http://localhost/kingston/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 2, 'http://localhost/kingston/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2015-12-24 17:34:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-12-24 17:34:39', '0000-00-00 00:00:00', '', 2, 'http://localhost/kingston/?p=62', 1, 'nav_menu_item', '', 0),
(72, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=72', 15, 'nav_menu_item', '', 0),
(73, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2015-12-29 17:28:23', '2015-12-29 17:28:23', '', 0, 'http://localhost/kingston/?p=73', 16, 'nav_menu_item', '', 0),
(74, 1, '2015-12-24 17:38:02', '2015-12-24 17:38:02', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=74', 2, 'nav_menu_item', '', 0),
(75, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', '', 'Secretary''s Desk', '', 'publish', 'closed', 'closed', '', 'secretarys-desk', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 2, 'http://localhost/kingston/?p=75', 5, 'nav_menu_item', '', 0),
(76, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 2, 'http://localhost/kingston/?p=76', 4, 'nav_menu_item', '', 0),
(77, 1, '2015-12-24 17:38:03', '2015-12-24 17:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 2, 'http://localhost/kingston/?p=77', 3, 'nav_menu_item', '', 0),
(78, 1, '2015-12-24 17:38:02', '2015-12-24 17:38:02', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-12-29 17:28:22', '2015-12-29 17:28:22', '', 0, 'http://localhost/kingston/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2015-12-26 07:41:19', '2015-12-26 07:41:19', '', 'View Brochure', 'The Institutes run a Central Cafeteria for all the units, providing palatable and wholesome food. The hostel residents, will of course, dine units at the separate.', 'publish', 'closed', 'closed', '', 'view-brochure', '', '', '2015-12-26 07:41:19', '2015-12-26 07:41:19', '', 0, 'http://blogfordeveloper.com/kingston/?post_type=highlight&#038;p=79', 0, 'highlight', '', 0),
(80, 1, '2015-12-26 07:42:25', '2015-12-26 07:42:25', '', 'Secretary''s video Message', 'The Institute''s Xerox centre will facilitate students in reprographics so that they do not have to depend on centers located in distant market places', 'publish', 'closed', 'closed', '', 'secretarys-video-message', '', '', '2015-12-26 07:42:25', '2015-12-26 07:42:25', '', 0, 'http://blogfordeveloper.com/kingston/?post_type=highlight&#038;p=80', 0, 'highlight', '', 0),
(81, 1, '2015-12-27 03:49:19', '2015-12-27 03:49:19', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2015-12-27 03:49:19', '2015-12-27 03:49:19', '', 0, 'http://blogfordeveloper.com/kingston/?page_id=81', 0, 'page', '', 0),
(82, 1, '2015-12-27 03:49:19', '2015-12-27 03:49:19', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2015-12-27 03:49:19', '2015-12-27 03:49:19', '', 81, 'http://blogfordeveloper.com/kingston/2015/12/27/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2015-12-27 03:49:39', '2015-12-27 03:49:39', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2015-12-29 17:28:23', '2015-12-29 17:28:23', '', 0, 'http://blogfordeveloper.com/kingston/?p=83', 17, 'nav_menu_item', '', 0),
(84, 1, '2015-12-27 03:51:10', '2015-12-27 03:51:10', '[contact-form-7 id="4" title="Contact form 1"]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-27 03:51:10', '2015-12-27 03:51:10', '', 9, 'http://blogfordeveloper.com/kingston/2015/12/27/9-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2016-01-03 07:55:27', '2016-01-03 07:55:27', '', 'ibm', '', 'inherit', 'open', 'closed', '', 'ibm', '', '', '2016-01-03 07:55:27', '2016-01-03 07:55:27', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/ibm.png', 0, 'attachment', 'image/png', 0),
(151, 1, '2016-01-03 07:55:14', '2016-01-03 07:55:14', '', 'avery', '', 'inherit', 'open', 'closed', '', 'avery', '', '', '2016-01-03 07:55:14', '2016-01-03 07:55:14', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/avery.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2015-12-27 09:15:04', '2015-12-27 09:15:04', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\n<h3>VISION</h3>\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\n<h3>MISSION</h3>\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\n<h3>VALUES:</h3>\n<ul>\n	<li>Establishing discipline as a passion to lead the life </li>\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\n	<li>Flourishing ideologies based on upcoming technologies </li>\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\n\n</ul>\n<h3>Academic Chairman Desk</h3>\n<p>Dear Students,</p>\n< 	   It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2015-12-27 09:15:04', '2015-12-27 09:15:04', '', 2, 'http://blogfordeveloper.com/kingston/2-autosave-v1/', 0, 'revision', '', 0),
(89, 1, '2015-12-27 08:58:48', '2015-12-27 08:58:48', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 08:58:48', '2015-12-27 08:58:48', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2015-12-27 09:02:14', '2015-12-27 09:02:14', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:02:14', '2015-12-27 09:02:14', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2015-12-27 08:59:43', '2015-12-27 08:59:43', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<div class="row abt-us"><h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p></div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 08:59:43', '2015-12-27 08:59:43', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2015-12-27 09:04:09', '2015-12-27 09:04:09', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:04:09', '2015-12-27 09:04:09', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-12-27 09:06:02', '2015-12-27 09:06:02', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:06:02', '2015-12-27 09:06:02', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-12-27 09:16:19', '2015-12-27 09:16:19', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\n<p>Dear Students,</p>\r\n<p>&emsp;It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\r\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:16:19', '2015-12-27 09:16:19', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-12-27 09:17:02', '2015-12-27 09:17:02', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\n<p>Dear Students,</p>\r\n<p>&emsp;It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\r\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:17:02', '2015-12-27 09:17:02', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2015-12-27 09:16:42', '2015-12-27 09:16:42', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\n<p>Dear Students,</p>\r\n<p>&thinsp;It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\r\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:16:42', '2015-12-27 09:16:42', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2015-12-27 09:17:12', '2015-12-27 09:17:12', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\n<p>Dear Students,</p>\r\n<p>&ensp;It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\r\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:17:12', '2015-12-27 09:17:12', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-12-27 09:17:23', '2015-12-27 09:17:23', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\n<p>Dear Students,</p>\r\n<p>&emsp;&emsp;It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\r\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:17:23', '2015-12-27 09:17:23', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2015-12-27 09:17:34', '2015-12-27 09:17:34', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\n<p>Dear Students,</p>\r\n<p>&emsp;&emsp;&emsp;&emsp;It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\r\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:17:34', '2015-12-27 09:17:34', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-12-27 09:17:52', '2015-12-27 09:17:52', ' <p>Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.</p>\r\n<h3>VISION</h3>\r\n<p>To achieve excellence in the world of education from KG to PG based on quality and innovation. </p>\r\n<h3>MISSION</h3>\r\n<p>Enabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.</p>\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life </li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction </li>\r\n	<li>Flourishing ideologies based on upcoming technologies </li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives </li>\r\n\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\n<p>Dear Students,</p>\r\n<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.\r\n</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:17:52', '2015-12-27 09:17:52', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2015-12-27 09:20:25', '2015-12-27 09:20:25', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.\r\n<h3>VISION</h3>\r\nTo achieve excellence in the world of education from KG to PG based on quality and innovation.\r\n<h3>MISSION</h3>\r\nEnabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life</li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction</li>\r\n	<li>Flourishing ideologies based on upcoming technologies</li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives</li>\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\nDear Students,\r\n\r\nIt is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.<br/>\r\nProf. (Dr.) J.P. Bandyopadhyay<br/>\r\n\r\nPhd.(Tech) FIETE, SMIEEE(USA)<br/>\r\n\r\nProfessor Emeritus, Calcutta University', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:20:25', '2015-12-27 09:20:25', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-12-27 09:20:39', '2015-12-27 09:20:39', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.\r\n<h3>VISION</h3>\r\nTo achieve excellence in the world of education from KG to PG based on quality and innovation.\r\n<h3>MISSION</h3>\r\nEnabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life</li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction</li>\r\n	<li>Flourishing ideologies based on upcoming technologies</li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives</li>\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\nDear Students,\r\n\r\nIt is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.<br/><br/>\r\nProf. (Dr.) J.P. Bandyopadhyay<br/>\r\n\r\nPhd.(Tech) FIETE, SMIEEE(USA)<br/>\r\n\r\nProfessor Emeritus, Calcutta University', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:20:39', '2015-12-27 09:20:39', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-12-27 09:22:07', '2015-12-27 09:22:07', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.\r\n<h3>VISION</h3>\r\nTo achieve excellence in the world of education from KG to PG based on quality and innovation.\r\n<h3>MISSION</h3>\r\nEnabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life</li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction</li>\r\n	<li>Flourishing ideologies based on upcoming technologies</li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives</li>\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\nDear Students,\r\n\r\n<p>It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.<br/><br/>\r\nProf. (Dr.) J.P. Bandyopadhyay<br/>\r\nPhd.(Tech) FIETE, SMIEEE(USA)<br/>\r\nProfessor Emeritus, Calcutta University', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:22:07', '2015-12-27 09:22:07', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2015-12-27 09:22:14', '2015-12-27 09:22:14', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.\r\n<h3>VISION</h3>\r\nTo achieve excellence in the world of education from KG to PG based on quality and innovation.\r\n<h3>MISSION</h3>\r\nEnabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life</li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction</li>\r\n	<li>Flourishing ideologies based on upcoming technologies</li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives</li>\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\nDear Students,\r\n\r\n<p>It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.<br/><br/>\r\nProf. (Dr.) J.P. Bandyopadhyay<br/>\r\nPhd.(Tech) FIETE, SMIEEE(USA)<br/>\r\nProfessor Emeritus, Calcutta University</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:22:14', '2015-12-27 09:22:14', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2015-12-27 09:22:49', '2015-12-27 09:22:49', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.\r\n<h3>VISION</h3>\r\nTo achieve excellence in the world of education from KG to PG based on quality and innovation.\r\n<h3>MISSION</h3>\r\nEnabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life</li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction</li>\r\n	<li>Flourishing ideologies based on upcoming technologies</li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives</li>\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\nDear Students,\r\n\r\n<p>It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.</p>\r\n<p>&nbsp;</p>\r\n<p>Prof. (Dr.) J.P. Bandyopadhyay<br/>\r\nPhd.(Tech) FIETE, SMIEEE(USA)<br/>\r\nProfessor Emeritus, Calcutta University</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:22:49', '2015-12-27 09:22:49', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2015-12-27 09:23:26', '2015-12-27 09:23:26', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory “nature is the best teacher”, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.\r\n<h3>VISION</h3>\r\nTo achieve excellence in the world of education from KG to PG based on quality and innovation.\r\n<h3>MISSION</h3>\r\nEnabling the generation to succeed in competitive society by nurturing versatility in various fields of learning to serve the humanity.\r\n<h3>VALUES:</h3>\r\n<ul>\r\n	<li>Establishing discipline as a passion to lead the life</li>\r\n	<li>Dedication to impart quality and value based education to raise satisfaction</li>\r\n	<li>Flourishing ideologies based on upcoming technologies</li>\r\n	<li>Treating students with high level of service with maintaining dignity of their lives</li>\r\n</ul>\r\n<h3>Academic Chairman Desk</h3>\r\nDear Students,\r\n\r\n<p><span class="tab"></span>It is a great pleasure and proud privilege for me to witness the birth and growth of a full- fledged academy in the name and style as “Kingston Educational Institute. I do hope that students joining the Institute would enjoy their learning and become leaders of tomorrow. I only warn them against ragging and stress on the fact that rigorous punishment will be enforced on those who participate in ragging. I heartily welcome the successful students to join this Institute and convey my best wishes for their bright and shining career.</p>\r\n<p>&nbsp;</p>\r\n<p>Prof. (Dr.) J.P. Bandyopadhyay<br/>\r\nPhd.(Tech) FIETE, SMIEEE(USA)<br/>\r\nProfessor Emeritus, Calcutta University</p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-12-27 09:23:26', '2015-12-27 09:23:26', '', 2, 'http://blogfordeveloper.com/kingston/2-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2015-12-27 09:35:43', '2015-12-27 09:35:43', '<h2>Colleges</h2>', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:35:43', '2015-12-27 09:35:43', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2015-12-27 09:37:06', '2015-12-27 09:37:06', '<h3>Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3> ', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:37:06', '2015-12-27 09:37:06', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2015-12-27 09:54:24', '2015-12-27 09:54:24', '<h3 class="big">Colleges</h3>\n\n<h3>1. Kingston Polytechnic College</h3>\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\n<div class="col-sm-12">\n<div class="col-sm-6">\n <div class="col-sm-8"><strong>Our Courses</strong></div>\n <div class="col-sm-4"><strong>Intake</strong></div> \n <div class="col-sm-8">Civil Engineering (CE) </div>\n <div class="col-sm-4">- 180</div> \n <div class="col-sm-8">Mechanical Engineering (ME) </div>\n <div class="col-sm-4">- 180</div> \n <div class="col-sm-8">Electrical Engineering (EE)  </div>\n <div class="col-sm-4">- 180</div> \n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\n <div class="col-sm-4">- 60</div> \n <div class="col-sm-8">Computer Science & Technology (CST)</div>\n <div class="col-sm-4">- 60</div>\n <div class="col-sm-8">Automobile Engineering (AE) </div>\n <div class="col-sm-4">- 60</div> \n <div class="clr"></div> \n</div>\n<div class="col-sm-6">&nbsp;</div>\n</div>\n<h3>ELIGIBILITY</h3>\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\n<p>or</p>\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\n\n<h3>2. Kingston Law College</h3>\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\n<div class="col-sm-12">\n<div class="col-sm-6">\n <div class="col-sm-8"><strong>Our Courses</strong></div>\n <div class="col-sm-4"><strong>Intake</strong></div> \n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\n <div class="col-sm-4">- 120</div> \n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\n <div class="col-sm-4">- 40</div> \n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\n <div class="col-sm-4">- 40</div> \n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\n <div class="col-sm-4">- 120</div>  \n</div>\n<div class="col-sm-6">&nbsp;</div>\n</div>\n<h3>ELIGIBILITY</h3>\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\n\n<h3>2. Kingston Law College</h3>\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\n<div class="col-sm-12">\n<div class="col-sm-6">\n <div class="col-sm-8"><strong>Our Courses</strong></div>\n <div class="col-sm-4"><strong>Intake</strong></div> \n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\n <div class="col-sm-4">- 120</div> \n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\n <div class="col-sm-4">- 40</div> \n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\n <div class="col-sm-4">- 40</div> \n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\n <div class="col-sm-4">- 120</div>  \n</div>\n<div class="col-sm-6">&nbsp;</div>\n</div>\n<h3>ELIGIBILITY</h3>\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\n\n\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2015-12-27 09:54:24', '2015-12-27 09:54:24', '', 40, 'http://blogfordeveloper.com/kingston/40-autosave-v1/', 0, 'revision', '', 0),
(110, 1, '2015-12-27 09:37:59', '2015-12-27 09:37:59', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3> ', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:37:59', '2015-12-27 09:37:59', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2015-12-27 09:40:47', '2015-12-27 09:40:47', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n</div>', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:40:47', '2015-12-27 09:40:47', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2015-12-27 09:43:30', '2015-12-27 09:43:30', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n</div>', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:43:30', '2015-12-27 09:43:30', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2015-12-27 09:44:42', '2015-12-27 09:44:42', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n</div>', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:44:42', '2015-12-27 09:44:42', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2015-12-27 09:46:29', '2015-12-27 09:46:29', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:46:29', '2015-12-27 09:46:29', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2015-12-27 09:48:25', '2015-12-27 09:48:25', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n</div>\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:48:25', '2015-12-27 09:48:25', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2015-12-27 09:49:30', '2015-12-27 09:49:30', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n</div>\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:49:30', '2015-12-27 09:49:30', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2015-12-27 09:50:05', '2015-12-27 09:50:05', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:50:05', '2015-12-27 09:50:05', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2015-12-27 09:52:22', '2015-12-27 09:52:22', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>2. Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:52:22', '2015-12-27 09:52:22', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2015-12-27 09:55:20', '2015-12-27 09:55:20', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>2. Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>3. KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<p>&nbsp;</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:55:20', '2015-12-27 09:55:20', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2015-12-27 09:55:42', '2015-12-27 09:55:42', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>1. Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>2. Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>3. KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 09:55:42', '2015-12-27 09:55:42', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 1, '2015-12-27 10:00:02', '2015-12-27 10:00:02', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.Sc. Honours (3 yrs.) : \r\n			<div class="col-sm-8">Computer Sc.</div>\r\n			<div class="col-sm-4">30</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:00:02', '2015-12-27 10:00:02', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2015-12-27 10:00:37', '2015-12-27 10:00:37', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.Sc. Honours (3 yrs.) : \r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:00:37', '2015-12-27 10:00:37', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2015-12-27 10:03:50', '2015-12-27 10:03:50', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.Sc. Honours (3 yrs.) : \r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:03:50', '2015-12-27 10:03:50', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2015-12-27 10:07:09', '2015-12-27 10:07:09', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.Sc. Honours (3 yrs.) : \r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			B.Sc.   General (3 yrs.) :\r\n			<div class="col-sm-4">Pure Sciencee</div>\r\n			<div class="col-sm-4">Bio Scienc</div>\r\n			<div class="col-sm-4">Physicss</div>\r\n			\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:07:09', '2015-12-27 10:07:09', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2015-12-27 10:12:34', '2015-12-27 10:12:34', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.Sc. Honours (3 yrs.) : \r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			B.Sc.   General (3 yrs.) :\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:12:34', '2015-12-27 10:12:34', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2015-12-27 10:21:25', '2015-12-27 10:21:25', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.Sc. Honours (3 yrs.) : \r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			B.Sc.   General (3 yrs.) :\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.A. Honours (3 yrs.) : \r\n			<ul>\r\n				<li>History</li>\r\n				<li>Education</li>				\r\n			</ul>\r\n	     </div>\r\n		 <div class="col-sm-6">\r\n			B.A. General (3 yrs.) : \r\n			<ul>\r\n				<li>Bengali</li>\r\n				<li>English</li>\r\n				<li>History</li>\r\n				<li>Education</li>	\r\n				<li>Geography</li>\r\n				<li>Economics</li>	\r\n				<li>Political Sc.</li>				\r\n			</ul>\r\n	     </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-12">B.Com.</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:21:25', '2015-12-27 10:21:25', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2015-12-27 10:24:21', '2015-12-27 10:24:21', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			B.Sc. Honours (3 yrs.) : \r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			B.Sc.   General (3 yrs.) :\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">B.Com.</div>\r\n		<div class="col-sm-6">\r\n			<div class="col-sm-6">\r\n				B.A. Honours (3 yrs.) : \r\n				<ul>\r\n					<li>History</li>\r\n					<li>Education</li>				\r\n				</ul>\r\n			 </div>\r\n			<div class="col-sm-6">\r\n				B.A. General (3 yrs.) : \r\n				<ul>\r\n					<li>Bengali</li>\r\n					<li>English</li>\r\n					<li>History</li>\r\n					<li>Education</li>	\r\n					<li>Geography</li>\r\n					<li>Economics</li>	\r\n					<li>Political Sc.</li>				\r\n				</ul>\r\n			 </div>\r\n	    </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>	\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:24:21', '2015-12-27 10:24:21', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2015-12-27 10:25:28', '2015-12-27 10:25:28', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc. Honours (3 yrs.) :</strong>\r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc.   General (3 yrs.) :</strong>\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6"><strong>B.Com.</strong></div>\r\n		<div class="col-sm-6">\r\n			<div class="col-sm-6">\r\n				<strong>B.A. Honours (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>History</li>\r\n					<li>Education</li>				\r\n				</ul>\r\n			 </div>\r\n			<div class="col-sm-6">\r\n				<strong>B.A. General (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>Bengali</li>\r\n					<li>English</li>\r\n					<li>History</li>\r\n					<li>Education</li>	\r\n					<li>Geography</li>\r\n					<li>Economics</li>	\r\n					<li>Political Sc.</li>				\r\n				</ul>\r\n			 </div>\r\n	    </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>	\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:25:28', '2015-12-27 10:25:28', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2015-12-27 10:29:47', '2015-12-27 10:29:47', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc. Honours (3 yrs.) :</strong>\r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc.   General (3 yrs.) :</strong>\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6"><strong>B.Com.</strong></div>\r\n		<div class="col-sm-6">\r\n			<div class="col-sm-6">\r\n				<strong>B.A. Honours (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>History</li>\r\n					<li>Education</li>				\r\n				</ul>\r\n			 </div>\r\n			<div class="col-sm-6">\r\n				<strong>B.A. General (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>Bengali</li>\r\n					<li>English</li>\r\n					<li>History</li>\r\n					<li>Education</li>	\r\n					<li>Geography</li>\r\n					<li>Economics</li>	\r\n					<li>Political Sc.</li>				\r\n				</ul>\r\n			 </div>\r\n	    </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>	\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n<h3>v) KINGSTON MODEL SCHOOL</h3>\r\n<p>ICSE Co-Education Day School</p>\r\n<p>School Day : Tuesday to Saturday</p>\r\n<p>Timing : 10.00 am to 4.00 pm.</p>\r\n<p>Transport available</p>\r\n<p><stong>Admission Details</strong></p>\r\n<p>Admission Form available – November onwards of each year</p>\r\n<div class="col-sm-3">\r\nAge limit : \r\n</div>\r\n<div class="col-sm-9">\r\n<p>Prep = 3 +</p>\r\n<p>Lower KG = 4 +</p>\r\n<p>Upper KG = 5 +</p>\r\n<p>Class 1 = 6 +</p>\r\n</div>\r\n<p>(Age as on 1st April of the year of admission)</p>\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:29:47', '2015-12-27 10:29:47', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(130, 1, '2015-12-27 10:30:37', '2015-12-27 10:30:37', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc. Honours (3 yrs.) :</strong>\r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc.   General (3 yrs.) :</strong>\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6"><strong>B.Com.</strong></div>\r\n		<div class="col-sm-6">\r\n			<div class="col-sm-6">\r\n				<strong>B.A. Honours (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>History</li>\r\n					<li>Education</li>				\r\n				</ul>\r\n			 </div>\r\n			<div class="col-sm-6">\r\n				<strong>B.A. General (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>Bengali</li>\r\n					<li>English</li>\r\n					<li>History</li>\r\n					<li>Education</li>	\r\n					<li>Geography</li>\r\n					<li>Economics</li>	\r\n					<li>Political Sc.</li>				\r\n				</ul>\r\n			 </div>\r\n	    </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>	\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n<h3>v) KINGSTON MODEL SCHOOL</h3>\r\n<p>ICSE Co-Education Day School</p>\r\n<p>School Day : Tuesday to Saturday</p>\r\n<p>Timing : 10.00 am to 4.00 pm.</p>\r\n<p>Transport available</p>\r\n<p><stong>Admission Details</strong></p>\r\n<p>Admission Form available – November onwards of each year</p>\r\n<div class="col-sm-6">\r\n	<div class="col-sm-3">\r\n	Age limit : \r\n	</div>\r\n	<div class="col-sm-9">\r\n	<p>Prep = 3 +</p>\r\n	<p>Lower KG = 4 +</p>\r\n	<p>Upper KG = 5 +</p>\r\n	<p>Class 1 = 6 +</p>\r\n	</div>\r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n	<p>(Age as on 1st April of the year of admission)</p>\r\n\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:30:37', '2015-12-27 10:30:37', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2015-12-27 10:31:27', '2015-12-27 10:31:27', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc. Honours (3 yrs.) :</strong>\r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc.   General (3 yrs.) :</strong>\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6"><strong>B.Com.</strong></div>\r\n		<div class="col-sm-6">\r\n			<div class="col-sm-6">\r\n				<strong>B.A. Honours (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>History</li>\r\n					<li>Education</li>				\r\n				</ul>\r\n			 </div>\r\n			<div class="col-sm-6">\r\n				<strong>B.A. General (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>Bengali</li>\r\n					<li>English</li>\r\n					<li>History</li>\r\n					<li>Education</li>	\r\n					<li>Geography</li>\r\n					<li>Economics</li>	\r\n					<li>Political Sc.</li>				\r\n				</ul>\r\n			 </div>\r\n	    </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>	\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n<h3>v) KINGSTON MODEL SCHOOL</h3>\r\n<p>ICSE Co-Education Day School</p>\r\n<p>School Day : Tuesday to Saturday</p>\r\n<p>Timing : 10.00 am to 4.00 pm.</p>\r\n<p>Transport available</p>\r\n<p><stong>Admission Details</strong></p>\r\n<p>Admission Form available – November onwards of each year</p>\r\n<div class="col-sm-12">\r\n	<div class="col-sm-6">\r\n		<div class="col-sm-3">\r\n		Age limit : \r\n		</div>\r\n		<div class="col-sm-9">\r\n		<p>Prep = 3 +</p>\r\n		<p>Lower KG = 4 +</p>\r\n		<p>Upper KG = 5 +</p>\r\n		<p>Class 1 = 6 +</p>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<p>(Age as on 1st April of the year of admission)</p>\r\n\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:31:27', '2015-12-27 10:31:27', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2015-12-27 10:31:52', '2015-12-27 10:31:52', '<h3 class="big">Colleges</h3>\r\n\r\n<h3>i) Kingston Polytechnic College</h3>\r\n<p>Approved by AICTE & Affiliated to WBSCTE</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Civil Engineering (CE) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Mechanical Engineering (ME) </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electrical Engineering (EE)  </div>\r\n <div class="col-sm-4">- 180</div> \r\n <div class="col-sm-8">Electronic & Telecommunication Engg. (ETCE)   </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Computer Science & Technology (CST)</div>\r\n <div class="col-sm-4">- 60</div>\r\n <div class="col-sm-8">Automobile Engineering (AE) </div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="clr"></div> \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Minimum 45% marks in Math + Physical Science with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n<p>or</p>\r\n<p>valid rank in JEXPO conducting by WBSCTE with minimum 35% marks (aggregate) in 10th Exam.</p>\r\n\r\n<h3>ii) Kingston Law College</h3>\r\n<p>Approved by BCI & Affiliated to W.B State University Recognized by Higher Education Department, W.B.</p>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">B.A  LL.B. (5 Yrs.) (H)</div>\r\n <div class="col-sm-4">- 120</div> \r\n <div class="col-sm-8">BBA  LL.B. (5 Yrs.) (H) </div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">B.Com. LL.B. (5 Yrs.)</div>\r\n <div class="col-sm-4">- 40</div> \r\n <div class="col-sm-8">LL.B. (3 Yrs.)</div>\r\n <div class="col-sm-4">- 120</div>  \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>(5 years) : Minimum 45% marks in 10+2 Exam for general & 40% for SC/ST </p>\r\n<p>(3 years) : Minimum 45% marks in graduation for general & 40% for SC / ST.</p>\r\n\r\n<h3>iii) KINGSTON SCHOOL OF MANAGEMENT & SCIENCE</h3>\r\n<div class="col-sm-12">\r\n<div class="col-sm-6">\r\n <div class="col-sm-8"><strong>Our Courses</strong></div>\r\n <div class="col-sm-4"><strong>Intake</strong></div> \r\n <div class="col-sm-8">Bachelor of Business Administration (BBA) Hons.</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Computer Application	(BCA)</div>\r\n <div class="col-sm-4">- 60</div> \r\n <div class="col-sm-8">Bachelor of Hospital Management	</div>\r\n <div class="col-sm-4">- 60</div>   \r\n</div>\r\n<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>Passed 10+2 examination from any recognised Board.</p>\r\n<p>For BCA the student must have Math/Computer allied subject in 10+2 exam.</p>\r\n\r\n<h3>iv) KINGSTON COLLEGE OF SCIENCE</h3>\r\n<p>Affiliated to W.B State University, Barasat, North 24 Pgs</p>\r\n<div class="col-sm-12">\r\n	<strong>Our Courses</strong>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc. Honours (3 yrs.) :</strong>\r\n			<div class="col-sm-4">Computer Sc.</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Electronics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Microbiology</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Bio-Chemistry</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Physics</div>\r\n			<div class="col-sm-8">14</div>\r\n			<div class="col-sm-4">Mathematics</div>\r\n			<div class="col-sm-8">20</div>\r\n			<div class="col-sm-4">Food & Nutrition</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Economics</div>\r\n			<div class="col-sm-8">30</div>\r\n			<div class="col-sm-4">Geography</div>\r\n			<div class="col-sm-8">30</div>			\r\n		</div>\r\n		<div class="col-sm-6">\r\n			<strong>B.Sc.   General (3 yrs.) :</strong>\r\n			<div class="col-sm-6">\r\n			Pure Sciencee\r\n		    <ul>\r\n				<li>Physics</li>\r\n				<li>Chemistry</li>\r\n				<li>Mathematics</li>\r\n				<li>Statistics</li>\r\n				<li>Computer Sc.</li>\r\n				<li>Electronics</li>\r\n			</ul>\r\n			</div>\r\n			<div class="col-sm-6">\r\n			Bio Science\r\n			<ul>\r\n				<li>Zoology</li>\r\n				<li>Botany</li>\r\n				<li>Chemistry</li>\r\n				<li>Microbiology</li>\r\n				<li>Psychology</li>\r\n				<li>Bio-Chemistry</li>\r\n			</ul>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>\r\n	<div class="col-sm-8">\r\n		<div class="col-sm-6"><strong>B.Com.</strong></div>\r\n		<div class="col-sm-6">\r\n			<div class="col-sm-6">\r\n				<strong>B.A. Honours (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>History</li>\r\n					<li>Education</li>				\r\n				</ul>\r\n			 </div>\r\n			<div class="col-sm-6">\r\n				<strong>B.A. General (3 yrs.) :</strong> \r\n				<ul>\r\n					<li>Bengali</li>\r\n					<li>English</li>\r\n					<li>History</li>\r\n					<li>Education</li>	\r\n					<li>Geography</li>\r\n					<li>Economics</li>	\r\n					<li>Political Sc.</li>				\r\n				</ul>\r\n			 </div>\r\n	    </div>\r\n	\r\n	</div>\r\n	<div class="col-sm-4">&nbsp;</div>	\r\n</div>\r\n<h3>ELIGIBILITY</h3>\r\n<p>45% marks in 10+2 examination</p>\r\n<p>Bachelor of Library & Information Science (BLIS)(1 year)</p>\r\n<p>MBA  (2 years)</p>\r\n<h3>v) KINGSTON MODEL SCHOOL</h3>\r\n<p>ICSE Co-Education Day School</p>\r\n<p>School Day : Tuesday to Saturday</p>\r\n<p>Timing : 10.00 am to 4.00 pm.</p>\r\n<p>Transport available</p>\r\n<p><stong>Admission Details</strong></p>\r\n<p>Admission Form available – November onwards of each year</p>\r\n<div class="col-sm-12">\r\n	<div class="col-sm-6">\r\n		<div class="col-sm-2">\r\n		Age limit : \r\n		</div>\r\n		<div class="col-sm-10">\r\n		<p>Prep = 3 +</p>\r\n		<p>Lower KG = 4 +</p>\r\n		<p>Upper KG = 5 +</p>\r\n		<p>Class 1 = 6 +</p>\r\n		</div>\r\n	</div>\r\n	<div class="col-sm-6">&nbsp;</div>\r\n</div>\r\n<p>(Age as on 1st April of the year of admission)</p>\r\n\r\n\r\n\r\n', 'Our Units', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2015-12-27 10:31:52', '2015-12-27 10:31:52', '', 40, 'http://blogfordeveloper.com/kingston/40-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2015-12-27 10:33:15', '2015-12-27 10:33:15', '<ul>	\r\n	<li>Laboratories</li>\r\n	<li>Computer Lab</li>\r\n	<li>Central Library</li>\r\n	<li>Digital Class Room</li>\r\n	<li>Seminar Hall</li>\r\n\r\n</ul>', 'Infrastructure', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2015-12-27 10:33:15', '2015-12-27 10:33:15', '', 42, 'http://blogfordeveloper.com/kingston/42-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-12-27 10:34:47', '2015-12-27 10:34:47', '<ul>	\r\n	<li>Canteen</li>\r\n	<li>Play Ground</li>\r\n	<li>Transport</li>\r\n	<li>Hostel</li>\r\n	<li>Reprographics system</li>\r\n        <li>Anti Ragging Committee</li>\r\n\r\n</ul>', 'Facilities', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2015-12-27 10:34:47', '2015-12-27 10:34:47', '', 44, 'http://blogfordeveloper.com/kingston/44-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-12-27 10:36:10', '2015-12-27 10:36:10', '<p>The cell looks beyond the academic curriculum and adopts every steps to inculcate among students the required skill sets that are vital for their overall development as today market ready professionals.</p>\r\n<p>Students are groomed through various technical & non-technical trainings, group discussions, workshops, seminars, soft skills and personality development programmers to make them market ready. In this process strength & weakness of each and every students are brought into limelight so that they are rectified in due course.</p>\r\n<p>The Cell will also invite corporate sector giants at regular interval for campus interview so that students get enough opportunity for showing their performance / ability to the corporate sector giants for their placement.</p>', 'Training & Placement', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2015-12-27 10:36:10', '2015-12-27 10:36:10', '', 46, 'http://blogfordeveloper.com/kingston/46-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2015-12-27 10:36:30', '2015-12-27 10:36:30', '<p>The cell looks beyond the academic curriculum and adopts every steps to inculcate among students the required skill sets that are vital for their overall development as today market ready professionals.</p>\r\n<p>&nbsp;</p>\r\n<p>Students are groomed through various technical & non-technical trainings, group discussions, workshops, seminars, soft skills and personality development programmers to make them market ready. In this process strength & weakness of each and every students are brought into limelight so that they are rectified in due course.</p>\r\n<p>&nbsp;</p>\r\n<p>The Cell will also invite corporate sector giants at regular interval for campus interview so that students get enough opportunity for showing their performance / ability to the corporate sector giants for their placement.</p>', 'Training & Placement', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2015-12-27 10:36:30', '2015-12-27 10:36:30', '', 46, 'http://blogfordeveloper.com/kingston/46-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2015-12-27 11:24:33', '2015-12-27 11:24:33', '', 'Students'' Performance', 'Keeping in tune with the maxim a sound mind in a sound body the Institute provides every opportunity to the students to build up their physique with the', 'publish', 'closed', 'closed', '', 'students-performance', '', '', '2015-12-27 11:24:33', '2015-12-27 11:24:33', '', 0, 'http://blogfordeveloper.com/kingston/?post_type=highlight&#038;p=137', 0, 'highlight', '', 0),
(138, 1, '2015-12-27 11:24:52', '2015-12-27 11:24:52', '', 'Seminars', 'Two separate hostels for boys & girls are provided to accommodate outstation students with catering facilities, at affordable rates.', 'publish', 'closed', 'closed', '', 'seminars', '', '', '2015-12-27 11:24:52', '2015-12-27 11:24:52', '', 0, 'http://blogfordeveloper.com/kingston/?post_type=highlight&#038;p=138', 0, 'highlight', '', 0),
(139, 1, '2015-12-27 11:25:10', '2015-12-27 11:25:10', '', 'Teachers Our pride', 'A huge and spectacular has been provided for supplementing the classroom education....', 'publish', 'closed', 'closed', '', 'teachers-our-pride', '', '', '2015-12-27 11:25:10', '2015-12-27 11:25:10', '', 0, 'http://blogfordeveloper.com/kingston/?post_type=highlight&#038;p=139', 0, 'highlight', '', 0),
(140, 1, '2015-12-27 11:25:29', '2015-12-27 11:25:29', '', 'Anti ragging Committee', 'We have anti ragging committee, who is looking after anti ragging matter.', 'publish', 'closed', 'closed', '', 'anti-ragging-committee', '', '', '2015-12-27 11:25:29', '2015-12-27 11:25:29', '', 0, 'http://blogfordeveloper.com/kingston/?post_type=highlight&#038;p=140', 0, 'highlight', '', 0),
(141, 1, '2015-12-27 14:20:49', '2015-12-27 14:20:49', '<h3>Corporate Office</h3>\n<p>Purbasha (Opp. Bimala Cinema)</p>\n<p>New Barrackpore Bus Stop </p>\n<p>Madhyamgram, Jessore Road</p> \n<p>Kolkata - 700 129, W.B.</p> \n<p>Ph.: (033) 2538 9508, 25267077 </p>\n<p>Fax (033) 2538 9509</p>\n<h3>College Campus</h3>\n<p>Kajibari, Barasat-Barrackpore Road</p> \n<p>Berunanpukuria, P.O. Malikapore</p> \n<p>Adjacent to W.B. State University </p>\n<p>P.S. Duttapukur, </p>\n<p>Kolkata - 700 126,</p> \nPh. (033) 2542 9800\n\n\nwebsite : www.keical.edu.in,      \nE-mail : keduins@gmail.com\n', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2015-12-27 14:20:49', '2015-12-27 14:20:49', '', 9, 'http://blogfordeveloper.com/kingston/9-autosave-v1/', 0, 'revision', '', 0),
(143, 1, '2015-12-27 14:22:45', '2015-12-27 14:22:45', '<h3>Corporate Office</h3>\r\nPurbasha (Opp. Bimala Cinema)\r\n\r\nNew Barrackpore Bus Stop\r\n\r\nMadhyamgram, Jessore Road\r\n\r\nKolkata - 700 129, W.B.\r\n\r\nPh.: (033) 2538 9508, 25267077\r\n\r\nFax (033) 2538 9509\r\n<h3>College Campus</h3>\r\nKajibari, Barasat-Barrackpore Road\r\n\r\nBerunanpukuria, P.O. Malikapore\r\n\r\nAdjacent to W.B. State University\r\n\r\nP.S. Duttapukur,\r\n\r\nKolkata - 700 126,\r\n\r\nPh. (033) 2542 9800\r\n\r\n&nbsp;\r\n\r\nwebsite : www.keical.edu.in,\r\n\r\nE-mail : keduins@gmail.com\r\n\r\n[contact-form-7 id="4" title="Contact form 1"]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-27 14:22:45', '2015-12-27 14:22:45', '', 9, 'http://blogfordeveloper.com/kingston/9-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2015-12-27 14:21:14', '2015-12-27 14:21:14', '<h3>Corporate Office</h3>\r\n<p>Purbasha (Opp. Bimala Cinema)</p>\r\n<p>New Barrackpore Bus Stop </p>\r\n<p>Madhyamgram, Jessore Road</p> \r\n<p>Kolkata - 700 129, W.B.</p> \r\n<p>Ph.: (033) 2538 9508, 25267077 </p>\r\n<p>Fax (033) 2538 9509</p>\r\n<h3>College Campus</h3>\r\n<p>Kajibari, Barasat-Barrackpore Road</p> \r\n<p>Berunanpukuria, P.O. Malikapore</p> \r\n<p>Adjacent to W.B. State University </p>\r\n<p>P.S. Duttapukur, </p>\r\n<p>Kolkata - 700 126,</p> \r\n<p>Ph. (033) 2542 9800</p>\r\n<p>&nbsp;</p>\r\n<p>website : www.keical.edu.in,</p>     \r\n<p>E-mail : keduins@gmail.com</p>\r\n', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-27 14:21:14', '2015-12-27 14:21:14', '', 9, 'http://blogfordeveloper.com/kingston/9-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2015-12-27 14:23:01', '2015-12-27 14:23:01', '<h3>Corporate Office</h3>\r\nPurbasha (Opp. Bimala Cinema)\r\n\r\nNew Barrackpore Bus Stop\r\n\r\nMadhyamgram, Jessore Road\r\n\r\nKolkata - 700 129, W.B.\r\n\r\nPh.: (033) 2538 9508, 25267077\r\n\r\nFax (033) 2538 9509\r\n<h3>College Campus</h3>\r\nKajibari, Barasat-Barrackpore Road\r\n\r\nBerunanpukuria, P.O. Malikapore\r\n\r\nAdjacent to W.B. State University\r\n\r\nP.S. Duttapukur,\r\n\r\nKolkata - 700 126,\r\n\r\nPh. (033) 2542 9800\r\n\r\n&nbsp;\r\n\r\nwebsite : www.keical.edu.in,\r\n\r\nE-mail : keduins@gmail.com\r\n&nbsp;\r\n&nbsp;\r\n\r\n[contact-form-7 id="4" title="Contact form 1"]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-27 14:23:01', '2015-12-27 14:23:01', '', 9, 'http://blogfordeveloper.com/kingston/9-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2015-12-27 14:25:22', '2015-12-27 14:25:22', '', 'photo-gallery-bg', '', 'inherit', 'open', 'closed', '', 'photo-gallery-bg', '', '', '2015-12-27 14:25:22', '2015-12-27 14:25:22', '', 1, 'http://blogfordeveloper.com/kingston/wp-content/uploads/2015/12/photo-gallery-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2015-12-27 14:25:39', '2015-12-27 14:25:39', 'Kingston Educational Institute, the stepping stone for the students to enter into the kingdom of higher education has completed its 12 years of its glorious existence on serving humanity. The sprawling campus covering an area of 30 acres of land is located in a semi-urban place surrounded by lush green meadow in the serenity of pollution free and eco-friendly environment. Veteran teachers with their quality teaching have been the greatest strength of the KEI which has helps the thousands of students to bear the light of hope and secured future. Inspired by the theory â€œnature is the best teachers, KEI with its ethnic beauty of green meadow along with modern infrastructure has given the ample scope to the students to nurture their creativity and excel their versatility on campusing to see them happily placed in different sectors of professional career.', 'Kingston Educational Institute Demo Post', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-12-27 14:25:39', '2015-12-27 14:25:39', '', 1, 'http://blogfordeveloper.com/kingston/1-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2015-12-27 18:12:27', '2015-12-27 18:12:27', '<h3>Corporate Office</h3>\r\nPurbasha (Opp. Bimala Cinema)\r\n\r\nNew Barrackpore Bus Stop\r\n\r\nMadhyamgram, Jessore Road\r\n\r\nKolkata - 700 129, W.B.\r\n\r\nPh.: (033) 2538 9508, 25267077\r\n\r\nFax (033) 2538 9509\r\n<h3>College Campus</h3>\r\nKajibari, Barasat-Barrackpore Road\r\n\r\nBerunanpukuria, P.O. Malikapore\r\n\r\nAdjacent to W.B. State University\r\n\r\nP.S. Duttapukur,\r\n\r\nKolkata - 700 126,\r\n\r\nPh. (033) 2542 9800\r\n\r\n&nbsp;\r\n\r\nwebsite : www.keical.edu.in,\r\n\r\nE-mail : keduins@gmail.com\r\n&nbsp;\r\n&nbsp;\r\n\r\n[contact-form-7 id="4" title="Contact form 1"]\r\n&nbsp;\r\n&nbsp;\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1841.4082897255228!2d88.41423239882693!3d22.623323599467565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f89f417450d265%3A0xa875f457f8457a71!2sKingston+Educational+Institute!5e0!3m2!1sen!2sin!4v1451239549427" width="80%" height="400px" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-27 18:12:27', '2015-12-27 18:12:27', '', 9, 'http://blogfordeveloper.com/kingston/9-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2015-12-27 18:12:42', '2015-12-27 18:12:42', '<h3>Corporate Office</h3>\r\nPurbasha (Opp. Bimala Cinema)\r\n\r\nNew Barrackpore Bus Stop\r\n\r\nMadhyamgram, Jessore Road\r\n\r\nKolkata - 700 129, W.B.\r\n\r\nPh.: (033) 2538 9508, 25267077\r\n\r\nFax (033) 2538 9509\r\n<h3>College Campus</h3>\r\nKajibari, Barasat-Barrackpore Road\r\n\r\nBerunanpukuria, P.O. Malikapore\r\n\r\nAdjacent to W.B. State University\r\n\r\nP.S. Duttapukur,\r\n\r\nKolkata - 700 126,\r\n\r\nPh. (033) 2542 9800\r\n\r\n&nbsp;\r\n\r\nwebsite : www.keical.edu.in,\r\n\r\nE-mail : keduins@gmail.com\r\n&nbsp;\r\n&nbsp;\r\n\r\n[contact-form-7 id="4" title="Contact form 1"]\r\n&nbsp;\r\n&nbsp;\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1841.4082897255228!2d88.41423239882693!3d22.623323599467565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f89f417450d265%3A0xa875f457f8457a71!2sKingston+Educational+Institute!5e0!3m2!1sen!2sin!4v1451239549427" width="80%" height="500px" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Contact us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-12-27 18:12:42', '2015-12-27 18:12:42', '', 9, 'http://blogfordeveloper.com/kingston/9-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2015-12-29 17:27:39', '2015-12-29 17:27:39', '', 'Forum', '', 'publish', 'closed', 'closed', '', 'forum', '', '', '2015-12-29 17:27:39', '2015-12-29 17:27:39', '', 0, 'http://blogfordeveloper.com/kingston/forum/', 0, 'page', '', 0),
(150, 1, '2015-12-29 17:28:23', '2015-12-29 17:28:23', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2015-12-29 17:28:23', '2015-12-29 17:28:23', '', 0, 'http://blogfordeveloper.com/kingston/?p=150', 18, 'nav_menu_item', '', 0),
(154, 1, '2016-01-03 07:55:52', '2016-01-03 07:55:52', '', 'bpt', '', 'inherit', 'open', 'closed', '', 'bpt', '', '', '2016-01-03 07:55:52', '2016-01-03 07:55:52', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/bpt.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2016-01-03 07:55:58', '2016-01-03 07:55:58', '', 'chemtex', '', 'inherit', 'open', 'closed', '', 'chemtex', '', '', '2016-01-03 07:55:58', '2016-01-03 07:55:58', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/chemtex.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2016-01-03 07:56:27', '2016-01-03 07:56:27', '', 'descon', '', 'inherit', 'open', 'closed', '', 'descon', '', '', '2016-01-03 07:56:27', '2016-01-03 07:56:27', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/descon.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2016-01-03 07:56:38', '2016-01-03 07:56:38', '', 'hcl', '', 'inherit', 'open', 'closed', '', 'hcl', '', '', '2016-01-03 07:56:38', '2016-01-03 07:56:38', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/hcl.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2016-01-03 07:56:50', '2016-01-03 07:56:50', '', 'magnet', '', 'inherit', 'open', 'closed', '', 'magnet', '', '', '2016-01-03 07:56:50', '2016-01-03 07:56:50', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/magnet.png', 0, 'attachment', 'image/png', 0),
(159, 1, '2016-01-03 07:56:59', '2016-01-03 07:56:59', '', 'obrembo', '', 'inherit', 'open', 'closed', '', 'obrembo', '', '', '2016-01-03 07:56:59', '2016-01-03 07:56:59', '', 0, 'http://localhost/kingston/wp-content/uploads/2016/01/obrembo.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2016-01-03 08:17:09', '2016-01-03 08:17:09', '<div class="adm-bg">\r\n     <div class="adm_form">\r\n        <div class="adm_head"><h3>ADMISSION QUERY</h3></div>\r\n        <div class="form1">\r\n          [text* name id:name "Name..."]\r\n          [email* Email id:Email "Email.."]\r\n          [text* Subject id:Subject "Subject"]                       \r\n          [tel* Contact-No id:Contact-No "Contact No"]\r\n        </div>\r\n        <div class="form_message">[textarea* Message id:Message "Message..."]</div>\r\n        <div class="btn">[submit id:send "Send message"]</div>\r\n     </div>\r\n</div>\n[your-subject]\n[your-name] <bikash.pal2000@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)\nbikash.pal2000@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nKingston <bikash.pal2000@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Kingston (http://localhost/kingston)\n[your-email]\nReply-To: bikash.pal2000@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nYour answer is not correct.\nYour entered code is incorrect.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.', 'Admission Query', '', 'publish', 'closed', 'closed', '', 'admission-query', '', '', '2016-01-03 09:01:13', '2016-01-03 09:01:13', '', 0, 'http://localhost/kingston/?post_type=wpcf7_contact_form&#038;p=160', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfauthcats`
--

DROP TABLE IF EXISTS `wp_sfauthcats`;
CREATE TABLE IF NOT EXISTS `wp_sfauthcats` (
  `authcat_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `authcat_name` varchar(50) NOT NULL,
  `authcat_slug` varchar(50) NOT NULL,
  `authcat_desc` tinytext,
  PRIMARY KEY (`authcat_id`),
  KEY `authcat_slug_idx` (`authcat_slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `wp_sfauthcats`
--

INSERT INTO `wp_sfauthcats` (`authcat_id`, `authcat_name`, `authcat_slug`, `authcat_desc`) VALUES
(1, 'General', 'general', 'auth category for general auths'),
(2, 'Viewing', 'viewing', 'auth category for viewing auths'),
(3, 'Creating', 'creating', 'auth category for creating auths'),
(4, 'Editing', 'editing', 'auth category for editing auths'),
(5, 'Deleting', 'deleting', 'auth category for deleting auths'),
(6, 'Moderation', 'moderation', 'auth category for moderation auths'),
(7, 'Tools', 'tools', 'auth category for tools auths'),
(8, 'Uploading', 'uploading', 'auth category for uploading auths');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfauths`
--

DROP TABLE IF EXISTS `wp_sfauths`;
CREATE TABLE IF NOT EXISTS `wp_sfauths` (
  `auth_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(50) NOT NULL,
  `auth_desc` text,
  `active` smallint(1) NOT NULL DEFAULT '0',
  `ignored` smallint(1) NOT NULL DEFAULT '0',
  `enabling` smallint(1) NOT NULL DEFAULT '0',
  `admin_negate` smallint(1) NOT NULL DEFAULT '0',
  `auth_cat` bigint(20) NOT NULL DEFAULT '1',
  `warning` tinytext,
  PRIMARY KEY (`auth_id`),
  KEY `auth_name_idx` (`auth_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `wp_sfauths`
--

INSERT INTO `wp_sfauths` (`auth_id`, `auth_name`, `auth_desc`, `active`, `ignored`, `enabling`, `admin_negate`, `auth_cat`, `warning`) VALUES
(1, 'view_forum', 'Can view a forum', 1, 0, 0, 0, 2, ''),
(2, 'view_forum_lists', 'Can view a list of forums only', 1, 0, 0, 0, 2, ''),
(3, 'view_forum_topic_lists', 'Can view a list of forums and list of topics only', 1, 0, 0, 0, 2, ''),
(4, 'view_admin_posts', 'Can view posts by an administrator', 1, 0, 0, 0, 2, ''),
(5, 'view_own_admin_posts', 'Can view only own posts and admin/mod posts', 1, 1, 0, 1, 2, ''),
(6, 'view_email', 'Can view email and IP addresses of members', 1, 1, 0, 0, 2, ''),
(7, 'view_profiles', 'Can view profiles of members', 1, 0, 0, 0, 2, ''),
(8, 'view_members_list', 'Can view the members lists', 1, 0, 0, 0, 2, ''),
(9, 'view_links', 'Can view links within posts', 1, 0, 0, 0, 2, ''),
(10, 'start_topics', 'Can start new topics in a forum', 1, 0, 0, 0, 3, ''),
(11, 'reply_topics', 'Can reply to existing topics in a forum', 1, 0, 0, 0, 3, ''),
(12, 'reply_own_topics', 'Can only reply to own topics', 1, 1, 0, 1, 3, ''),
(13, 'bypass_flood_control', 'Can bypass wait time between posts', 1, 0, 0, 0, 3, ''),
(14, 'use_spoilers', 'Can use spoilers in posts in posts', 1, 0, 0, 0, 3, ''),
(15, 'use_signatures', 'Can attach a signature to posts', 1, 1, 0, 0, 3, ''),
(16, 'create_links', 'Can create links in posts', 1, 0, 0, 0, 3, ''),
(17, 'can_use_smileys', 'Can use smileys in posts', 1, 0, 0, 0, 3, ''),
(18, 'can_use_iframes', 'Can use iframes in posts', 1, 1, 0, 0, 3, '*** WARNING *** The use of iframes is dangerous. Allowing users to create iframes enables them to launch a potential security threat against your website. Enabling iframes requires your trust in your users. Turn on with care.'),
(19, 'edit_own_topic_titles', 'Can edit own topic titles', 1, 1, 0, 0, 4, ''),
(20, 'edit_any_topic_titles', 'Can edit any topic title', 1, 1, 0, 0, 4, ''),
(21, 'edit_own_posts_for_time', 'Can edit own posts for time period', 1, 1, 0, 0, 4, ''),
(22, 'edit_own_posts_forever', 'Can edit own posts forever', 1, 1, 0, 0, 4, ''),
(23, 'edit_own_posts_reply', 'Can edit own posts until there has been a reply', 1, 1, 0, 0, 4, ''),
(24, 'edit_any_post', 'Can edit any post', 1, 1, 0, 0, 4, ''),
(25, 'delete_topics', 'Can delete topics in forum', 1, 1, 0, 0, 5, ''),
(26, 'delete_own_posts', 'Can delete own posts', 1, 1, 0, 0, 5, ''),
(27, 'delete_any_post', 'Can delete any post', 1, 1, 0, 0, 5, ''),
(28, 'bypass_math_question', 'Can bypass the math question', 1, 0, 0, 0, 6, ''),
(29, 'bypass_moderation', 'Can bypass all post moderation', 1, 0, 0, 0, 6, '0'),
(30, 'bypass_moderation_once', 'Can bypass first post moderation', 1, 0, 0, 0, 6, ''),
(31, 'moderate_posts', 'Can moderate pending posts', 1, 1, 0, 0, 6, ''),
(32, 'pin_topics', 'Can pin topics in a forum', 1, 0, 0, 0, 7, ''),
(33, 'move_topics', 'Can move topics from a forum', 1, 0, 0, 0, 7, ''),
(34, 'move_posts', 'Can move posts from a topic', 1, 0, 0, 0, 7, ''),
(35, 'lock_topics', 'Can lock topics in a forum', 1, 0, 0, 0, 7, ''),
(36, 'pin_posts', 'Can pin posts within a topic', 1, 0, 0, 0, 7, ''),
(37, 'reassign_posts', 'Can reassign posts to a different user', 1, 0, 0, 0, 7, ''),
(38, 'upload_avatars', 'Can upload avatars', 1, 1, 1, 0, 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfcache`
--

DROP TABLE IF EXISTS `wp_sfcache`;
CREATE TABLE IF NOT EXISTS `wp_sfcache` (
  `cache_id` varchar(40) NOT NULL DEFAULT '',
  `cache_out` bigint(6) DEFAULT NULL,
  `cache` mediumtext,
  PRIMARY KEY (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_sfcache`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfdefpermissions`
--

DROP TABLE IF EXISTS `wp_sfdefpermissions`;
CREATE TABLE IF NOT EXISTS `wp_sfdefpermissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL DEFAULT '0',
  `usergroup_id` bigint(20) NOT NULL DEFAULT '0',
  `permission_role` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `group_id_idx` (`group_id`),
  KEY `usergroup_id_idx` (`usergroup_id`),
  KEY `permission_role_idx` (`permission_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfdefpermissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sferrorlog`
--

DROP TABLE IF EXISTS `wp_sferrorlog`;
CREATE TABLE IF NOT EXISTS `wp_sferrorlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `error_date` datetime NOT NULL,
  `error_type` varchar(10) NOT NULL,
  `error_cat` varchar(13) NOT NULL DEFAULT 'spaErrOther',
  `keycheck` varchar(45) DEFAULT NULL,
  `error_count` smallint(6) DEFAULT NULL,
  `error_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_sferrorlog`
--

INSERT INTO `wp_sferrorlog` (`id`, `error_date`, `error_type`, `error_cat`, `keycheck`, `error_count`, `error_text`) VALUES
(1, '2016-01-03 07:42:03', 'php', 'spaErrNotice', 'Notice82ress/sp-api/sp-api-plugins.php', 1, 'file: /simple-press/sp-api/sp-api-plugins.php<br />line: 82<br />function: sp_get_plugins<br />Notice | Undefined variable: plugins_subdir'),
(2, '2016-01-03 08:25:01', 'php', 'spaErrNotice', 'Notice726sp-forum-support-functions.php', 1, 'file: /simple-press/sp-startup/forum/sp-forum-support-functions.php<br />line: 726<br />function: sp_og_namespace<br />Notice | Undefined index: sfseo_og'),
(3, '2016-01-03 08:25:01', 'php', 'spaErrNotice', 'Notice741sp-forum-support-functions.php', 1, 'file: /simple-press/sp-startup/forum/sp-forum-support-functions.php<br />line: 741<br />function: sp_og_meta<br />Notice | Undefined index: sfseo_og');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfforums`
--

DROP TABLE IF EXISTS `wp_sfforums`;
CREATE TABLE IF NOT EXISTS `wp_sfforums` (
  `forum_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(200) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `forum_seq` int(4) DEFAULT NULL,
  `forum_desc` text,
  `forum_status` int(4) NOT NULL DEFAULT '0',
  `forum_disabled` smallint(1) NOT NULL DEFAULT '0',
  `forum_slug` varchar(200) NOT NULL,
  `forum_rss` text,
  `forum_icon` varchar(50) DEFAULT NULL,
  `forum_icon_new` varchar(50) DEFAULT NULL,
  `forum_icon_locked` varchar(50) DEFAULT NULL,
  `topic_icon` varchar(50) DEFAULT NULL,
  `topic_icon_new` varchar(50) DEFAULT NULL,
  `topic_icon_locked` varchar(50) DEFAULT NULL,
  `topic_icon_pinned` varchar(50) DEFAULT NULL,
  `feature_image` varchar(50) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `post_id_held` bigint(20) DEFAULT NULL,
  `topic_count` mediumint(8) DEFAULT '0',
  `post_count` mediumint(8) DEFAULT '0',
  `post_count_held` mediumint(8) DEFAULT '0',
  `forum_rss_private` smallint(1) NOT NULL DEFAULT '0',
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `children` text,
  `forum_message` text,
  `keywords` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`forum_id`),
  KEY `group_id_idx` (`group_id`),
  KEY `forum_slug_idx` (`forum_slug`),
  KEY `post_id_idx` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfforums`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfgroups`
--

DROP TABLE IF EXISTS `wp_sfgroups`;
CREATE TABLE IF NOT EXISTS `wp_sfgroups` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_name` text,
  `group_seq` int(4) DEFAULT NULL,
  `group_desc` text,
  `group_rss` text,
  `group_icon` varchar(50) DEFAULT NULL,
  `group_message` text,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfgroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sflog`
--

DROP TABLE IF EXISTS `wp_sflog`;
CREATE TABLE IF NOT EXISTS `wp_sflog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `install_date` date NOT NULL,
  `release_type` varchar(20) DEFAULT NULL,
  `version` varchar(10) NOT NULL,
  `build` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_sflog`
--

INSERT INTO `wp_sflog` (`id`, `user_id`, `install_date`, `release_type`, `version`, `build`) VALUES
(1, 1, '2015-12-29', 'Release', '5.6.1', 13700);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sflogmeta`
--

DROP TABLE IF EXISTS `wp_sflogmeta`;
CREATE TABLE IF NOT EXISTS `wp_sflogmeta` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(10) DEFAULT NULL,
  `log_data` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sflogmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfmembers`
--

DROP TABLE IF EXISTS `wp_sfmembers`;
CREATE TABLE IF NOT EXISTS `wp_sfmembers` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `display_name` varchar(100) DEFAULT NULL,
  `moderator` smallint(1) NOT NULL DEFAULT '0',
  `avatar` longtext,
  `signature` text,
  `posts` int(4) DEFAULT NULL,
  `lastvisit` datetime DEFAULT NULL,
  `newposts` longtext,
  `checktime` datetime DEFAULT NULL,
  `admin` smallint(1) NOT NULL DEFAULT '0',
  `feedkey` varchar(36) DEFAULT NULL,
  `admin_options` longtext,
  `user_options` longtext,
  `auths` longtext,
  `memberships` longtext,
  `plugin_data` longtext,
  PRIMARY KEY (`user_id`),
  KEY `admin_idx` (`admin`),
  KEY `moderator_idx` (`moderator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_sfmembers`
--

INSERT INTO `wp_sfmembers` (`user_id`, `display_name`, `moderator`, `avatar`, `signature`, `posts`, `lastvisit`, `newposts`, `checktime`, `admin`, `feedkey`, `admin_options`, `user_options`, `auths`, `memberships`, `plugin_data`) VALUES
(1, 'admin', 0, 'a:1:{s:8:"uploaded";s:0:"";}', '', 0, '2015-12-29 17:27:44', '', '2015-12-29 17:27:44', 1, 'c83330fe-0394-43e3-b7e5-09d34b228aec', 'a:2:{s:8:"sfnotify";b:0;s:13:"notify-edited";b:1;}', 'a:6:{s:10:"hidestatus";i:0;s:8:"timezone";i:0;s:15:"timezone_string";s:3:"UTC";s:6:"editor";i:1;s:8:"namesync";i:1;s:11:"unreadposts";i:50;}', 'a:1:{s:6:"global";a:0:{}}', NULL, 'O:8:"stdClass":1:{s:2:"ID";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfmemberships`
--

DROP TABLE IF EXISTS `wp_sfmemberships`;
CREATE TABLE IF NOT EXISTS `wp_sfmemberships` (
  `membership_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `usergroup_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`membership_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `usergroup_id_idx` (`usergroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfmemberships`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfmeta`
--

DROP TABLE IF EXISTS `wp_sfmeta`;
CREATE TABLE IF NOT EXISTS `wp_sfmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `meta_type` varchar(20) NOT NULL,
  `meta_key` varchar(100) DEFAULT NULL,
  `meta_value` longtext,
  `autoload` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`meta_id`),
  KEY `meta_type_idx` (`meta_type`),
  KEY `autoload_idx` (`autoload`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `wp_sfmeta`
--

INSERT INTO `wp_sfmeta` (`meta_id`, `meta_type`, `meta_key`, `meta_value`, `autoload`) VALUES
(1, 'default usergroup', 'sfguests', '1', 0),
(2, 'default usergroup', 'sfmembers', '2', 0),
(3, 'default usergroup', 'administrator', '2', 0),
(4, 'default usergroup', 'editor', '2', 0),
(5, 'default usergroup', 'author', '2', 0),
(6, 'default usergroup', 'contributor', '2', 0),
(7, 'default usergroup', 'subscriber', '2', 0),
(8, 'forum_rank', 'New Member', 'a:3:{s:5:"posts";i:2;s:9:"usergroup";s:4:"none";s:5:"image";s:4:"none";}', 1),
(9, 'forum_rank', 'Member', 'a:3:{s:5:"posts";i:1000;s:9:"usergroup";s:4:"none";s:5:"image";s:4:"none";}', 1),
(10, 'sort_order', 'forum', '', 1),
(11, 'sort_order', 'topic', '', 1),
(12, 'autoupdate', 'user', 'a:2:{i:0;s:13:"spjUserUpdate";i:1;s:41:"sp_ahah=autoupdate&amp;sfnonce=b9c193f815";}', 1),
(13, 'smileys', 'smileys', 'a:11:{s:8:"Confused";a:5:{i:0;s:15:"sf-confused.gif";i:1;s:5:":???:";i:2;i:1;i:3;i:0;i:4;i:0;}s:4:"Cool";a:5:{i:0;s:11:"sf-cool.gif";i:1;s:6:":cool:";i:2;i:1;i:3;i:1;i:4;i:0;}s:3:"Cry";a:5:{i:0;s:10:"sf-cry.gif";i:1;s:5:":cry:";i:2;i:1;i:3;i:2;i:4;i:0;}s:10:"Embarassed";a:5:{i:0;s:17:"sf-embarassed.gif";i:1;s:6:":oops:";i:2;i:1;i:3;i:3;i:4;i:0;}s:5:"Frown";a:5:{i:0;s:12:"sf-frown.gif";i:1;s:7:":frown:";i:2;i:1;i:3;i:4;i:4;i:0;}s:4:"Kiss";a:5:{i:0;s:11:"sf-kiss.gif";i:1;s:6:":kiss:";i:2;i:1;i:3;i:5;i:4;i:0;}s:5:"Laugh";a:5:{i:0;s:12:"sf-laugh.gif";i:1;s:5:":lol:";i:2;i:1;i:3;i:6;i:4;i:0;}s:5:"Smile";a:5:{i:0;s:12:"sf-smile.gif";i:1;s:7:":smile:";i:2;i:1;i:3;i:7;i:4;i:0;}s:9:"Surprised";a:5:{i:0;s:16:"sf-surprised.gif";i:1;s:5:":eek:";i:2;i:1;i:3;i:8;i:4;i:0;}s:4:"Wink";a:5:{i:0;s:11:"sf-wink.gif";i:1;s:6:":wink:";i:2;i:1;i:3;i:9;i:4;i:0;}s:4:"Yell";a:5:{i:0;s:11:"sf-yell.gif";i:1;s:6:":yell:";i:2;i:1;i:3;i:10;i:4;i:0;}}', 1),
(14, 'profile', 'tabs', 'a:4:{i:0;a:5:{s:4:"name";s:7:"Profile";s:4:"slug";s:7:"profile";s:7:"display";i:1;s:4:"auth";s:0:"";s:5:"menus";a:7:{i:0;a:5:{s:4:"name";s:8:"Overview";s:4:"slug";s:8:"overview";s:4:"form";s:97:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-overview.php";s:7:"display";i:1;s:4:"auth";s:0:"";}i:1;a:5:{s:4:"name";s:12:"Edit Profile";s:4:"slug";s:12:"edit-profile";s:4:"form";s:96:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-profile.php";s:7:"display";i:1;s:4:"auth";s:0:"";}i:2;a:5:{s:4:"name";s:15:"Edit Identities";s:4:"slug";s:15:"edit-identities";s:4:"form";s:99:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-identities.php";s:7:"display";i:1;s:4:"auth";s:0:"";}i:3;a:5:{s:4:"name";s:11:"Edit Avatar";s:4:"slug";s:11:"edit-avatar";s:4:"form";s:95:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-avatar.php";s:7:"display";i:1;s:4:"auth";s:0:"";}i:4;a:5:{s:4:"name";s:14:"Edit Signature";s:4:"slug";s:14:"edit-signature";s:4:"form";s:98:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-signature.php";s:7:"display";i:1;s:4:"auth";s:14:"use_signatures";}i:5;a:5:{s:4:"name";s:11:"Edit Photos";s:4:"slug";s:11:"edit-photos";s:4:"form";s:95:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-photos.php";s:7:"display";i:1;s:4:"auth";s:0:"";}i:6;a:5:{s:4:"name";s:16:"Account Settings";s:4:"slug";s:16:"account-settings";s:4:"form";s:96:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-account.php";s:7:"display";i:1;s:4:"auth";s:0:"";}}}i:1;a:5:{s:4:"name";s:7:"Options";s:4:"slug";s:7:"options";s:7:"display";i:1;s:4:"auth";s:0:"";s:5:"menus";a:3:{i:0;a:5:{s:4:"name";s:19:"Edit Global Options";s:4:"slug";s:19:"edit-global-options";s:4:"form";s:103:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-global-options.php";s:7:"display";i:1;s:4:"auth";s:0:"";}i:1;a:5:{s:4:"name";s:20:"Edit Posting Options";s:4:"slug";s:20:"edit-posting-options";s:4:"form";s:104:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-posting-options.php";s:7:"display";i:1;s:4:"auth";s:0:"";}i:2;a:5:{s:4:"name";s:20:"Edit Display Options";s:4:"slug";s:20:"edit-display-options";s:4:"form";s:104:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-display-options.php";s:7:"display";i:1;s:4:"auth";s:0:"";}}}i:2;a:5:{s:4:"name";s:10:"Usergroups";s:4:"slug";s:10:"usergroups";s:7:"display";i:1;s:4:"auth";s:0:"";s:5:"menus";a:1:{i:0;a:5:{s:4:"name";s:16:"Show Memberships";s:4:"slug";s:16:"show-memberships";s:4:"form";s:100:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-memberships.php";s:7:"display";i:1;s:4:"auth";s:0:"";}}}i:3;a:5:{s:4:"name";s:11:"Permissions";s:4:"slug";s:11:"permissions";s:7:"display";i:1;s:4:"auth";s:0:"";s:5:"menus";a:1:{i:0;a:5:{s:4:"name";s:16:"Show Permissions";s:4:"slug";s:16:"show-permissions";s:4:"form";s:100:"D:/xampp/htdocs/kingston/wp-content/plugins/simple-press/forum/profile/forms/sp-form-permissions.php";s:7:"display";i:1;s:4:"auth";s:0:"";}}}}', 0),
(15, 'news', 'news', 'a:3:{s:2:"id";s:2:"21";s:4:"show";i:1;s:4:"news";s:474:"\n        \n        <h4><b>All Simple:Press Plugins now available to purchase</b></h4>\n        <p>Have you visited the new <a href=\\"http://simple-press.com/store/\\">Simple:Press</a> Store?</p>\n        <p>Did you know that you can now purchase all Simple:Press plugins and themes individually - or in generously discounted bundles, without needing to sign up for membership?</p>\n        <p>If there is a plugin you need now is the time to pay us a visit.</p>\n        \n        ";}', 0),
(16, 'mysql', 'search', 'a:2:{s:3:"min";s:1:"4";s:3:"max";s:2:"84";}', 1),
(17, 'topic_cache', 'new', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfnotices`
--

DROP TABLE IF EXISTS `wp_sfnotices`;
CREATE TABLE IF NOT EXISTS `wp_sfnotices` (
  `notice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `guest_email` varchar(75) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `link_text` varchar(200) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `expires` int(4) DEFAULT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfnotices`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfoptions`
--

DROP TABLE IF EXISTS `wp_sfoptions`;
CREATE TABLE IF NOT EXISTS `wp_sfoptions` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`option_name`),
  KEY `option_id_idx` (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `wp_sfoptions`
--

INSERT INTO `wp_sfoptions` (`option_id`, `option_name`, `option_value`) VALUES
(44, 'account-name', ''),
(55, 'captcha-value', '1451410062'),
(49, 'combinecss', ''),
(50, 'combinejs', ''),
(45, 'display-name', ''),
(56, 'editpostdays', '7'),
(54, 'floodcontrol', '10'),
(46, 'guest-name', ''),
(1, 'installed_tables', 'a:23:{i:0;s:13:"wp_sfauthcats";i:1;s:10:"wp_sfauths";i:2;s:10:"wp_sfcache";i:3;s:19:"wp_sfdefpermissions";i:4;s:13:"wp_sferrorlog";i:5;s:11:"wp_sfforums";i:6;s:11:"wp_sfgroups";i:7;s:8:"wp_sflog";i:8;s:12:"wp_sflogmeta";i:9;s:12:"wp_sfmembers";i:10;s:16:"wp_sfmemberships";i:11;s:9:"wp_sfmeta";i:12;s:12:"wp_sfnotices";i:13;s:12:"wp_sfoptions";i:14;s:16:"wp_sfpermissions";i:15;s:10:"wp_sfposts";i:16;s:10:"wp_sfroles";i:17;s:17:"wp_sfspecialranks";i:18;s:11:"wp_sftopics";i:19;s:10:"wp_sftrack";i:20;s:17:"wp_sfuseractivity";i:21;s:15:"wp_sfusergroups";i:22;s:12:"wp_sfwaiting";}'),
(48, 'poststamp', '2015-12-29 17:27:42'),
(51, 'post_count_delete', ''),
(18, 'sfadminsettings', 'a:5:{s:16:"sfdashboardstats";b:1;s:14:"sfadminapprove";b:0;s:14:"sfmoderapprove";b:0;s:10:"editnotice";b:1;s:10:"movenotice";b:1;}'),
(19, 'sfauto', 'a:2:{s:12:"sfautoupdate";b:0;s:10:"sfautotime";i:300;}'),
(30, 'sfavatars', 'a:10:{s:13:"sfshowavatars";b:1;s:15:"sfavataruploads";b:1;s:12:"sfavatarpool";b:0;s:14:"sfavatarremote";b:0;s:12:"sfgmaxrating";i:1;s:12:"sfavatarsize";i:50;s:14:"sfavatarresize";b:1;s:21:"sfavatarresizequality";i:90;s:16:"sfavatarfilesize";i:10240;s:16:"sfavatarpriority";a:6:{i:0;i:0;i:1;i:2;i:2;i:3;i:3;i:1;i:4;i:4;i:5;i:5;}}'),
(11, 'sfbadwords', ''),
(25, 'sfblockadmin', 'a:4:{s:10:"blockadmin";b:0;s:12:"blockprofile";b:0;s:10:"blockroles";s:13:"administrator";s:13:"blockredirect";s:32:"http://blogfordeveloper.com/kingston/forum/";}'),
(68, 'sfbuild', '13700'),
(62, 'sfconfig', 'a:12:{s:7:"avatars";s:26:"sp-resources/forum-avatars";s:11:"avatar-pool";s:30:"sp-resources/forum-avatar-pool";s:7:"smileys";s:26:"sp-resources/forum-smileys";s:5:"ranks";s:25:"sp-resources/forum-badges";s:12:"custom-icons";s:31:"sp-resources/forum-custom-icons";s:5:"cache";s:24:"sp-resources/forum-cache";s:12:"forum-images";s:34:"sp-resources//forum-feature-images";s:11:"language-sp";s:40:"sp-resources/forum-language/simple-press";s:19:"language-sp-plugins";s:38:"sp-resources/forum-language/sp-plugins";s:18:"language-sp-themes";s:37:"sp-resources/forum-language/sp-themes";s:7:"plugins";s:26:"sp-resources/forum-plugins";s:6:"themes";s:25:"sp-resources/forum-themes";}'),
(24, 'sfcontrols', 'a:5:{s:12:"showtopcount";i:10;s:12:"shownewcount";i:10;s:16:"sfdefunreadposts";i:50;s:13:"sfusersunread";b:0;s:16:"sfmaxunreadposts";i:50;}'),
(6, 'sfdates', 'F j, Y'),
(27, 'sfdisplay', 'a:4:{s:9:"pagetitle";a:2:{s:7:"notitle";b:0;s:6:"banner";s:0:"";}s:6:"forums";a:1:{s:11:"singleforum";b:0;}s:6:"topics";a:2:{s:7:"perpage";i:12;s:10:"sortnewtop";b:1;}s:5:"posts";a:2:{s:7:"perpage";i:20;s:8:"sortdesc";b:0;}}'),
(13, 'sfeditormsg', ''),
(20, 'sffilters', 'a:9:{s:10:"sfnofollow";b:0;s:8:"sftarget";b:1;s:10:"sfurlchars";i:40;s:11:"sffilterpre";b:0;s:10:"sfmaxlinks";i:0;s:12:"sfnolinksmsg";s:56:"<b>** you do not have permission to see this link **</b>";s:12:"sfdupemember";i:0;s:11:"sfdupeguest";i:0;s:12:"sfmaxsmileys";i:0;}'),
(32, 'sffiltershortcodes', '1'),
(28, 'sfguests', 'a:2:{s:8:"reqemail";b:1;s:11:"storecookie";b:1;}'),
(10, 'sfimage', 'a:6:{s:7:"enlarge";b:1;s:7:"process";b:1;s:9:"thumbsize";i:100;s:5:"style";s:4:"left";s:9:"constrain";b:1;s:10:"forceclear";b:0;}'),
(35, 'sfinloop', '1'),
(9, 'sflockdown', ''),
(17, 'sflogin', 'a:6:{s:9:"sfregmath";b:1;s:10:"sfloginurl";s:32:"http://blogfordeveloper.com/kingston/forum/";s:11:"sflogouturl";s:32:"http://blogfordeveloper.com/kingston/forum/";s:13:"sfregisterurl";s:0:"";s:15:"sfloginemailurl";s:38:"http://blogfordeveloper.com/kingston/wp-login.php";s:9:"sptimeout";i:20;}'),
(14, 'sfmail', 'a:4:{s:12:"sfmailsender";s:8:"Kingston";s:10:"sfmailfrom";s:14:"bikash.pal2000";s:12:"sfmaildomain";s:9:"gmail.com";s:9:"sfmailuse";b:1;}'),
(23, 'sfmemberopts', 'a:3:{s:16:"sfcheckformember";b:1;s:18:"sfsinglemembership";b:0;s:12:"sfhidestatus";b:1;}'),
(26, 'sfmetatags', 'a:4:{s:7:"sfdescr";s:0:"";s:10:"sfdescruse";i:1;s:13:"sfusekeywords";i:2;s:10:"sfkeywords";s:5:"forum";}'),
(36, 'sfmultiplecontent', ''),
(15, 'sfnewusermail', 'a:3:{s:11:"sfusespfreg";b:1;s:16:"sfnewusersubject";s:21:"Welcome to %BLOGNAME%";s:13:"sfnewusertext";s:174:"Welcome %USERNAME% to %BLOGNAME% %NEWLINE%Please find below your login details: %NEWLINE%Username: %USERNAME% %NEWLINE%Password Retrieval: %PWURL% %NEWLINE%Login: %LOGINURL% ";}'),
(4, 'sfpage', '149'),
(8, 'sfpermalink', 'http://blogfordeveloper.com/kingston/forum/'),
(16, 'sfpostmsg', 'a:3:{s:13:"sfpostmsgtext";s:0:"";s:14:"sfpostmsgtopic";b:0;s:13:"sfpostmsgpost";b:0;}'),
(29, 'sfprofile', 'a:15:{s:10:"nameformat";b:1;s:18:"fixeddisplayformat";i:0;s:8:"namelink";i:2;s:11:"displaymode";i:1;s:11:"displaypage";s:0:"";s:12:"displayquery";s:0:"";s:8:"formmode";i:1;s:8:"formpage";s:0:"";s:9:"formquery";s:0:"";s:9:"photosmax";i:0;s:11:"photoswidth";i:0;s:12:"photosheight";i:0;s:10:"firstvisit";b:1;s:7:"forcepw";b:0;s:13:"sfprofiletext";s:162:"Welcome to the User Profile Overview Panel. From here you can view and update your profile and options as well as view your Usergroup Memberships and Permissions.";}'),
(12, 'sfreplacementwords', ''),
(31, 'sfrss', 'a:4:{s:10:"sfrsscount";i:15;s:10:"sfrsswords";i:0;s:14:"sfrsstopicname";b:0;s:12:"sfrssfeedkey";b:1;}'),
(34, 'sfscriptfoot', ''),
(21, 'sfseo', 'a:12:{s:15:"sfseo_overwrite";b:0;s:14:"sfseo_blogname";b:0;s:14:"sfseo_pagename";b:0;s:14:"sfseo_homepage";b:1;s:11:"sfseo_topic";b:1;s:11:"sfseo_forum";b:1;s:13:"sfseo_noforum";b:0;s:10:"sfseo_page";b:1;s:9:"sfseo_sep";s:1:"|";s:6:"seo_og";b:0;s:17:"seo_og_attachment";b:0;s:11:"seo_og_type";s:7:"website";}'),
(22, 'sfsigimagesize', 'a:2:{s:10:"sfsigwidth";i:0;s:11:"sfsigheight";i:0;}'),
(3, 'sfslug', 'forum'),
(7, 'sftimes', 'g:i a'),
(5, 'sfuninstall', ''),
(67, 'sfversion', '5.6.1'),
(37, 'sfwpheadbypass', ''),
(33, 'sfwplistpages', '1'),
(2, 'sf_guest_auths', 'a:1:{s:6:"global";a:0:{}}'),
(74, 'sf_guest_memberships', 'a:1:{i:0;a:6:{s:12:"usergroup_id";s:1:"1";s:14:"usergroup_name";s:6:"Guests";s:14:"usergroup_desc";s:41:"Default Usergroup for guests of the forum";s:15:"usergroup_badge";s:0:"";s:14:"usergroup_join";s:1:"0";s:22:"usergroup_is_moderator";s:1:"0";}}'),
(73, 'spAdminStats', 'a:1:{i:0;a:4:{s:7:"user_id";s:1:"1";s:12:"display_name";s:5:"admin";s:5:"posts";s:1:"0";s:5:"admin";s:1:"1";}}'),
(52, 'spErrorOptions', 'a:2:{s:13:"spErrorLogOff";b:0;s:12:"spNoticesOff";b:0;}'),
(69, 'spForumStats', 'O:8:"stdClass":4:{s:6:"groups";i:0;s:6:"forums";i:0;s:6:"topics";i:0;s:5:"posts";i:0;}'),
(39, 'spheaderspace', '0'),
(57, 'spInspect', 'a:1:{s:0:"";a:36:{s:10:"con_spVars";i:0;s:13:"con_spGlobals";i:0;s:14:"con_spThisUser";i:0;s:12:"con_spDevice";i:0;s:14:"gv_spGroupView";i:0;s:14:"gv_spThisGroup";i:0;s:14:"gv_spThisForum";i:0;s:18:"gv_spThisForumSubs";i:0;s:14:"fv_spForumView";i:0;s:14:"fv_spThisForum";i:0;s:18:"fv_spThisForumSubs";i:0;s:17:"fv_spThisSubForum";i:0;s:14:"fv_spThisTopic";i:0;s:14:"tv_spTopicView";i:0;s:14:"tv_spThisTopic";i:0;s:13:"tv_spThisPost";i:0;s:17:"tv_spThisPostUser";i:0;s:16:"mv_spMembersList";i:0;s:20:"mv_spThisMemberGroup";i:0;s:15:"mv_spThisMember";i:0;s:19:"tlv_spTopicListView";i:0;s:19:"tlv_spThisListTopic";i:0;s:18:"plv_spPostListView";i:0;s:18:"plv_spThisListPost";i:0;s:17:"pro_spProfileUser";i:0;s:13:"q_spGroupView";i:0;s:18:"q_spGroupViewStats";i:0;s:13:"q_spForumView";i:0;s:18:"q_spForumViewStats";i:0;s:13:"q_spTopicView";i:0;s:15:"q_spMembersView";i:0;s:17:"q_spTopicListView";i:0;s:20:"q_spTopicListViewNew";i:0;s:22:"q_spTopicListViewFirst";i:0;s:16:"q_spPostListView";i:0;s:14:"q_spSearchView";i:0;}}'),
(70, 'spMembershipStats', 'a:4:{s:6:"admins";s:1:"1";s:4:"mods";s:1:"0";s:7:"members";i:0;s:6:"guests";s:1:"0";}'),
(72, 'spModStats', 'a:0:{}'),
(75, 'spMostOnline', '1'),
(71, 'spPosterStats', 'a:0:{}'),
(40, 'spukey', 'k4c9a7c0cc'),
(38, 'spwptexturize', ''),
(41, 'sp_current_theme', 'a:3:{s:5:"theme";s:7:"default";s:5:"style";s:11:"default.php";s:5:"color";s:8:"sky-blue";}'),
(42, 'sp_mobile_theme', 'a:7:{s:6:"active";b:0;s:5:"theme";s:7:"default";s:5:"style";s:11:"default.php";s:5:"color";s:6:"silver";s:11:"usetemplate";b:0;s:12:"pagetemplate";s:0:"";s:7:"notitle";b:1;}'),
(47, 'sp_stats_interval', '3600'),
(43, 'sp_tablet_theme', 'a:7:{s:6:"active";b:0;s:5:"theme";s:7:"default";s:5:"style";s:11:"default.php";s:5:"color";s:6:"silver";s:11:"usetemplate";b:0;s:12:"pagetemplate";s:0:"";s:7:"notitle";b:1;}'),
(53, 'topic_cache', '200');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfpermissions`
--

DROP TABLE IF EXISTS `wp_sfpermissions`;
CREATE TABLE IF NOT EXISTS `wp_sfpermissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `forum_id` bigint(20) NOT NULL DEFAULT '0',
  `usergroup_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `permission_role` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `forum_id_idx` (`forum_id`),
  KEY `usergroup_id_idx` (`usergroup_id`),
  KEY `permission_role_idx` (`permission_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfpermissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfposts`
--

DROP TABLE IF EXISTS `wp_sfposts`;
CREATE TABLE IF NOT EXISTS `wp_sfposts` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_content` longtext,
  `post_date` datetime NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `forum_id` bigint(20) NOT NULL,
  `guest_name` varchar(50) DEFAULT NULL,
  `guest_email` varchar(75) DEFAULT NULL,
  `post_status` int(4) NOT NULL DEFAULT '0',
  `post_pinned` smallint(1) NOT NULL DEFAULT '0',
  `post_index` mediumint(8) DEFAULT '0',
  `post_edit` mediumtext,
  `poster_ip` varchar(39) NOT NULL DEFAULT '0.0.0.0',
  `comment_id` bigint(20) DEFAULT NULL,
  `source` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `topic_id_idx` (`topic_id`),
  KEY `forum_id_idx` (`forum_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `guest_name_idx` (`guest_name`),
  KEY `comment_id_idx` (`comment_id`),
  KEY `post_date_idx` (`post_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfposts`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfroles`
--

DROP TABLE IF EXISTS `wp_sfroles`;
CREATE TABLE IF NOT EXISTS `wp_sfroles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT '',
  `role_desc` varchar(150) NOT NULL DEFAULT '',
  `role_auths` longtext NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `wp_sfroles`
--

INSERT INTO `wp_sfroles` (`role_id`, `role_name`, `role_desc`, `role_auths`) VALUES
(1, 'No Access', 'Permission with no access to any Forum features', 'a:38:{i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;i:30;i:0;i:31;i:0;i:32;i:0;i:33;i:0;i:34;i:0;i:35;i:0;i:36;i:0;i:37;i:0;i:38;i:0;}'),
(2, 'Read Only Access', 'Permission with access to only view the Forum', 'a:38:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:1;i:10;i:0;i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:1;i:15;i:0;i:16;i:0;i:17;i:0;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;i:30;i:0;i:31;i:0;i:32;i:0;i:33;i:0;i:34;i:0;i:35;i:0;i:36;i:0;i:37;i:0;i:38;i:0;}'),
(3, 'Limited Access', 'Permission with access to reply and start topics but with limited features', 'a:38:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;i:6;i:0;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:0;i:13;i:0;i:14;i:1;i:15;i:0;i:16;i:1;i:17;i:1;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:0;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:0;i:30;i:0;i:31;i:0;i:32;i:0;i:33;i:0;i:34;i:0;i:35;i:0;i:36;i:0;i:37;i:0;i:38;i:1;}'),
(4, 'Standard Access', 'Permission with access to reply and start topics with advanced features such as signatures', 'a:38:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;i:6;i:0;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:0;i:13;i:0;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:0;i:19;i:0;i:20;i:0;i:21;i:0;i:22;i:0;i:23;i:1;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:0;i:29;i:1;i:30;i:1;i:31;i:0;i:32;i:0;i:33;i:0;i:34;i:0;i:35;i:0;i:36;i:0;i:37;i:0;i:38;i:1;}'),
(5, 'Full Access', 'Permission with Standard Access features and math question bypass', 'a:38:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;i:6;i:0;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:0;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:0;i:19;i:1;i:20;i:0;i:21;i:0;i:22;i:1;i:23;i:1;i:24;i:0;i:25;i:0;i:26;i:0;i:27;i:0;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:0;i:32;i:0;i:33;i:0;i:34;i:0;i:35;i:0;i:36;i:0;i:37;i:0;i:38;i:1;}'),
(6, 'Moderator Access', 'Permission with access to all Forum features', 'a:38:{i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:1;i:5;i:0;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:11;i:1;i:12;i:0;i:13;i:1;i:14;i:1;i:15;i:1;i:16;i:1;i:17;i:1;i:18;i:0;i:19;i:1;i:20;i:1;i:21;i:0;i:22;i:1;i:23;i:1;i:24;i:1;i:25;i:1;i:26;i:0;i:27;i:1;i:28;i:1;i:29;i:1;i:30;i:1;i:31;i:1;i:32;i:1;i:33;i:1;i:34;i:1;i:35;i:1;i:36;i:1;i:37;i:1;i:38;i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfspecialranks`
--

DROP TABLE IF EXISTS `wp_sfspecialranks`;
CREATE TABLE IF NOT EXISTS `wp_sfspecialranks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `special_rank` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `special_rank_idx` (`special_rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfspecialranks`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sftopics`
--

DROP TABLE IF EXISTS `wp_sftopics`;
CREATE TABLE IF NOT EXISTS `wp_sftopics` (
  `topic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(200) NOT NULL,
  `topic_date` datetime NOT NULL,
  `topic_status` int(4) NOT NULL DEFAULT '0',
  `forum_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `topic_pinned` smallint(1) NOT NULL DEFAULT '0',
  `topic_opened` bigint(20) NOT NULL DEFAULT '0',
  `topic_slug` varchar(200) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `post_id_held` bigint(20) DEFAULT NULL,
  `post_count` mediumint(8) DEFAULT '0',
  `post_count_held` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id_idx` (`forum_id`),
  KEY `topic_slug_idx` (`topic_slug`),
  KEY `user_id_idx` (`user_id`),
  KEY `post_id_idx` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sftopics`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sftrack`
--

DROP TABLE IF EXISTS `wp_sftrack`;
CREATE TABLE IF NOT EXISTS `wp_sftrack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trackuserid` bigint(20) DEFAULT '0',
  `trackname` varchar(50) NOT NULL,
  `trackdate` datetime NOT NULL,
  `forum_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `pageview` varchar(50) NOT NULL,
  `notification` varchar(1024) DEFAULT NULL,
  `device` char(1) DEFAULT 'D',
  `display` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trackuserid_idx` (`trackuserid`),
  KEY `forum_id_idx` (`forum_id`),
  KEY `topic_id_idx` (`topic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_sftrack`
--

INSERT INTO `wp_sftrack` (`id`, `trackuserid`, `trackname`, `trackdate`, `forum_id`, `topic_id`, `pageview`, `notification`, `device`, `display`) VALUES
(1, 1, 'admin', '2016-01-03 08:25:01', 0, 0, 'profileedit', NULL, 'D', 'spType-Admin spRank-admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfuseractivity`
--

DROP TABLE IF EXISTS `wp_sfuseractivity`;
CREATE TABLE IF NOT EXISTS `wp_sfuseractivity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `type_id` smallint(4) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id_idx` (`type_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_sfuseractivity`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_sfusergroups`
--

DROP TABLE IF EXISTS `wp_sfusergroups`;
CREATE TABLE IF NOT EXISTS `wp_sfusergroups` (
  `usergroup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usergroup_name` text NOT NULL,
  `usergroup_desc` text,
  `usergroup_badge` varchar(50) DEFAULT NULL,
  `usergroup_join` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup_is_moderator` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_sfusergroups`
--

INSERT INTO `wp_sfusergroups` (`usergroup_id`, `usergroup_name`, `usergroup_desc`, `usergroup_badge`, `usergroup_join`, `usergroup_is_moderator`) VALUES
(1, 'Guests', 'Default Usergroup for guests of the forum', '', 0, 0),
(2, 'Members', 'Default Usergroup for registered users of the forum', '', 0, 0),
(3, 'Moderators', 'Default Usergroup for moderators of the forum', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sfwaiting`
--

DROP TABLE IF EXISTS `wp_sfwaiting`;
CREATE TABLE IF NOT EXISTS `wp_sfwaiting` (
  `topic_id` bigint(20) NOT NULL,
  `forum_id` bigint(20) NOT NULL,
  `post_count` int(4) NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_sfwaiting`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Top_Menu', 'top_menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(74, 3, 0),
(77, 3, 0),
(64, 3, 0),
(66, 3, 0),
(65, 3, 0),
(75, 3, 0),
(76, 3, 0),
(78, 3, 0),
(63, 3, 0),
(67, 3, 0),
(71, 3, 0),
(70, 3, 0),
(69, 3, 0),
(68, 3, 0),
(72, 3, 0),
(73, 3, 0),
(83, 3, 0),
(150, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:13:{s:13:"administrator";b:1;s:18:"SPF Manage Options";b:1;s:17:"SPF Manage Forums";b:1;s:22:"SPF Manage User Groups";b:1;s:22:"SPF Manage Permissions";b:1;s:21:"SPF Manage Components";b:1;s:17:"SPF Manage Admins";b:1;s:16:"SPF Manage Users";b:1;s:19:"SPF Manage Profiles";b:1;s:18:"SPF Manage Toolbox";b:1;s:18:"SPF Manage Plugins";b:1;s:17:"SPF Manage Themes";b:1;s:22:"SPF Manage Integration";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"4602e81dddbf2c25a593bf40de93a99ce74b7fd68aaad85ec58da49c72ed744e";a:4:{s:10:"expiration";i:1452182889;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1450973289;}s:64:"f625592fcd8895be7f8264ca00e48b06aeced8489cdb35296dbf45f2f9b08721";a:4:{s:10:"expiration";i:1451980421;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1451807621;}s:64:"44b5c4fa39674e76d6cc12ce6567545c35fc7091ce5938964db52783bb359d0f";a:4:{s:10:"expiration";i:1451983379;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1451810579;}}'),
(22, 1, 'wppb_pms_cross_promo_dismiss_notification', 'true'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '16'),
(16, 1, 'signup_ip', '45.64.225.11'),
(17, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1451226335'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:19:"add-post-type-event";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:15:"add-event-venue";i:4;s:18:"add-event-category";i:5;s:13:"add-event-tag";}'),
(21, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Btl1XAO4cUgU9/BvVN.5wVQ.eor3jY/', 'admin', 'bikash.pal2000@gmail.com', '', '2015-12-16 02:34:17', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpeditor_settings`
--

DROP TABLE IF EXISTS `wp_wpeditor_settings`;
CREATE TABLE IF NOT EXISTS `wp_wpeditor_settings` (
  `key` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wpeditor_settings`
--

INSERT INTO `wp_wpeditor_settings` (`key`, `value`) VALUES
('version', '1.2.5.3'),
('upgrade', '1'),
('enable_post_editor', '1'),
('hide_default_plugin_editor', '1'),
('hide_default_theme_editor', '1'),
('replace_plugin_edit_links', '1'),
('enable_plugin_line_numbers', '1'),
('enable_theme_line_numbers', '1'),
('enable_post_line_numbers', '1'),
('enable_plugin_line_wrapping', '1'),
('enable_theme_line_wrapping', '1'),
('enable_post_line_wrapping', '1'),
('enable_plugin_active_line', '1'),
('enable_theme_active_line', '1'),
('enable_post_active_line', '1'),
('plugin_editor_allowed_extensions', 'php~js~css~txt~htm~html~jpg~jpeg~png~gif~sql~po~less~xml'),
('theme_editor_allowed_extensions', 'php~js~css~txt~htm~html~jpg~jpeg~png~gif~sql~po~less~xml'),
('plugin_file_upload', '1'),
('theme_file_upload', '1'),
('plugin_indent_unit', '2'),
('theme_indent_unit', '2'),
('post_indent_unit', '2'),
('admin_page_roles', 'a:3:{s:8:"settings";s:14:"manage_options";s:12:"theme-editor";s:11:"edit_themes";s:13:"plugin-editor";s:12:"edit_plugins";}');
