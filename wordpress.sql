-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 16, 2019 la 09:47 AM
-- Versiune server: 10.1.37-MariaDB
-- Versiune PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `wordpress`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-13 21:44:12', '2019-01-13 21:44:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'UnderPC', 'yes'),
(4, 'blogdescription', 'Forum discutii', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'irobertfl@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:21:\"(community(?:/|$).*)$\";s:20:\"index.php?page_id=34\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:27:\"updraftplus/updraftplus.php\";i:1;s:24:\"wpforms-lite/wpforms.php\";i:2;s:17:\"wpforo/wpforo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'melos', 'yes'),
(41, 'stylesheet', 'melos', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '37', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:12:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"footer-w1\";a:0:{}s:9:\"footer-w2\";a:0:{}s:9:\"footer-w3\";a:0:{}s:9:\"footer-w4\";a:0:{}s:9:\"footer-w5\";a:0:{}s:9:\"footer-w6\";a:0:{}s:13:\"sub-footer-w1\";a:0:{}s:13:\"sub-footer-w2\";a:0:{}s:13:\"forum-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1547631853;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1547638906;a:2:{s:14:\"updraft_backup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"every4hours\";s:4:\"args\";a:0:{}s:8:\"interval\";i:14400;}}s:23:\"updraft_backup_database\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"every4hours\";s:4:\"args\";a:0:{}s:8:\"interval\";i:14400;}}}i:1547675099;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1547675310;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547461206;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"forum-sidebar\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:11:\"wpforo-menu\";i:2;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1547624201;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1548020700', 'no'),
(121, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'Melos', 'yes'),
(139, 'theme_mods_ultimate-ecommerce-shop', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"wpforo-menu\";i:2;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547464131;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:11:\"social-icon\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"forum-sidebar\";a:0:{}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(141, 'widget_wpb_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'theme_mods_store-ecommerce', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547418530;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"sidebar_page\";a:0:{}}}}', 'yes'),
(150, 'widget_di_blog_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'widget_di-blog-widget-recent-posts-thumb', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547417678;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(159, '_transient_twentysixteen_categories', '1', 'yes'),
(161, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"wpforo-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547461332;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"forum-sidebar\";a:0:{}}}}', 'yes'),
(162, 'category_children', 'a:0:{}', 'yes'),
(168, 'theme_mods_abubize-business', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547418505;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-data\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:0:{}}}}', 'yes'),
(195, 'recently_activated', 'a:0:{}', 'yes'),
(200, 'wpforo_default_groupid', '3', 'yes'),
(202, 'wpforo_count_per_page', '10', 'yes'),
(203, 'wpforo_general_options', 'a:3:{s:5:\"title\";s:13:\"UnderPC Forum\";s:11:\"description\";s:24:\"UnderPC Discussion Board\";s:4:\"lang\";i:1;}', 'yes'),
(204, 'wpforo_forum_options', 'a:7:{s:29:\"layout_qa_intro_topics_toggle\";i:1;s:35:\"layout_extended_intro_topics_toggle\";i:1;s:28:\"layout_qa_intro_topics_count\";i:3;s:34:\"layout_extended_intro_topics_count\";i:5;s:29:\"layout_qa_intro_topics_length\";i:90;s:35:\"layout_extended_intro_topics_length\";i:45;s:23:\"display_current_viewers\";i:1;}', 'yes'),
(205, 'wpforo_post_options', 'a:20:{s:34:\"layout_extended_intro_posts_toggle\";i:1;s:33:\"layout_extended_intro_posts_count\";i:4;s:34:\"layout_extended_intro_posts_length\";i:50;s:17:\"recent_posts_type\";s:6:\"topics\";s:4:\"tags\";i:1;s:8:\"max_tags\";i:5;s:13:\"tags_per_page\";i:100;s:15:\"topics_per_page\";i:10;s:10:\"edit_topic\";i:1;s:9:\"edit_post\";i:1;s:8:\"eot_durr\";i:300;s:8:\"dot_durr\";i:300;s:14:\"posts_per_page\";i:15;s:8:\"eor_durr\";i:300;s:8:\"dor_durr\";i:300;s:15:\"max_upload_size\";i:2097152;s:23:\"display_current_viewers\";i:1;s:22:\"display_recent_viewers\";i:1;s:21:\"display_admin_viewers\";i:1;s:20:\"attach_cant_view_msg\";s:45:\"You are not permitted to view this attachment\";}', 'yes'),
(206, 'wpforo_features', 'a:49:{s:14:\"user-admin-bar\";i:0;s:10:\"page-title\";i:1;s:7:\"top-bar\";i:1;s:14:\"top-bar-search\";i:1;s:10:\"breadcrumb\";i:1;s:11:\"footer-stat\";i:1;s:17:\"mention-nicknames\";i:1;s:20:\"content-do_shortcode\";i:0;s:12:\"view-logging\";i:1;s:13:\"track-logging\";i:1;s:11:\"author-link\";i:0;s:19:\"comment-author-link\";i:0;s:13:\"user-register\";i:1;s:27:\"user-register-email-confirm\";i:1;s:12:\"register-url\";i:0;s:9:\"login-url\";i:0;s:13:\"resetpass-url\";i:1;s:14:\"replace-avatar\";i:1;s:7:\"avatars\";i:1;s:14:\"custom-avatars\";i:1;s:9:\"signature\";i:1;s:6:\"rating\";i:1;s:12:\"rating_title\";i:1;s:12:\"member_cashe\";i:1;s:12:\"object_cashe\";i:1;s:10:\"html_cashe\";i:0;s:12:\"memory_cashe\";i:1;s:9:\"seo-title\";i:1;s:8:\"seo-meta\";i:1;s:11:\"seo-profile\";i:1;s:8:\"rss-feed\";i:1;s:12:\"font-awesome\";i:1;s:10:\"bp_profile\";i:0;s:11:\"bp_activity\";i:1;s:15:\"bp_notification\";i:1;s:12:\"bp_forum_tab\";i:1;s:10:\"um_profile\";i:0;s:12:\"um_forum_tab\";i:1;s:15:\"um_notification\";i:1;s:10:\"user-synch\";i:0;s:10:\"role-synch\";i:1;s:13:\"output-buffer\";i:1;s:14:\"wp-date-format\";i:0;s:14:\"subscribe_conf\";i:1;s:33:\"subscribe_checkbox_on_post_editor\";i:1;s:33:\"subscribe_checkbox_default_status\";i:0;s:16:\"attach-media-lib\";i:1;s:10:\"debug-mode\";i:0;s:9:\"copyright\";i:1;}', 'yes'),
(207, 'wpforo_api_options', 'a:49:{s:14:\"user-admin-bar\";i:0;s:10:\"page-title\";i:1;s:7:\"top-bar\";i:1;s:14:\"top-bar-search\";i:1;s:10:\"breadcrumb\";i:1;s:11:\"footer-stat\";i:1;s:17:\"mention-nicknames\";i:1;s:20:\"content-do_shortcode\";i:0;s:12:\"view-logging\";i:1;s:13:\"track-logging\";i:1;s:11:\"author-link\";i:0;s:19:\"comment-author-link\";i:0;s:13:\"user-register\";i:1;s:27:\"user-register-email-confirm\";i:1;s:12:\"register-url\";i:0;s:9:\"login-url\";i:0;s:13:\"resetpass-url\";i:1;s:14:\"replace-avatar\";i:1;s:7:\"avatars\";i:1;s:14:\"custom-avatars\";i:1;s:9:\"signature\";i:1;s:6:\"rating\";i:1;s:12:\"rating_title\";i:1;s:12:\"member_cashe\";i:1;s:12:\"object_cashe\";i:1;s:10:\"html_cashe\";i:0;s:12:\"memory_cashe\";i:1;s:9:\"seo-title\";i:1;s:8:\"seo-meta\";i:1;s:11:\"seo-profile\";i:1;s:8:\"rss-feed\";i:1;s:12:\"font-awesome\";i:1;s:10:\"bp_profile\";i:0;s:11:\"bp_activity\";i:1;s:15:\"bp_notification\";i:1;s:12:\"bp_forum_tab\";i:1;s:10:\"um_profile\";i:0;s:12:\"um_forum_tab\";i:1;s:15:\"um_notification\";i:1;s:10:\"user-synch\";i:0;s:10:\"role-synch\";i:1;s:13:\"output-buffer\";i:1;s:14:\"wp-date-format\";i:0;s:14:\"subscribe_conf\";i:1;s:33:\"subscribe_checkbox_on_post_editor\";i:1;s:33:\"subscribe_checkbox_default_status\";i:0;s:16:\"attach-media-lib\";i:1;s:10:\"debug-mode\";i:0;s:9:\"copyright\";i:1;}', 'yes'),
(208, 'wpforo_style_options', 'a:4:{s:15:\"font_size_forum\";i:17;s:15:\"font_size_topic\";i:16;s:22:\"font_size_post_content\";i:14;s:10:\"custom_css\";s:84:\"#wpforo-wrap {\r\n   font-size: 13px; width: 100%; padding:10px 20px; margin:0px;\r\n}\r\n\";}', 'yes'),
(209, 'wpforo_theme_options', 'a:11:{s:2:\"id\";s:7:\"classic\";s:4:\"name\";s:7:\"Classic\";s:7:\"version\";s:5:\"1.4.0\";s:11:\"description\";s:22:\"Main wpForo Stylesheet\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:17:\"http://wpforo.com\";s:4:\"file\";s:17:\"classic/style.css\";s:6:\"folder\";s:7:\"classic\";s:7:\"layouts\";a:3:{i:1;a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:8:\"Extended\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:65:\"Extended layout displays one level deeper information in advance.\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:20:\"http://gvectors.com/\";s:4:\"file\";s:27:\"classic/layouts/1/forum.php\";}i:2;a:7:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:10:\"Simplified\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:41:\"Simplified layout looks simple and clean.\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:20:\"http://gvectors.com/\";s:4:\"file\";s:27:\"classic/layouts/2/forum.php\";}i:3;a:7:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:2:\"QA\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:79:\"Q&A layout turns your forum to a powerful question and answer discussion board.\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:20:\"http://gvectors.com/\";s:4:\"file\";s:27:\"classic/layouts/3/forum.php\";}}s:5:\"style\";s:7:\"default\";s:6:\"styles\";a:6:{s:7:\"default\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#555555\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#659fbe\";i:12;s:7:\"#43a6df\";i:13;s:7:\"#72ccfc\";i:14;s:7:\"#0099cc\";i:15;s:7:\"#3f7796\";i:16;s:7:\"#4a8eb3\";i:17;s:7:\"#dff4ff\";i:20;s:7:\"#ff812d\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:3:\"red\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#555555\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#E0141E\";i:12;s:7:\"#EE1A26\";i:13;s:7:\"#FC979C\";i:14;s:7:\"#E0141E\";i:15;s:7:\"#99262B\";i:16;s:7:\"#D61319\";i:17;s:7:\"#FFF7F7\";i:20;s:7:\"#30B2A7\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:5:\"green\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#555555\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#6EA500\";i:12;s:7:\"#649E2D\";i:13;s:7:\"#8DCE0C\";i:14;s:7:\"#447714\";i:15;s:7:\"#5A7F10\";i:16;s:7:\"#6EA500\";i:17;s:7:\"#F8FCEF\";i:20;s:7:\"#ff812d\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#FF812D\";i:33;s:7:\"#F47222\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:6:\"orange\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#555555\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#E0762F\";i:12;s:7:\"#FF6600\";i:13;s:7:\"#FC9958\";i:14;s:7:\"#F26000\";i:15;s:7:\"#AA4F12\";i:16;s:7:\"#F26000\";i:17;s:7:\"#FFF4ED\";i:20;s:7:\"#ff812d\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:4:\"grey\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#343434\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#888888\";i:12;s:7:\"#666666\";i:13;s:7:\"#7EEA8D\";i:14;s:7:\"#777777\";i:15;s:7:\"#333333\";i:16;s:7:\"#555555\";i:17;s:7:\"#DFF4FF\";i:20;s:7:\"#FF812D\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:4:\"dark\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#141414\";i:2;s:7:\"#bbbbbb\";i:3;s:7:\"#000000\";i:4;s:7:\"#666666\";i:5;s:7:\"#bcbcbc\";i:6;s:7:\"#999999\";i:7;s:7:\"#585858\";i:8;s:7:\"#727272\";i:9;s:7:\"#323232\";i:10;s:7:\"#dadada\";i:11;s:7:\"#888888\";i:12;s:7:\"#33779b\";i:13;s:7:\"#7EEA8D\";i:14;s:7:\"#777777\";i:15;s:7:\"#E0E0E0\";i:16;s:7:\"#CECECE\";i:17;s:7:\"#33779b\";i:20;s:7:\"#FF812D\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}}}', 'yes'),
(210, 'wpforo_member_options', 'a:16:{s:21:\"online_status_timeout\";i:240;s:16:\"members_per_page\";s:2:\"15\";s:13:\"url_structure\";s:8:\"nicename\";s:11:\"search_type\";s:6:\"search\";s:9:\"login_url\";s:0:\"\";s:12:\"register_url\";s:0:\"\";s:17:\"lost_password_url\";s:0:\"\";s:24:\"redirect_url_after_login\";s:0:\"\";s:27:\"redirect_url_after_register\";s:0:\"\";s:33:\"redirect_url_after_confirm_sbscrb\";s:0:\"\";s:18:\"custom_title_is_on\";i:1;s:13:\"default_title\";s:6:\"Member\";s:6:\"rating\";a:11:{i:0;a:4:{s:6:\"points\";i:0;s:5:\"title\";s:10:\"New Member\";s:5:\"color\";s:7:\"#d2d2d2\";s:4:\"icon\";s:16:\"far fa-star-half\";}i:1;a:4:{s:6:\"points\";i:2;s:5:\"title\";s:13:\"Active Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:2;a:4:{s:6:\"points\";i:5;s:5:\"title\";s:14:\"Eminent Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:3;a:4:{s:6:\"points\";i:10;s:5:\"title\";s:14:\"Trusted Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:4;a:4:{s:6:\"points\";i:25;s:5:\"title\";s:16:\"Estimable Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:5;a:4:{s:6:\"points\";i:50;s:5:\"title\";s:16:\"Reputable Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:6;a:4:{s:6:\"points\";i:100;s:5:\"title\";s:16:\"Honorable Member\";s:5:\"color\";s:7:\"#e5d600\";s:4:\"icon\";s:18:\"fas fa-certificate\";}i:7;a:4:{s:6:\"points\";i:500;s:5:\"title\";s:16:\"Prominent Member\";s:5:\"color\";s:7:\"#e5d600\";s:4:\"icon\";s:18:\"fas fa-certificate\";}i:8;a:4:{s:6:\"points\";i:1000;s:5:\"title\";s:12:\"Noble Member\";s:5:\"color\";s:7:\"#e5d600\";s:4:\"icon\";s:18:\"fas fa-certificate\";}i:9;a:4:{s:6:\"points\";i:2500;s:5:\"title\";s:12:\"Famed Member\";s:5:\"color\";s:7:\"#ff812d\";s:4:\"icon\";s:17:\"fas fa-shield-alt\";}i:10;a:4:{s:6:\"points\";i:5000;s:5:\"title\";s:18:\"Illustrious Member\";s:5:\"color\";s:7:\"#e04a47\";s:4:\"icon\";s:13:\"fas fa-trophy\";}}s:15:\"rating_title_ug\";a:3:{i:5;i:1;i:4;i:1;i:3;i:1;}s:15:\"rating_badge_ug\";a:5:{i:1;i:1;i:5;i:1;i:4;i:1;i:2;i:1;i:3;i:1;}s:15:\"title_usergroup\";a:4:{i:1;i:1;i:5;i:1;i:4;i:1;i:2;i:1;}}', 'yes'),
(211, 'wpforo_subscribe_options', 'a:22:{s:9:\"from_name\";s:15:\"UnderPC - Forum\";s:10:\"from_email\";s:19:\"irobertfl@gmail.com\";s:12:\"admin_emails\";s:19:\"irobertfl@gmail.com\";s:16:\"new_topic_notify\";i:1;s:16:\"new_reply_notify\";i:0;s:26:\"confirmation_email_subject\";s:44:\"Please confirm subscription to [entry_title]\";s:26:\"confirmation_email_message\";s:266:\"Hello [member_name]!<br>\r\n Thank you for subscribing.<br>\r\n This is an automated response.<br>\r\n We are glad to inform you that after confirmation you will get updates from - [entry_title].<br>\r\n Please click on link below to complete this step.<br>\r\n [confirm_link]\";s:36:\"new_topic_notification_email_subject\";s:9:\"New Topic\";s:36:\"new_topic_notification_email_message\";s:287:\"Hello [member_name]!<br>\r\n New topic has been created on your subscribed forum - [forum].\r\n <br><br>\r\n <strong>[topic_title]</strong>\r\n <blockquote>\r\n [topic_desc]\r\n </blockquote>\r\n <br><hr>\r\n If you want to unsubscribe from this forum please use the link below.<br>\r\n [unsubscribe_link]\";s:35:\"new_post_notification_email_subject\";s:9:\"New Reply\";s:35:\"new_post_notification_email_message\";s:287:\"Hello [member_name]!<br>\r\n New reply has been posted on your subscribed topic - [topic].\r\n <br><br>\r\n <strong>[reply_title]</strong>\r\n <blockquote >\r\n [reply_desc]\r\n </blockquote>\r\n <br><hr>\r\n If you want to unsubscribe from this topic please use the link below.<br>\r\n [unsubscribe_link]\";s:20:\"report_email_subject\";s:17:\"Forum Post Report\";s:20:\"report_email_message\";s:107:\"<strong>Report details:</strong>\r\n Reporter: [reporter], <br>\r\n Message: [message],<br>\r\n <br>\r\n [post_url]\";s:44:\"wp_new_user_notification_email_admin_subject\";s:32:\"[blogname] New User Registration\";s:44:\"wp_new_user_notification_email_admin_message\";s:97:\"New user registration on your site [blogname]:\r\n\r\nUsername: [user_login]\r\n\r\nEmail: [user_email]\r\n\";s:38:\"wp_new_user_notification_email_subject\";s:42:\"[blogname] Your username and password info\";s:38:\"wp_new_user_notification_email_message\";s:102:\"Username: [user_login]\r\n\r\nTo set your password, visit the following address:\r\n\r\n[set_password_url]\r\n\r\n\";s:28:\"reset_password_email_message\";s:335:\"Hello! <br>\r\n\r\n You asked us to reset your password for your account using the email address [user_login]. <br>\r\n\r\n If this was a mistake, or you didn\'t ask for a password reset, just ignore this email and nothing will happen. <br>\r\n\r\n To reset your password, visit the following address: <br>\r\n\r\n [reset_password_url] <br>\r\n\r\n Thanks!\";s:6:\"update\";s:1:\"1\";s:19:\"user_mention_notify\";i:1;s:26:\"user_mention_email_subject\";s:37:\"You have been mentioned in forum post\";s:26:\"user_mention_email_message\";s:145:\"Hi [mentioned-user-name]! <br>\r\n\r\n You have been mentioned in a post on \"[topic-title]\" by [author-user-name].<br/><br/>\r\n\r\n Post URL: [post-url]\";}', 'yes'),
(212, 'wpforo_tools_antispam', 'a:23:{s:11:\"spam_filter\";i:1;s:23:\"spam_filter_level_topic\";i:53;s:22:\"spam_filter_level_post\";i:32;s:13:\"spam_user_ban\";i:0;s:18:\"new_user_max_posts\";i:5;s:26:\"spam_user_ban_notification\";i:1;s:25:\"min_number_post_to_attach\";i:3;s:23:\"min_number_post_to_link\";i:0;s:17:\"spam_file_scanner\";i:1;s:16:\"limited_file_ext\";s:65:\"pdf|doc|docx|txt|htm|html|rtf|xml|xls|xlsx|zip|rar|tar|gz|bzip|7z\";s:16:\"exclude_file_ext\";s:16:\"pdf|doc|docx|txt\";s:11:\"rc_site_key\";s:0:\"\";s:13:\"rc_secret_key\";s:0:\"\";s:8:\"rc_theme\";s:5:\"light\";s:13:\"rc_login_form\";i:0;s:11:\"rc_reg_form\";i:0;s:16:\"rc_lostpass_form\";i:0;s:17:\"rc_wpf_login_form\";i:1;s:15:\"rc_wpf_reg_form\";i:1;s:20:\"rc_wpf_lostpass_form\";i:1;s:15:\"rc_topic_editor\";i:1;s:14:\"rc_post_editor\";i:1;s:4:\"html\";s:96:\"embed(src width height name pluginspage type wmode allowFullScreen allowScriptAccess flashVars),\";}', 'yes'),
(213, 'wpforo_tools_cleanup', 'a:3:{s:17:\"user_reg_days_ago\";i:7;s:18:\"auto_cleanup_users\";i:0;s:9:\"usergroup\";a:4:{i:1;s:1:\"0\";i:5;s:1:\"0\";i:2;s:1:\"1\";i:3;s:1:\"0\";}}', 'yes'),
(214, 'wpforo_tools_misc', 'a:5:{s:8:\"dofollow\";s:0:\"\";s:7:\"noindex\";s:0:\"\";s:10:\"admin_note\";s:0:\"\";s:17:\"admin_note_groups\";a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}s:16:\"admin_note_pages\";a:1:{i:0;s:5:\"forum\";}}', 'yes'),
(215, 'wpforo_pageid', '34', 'yes'),
(216, 'wpforo_use_home_url', '0', 'yes'),
(217, 'wpforo_permastruct', 'community', 'yes'),
(218, 'wpforo_url', 'http://localhost/community/', 'yes'),
(219, 'wpforo_version', '1.5.5', 'yes'),
(220, 'widget_wpforo_widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(221, 'widget_wpforo_widget_online_members', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'widget_wpforo_widget_recent_topics', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(223, 'widget_wpforo_widget_recent_replies', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, 'widget_wpforo_widget_tags', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(227, 'wpforo-addon-note-dismissed', 'Embeds,Polls,MyCRED Integration,User Custom Fields,Advanced Attachments,Private Messages,\"Forum - Blog\" Cross Posting,Ads Manager,', 'yes'),
(228, 'wpforo-addon-note-first', 'true', 'yes'),
(246, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1547624201;s:7:\"checked\";a:15:{s:16:\"abubize-business\";s:3:\"1.1\";s:7:\"bizlite\";s:5:\"1.0.2\";s:8:\"bloglite\";s:5:\"1.0.1\";s:13:\"business-path\";s:5:\"1.0.0\";s:12:\"business-way\";s:5:\"1.0.0\";s:9:\"businesso\";s:3:\"4.6\";s:9:\"cafe-blog\";s:5:\"1.0.9\";s:7:\"di-blog\";s:5:\"1.2.6\";s:15:\"melos-corporate\";s:5:\"1.0.0\";s:5:\"melos\";s:5:\"1.2.6\";s:15:\"store-ecommerce\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";s:23:\"ultimate-ecommerce-shop\";s:5:\"0.3.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(248, 'theme_mods_business-path', 'a:10:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:11:\"wpforo-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:64:\"http://localhost/wp-content/uploads/2019/01/cropped-Forums-1.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:39;s:3:\"url\";s:64:\"http://localhost/wp-content/uploads/2019/01/cropped-Forums-1.png\";s:13:\"thumbnail_url\";s:64:\"http://localhost/wp-content/uploads/2019/01/cropped-Forums-1.png\";s:6:\"height\";i:318;s:5:\"width\";i:1000;}s:16:\"background_image\";s:0:\"\";s:11:\"custom_logo\";s:0:\"\";s:16:\"header_textcolor\";s:6:\"c9c9c9\";s:16:\"background_color\";s:6:\"cef3ff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547463915;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:22:\"business-way-home-page\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"forum-sidebar\";a:0:{}}}}', 'yes'),
(249, 'widget_business-way-quote-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_business-way-welcome-msg-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_business_way_feature_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_business_way_service_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_business-way-our-mission-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_business-way-recent-post-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_business-way-our-work-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_business_way_about_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_business-way-contact-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(295, 'theme_mods_cafe-blog', 'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:11:\"wpforo-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:54:\"http://localhost/wp-content/uploads/2019/01/Forums.png\";s:16:\"background_color\";s:6:\"898989\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";s:36:\"freebiescafe_signature_image_setting\";s:0:\"\";s:17:\"background_preset\";s:4:\"fill\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1547464099;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:13:\"forum-sidebar\";a:0:{}}}}', 'yes'),
(299, 'theme_mods_melos', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"wpforo-menu\";i:2;s:15:\"pre_header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:23:\"thinkup_redux_variables\";a:9:{s:32:\"thinkup_general_breadcrumbswitch\";s:1:\"1\";s:23:\"thinkup_homepage_layout\";s:7:\"option1\";s:34:\"thinkup_homepage_sliderpresetwidth\";s:1:\"1\";s:29:\"thinkup_header_styleswitchpre\";s:7:\"option1\";s:27:\"thinkup_header_searchswitch\";s:3:\"off\";s:31:\"thinkup_homepage_section1_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:30:\"thinkup_homepage_sectionswitch\";s:3:\"off\";s:30:\"thinkup_homepage_section1_link\";s:0:\"\";s:29:\"thinkup_homepage_sliderswitch\";s:7:\"option3\";}}', 'yes'),
(300, 'thinkup_redux_variables', 'a:35:{s:22:\"thinkup_general_layout\";s:1:\"0\";s:32:\"thinkup_general_breadcrumbswitch\";s:1:\"1\";s:35:\"thinkup_general_breadcrumbdelimeter\";s:1:\"/\";s:23:\"thinkup_homepage_layout\";s:7:\"option1\";s:29:\"thinkup_homepage_sliderswitch\";s:7:\"option3\";s:35:\"thinkup_homepage_sliderpresetheight\";s:3:\"350\";s:34:\"thinkup_homepage_sliderpresetwidth\";s:1:\"1\";s:28:\"thinkup_homepage_introswitch\";s:1:\"1\";s:30:\"thinkup_header_searchswitchpre\";s:1:\"0\";s:27:\"thinkup_header_searchswitch\";s:3:\"off\";s:21:\"thinkup_footer_layout\";s:1:\"0\";s:27:\"thinkup_footer_widgetswitch\";s:1:\"0\";s:21:\"thinkup_footer_scroll\";s:1:\"0\";s:30:\"thinkup_header_socialswitchpre\";s:1:\"0\";s:33:\"thinkup_header_socialswitchfooter\";s:1:\"0\";s:29:\"thinkup_header_facebookswitch\";s:1:\"0\";s:33:\"thinkup_header_facebookiconswitch\";s:1:\"0\";s:28:\"thinkup_header_twitterswitch\";s:1:\"0\";s:32:\"thinkup_header_twittericonswitch\";s:1:\"0\";s:27:\"thinkup_header_googleswitch\";s:1:\"0\";s:31:\"thinkup_header_googleiconswitch\";s:1:\"0\";s:29:\"thinkup_header_linkedinswitch\";s:1:\"0\";s:33:\"thinkup_header_linkediniconswitch\";s:1:\"0\";s:27:\"thinkup_header_flickrswitch\";s:1:\"0\";s:31:\"thinkup_header_flickriconswitch\";s:1:\"0\";s:28:\"thinkup_header_youtubeswitch\";s:1:\"0\";s:32:\"thinkup_header_youtubeiconswitch\";s:1:\"0\";s:24:\"thinkup_header_rssswitch\";s:1:\"0\";s:28:\"thinkup_header_rssiconswitch\";s:1:\"0\";s:18:\"thinkup_post_share\";s:1:\"0\";s:34:\"thinkup_theme_documentation_button\";s:0:\"\";s:29:\"thinkup_header_styleswitchpre\";s:7:\"option1\";s:30:\"thinkup_homepage_sectionswitch\";s:3:\"off\";s:31:\"thinkup_homepage_section1_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:30:\"thinkup_homepage_section1_link\";s:0:\"\";}', 'yes'),
(301, 'thinkup_redux_variables-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1547468007;}', 'yes'),
(304, 'wpforo_forum_tree_9d710550e7a103dccdbe7b5759ab9115', '                <option value=\"3\"  disabled  > PC</option>                <option value=\"12\"  > — Procesoare</option>                <option value=\"4\"  > — — Intel</option>                <option value=\"5\"  > — — AMD</option>                <option value=\"13\"  > — Placi video</option>                <option value=\"14\"  > — — AMD</option>                <option value=\"15\"  > — — Nvidia</option>                <option value=\"16\"  > — — Intel</option>                <option value=\"10\"  > — Medii de stocare</option>                <option value=\"8\"  > — RAM</option>                <option value=\"9\"  > — UPS</option>                <option value=\"17\"  > — Carcase</option>                <option value=\"11\"  > — PC Building</option>                <option value=\"18\"  > — Altele</option>                <option value=\"6\"  disabled  > Laptop</option>                <option value=\"7\"  disabled  > Mobile</option>                <option value=\"20\"  disabled  > Aplicatii</option>                <option value=\"21\"  > — Windows</option>                <option value=\"24\"  > — Linux</option>                <option value=\"23\"  > — MacOS</option>                <option value=\"25\"  > — Android</option>                <option value=\"22\"  > — iOS</option>                <option value=\"26\"  > — Altele</option>                <option value=\"19\"  disabled  > Off-topic</option>', 'yes'),
(307, '_site_transient_timeout_popular_importers_eb3114a33f2f662edccf31cbbedc6ea0', '1547638438', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(308, '_site_transient_popular_importers_eb3114a33f2f662edccf31cbbedc6ea0', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(313, 'updraftplus_tour_cancelled_on', 'intro', 'yes'),
(314, 'updraftplus_version', '1.16.0', 'yes'),
(315, 'updraft_updraftvault', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-65a853ca83e77ee29094ee4fc1bcf8cb\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}', 'yes'),
(316, 'updraft_dropbox', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-40bfb7e9297db7717afc9f411089c8b2\";a:7:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:472:\"dxbBGjsOvndQOdpH+UA3JoiPZRCEBameahmFk/YUjV7iu+xFJfZAqS3OwcsMUxyYO1cuD6fLqSMvagDBLROCnvkSMtSkUeYOjXQQt3oJxUyKoTUtGZ42R6KqNfe5U1dWI0N6iWvtYp3MzDFp8jOS9xye1CpxhCacfjEbWeuYyiAOWjXe9JZ8+H1KLMPzD+EDyAmXKZSlm8TluPa2VPgfyU6Eh13/EkaAWl8dxmEGs2+mRPVwVoKSXgRu6upYPoY1oVdBQ99u4yd99bXdR+ZtubBKN66Q52sRwKpS0/3WoPOQt1i8aheKv40b6zdcNx6Kxej4GzLI/2N+5Ug+LM4tf6oXODHTaauZzzjYKF4lSPixH3vKzm8VsmbsUlFaMnIepKa5mCtEEEdu5yfzS+3SkNCSM5uGoZw67XS/Gzk7+eWJRHigZ/Lvs9s7Fy09VVElEI2TelmFUY3ZuXYSZDrdoQ==\";s:9:\"ownername\";s:13:\"Robert Florin\";s:4:\"CSRF\";s:0:\"\";s:16:\"instance_enabled\";i:1;}}}', 'yes'),
(317, 'updraft_s3', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-47c62f463145439a4083d2103a86b0c3\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(318, 'updraft_cloudfiles', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-421f91f875f673581fb09595e5a9348f\";a:5:{s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"region\";s:3:\"DFW\";s:4:\"user\";s:0:\"\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(319, 'updraft_googledrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-a880eb4449eae8eba874bc319934cdc5\";a:4:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";s:6:\"folder\";s:11:\"UpdraftPlus\";}}}', 'yes'),
(320, 'updraft_onedrive', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(321, 'updraft_ftp', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-91eaaaf2a4f5e3313818d45983342614\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";s:1:\"1\";}}}', 'yes'),
(322, 'updraft_azure', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(323, 'updraft_sftp', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(324, 'updraft_googlecloud', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(325, 'updraft_backblaze', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(326, 'updraft_webdav', 'a:1:{s:7:\"version\";s:1:\"1\";}', 'yes'),
(327, 'updraft_s3generic', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-9568d98af3465f4562420b21b191ab8b\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";}}}', 'yes'),
(328, 'updraft_openstack', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-aa791cc39631b66386a50840d51dbf65\";a:6:{s:7:\"authurl\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:6:\"region\";s:0:\"\";s:4:\"user\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(329, 'updraft_dreamobjects', 'a:2:{s:7:\"version\";s:1:\"1\";s:8:\"settings\";a:1:{s:34:\"s-c6c5593c15771f559010d402ec82441a\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:26:\"objects-us-east-1.dream.io\";}}}', 'yes'),
(330, 'updraftplus-addons_siteid', '6e607ad6d711ccd7d8ad076f174fd20d', 'no'),
(331, 'updraft_retain_extrarules', 'a:0:{}', 'yes'),
(332, 'updraft_email', '', 'yes'),
(333, 'updraft_report_warningsonly', 'a:0:{}', 'yes'),
(334, 'updraft_report_wholebackup', 'a:0:{}', 'yes'),
(335, 'updraft_extradbs', 'a:0:{}', 'yes'),
(336, 'updraft_include_more_path', 'a:0:{}', 'yes'),
(337, 'updraft_interval', 'every4hours', 'yes'),
(338, 'updraft_retain', '2', 'yes'),
(341, 'updraft_interval_database', 'every4hours', 'yes'),
(342, 'updraft_retain_db', '2', 'yes'),
(343, 'updraft_service', 'dropbox', 'yes'),
(344, 'updraft_include_plugins', '1', 'yes'),
(345, 'updraft_include_themes', '1', 'yes'),
(346, 'updraft_include_uploads', '1', 'yes'),
(347, 'updraft_include_uploads_exclude', 'backup*,*backups,backwpup*,wp-clone,snapshots', 'yes'),
(348, 'updraft_include_others', '1', 'yes'),
(349, 'updraft_include_others_exclude', 'upgrade,cache,updraft,backup*,*backups,mysql.sql,debug.log', 'yes'),
(350, 'updraft_split_every', '400', 'yes'),
(351, 'updraft_delete_local', '1', 'yes'),
(352, 'updraft_dir', 'updraft', 'yes'),
(353, 'updraft_debug_mode', '0', 'yes'),
(354, 'updraft_ssl_useservercerts', '0', 'yes'),
(355, 'updraft_ssl_disableverify', '0', 'yes'),
(356, 'updraft_ssl_nossl', '0', 'yes'),
(357, 'updraft_auto_updates', '0', 'yes'),
(358, 'updraft_lastmessage', 'The backup apparently succeeded and is now complete (Jan 16 07:49:09)', 'yes'),
(359, 'updraftplus_unlocked_fd', '1', 'no'),
(360, 'updraftplus_last_lock_time_fd', '2019-01-16 07:47:15', 'no'),
(361, 'updraftplus_semaphore_fd', '0', 'no'),
(362, 'updraft_last_scheduled_fd', '1547624835', 'yes'),
(364, 'updraft_backup_history', 'a:2:{i:1547624835;a:19:{s:7:\"plugins\";a:1:{i:0;s:55:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-plugins.zip\";}s:12:\"plugins-size\";i:13688826;s:6:\"themes\";a:1:{i:0;s:54:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-themes.zip\";}s:11:\"themes-size\";i:20137637;s:7:\"uploads\";a:1:{i:0;s:55:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-uploads.zip\";}s:12:\"uploads-size\";i:1906961;s:6:\"others\";a:1:{i:0;s:54:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-others.zip\";}s:11:\"others-size\";i:144;s:2:\"db\";s:49:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-db.gz\";s:7:\"db-size\";i:56009;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"5e407f188c876329a69b3fb17ceb4e01db7f9609\";s:7:\"themes0\";s:40:\"e3ba904bde31d9129c98ed5d479a92cf6c62d8b9\";s:8:\"uploads0\";s:40:\"feed45d96aaf1a1e9c857c2ef841c5d53d35bca6\";s:7:\"others0\";s:40:\"7fa20cb3a9d6a214c1f20732edb1342fa25491bd\";s:3:\"db0\";s:40:\"3001c4694cd47f4319d2d2a9f897c856747f6e41\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"89a1f1ad9535be6f9ab9ad7e14007b90055dd335782f7fd4a743a074c0d3430b\";s:7:\"themes0\";s:64:\"74e06764951ef29a5e981c3628426a1f031bdb89d45759a91829db81c8adacf2\";s:8:\"uploads0\";s:64:\"239dfcab8947a2fbe40dfaccb791ca7b5059cdda781d95d53f65b8548b0518ea\";s:7:\"others0\";s:64:\"f30924f625c9bfb0cb3164908ae5c9fce698e2921532c96599eb074b7405cf10\";s:3:\"db0\";s:64:\"445fac0e2d38c0364f4ca2bdaaeba2a82f6d2c206296eec352fdb732d35a0aa6\";}}s:5:\"nonce\";s:12:\"fced6a5c25d6\";s:7:\"service\";a:1:{i:0;s:7:\"dropbox\";}s:20:\"service_instance_ids\";a:1:{s:7:\"dropbox\";a:1:{i:0;s:34:\"s-40bfb7e9297db7717afc9f411089c8b2\";}}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1547624835;s:6:\"themes\";i:1547624844;s:7:\"uploads\";i:1547624851;s:6:\"others\";i:1547624851;}s:18:\"created_by_version\";s:6:\"1.16.0\";s:21:\"last_saved_by_version\";s:6:\"1.16.0\";s:12:\"is_multisite\";b:0;}i:1547624155;a:19:{s:7:\"plugins\";a:1:{i:0;s:55:\"backup_2019-01-16-0735_UnderPC_813dd6c86c45-plugins.zip\";}s:12:\"plugins-size\";i:13688826;s:6:\"themes\";a:1:{i:0;s:54:\"backup_2019-01-16-0735_UnderPC_813dd6c86c45-themes.zip\";}s:11:\"themes-size\";i:20137637;s:7:\"uploads\";a:1:{i:0;s:55:\"backup_2019-01-16-0735_UnderPC_813dd6c86c45-uploads.zip\";}s:12:\"uploads-size\";i:1902317;s:6:\"others\";a:1:{i:0;s:54:\"backup_2019-01-16-0735_UnderPC_813dd6c86c45-others.zip\";}s:11:\"others-size\";i:144;s:2:\"db\";s:49:\"backup_2019-01-16-0735_UnderPC_813dd6c86c45-db.gz\";s:7:\"db-size\";i:55249;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"010919e160d0838ce999cc2e4b2e6d80577a145a\";s:7:\"themes0\";s:40:\"04a724177c8d7fd42507b3c215e08dbd9c4b3944\";s:8:\"uploads0\";s:40:\"58ffe1e7acdd7e2a9f9c26abc677a61ed91f0d53\";s:7:\"others0\";s:40:\"7fa20cb3a9d6a214c1f20732edb1342fa25491bd\";s:3:\"db0\";s:40:\"ef3f2bb1fcdcad5ce09359c96c253848549a0c57\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"246e76f4c75f81d4e37338ea4187ef538d89c1af8f2e4ece898be085218d2ace\";s:7:\"themes0\";s:64:\"85e8ef18d63ba9898dcb9bd7409485be9d6a5ab32216659ecfc1faa2ff879ae7\";s:8:\"uploads0\";s:64:\"8644290d30bec8f1c66473e6acf5bcba33d82623e745e15194b022ca38f6c4df\";s:7:\"others0\";s:64:\"f30924f625c9bfb0cb3164908ae5c9fce698e2921532c96599eb074b7405cf10\";s:3:\"db0\";s:64:\"6b44bf65afe44a7dcbd8d74eb2832cc1d3a167943bf81d82e855af4349f059af\";}}s:5:\"nonce\";s:12:\"813dd6c86c45\";s:7:\"service\";a:1:{i:0;s:7:\"dropbox\";}s:20:\"service_instance_ids\";a:1:{s:7:\"dropbox\";a:1:{i:0;s:34:\"s-40bfb7e9297db7717afc9f411089c8b2\";}}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1547624155;s:6:\"themes\";i:1547624186;s:7:\"uploads\";i:1547624200;s:6:\"others\";i:1547624201;}s:18:\"created_by_version\";s:6:\"1.16.0\";s:21:\"last_saved_by_version\";s:6:\"1.16.0\";s:12:\"is_multisite\";b:0;}}', 'no'),
(367, 'updraft_last_backup', 'a:5:{s:11:\"backup_time\";i:1547624835;s:12:\"backup_array\";a:11:{s:7:\"plugins\";a:1:{i:0;s:55:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-plugins.zip\";}s:12:\"plugins-size\";i:13688826;s:6:\"themes\";a:1:{i:0;s:54:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-themes.zip\";}s:11:\"themes-size\";i:20137637;s:7:\"uploads\";a:1:{i:0;s:55:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-uploads.zip\";}s:12:\"uploads-size\";i:1906961;s:6:\"others\";a:1:{i:0;s:54:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-others.zip\";}s:11:\"others-size\";i:144;s:2:\"db\";s:49:\"backup_2019-01-16-0747_UnderPC_fced6a5c25d6-db.gz\";s:7:\"db-size\";i:56009;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"5e407f188c876329a69b3fb17ceb4e01db7f9609\";s:7:\"themes0\";s:40:\"e3ba904bde31d9129c98ed5d479a92cf6c62d8b9\";s:8:\"uploads0\";s:40:\"feed45d96aaf1a1e9c857c2ef841c5d53d35bca6\";s:7:\"others0\";s:40:\"7fa20cb3a9d6a214c1f20732edb1342fa25491bd\";s:3:\"db0\";s:40:\"3001c4694cd47f4319d2d2a9f897c856747f6e41\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"89a1f1ad9535be6f9ab9ad7e14007b90055dd335782f7fd4a743a074c0d3430b\";s:7:\"themes0\";s:64:\"74e06764951ef29a5e981c3628426a1f031bdb89d45759a91829db81c8adacf2\";s:8:\"uploads0\";s:64:\"239dfcab8947a2fbe40dfaccb791ca7b5059cdda781d95d53f65b8548b0518ea\";s:7:\"others0\";s:64:\"f30924f625c9bfb0cb3164908ae5c9fce698e2921532c96599eb074b7405cf10\";s:3:\"db0\";s:64:\"445fac0e2d38c0364f4ca2bdaaeba2a82f6d2c206296eec352fdb732d35a0aa6\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"fced6a5c25d6\";}', 'yes'),
(403, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1547624201;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:27:\"updraftplus/updraftplus.php\";s:6:\"1.16.0\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.5.0.4\";s:17:\"wpforo/wpforo.php\";s:5:\"1.5.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:6:\"1.16.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/updraftplus.1.16.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.5.0.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wpforms-lite.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"wpforo/wpforo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/wpforo\";s:4:\"slug\";s:6:\"wpforo\";s:6:\"plugin\";s:17:\"wpforo/wpforo.php\";s:11:\"new_version\";s:5:\"1.5.5\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/wpforo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wpforo.1.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/wpforo/assets/icon-256x256.png?rev=1784214\";s:2:\"1x\";s:59:\"https://ps.w.org/wpforo/assets/icon-128x128.png?rev=1443649\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wpforo/assets/banner-1544x500.png?rev=1743533\";s:2:\"1x\";s:61:\"https://ps.w.org/wpforo/assets/banner-772x250.png?rev=1743533\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(404, 'wpforms_preview_page', '58', 'yes'),
(405, 'wpforms_version', '1.5.0.4', 'yes'),
(406, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1547471384;}', 'yes'),
(409, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(410, '_amn_wpforms-lite_last_checked', '1547596800', 'yes'),
(411, 'wpforms_review', 'a:2:{s:4:\"time\";i:1547471387;s:9:\"dismissed\";b:0;}', 'yes'),
(418, 'wpforo_stat', 'a:9:{s:6:\"forums\";s:2:\"19\";s:6:\"topics\";s:1:\"1\";s:5:\"posts\";s:1:\"4\";s:7:\"members\";s:1:\"4\";s:20:\"online_members_count\";s:1:\"3\";s:15:\"last_post_title\";s:31:\"Probleme Procesor Ryzen 3 2200G\";s:13:\"last_post_url\";s:79:\"http://localhost/community/procesor-amd/probleme-procesor-ryzen-3-2200g/#post-4\";s:19:\"newest_member_dname\";s:4:\"Mody\";s:25:\"newest_member_profile_url\";s:40:\"http://localhost/community/profile/mody/\";}', 'yes'),
(425, '_transient_timeout_wpforo_get_phrases_0d67330e40', '1547665623', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(426, '_transient_wpforo_get_phrases_0d67330e40', 'a:554:{i:0;a:5:{s:8:\"phraseid\";s:1:\"1\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"%s and %s liked\";s:12:\"phrase_value\";s:15:\"%s and %s liked\";s:7:\"package\";s:6:\"wpforo\";}i:1;a:5:{s:8:\"phraseid\";s:1:\"2\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"%s liked\";s:12:\"phrase_value\";s:8:\"%s liked\";s:7:\"package\";s:6:\"wpforo\";}i:2;a:5:{s:8:\"phraseid\";s:1:\"3\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"%s, %s and %s liked\";s:12:\"phrase_value\";s:19:\"%s, %s and %s liked\";s:7:\"package\";s:6:\"wpforo\";}i:3;a:5:{s:8:\"phraseid\";s:1:\"4\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"%s, %s, %s and %d people liked\";s:12:\"phrase_value\";s:30:\"%s, %s, %s and %d people liked\";s:7:\"package\";s:6:\"wpforo\";}i:4;a:5:{s:8:\"phraseid\";s:1:\"5\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"AOL IM\";s:12:\"phrase_value\";s:6:\"AOL IM\";s:7:\"package\";s:6:\"wpforo\";}i:5;a:5:{s:8:\"phraseid\";s:1:\"6\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"About Me\";s:12:\"phrase_value\";s:8:\"About Me\";s:7:\"package\";s:6:\"wpforo\";}i:6;a:5:{s:8:\"phraseid\";s:1:\"7\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Access add error\";s:12:\"phrase_value\";s:16:\"Access add error\";s:7:\"package\";s:6:\"wpforo\";}i:7;a:5:{s:8:\"phraseid\";s:1:\"8\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Access delete error\";s:12:\"phrase_value\";s:19:\"Access delete error\";s:7:\"package\";s:6:\"wpforo\";}i:8;a:5:{s:8:\"phraseid\";s:1:\"9\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Access edit error\";s:12:\"phrase_value\";s:17:\"Access edit error\";s:7:\"package\";s:6:\"wpforo\";}i:9;a:5:{s:8:\"phraseid\";s:2:\"10\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Access successfully deleted\";s:12:\"phrase_value\";s:27:\"Access successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:10;a:5:{s:8:\"phraseid\";s:2:\"11\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Account\";s:12:\"phrase_value\";s:7:\"Account\";s:7:\"package\";s:6:\"wpforo\";}i:11;a:5:{s:8:\"phraseid\";s:2:\"12\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Activity\";s:12:\"phrase_value\";s:8:\"Activity\";s:7:\"package\";s:6:\"wpforo\";}i:12;a:5:{s:8:\"phraseid\";s:2:\"13\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Add Topic error: No forum selected\";s:12:\"phrase_value\";s:34:\"Add Topic error: No forum selected\";s:7:\"package\";s:6:\"wpforo\";}i:13;a:5:{s:8:\"phraseid\";s:2:\"14\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Add a comment\";s:12:\"phrase_value\";s:13:\"Add a comment\";s:7:\"package\";s:6:\"wpforo\";}i:14;a:5:{s:8:\"phraseid\";s:2:\"15\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Add topic\";s:12:\"phrase_value\";s:9:\"Add topic\";s:7:\"package\";s:6:\"wpforo\";}i:15;a:5:{s:8:\"phraseid\";s:2:\"16\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"All Checked topics successfully deleted\";s:12:\"phrase_value\";s:39:\"All Checked topics successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:16;a:5:{s:8:\"phraseid\";s:2:\"17\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Answer\";s:12:\"phrase_value\";s:6:\"Answer\";s:7:\"package\";s:6:\"wpforo\";}i:17;a:5:{s:8:\"phraseid\";s:2:\"18\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Answer to\";s:12:\"phrase_value\";s:9:\"Answer to\";s:7:\"package\";s:6:\"wpforo\";}i:18;a:5:{s:8:\"phraseid\";s:2:\"19\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Answers\";s:12:\"phrase_value\";s:7:\"Answers\";s:7:\"package\";s:6:\"wpforo\";}i:19;a:5:{s:8:\"phraseid\";s:2:\"20\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Any Date\";s:12:\"phrase_value\";s:8:\"Any Date\";s:7:\"package\";s:6:\"wpforo\";}i:20;a:5:{s:8:\"phraseid\";s:2:\"21\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Ascending order\";s:12:\"phrase_value\";s:15:\"Ascending order\";s:7:\"package\";s:6:\"wpforo\";}i:21;a:5:{s:8:\"phraseid\";s:2:\"22\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Attach file:\";s:12:\"phrase_value\";s:12:\"Attach file:\";s:7:\"package\";s:6:\"wpforo\";}i:22;a:5:{s:8:\"phraseid\";s:2:\"23\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Avatar\";s:12:\"phrase_value\";s:6:\"Avatar\";s:7:\"package\";s:6:\"wpforo\";}i:23;a:5:{s:8:\"phraseid\";s:2:\"24\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Can\\\'t add forum\";s:12:\"phrase_value\";s:16:\"Can\\\'t add forum\";s:7:\"package\";s:6:\"wpforo\";}i:24;a:5:{s:8:\"phraseid\";s:2:\"25\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Can\\\'t add new language\";s:12:\"phrase_value\";s:23:\"Can\\\'t add new language\";s:7:\"package\";s:6:\"wpforo\";}i:25;a:5:{s:8:\"phraseid\";s:2:\"26\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Can\\\'t delete this Usergroup\";s:12:\"phrase_value\";s:28:\"Can\\\'t delete this Usergroup\";s:7:\"package\";s:6:\"wpforo\";}i:26;a:5:{s:8:\"phraseid\";s:2:\"27\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"Can\\\'t send confirmation email\";s:12:\"phrase_value\";s:30:\"Can\\\'t send confirmation email\";s:7:\"package\";s:6:\"wpforo\";}i:27;a:5:{s:8:\"phraseid\";s:2:\"28\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Can\\\'t send report email\";s:12:\"phrase_value\";s:24:\"Can\\\'t send report email\";s:7:\"package\";s:6:\"wpforo\";}i:28;a:5:{s:8:\"phraseid\";s:2:\"29\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Can\\\'t subscribe to this item\";s:12:\"phrase_value\";s:29:\"Can\\\'t subscribe to this item\";s:7:\"package\";s:6:\"wpforo\";}i:29;a:5:{s:8:\"phraseid\";s:2:\"30\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"Can\\\'t write a post: This topic is closed\";s:12:\"phrase_value\";s:41:\"Can\\\'t write a post: This topic is closed\";s:7:\"package\";s:6:\"wpforo\";}i:30;a:5:{s:8:\"phraseid\";s:2:\"31\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Can`t upload file\";s:12:\"phrase_value\";s:17:\"Can`t upload file\";s:7:\"package\";s:6:\"wpforo\";}i:31;a:5:{s:8:\"phraseid\";s:2:\"32\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Cannot update forum hierarchy\";s:12:\"phrase_value\";s:29:\"Cannot update forum hierarchy\";s:7:\"package\";s:6:\"wpforo\";}i:32;a:5:{s:8:\"phraseid\";s:2:\"33\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Cannot update post data\";s:12:\"phrase_value\";s:23:\"Cannot update post data\";s:7:\"package\";s:6:\"wpforo\";}i:33;a:5:{s:8:\"phraseid\";s:2:\"34\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Change password\";s:12:\"phrase_value\";s:15:\"Change password\";s:7:\"package\";s:6:\"wpforo\";}i:34;a:5:{s:8:\"phraseid\";s:2:\"35\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Choose Target Forum\";s:12:\"phrase_value\";s:19:\"Choose Target Forum\";s:7:\"package\";s:6:\"wpforo\";}i:35;a:5:{s:8:\"phraseid\";s:2:\"36\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Comments\";s:12:\"phrase_value\";s:8:\"Comments\";s:7:\"package\";s:6:\"wpforo\";}i:36;a:5:{s:8:\"phraseid\";s:2:\"37\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Confirm my subscription\";s:12:\"phrase_value\";s:23:\"Confirm my subscription\";s:7:\"package\";s:6:\"wpforo\";}i:37;a:5:{s:8:\"phraseid\";s:2:\"38\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"Could not be unsubscribe from this item\";s:12:\"phrase_value\";s:39:\"Could not be unsubscribe from this item\";s:7:\"package\";s:6:\"wpforo\";}i:38;a:5:{s:8:\"phraseid\";s:2:\"39\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Date\";s:12:\"phrase_value\";s:4:\"Date\";s:7:\"package\";s:6:\"wpforo\";}i:39;a:5:{s:8:\"phraseid\";s:2:\"40\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Delete\";s:12:\"phrase_value\";s:6:\"Delete\";s:7:\"package\";s:6:\"wpforo\";}i:40;a:5:{s:8:\"phraseid\";s:2:\"41\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Descending order\";s:12:\"phrase_value\";s:16:\"Descending order\";s:7:\"package\";s:6:\"wpforo\";}i:41;a:5:{s:8:\"phraseid\";s:2:\"42\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Display Name\";s:12:\"phrase_value\";s:12:\"Display Name\";s:7:\"package\";s:6:\"wpforo\";}i:42;a:5:{s:8:\"phraseid\";s:2:\"43\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Edit\";s:12:\"phrase_value\";s:4:\"Edit\";s:7:\"package\";s:6:\"wpforo\";}i:43;a:5:{s:8:\"phraseid\";s:2:\"44\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Edited:\";s:12:\"phrase_value\";s:7:\"Edited:\";s:7:\"package\";s:6:\"wpforo\";}i:44;a:5:{s:8:\"phraseid\";s:2:\"45\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Email\";s:12:\"phrase_value\";s:5:\"Email\";s:7:\"package\";s:6:\"wpforo\";}i:45;a:5:{s:8:\"phraseid\";s:2:\"46\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:44:\"Email address exists. Please insert another.\";s:12:\"phrase_value\";s:44:\"Email address exists. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:46;a:5:{s:8:\"phraseid\";s:2:\"47\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Enter title here\";s:12:\"phrase_value\";s:16:\"Enter title here\";s:7:\"package\";s:6:\"wpforo\";}i:47;a:5:{s:8:\"phraseid\";s:2:\"48\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Error: Forum is not found\";s:12:\"phrase_value\";s:25:\"Error: Forum is not found\";s:7:\"package\";s:6:\"wpforo\";}i:48;a:5:{s:8:\"phraseid\";s:2:\"49\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Error: No topic selected\";s:12:\"phrase_value\";s:24:\"Error: No topic selected\";s:7:\"package\";s:6:\"wpforo\";}i:49;a:5:{s:8:\"phraseid\";s:2:\"50\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Error: Topic is not found\";s:12:\"phrase_value\";s:25:\"Error: Topic is not found\";s:7:\"package\";s:6:\"wpforo\";}i:50;a:5:{s:8:\"phraseid\";s:2:\"51\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"Error: please insert some text to report.\";s:12:\"phrase_value\";s:41:\"Error: please insert some text to report.\";s:7:\"package\";s:6:\"wpforo\";}i:51;a:5:{s:8:\"phraseid\";s:2:\"52\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Facebook\";s:12:\"phrase_value\";s:8:\"Facebook\";s:7:\"package\";s:6:\"wpforo\";}i:52;a:5:{s:8:\"phraseid\";s:2:\"53\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Failed to write file to disk\";s:12:\"phrase_value\";s:28:\"Failed to write file to disk\";s:7:\"package\";s:6:\"wpforo\";}i:53;a:5:{s:8:\"phraseid\";s:2:\"54\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Features successfully updated\";s:12:\"phrase_value\";s:29:\"Features successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:54;a:5:{s:8:\"phraseid\";s:2:\"55\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:61:\"Features successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:61:\"Features successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:55;a:5:{s:8:\"phraseid\";s:2:\"56\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"File type is not allowed\";s:12:\"phrase_value\";s:24:\"File type is not allowed\";s:7:\"package\";s:6:\"wpforo\";}i:56;a:5:{s:8:\"phraseid\";s:2:\"57\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"File upload stopped by extension\";s:12:\"phrase_value\";s:32:\"File upload stopped by extension\";s:7:\"package\";s:6:\"wpforo\";}i:57;a:5:{s:8:\"phraseid\";s:2:\"58\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Find Posts by User\";s:12:\"phrase_value\";s:18:\"Find Posts by User\";s:7:\"package\";s:6:\"wpforo\";}i:58;a:5:{s:8:\"phraseid\";s:2:\"59\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Find Topics Started by User\";s:12:\"phrase_value\";s:27:\"Find Topics Started by User\";s:7:\"package\";s:6:\"wpforo\";}i:59;a:5:{s:8:\"phraseid\";s:2:\"60\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"First post and replies\";s:12:\"phrase_value\";s:22:\"First post and replies\";s:7:\"package\";s:6:\"wpforo\";}i:60;a:5:{s:8:\"phraseid\";s:2:\"61\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Forum\";s:12:\"phrase_value\";s:5:\"Forum\";s:7:\"package\";s:6:\"wpforo\";}i:61;a:5:{s:8:\"phraseid\";s:2:\"62\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Forum - Login\";s:12:\"phrase_value\";s:13:\"Forum - Login\";s:7:\"package\";s:6:\"wpforo\";}i:62;a:5:{s:8:\"phraseid\";s:2:\"63\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Forum - Page Not Found\";s:12:\"phrase_value\";s:22:\"Forum - Page Not Found\";s:7:\"package\";s:6:\"wpforo\";}i:63;a:5:{s:8:\"phraseid\";s:2:\"64\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Forum - Registration\";s:12:\"phrase_value\";s:20:\"Forum - Registration\";s:7:\"package\";s:6:\"wpforo\";}i:64;a:5:{s:8:\"phraseid\";s:2:\"65\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:35:\"Forum Base URL successfully updated\";s:12:\"phrase_value\";s:35:\"Forum Base URL successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:65;a:5:{s:8:\"phraseid\";s:2:\"66\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Forum Home\";s:12:\"phrase_value\";s:10:\"Forum Home\";s:7:\"package\";s:6:\"wpforo\";}i:66;a:5:{s:8:\"phraseid\";s:2:\"67\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Forum Members\";s:12:\"phrase_value\";s:13:\"Forum Members\";s:7:\"package\";s:6:\"wpforo\";}i:67;a:5:{s:8:\"phraseid\";s:2:\"68\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Forum Profile\";s:12:\"phrase_value\";s:13:\"Forum Profile\";s:7:\"package\";s:6:\"wpforo\";}i:68;a:5:{s:8:\"phraseid\";s:2:\"69\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Forum RSS Feed\";s:12:\"phrase_value\";s:14:\"Forum RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:69;a:5:{s:8:\"phraseid\";s:2:\"70\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Forum Statistics\";s:12:\"phrase_value\";s:16:\"Forum Statistics\";s:7:\"package\";s:6:\"wpforo\";}i:70;a:5:{s:8:\"phraseid\";s:2:\"71\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Forum deleting error\";s:12:\"phrase_value\";s:20:\"Forum deleting error\";s:7:\"package\";s:6:\"wpforo\";}i:71;a:5:{s:8:\"phraseid\";s:2:\"72\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"Forum hierarchy successfully updated\";s:12:\"phrase_value\";s:36:\"Forum hierarchy successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:72;a:5:{s:8:\"phraseid\";s:2:\"73\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Forum is empty\";s:12:\"phrase_value\";s:14:\"Forum is empty\";s:7:\"package\";s:6:\"wpforo\";}i:73;a:5:{s:8:\"phraseid\";s:2:\"74\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Forum is successfully merged\";s:12:\"phrase_value\";s:28:\"Forum is successfully merged\";s:7:\"package\";s:6:\"wpforo\";}i:74;a:5:{s:8:\"phraseid\";s:2:\"75\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Forum merging error\";s:12:\"phrase_value\";s:19:\"Forum merging error\";s:7:\"package\";s:6:\"wpforo\";}i:75;a:5:{s:8:\"phraseid\";s:2:\"76\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Forum options successfully updated\";s:12:\"phrase_value\";s:34:\"Forum options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:76;a:5:{s:8:\"phraseid\";s:2:\"77\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:66:\"Forum options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:66:\"Forum options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:77;a:5:{s:8:\"phraseid\";s:2:\"78\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Forum successfully updated\";s:12:\"phrase_value\";s:26:\"Forum successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:78;a:5:{s:8:\"phraseid\";s:2:\"79\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Forum update error\";s:12:\"phrase_value\";s:18:\"Forum update error\";s:7:\"package\";s:6:\"wpforo\";}i:79;a:5:{s:8:\"phraseid\";s:2:\"80\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Forums\";s:12:\"phrase_value\";s:6:\"Forums\";s:7:\"package\";s:6:\"wpforo\";}i:80;a:5:{s:8:\"phraseid\";s:2:\"81\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"General options successfully updated\";s:12:\"phrase_value\";s:36:\"General options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:81;a:5:{s:8:\"phraseid\";s:2:\"82\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Group\";s:12:\"phrase_value\";s:5:\"Group\";s:7:\"package\";s:6:\"wpforo\";}i:82;a:5:{s:8:\"phraseid\";s:2:\"83\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Google+\";s:12:\"phrase_value\";s:7:\"Google+\";s:7:\"package\";s:6:\"wpforo\";}i:83;a:5:{s:8:\"phraseid\";s:2:\"84\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Guest\";s:12:\"phrase_value\";s:5:\"Guest\";s:7:\"package\";s:6:\"wpforo\";}i:84;a:5:{s:8:\"phraseid\";s:2:\"85\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"ICQ\";s:12:\"phrase_value\";s:3:\"ICQ\";s:7:\"package\";s:6:\"wpforo\";}i:85;a:5:{s:8:\"phraseid\";s:2:\"86\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"Illegal character in username.\";s:12:\"phrase_value\";s:30:\"Illegal character in username.\";s:7:\"package\";s:6:\"wpforo\";}i:86;a:5:{s:8:\"phraseid\";s:2:\"87\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Insert member name or email\";s:12:\"phrase_value\";s:27:\"Insert member name or email\";s:7:\"package\";s:6:\"wpforo\";}i:87;a:5:{s:8:\"phraseid\";s:2:\"88\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Insert your Email address.\";s:12:\"phrase_value\";s:26:\"Insert your Email address.\";s:7:\"package\";s:6:\"wpforo\";}i:88;a:5:{s:8:\"phraseid\";s:2:\"89\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Invalid Email address\";s:12:\"phrase_value\";s:21:\"Invalid Email address\";s:7:\"package\";s:6:\"wpforo\";}i:89;a:5:{s:8:\"phraseid\";s:2:\"90\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Invalid request!\";s:12:\"phrase_value\";s:16:\"Invalid request!\";s:7:\"package\";s:6:\"wpforo\";}i:90;a:5:{s:8:\"phraseid\";s:2:\"91\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Joined\";s:12:\"phrase_value\";s:6:\"Joined\";s:7:\"package\";s:6:\"wpforo\";}i:91;a:5:{s:8:\"phraseid\";s:2:\"92\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last 24 hours\";s:12:\"phrase_value\";s:13:\"Last 24 hours\";s:7:\"package\";s:6:\"wpforo\";}i:92;a:5:{s:8:\"phraseid\";s:2:\"93\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last 3 Months\";s:12:\"phrase_value\";s:13:\"Last 3 Months\";s:7:\"package\";s:6:\"wpforo\";}i:93;a:5:{s:8:\"phraseid\";s:2:\"94\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last 6 Months\";s:12:\"phrase_value\";s:13:\"Last 6 Months\";s:7:\"package\";s:6:\"wpforo\";}i:94;a:5:{s:8:\"phraseid\";s:2:\"95\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Last Active\";s:12:\"phrase_value\";s:11:\"Last Active\";s:7:\"package\";s:6:\"wpforo\";}i:95;a:5:{s:8:\"phraseid\";s:2:\"96\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Last Month\";s:12:\"phrase_value\";s:10:\"Last Month\";s:7:\"package\";s:6:\"wpforo\";}i:96;a:5:{s:8:\"phraseid\";s:2:\"97\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Last Post\";s:12:\"phrase_value\";s:9:\"Last Post\";s:7:\"package\";s:6:\"wpforo\";}i:97;a:5:{s:8:\"phraseid\";s:2:\"98\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Last Post Info\";s:12:\"phrase_value\";s:14:\"Last Post Info\";s:7:\"package\";s:6:\"wpforo\";}i:98;a:5:{s:8:\"phraseid\";s:2:\"99\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Last Week\";s:12:\"phrase_value\";s:9:\"Last Week\";s:7:\"package\";s:6:\"wpforo\";}i:99;a:5:{s:8:\"phraseid\";s:3:\"100\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last Year ago\";s:12:\"phrase_value\";s:13:\"Last Year ago\";s:7:\"package\";s:6:\"wpforo\";}i:100;a:5:{s:8:\"phraseid\";s:3:\"101\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Last post by %s\";s:12:\"phrase_value\";s:15:\"Last post by %s\";s:7:\"package\";s:6:\"wpforo\";}i:101;a:5:{s:8:\"phraseid\";s:3:\"102\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Latest Post\";s:12:\"phrase_value\";s:11:\"Latest Post\";s:7:\"package\";s:6:\"wpforo\";}i:102;a:5:{s:8:\"phraseid\";s:3:\"103\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Leave a reply\";s:12:\"phrase_value\";s:13:\"Leave a reply\";s:7:\"package\";s:6:\"wpforo\";}i:103;a:5:{s:8:\"phraseid\";s:3:\"104\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"Length must be between 3 characters and 15 characters.\";s:12:\"phrase_value\";s:54:\"Length must be between 3 characters and 15 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:104;a:5:{s:8:\"phraseid\";s:3:\"105\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Liked\";s:12:\"phrase_value\";s:5:\"Liked\";s:7:\"package\";s:6:\"wpforo\";}i:105;a:5:{s:8:\"phraseid\";s:3:\"106\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Location\";s:12:\"phrase_value\";s:8:\"Location\";s:7:\"package\";s:6:\"wpforo\";}i:106;a:5:{s:8:\"phraseid\";s:3:\"107\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Login\";s:12:\"phrase_value\";s:5:\"Login\";s:7:\"package\";s:6:\"wpforo\";}i:107;a:5:{s:8:\"phraseid\";s:3:\"108\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Logout\";s:12:\"phrase_value\";s:6:\"Logout\";s:7:\"package\";s:6:\"wpforo\";}i:108;a:5:{s:8:\"phraseid\";s:3:\"109\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Lost your password?\";s:12:\"phrase_value\";s:19:\"Lost your password?\";s:7:\"package\";s:6:\"wpforo\";}i:109;a:5:{s:8:\"phraseid\";s:3:\"110\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"MSN\";s:12:\"phrase_value\";s:3:\"MSN\";s:7:\"package\";s:6:\"wpforo\";}i:110;a:5:{s:8:\"phraseid\";s:3:\"111\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Maximum allowed file size is\";s:12:\"phrase_value\";s:28:\"Maximum allowed file size is\";s:7:\"package\";s:6:\"wpforo\";}i:111;a:5:{s:8:\"phraseid\";s:3:\"112\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Member Activity\";s:12:\"phrase_value\";s:15:\"Member Activity\";s:7:\"package\";s:6:\"wpforo\";}i:112;a:5:{s:8:\"phraseid\";s:3:\"113\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Member Information\";s:12:\"phrase_value\";s:18:\"Member Information\";s:7:\"package\";s:6:\"wpforo\";}i:113;a:5:{s:8:\"phraseid\";s:3:\"114\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Member Rating\";s:12:\"phrase_value\";s:13:\"Member Rating\";s:7:\"package\";s:6:\"wpforo\";}i:114;a:5:{s:8:\"phraseid\";s:3:\"115\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Member Rating Badge\";s:12:\"phrase_value\";s:19:\"Member Rating Badge\";s:7:\"package\";s:6:\"wpforo\";}i:115;a:5:{s:8:\"phraseid\";s:3:\"116\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:35:\"Member options successfully updated\";s:12:\"phrase_value\";s:35:\"Member options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:116;a:5:{s:8:\"phraseid\";s:3:\"117\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:67:\"Member options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:67:\"Member options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:117;a:5:{s:8:\"phraseid\";s:3:\"118\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Members\";s:12:\"phrase_value\";s:7:\"Members\";s:7:\"package\";s:6:\"wpforo\";}i:118;a:5:{s:8:\"phraseid\";s:3:\"119\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Members not found\";s:12:\"phrase_value\";s:17:\"Members not found\";s:7:\"package\";s:6:\"wpforo\";}i:119;a:5:{s:8:\"phraseid\";s:3:\"120\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Message has been sent\";s:12:\"phrase_value\";s:21:\"Message has been sent\";s:7:\"package\";s:6:\"wpforo\";}i:120;a:5:{s:8:\"phraseid\";s:3:\"121\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Messages\";s:12:\"phrase_value\";s:8:\"Messages\";s:7:\"package\";s:6:\"wpforo\";}i:121;a:5:{s:8:\"phraseid\";s:3:\"122\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Missing a temporary folder\";s:12:\"phrase_value\";s:26:\"Missing a temporary folder\";s:7:\"package\";s:6:\"wpforo\";}i:122;a:5:{s:8:\"phraseid\";s:3:\"123\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Move\";s:12:\"phrase_value\";s:4:\"Move\";s:7:\"package\";s:6:\"wpforo\";}i:123;a:5:{s:8:\"phraseid\";s:3:\"124\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Move Topic\";s:12:\"phrase_value\";s:10:\"Move Topic\";s:7:\"package\";s:6:\"wpforo\";}i:124;a:5:{s:8:\"phraseid\";s:3:\"125\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Must be minimum 6 characters.\";s:12:\"phrase_value\";s:29:\"Must be minimum 6 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:125;a:5:{s:8:\"phraseid\";s:3:\"126\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"My Profile\";s:12:\"phrase_value\";s:10:\"My Profile\";s:7:\"package\";s:6:\"wpforo\";}i:126;a:5:{s:8:\"phraseid\";s:3:\"127\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:75:\"New language successfully added and changed wpforo language to new language\";s:12:\"phrase_value\";s:75:\"New language successfully added and changed wpforo language to new language\";s:7:\"package\";s:6:\"wpforo\";}i:127;a:5:{s:8:\"phraseid\";s:3:\"128\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"No Posts found for update\";s:12:\"phrase_value\";s:25:\"No Posts found for update\";s:7:\"package\";s:6:\"wpforo\";}i:128;a:5:{s:8:\"phraseid\";s:3:\"129\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"No activity found for this member.\";s:12:\"phrase_value\";s:34:\"No activity found for this member.\";s:7:\"package\";s:6:\"wpforo\";}i:129;a:5:{s:8:\"phraseid\";s:3:\"130\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"No file was uploaded\";s:12:\"phrase_value\";s:20:\"No file was uploaded\";s:7:\"package\";s:6:\"wpforo\";}i:130;a:5:{s:8:\"phraseid\";s:3:\"131\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"No forums were found here.\";s:12:\"phrase_value\";s:26:\"No forums were found here.\";s:7:\"package\";s:6:\"wpforo\";}i:131;a:5:{s:8:\"phraseid\";s:3:\"132\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"No online members at the moment\";s:12:\"phrase_value\";s:31:\"No online members at the moment\";s:7:\"package\";s:6:\"wpforo\";}i:132;a:5:{s:8:\"phraseid\";s:3:\"133\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"No subscriptions found for this member.\";s:12:\"phrase_value\";s:39:\"No subscriptions found for this member.\";s:7:\"package\";s:6:\"wpforo\";}i:133;a:5:{s:8:\"phraseid\";s:3:\"134\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"No topics were found here\";s:12:\"phrase_value\";s:25:\"No topics were found here\";s:7:\"package\";s:6:\"wpforo\";}i:134;a:5:{s:8:\"phraseid\";s:3:\"135\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Occupation\";s:12:\"phrase_value\";s:10:\"Occupation\";s:7:\"package\";s:6:\"wpforo\";}i:135;a:5:{s:8:\"phraseid\";s:3:\"136\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Offline\";s:12:\"phrase_value\";s:7:\"Offline\";s:7:\"package\";s:6:\"wpforo\";}i:136;a:5:{s:8:\"phraseid\";s:3:\"137\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Online\";s:12:\"phrase_value\";s:6:\"Online\";s:7:\"package\";s:6:\"wpforo\";}i:137;a:5:{s:8:\"phraseid\";s:3:\"138\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:43:\"Oops! The page you requested was not found!\";s:12:\"phrase_value\";s:43:\"Oops! The page you requested was not found!\";s:7:\"package\";s:6:\"wpforo\";}i:138;a:5:{s:8:\"phraseid\";s:3:\"139\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Our newest member\";s:12:\"phrase_value\";s:17:\"Our newest member\";s:7:\"package\";s:6:\"wpforo\";}i:139;a:5:{s:8:\"phraseid\";s:3:\"140\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Page\";s:12:\"phrase_value\";s:4:\"Page\";s:7:\"package\";s:6:\"wpforo\";}i:140;a:5:{s:8:\"phraseid\";s:3:\"141\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Password\";s:12:\"phrase_value\";s:8:\"Password\";s:7:\"package\";s:6:\"wpforo\";}i:141;a:5:{s:8:\"phraseid\";s:3:\"142\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"Password length must be between 6 characters and 20 characters.\";s:12:\"phrase_value\";s:63:\"Password length must be between 6 characters and 20 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:142;a:5:{s:8:\"phraseid\";s:3:\"143\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Password mismatch.\";s:12:\"phrase_value\";s:18:\"Password mismatch.\";s:7:\"package\";s:6:\"wpforo\";}i:143;a:5:{s:8:\"phraseid\";s:3:\"144\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Permission denied\";s:12:\"phrase_value\";s:17:\"Permission denied\";s:7:\"package\";s:6:\"wpforo\";}i:144;a:5:{s:8:\"phraseid\";s:3:\"145\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Permission denied for add forum\";s:12:\"phrase_value\";s:31:\"Permission denied for add forum\";s:7:\"package\";s:6:\"wpforo\";}i:145;a:5:{s:8:\"phraseid\";s:3:\"146\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Permission denied for delete forum\";s:12:\"phrase_value\";s:34:\"Permission denied for delete forum\";s:7:\"package\";s:6:\"wpforo\";}i:146;a:5:{s:8:\"phraseid\";s:3:\"147\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"Permission denied for edit forum\";s:12:\"phrase_value\";s:32:\"Permission denied for edit forum\";s:7:\"package\";s:6:\"wpforo\";}i:147;a:5:{s:8:\"phraseid\";s:3:\"148\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:33:\"Permission denied for this action\";s:12:\"phrase_value\";s:33:\"Permission denied for this action\";s:7:\"package\";s:6:\"wpforo\";}i:148;a:5:{s:8:\"phraseid\";s:3:\"149\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Phrase add error\";s:12:\"phrase_value\";s:16:\"Phrase add error\";s:7:\"package\";s:6:\"wpforo\";}i:149;a:5:{s:8:\"phraseid\";s:3:\"150\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Phrase adding error\";s:12:\"phrase_value\";s:19:\"Phrase adding error\";s:7:\"package\";s:6:\"wpforo\";}i:150;a:5:{s:8:\"phraseid\";s:3:\"151\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Phrase successfully added\";s:12:\"phrase_value\";s:25:\"Phrase successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:151;a:5:{s:8:\"phraseid\";s:3:\"152\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Phrase successfully updates\";s:12:\"phrase_value\";s:27:\"Phrase successfully updates\";s:7:\"package\";s:6:\"wpforo\";}i:152;a:5:{s:8:\"phraseid\";s:3:\"153\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Phrase update error\";s:12:\"phrase_value\";s:19:\"Phrase update error\";s:7:\"package\";s:6:\"wpforo\";}i:153;a:5:{s:8:\"phraseid\";s:3:\"154\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Please %s or %s\";s:12:\"phrase_value\";s:15:\"Please %s or %s\";s:7:\"package\";s:6:\"wpforo\";}i:154;a:5:{s:8:\"phraseid\";s:3:\"155\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"Please insert required fields!\";s:12:\"phrase_value\";s:30:\"Please insert required fields!\";s:7:\"package\";s:6:\"wpforo\";}i:155;a:5:{s:8:\"phraseid\";s:3:\"156\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Post Title\";s:12:\"phrase_value\";s:10:\"Post Title\";s:7:\"package\";s:6:\"wpforo\";}i:156;a:5:{s:8:\"phraseid\";s:3:\"157\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Post delete error\";s:12:\"phrase_value\";s:17:\"Post delete error\";s:7:\"package\";s:6:\"wpforo\";}i:157;a:5:{s:8:\"phraseid\";s:3:\"158\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Post link\";s:12:\"phrase_value\";s:9:\"Post link\";s:7:\"package\";s:6:\"wpforo\";}i:158;a:5:{s:8:\"phraseid\";s:3:\"159\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:33:\"Post options successfully updated\";s:12:\"phrase_value\";s:33:\"Post options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:159;a:5:{s:8:\"phraseid\";s:3:\"160\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:65:\"Post options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:65:\"Post options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:160;a:5:{s:8:\"phraseid\";s:3:\"161\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Posted\";s:12:\"phrase_value\";s:6:\"Posted\";s:7:\"package\";s:6:\"wpforo\";}i:161;a:5:{s:8:\"phraseid\";s:3:\"162\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Posted by\";s:12:\"phrase_value\";s:9:\"Posted by\";s:7:\"package\";s:6:\"wpforo\";}i:162;a:5:{s:8:\"phraseid\";s:3:\"163\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Posts\";s:12:\"phrase_value\";s:5:\"Posts\";s:7:\"package\";s:6:\"wpforo\";}i:163;a:5:{s:8:\"phraseid\";s:3:\"164\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Powered by\";s:12:\"phrase_value\";s:10:\"Powered by\";s:7:\"package\";s:6:\"wpforo\";}i:164;a:5:{s:8:\"phraseid\";s:3:\"165\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Question Comments\";s:12:\"phrase_value\";s:17:\"Question Comments\";s:7:\"package\";s:6:\"wpforo\";}i:165;a:5:{s:8:\"phraseid\";s:3:\"166\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Questions\";s:12:\"phrase_value\";s:9:\"Questions\";s:7:\"package\";s:6:\"wpforo\";}i:166;a:5:{s:8:\"phraseid\";s:3:\"167\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Quote\";s:12:\"phrase_value\";s:5:\"Quote\";s:7:\"package\";s:6:\"wpforo\";}i:167;a:5:{s:8:\"phraseid\";s:3:\"168\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:2:\"RE\";s:12:\"phrase_value\";s:2:\"RE\";s:7:\"package\";s:6:\"wpforo\";}i:168;a:5:{s:8:\"phraseid\";s:3:\"169\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"REPLY:\";s:12:\"phrase_value\";s:6:\"REPLY:\";s:7:\"package\";s:6:\"wpforo\";}i:169;a:5:{s:8:\"phraseid\";s:3:\"170\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"RSS\";s:12:\"phrase_value\";s:3:\"RSS\";s:7:\"package\";s:6:\"wpforo\";}i:170;a:5:{s:8:\"phraseid\";s:3:\"171\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Rating\";s:12:\"phrase_value\";s:6:\"Rating\";s:7:\"package\";s:6:\"wpforo\";}i:171;a:5:{s:8:\"phraseid\";s:3:\"172\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Rating Badge\";s:12:\"phrase_value\";s:12:\"Rating Badge\";s:7:\"package\";s:6:\"wpforo\";}i:172;a:5:{s:8:\"phraseid\";s:3:\"173\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Received Likes\";s:12:\"phrase_value\";s:14:\"Received Likes\";s:7:\"package\";s:6:\"wpforo\";}i:173;a:5:{s:8:\"phraseid\";s:3:\"174\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Recent Questions\";s:12:\"phrase_value\";s:16:\"Recent Questions\";s:7:\"package\";s:6:\"wpforo\";}i:174;a:5:{s:8:\"phraseid\";s:3:\"175\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Recent Topics\";s:12:\"phrase_value\";s:13:\"Recent Topics\";s:7:\"package\";s:6:\"wpforo\";}i:175;a:5:{s:8:\"phraseid\";s:3:\"176\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Register\";s:12:\"phrase_value\";s:8:\"Register\";s:7:\"package\";s:6:\"wpforo\";}i:176;a:5:{s:8:\"phraseid\";s:3:\"177\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Registered date\";s:12:\"phrase_value\";s:15:\"Registered date\";s:7:\"package\";s:6:\"wpforo\";}i:177;a:5:{s:8:\"phraseid\";s:3:\"178\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Registration Error\";s:12:\"phrase_value\";s:18:\"Registration Error\";s:7:\"package\";s:6:\"wpforo\";}i:178;a:5:{s:8:\"phraseid\";s:3:\"179\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Relevancy\";s:12:\"phrase_value\";s:9:\"Relevancy\";s:7:\"package\";s:6:\"wpforo\";}i:179;a:5:{s:8:\"phraseid\";s:3:\"180\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Remember Me\";s:12:\"phrase_value\";s:11:\"Remember Me\";s:7:\"package\";s:6:\"wpforo\";}i:180;a:5:{s:8:\"phraseid\";s:3:\"181\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Replies\";s:12:\"phrase_value\";s:7:\"Replies\";s:7:\"package\";s:6:\"wpforo\";}i:181;a:5:{s:8:\"phraseid\";s:3:\"182\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Replies not found\";s:12:\"phrase_value\";s:17:\"Replies not found\";s:7:\"package\";s:6:\"wpforo\";}i:182;a:5:{s:8:\"phraseid\";s:3:\"183\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Reply\";s:12:\"phrase_value\";s:5:\"Reply\";s:7:\"package\";s:6:\"wpforo\";}i:183;a:5:{s:8:\"phraseid\";s:3:\"184\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Reply request error\";s:12:\"phrase_value\";s:19:\"Reply request error\";s:7:\"package\";s:6:\"wpforo\";}i:184;a:5:{s:8:\"phraseid\";s:3:\"185\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Report\";s:12:\"phrase_value\";s:6:\"Report\";s:7:\"package\";s:6:\"wpforo\";}i:185;a:5:{s:8:\"phraseid\";s:3:\"186\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Report to Administration\";s:12:\"phrase_value\";s:24:\"Report to Administration\";s:7:\"package\";s:6:\"wpforo\";}i:186;a:5:{s:8:\"phraseid\";s:3:\"187\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Result Info\";s:12:\"phrase_value\";s:11:\"Result Info\";s:7:\"package\";s:6:\"wpforo\";}i:187;a:5:{s:8:\"phraseid\";s:3:\"188\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Save\";s:12:\"phrase_value\";s:4:\"Save\";s:7:\"package\";s:6:\"wpforo\";}i:188;a:5:{s:8:\"phraseid\";s:3:\"189\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Save Changes\";s:12:\"phrase_value\";s:12:\"Save Changes\";s:7:\"package\";s:6:\"wpforo\";}i:189;a:5:{s:8:\"phraseid\";s:3:\"190\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Search\";s:12:\"phrase_value\";s:6:\"Search\";s:7:\"package\";s:6:\"wpforo\";}i:190;a:5:{s:8:\"phraseid\";s:3:\"191\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Search Entire Posts\";s:12:\"phrase_value\";s:19:\"Search Entire Posts\";s:7:\"package\";s:6:\"wpforo\";}i:191;a:5:{s:8:\"phraseid\";s:3:\"192\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Search Phrase\";s:12:\"phrase_value\";s:13:\"Search Phrase\";s:7:\"package\";s:6:\"wpforo\";}i:192;a:5:{s:8:\"phraseid\";s:3:\"193\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Search Titles Only\";s:12:\"phrase_value\";s:18:\"Search Titles Only\";s:7:\"package\";s:6:\"wpforo\";}i:193;a:5:{s:8:\"phraseid\";s:3:\"194\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Search Type\";s:12:\"phrase_value\";s:11:\"Search Type\";s:7:\"package\";s:6:\"wpforo\";}i:194;a:5:{s:8:\"phraseid\";s:3:\"195\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Search in Forums\";s:12:\"phrase_value\";s:16:\"Search in Forums\";s:7:\"package\";s:6:\"wpforo\";}i:195;a:5:{s:8:\"phraseid\";s:3:\"196\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Search in date period\";s:12:\"phrase_value\";s:21:\"Search in date period\";s:7:\"package\";s:6:\"wpforo\";}i:196;a:5:{s:8:\"phraseid\";s:3:\"197\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Search result for\";s:12:\"phrase_value\";s:17:\"Search result for\";s:7:\"package\";s:6:\"wpforo\";}i:197;a:5:{s:8:\"phraseid\";s:3:\"198\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Search...\";s:12:\"phrase_value\";s:9:\"Search...\";s:7:\"package\";s:6:\"wpforo\";}i:198;a:5:{s:8:\"phraseid\";s:3:\"199\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Select Page\";s:12:\"phrase_value\";s:11:\"Select Page\";s:7:\"package\";s:6:\"wpforo\";}i:199;a:5:{s:8:\"phraseid\";s:3:\"200\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Send Report\";s:12:\"phrase_value\";s:11:\"Send Report\";s:7:\"package\";s:6:\"wpforo\";}i:200;a:5:{s:8:\"phraseid\";s:3:\"201\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Set Topic Sticky\";s:12:\"phrase_value\";s:16:\"Set Topic Sticky\";s:7:\"package\";s:6:\"wpforo\";}i:201;a:5:{s:8:\"phraseid\";s:3:\"202\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Shop Account\";s:12:\"phrase_value\";s:12:\"Shop Account\";s:7:\"package\";s:6:\"wpforo\";}i:202;a:5:{s:8:\"phraseid\";s:3:\"203\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Sign In\";s:12:\"phrase_value\";s:7:\"Sign In\";s:7:\"package\";s:6:\"wpforo\";}i:203;a:5:{s:8:\"phraseid\";s:3:\"204\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Signature\";s:12:\"phrase_value\";s:9:\"Signature\";s:7:\"package\";s:6:\"wpforo\";}i:204;a:5:{s:8:\"phraseid\";s:3:\"205\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Site Profile\";s:12:\"phrase_value\";s:12:\"Site Profile\";s:7:\"package\";s:6:\"wpforo\";}i:205;a:5:{s:8:\"phraseid\";s:3:\"206\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Skype\";s:12:\"phrase_value\";s:5:\"Skype\";s:7:\"package\";s:6:\"wpforo\";}i:206;a:5:{s:8:\"phraseid\";s:3:\"207\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Social Networks\";s:12:\"phrase_value\";s:15:\"Social Networks\";s:7:\"package\";s:6:\"wpforo\";}i:207;a:5:{s:8:\"phraseid\";s:3:\"208\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Something wrong with profile data.\";s:12:\"phrase_value\";s:34:\"Something wrong with profile data.\";s:7:\"package\";s:6:\"wpforo\";}i:208;a:5:{s:8:\"phraseid\";s:3:\"209\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"Sorry, something wrong with your data.\";s:12:\"phrase_value\";s:38:\"Sorry, something wrong with your data.\";s:7:\"package\";s:6:\"wpforo\";}i:209;a:5:{s:8:\"phraseid\";s:3:\"210\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Sort Search Results by\";s:12:\"phrase_value\";s:22:\"Sort Search Results by\";s:7:\"package\";s:6:\"wpforo\";}i:210;a:5:{s:8:\"phraseid\";s:3:\"211\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Specify avatar by URL\";s:12:\"phrase_value\";s:21:\"Specify avatar by URL\";s:7:\"package\";s:6:\"wpforo\";}i:211;a:5:{s:8:\"phraseid\";s:3:\"212\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Subforums\";s:12:\"phrase_value\";s:9:\"Subforums\";s:7:\"package\";s:6:\"wpforo\";}i:212;a:5:{s:8:\"phraseid\";s:3:\"213\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Subscribe for new replies\";s:12:\"phrase_value\";s:25:\"Subscribe for new replies\";s:7:\"package\";s:6:\"wpforo\";}i:213;a:5:{s:8:\"phraseid\";s:3:\"214\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Subscribe for new topics\";s:12:\"phrase_value\";s:24:\"Subscribe for new topics\";s:7:\"package\";s:6:\"wpforo\";}i:214;a:5:{s:8:\"phraseid\";s:3:\"215\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"Subscribe options successfully updated\";s:12:\"phrase_value\";s:38:\"Subscribe options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:215;a:5:{s:8:\"phraseid\";s:3:\"216\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:70:\"Subscribe options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:70:\"Subscribe options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:216;a:5:{s:8:\"phraseid\";s:3:\"217\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Subscriptions\";s:12:\"phrase_value\";s:13:\"Subscriptions\";s:7:\"package\";s:6:\"wpforo\";}i:217;a:5:{s:8:\"phraseid\";s:3:\"218\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Success!\";s:12:\"phrase_value\";s:8:\"Success!\";s:7:\"package\";s:6:\"wpforo\";}i:218;a:5:{s:8:\"phraseid\";s:3:\"219\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:100:\"Success! Thank you. Please check your email and click confirmation link below to complete this step.\";s:12:\"phrase_value\";s:100:\"Success! Thank you. Please check your email and click confirmation link below to complete this step.\";s:7:\"package\";s:6:\"wpforo\";}i:219;a:5:{s:8:\"phraseid\";s:3:\"220\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Successfully updated\";s:12:\"phrase_value\";s:20:\"Successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:220;a:5:{s:8:\"phraseid\";s:3:\"221\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Successfully voted\";s:12:\"phrase_value\";s:18:\"Successfully voted\";s:7:\"package\";s:6:\"wpforo\";}i:221;a:5:{s:8:\"phraseid\";s:3:\"222\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:89:\"The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form\";s:12:\"phrase_value\";s:89:\"The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form\";s:7:\"package\";s:6:\"wpforo\";}i:222;a:5:{s:8:\"phraseid\";s:3:\"223\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:70:\"The uploaded file exceeds the upload_max_filesize directive in php.ini\";s:12:\"phrase_value\";s:70:\"The uploaded file exceeds the upload_max_filesize directive in php.ini\";s:7:\"package\";s:6:\"wpforo\";}i:223;a:5:{s:8:\"phraseid\";s:3:\"224\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:33:\"The uploaded file size is too big\";s:12:\"phrase_value\";s:33:\"The uploaded file size is too big\";s:7:\"package\";s:6:\"wpforo\";}i:224;a:5:{s:8:\"phraseid\";s:3:\"225\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:45:\"The uploaded file was only partially uploaded\";s:12:\"phrase_value\";s:45:\"The uploaded file was only partially uploaded\";s:7:\"package\";s:6:\"wpforo\";}i:225;a:5:{s:8:\"phraseid\";s:3:\"226\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Theme options successfully updated\";s:12:\"phrase_value\";s:34:\"Theme options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:226;a:5:{s:8:\"phraseid\";s:3:\"227\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:64:\"This email address is already registered. Please insert another.\";s:12:\"phrase_value\";s:64:\"This email address is already registered. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:227;a:5:{s:8:\"phraseid\";s:3:\"228\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"This post successfully deleted\";s:12:\"phrase_value\";s:30:\"This post successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:228;a:5:{s:8:\"phraseid\";s:3:\"229\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"This post successfully edited\";s:12:\"phrase_value\";s:29:\"This post successfully edited\";s:7:\"package\";s:6:\"wpforo\";}i:229;a:5:{s:8:\"phraseid\";s:3:\"230\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"This topic successfully deleted\";s:12:\"phrase_value\";s:31:\"This topic successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:230;a:5:{s:8:\"phraseid\";s:3:\"231\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Timezone\";s:12:\"phrase_value\";s:8:\"Timezone\";s:7:\"package\";s:6:\"wpforo\";}i:231;a:5:{s:8:\"phraseid\";s:3:\"232\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Title\";s:12:\"phrase_value\";s:5:\"Title\";s:7:\"package\";s:6:\"wpforo\";}i:232;a:5:{s:8:\"phraseid\";s:3:\"233\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Topic Move Error\";s:12:\"phrase_value\";s:16:\"Topic Move Error\";s:7:\"package\";s:6:\"wpforo\";}i:233;a:5:{s:8:\"phraseid\";s:3:\"234\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Topic RSS Feed\";s:12:\"phrase_value\";s:14:\"Topic RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:234;a:5:{s:8:\"phraseid\";s:3:\"235\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Topic Title\";s:12:\"phrase_value\";s:11:\"Topic Title\";s:7:\"package\";s:6:\"wpforo\";}i:235;a:5:{s:8:\"phraseid\";s:3:\"236\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Topic add error\";s:12:\"phrase_value\";s:15:\"Topic add error\";s:7:\"package\";s:6:\"wpforo\";}i:236;a:5:{s:8:\"phraseid\";s:3:\"237\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Topic delete error\";s:12:\"phrase_value\";s:18:\"Topic delete error\";s:7:\"package\";s:6:\"wpforo\";}i:237;a:5:{s:8:\"phraseid\";s:3:\"238\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Topic edit error\";s:12:\"phrase_value\";s:16:\"Topic edit error\";s:7:\"package\";s:6:\"wpforo\";}i:238;a:5:{s:8:\"phraseid\";s:3:\"239\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Topic not found.\";s:12:\"phrase_value\";s:16:\"Topic not found.\";s:7:\"package\";s:6:\"wpforo\";}i:239;a:5:{s:8:\"phraseid\";s:3:\"240\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Topic successfully moved\";s:12:\"phrase_value\";s:24:\"Topic successfully moved\";s:7:\"package\";s:6:\"wpforo\";}i:240;a:5:{s:8:\"phraseid\";s:3:\"241\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Topic successfully updated\";s:12:\"phrase_value\";s:26:\"Topic successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:241;a:5:{s:8:\"phraseid\";s:3:\"242\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Topics\";s:12:\"phrase_value\";s:6:\"Topics\";s:7:\"package\";s:6:\"wpforo\";}i:242;a:5:{s:8:\"phraseid\";s:3:\"243\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Topics delete error\";s:12:\"phrase_value\";s:19:\"Topics delete error\";s:7:\"package\";s:6:\"wpforo\";}i:243;a:5:{s:8:\"phraseid\";s:3:\"244\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Twitter\";s:12:\"phrase_value\";s:7:\"Twitter\";s:7:\"package\";s:6:\"wpforo\";}i:244;a:5:{s:8:\"phraseid\";s:3:\"245\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Unknown upload error\";s:12:\"phrase_value\";s:20:\"Unknown upload error\";s:7:\"package\";s:6:\"wpforo\";}i:245;a:5:{s:8:\"phraseid\";s:3:\"246\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Unsubscribe\";s:12:\"phrase_value\";s:11:\"Unsubscribe\";s:7:\"package\";s:6:\"wpforo\";}i:246;a:5:{s:8:\"phraseid\";s:3:\"247\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Upload an avatar\";s:12:\"phrase_value\";s:16:\"Upload an avatar\";s:7:\"package\";s:6:\"wpforo\";}i:247;a:5:{s:8:\"phraseid\";s:3:\"248\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:104:\"Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.\";s:12:\"phrase_value\";s:104:\"Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.\";s:7:\"package\";s:6:\"wpforo\";}i:248;a:5:{s:8:\"phraseid\";s:3:\"249\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"User\";s:12:\"phrase_value\";s:4:\"User\";s:7:\"package\";s:6:\"wpforo\";}i:249;a:5:{s:8:\"phraseid\";s:3:\"250\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"User Group\";s:12:\"phrase_value\";s:10:\"User Group\";s:7:\"package\";s:6:\"wpforo\";}i:250;a:5:{s:8:\"phraseid\";s:3:\"251\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"User delete error\";s:12:\"phrase_value\";s:17:\"User delete error\";s:7:\"package\";s:6:\"wpforo\";}i:251;a:5:{s:8:\"phraseid\";s:3:\"252\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"User group add error\";s:12:\"phrase_value\";s:20:\"User group add error\";s:7:\"package\";s:6:\"wpforo\";}i:252;a:5:{s:8:\"phraseid\";s:3:\"253\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"User group edit error\";s:12:\"phrase_value\";s:21:\"User group edit error\";s:7:\"package\";s:6:\"wpforo\";}i:253;a:5:{s:8:\"phraseid\";s:3:\"254\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"User group successfully added\";s:12:\"phrase_value\";s:29:\"User group successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:254;a:5:{s:8:\"phraseid\";s:3:\"255\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"User group successfully edited\";s:12:\"phrase_value\";s:30:\"User group successfully edited\";s:7:\"package\";s:6:\"wpforo\";}i:255;a:5:{s:8:\"phraseid\";s:3:\"256\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"User successfully deleted from wpforo\";s:12:\"phrase_value\";s:37:\"User successfully deleted from wpforo\";s:7:\"package\";s:6:\"wpforo\";}i:256;a:5:{s:8:\"phraseid\";s:3:\"257\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"Usergroup has been successfully deleted.\";s:12:\"phrase_value\";s:40:\"Usergroup has been successfully deleted.\";s:7:\"package\";s:6:\"wpforo\";}i:257;a:5:{s:8:\"phraseid\";s:3:\"258\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:116:\"Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\\\'ve chosen\";s:12:\"phrase_value\";s:116:\"Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\\\'ve chosen\";s:7:\"package\";s:6:\"wpforo\";}i:258;a:5:{s:8:\"phraseid\";s:3:\"259\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Username\";s:12:\"phrase_value\";s:8:\"Username\";s:7:\"package\";s:6:\"wpforo\";}i:259;a:5:{s:8:\"phraseid\";s:3:\"260\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"Username exists. Please insert another.\";s:12:\"phrase_value\";s:39:\"Username exists. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:260;a:5:{s:8:\"phraseid\";s:3:\"261\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Username is missed.\";s:12:\"phrase_value\";s:19:\"Username is missed.\";s:7:\"package\";s:6:\"wpforo\";}i:261;a:5:{s:8:\"phraseid\";s:3:\"262\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"Username length must be between 3 characters and 15 characters.\";s:12:\"phrase_value\";s:63:\"Username length must be between 3 characters and 15 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:262;a:5:{s:8:\"phraseid\";s:3:\"263\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"View entire post\";s:12:\"phrase_value\";s:16:\"View entire post\";s:7:\"package\";s:6:\"wpforo\";}i:263;a:5:{s:8:\"phraseid\";s:3:\"264\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"View the latest post\";s:12:\"phrase_value\";s:20:\"View the latest post\";s:7:\"package\";s:6:\"wpforo\";}i:264;a:5:{s:8:\"phraseid\";s:3:\"265\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Views\";s:12:\"phrase_value\";s:5:\"Views\";s:7:\"package\";s:6:\"wpforo\";}i:265;a:5:{s:8:\"phraseid\";s:3:\"266\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Votes\";s:12:\"phrase_value\";s:5:\"Votes\";s:7:\"package\";s:6:\"wpforo\";}i:266;a:5:{s:8:\"phraseid\";s:3:\"267\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Website\";s:12:\"phrase_value\";s:7:\"Website\";s:7:\"package\";s:6:\"wpforo\";}i:267;a:5:{s:8:\"phraseid\";s:3:\"268\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Welcome to our Community!\";s:12:\"phrase_value\";s:25:\"Welcome to our Community!\";s:7:\"package\";s:6:\"wpforo\";}i:268;a:5:{s:8:\"phraseid\";s:3:\"269\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Wordpress avatar system\";s:12:\"phrase_value\";s:23:\"Wordpress avatar system\";s:7:\"package\";s:6:\"wpforo\";}i:269;a:5:{s:8:\"phraseid\";s:3:\"270\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Working\";s:12:\"phrase_value\";s:7:\"Working\";s:7:\"package\";s:6:\"wpforo\";}i:270;a:5:{s:8:\"phraseid\";s:3:\"271\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Write message\";s:12:\"phrase_value\";s:13:\"Write message\";s:7:\"package\";s:6:\"wpforo\";}i:271;a:5:{s:8:\"phraseid\";s:3:\"272\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Wrong post data\";s:12:\"phrase_value\";s:15:\"Wrong post data\";s:7:\"package\";s:6:\"wpforo\";}i:272;a:5:{s:8:\"phraseid\";s:3:\"273\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Yahoo\";s:12:\"phrase_value\";s:5:\"Yahoo\";s:7:\"package\";s:6:\"wpforo\";}i:273;a:5:{s:8:\"phraseid\";s:3:\"274\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"You\";s:12:\"phrase_value\";s:3:\"You\";s:7:\"package\";s:6:\"wpforo\";}i:274;a:5:{s:8:\"phraseid\";s:3:\"275\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"You are already voted this post\";s:12:\"phrase_value\";s:31:\"You are already voted this post\";s:7:\"package\";s:6:\"wpforo\";}i:275;a:5:{s:8:\"phraseid\";s:3:\"276\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"You can go to %s page or Search here\";s:12:\"phrase_value\";s:36:\"You can go to %s page or Search here\";s:7:\"package\";s:6:\"wpforo\";}i:276;a:5:{s:8:\"phraseid\";s:3:\"277\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"You have been successfully subscribed\";s:12:\"phrase_value\";s:37:\"You have been successfully subscribed\";s:7:\"package\";s:6:\"wpforo\";}i:277;a:5:{s:8:\"phraseid\";s:3:\"278\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"You have been successfully unsubscribed\";s:12:\"phrase_value\";s:39:\"You have been successfully unsubscribed\";s:7:\"package\";s:6:\"wpforo\";}i:278;a:5:{s:8:\"phraseid\";s:3:\"279\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"You have no permission to edit this topic\";s:12:\"phrase_value\";s:41:\"You have no permission to edit this topic\";s:7:\"package\";s:6:\"wpforo\";}i:279;a:5:{s:8:\"phraseid\";s:3:\"280\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"You don\\\'t have permission to create post in this forum\";s:12:\"phrase_value\";s:55:\"You don\\\'t have permission to create post in this forum\";s:7:\"package\";s:6:\"wpforo\";}i:280;a:5:{s:8:\"phraseid\";s:3:\"281\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:58:\"You don\\\'t have permission to create topic into this forum\";s:12:\"phrase_value\";s:58:\"You don\\\'t have permission to create topic into this forum\";s:7:\"package\";s:6:\"wpforo\";}i:281;a:5:{s:8:\"phraseid\";s:3:\"282\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:57:\"You don\\\'t have permission to delete post from this forum\";s:12:\"phrase_value\";s:57:\"You don\\\'t have permission to delete post from this forum\";s:7:\"package\";s:6:\"wpforo\";}i:282;a:5:{s:8:\"phraseid\";s:3:\"283\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:58:\"You don\\\'t have permission to delete topic from this forum\";s:12:\"phrase_value\";s:58:\"You don\\\'t have permission to delete topic from this forum\";s:7:\"package\";s:6:\"wpforo\";}i:283;a:5:{s:8:\"phraseid\";s:3:\"284\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"You don\\\'t have permission to edit post from this forum\";s:12:\"phrase_value\";s:55:\"You don\\\'t have permission to edit post from this forum\";s:7:\"package\";s:6:\"wpforo\";}i:284;a:5:{s:8:\"phraseid\";s:3:\"285\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"You successfully replied\";s:12:\"phrase_value\";s:24:\"You successfully replied\";s:7:\"package\";s:6:\"wpforo\";}i:285;a:5:{s:8:\"phraseid\";s:3:\"286\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Your Answer\";s:12:\"phrase_value\";s:11:\"Your Answer\";s:7:\"package\";s:6:\"wpforo\";}i:286;a:5:{s:8:\"phraseid\";s:3:\"287\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Your forum successfully added\";s:12:\"phrase_value\";s:29:\"Your forum successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:287;a:5:{s:8:\"phraseid\";s:3:\"288\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Your forum successfully deleted\";s:12:\"phrase_value\";s:31:\"Your forum successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:288;a:5:{s:8:\"phraseid\";s:3:\"289\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Your profile data have been successfully updated.\";s:12:\"phrase_value\";s:49:\"Your profile data have been successfully updated.\";s:7:\"package\";s:6:\"wpforo\";}i:289;a:5:{s:8:\"phraseid\";s:3:\"290\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"Your subscription for this item could not be confirmed\";s:12:\"phrase_value\";s:54:\"Your subscription for this item could not be confirmed\";s:7:\"package\";s:6:\"wpforo\";}i:290;a:5:{s:8:\"phraseid\";s:3:\"291\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Your topic successfully added\";s:12:\"phrase_value\";s:29:\"Your topic successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:291;a:5:{s:8:\"phraseid\";s:3:\"292\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"add\";s:12:\"phrase_value\";s:3:\"add\";s:7:\"package\";s:6:\"wpforo\";}i:292;a:5:{s:8:\"phraseid\";s:3:\"293\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"add_new\";s:12:\"phrase_value\";s:7:\"add_new\";s:7:\"package\";s:6:\"wpforo\";}i:293;a:5:{s:8:\"phraseid\";s:3:\"294\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"%s ago\";s:12:\"phrase_value\";s:6:\"%s ago\";s:7:\"package\";s:6:\"wpforo\";}i:294;a:5:{s:8:\"phraseid\";s:3:\"295\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:2:\"by\";s:12:\"phrase_value\";s:2:\"by\";s:7:\"package\";s:6:\"wpforo\";}i:295;a:5:{s:8:\"phraseid\";s:3:\"296\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"by %s\";s:12:\"phrase_value\";s:5:\"by %s\";s:7:\"package\";s:6:\"wpforo\";}i:296;a:5:{s:8:\"phraseid\";s:3:\"297\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"confirm password\";s:12:\"phrase_value\";s:16:\"confirm password\";s:7:\"package\";s:6:\"wpforo\";}i:297;a:5:{s:8:\"phraseid\";s:3:\"298\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"edit profile\";s:12:\"phrase_value\";s:12:\"edit profile\";s:7:\"package\";s:6:\"wpforo\";}i:298;a:5:{s:8:\"phraseid\";s:3:\"299\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"edit user\";s:12:\"phrase_value\";s:9:\"edit user\";s:7:\"package\";s:6:\"wpforo\";}i:299;a:5:{s:8:\"phraseid\";s:3:\"300\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"matches\";s:12:\"phrase_value\";s:7:\"matches\";s:7:\"package\";s:6:\"wpforo\";}i:300;a:5:{s:8:\"phraseid\";s:3:\"301\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"new password\";s:12:\"phrase_value\";s:12:\"new password\";s:7:\"package\";s:6:\"wpforo\";}i:301;a:5:{s:8:\"phraseid\";s:3:\"302\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"new password again\";s:12:\"phrase_value\";s:18:\"new password again\";s:7:\"package\";s:6:\"wpforo\";}i:302;a:5:{s:8:\"phraseid\";s:3:\"303\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"next\";s:12:\"phrase_value\";s:4:\"next\";s:7:\"package\";s:6:\"wpforo\";}i:303;a:5:{s:8:\"phraseid\";s:3:\"304\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"old password\";s:12:\"phrase_value\";s:12:\"old password\";s:7:\"package\";s:6:\"wpforo\";}i:304;a:5:{s:8:\"phraseid\";s:3:\"305\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"phrase_key\";s:12:\"phrase_value\";s:10:\"phrase_key\";s:7:\"package\";s:6:\"wpforo\";}i:305;a:5:{s:8:\"phraseid\";s:3:\"306\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"phrase_value\";s:12:\"phrase_value\";s:12:\"phrase_value\";s:7:\"package\";s:6:\"wpforo\";}i:306;a:5:{s:8:\"phraseid\";s:3:\"307\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"prev\";s:12:\"phrase_value\";s:4:\"prev\";s:7:\"package\";s:6:\"wpforo\";}i:307;a:5:{s:8:\"phraseid\";s:3:\"308\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"update\";s:12:\"phrase_value\";s:6:\"update\";s:7:\"package\";s:6:\"wpforo\";}i:308;a:5:{s:8:\"phraseid\";s:3:\"309\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"view\";s:12:\"phrase_value\";s:4:\"view\";s:7:\"package\";s:6:\"wpforo\";}i:309;a:5:{s:8:\"phraseid\";s:3:\"310\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"view all posts\";s:12:\"phrase_value\";s:14:\"view all posts\";s:7:\"package\";s:6:\"wpforo\";}i:310;a:5:{s:8:\"phraseid\";s:3:\"311\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"view all questions\";s:12:\"phrase_value\";s:18:\"view all questions\";s:7:\"package\";s:6:\"wpforo\";}i:311;a:5:{s:8:\"phraseid\";s:3:\"312\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"view all topics\";s:12:\"phrase_value\";s:15:\"view all topics\";s:7:\"package\";s:6:\"wpforo\";}i:312;a:5:{s:8:\"phraseid\";s:3:\"313\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"wpForo Navigation\";s:12:\"phrase_value\";s:17:\"wpForo Navigation\";s:7:\"package\";s:6:\"wpforo\";}i:313;a:5:{s:8:\"phraseid\";s:3:\"314\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}B\";s:12:\"phrase_value\";s:9:\"{number}B\";s:7:\"package\";s:6:\"wpforo\";}i:314;a:5:{s:8:\"phraseid\";s:3:\"315\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}K\";s:12:\"phrase_value\";s:9:\"{number}K\";s:7:\"package\";s:6:\"wpforo\";}i:315;a:5:{s:8:\"phraseid\";s:3:\"316\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}M\";s:12:\"phrase_value\";s:9:\"{number}M\";s:7:\"package\";s:6:\"wpforo\";}i:316;a:5:{s:8:\"phraseid\";s:3:\"317\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}T\";s:12:\"phrase_value\";s:9:\"{number}T\";s:7:\"package\";s:6:\"wpforo\";}i:317;a:5:{s:8:\"phraseid\";s:3:\"318\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"like\";s:12:\"phrase_value\";s:4:\"Like\";s:7:\"package\";s:6:\"wpforo\";}i:318;a:5:{s:8:\"phraseid\";s:3:\"319\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"unlike\";s:12:\"phrase_value\";s:6:\"Unlike\";s:7:\"package\";s:6:\"wpforo\";}i:319;a:5:{s:8:\"phraseid\";s:3:\"320\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"sticky\";s:12:\"phrase_value\";s:6:\"Sticky\";s:7:\"package\";s:6:\"wpforo\";}i:320;a:5:{s:8:\"phraseid\";s:3:\"321\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"unsticky\";s:12:\"phrase_value\";s:8:\"Unsticky\";s:7:\"package\";s:6:\"wpforo\";}i:321;a:5:{s:8:\"phraseid\";s:3:\"322\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"close\";s:12:\"phrase_value\";s:5:\"Close\";s:7:\"package\";s:6:\"wpforo\";}i:322;a:5:{s:8:\"phraseid\";s:3:\"323\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"open\";s:12:\"phrase_value\";s:4:\"Open\";s:7:\"package\";s:6:\"wpforo\";}i:323;a:5:{s:8:\"phraseid\";s:3:\"324\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Topic Icons\";s:12:\"phrase_value\";s:11:\"Topic Icons\";s:7:\"package\";s:6:\"wpforo\";}i:324;a:5:{s:8:\"phraseid\";s:3:\"325\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Replied\";s:12:\"phrase_value\";s:7:\"Replied\";s:7:\"package\";s:6:\"wpforo\";}i:325;a:5:{s:8:\"phraseid\";s:3:\"326\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Active\";s:12:\"phrase_value\";s:6:\"Active\";s:7:\"package\";s:6:\"wpforo\";}i:326;a:5:{s:8:\"phraseid\";s:3:\"327\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"Hot\";s:12:\"phrase_value\";s:3:\"Hot\";s:7:\"package\";s:6:\"wpforo\";}i:327;a:5:{s:8:\"phraseid\";s:3:\"328\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Solved\";s:12:\"phrase_value\";s:6:\"Solved\";s:7:\"package\";s:6:\"wpforo\";}i:328;a:5:{s:8:\"phraseid\";s:3:\"329\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Unsolved\";s:12:\"phrase_value\";s:8:\"Unsolved\";s:7:\"package\";s:6:\"wpforo\";}i:329;a:5:{s:8:\"phraseid\";s:3:\"330\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Closed\";s:12:\"phrase_value\";s:6:\"Closed\";s:7:\"package\";s:6:\"wpforo\";}i:330;a:5:{s:8:\"phraseid\";s:3:\"331\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Old password is wrong\";s:12:\"phrase_value\";s:21:\"Old password is wrong\";s:7:\"package\";s:6:\"wpforo\";}i:331;a:5:{s:8:\"phraseid\";s:3:\"332\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"New Passwords do not match\";s:12:\"phrase_value\";s:26:\"New Passwords do not match\";s:7:\"package\";s:6:\"wpforo\";}i:332;a:5:{s:8:\"phraseid\";s:3:\"333\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Forum Members List\";s:12:\"phrase_value\";s:18:\"Forum Members List\";s:7:\"package\";s:6:\"wpforo\";}i:333;a:5:{s:8:\"phraseid\";s:3:\"334\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"are you sure you want to delete?\";s:12:\"phrase_value\";s:32:\"are you sure you want to delete?\";s:7:\"package\";s:6:\"wpforo\";}i:334;a:5:{s:8:\"phraseid\";s:3:\"335\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Admin\";s:12:\"phrase_value\";s:5:\"Admin\";s:7:\"package\";s:6:\"wpforo\";}i:335;a:5:{s:8:\"phraseid\";s:3:\"336\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Moderator\";s:12:\"phrase_value\";s:9:\"Moderator\";s:7:\"package\";s:6:\"wpforo\";}i:336;a:5:{s:8:\"phraseid\";s:3:\"337\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Registered\";s:12:\"phrase_value\";s:10:\"Registered\";s:7:\"package\";s:6:\"wpforo\";}i:337;a:5:{s:8:\"phraseid\";s:3:\"338\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Customer\";s:12:\"phrase_value\";s:8:\"Customer\";s:7:\"package\";s:6:\"wpforo\";}i:338;a:5:{s:8:\"phraseid\";s:3:\"339\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Profile\";s:12:\"phrase_value\";s:7:\"Profile\";s:7:\"package\";s:6:\"wpforo\";}i:339;a:5:{s:8:\"phraseid\";s:3:\"340\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:60:\"Incorrect file format. Allowed formats: jpeg, jpg, png, gif.\";s:12:\"phrase_value\";s:60:\"Incorrect file format. Allowed formats: jpeg, jpg, png, gif.\";s:7:\"package\";s:6:\"wpforo\";}i:340;a:5:{s:8:\"phraseid\";s:3:\"341\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"User registration is disabled\";s:12:\"phrase_value\";s:29:\"User registration is disabled\";s:7:\"package\";s:6:\"wpforo\";}i:341;a:5:{s:8:\"phraseid\";s:3:\"342\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Attachment removed\";s:12:\"phrase_value\";s:18:\"Attachment removed\";s:7:\"package\";s:6:\"wpforo\";}i:342;a:5:{s:8:\"phraseid\";s:3:\"343\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Forum Posts\";s:12:\"phrase_value\";s:11:\"Forum Posts\";s:7:\"package\";s:6:\"wpforo\";}i:343;a:5:{s:8:\"phraseid\";s:3:\"344\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Blog Posts\";s:12:\"phrase_value\";s:10:\"Blog Posts\";s:7:\"package\";s:6:\"wpforo\";}i:344;a:5:{s:8:\"phraseid\";s:3:\"345\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Blog Comments\";s:12:\"phrase_value\";s:13:\"Blog Comments\";s:7:\"package\";s:6:\"wpforo\";}i:345;a:5:{s:8:\"phraseid\";s:3:\"346\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Welcome back %s!\";s:12:\"phrase_value\";s:16:\"Welcome back %s!\";s:7:\"package\";s:6:\"wpforo\";}i:346;a:5:{s:8:\"phraseid\";s:3:\"347\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Member Profile\";s:12:\"phrase_value\";s:14:\"Member Profile\";s:7:\"package\";s:6:\"wpforo\";}i:347;a:5:{s:8:\"phraseid\";s:3:\"348\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Member\";s:12:\"phrase_value\";s:6:\"Member\";s:7:\"package\";s:6:\"wpforo\";}i:348;a:5:{s:8:\"phraseid\";s:3:\"349\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"private\";s:12:\"phrase_value\";s:7:\"Private\";s:7:\"package\";s:6:\"wpforo\";}i:349;a:5:{s:8:\"phraseid\";s:3:\"350\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"public\";s:12:\"phrase_value\";s:6:\"Public\";s:7:\"package\";s:6:\"wpforo\";}i:350;a:5:{s:8:\"phraseid\";s:3:\"351\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Private Topic\";s:12:\"phrase_value\";s:13:\"Private Topic\";s:7:\"package\";s:6:\"wpforo\";}i:351;a:5:{s:8:\"phraseid\";s:3:\"352\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"Only Admins and Moderators can see your private topics.\";s:12:\"phrase_value\";s:55:\"Only Admins and Moderators can see your private topics.\";s:7:\"package\";s:6:\"wpforo\";}i:352;a:5:{s:8:\"phraseid\";s:3:\"353\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Forum ID is not detected\";s:12:\"phrase_value\";s:24:\"Forum ID is not detected\";s:7:\"package\";s:6:\"wpforo\";}i:353;a:5:{s:8:\"phraseid\";s:3:\"354\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"You are not permitted to subscribe here\";s:12:\"phrase_value\";s:39:\"You are not permitted to subscribe here\";s:7:\"package\";s:6:\"wpforo\";}i:354;a:5:{s:8:\"phraseid\";s:3:\"355\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Subscribe to this topic\";s:12:\"phrase_value\";s:23:\"Subscribe to this topic\";s:7:\"package\";s:6:\"wpforo\";}i:355;a:5:{s:8:\"phraseid\";s:3:\"356\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Awaiting moderation\";s:12:\"phrase_value\";s:19:\"Awaiting moderation\";s:7:\"package\";s:6:\"wpforo\";}i:356;a:5:{s:8:\"phraseid\";s:3:\"357\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Topic first post not found.\";s:12:\"phrase_value\";s:27:\"Topic first post not found.\";s:7:\"package\";s:6:\"wpforo\";}i:357;a:5:{s:8:\"phraseid\";s:3:\"358\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"Topic first post data not found.\";s:12:\"phrase_value\";s:32:\"Topic first post data not found.\";s:7:\"package\";s:6:\"wpforo\";}i:358;a:5:{s:8:\"phraseid\";s:3:\"359\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Done!\";s:12:\"phrase_value\";s:5:\"Done!\";s:7:\"package\";s:6:\"wpforo\";}i:359;a:5:{s:8:\"phraseid\";s:3:\"360\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"unapproved\";s:12:\"phrase_value\";s:10:\"unapproved\";s:7:\"package\";s:6:\"wpforo\";}i:360;a:5:{s:8:\"phraseid\";s:3:\"361\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:44:\"You are not allowed to attach this file type\";s:12:\"phrase_value\";s:44:\"You are not allowed to attach this file type\";s:7:\"package\";s:6:\"wpforo\";}i:361;a:5:{s:8:\"phraseid\";s:3:\"362\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Post is empty\";s:12:\"phrase_value\";s:13:\"Post is empty\";s:7:\"package\";s:6:\"wpforo\";}i:362;a:5:{s:8:\"phraseid\";s:3:\"363\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"removed link\";s:12:\"phrase_value\";s:12:\"removed link\";s:7:\"package\";s:6:\"wpforo\";}i:363;a:5:{s:8:\"phraseid\";s:3:\"364\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Submit\";s:12:\"phrase_value\";s:6:\"Submit\";s:7:\"package\";s:6:\"wpforo\";}i:364;a:5:{s:8:\"phraseid\";s:3:\"365\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Usergroup\";s:12:\"phrase_value\";s:9:\"Usergroup\";s:7:\"package\";s:6:\"wpforo\";}i:365;a:5:{s:8:\"phraseid\";s:3:\"366\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Rating Title\";s:12:\"phrase_value\";s:12:\"Rating Title\";s:7:\"package\";s:6:\"wpforo\";}i:366;a:5:{s:8:\"phraseid\";s:3:\"367\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"User Title\";s:12:\"phrase_value\";s:10:\"User Title\";s:7:\"package\";s:6:\"wpforo\";}i:367;a:5:{s:8:\"phraseid\";s:3:\"368\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"approved\";s:12:\"phrase_value\";s:8:\"Approved\";s:7:\"package\";s:6:\"wpforo\";}i:368;a:5:{s:8:\"phraseid\";s:3:\"369\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"approve\";s:12:\"phrase_value\";s:7:\"Approve\";s:7:\"package\";s:6:\"wpforo\";}i:369;a:5:{s:8:\"phraseid\";s:3:\"370\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"unapprove\";s:12:\"phrase_value\";s:9:\"unapprove\";s:7:\"package\";s:6:\"wpforo\";}i:370;a:5:{s:8:\"phraseid\";s:3:\"371\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"--- Choose ---\";s:12:\"phrase_value\";s:14:\"--- Choose ---\";s:7:\"package\";s:6:\"wpforo\";}i:371;a:5:{s:8:\"phraseid\";s:3:\"372\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"New\";s:12:\"phrase_value\";s:3:\"New\";s:7:\"package\";s:6:\"wpforo\";}i:372;a:5:{s:8:\"phraseid\";s:3:\"373\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Required field\";s:12:\"phrase_value\";s:14:\"Required field\";s:7:\"package\";s:6:\"wpforo\";}i:373;a:5:{s:8:\"phraseid\";s:3:\"374\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Add Reply\";s:12:\"phrase_value\";s:9:\"Add Reply\";s:7:\"package\";s:6:\"wpforo\";}i:374;a:5:{s:8:\"phraseid\";s:3:\"375\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Forums RSS Feed\";s:12:\"phrase_value\";s:15:\"Forums RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:375;a:5:{s:8:\"phraseid\";s:3:\"376\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Topics RSS Feed\";s:12:\"phrase_value\";s:15:\"Topics RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:376;a:5:{s:8:\"phraseid\";s:3:\"377\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Find a member\";s:12:\"phrase_value\";s:13:\"Find a member\";s:7:\"package\";s:6:\"wpforo\";}i:377;a:5:{s:8:\"phraseid\";s:3:\"378\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Display Name or Nicename\";s:12:\"phrase_value\";s:24:\"Display Name or Nicename\";s:7:\"package\";s:6:\"wpforo\";}i:378;a:5:{s:8:\"phraseid\";s:3:\"379\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Reset Search\";s:12:\"phrase_value\";s:12:\"Reset Search\";s:7:\"package\";s:6:\"wpforo\";}i:379;a:5:{s:8:\"phraseid\";s:3:\"380\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Reset Result\";s:12:\"phrase_value\";s:12:\"Reset Result\";s:7:\"package\";s:6:\"wpforo\";}i:380;a:5:{s:8:\"phraseid\";s:3:\"381\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Recently Added\";s:12:\"phrase_value\";s:12:\"Recent Posts\";s:7:\"package\";s:6:\"wpforo\";}i:381;a:5:{s:8:\"phraseid\";s:3:\"382\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Recent Posts\";s:12:\"phrase_value\";s:12:\"Recent Posts\";s:7:\"package\";s:6:\"wpforo\";}i:382;a:5:{s:8:\"phraseid\";s:3:\"383\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"No posts were found here\";s:12:\"phrase_value\";s:24:\"No posts were found here\";s:7:\"package\";s:6:\"wpforo\";}i:383;a:5:{s:8:\"phraseid\";s:3:\"384\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"forum link\";s:12:\"phrase_value\";s:10:\"forum link\";s:7:\"package\";s:6:\"wpforo\";}i:384;a:5:{s:8:\"phraseid\";s:3:\"385\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"in forum\";s:12:\"phrase_value\";s:8:\"in forum\";s:7:\"package\";s:6:\"wpforo\";}i:385;a:5:{s:8:\"phraseid\";s:3:\"386\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:91:\"After registration you will receive an email confirmation with a link to set a new password\";s:12:\"phrase_value\";s:91:\"After registration you will receive an email confirmation with a link to set a new password\";s:7:\"package\";s:6:\"wpforo\";}i:386;a:5:{s:8:\"phraseid\";s:3:\"387\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:228:\"You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.\";s:12:\"phrase_value\";s:228:\"You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.\";s:7:\"package\";s:6:\"wpforo\";}i:387;a:5:{s:8:\"phraseid\";s:3:\"388\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"View entire topic\";s:12:\"phrase_value\";s:17:\"View entire topic\";s:7:\"package\";s:6:\"wpforo\";}i:388;a:5:{s:8:\"phraseid\";s:3:\"389\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Author Name\";s:12:\"phrase_value\";s:11:\"Author Name\";s:7:\"package\";s:6:\"wpforo\";}i:389;a:5:{s:8:\"phraseid\";s:3:\"390\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Your name\";s:12:\"phrase_value\";s:9:\"Your name\";s:7:\"package\";s:6:\"wpforo\";}i:390;a:5:{s:8:\"phraseid\";s:3:\"391\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Author Email\";s:12:\"phrase_value\";s:12:\"Author Email\";s:7:\"package\";s:6:\"wpforo\";}i:391;a:5:{s:8:\"phraseid\";s:3:\"392\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Your email\";s:12:\"phrase_value\";s:10:\"Your email\";s:7:\"package\";s:6:\"wpforo\";}i:392;a:5:{s:8:\"phraseid\";s:3:\"393\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:53:\"Your topic successfully added and awaiting moderation\";s:12:\"phrase_value\";s:53:\"Your topic successfully added and awaiting moderation\";s:7:\"package\";s:6:\"wpforo\";}i:393;a:5:{s:8:\"phraseid\";s:3:\"394\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"You are not allowed to edit this post\";s:12:\"phrase_value\";s:37:\"You are not allowed to edit this post\";s:7:\"package\";s:6:\"wpforo\";}i:394;a:5:{s:8:\"phraseid\";s:3:\"395\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"Google reCAPTCHA verification failed\";s:12:\"phrase_value\";s:36:\"Google reCAPTCHA verification failed\";s:7:\"package\";s:6:\"wpforo\";}i:395;a:5:{s:8:\"phraseid\";s:3:\"396\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:44:\"ERROR: Can\'t connect to Google reCAPTCHA API\";s:12:\"phrase_value\";s:44:\"ERROR: Can\'t connect to Google reCAPTCHA API\";s:7:\"package\";s:6:\"wpforo\";}i:396;a:5:{s:8:\"phraseid\";s:3:\"397\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Welcome!\";s:12:\"phrase_value\";s:8:\"Welcome!\";s:7:\"package\";s:6:\"wpforo\";}i:397;a:5:{s:8:\"phraseid\";s:3:\"398\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Join us today!\";s:12:\"phrase_value\";s:14:\"Join us today!\";s:7:\"package\";s:6:\"wpforo\";}i:398;a:5:{s:8:\"phraseid\";s:3:\"399\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:98:\"Enter your email address or username and we\'ll send you a link you can use to pick a new password.\";s:12:\"phrase_value\";s:98:\"Enter your email address or username and we\'ll send you a link you can use to pick a new password.\";s:7:\"package\";s:6:\"wpforo\";}i:399;a:5:{s:8:\"phraseid\";s:3:\"400\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"Please Insert Your Email or Username\";s:12:\"phrase_value\";s:36:\"Please Insert Your Email or Username\";s:7:\"package\";s:6:\"wpforo\";}i:400;a:5:{s:8:\"phraseid\";s:3:\"401\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Reset Password\";s:12:\"phrase_value\";s:14:\"Reset Password\";s:7:\"package\";s:6:\"wpforo\";}i:401;a:5:{s:8:\"phraseid\";s:3:\"402\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Forgot Your Password?\";s:12:\"phrase_value\";s:21:\"Forgot Your Password?\";s:7:\"package\";s:6:\"wpforo\";}i:402;a:5:{s:8:\"phraseid\";s:3:\"403\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"%s created a new topic %s\";s:12:\"phrase_value\";s:25:\"%s created a new topic %s\";s:7:\"package\";s:6:\"wpforo\";}i:403;a:5:{s:8:\"phraseid\";s:3:\"404\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"%s replied to the topic %s\";s:12:\"phrase_value\";s:26:\"%s replied to the topic %s\";s:7:\"package\";s:6:\"wpforo\";}i:404;a:5:{s:8:\"phraseid\";s:3:\"405\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"%s liked forum post %s\";s:12:\"phrase_value\";s:22:\"%s liked forum post %s\";s:7:\"package\";s:6:\"wpforo\";}i:405;a:5:{s:8:\"phraseid\";s:3:\"406\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Read more\";s:12:\"phrase_value\";s:9:\"Read more\";s:7:\"package\";s:6:\"wpforo\";}i:406;a:5:{s:8:\"phraseid\";s:3:\"407\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Forum topic\";s:12:\"phrase_value\";s:11:\"Forum topic\";s:7:\"package\";s:6:\"wpforo\";}i:407;a:5:{s:8:\"phraseid\";s:3:\"408\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Forum post\";s:12:\"phrase_value\";s:10:\"Forum post\";s:7:\"package\";s:6:\"wpforo\";}i:408;a:5:{s:8:\"phraseid\";s:3:\"409\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Forum post like\";s:12:\"phrase_value\";s:15:\"Forum post like\";s:7:\"package\";s:6:\"wpforo\";}i:409;a:5:{s:8:\"phraseid\";s:3:\"410\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Tools\";s:12:\"phrase_value\";s:5:\"Tools\";s:7:\"package\";s:6:\"wpforo\";}i:410;a:5:{s:8:\"phraseid\";s:3:\"411\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Target Topic URL\";s:12:\"phrase_value\";s:16:\"Target Topic URL\";s:7:\"package\";s:6:\"wpforo\";}i:411;a:5:{s:8:\"phraseid\";s:3:\"412\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Target Topic not found\";s:12:\"phrase_value\";s:22:\"Target Topic not found\";s:7:\"package\";s:6:\"wpforo\";}i:412;a:5:{s:8:\"phraseid\";s:3:\"413\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Merge Topics\";s:12:\"phrase_value\";s:12:\"Merge Topics\";s:7:\"package\";s:6:\"wpforo\";}i:413;a:5:{s:8:\"phraseid\";s:3:\"414\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Split Topic\";s:12:\"phrase_value\";s:11:\"Split Topic\";s:7:\"package\";s:6:\"wpforo\";}i:414;a:5:{s:8:\"phraseid\";s:3:\"415\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:87:\"Please copy the target topic URL from browser address bar and paste in the field below.\";s:12:\"phrase_value\";s:87:\"Please copy the target topic URL from browser address bar and paste in the field below.\";s:7:\"package\";s:6:\"wpforo\";}i:415;a:5:{s:8:\"phraseid\";s:3:\"416\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:238:\"All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.\";s:12:\"phrase_value\";s:238:\"All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.\";s:7:\"package\";s:6:\"wpforo\";}i:416;a:5:{s:8:\"phraseid\";s:3:\"417\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:86:\"Update post dates (current date) to allow append posts to the end of the target topic.\";s:12:\"phrase_value\";s:86:\"Update post dates (current date) to allow append posts to the end of the target topic.\";s:7:\"package\";s:6:\"wpforo\";}i:417;a:5:{s:8:\"phraseid\";s:3:\"418\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:43:\"Update post titles with target topic title.\";s:12:\"phrase_value\";s:43:\"Update post titles with target topic title.\";s:7:\"package\";s:6:\"wpforo\";}i:418;a:5:{s:8:\"phraseid\";s:3:\"419\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:82:\"Topics once merged cannot be unmerged. This topic URL will no longer be available.\";s:12:\"phrase_value\";s:82:\"Topics once merged cannot be unmerged. This topic URL will no longer be available.\";s:7:\"package\";s:6:\"wpforo\";}i:419;a:5:{s:8:\"phraseid\";s:3:\"420\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Create New Topic\";s:12:\"phrase_value\";s:16:\"Create New Topic\";s:7:\"package\";s:6:\"wpforo\";}i:420;a:5:{s:8:\"phraseid\";s:3:\"421\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:90:\"Create new topic with split posts. The first post of new topic becomes the earliest reply.\";s:12:\"phrase_value\";s:90:\"Create new topic with split posts. The first post of new topic becomes the earliest reply.\";s:7:\"package\";s:6:\"wpforo\";}i:421;a:5:{s:8:\"phraseid\";s:3:\"422\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"New Topic Title\";s:12:\"phrase_value\";s:15:\"New Topic Title\";s:7:\"package\";s:6:\"wpforo\";}i:422;a:5:{s:8:\"phraseid\";s:3:\"423\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"New Topic Forum\";s:12:\"phrase_value\";s:15:\"New Topic Forum\";s:7:\"package\";s:6:\"wpforo\";}i:423;a:5:{s:8:\"phraseid\";s:3:\"424\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Select Posts to Split\";s:12:\"phrase_value\";s:21:\"Select Posts to Split\";s:7:\"package\";s:6:\"wpforo\";}i:424;a:5:{s:8:\"phraseid\";s:3:\"425\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:91:\"Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.\";s:12:\"phrase_value\";s:91:\"Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.\";s:7:\"package\";s:6:\"wpforo\";}i:425;a:5:{s:8:\"phraseid\";s:3:\"426\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Merge\";s:12:\"phrase_value\";s:5:\"Merge\";s:7:\"package\";s:6:\"wpforo\";}i:426;a:5:{s:8:\"phraseid\";s:3:\"427\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Split\";s:12:\"phrase_value\";s:5:\"Split\";s:7:\"package\";s:6:\"wpforo\";}i:427;a:5:{s:8:\"phraseid\";s:3:\"428\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Move Reply\";s:12:\"phrase_value\";s:10:\"Move Reply\";s:7:\"package\";s:6:\"wpforo\";}i:428;a:5:{s:8:\"phraseid\";s:3:\"429\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:124:\"This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.\";s:12:\"phrase_value\";s:124:\"This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.\";s:7:\"package\";s:6:\"wpforo\";}i:429;a:5:{s:8:\"phraseid\";s:3:\"430\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"The time to edit this topic is expired\";s:12:\"phrase_value\";s:38:\"The time to edit this topic is expired\";s:7:\"package\";s:6:\"wpforo\";}i:430;a:5:{s:8:\"phraseid\";s:3:\"431\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"The time to delete this topic is expired.\";s:12:\"phrase_value\";s:93:\"The time to delete this topic is expired. Please contact to forum administrator to delete it.\";s:7:\"package\";s:6:\"wpforo\";}i:431;a:5:{s:8:\"phraseid\";s:3:\"432\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"The time to edit this post is expired.\";s:12:\"phrase_value\";s:38:\"The time to edit this post is expired.\";s:7:\"package\";s:6:\"wpforo\";}i:432;a:5:{s:8:\"phraseid\";s:3:\"433\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"The time to delete this post is expired.\";s:12:\"phrase_value\";s:40:\"The time to delete this post is expired.\";s:7:\"package\";s:6:\"wpforo\";}i:433;a:5:{s:8:\"phraseid\";s:3:\"434\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"Please contact to forum administrator to delete it.\";s:12:\"phrase_value\";s:51:\"Please contact to forum administrator to delete it.\";s:7:\"package\";s:6:\"wpforo\";}i:434;a:5:{s:8:\"phraseid\";s:3:\"435\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Please contact to forum administrator to edit it.\";s:12:\"phrase_value\";s:49:\"Please contact to forum administrator to edit it.\";s:7:\"package\";s:6:\"wpforo\";}i:435;a:5:{s:8:\"phraseid\";s:3:\"436\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"Read more about Facebook public_profile properties.\";s:12:\"phrase_value\";s:51:\"Read more about Facebook public_profile properties.\";s:7:\"package\";s:6:\"wpforo\";}i:436;a:5:{s:8:\"phraseid\";s:3:\"437\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"forum privacy policy\";s:12:\"phrase_value\";s:20:\"forum privacy policy\";s:7:\"package\";s:6:\"wpforo\";}i:437;a:5:{s:8:\"phraseid\";s:3:\"438\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"I have read and agree to the %s.\";s:12:\"phrase_value\";s:32:\"I have read and agree to the %s.\";s:7:\"package\";s:6:\"wpforo\";}i:438;a:5:{s:8:\"phraseid\";s:3:\"439\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"Click to open forum privacy policy below\";s:12:\"phrase_value\";s:40:\"Click to open forum privacy policy below\";s:7:\"package\";s:6:\"wpforo\";}i:439;a:5:{s:8:\"phraseid\";s:3:\"440\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"I agree\";s:12:\"phrase_value\";s:7:\"I agree\";s:7:\"package\";s:6:\"wpforo\";}i:440;a:5:{s:8:\"phraseid\";s:3:\"441\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"I do not agree. Take me away from here.\";s:12:\"phrase_value\";s:39:\"I do not agree. Take me away from here.\";s:7:\"package\";s:6:\"wpforo\";}i:441;a:5:{s:8:\"phraseid\";s:3:\"442\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"forum rules\";s:12:\"phrase_value\";s:11:\"forum rules\";s:7:\"package\";s:6:\"wpforo\";}i:442;a:5:{s:8:\"phraseid\";s:3:\"443\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"I have read and agree to abide by the %s.\";s:12:\"phrase_value\";s:41:\"I have read and agree to abide by the %s.\";s:7:\"package\";s:6:\"wpforo\";}i:443;a:5:{s:8:\"phraseid\";s:3:\"444\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Click to open forum rules below\";s:12:\"phrase_value\";s:31:\"Click to open forum rules below\";s:7:\"package\";s:6:\"wpforo\";}i:444;a:5:{s:8:\"phraseid\";s:3:\"445\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"I agree to these rules\";s:12:\"phrase_value\";s:22:\"I agree to these rules\";s:7:\"package\";s:6:\"wpforo\";}i:445;a:5:{s:8:\"phraseid\";s:3:\"446\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"I do not agree to these rules. Take me away from here.\";s:12:\"phrase_value\";s:54:\"I do not agree to these rules. Take me away from here.\";s:7:\"package\";s:6:\"wpforo\";}i:446;a:5:{s:8:\"phraseid\";s:3:\"447\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"the website\";s:12:\"phrase_value\";s:11:\"the website\";s:7:\"package\";s:6:\"wpforo\";}i:447;a:5:{s:8:\"phraseid\";s:3:\"448\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"I have read and agree to the\";s:12:\"phrase_value\";s:28:\"I have read and agree to the\";s:7:\"package\";s:6:\"wpforo\";}i:448;a:5:{s:8:\"phraseid\";s:3:\"449\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:167:\"I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.\";s:12:\"phrase_value\";s:167:\"I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.\";s:7:\"package\";s:6:\"wpforo\";}i:449;a:5:{s:8:\"phraseid\";s:3:\"450\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Terms\";s:12:\"phrase_value\";s:5:\"Terms\";s:7:\"package\";s:6:\"wpforo\";}i:450;a:5:{s:8:\"phraseid\";s:3:\"451\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Privacy Policy\";s:12:\"phrase_value\";s:14:\"Privacy Policy\";s:7:\"package\";s:6:\"wpforo\";}i:451;a:5:{s:8:\"phraseid\";s:3:\"452\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"and\";s:12:\"phrase_value\";s:3:\"and\";s:7:\"package\";s:6:\"wpforo\";}i:452;a:5:{s:8:\"phraseid\";s:3:\"453\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:71:\"I agree to receive an email confirmation with a link to set a password.\";s:12:\"phrase_value\";s:71:\"I agree to receive an email confirmation with a link to set a password.\";s:7:\"package\";s:6:\"wpforo\";}i:453;a:5:{s:8:\"phraseid\";s:3:\"454\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Contact Us\";s:12:\"phrase_value\";s:10:\"Contact Us\";s:7:\"package\";s:6:\"wpforo\";}i:454;a:5:{s:8:\"phraseid\";s:3:\"455\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Contact the forum administrator\";s:12:\"phrase_value\";s:31:\"Contact the forum administrator\";s:7:\"package\";s:6:\"wpforo\";}i:455;a:5:{s:8:\"phraseid\";s:3:\"456\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Share:\";s:12:\"phrase_value\";s:6:\"Share:\";s:7:\"package\";s:6:\"wpforo\";}i:456;a:5:{s:8:\"phraseid\";s:3:\"457\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Share\";s:12:\"phrase_value\";s:5:\"Share\";s:7:\"package\";s:6:\"wpforo\";}i:457;a:5:{s:8:\"phraseid\";s:3:\"458\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Share this post\";s:12:\"phrase_value\";s:15:\"Share this post\";s:7:\"package\";s:6:\"wpforo\";}i:458;a:5:{s:8:\"phraseid\";s:3:\"459\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:332:\"When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.\";s:12:\"phrase_value\";s:332:\"When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.\";s:7:\"package\";s:6:\"wpforo\";}i:459;a:5:{s:8:\"phraseid\";s:3:\"460\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:105:\"I allow to create an account based on my Facebook public profile information and send confirmation email.\";s:12:\"phrase_value\";s:105:\"I allow to create an account based on my Facebook public profile information and send confirmation email.\";s:7:\"package\";s:6:\"wpforo\";}i:460;a:5:{s:8:\"phraseid\";s:3:\"461\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Facebook Login Information\";s:12:\"phrase_value\";s:26:\"Facebook Login Information\";s:7:\"package\";s:6:\"wpforo\";}i:461;a:5:{s:8:\"phraseid\";s:3:\"462\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Share to Facebook\";s:12:\"phrase_value\";s:17:\"Share to Facebook\";s:7:\"package\";s:6:\"wpforo\";}i:462;a:5:{s:8:\"phraseid\";s:3:\"463\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Tweet this post\";s:12:\"phrase_value\";s:15:\"Tweet this post\";s:7:\"package\";s:6:\"wpforo\";}i:463;a:5:{s:8:\"phraseid\";s:3:\"464\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Tweet\";s:12:\"phrase_value\";s:5:\"Tweet\";s:7:\"package\";s:6:\"wpforo\";}i:464;a:5:{s:8:\"phraseid\";s:3:\"465\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Share to Google+\";s:12:\"phrase_value\";s:16:\"Share to Google+\";s:7:\"package\";s:6:\"wpforo\";}i:465;a:5:{s:8:\"phraseid\";s:3:\"466\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Share to VK\";s:12:\"phrase_value\";s:11:\"Share to VK\";s:7:\"package\";s:6:\"wpforo\";}i:466;a:5:{s:8:\"phraseid\";s:3:\"467\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Share to OK\";s:12:\"phrase_value\";s:11:\"Share to OK\";s:7:\"package\";s:6:\"wpforo\";}i:467;a:5:{s:8:\"phraseid\";s:3:\"468\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Update Subscriptions\";s:12:\"phrase_value\";s:20:\"Update Subscriptions\";s:7:\"package\";s:6:\"wpforo\";}i:468;a:5:{s:8:\"phraseid\";s:3:\"469\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"Subscribe to all new topics and posts\";s:12:\"phrase_value\";s:37:\"Subscribe to all new topics and posts\";s:7:\"package\";s:6:\"wpforo\";}i:469;a:5:{s:8:\"phraseid\";s:3:\"470\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Subscribe to all new topics\";s:12:\"phrase_value\";s:27:\"Subscribe to all new topics\";s:7:\"package\";s:6:\"wpforo\";}i:470;a:5:{s:8:\"phraseid\";s:3:\"471\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Subscription Manager\";s:12:\"phrase_value\";s:20:\"Subscription Manager\";s:7:\"package\";s:6:\"wpforo\";}i:471;a:5:{s:8:\"phraseid\";s:3:\"472\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"topics and posts\";s:12:\"phrase_value\";s:16:\"topics and posts\";s:7:\"package\";s:6:\"wpforo\";}i:472;a:5:{s:8:\"phraseid\";s:3:\"473\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"No data submitted\";s:12:\"phrase_value\";s:17:\"No data submitted\";s:7:\"package\";s:6:\"wpforo\";}i:473;a:5:{s:8:\"phraseid\";s:3:\"474\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"User profile fields not found\";s:12:\"phrase_value\";s:29:\"User profile fields not found\";s:7:\"package\";s:6:\"wpforo\";}i:474;a:5:{s:8:\"phraseid\";s:3:\"475\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"field is required\";s:12:\"phrase_value\";s:17:\"field is required\";s:7:\"package\";s:6:\"wpforo\";}i:475;a:5:{s:8:\"phraseid\";s:3:\"476\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"field value must be at least %d\";s:12:\"phrase_value\";s:31:\"field value must be at least %d\";s:7:\"package\";s:6:\"wpforo\";}i:476;a:5:{s:8:\"phraseid\";s:3:\"477\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"field value cannot be greater than %d\";s:12:\"phrase_value\";s:37:\"field value cannot be greater than %d\";s:7:\"package\";s:6:\"wpforo\";}i:477;a:5:{s:8:\"phraseid\";s:3:\"478\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:43:\"field length must be at least %d characters\";s:12:\"phrase_value\";s:43:\"field length must be at least %d characters\";s:7:\"package\";s:6:\"wpforo\";}i:478;a:5:{s:8:\"phraseid\";s:3:\"479\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"field length cannot be greater than %d characters\";s:12:\"phrase_value\";s:50:\"field length can not be greater than %d characters\";s:7:\"package\";s:6:\"wpforo\";}i:479;a:5:{s:8:\"phraseid\";s:3:\"480\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"field value is not a valid URL\";s:12:\"phrase_value\";s:30:\"field value is not a valid URL\";s:7:\"package\";s:6:\"wpforo\";}i:480;a:5:{s:8:\"phraseid\";s:3:\"481\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"file type is not detected\";s:12:\"phrase_value\";s:25:\"file type is not detected\";s:7:\"package\";s:6:\"wpforo\";}i:481;a:5:{s:8:\"phraseid\";s:3:\"482\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"file type %s is not allowed\";s:12:\"phrase_value\";s:27:\"file type %s is not allowed\";s:7:\"package\";s:6:\"wpforo\";}i:482;a:5:{s:8:\"phraseid\";s:3:\"483\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"file is too large\";s:12:\"phrase_value\";s:17:\"file is too large\";s:7:\"package\";s:6:\"wpforo\";}i:483;a:5:{s:8:\"phraseid\";s:3:\"484\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Success! Please check your mail for confirmation.\";s:12:\"phrase_value\";s:49:\"Success! Please check your mail for confirmation.\";s:7:\"package\";s:6:\"wpforo\";}i:484;a:5:{s:8:\"phraseid\";s:3:\"485\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:64:\"Username length must be between %d characters and %d characters.\";s:12:\"phrase_value\";s:64:\"Username length must be between %d characters and %d characters.\";s:7:\"package\";s:6:\"wpforo\";}i:485;a:5:{s:8:\"phraseid\";s:3:\"486\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"User registration is disabled.\";s:12:\"phrase_value\";s:30:\"User registration is disabled.\";s:7:\"package\";s:6:\"wpforo\";}i:486;a:5:{s:8:\"phraseid\";s:3:\"487\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"Avatar image is too big maximum allowed size is 2MB\";s:12:\"phrase_value\";s:51:\"Avatar image is too big maximum allowed size is 2MB\";s:7:\"package\";s:6:\"wpforo\";}i:487;a:5:{s:8:\"phraseid\";s:3:\"488\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:57:\"One of the selected Usergroups cannot be set as Secondary\";s:12:\"phrase_value\";s:57:\"One of the selected Usergroups cannot be set as Secondary\";s:7:\"package\";s:6:\"wpforo\";}i:488;a:5:{s:8:\"phraseid\";s:3:\"489\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"The selected Usergroup is not found in allowed list\";s:12:\"phrase_value\";s:51:\"The selected Usergroup is not found in allowed list\";s:7:\"package\";s:6:\"wpforo\";}i:489;a:5:{s:8:\"phraseid\";s:3:\"490\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"The selected Usergroup cannot be set\";s:12:\"phrase_value\";s:36:\"The selected Usergroup cannot be set\";s:7:\"package\";s:6:\"wpforo\";}i:490;a:5:{s:8:\"phraseid\";s:3:\"491\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:48:\"Admin and Moderator Usergroups are not permitted\";s:12:\"phrase_value\";s:48:\"Admin and Moderator Usergroups are not permitted\";s:7:\"package\";s:6:\"wpforo\";}i:491;a:5:{s:8:\"phraseid\";s:3:\"492\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:46:\"You have no permission to edit Usergroup field\";s:12:\"phrase_value\";s:46:\"You have no permission to edit Usergroup field\";s:7:\"package\";s:6:\"wpforo\";}i:492;a:5:{s:8:\"phraseid\";s:3:\"493\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"This nickname is already in use. Please insert another.\";s:12:\"phrase_value\";s:55:\"This nickname is already in use. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:493;a:5:{s:8:\"phraseid\";s:3:\"494\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Nickname validation failed\";s:12:\"phrase_value\";s:26:\"Nickname validation failed\";s:7:\"package\";s:6:\"wpforo\";}i:494;a:5:{s:8:\"phraseid\";s:3:\"495\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:59:\"Numerical nicknames are not allowed. Please insert another.\";s:12:\"phrase_value\";s:59:\"Numerical nicknames are not allowed. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:495;a:5:{s:8:\"phraseid\";s:3:\"496\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Maximum allowed file size is %s MB\";s:12:\"phrase_value\";s:34:\"Maximum allowed file size is %s MB\";s:7:\"package\";s:6:\"wpforo\";}i:496;a:5:{s:8:\"phraseid\";s:3:\"497\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"This email address is already registered. Please insert another\";s:12:\"phrase_value\";s:63:\"This email address is already registered. Please insert another\";s:7:\"package\";s:6:\"wpforo\";}i:497;a:5:{s:8:\"phraseid\";s:3:\"498\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Allowed file types: %s\";s:12:\"phrase_value\";s:22:\"Allowed file types: %s\";s:7:\"package\";s:6:\"wpforo\";}i:498;a:5:{s:8:\"phraseid\";s:3:\"499\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Form name not found\";s:12:\"phrase_value\";s:19:\"Form name not found\";s:7:\"package\";s:6:\"wpforo\";}i:499;a:5:{s:8:\"phraseid\";s:3:\"500\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Form template not found\";s:12:\"phrase_value\";s:23:\"Form template not found\";s:7:\"package\";s:6:\"wpforo\";}i:500;a:5:{s:8:\"phraseid\";s:3:\"501\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Profile updated successfully\";s:12:\"phrase_value\";s:28:\"Profile updated successfully\";s:7:\"package\";s:6:\"wpforo\";}i:501;a:5:{s:8:\"phraseid\";s:3:\"502\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"User data update failed\";s:12:\"phrase_value\";s:23:\"User data update failed\";s:7:\"package\";s:6:\"wpforo\";}i:502;a:5:{s:8:\"phraseid\";s:3:\"503\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"User profile update failed\";s:12:\"phrase_value\";s:26:\"User profile update failed\";s:7:\"package\";s:6:\"wpforo\";}i:503;a:5:{s:8:\"phraseid\";s:3:\"504\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"User custom field update failed\";s:12:\"phrase_value\";s:31:\"User custom field update failed\";s:7:\"package\";s:6:\"wpforo\";}i:504;a:5:{s:8:\"phraseid\";s:3:\"505\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Sorry, there was an error uploading attached file\";s:12:\"phrase_value\";s:49:\"Sorry, there was an error uploading attached file\";s:7:\"package\";s:6:\"wpforo\";}i:505;a:5:{s:8:\"phraseid\";s:3:\"506\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Edit Topic\";s:12:\"phrase_value\";s:10:\"Edit Topic\";s:7:\"package\";s:6:\"wpforo\";}i:506;a:5:{s:8:\"phraseid\";s:3:\"507\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"This topic was modified %s by %s\";s:12:\"phrase_value\";s:32:\"This topic was modified %s by %s\";s:7:\"package\";s:6:\"wpforo\";}i:507;a:5:{s:8:\"phraseid\";s:3:\"508\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Edit Post\";s:12:\"phrase_value\";s:9:\"Edit Post\";s:7:\"package\";s:6:\"wpforo\";}i:508;a:5:{s:8:\"phraseid\";s:3:\"509\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"This post was modified %s by %s\";s:12:\"phrase_value\";s:31:\"This post was modified %s by %s\";s:7:\"package\";s:6:\"wpforo\";}i:509;a:5:{s:8:\"phraseid\";s:3:\"510\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Topics Started\";s:12:\"phrase_value\";s:14:\"Topics Started\";s:7:\"package\";s:6:\"wpforo\";}i:510;a:5:{s:8:\"phraseid\";s:3:\"511\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Replies Created\";s:12:\"phrase_value\";s:15:\"Replies Created\";s:7:\"package\";s:6:\"wpforo\";}i:511;a:5:{s:8:\"phraseid\";s:3:\"512\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Liked Posts\";s:12:\"phrase_value\";s:11:\"Liked Posts\";s:7:\"package\";s:6:\"wpforo\";}i:512;a:5:{s:8:\"phraseid\";s:3:\"513\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Topic link\";s:12:\"phrase_value\";s:10:\"Topic link\";s:7:\"package\";s:6:\"wpforo\";}i:513;a:5:{s:8:\"phraseid\";s:3:\"514\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Forum Topics Started\";s:12:\"phrase_value\";s:20:\"Forum Topics Started\";s:7:\"package\";s:6:\"wpforo\";}i:514;a:5:{s:8:\"phraseid\";s:3:\"515\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Forum Replies Created\";s:12:\"phrase_value\";s:21:\"Forum Replies Created\";s:7:\"package\";s:6:\"wpforo\";}i:515;a:5:{s:8:\"phraseid\";s:3:\"516\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Liked Forum Posts\";s:12:\"phrase_value\";s:17:\"Liked Forum Posts\";s:7:\"package\";s:6:\"wpforo\";}i:516;a:5:{s:8:\"phraseid\";s:3:\"517\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Forum Subscriptions\";s:12:\"phrase_value\";s:19:\"Forum Subscriptions\";s:7:\"package\";s:6:\"wpforo\";}i:517;a:5:{s:8:\"phraseid\";s:3:\"518\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"Start typing tags here (maximum %d tags are allowed)...\";s:12:\"phrase_value\";s:55:\"Start typing tags here (maximum %d tags are allowed)...\";s:7:\"package\";s:6:\"wpforo\";}i:518;a:5:{s:8:\"phraseid\";s:3:\"519\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Topic Tags\";s:12:\"phrase_value\";s:10:\"Topic Tags\";s:7:\"package\";s:6:\"wpforo\";}i:519;a:5:{s:8:\"phraseid\";s:3:\"520\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Separate tags using a comma\";s:12:\"phrase_value\";s:27:\"Separate tags using a comma\";s:7:\"package\";s:6:\"wpforo\";}i:520;a:5:{s:8:\"phraseid\";s:3:\"521\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Tags\";s:12:\"phrase_value\";s:4:\"Tags\";s:7:\"package\";s:6:\"wpforo\";}i:521;a:5:{s:8:\"phraseid\";s:3:\"522\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Find Topics by Tags\";s:12:\"phrase_value\";s:19:\"Find Topics by Tags\";s:7:\"package\";s:6:\"wpforo\";}i:522;a:5:{s:8:\"phraseid\";s:3:\"523\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Related Topics\";s:12:\"phrase_value\";s:14:\"Related Topics\";s:7:\"package\";s:6:\"wpforo\";}i:523;a:5:{s:8:\"phraseid\";s:3:\"524\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Next Topic\";s:12:\"phrase_value\";s:10:\"Next Topic\";s:7:\"package\";s:6:\"wpforo\";}i:524;a:5:{s:8:\"phraseid\";s:3:\"525\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Previous Topic\";s:12:\"phrase_value\";s:14:\"Previous Topic\";s:7:\"package\";s:6:\"wpforo\";}i:525;a:5:{s:8:\"phraseid\";s:3:\"526\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"All forum topics\";s:12:\"phrase_value\";s:16:\"All forum topics\";s:7:\"package\";s:6:\"wpforo\";}i:526;a:5:{s:8:\"phraseid\";s:3:\"527\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"No tags found\";s:12:\"phrase_value\";s:13:\"No tags found\";s:7:\"package\";s:6:\"wpforo\";}i:527;a:5:{s:8:\"phraseid\";s:3:\"528\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"Forum contains no unread posts\";s:12:\"phrase_value\";s:30:\"Forum contains no unread posts\";s:7:\"package\";s:6:\"wpforo\";}i:528;a:5:{s:8:\"phraseid\";s:3:\"529\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Forum contains unread posts\";s:12:\"phrase_value\";s:27:\"Forum contains unread posts\";s:7:\"package\";s:6:\"wpforo\";}i:529;a:5:{s:8:\"phraseid\";s:3:\"530\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Mark all read\";s:12:\"phrase_value\";s:13:\"Mark all read\";s:7:\"package\";s:6:\"wpforo\";}i:530;a:5:{s:8:\"phraseid\";s:3:\"531\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Not Replied\";s:12:\"phrase_value\";s:11:\"Not Replied\";s:7:\"package\";s:6:\"wpforo\";}i:531;a:5:{s:8:\"phraseid\";s:3:\"532\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Tags are disabled\";s:12:\"phrase_value\";s:17:\"Tags are disabled\";s:7:\"package\";s:6:\"wpforo\";}i:532;a:5:{s:8:\"phraseid\";s:3:\"533\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Unread Posts\";s:12:\"phrase_value\";s:12:\"Unread Posts\";s:7:\"package\";s:6:\"wpforo\";}i:533;a:5:{s:8:\"phraseid\";s:3:\"534\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"No unread posts were found\";s:12:\"phrase_value\";s:26:\"No unread posts were found\";s:7:\"package\";s:6:\"wpforo\";}i:534;a:5:{s:8:\"phraseid\";s:3:\"535\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Ask a question\";s:12:\"phrase_value\";s:14:\"Ask a question\";s:7:\"package\";s:6:\"wpforo\";}i:535;a:5:{s:8:\"phraseid\";s:3:\"536\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Your question\";s:12:\"phrase_value\";s:13:\"Your question\";s:7:\"package\";s:6:\"wpforo\";}i:536;a:5:{s:8:\"phraseid\";s:3:\"537\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Question Tags\";s:12:\"phrase_value\";s:13:\"Question Tags\";s:7:\"package\";s:6:\"wpforo\";}i:537;a:5:{s:8:\"phraseid\";s:3:\"538\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:67:\"This topic doesn\'t exist or you don\'t have permissions to see that.\";s:12:\"phrase_value\";s:67:\"This topic doesn\'t exist or you don\'t have permissions to see that.\";s:7:\"package\";s:6:\"wpforo\";}i:538;a:5:{s:8:\"phraseid\";s:3:\"539\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"%d user ( %s )\";s:12:\"phrase_value\";s:14:\"%d user ( %s )\";s:7:\"package\";s:6:\"wpforo\";}i:539;a:5:{s:8:\"phraseid\";s:3:\"540\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"%d users ( %s )\";s:12:\"phrase_value\";s:15:\"%d users ( %s )\";s:7:\"package\";s:6:\"wpforo\";}i:540;a:5:{s:8:\"phraseid\";s:3:\"541\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Recently viewed by users: %s.\";s:12:\"phrase_value\";s:29:\"Recently viewed by users: %s.\";s:7:\"package\";s:6:\"wpforo\";}i:541;a:5:{s:8:\"phraseid\";s:3:\"542\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"%s guest\";s:12:\"phrase_value\";s:8:\"%s guest\";s:7:\"package\";s:6:\"wpforo\";}i:542;a:5:{s:8:\"phraseid\";s:3:\"543\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"%s guests\";s:12:\"phrase_value\";s:9:\"%s guests\";s:7:\"package\";s:6:\"wpforo\";}i:543;a:5:{s:8:\"phraseid\";s:3:\"544\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"%d times\";s:12:\"phrase_value\";s:8:\"%d times\";s:7:\"package\";s:6:\"wpforo\";}i:544;a:5:{s:8:\"phraseid\";s:3:\"545\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"Currently viewing this topic %s %s %s.\";s:12:\"phrase_value\";s:38:\"Currently viewing this topic %s %s %s.\";s:7:\"package\";s:6:\"wpforo\";}i:545;a:5:{s:8:\"phraseid\";s:3:\"546\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Forum Icons\";s:12:\"phrase_value\";s:11:\"Forum Icons\";s:7:\"package\";s:6:\"wpforo\";}i:546;a:5:{s:8:\"phraseid\";s:3:\"547\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"(%d viewing)\";s:12:\"phrase_value\";s:12:\"(%d viewing)\";s:7:\"package\";s:6:\"wpforo\";}i:547;a:5:{s:8:\"phraseid\";s:3:\"548\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"View all tags (%d)\";s:12:\"phrase_value\";s:18:\"View all tags (%d)\";s:7:\"package\";s:6:\"wpforo\";}i:548;a:5:{s:8:\"phraseid\";s:3:\"549\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Topic reply\";s:12:\"phrase_value\";s:11:\"Topic reply\";s:7:\"package\";s:6:\"wpforo\";}i:549;a:5:{s:8:\"phraseid\";s:3:\"550\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"You have %d new replies\";s:12:\"phrase_value\";s:23:\"You have %d new replies\";s:7:\"package\";s:6:\"wpforo\";}i:550;a:5:{s:8:\"phraseid\";s:3:\"551\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"You have %d new reply to %2$s from %3$s\";s:12:\"phrase_value\";s:39:\"You have %d new reply to %2$s from %3$s\";s:7:\"package\";s:6:\"wpforo\";}i:551;a:5:{s:8:\"phraseid\";s:3:\"552\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"You have %d new reply to %s\";s:12:\"phrase_value\";s:27:\"You have %d new reply to %s\";s:7:\"package\";s:6:\"wpforo\";}i:552;a:5:{s:8:\"phraseid\";s:3:\"553\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:35:\"Are you sure you wanted to do that?\";s:12:\"phrase_value\";s:35:\"Are you sure you wanted to do that?\";s:7:\"package\";s:6:\"wpforo\";}i:553;a:5:{s:8:\"phraseid\";s:3:\"554\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"You do not have permission to mark notifications for that user.\";s:12:\"phrase_value\";s:63:\"You do not have permission to mark notifications for that user.\";s:7:\"package\";s:6:\"wpforo\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(437, '_site_transient_timeout_theme_roots', '1547626001', 'no'),
(438, '_site_transient_theme_roots', 'a:15:{s:16:\"abubize-business\";s:7:\"/themes\";s:7:\"bizlite\";s:7:\"/themes\";s:8:\"bloglite\";s:7:\"/themes\";s:13:\"business-path\";s:7:\"/themes\";s:12:\"business-way\";s:7:\"/themes\";s:9:\"businesso\";s:7:\"/themes\";s:9:\"cafe-blog\";s:7:\"/themes\";s:7:\"di-blog\";s:7:\"/themes\";s:15:\"melos-corporate\";s:7:\"/themes\";s:5:\"melos\";s:7:\"/themes\";s:15:\"store-ecommerce\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:23:\"ultimate-ecommerce-shop\";s:7:\"/themes\";}', 'no'),
(441, '_transient_timeout_wpforms_dash_widget_lite_entries_by_form', '1547683201', 'no'),
(442, '_transient_wpforms_dash_widget_lite_entries_by_form', 'a:1:{i:59;a:3:{s:7:\"form_id\";i:59;s:5:\"count\";i:1;s:5:\"title\";s:7:\"Contact\";}}', 'no'),
(443, '_transient_timeout_updraftplus_dashboard_news', '1547667422', 'no'),
(444, '_transient_updraftplus_dashboard_news', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: feeds.feedburner.com</p></div>', 'no'),
(445, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1547667422', 'no'),
(446, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> Array</p></div>', 'no'),
(448, 'updraft_combine_jobs_around', '1547638906', 'yes'),
(452, '_site_transient_timeout_available_translations', '1547635732', 'no'),
(453, '_site_transient_available_translations', 'a:114:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 06:00:48\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-14 14:38:13\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-11 16:43:39\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 14:28:15\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 05:33:38\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-14 13:53:59\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 11:48:01\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2019-01-02 23:45:10\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-12 17:19:44\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2018-12-20 09:45:39\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.0.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2018-12-20 09:43:07\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-12 17:20:02\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.0.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-14 15:52:39\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 23:06:45\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-10 07:52:38\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 07:41:03\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 07:34:08\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 23:07:03\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 20:26:22\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 20:15:01\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 12:47:45\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-14 13:48:04\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.9/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 22:44:17\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-15 05:21:23\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-04 08:05:41\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2018-12-18 19:13:01\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 23:32:02\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-11-08 18:24:55\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 01:42:00\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2018-12-27 08:54:31\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 22:34:39\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-15 20:37:33\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 08:29:12\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-11 07:02:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2019-01-06 16:23:22\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 14:27:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 18:11:00\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 14:03:52\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 07:58:51\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 07:37:20\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 07:58:09\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.0.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 12:42:03\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-15 16:48:47\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 21:43:31\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-15 01:22:24\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-12 15:50:26\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-07 22:07:58\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-10 14:35:01\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-10 15:35:30\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 20:30:46\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 18:35:39\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-10 21:54:07\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-08 01:58:07\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-13 00:12:57\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 20:58:55\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.0.2\";s:7:\"updated\";s:19:\"2018-12-31 11:05:02\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.2/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-10 05:29:18\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 06:50:01\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-10 04:18:20\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2018-12-21 00:57:14\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 06:14:39\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(454, '_transient_is_multi_author', '0', 'yes'),
(455, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1547671166', 'no'),
(456, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Plovdiv\";s:3:\"url\";s:33:\"https://2019.plovdiv.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-05-10 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:7:\"Plovdiv\";s:7:\"country\";s:2:\"BG\";s:8:\"latitude\";d:42.1450175;s:9:\"longitude\";d:24.7489102;}}}}', 'no');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1547471345:1'),
(4, 7, '_edit_lock', '1547419598:1'),
(5, 8, '_edit_lock', '1547460436:1'),
(6, 9, '_wp_attached_file', '2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg'),
(7, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:149:\"2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8-800x667.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"di-blog-recentpostthumb\";a:4:{s:4:\"file\";s:147:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"di-blog-owl-img\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8-450x300.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 10, '_wp_attached_file', '2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930.jpg'),
(9, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:145:\"2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:145:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:145:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:145:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:145:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930-800x667.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"di-blog-recentpostthumb\";a:4:{s:4:\"file\";s:143:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"di-blog-owl-img\";a:4:{s:4:\"file\";s:145:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930-450x300.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 11, '_wp_attached_file', '2019/01/156-ID1.jpg'),
(11, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2019/01/156-ID1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"156-ID1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"156-ID1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"156-ID1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"156-ID1-800x667.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"di-blog-recentpostthumb\";a:4:{s:4:\"file\";s:17:\"156-ID1-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"di-blog-owl-img\";a:4:{s:4:\"file\";s:19:\"156-ID1-450x300.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 12, '_wp_attached_file', '2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg'),
(13, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:149:\"2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968-800x667.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"di-blog-recentpostthumb\";a:4:{s:4:\"file\";s:147:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"di-blog-owl-img\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968-450x300.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 13, '_wp_attached_file', '2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg'),
(15, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:149:\"2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42-800x667.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"di-blog-recentpostthumb\";a:4:{s:4:\"file\";s:147:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42-90x90.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"di-blog-owl-img\";a:4:{s:4:\"file\";s:149:\"156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42-450x300.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 8, '_edit_last', '1'),
(17, 8, '_di_blog_hide_footer_widgets', '0'),
(18, 8, '_di_blog_hide_hdrimg', '0'),
(19, 7, '_customize_restore_dismissed', '1'),
(20, 1, 'post_views_count', '0'),
(21, 19, '_edit_lock', '1547417879:1'),
(22, 20, '_edit_lock', '1547418224:1'),
(25, 20, 'post_views_count', '1'),
(26, 24, '_menu_item_type', 'custom'),
(27, 24, '_menu_item_menu_item_parent', '0'),
(28, 24, '_menu_item_object_id', '24'),
(29, 24, '_menu_item_object', 'custom'),
(30, 24, '_menu_item_target', ''),
(31, 24, '_menu_item_classes', 'a:1:{i:0;s:11:\"wpforo-home\";}'),
(32, 24, '_menu_item_xfn', ''),
(33, 24, '_menu_item_url', '/%wpforo-home%/'),
(34, 25, '_menu_item_type', 'custom'),
(35, 25, '_menu_item_menu_item_parent', '0'),
(36, 25, '_menu_item_object_id', '25'),
(37, 25, '_menu_item_object', 'custom'),
(38, 25, '_menu_item_target', ''),
(39, 25, '_menu_item_classes', 'a:1:{i:0;s:14:\"wpforo-members\";}'),
(40, 25, '_menu_item_xfn', ''),
(41, 25, '_menu_item_url', '/%wpforo-members%/'),
(42, 26, '_menu_item_type', 'custom'),
(43, 26, '_menu_item_menu_item_parent', '0'),
(44, 26, '_menu_item_object_id', '26'),
(45, 26, '_menu_item_object', 'custom'),
(46, 26, '_menu_item_target', ''),
(47, 26, '_menu_item_classes', 'a:1:{i:0;s:13:\"wpforo-recent\";}'),
(48, 26, '_menu_item_xfn', ''),
(49, 26, '_menu_item_url', '/%wpforo-recent%/'),
(50, 27, '_menu_item_type', 'custom'),
(51, 27, '_menu_item_menu_item_parent', '0'),
(52, 27, '_menu_item_object_id', '27'),
(53, 27, '_menu_item_object', 'custom'),
(54, 27, '_menu_item_target', ''),
(55, 27, '_menu_item_classes', 'a:1:{i:0;s:14:\"wpforo-profile\";}'),
(56, 27, '_menu_item_xfn', ''),
(57, 27, '_menu_item_url', '/%wpforo-profile-home%/'),
(58, 28, '_menu_item_type', 'custom'),
(59, 28, '_menu_item_menu_item_parent', '27'),
(60, 28, '_menu_item_object_id', '28'),
(61, 28, '_menu_item_object', 'custom'),
(62, 28, '_menu_item_target', ''),
(63, 28, '_menu_item_classes', 'a:1:{i:0;s:22:\"wpforo-profile-account\";}'),
(64, 28, '_menu_item_xfn', ''),
(65, 28, '_menu_item_url', '/%wpforo-profile-account%/'),
(66, 29, '_menu_item_type', 'custom'),
(67, 29, '_menu_item_menu_item_parent', '27'),
(68, 29, '_menu_item_object_id', '29'),
(69, 29, '_menu_item_object', 'custom'),
(70, 29, '_menu_item_target', ''),
(71, 29, '_menu_item_classes', 'a:1:{i:0;s:23:\"wpforo-profile-activity\";}'),
(72, 29, '_menu_item_xfn', ''),
(73, 29, '_menu_item_url', '/%wpforo-profile-activity%/'),
(74, 30, '_menu_item_type', 'custom'),
(75, 30, '_menu_item_menu_item_parent', '27'),
(76, 30, '_menu_item_object_id', '30'),
(77, 30, '_menu_item_object', 'custom'),
(78, 30, '_menu_item_target', ''),
(79, 30, '_menu_item_classes', 'a:1:{i:0;s:28:\"wpforo-profile-subscriptions\";}'),
(80, 30, '_menu_item_xfn', ''),
(81, 30, '_menu_item_url', '/%wpforo-profile-subscriptions%/'),
(82, 31, '_menu_item_type', 'custom'),
(83, 31, '_menu_item_menu_item_parent', '0'),
(84, 31, '_menu_item_object_id', '31'),
(85, 31, '_menu_item_object', 'custom'),
(86, 31, '_menu_item_target', ''),
(87, 31, '_menu_item_classes', 'a:1:{i:0;s:15:\"wpforo-register\";}'),
(88, 31, '_menu_item_xfn', ''),
(89, 31, '_menu_item_url', '/%wpforo-register%/'),
(90, 32, '_menu_item_type', 'custom'),
(91, 32, '_menu_item_menu_item_parent', '0'),
(92, 32, '_menu_item_object_id', '32'),
(93, 32, '_menu_item_object', 'custom'),
(94, 32, '_menu_item_target', ''),
(95, 32, '_menu_item_classes', 'a:1:{i:0;s:12:\"wpforo-login\";}'),
(96, 32, '_menu_item_xfn', ''),
(97, 32, '_menu_item_url', '/%wpforo-login%/'),
(98, 33, '_menu_item_type', 'custom'),
(99, 33, '_menu_item_menu_item_parent', '0'),
(100, 33, '_menu_item_object_id', '33'),
(101, 33, '_menu_item_object', 'custom'),
(102, 33, '_menu_item_target', ''),
(103, 33, '_menu_item_classes', 'a:1:{i:0;s:13:\"wpforo-logout\";}'),
(104, 33, '_menu_item_xfn', ''),
(105, 33, '_menu_item_url', '/%wpforo-logout%/'),
(106, 35, '_wp_trash_meta_status', 'publish'),
(107, 35, '_wp_trash_meta_time', '1547461469'),
(108, 36, '_wp_attached_file', '2019/01/Forums.png'),
(109, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1470;s:6:\"height\";i:940;s:4:\"file\";s:18:\"2019/01/Forums.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Forums-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Forums-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Forums-768x491.png\";s:5:\"width\";i:768;s:6:\"height\";i:491;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"Forums-1024x655.png\";s:5:\"width\";i:1024;s:6:\"height\";i:655;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 37, '_wp_attached_file', '2019/01/cropped-Forums.png'),
(111, 37, '_wp_attachment_context', 'site-icon'),
(112, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2019/01/cropped-Forums.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-Forums-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-Forums-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-Forums-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-Forums-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-Forums-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-Forums-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 38, '_wp_trash_meta_status', 'publish'),
(114, 38, '_wp_trash_meta_time', '1547463510'),
(115, 39, '_wp_attached_file', '2019/01/cropped-Forums-1.png'),
(116, 39, '_wp_attachment_context', 'custom-header'),
(117, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:318;s:4:\"file\";s:28:\"2019/01/cropped-Forums-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-Forums-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-Forums-1-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-Forums-1-768x244.png\";s:5:\"width\";i:768;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:36;}'),
(118, 39, '_wp_attachment_custom_header_last_used_business-path', '1547463535'),
(119, 39, '_wp_attachment_is_custom_header', 'business-path'),
(120, 40, '_wp_trash_meta_status', 'publish'),
(121, 40, '_wp_trash_meta_time', '1547463535'),
(122, 36, '_wp_attachment_is_custom_background', 'cafe-blog'),
(123, 41, '_edit_lock', '1547463647:1'),
(124, 41, '_wp_trash_meta_status', 'publish'),
(125, 41, '_wp_trash_meta_time', '1547463653'),
(126, 42, '_wp_attached_file', '2019/01/cropped-Forums-2.png'),
(127, 42, '_wp_attachment_context', 'custom-logo'),
(128, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1470;s:6:\"height\";i:272;s:4:\"file\";s:28:\"2019/01/cropped-Forums-2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-Forums-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-Forums-2-300x56.png\";s:5:\"width\";i:300;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-Forums-2-768x142.png\";s:5:\"width\";i:768;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-Forums-2-1024x189.png\";s:5:\"width\";i:1024;s:6:\"height\";i:189;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 43, '_edit_lock', '1547463707:1'),
(130, 43, '_wp_trash_meta_status', 'publish'),
(131, 43, '_wp_trash_meta_time', '1547463711'),
(132, 44, '_wp_trash_meta_status', 'publish'),
(133, 44, '_wp_trash_meta_time', '1547463741'),
(134, 46, '_edit_lock', '1547463828:1'),
(135, 46, '_customize_restore_dismissed', '1'),
(136, 47, '_wp_trash_meta_status', 'publish'),
(137, 47, '_wp_trash_meta_time', '1547463864'),
(138, 48, '_wp_trash_meta_status', 'publish'),
(139, 48, '_wp_trash_meta_time', '1547463947'),
(140, 49, '_edit_lock', '1547464011:1'),
(141, 49, '_wp_trash_meta_status', 'publish'),
(142, 49, '_wp_trash_meta_time', '1547464027'),
(143, 34, '_edit_lock', '1547467972:1'),
(144, 8, '_wp_trash_meta_status', 'publish'),
(145, 8, '_wp_trash_meta_time', '1547467415'),
(146, 8, '_wp_desired_post_slug', 'laptop-lenovo-15-6-ideapad-330-fhd-procesor-intel-core-i5-8300h'),
(147, 2, '_edit_lock', '1547625184:1'),
(148, 34, '_thumbnail_id', '36'),
(149, 51, '_edit_lock', '1547467672:1'),
(150, 51, '_wp_trash_meta_status', 'publish'),
(151, 51, '_wp_trash_meta_time', '1547467703'),
(152, 52, '_wp_trash_meta_status', 'publish'),
(153, 52, '_wp_trash_meta_time', '1547467733'),
(154, 53, '_edit_lock', '1547467838:1'),
(155, 54, '_wp_trash_meta_status', 'publish'),
(156, 54, '_wp_trash_meta_time', '1547467865'),
(157, 55, '_wp_trash_meta_status', 'publish'),
(158, 55, '_wp_trash_meta_time', '1547468007'),
(159, 1, '_wp_trash_meta_status', 'publish'),
(160, 1, '_wp_trash_meta_time', '1547468196'),
(161, 1, '_wp_desired_post_slug', 'hello-world'),
(162, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(163, 20, '_wp_trash_meta_status', 'publish'),
(164, 20, '_wp_trash_meta_time', '1547468199'),
(165, 20, '_wp_desired_post_slug', 'postareeeeee'),
(166, 5, '_edit_last', '1'),
(167, 59, 'wpforms_entries_count', '1');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-13 21:44:12', '2019-01-13 21:44:12', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-01-14 12:16:36', '2019-01-14 12:16:36', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-13 21:44:12', '2019-01-13 21:44:12', '<!-- wp:paragraph -->\n<p>Aceasta pagina este o pagina dedicata tuturor persoanelor pasionate de IT si a celor care cauta suport.De la experti la amatori dorim sa creem o comunitate benefica intr-un final tuturor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Regulile sunt simple : Bunul simt inainte de toate!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":36} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wp-content/uploads/2019/01/Forums-1024x655.png\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->', 'Bun venit!', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-01-16 07:50:30', '2019-01-16 07:50:30', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-13 21:44:12', '2019-01-13 21:44:12', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-13 21:44:12', '2019-01-13 21:44:12', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-13 21:45:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-13 21:45:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=4', 0, 'post', '', 0),
(5, 1, '2019-01-13 21:49:00', '2019-01-13 21:49:00', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[wpforms id=\"59\"]</td></tr></tbody></table>\n<!-- /wp:table -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-14 13:11:17', '2019-01-14 13:11:17', '', 0, 'http://localhost/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-01-13 21:49:00', '2019-01-13 21:49:00', '', 'Produse', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-13 21:49:00', '2019-01-13 21:49:00', '', 5, 'http://localhost/2019/01/13/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-01-13 21:57:30', '0000-00-00 00:00:00', '{\n    \"store-ecommerce::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-13 21:57:30\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '52eb5224-da94-46a1-be40-87e7382b0a30', '', '', '2019-01-13 21:57:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2019-01-13 22:10:21', '2019-01-13 22:10:21', '<!-- wp:gallery {\"ids\":[\"9\",\"11\",\"12\",\"13\"],\"className\":\"alignleft\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped alignleft\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg\" alt=\"\" data-id=\"9\" data-link=\"http://localhost/?attachment_id=9\" class=\"wp-image-9\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ID1.jpg\" alt=\"\" data-id=\"11\" data-link=\"http://localhost/?attachment_id=11\" class=\"wp-image-11\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/?attachment_id=13\" class=\"wp-image-13\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<table class=\"wp-block-table is-style-stripes\"><tbody><tr><td> <br>Diagonala </td><td> <br>15.6 inch </td></tr><tr><td></td><td></td></tr><tr><td> <br>Rezolutie  </td><td> <br>1920 x 1080 pixeli </td></tr><tr><td></td><td></td></tr><tr><td> <br>Procesor </td><td> <br>Intel® Core™ i5-8300H Processor (3M Cache, up to 4.0 GHz) </td></tr><tr><td></td><td></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>PRET :  <br><strong>2.945,86 RON</strong> </h3>\n<!-- /wp:heading -->', 'Laptop Lenovo 15.6\'\' IdeaPad 330, FHD, Procesor Intel® Core™ i5-8300H', '', 'trash', 'closed', 'closed', '', 'laptop-lenovo-15-6-ideapad-330-fhd-procesor-intel-core-i5-8300h__trashed', '', '', '2019-01-14 12:03:35', '2019-01-14 12:03:35', '', 5, 'http://localhost/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-01-13 22:04:48', '2019-01-13 22:04:48', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8', '', 'inherit', 'open', 'closed', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8', '', '', '2019-01-13 22:04:48', '2019-01-13 22:04:48', '', 8, 'http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2019-01-13 22:04:51', '2019-01-13 22:04:51', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930', '', 'inherit', 'open', 'closed', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930', '', '', '2019-01-13 22:04:51', '2019-01-13 22:04:51', '', 8, 'http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2019-01-13 22:04:54', '2019-01-13 22:04:54', '', '156-ID~1', '', 'inherit', 'open', 'closed', '', '156-id1', '', '', '2019-01-13 22:04:54', '2019-01-13 22:04:54', '', 8, 'http://localhost/wp-content/uploads/2019/01/156-ID1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2019-01-13 22:04:55', '2019-01-13 22:04:55', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968', '', 'inherit', 'open', 'closed', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968', '', '', '2019-01-13 22:04:55', '2019-01-13 22:04:55', '', 8, 'http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2019-01-13 22:04:58', '2019-01-13 22:04:58', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42', '', 'inherit', 'open', 'closed', '', '156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42', '', '', '2019-01-13 22:04:58', '2019-01-13 22:04:58', '', 8, 'http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2019-01-13 22:10:21', '2019-01-13 22:10:21', '<!-- wp:gallery {\"ids\":[9,10,11,12,13]} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg\" alt=\"\" data-id=\"9\" data-link=\"http://localhost/?attachment_id=9\" class=\"wp-image-9\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930.jpg\" alt=\"\" data-id=\"10\" data-link=\"http://localhost/?attachment_id=10\" class=\"wp-image-10\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ID1.jpg\" alt=\"\" data-id=\"11\" data-link=\"http://localhost/?attachment_id=11\" class=\"wp-image-11\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/?attachment_id=13\" class=\"wp-image-13\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:list -->\n<ul><li>Diagonala : 15.6 inch</li><li>Rezolutie : 1920 x 1080 pixeli</li><li>Procesor : Intel® Core™ i5-8300H Processor (3M Cache, up to 4.0 GHz)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:table {\"align\":\"center\",\"className\":\"is-style-regular\"} -->\n<table class=\"wp-block-table aligncenter is-style-regular\"><tbody><tr><td> <br>Diagonala </td><td> <br>15.6 inch </td></tr><tr><td></td><td></td></tr><tr><td> <br>Rezolutie  </td><td> <br>1920 x 1080 pixeli </td></tr><tr><td></td><td></td></tr><tr><td> <br>Procesor </td><td> <br>Intel® Core™ i5-8300H Processor (3M Cache, up to 4.0 GHz) </td></tr><tr><td></td><td></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>PRET :  <br><strong>2.945,86 RON</strong> </h2>\n<!-- /wp:heading -->', 'Laptop Lenovo 15.6\'\' IdeaPad 330, FHD, Procesor Intel® Core™ i5-8300H', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-13 22:10:21', '2019-01-13 22:10:21', '', 8, 'http://localhost/2019/01/13/8-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-01-13 22:11:47', '2019-01-13 22:11:47', '<!-- wp:gallery {\"ids\":[9,10,11,12,13],\"align\":\"left\"} -->\n<ul class=\"wp-block-gallery alignleft columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg\" alt=\"\" data-id=\"9\" data-link=\"http://localhost/?attachment_id=9\" class=\"wp-image-9\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930.jpg\" alt=\"\" data-id=\"10\" data-link=\"http://localhost/?attachment_id=10\" class=\"wp-image-10\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ID1.jpg\" alt=\"\" data-id=\"11\" data-link=\"http://localhost/?attachment_id=11\" class=\"wp-image-11\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/?attachment_id=13\" class=\"wp-image-13\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:table {\"align\":\"center\",\"className\":\"is-style-regular\"} -->\n<table class=\"wp-block-table aligncenter is-style-regular\"><tbody><tr><td> <br>Diagonala </td><td> <br>15.6 inch </td></tr><tr><td></td><td></td></tr><tr><td> <br>Rezolutie  </td><td> <br>1920 x 1080 pixeli </td></tr><tr><td></td><td></td></tr><tr><td> <br>Procesor </td><td> <br>Intel® Core™ i5-8300H Processor (3M Cache, up to 4.0 GHz) </td></tr><tr><td></td><td></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>PRET :  <br><strong>2.945,86 RON</strong> </h2>\n<!-- /wp:heading -->', 'Laptop Lenovo 15.6\'\' IdeaPad 330, FHD, Procesor Intel® Core™ i5-8300H', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-13 22:11:47', '2019-01-13 22:11:47', '', 8, 'http://localhost/2019/01/13/8-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-01-13 22:12:11', '2019-01-13 22:12:11', '<!-- wp:gallery {\"ids\":[9,10,11,12,13],\"align\":\"left\",\"className\":\"alignleft\"} -->\n<ul class=\"wp-block-gallery alignleft columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg\" alt=\"\" data-id=\"9\" data-link=\"http://localhost/?attachment_id=9\" class=\"wp-image-9\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-585b3b930.jpg\" alt=\"\" data-id=\"10\" data-link=\"http://localhost/?attachment_id=10\" class=\"wp-image-10\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ID1.jpg\" alt=\"\" data-id=\"11\" data-link=\"http://localhost/?attachment_id=11\" class=\"wp-image-11\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/?attachment_id=13\" class=\"wp-image-13\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:table {\"align\":\"center\",\"className\":\"is-style-stripes\"} -->\n<table class=\"wp-block-table aligncenter is-style-stripes\"><tbody><tr><td> <br>Diagonala </td><td> <br>15.6 inch </td></tr><tr><td></td><td></td></tr><tr><td> <br>Rezolutie  </td><td> <br>1920 x 1080 pixeli </td></tr><tr><td></td><td></td></tr><tr><td> <br>Procesor </td><td> <br>Intel® Core™ i5-8300H Processor (3M Cache, up to 4.0 GHz) </td></tr><tr><td></td><td></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>PRET :  <br><strong>2.945,86 RON</strong> </h2>\n<!-- /wp:heading -->', 'Laptop Lenovo 15.6\'\' IdeaPad 330, FHD, Procesor Intel® Core™ i5-8300H', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-13 22:12:11', '2019-01-13 22:12:11', '', 8, 'http://localhost/2019/01/13/8-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-01-13 22:20:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-13 22:20:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-01-13 22:20:59', '2019-01-13 22:20:59', '', 'poSTAREEEEEE', '', 'trash', 'open', 'open', '', 'postareeeeee__trashed', '', '', '2019-01-14 12:16:39', '2019-01-14 12:16:39', '', 0, 'http://localhost/?p=20', 0, 'post', '', 0),
(21, 1, '2019-01-13 22:20:59', '2019-01-13 22:20:59', '', 'poSTAREEEEEE', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-01-13 22:20:59', '2019-01-13 22:20:59', '', 20, 'http://localhost/2019/01/13/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-01-13 22:45:41', '2019-01-13 22:45:41', '<!-- wp:gallery {\"ids\":[\"9\",\"11\",\"12\",\"13\"],\"className\":\"alignleft\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped alignleft\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-5efa9f7b519d8.jpg\" alt=\"\" data-id=\"9\" data-link=\"http://localhost/?attachment_id=9\" class=\"wp-image-9\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ID1.jpg\" alt=\"\" data-id=\"11\" data-link=\"http://localhost/?attachment_id=11\" class=\"wp-image-11\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-a1d1a6b0bb968.jpg\" alt=\"\" data-id=\"12\" data-link=\"http://localhost/?attachment_id=12\" class=\"wp-image-12\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wp-content/uploads/2019/01/156-ideapad-330-fhd-procesor-intel-core-i5-8300h-3m-cache-up-to-40-ghz-4gb-ddr4-1tb-geforce-gtx-1050-4gb-freedos-onyx-black-d70a09c45fe42.jpg\" alt=\"\" data-id=\"13\" data-link=\"http://localhost/?attachment_id=13\" class=\"wp-image-13\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<table class=\"wp-block-table is-style-stripes\"><tbody><tr><td> <br>Diagonala </td><td> <br>15.6 inch </td></tr><tr><td></td><td></td></tr><tr><td> <br>Rezolutie  </td><td> <br>1920 x 1080 pixeli </td></tr><tr><td></td><td></td></tr><tr><td> <br>Procesor </td><td> <br>Intel® Core™ i5-8300H Processor (3M Cache, up to 4.0 GHz) </td></tr><tr><td></td><td></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>PRET :  <br><strong>2.945,86 RON</strong> </h3>\n<!-- /wp:heading -->', 'Laptop Lenovo 15.6\'\' IdeaPad 330, FHD, Procesor Intel® Core™ i5-8300H', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-13 22:45:41', '2019-01-13 22:45:41', '', 8, 'http://localhost/2019/01/13/8-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-01-14 10:09:34', '2019-01-14 10:09:34', '', 'Forums', '', 'publish', 'closed', 'closed', '', 'forums', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/forums/', 1, 'nav_menu_item', '', 0),
(25, 1, '2019-01-14 10:09:34', '2019-01-14 10:09:34', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/members/', 2, 'nav_menu_item', '', 0),
(26, 1, '2019-01-14 10:09:34', '2019-01-14 10:09:34', '', 'Recent Posts', '', 'publish', 'closed', 'closed', '', 'recent-posts', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/recent-posts/', 3, 'nav_menu_item', '', 0),
(27, 1, '2019-01-14 10:09:34', '2019-01-14 10:09:34', '', 'My Profile', '', 'publish', 'closed', 'closed', '', 'my-profile', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/my-profile/', 4, 'nav_menu_item', '', 0),
(28, 1, '2019-01-14 10:09:34', '2019-01-14 10:09:34', '', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/account/', 5, 'nav_menu_item', '', 0),
(29, 1, '2019-01-14 10:09:34', '2019-01-14 10:09:34', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/activity/', 6, 'nav_menu_item', '', 0),
(30, 1, '2019-01-14 10:09:35', '2019-01-14 10:09:35', '', 'Subscriptions', '', 'publish', 'closed', 'closed', '', 'subscriptions', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/subscriptions/', 7, 'nav_menu_item', '', 0),
(31, 1, '2019-01-14 10:09:35', '2019-01-14 10:09:35', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/register/', 8, 'nav_menu_item', '', 0),
(32, 1, '2019-01-14 10:09:35', '2019-01-14 10:09:35', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/login/', 9, 'nav_menu_item', '', 0),
(33, 1, '2019-01-14 10:09:35', '2019-01-14 10:09:35', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2019-01-14 10:25:48', '2019-01-14 10:25:48', '', 0, 'http://localhost/2019/01/14/logout/', 10, 'nav_menu_item', '', 0),
(34, 1, '2019-01-14 10:09:35', '2019-01-14 10:09:35', '[wpforo]', 'Forum', '', 'publish', 'close', 'close', '', 'community', '', '', '2019-01-14 12:05:31', '2019-01-14 12:05:31', '', 0, 'http://localhost/community/', 0, 'page', '', 0),
(35, 1, '2019-01-14 10:24:29', '2019-01-14 10:24:29', '{\n    \"blogdescription\": {\n        \"value\": \"Forum de dat cu capul\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:24:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42272af1-2dd7-475f-832d-0ded14b06a24', '', '', '2019-01-14 10:24:29', '2019-01-14 10:24:29', '', 0, 'http://localhost/2019/01/14/42272af1-2dd7-475f-832d-0ded14b06a24/', 0, 'customize_changeset', '', 0),
(36, 1, '2019-01-14 10:57:54', '2019-01-14 10:57:54', '', 'Forums', '', 'inherit', 'open', 'closed', '', 'forums-2', '', '', '2019-01-14 10:57:54', '2019-01-14 10:57:54', '', 0, 'http://localhost/wp-content/uploads/2019/01/Forums.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-01-14 10:58:00', '2019-01-14 10:58:00', 'http://localhost/wp-content/uploads/2019/01/cropped-Forums.png', 'cropped-Forums.png', '', 'inherit', 'open', 'closed', '', 'cropped-forums-png', '', '', '2019-01-14 10:58:00', '2019-01-14 10:58:00', '', 0, 'http://localhost/wp-content/uploads/2019/01/cropped-Forums.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2019-01-14 10:58:30', '2019-01-14 10:58:30', '{\n    \"blogdescription\": {\n        \"value\": \"Forum discutii\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:58:30\"\n    },\n    \"site_icon\": {\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:58:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb1c33f4-15f9-433b-b5af-fa7bd1c85121', '', '', '2019-01-14 10:58:30', '2019-01-14 10:58:30', '', 0, 'http://localhost/2019/01/14/bb1c33f4-15f9-433b-b5af-fa7bd1c85121/', 0, 'customize_changeset', '', 0),
(39, 1, '2019-01-14 10:58:48', '2019-01-14 10:58:48', '', 'cropped-Forums-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-forums-1-png', '', '', '2019-01-14 10:58:48', '2019-01-14 10:58:48', '', 0, 'http://localhost/wp-content/uploads/2019/01/cropped-Forums-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-01-14 10:58:55', '2019-01-14 10:58:55', '{\n    \"business-path::header_image\": {\n        \"value\": \"http://localhost/wp-content/uploads/2019/01/cropped-Forums-1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:58:55\"\n    },\n    \"business-path::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wp-content/uploads/2019/01/cropped-Forums-1.png\",\n            \"thumbnail_url\": \"http://localhost/wp-content/uploads/2019/01/cropped-Forums-1.png\",\n            \"timestamp\": 1547463528690,\n            \"attachment_id\": 39,\n            \"width\": 1000,\n            \"height\": 318\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:58:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c981d0d0-9ab3-4d48-b7b9-a0c00e510e3f', '', '', '2019-01-14 10:58:55', '2019-01-14 10:58:55', '', 0, 'http://localhost/2019/01/14/c981d0d0-9ab3-4d48-b7b9-a0c00e510e3f/', 0, 'customize_changeset', '', 0),
(41, 1, '2019-01-14 11:00:53', '2019-01-14 11:00:53', '{\n    \"business-path::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:59:56\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:00:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd6eb1f4-3cf8-42b3-a3d6-859d123e02ea', '', '', '2019-01-14 11:00:53', '2019-01-14 11:00:53', '', 0, 'http://localhost/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2019-01-14 11:01:32', '2019-01-14 11:01:32', 'http://localhost/wp-content/uploads/2019/01/cropped-Forums-2.png', 'cropped-Forums-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-forums-2-png', '', '', '2019-01-14 11:01:32', '2019-01-14 11:01:32', '', 0, 'http://localhost/wp-content/uploads/2019/01/cropped-Forums-2.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2019-01-14 11:01:51', '2019-01-14 11:01:51', '{\n    \"business-path::custom_logo\": {\n        \"value\": 42,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:01:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ffe68bdb-1e23-4ae9-8ab8-2d43040b4346', '', '', '2019-01-14 11:01:51', '2019-01-14 11:01:51', '', 0, 'http://localhost/?p=43', 0, 'customize_changeset', '', 0),
(44, 1, '2019-01-14 11:02:21', '2019-01-14 11:02:21', '{\n    \"business-path::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:02:21\"\n    },\n    \"business-path::nav_menu_locations[wpforo-menu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:02:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14597920-dbac-40e8-b582-7f223ccf14f9', '', '', '2019-01-14 11:02:21', '2019-01-14 11:02:21', '', 0, 'http://localhost/2019/01/14/14597920-dbac-40e8-b582-7f223ccf14f9/', 0, 'customize_changeset', '', 0),
(45, 1, '2019-01-14 11:02:50', '2019-01-14 11:02:50', '{\n    \"page_on_front\": {\n        \"value\": \"34\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:02:50\"\n    }\n}', '', '', 'publish', 'closed', 'closed', '', '6db8c8a7-e409-4bb8-85e5-7f75d64d0a98', '', '', '2019-01-14 11:02:50', '2019-01-14 11:02:50', '', 0, 'http://localhost/2019/01/14/6db8c8a7-e409-4bb8-85e5-7f75d64d0a98/', 0, 'customize_changeset', '', 0),
(46, 1, '2019-01-14 11:03:48', '0000-00-00 00:00:00', '{\n    \"business-path::background_color\": {\n        \"value\": \"#8224e3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:03:48\"\n    },\n    \"page_on_front\": {\n        \"value\": \"34\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:03:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'bb8cc72f-2c67-41de-be76-0aaabf3ea056', '', '', '2019-01-14 11:03:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=46', 0, 'customize_changeset', '', 0),
(47, 1, '2019-01-14 11:04:24', '2019-01-14 11:04:24', '{\n    \"business-path::header_textcolor\": {\n        \"value\": \"#c9c9c9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:04:24\"\n    },\n    \"business-path::background_color\": {\n        \"value\": \"#cef3ff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:04:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b0b22e50-573d-4001-becb-6410b1b872ca', '', '', '2019-01-14 11:04:24', '2019-01-14 11:04:24', '', 0, 'http://localhost/2019/01/14/b0b22e50-573d-4001-becb-6410b1b872ca/', 0, 'customize_changeset', '', 0),
(48, 1, '2019-01-14 11:05:47', '2019-01-14 11:05:47', '{\n    \"cafe-blog::background_image\": {\n        \"value\": \"http://localhost/wp-content/uploads/2019/01/Forums.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:05:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e889c4a0-a481-4f4e-bf0b-e3ce91376853', '', '', '2019-01-14 11:05:47', '2019-01-14 11:05:47', '', 0, 'http://localhost/2019/01/14/e889c4a0-a481-4f4e-bf0b-e3ce91376853/', 0, 'customize_changeset', '', 0),
(49, 1, '2019-01-14 11:07:07', '2019-01-14 11:07:07', '{\n    \"cafe-blog::background_color\": {\n        \"value\": \"#898989\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:06:51\"\n    },\n    \"cafe-blog::background_position_x\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:07:07\"\n    },\n    \"cafe-blog::background_position_y\": {\n        \"value\": \"top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:07:07\"\n    },\n    \"cafe-blog::freebiescafe_signature_image_setting\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:06:51\"\n    },\n    \"cafe-blog::background_preset\": {\n        \"value\": \"fill\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:07:07\"\n    },\n    \"cafe-blog::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:07:07\"\n    },\n    \"cafe-blog::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:07:07\"\n    },\n    \"cafe-blog::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 11:07:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48485002-08e6-4d8d-9552-58fd173721f9', '', '', '2019-01-14 11:07:07', '2019-01-14 11:07:07', '', 0, 'http://localhost/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2019-01-14 12:05:31', '2019-01-14 12:05:31', '[wpforo]', 'Forum', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-01-14 12:05:31', '2019-01-14 12:05:31', '', 34, 'http://localhost/2019/01/14/34-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-01-14 12:08:23', '2019-01-14 12:08:23', '{\n    \"melos::thinkup_redux_variables[thinkup_general_breadcrumbswitch]\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:07:52\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_layout]\": {\n        \"value\": \"option1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:07:52\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_sliderpresetwidth]\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:07:52\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_header_styleswitchpre]\": {\n        \"value\": \"option1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:08:23\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_header_searchswitch]\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:08:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d37636d-0f69-4da9-9f1d-aefde4ffbf24', '', '', '2019-01-14 12:08:23', '2019-01-14 12:08:23', '', 0, 'http://localhost/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2019-01-14 12:08:53', '2019-01-14 12:08:53', '{\n    \"melos::thinkup_redux_variables[thinkup_header_searchswitch]\": {\n        \"value\": \"off\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:08:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd1ea7883-9ce2-4464-be21-9018e3dd83d3', '', '', '2019-01-14 12:08:53', '2019-01-14 12:08:53', '', 0, 'http://localhost/2019/01/14/d1ea7883-9ce2-4464-be21-9018e3dd83d3/', 0, 'customize_changeset', '', 0),
(53, 1, '2019-01-14 12:10:39', '2019-01-14 12:10:39', '{\n    \"melos::thinkup_redux_variables[thinkup_homepage_section1_image]\": {\n        \"value\": {\n            \"url\": \"http://localhost/wp-content/uploads/2019/01/Forums.png\",\n            \"id\": \"36\",\n            \"height\": \"940\",\n            \"width\": \"1470\",\n            \"thumbnail\": \"\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:09:27\"\n    },\n    \"page_on_front\": {\n        \"value\": \"34\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:10:27\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_sectionswitch]\": {\n        \"value\": \"off\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:10:27\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_section1_link]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:10:27\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:10:39\"\n    }\n}', '', '', 'publish', 'closed', 'closed', '', 'cb3bc218-c974-4524-81b0-24ea9f228ef2', '', '', '2019-01-14 12:10:39', '2019-01-14 12:10:39', '', 0, 'http://localhost/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2019-01-14 12:11:05', '2019-01-14 12:11:05', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:11:05\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:11:05\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_sectionswitch]\": {\n        \"value\": \"off\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:11:05\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_section1_image]\": {\n        \"value\": {\n            \"url\": \"http://localhost/wp-content/uploads/2019/01/Forums.png\",\n            \"id\": \"36\",\n            \"height\": \"940\",\n            \"width\": \"1470\",\n            \"thumbnail\": \"\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:11:05\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_section1_link]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:11:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5271aeb6-3d1f-4151-81b3-bdda02321e7c', '', '', '2019-01-14 12:11:05', '2019-01-14 12:11:05', '', 0, 'http://localhost/2019/01/14/5271aeb6-3d1f-4151-81b3-bdda02321e7c/', 0, 'customize_changeset', '', 0),
(55, 1, '2019-01-14 12:13:27', '2019-01-14 12:13:27', '{\n    \"melos::thinkup_redux_variables[thinkup_homepage_sliderswitch]\": {\n        \"value\": \"option3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:13:27\"\n    },\n    \"melos::thinkup_redux_variables[thinkup_homepage_section1_image]\": {\n        \"value\": {\n            \"url\": \"\",\n            \"id\": \"\",\n            \"height\": \"\",\n            \"width\": \"\",\n            \"thumbnail\": \"\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 12:13:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '96860f43-48ce-4710-96ad-379ed5c30fa2', '', '', '2019-01-14 12:13:27', '2019-01-14 12:13:27', '', 0, 'http://localhost/2019/01/14/96860f43-48ce-4710-96ad-379ed5c30fa2/', 0, 'customize_changeset', '', 0),
(56, 1, '2019-01-14 12:16:36', '2019-01-14 12:16:36', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-14 12:16:36', '2019-01-14 12:16:36', '', 1, 'http://localhost/2019/01/14/1-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-01-14 12:17:25', '2019-01-14 12:17:25', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-14 12:17:25', '2019-01-14 12:17:25', '', 5, 'http://localhost/2019/01/14/5-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-01-14 13:09:44', '2019-01-14 13:09:44', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publicly accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2019-01-14 13:09:44', '2019-01-14 13:09:44', '', 0, 'http://localhost/wpforms-preview/', 0, 'page', '', 0),
(59, 1, '2019-01-14 13:09:59', '2019-01-14 13:09:59', '{\"id\":\"59\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"Contact\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"\",\"submit_class\":\"\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Contact Entry\",\"sender_name\":\"UnderPC\",\"sender_address\":\"{admin_email}\",\"replyto\":\"\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"5\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-14 13:10:36', '2019-01-14 13:10:36', '', 0, 'http://localhost/?post_type=wpforms&#038;p=59', 0, 'wpforms', '', 0),
(60, 1, '2019-01-14 13:11:17', '2019-01-14 13:11:17', '<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td>[wpforms id=\"59\"]</td></tr></tbody></table>\n<!-- /wp:table -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-01-14 13:11:17', '2019-01-14 13:11:17', '', 5, 'http://localhost/2019/01/14/5-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-01-16 07:38:58', '2019-01-16 07:38:58', '{\n    \"page_on_front\": {\n        \"value\": \"34\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-16 07:38:58\"\n    }\n}', '', '', 'publish', 'closed', 'closed', '', '71efe232-9469-4864-b51d-d6fb160be63b', '', '', '2019-01-16 07:38:58', '2019-01-16 07:38:58', '', 0, 'http://localhost/2019/01/16/71efe232-9469-4864-b51d-d6fb160be63b/', 0, 'customize_changeset', '', 0),
(62, 1, '2019-01-16 07:39:55', '0000-00-00 00:00:00', '{\n    \"page_on_front\": {\n        \"value\": \"34\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-16 07:39:55\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0430b9d6-febf-4664-8d03-402c006b8648', '', '', '2019-01-16 07:39:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=62', 0, 'customize_changeset', '', 0),
(64, 1, '2019-01-16 07:43:02', '2019-01-16 07:43:02', '<!-- wp:paragraph -->\n<p>Aceasta pagina este o pagina dedicata tuturor persoanelor pasionate de IT si a celor care cauta suport.De la experti la amatori dorim sa creem o comunitate benefica intr-un final tuturor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Regulile sunt simple : Bunul simt inainte de toate!</p>\n<!-- /wp:paragraph -->', 'Bun venit!', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-16 07:43:02', '2019-01-16 07:43:02', '', 2, 'http://localhost/2019/01/16/2-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-01-16 07:50:30', '2019-01-16 07:50:30', '<!-- wp:paragraph -->\n<p>Aceasta pagina este o pagina dedicata tuturor persoanelor pasionate de IT si a celor care cauta suport.De la experti la amatori dorim sa creem o comunitate benefica intr-un final tuturor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Regulile sunt simple : Bunul simt inainte de toate!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":36} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wp-content/uploads/2019/01/Forums-1024x655.png\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->', 'Bun venit!', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-16 07:50:30', '2019-01-16 07:50:30', '', 2, 'http://localhost/2019/01/16/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'wpForo Navigation', 'wpforo-navigation', 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 1, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 10);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'roco'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a4f6c9fc472f3c0f4a07e907d7efdbfcfcb76d0dcbfe1583a929bc2d5ef6f67f\";a:4:{s:10:\"expiration\";i:1548625499;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547415899;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 2, 'nickname', 'irobertfl'),
(24, 2, 'first_name', 'Ionescu'),
(25, 2, 'last_name', 'Robert Florin'),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(35, 2, 'wp_user_level', '0'),
(36, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(39, 2, '_wpf_login_times', '2'),
(41, 2, 'wpf_read_topics', 'a:1:{i:1;s:1:\"4\";}'),
(42, 2, 'wpf_read_forums', 'a:1:{i:5;s:1:\"4\";}'),
(43, 1, 'wpf_read_topics', 'a:1:{i:1;s:1:\"4\";}'),
(44, 1, 'wpf_read_forums', 'a:1:{i:5;s:1:\"4\";}'),
(46, 2, '_wpf_member_obj', 'a:53:{s:2:\"ID\";s:1:\"2\";s:10:\"user_login\";s:9:\"irobertfl\";s:9:\"user_pass\";s:34:\"$P$BpYpvGVhJLJ8mQWpJ4pXvZ4ljQz.BM.\";s:13:\"user_nicename\";s:9:\"irobertfl\";s:10:\"user_email\";s:23:\"irobertfl23@hotmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2019-01-14 10:41:04\";s:19:\"user_activation_key\";s:45:\"1547462465:$P$BZW5TLU.IWzhKzarInqYfVi.8.nH4..\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:21:\"Ionescu Robert Florin\";s:6:\"userid\";s:1:\"2\";s:5:\"title\";s:6:\"Member\";s:8:\"username\";s:9:\"irobertfl\";s:7:\"groupid\";s:1:\"3\";s:5:\"posts\";s:1:\"2\";s:9:\"questions\";s:1:\"0\";s:7:\"answers\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:4:\"site\";s:0:\"\";s:3:\"icq\";N;s:3:\"aim\";N;s:5:\"yahoo\";N;s:3:\"msn\";N;s:8:\"facebook\";N;s:7:\"twitter\";N;s:5:\"gtalk\";N;s:5:\"skype\";N;s:6:\"avatar\";N;s:9:\"signature\";N;s:5:\"about\";s:0:\"\";s:10:\"occupation\";N;s:8:\"location\";N;s:10:\"last_login\";s:19:\"2019-01-14 10:41:42\";s:11:\"online_time\";s:10:\"1547462869\";s:4:\"rank\";s:1:\"0\";s:4:\"like\";s:1:\"0\";s:6:\"status\";s:6:\"active\";s:8:\"timezone\";s:0:\"\";s:18:\"is_email_confirmed\";s:1:\"0\";s:16:\"secondary_groups\";N;s:6:\"fields\";N;s:4:\"name\";s:10:\"Registered\";s:4:\"cans\";s:607:\"a:33:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"aup\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}\";s:11:\"description\";s:0:\"\";s:6:\"utitle\";s:10:\"Registered\";s:4:\"role\";s:10:\"subscriber\";s:6:\"access\";s:8:\"standard\";s:5:\"color\";s:0:\"\";s:7:\"visible\";s:1:\"1\";s:9:\"secondary\";s:1:\"1\";s:9:\"groupname\";s:10:\"Registered\";s:11:\"profile_url\";s:45:\"http://localhost/community/profile/irobertfl/\";s:4:\"stat\";a:13:{s:6:\"points\";i:2;s:6:\"rating\";d:0;s:14:\"rating_procent\";i:0;s:5:\"color\";s:7:\"#d2d2d2\";s:5:\"badge\";s:16:\"far fa-star-half\";s:5:\"posts\";i:2;s:6:\"topics\";i:1;s:9:\"questions\";i:0;s:7:\"answers\";i:0;s:17:\"question_comments\";i:0;s:5:\"likes\";i:0;s:5:\"liked\";i:0;s:5:\"title\";s:10:\"New Member\";}}'),
(47, 1, '_wpf_member_obj', 'a:53:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:4:\"roco\";s:9:\"user_pass\";s:34:\"$P$BdQVpsdi5ksMfkn64Dybi8oY036G3E/\";s:13:\"user_nicename\";s:4:\"roco\";s:10:\"user_email\";s:19:\"irobertfl@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2019-01-13 21:44:12\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:4:\"roco\";s:6:\"userid\";s:1:\"1\";s:5:\"title\";s:6:\"Member\";s:8:\"username\";s:4:\"roco\";s:7:\"groupid\";s:1:\"1\";s:5:\"posts\";s:1:\"2\";s:9:\"questions\";s:1:\"0\";s:7:\"answers\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:4:\"site\";s:0:\"\";s:3:\"icq\";N;s:3:\"aim\";N;s:5:\"yahoo\";N;s:3:\"msn\";N;s:8:\"facebook\";N;s:7:\"twitter\";N;s:5:\"gtalk\";N;s:5:\"skype\";N;s:6:\"avatar\";N;s:9:\"signature\";N;s:5:\"about\";s:0:\"\";s:10:\"occupation\";N;s:8:\"location\";N;s:10:\"last_login\";s:19:\"2019-01-13 21:44:12\";s:11:\"online_time\";s:10:\"1547462894\";s:4:\"rank\";s:1:\"0\";s:4:\"like\";s:1:\"0\";s:6:\"status\";s:6:\"active\";s:8:\"timezone\";s:0:\"\";s:18:\"is_email_confirmed\";s:1:\"0\";s:16:\"secondary_groups\";N;s:6:\"fields\";N;s:4:\"name\";s:5:\"Admin\";s:4:\"cans\";s:607:\"a:33:{s:2:\"mf\";s:1:\"1\";s:2:\"ms\";s:1:\"1\";s:2:\"mt\";s:1:\"1\";s:2:\"vm\";s:1:\"1\";s:3:\"aum\";s:1:\"1\";s:3:\"vmg\";s:1:\"1\";s:2:\"mp\";s:1:\"1\";s:3:\"mth\";s:1:\"1\";s:2:\"em\";s:1:\"1\";s:2:\"bm\";s:1:\"1\";s:2:\"dm\";s:1:\"1\";s:3:\"aup\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"1\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"1\";s:3:\"vmm\";s:1:\"1\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}\";s:11:\"description\";s:0:\"\";s:6:\"utitle\";s:5:\"Admin\";s:4:\"role\";s:13:\"administrator\";s:6:\"access\";s:4:\"full\";s:5:\"color\";s:7:\"#FF3333\";s:7:\"visible\";s:1:\"1\";s:9:\"secondary\";s:1:\"0\";s:9:\"groupname\";s:5:\"Admin\";s:11:\"profile_url\";s:40:\"http://localhost/community/profile/roco/\";s:4:\"stat\";a:13:{s:6:\"points\";i:2;s:6:\"rating\";d:0;s:14:\"rating_procent\";i:0;s:5:\"color\";s:7:\"#d2d2d2\";s:5:\"badge\";s:16:\"far fa-star-half\";s:5:\"posts\";i:2;s:6:\"topics\";i:0;s:9:\"questions\";i:0;s:7:\"answers\";i:0;s:17:\"question_comments\";i:0;s:5:\"likes\";i:0;s:5:\"liked\";i:0;s:5:\"title\";s:10:\"New Member\";}}'),
(48, 3, 'nickname', 'ccurelariu'),
(49, 3, 'first_name', 'Curelariu'),
(50, 3, 'last_name', 'Cosmin'),
(51, 3, 'description', ''),
(52, 3, 'rich_editing', 'true'),
(53, 3, 'syntax_highlighting', 'true'),
(54, 3, 'comment_shortcuts', 'false'),
(55, 3, 'admin_color', 'fresh'),
(56, 3, 'use_ssl', '0'),
(57, 3, 'show_admin_bar_front', 'true'),
(58, 3, 'locale', ''),
(59, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(60, 3, 'wp_user_level', '0'),
(61, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(62, 1, 'wp_user-settings', 'libraryContent=browse'),
(63, 1, 'wp_user-settings-time', '1547463824'),
(64, 3, '_wpf_member_obj', 'a:53:{s:2:\"ID\";s:1:\"3\";s:10:\"user_login\";s:10:\"ccurelariu\";s:9:\"user_pass\";s:34:\"$P$B7XmkeOeue6NUBBUZf96d0jBYcrElX.\";s:13:\"user_nicename\";s:10:\"ccurelariu\";s:10:\"user_email\";s:20:\"ccurelariu@yahoo.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2019-01-14 10:56:29\";s:19:\"user_activation_key\";s:45:\"1547463390:$P$Bv8sgxmaa7dVEqzRqTBvE40eEip19n1\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:16:\"Curelariu Cosmin\";s:6:\"userid\";s:1:\"3\";s:5:\"title\";s:6:\"Member\";s:8:\"username\";s:10:\"ccurelariu\";s:7:\"groupid\";s:1:\"3\";s:5:\"posts\";s:1:\"0\";s:9:\"questions\";s:1:\"0\";s:7:\"answers\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:4:\"site\";s:0:\"\";s:3:\"icq\";N;s:3:\"aim\";N;s:5:\"yahoo\";N;s:3:\"msn\";N;s:8:\"facebook\";N;s:7:\"twitter\";N;s:5:\"gtalk\";N;s:5:\"skype\";N;s:6:\"avatar\";N;s:9:\"signature\";N;s:5:\"about\";s:0:\"\";s:10:\"occupation\";N;s:8:\"location\";N;s:10:\"last_login\";s:19:\"2019-01-14 10:56:29\";s:11:\"online_time\";N;s:4:\"rank\";s:1:\"0\";s:4:\"like\";s:1:\"0\";s:6:\"status\";s:6:\"active\";s:8:\"timezone\";s:0:\"\";s:18:\"is_email_confirmed\";s:1:\"0\";s:16:\"secondary_groups\";N;s:6:\"fields\";N;s:4:\"name\";s:10:\"Registered\";s:4:\"cans\";s:607:\"a:33:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"aup\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}\";s:11:\"description\";s:0:\"\";s:6:\"utitle\";s:10:\"Registered\";s:4:\"role\";s:10:\"subscriber\";s:6:\"access\";s:8:\"standard\";s:5:\"color\";s:0:\"\";s:7:\"visible\";s:1:\"1\";s:9:\"secondary\";s:1:\"1\";s:9:\"groupname\";s:10:\"Registered\";s:11:\"profile_url\";s:46:\"http://localhost/community/profile/ccurelariu/\";s:4:\"stat\";a:13:{s:6:\"points\";i:0;s:6:\"rating\";i:0;s:14:\"rating_procent\";i:0;s:5:\"color\";s:7:\"#d2d2d2\";s:5:\"badge\";s:16:\"far fa-star-half\";s:5:\"posts\";i:0;s:6:\"topics\";i:0;s:9:\"questions\";i:0;s:7:\"answers\";i:0;s:17:\"question_comments\";i:0;s:5:\"likes\";i:0;s:5:\"liked\";i:0;s:5:\"title\";s:10:\"New Member\";}}'),
(65, 4, 'nickname', 'mody'),
(66, 4, 'first_name', 'Mody'),
(67, 4, 'last_name', ''),
(68, 4, 'description', ''),
(69, 4, 'rich_editing', 'true'),
(70, 4, 'syntax_highlighting', 'true'),
(71, 4, 'comment_shortcuts', 'false'),
(72, 4, 'admin_color', 'fresh'),
(73, 4, 'use_ssl', '0'),
(74, 4, 'show_admin_bar_front', 'true'),
(75, 4, 'locale', ''),
(76, 4, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(77, 4, 'wp_user_level', '7'),
(78, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(79, 4, 'session_tokens', 'a:1:{s:64:\"621d86f458814d7ffc4ed1fbe60b9fd16f6bd78f77c2353e89e0af0134351d9d\";a:4:{s:10:\"expiration\";i:1548686038;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547476438;}}'),
(80, 4, '_wpf_login_times', '1'),
(81, 4, '_wpf_member_obj', 'a:53:{s:2:\"ID\";s:1:\"4\";s:10:\"user_login\";s:4:\"mody\";s:9:\"user_pass\";s:34:\"$P$BVNyEDdPGKK5SJ.H2JRFqHyjNhmZvW1\";s:13:\"user_nicename\";s:4:\"mody\";s:10:\"user_email\";s:27:\"mody-wordpess1323@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2019-01-14 14:33:20\";s:19:\"user_activation_key\";s:45:\"1547476401:$P$BRo7QKtiXDGx3UaPyx.e7DzGb45HRR1\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:4:\"Mody\";s:6:\"userid\";s:1:\"4\";s:5:\"title\";s:6:\"Member\";s:8:\"username\";s:4:\"mody\";s:7:\"groupid\";s:1:\"2\";s:5:\"posts\";s:1:\"0\";s:9:\"questions\";s:1:\"0\";s:7:\"answers\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:4:\"site\";s:0:\"\";s:3:\"icq\";N;s:3:\"aim\";N;s:5:\"yahoo\";N;s:3:\"msn\";N;s:8:\"facebook\";N;s:7:\"twitter\";N;s:5:\"gtalk\";N;s:5:\"skype\";N;s:6:\"avatar\";N;s:9:\"signature\";N;s:5:\"about\";s:0:\"\";s:10:\"occupation\";N;s:8:\"location\";N;s:10:\"last_login\";s:19:\"2019-01-14 14:33:58\";s:11:\"online_time\";N;s:4:\"rank\";s:1:\"0\";s:4:\"like\";s:1:\"0\";s:6:\"status\";s:6:\"active\";s:8:\"timezone\";s:0:\"\";s:18:\"is_email_confirmed\";s:1:\"0\";s:16:\"secondary_groups\";N;s:6:\"fields\";N;s:4:\"name\";s:9:\"Moderator\";s:4:\"cans\";s:607:\"a:33:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"1\";s:3:\"vmg\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:2:\"bm\";s:1:\"1\";s:2:\"dm\";s:1:\"1\";s:3:\"aup\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"1\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"1\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}\";s:11:\"description\";s:0:\"\";s:6:\"utitle\";s:9:\"Moderator\";s:4:\"role\";s:6:\"editor\";s:6:\"access\";s:9:\"moderator\";s:5:\"color\";s:7:\"#0066FF\";s:7:\"visible\";s:1:\"1\";s:9:\"secondary\";s:1:\"0\";s:9:\"groupname\";s:9:\"Moderator\";s:11:\"profile_url\";s:40:\"http://localhost/community/profile/mody/\";s:4:\"stat\";a:13:{s:6:\"points\";i:0;s:6:\"rating\";i:0;s:14:\"rating_procent\";i:0;s:5:\"color\";s:7:\"#d2d2d2\";s:5:\"badge\";s:16:\"far fa-star-half\";s:5:\"posts\";i:0;s:6:\"topics\";i:0;s:9:\"questions\";i:0;s:7:\"answers\";i:0;s:17:\"question_comments\";i:0;s:5:\"likes\";i:0;s:5:\"liked\";i:0;s:5:\"title\";s:10:\"New Member\";}}'),
(82, 4, 'wpf_read_topics', 'a:1:{i:1;s:1:\"4\";}'),
(83, 4, 'wpf_read_forums', 'a:1:{i:5;s:1:\"4\";}'),
(84, 2, 'session_tokens', 'a:1:{s:64:\"1968e07d5fbac0c5c6ca31bdaa918ca85889cf37c9db78153ed940fdbff1376d\";a:4:{s:10:\"expiration\";i:1548834342;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547624742;}}');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'roco', '$P$BdQVpsdi5ksMfkn64Dybi8oY036G3E/', 'roco', 'irobertfl@gmail.com', '', '2019-01-13 21:44:12', '', 0, 'roco'),
(2, 'irobertfl', '$P$BpYpvGVhJLJ8mQWpJ4pXvZ4ljQz.BM.', 'irobertfl', 'irobertfl23@hotmail.com', '', '2019-01-14 10:41:04', '1547462465:$P$BZW5TLU.IWzhKzarInqYfVi.8.nH4..', 0, 'Ionescu Robert Florin'),
(3, 'ccurelariu', '$P$B7XmkeOeue6NUBBUZf96d0jBYcrElX.', 'ccurelariu', 'ccurelariu@yahoo.com', '', '2019-01-14 10:56:29', '1547463390:$P$Bv8sgxmaa7dVEqzRqTBvE40eEip19n1', 0, 'Curelariu Cosmin'),
(4, 'mody', '$P$BVNyEDdPGKK5SJ.H2JRFqHyjNhmZvW1', 'mody', 'mody-wordpess1323@gmail.com', '', '2019-01-14 14:33:20', '1547476401:$P$BRo7QKtiXDGx3UaPyx.e7DzGb45HRR1', 0, 'Mody');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_accesses`
--

CREATE TABLE `wp_wpforo_accesses` (
  `accessid` int(10) UNSIGNED NOT NULL,
  `access` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cans` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'forum permissions'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_accesses`
--

INSERT INTO `wp_wpforo_accesses` (`accessid`, `access`, `title`, `cans`) VALUES
(1, 'no_access', 'No access', 'a:35:{s:2:\"vf\";i:0;s:2:\"ct\";i:0;s:2:\"vt\";i:0;s:2:\"et\";i:0;s:2:\"dt\";i:0;s:2:\"cr\";i:0;s:2:\"vr\";i:0;s:2:\"er\";i:0;s:2:\"dr\";i:0;s:3:\"tag\";i:0;s:3:\"eot\";i:0;s:3:\"eor\";i:0;s:3:\"dot\";i:0;s:3:\"dor\";i:0;s:2:\"sb\";i:0;s:1:\"l\";i:0;s:1:\"r\";i:0;s:1:\"s\";i:0;s:2:\"au\";i:0;s:1:\"p\";i:0;s:2:\"op\";i:0;s:2:\"vp\";i:0;s:2:\"sv\";i:0;s:3:\"osv\";i:0;s:1:\"v\";i:0;s:1:\"a\";i:0;s:2:\"va\";i:0;s:2:\"at\";i:0;s:3:\"oat\";i:0;s:3:\"aot\";i:0;s:3:\"cot\";i:0;s:2:\"mt\";i:0;s:3:\"ccp\";i:0;s:3:\"cvp\";i:0;s:4:\"cvpr\";i:0;}'),
(2, 'read_only', 'Read only access', 'a:35:{s:2:\"vf\";i:1;s:2:\"ct\";i:0;s:2:\"vt\";i:1;s:2:\"et\";i:0;s:2:\"dt\";i:0;s:2:\"cr\";i:0;s:2:\"vr\";i:1;s:2:\"er\";i:0;s:2:\"dr\";i:0;s:3:\"tag\";i:0;s:3:\"eot\";i:0;s:3:\"eor\";i:0;s:3:\"dot\";i:0;s:3:\"dor\";i:0;s:2:\"sb\";i:1;s:1:\"l\";i:0;s:1:\"r\";i:0;s:1:\"s\";i:0;s:2:\"au\";i:0;s:1:\"p\";i:0;s:2:\"op\";i:0;s:2:\"vp\";i:0;s:2:\"sv\";i:0;s:3:\"osv\";i:0;s:1:\"v\";i:0;s:1:\"a\";i:0;s:2:\"va\";i:1;s:2:\"at\";i:0;s:3:\"oat\";i:0;s:3:\"aot\";i:0;s:3:\"cot\";i:0;s:2:\"mt\";i:0;s:3:\"ccp\";i:0;s:3:\"cvp\";i:0;s:4:\"cvpr\";i:1;}'),
(3, 'standard', 'Standard access', 'a:35:{s:2:\"vf\";i:1;s:2:\"ct\";i:1;s:2:\"vt\";i:1;s:2:\"et\";i:0;s:2:\"dt\";i:0;s:2:\"cr\";i:1;s:2:\"vr\";i:1;s:2:\"er\";i:0;s:2:\"dr\";i:0;s:3:\"tag\";i:1;s:3:\"eot\";i:1;s:3:\"eor\";i:1;s:3:\"dot\";i:1;s:3:\"dor\";i:1;s:2:\"sb\";i:1;s:1:\"l\";i:1;s:1:\"r\";i:1;s:1:\"s\";i:0;s:2:\"au\";i:0;s:1:\"p\";i:0;s:2:\"op\";i:1;s:2:\"vp\";i:0;s:2:\"sv\";i:0;s:3:\"osv\";i:1;s:1:\"v\";i:1;s:1:\"a\";i:1;s:2:\"va\";i:1;s:2:\"at\";i:0;s:3:\"oat\";i:1;s:3:\"aot\";i:1;s:3:\"cot\";i:0;s:2:\"mt\";i:0;s:3:\"ccp\";i:1;s:3:\"cvp\";i:1;s:4:\"cvpr\";i:1;}'),
(4, 'moderator', 'Moderator access', 'a:35:{s:2:\"vf\";i:1;s:2:\"ct\";i:1;s:2:\"vt\";i:1;s:2:\"et\";i:1;s:2:\"dt\";i:1;s:2:\"cr\";i:1;s:2:\"vr\";i:1;s:2:\"er\";i:1;s:2:\"dr\";i:1;s:3:\"tag\";i:1;s:3:\"eot\";i:1;s:3:\"eor\";i:1;s:3:\"dot\";i:1;s:3:\"dor\";i:1;s:2:\"sb\";i:1;s:1:\"l\";i:1;s:1:\"r\";i:1;s:1:\"s\";i:1;s:2:\"au\";i:1;s:1:\"p\";i:1;s:2:\"op\";i:1;s:2:\"vp\";i:1;s:2:\"sv\";i:1;s:3:\"osv\";i:1;s:1:\"v\";i:1;s:1:\"a\";i:1;s:2:\"va\";i:1;s:2:\"at\";i:1;s:3:\"oat\";i:1;s:3:\"aot\";i:1;s:3:\"cot\";i:1;s:2:\"mt\";i:1;s:3:\"ccp\";i:1;s:3:\"cvp\";i:1;s:4:\"cvpr\";i:1;}'),
(5, 'full', 'Full access', 'a:35:{s:2:\"vf\";i:1;s:2:\"ct\";i:1;s:2:\"vt\";i:1;s:2:\"et\";i:1;s:2:\"dt\";i:1;s:2:\"cr\";i:1;s:2:\"vr\";i:1;s:2:\"er\";i:1;s:2:\"dr\";i:1;s:3:\"tag\";i:1;s:3:\"eot\";i:1;s:3:\"eor\";i:1;s:3:\"dot\";i:1;s:3:\"dor\";i:1;s:2:\"sb\";i:1;s:1:\"l\";i:1;s:1:\"r\";i:1;s:1:\"s\";i:1;s:2:\"au\";i:1;s:1:\"p\";i:1;s:2:\"op\";i:1;s:2:\"vp\";i:1;s:2:\"sv\";i:1;s:3:\"osv\";i:1;s:1:\"v\";i:1;s:1:\"a\";i:1;s:2:\"va\";i:1;s:2:\"at\";i:1;s:3:\"oat\";i:1;s:3:\"aot\";i:1;s:3:\"cot\";i:1;s:2:\"mt\";i:1;s:3:\"ccp\";i:1;s:3:\"cvp\";i:1;s:4:\"cvpr\";i:1;}');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_activity`
--

CREATE TABLE `wp_wpforo_activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemid` bigint(20) UNSIGNED NOT NULL,
  `itemtype` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemid_second` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_forums`
--

CREATE TABLE `wp_wpforo_forums` (
  `forumid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_topicid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_postid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topics` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_cat` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cat_layout` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_forums`
--

INSERT INTO `wp_wpforo_forums` (`forumid`, `title`, `slug`, `description`, `parentid`, `icon`, `last_topicid`, `last_postid`, `last_userid`, `last_post_date`, `topics`, `posts`, `permissions`, `meta_key`, `meta_desc`, `status`, `is_cat`, `cat_layout`, `order`) VALUES
(19, 'Off-topic', 'off-topic', '', 0, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 1, 1, 24),
(20, 'Aplicatii', 'aplicatii', '', 0, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 1, 1, 17),
(3, 'PC', 'pc', 'Discutii legate de componente sau probleme cu PC-uri', 0, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 1, 1, 1),
(4, 'Intel', 'procesor-intel', '', 12, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 3),
(5, 'AMD', 'procesor-amd', '', 12, 'fas fa-comments', 1, 4, 1, '2019-01-14 10:48:14', 1, 4, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 4),
(18, 'Altele', 'altele', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 14),
(17, 'Carcase', 'carcase', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 12),
(6, 'Laptop', 'laptop', '', 0, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 1, 1, 15),
(7, 'Mobile', 'mobile', '', 0, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 1, 1, 16),
(8, 'RAM', 'ram', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 10),
(9, 'UPS', 'ups', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 11),
(10, 'Medii de stocare', 'medii-de-stocare', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 9),
(11, 'PC Building', 'pc-building', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 13),
(12, 'Procesoare', 'procesoare', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 2),
(13, 'Placi video', 'placi-video', '', 3, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 5),
(14, 'AMD', 'amd', '', 13, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 6),
(15, 'Nvidia', 'nvidia', '', 13, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 7),
(16, 'Intel', 'intel', '', 13, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 8),
(21, 'Windows', 'windows', '', 20, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 18),
(22, 'iOS', 'ios', '', 20, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 22),
(23, 'MacOS', 'macos', '', 20, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 20),
(24, 'Linux', 'linux', '', 20, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 19),
(25, 'Android', 'android', '', 20, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 21),
(26, 'Altele', 'aplicatii-altele', '', 20, 'fas fa-comments', 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}', '', '', 1, 0, 1, 23);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_languages`
--

CREATE TABLE `wp_wpforo_languages` (
  `langid` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_languages`
--

INSERT INTO `wp_wpforo_languages` (`langid`, `name`) VALUES
(1, 'English');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_likes`
--

CREATE TABLE `wp_wpforo_likes` (
  `likeid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `postid` int(10) UNSIGNED NOT NULL,
  `post_userid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_phrases`
--

CREATE TABLE `wp_wpforo_phrases` (
  `phraseid` int(10) UNSIGNED NOT NULL,
  `langid` int(10) UNSIGNED NOT NULL,
  `phrase_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phrase_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'wpforo'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_phrases`
--

INSERT INTO `wp_wpforo_phrases` (`phraseid`, `langid`, `phrase_key`, `phrase_value`, `package`) VALUES
(1, 1, '%s and %s liked', '%s and %s liked', 'wpforo'),
(2, 1, '%s liked', '%s liked', 'wpforo'),
(3, 1, '%s, %s and %s liked', '%s, %s and %s liked', 'wpforo'),
(4, 1, '%s, %s, %s and %d people liked', '%s, %s, %s and %d people liked', 'wpforo'),
(5, 1, 'AOL IM', 'AOL IM', 'wpforo'),
(6, 1, 'About Me', 'About Me', 'wpforo'),
(7, 1, 'Access add error', 'Access add error', 'wpforo'),
(8, 1, 'Access delete error', 'Access delete error', 'wpforo'),
(9, 1, 'Access edit error', 'Access edit error', 'wpforo'),
(10, 1, 'Access successfully deleted', 'Access successfully deleted', 'wpforo'),
(11, 1, 'Account', 'Account', 'wpforo'),
(12, 1, 'Activity', 'Activity', 'wpforo'),
(13, 1, 'Add Topic error: No forum selected', 'Add Topic error: No forum selected', 'wpforo'),
(14, 1, 'Add a comment', 'Add a comment', 'wpforo'),
(15, 1, 'Add topic', 'Add topic', 'wpforo'),
(16, 1, 'All Checked topics successfully deleted', 'All Checked topics successfully deleted', 'wpforo'),
(17, 1, 'Answer', 'Answer', 'wpforo'),
(18, 1, 'Answer to', 'Answer to', 'wpforo'),
(19, 1, 'Answers', 'Answers', 'wpforo'),
(20, 1, 'Any Date', 'Any Date', 'wpforo'),
(21, 1, 'Ascending order', 'Ascending order', 'wpforo'),
(22, 1, 'Attach file:', 'Attach file:', 'wpforo'),
(23, 1, 'Avatar', 'Avatar', 'wpforo'),
(24, 1, 'Can\\\'t add forum', 'Can\\\'t add forum', 'wpforo'),
(25, 1, 'Can\\\'t add new language', 'Can\\\'t add new language', 'wpforo'),
(26, 1, 'Can\\\'t delete this Usergroup', 'Can\\\'t delete this Usergroup', 'wpforo'),
(27, 1, 'Can\\\'t send confirmation email', 'Can\\\'t send confirmation email', 'wpforo'),
(28, 1, 'Can\\\'t send report email', 'Can\\\'t send report email', 'wpforo'),
(29, 1, 'Can\\\'t subscribe to this item', 'Can\\\'t subscribe to this item', 'wpforo'),
(30, 1, 'Can\\\'t write a post: This topic is closed', 'Can\\\'t write a post: This topic is closed', 'wpforo'),
(31, 1, 'Can`t upload file', 'Can`t upload file', 'wpforo'),
(32, 1, 'Cannot update forum hierarchy', 'Cannot update forum hierarchy', 'wpforo'),
(33, 1, 'Cannot update post data', 'Cannot update post data', 'wpforo'),
(34, 1, 'Change password', 'Change password', 'wpforo'),
(35, 1, 'Choose Target Forum', 'Choose Target Forum', 'wpforo'),
(36, 1, 'Comments', 'Comments', 'wpforo'),
(37, 1, 'Confirm my subscription', 'Confirm my subscription', 'wpforo'),
(38, 1, 'Could not be unsubscribe from this item', 'Could not be unsubscribe from this item', 'wpforo'),
(39, 1, 'Date', 'Date', 'wpforo'),
(40, 1, 'Delete', 'Delete', 'wpforo'),
(41, 1, 'Descending order', 'Descending order', 'wpforo'),
(42, 1, 'Display Name', 'Display Name', 'wpforo'),
(43, 1, 'Edit', 'Edit', 'wpforo'),
(44, 1, 'Edited:', 'Edited:', 'wpforo'),
(45, 1, 'Email', 'Email', 'wpforo'),
(46, 1, 'Email address exists. Please insert another.', 'Email address exists. Please insert another.', 'wpforo'),
(47, 1, 'Enter title here', 'Enter title here', 'wpforo'),
(48, 1, 'Error: Forum is not found', 'Error: Forum is not found', 'wpforo'),
(49, 1, 'Error: No topic selected', 'Error: No topic selected', 'wpforo'),
(50, 1, 'Error: Topic is not found', 'Error: Topic is not found', 'wpforo'),
(51, 1, 'Error: please insert some text to report.', 'Error: please insert some text to report.', 'wpforo'),
(52, 1, 'Facebook', 'Facebook', 'wpforo'),
(53, 1, 'Failed to write file to disk', 'Failed to write file to disk', 'wpforo'),
(54, 1, 'Features successfully updated', 'Features successfully updated', 'wpforo'),
(55, 1, 'Features successfully updated, but previous value not changed', 'Features successfully updated, but previous value not changed', 'wpforo'),
(56, 1, 'File type is not allowed', 'File type is not allowed', 'wpforo'),
(57, 1, 'File upload stopped by extension', 'File upload stopped by extension', 'wpforo'),
(58, 1, 'Find Posts by User', 'Find Posts by User', 'wpforo'),
(59, 1, 'Find Topics Started by User', 'Find Topics Started by User', 'wpforo'),
(60, 1, 'First post and replies', 'First post and replies', 'wpforo'),
(61, 1, 'Forum', 'Forum', 'wpforo'),
(62, 1, 'Forum - Login', 'Forum - Login', 'wpforo'),
(63, 1, 'Forum - Page Not Found', 'Forum - Page Not Found', 'wpforo'),
(64, 1, 'Forum - Registration', 'Forum - Registration', 'wpforo'),
(65, 1, 'Forum Base URL successfully updated', 'Forum Base URL successfully updated', 'wpforo'),
(66, 1, 'Forum Home', 'Forum Home', 'wpforo'),
(67, 1, 'Forum Members', 'Forum Members', 'wpforo'),
(68, 1, 'Forum Profile', 'Forum Profile', 'wpforo'),
(69, 1, 'Forum RSS Feed', 'Forum RSS Feed', 'wpforo'),
(70, 1, 'Forum Statistics', 'Forum Statistics', 'wpforo'),
(71, 1, 'Forum deleting error', 'Forum deleting error', 'wpforo'),
(72, 1, 'Forum hierarchy successfully updated', 'Forum hierarchy successfully updated', 'wpforo'),
(73, 1, 'Forum is empty', 'Forum is empty', 'wpforo'),
(74, 1, 'Forum is successfully merged', 'Forum is successfully merged', 'wpforo'),
(75, 1, 'Forum merging error', 'Forum merging error', 'wpforo'),
(76, 1, 'Forum options successfully updated', 'Forum options successfully updated', 'wpforo'),
(77, 1, 'Forum options successfully updated, but previous value not changed', 'Forum options successfully updated, but previous value not changed', 'wpforo'),
(78, 1, 'Forum successfully updated', 'Forum successfully updated', 'wpforo'),
(79, 1, 'Forum update error', 'Forum update error', 'wpforo'),
(80, 1, 'Forums', 'Forums', 'wpforo'),
(81, 1, 'General options successfully updated', 'General options successfully updated', 'wpforo'),
(82, 1, 'Group', 'Group', 'wpforo'),
(83, 1, 'Google+', 'Google+', 'wpforo'),
(84, 1, 'Guest', 'Guest', 'wpforo'),
(85, 1, 'ICQ', 'ICQ', 'wpforo'),
(86, 1, 'Illegal character in username.', 'Illegal character in username.', 'wpforo'),
(87, 1, 'Insert member name or email', 'Insert member name or email', 'wpforo'),
(88, 1, 'Insert your Email address.', 'Insert your Email address.', 'wpforo'),
(89, 1, 'Invalid Email address', 'Invalid Email address', 'wpforo'),
(90, 1, 'Invalid request!', 'Invalid request!', 'wpforo'),
(91, 1, 'Joined', 'Joined', 'wpforo'),
(92, 1, 'Last 24 hours', 'Last 24 hours', 'wpforo'),
(93, 1, 'Last 3 Months', 'Last 3 Months', 'wpforo'),
(94, 1, 'Last 6 Months', 'Last 6 Months', 'wpforo'),
(95, 1, 'Last Active', 'Last Active', 'wpforo'),
(96, 1, 'Last Month', 'Last Month', 'wpforo'),
(97, 1, 'Last Post', 'Last Post', 'wpforo'),
(98, 1, 'Last Post Info', 'Last Post Info', 'wpforo'),
(99, 1, 'Last Week', 'Last Week', 'wpforo'),
(100, 1, 'Last Year ago', 'Last Year ago', 'wpforo'),
(101, 1, 'Last post by %s', 'Last post by %s', 'wpforo'),
(102, 1, 'Latest Post', 'Latest Post', 'wpforo'),
(103, 1, 'Leave a reply', 'Leave a reply', 'wpforo'),
(104, 1, 'Length must be between 3 characters and 15 characters.', 'Length must be between 3 characters and 15 characters.', 'wpforo'),
(105, 1, 'Liked', 'Liked', 'wpforo'),
(106, 1, 'Location', 'Location', 'wpforo'),
(107, 1, 'Login', 'Login', 'wpforo'),
(108, 1, 'Logout', 'Logout', 'wpforo'),
(109, 1, 'Lost your password?', 'Lost your password?', 'wpforo'),
(110, 1, 'MSN', 'MSN', 'wpforo'),
(111, 1, 'Maximum allowed file size is', 'Maximum allowed file size is', 'wpforo'),
(112, 1, 'Member Activity', 'Member Activity', 'wpforo'),
(113, 1, 'Member Information', 'Member Information', 'wpforo'),
(114, 1, 'Member Rating', 'Member Rating', 'wpforo'),
(115, 1, 'Member Rating Badge', 'Member Rating Badge', 'wpforo'),
(116, 1, 'Member options successfully updated', 'Member options successfully updated', 'wpforo'),
(117, 1, 'Member options successfully updated, but previous value not changed', 'Member options successfully updated, but previous value not changed', 'wpforo'),
(118, 1, 'Members', 'Members', 'wpforo'),
(119, 1, 'Members not found', 'Members not found', 'wpforo'),
(120, 1, 'Message has been sent', 'Message has been sent', 'wpforo'),
(121, 1, 'Messages', 'Messages', 'wpforo'),
(122, 1, 'Missing a temporary folder', 'Missing a temporary folder', 'wpforo'),
(123, 1, 'Move', 'Move', 'wpforo'),
(124, 1, 'Move Topic', 'Move Topic', 'wpforo'),
(125, 1, 'Must be minimum 6 characters.', 'Must be minimum 6 characters.', 'wpforo'),
(126, 1, 'My Profile', 'My Profile', 'wpforo'),
(127, 1, 'New language successfully added and changed wpforo language to new language', 'New language successfully added and changed wpforo language to new language', 'wpforo'),
(128, 1, 'No Posts found for update', 'No Posts found for update', 'wpforo'),
(129, 1, 'No activity found for this member.', 'No activity found for this member.', 'wpforo'),
(130, 1, 'No file was uploaded', 'No file was uploaded', 'wpforo'),
(131, 1, 'No forums were found here.', 'No forums were found here.', 'wpforo'),
(132, 1, 'No online members at the moment', 'No online members at the moment', 'wpforo'),
(133, 1, 'No subscriptions found for this member.', 'No subscriptions found for this member.', 'wpforo'),
(134, 1, 'No topics were found here', 'No topics were found here', 'wpforo'),
(135, 1, 'Occupation', 'Occupation', 'wpforo'),
(136, 1, 'Offline', 'Offline', 'wpforo'),
(137, 1, 'Online', 'Online', 'wpforo'),
(138, 1, 'Oops! The page you requested was not found!', 'Oops! The page you requested was not found!', 'wpforo'),
(139, 1, 'Our newest member', 'Our newest member', 'wpforo'),
(140, 1, 'Page', 'Page', 'wpforo'),
(141, 1, 'Password', 'Password', 'wpforo'),
(142, 1, 'Password length must be between 6 characters and 20 characters.', 'Password length must be between 6 characters and 20 characters.', 'wpforo'),
(143, 1, 'Password mismatch.', 'Password mismatch.', 'wpforo'),
(144, 1, 'Permission denied', 'Permission denied', 'wpforo'),
(145, 1, 'Permission denied for add forum', 'Permission denied for add forum', 'wpforo'),
(146, 1, 'Permission denied for delete forum', 'Permission denied for delete forum', 'wpforo'),
(147, 1, 'Permission denied for edit forum', 'Permission denied for edit forum', 'wpforo'),
(148, 1, 'Permission denied for this action', 'Permission denied for this action', 'wpforo'),
(149, 1, 'Phrase add error', 'Phrase add error', 'wpforo'),
(150, 1, 'Phrase adding error', 'Phrase adding error', 'wpforo'),
(151, 1, 'Phrase successfully added', 'Phrase successfully added', 'wpforo'),
(152, 1, 'Phrase successfully updates', 'Phrase successfully updates', 'wpforo'),
(153, 1, 'Phrase update error', 'Phrase update error', 'wpforo'),
(154, 1, 'Please %s or %s', 'Please %s or %s', 'wpforo'),
(155, 1, 'Please insert required fields!', 'Please insert required fields!', 'wpforo'),
(156, 1, 'Post Title', 'Post Title', 'wpforo'),
(157, 1, 'Post delete error', 'Post delete error', 'wpforo'),
(158, 1, 'Post link', 'Post link', 'wpforo'),
(159, 1, 'Post options successfully updated', 'Post options successfully updated', 'wpforo'),
(160, 1, 'Post options successfully updated, but previous value not changed', 'Post options successfully updated, but previous value not changed', 'wpforo'),
(161, 1, 'Posted', 'Posted', 'wpforo'),
(162, 1, 'Posted by', 'Posted by', 'wpforo'),
(163, 1, 'Posts', 'Posts', 'wpforo'),
(164, 1, 'Powered by', 'Powered by', 'wpforo'),
(165, 1, 'Question Comments', 'Question Comments', 'wpforo'),
(166, 1, 'Questions', 'Questions', 'wpforo'),
(167, 1, 'Quote', 'Quote', 'wpforo'),
(168, 1, 'RE', 'RE', 'wpforo'),
(169, 1, 'REPLY:', 'REPLY:', 'wpforo'),
(170, 1, 'RSS', 'RSS', 'wpforo'),
(171, 1, 'Rating', 'Rating', 'wpforo'),
(172, 1, 'Rating Badge', 'Rating Badge', 'wpforo'),
(173, 1, 'Received Likes', 'Received Likes', 'wpforo'),
(174, 1, 'Recent Questions', 'Recent Questions', 'wpforo'),
(175, 1, 'Recent Topics', 'Recent Topics', 'wpforo'),
(176, 1, 'Register', 'Register', 'wpforo'),
(177, 1, 'Registered date', 'Registered date', 'wpforo'),
(178, 1, 'Registration Error', 'Registration Error', 'wpforo'),
(179, 1, 'Relevancy', 'Relevancy', 'wpforo'),
(180, 1, 'Remember Me', 'Remember Me', 'wpforo'),
(181, 1, 'Replies', 'Replies', 'wpforo'),
(182, 1, 'Replies not found', 'Replies not found', 'wpforo'),
(183, 1, 'Reply', 'Reply', 'wpforo'),
(184, 1, 'Reply request error', 'Reply request error', 'wpforo'),
(185, 1, 'Report', 'Report', 'wpforo'),
(186, 1, 'Report to Administration', 'Report to Administration', 'wpforo'),
(187, 1, 'Result Info', 'Result Info', 'wpforo'),
(188, 1, 'Save', 'Save', 'wpforo'),
(189, 1, 'Save Changes', 'Save Changes', 'wpforo'),
(190, 1, 'Search', 'Search', 'wpforo'),
(191, 1, 'Search Entire Posts', 'Search Entire Posts', 'wpforo'),
(192, 1, 'Search Phrase', 'Search Phrase', 'wpforo'),
(193, 1, 'Search Titles Only', 'Search Titles Only', 'wpforo'),
(194, 1, 'Search Type', 'Search Type', 'wpforo'),
(195, 1, 'Search in Forums', 'Search in Forums', 'wpforo'),
(196, 1, 'Search in date period', 'Search in date period', 'wpforo'),
(197, 1, 'Search result for', 'Search result for', 'wpforo'),
(198, 1, 'Search...', 'Search...', 'wpforo'),
(199, 1, 'Select Page', 'Select Page', 'wpforo'),
(200, 1, 'Send Report', 'Send Report', 'wpforo'),
(201, 1, 'Set Topic Sticky', 'Set Topic Sticky', 'wpforo'),
(202, 1, 'Shop Account', 'Shop Account', 'wpforo'),
(203, 1, 'Sign In', 'Sign In', 'wpforo'),
(204, 1, 'Signature', 'Signature', 'wpforo'),
(205, 1, 'Site Profile', 'Site Profile', 'wpforo'),
(206, 1, 'Skype', 'Skype', 'wpforo'),
(207, 1, 'Social Networks', 'Social Networks', 'wpforo'),
(208, 1, 'Something wrong with profile data.', 'Something wrong with profile data.', 'wpforo'),
(209, 1, 'Sorry, something wrong with your data.', 'Sorry, something wrong with your data.', 'wpforo'),
(210, 1, 'Sort Search Results by', 'Sort Search Results by', 'wpforo'),
(211, 1, 'Specify avatar by URL', 'Specify avatar by URL', 'wpforo'),
(212, 1, 'Subforums', 'Subforums', 'wpforo'),
(213, 1, 'Subscribe for new replies', 'Subscribe for new replies', 'wpforo'),
(214, 1, 'Subscribe for new topics', 'Subscribe for new topics', 'wpforo'),
(215, 1, 'Subscribe options successfully updated', 'Subscribe options successfully updated', 'wpforo'),
(216, 1, 'Subscribe options successfully updated, but previous value not changed', 'Subscribe options successfully updated, but previous value not changed', 'wpforo'),
(217, 1, 'Subscriptions', 'Subscriptions', 'wpforo'),
(218, 1, 'Success!', 'Success!', 'wpforo'),
(219, 1, 'Success! Thank you. Please check your email and click confirmation link below to complete this step.', 'Success! Thank you. Please check your email and click confirmation link below to complete this step.', 'wpforo'),
(220, 1, 'Successfully updated', 'Successfully updated', 'wpforo'),
(221, 1, 'Successfully voted', 'Successfully voted', 'wpforo'),
(222, 1, 'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form', 'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form', 'wpforo'),
(223, 1, 'The uploaded file exceeds the upload_max_filesize directive in php.ini', 'The uploaded file exceeds the upload_max_filesize directive in php.ini', 'wpforo'),
(224, 1, 'The uploaded file size is too big', 'The uploaded file size is too big', 'wpforo'),
(225, 1, 'The uploaded file was only partially uploaded', 'The uploaded file was only partially uploaded', 'wpforo'),
(226, 1, 'Theme options successfully updated', 'Theme options successfully updated', 'wpforo'),
(227, 1, 'This email address is already registered. Please insert another.', 'This email address is already registered. Please insert another.', 'wpforo'),
(228, 1, 'This post successfully deleted', 'This post successfully deleted', 'wpforo'),
(229, 1, 'This post successfully edited', 'This post successfully edited', 'wpforo'),
(230, 1, 'This topic successfully deleted', 'This topic successfully deleted', 'wpforo'),
(231, 1, 'Timezone', 'Timezone', 'wpforo'),
(232, 1, 'Title', 'Title', 'wpforo'),
(233, 1, 'Topic Move Error', 'Topic Move Error', 'wpforo'),
(234, 1, 'Topic RSS Feed', 'Topic RSS Feed', 'wpforo'),
(235, 1, 'Topic Title', 'Topic Title', 'wpforo'),
(236, 1, 'Topic add error', 'Topic add error', 'wpforo'),
(237, 1, 'Topic delete error', 'Topic delete error', 'wpforo'),
(238, 1, 'Topic edit error', 'Topic edit error', 'wpforo'),
(239, 1, 'Topic not found.', 'Topic not found.', 'wpforo'),
(240, 1, 'Topic successfully moved', 'Topic successfully moved', 'wpforo'),
(241, 1, 'Topic successfully updated', 'Topic successfully updated', 'wpforo'),
(242, 1, 'Topics', 'Topics', 'wpforo'),
(243, 1, 'Topics delete error', 'Topics delete error', 'wpforo'),
(244, 1, 'Twitter', 'Twitter', 'wpforo'),
(245, 1, 'Unknown upload error', 'Unknown upload error', 'wpforo'),
(246, 1, 'Unsubscribe', 'Unsubscribe', 'wpforo'),
(247, 1, 'Upload an avatar', 'Upload an avatar', 'wpforo'),
(248, 1, 'Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.', 'Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.', 'wpforo'),
(249, 1, 'User', 'User', 'wpforo'),
(250, 1, 'User Group', 'User Group', 'wpforo'),
(251, 1, 'User delete error', 'User delete error', 'wpforo'),
(252, 1, 'User group add error', 'User group add error', 'wpforo'),
(253, 1, 'User group edit error', 'User group edit error', 'wpforo'),
(254, 1, 'User group successfully added', 'User group successfully added', 'wpforo'),
(255, 1, 'User group successfully edited', 'User group successfully edited', 'wpforo'),
(256, 1, 'User successfully deleted from wpforo', 'User successfully deleted from wpforo', 'wpforo'),
(257, 1, 'Usergroup has been successfully deleted.', 'Usergroup has been successfully deleted.', 'wpforo'),
(258, 1, 'Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\\\'ve chosen', 'Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\\\'ve chosen', 'wpforo'),
(259, 1, 'Username', 'Username', 'wpforo'),
(260, 1, 'Username exists. Please insert another.', 'Username exists. Please insert another.', 'wpforo'),
(261, 1, 'Username is missed.', 'Username is missed.', 'wpforo'),
(262, 1, 'Username length must be between 3 characters and 15 characters.', 'Username length must be between 3 characters and 15 characters.', 'wpforo'),
(263, 1, 'View entire post', 'View entire post', 'wpforo'),
(264, 1, 'View the latest post', 'View the latest post', 'wpforo'),
(265, 1, 'Views', 'Views', 'wpforo'),
(266, 1, 'Votes', 'Votes', 'wpforo'),
(267, 1, 'Website', 'Website', 'wpforo'),
(268, 1, 'Welcome to our Community!', 'Welcome to our Community!', 'wpforo'),
(269, 1, 'Wordpress avatar system', 'Wordpress avatar system', 'wpforo'),
(270, 1, 'Working', 'Working', 'wpforo'),
(271, 1, 'Write message', 'Write message', 'wpforo'),
(272, 1, 'Wrong post data', 'Wrong post data', 'wpforo'),
(273, 1, 'Yahoo', 'Yahoo', 'wpforo'),
(274, 1, 'You', 'You', 'wpforo'),
(275, 1, 'You are already voted this post', 'You are already voted this post', 'wpforo'),
(276, 1, 'You can go to %s page or Search here', 'You can go to %s page or Search here', 'wpforo'),
(277, 1, 'You have been successfully subscribed', 'You have been successfully subscribed', 'wpforo'),
(278, 1, 'You have been successfully unsubscribed', 'You have been successfully unsubscribed', 'wpforo'),
(279, 1, 'You have no permission to edit this topic', 'You have no permission to edit this topic', 'wpforo'),
(280, 1, 'You don\\\'t have permission to create post in this forum', 'You don\\\'t have permission to create post in this forum', 'wpforo'),
(281, 1, 'You don\\\'t have permission to create topic into this forum', 'You don\\\'t have permission to create topic into this forum', 'wpforo'),
(282, 1, 'You don\\\'t have permission to delete post from this forum', 'You don\\\'t have permission to delete post from this forum', 'wpforo'),
(283, 1, 'You don\\\'t have permission to delete topic from this forum', 'You don\\\'t have permission to delete topic from this forum', 'wpforo'),
(284, 1, 'You don\\\'t have permission to edit post from this forum', 'You don\\\'t have permission to edit post from this forum', 'wpforo'),
(285, 1, 'You successfully replied', 'You successfully replied', 'wpforo'),
(286, 1, 'Your Answer', 'Your Answer', 'wpforo'),
(287, 1, 'Your forum successfully added', 'Your forum successfully added', 'wpforo'),
(288, 1, 'Your forum successfully deleted', 'Your forum successfully deleted', 'wpforo'),
(289, 1, 'Your profile data have been successfully updated.', 'Your profile data have been successfully updated.', 'wpforo'),
(290, 1, 'Your subscription for this item could not be confirmed', 'Your subscription for this item could not be confirmed', 'wpforo'),
(291, 1, 'Your topic successfully added', 'Your topic successfully added', 'wpforo'),
(292, 1, 'add', 'add', 'wpforo'),
(293, 1, 'add_new', 'add_new', 'wpforo'),
(294, 1, '%s ago', '%s ago', 'wpforo'),
(295, 1, 'by', 'by', 'wpforo'),
(296, 1, 'by %s', 'by %s', 'wpforo'),
(297, 1, 'confirm password', 'confirm password', 'wpforo'),
(298, 1, 'edit profile', 'edit profile', 'wpforo'),
(299, 1, 'edit user', 'edit user', 'wpforo'),
(300, 1, 'matches', 'matches', 'wpforo'),
(301, 1, 'new password', 'new password', 'wpforo'),
(302, 1, 'new password again', 'new password again', 'wpforo'),
(303, 1, 'next', 'next', 'wpforo'),
(304, 1, 'old password', 'old password', 'wpforo'),
(305, 1, 'phrase_key', 'phrase_key', 'wpforo'),
(306, 1, 'phrase_value', 'phrase_value', 'wpforo'),
(307, 1, 'prev', 'prev', 'wpforo'),
(308, 1, 'update', 'update', 'wpforo'),
(309, 1, 'view', 'view', 'wpforo'),
(310, 1, 'view all posts', 'view all posts', 'wpforo'),
(311, 1, 'view all questions', 'view all questions', 'wpforo'),
(312, 1, 'view all topics', 'view all topics', 'wpforo'),
(313, 1, 'wpForo Navigation', 'wpForo Navigation', 'wpforo'),
(314, 1, '{number}B', '{number}B', 'wpforo'),
(315, 1, '{number}K', '{number}K', 'wpforo'),
(316, 1, '{number}M', '{number}M', 'wpforo'),
(317, 1, '{number}T', '{number}T', 'wpforo'),
(318, 1, 'like', 'Like', 'wpforo'),
(319, 1, 'unlike', 'Unlike', 'wpforo'),
(320, 1, 'sticky', 'Sticky', 'wpforo'),
(321, 1, 'unsticky', 'Unsticky', 'wpforo'),
(322, 1, 'close', 'Close', 'wpforo'),
(323, 1, 'open', 'Open', 'wpforo'),
(324, 1, 'Topic Icons', 'Topic Icons', 'wpforo'),
(325, 1, 'Replied', 'Replied', 'wpforo'),
(326, 1, 'Active', 'Active', 'wpforo'),
(327, 1, 'Hot', 'Hot', 'wpforo'),
(328, 1, 'Solved', 'Solved', 'wpforo'),
(329, 1, 'Unsolved', 'Unsolved', 'wpforo'),
(330, 1, 'Closed', 'Closed', 'wpforo'),
(331, 1, 'Old password is wrong', 'Old password is wrong', 'wpforo'),
(332, 1, 'New Passwords do not match', 'New Passwords do not match', 'wpforo'),
(333, 1, 'Forum Members List', 'Forum Members List', 'wpforo'),
(334, 1, 'are you sure you want to delete?', 'are you sure you want to delete?', 'wpforo'),
(335, 1, 'Admin', 'Admin', 'wpforo'),
(336, 1, 'Moderator', 'Moderator', 'wpforo'),
(337, 1, 'Registered', 'Registered', 'wpforo'),
(338, 1, 'Customer', 'Customer', 'wpforo'),
(339, 1, 'Profile', 'Profile', 'wpforo'),
(340, 1, 'Incorrect file format. Allowed formats: jpeg, jpg, png, gif.', 'Incorrect file format. Allowed formats: jpeg, jpg, png, gif.', 'wpforo'),
(341, 1, 'User registration is disabled', 'User registration is disabled', 'wpforo'),
(342, 1, 'Attachment removed', 'Attachment removed', 'wpforo'),
(343, 1, 'Forum Posts', 'Forum Posts', 'wpforo'),
(344, 1, 'Blog Posts', 'Blog Posts', 'wpforo'),
(345, 1, 'Blog Comments', 'Blog Comments', 'wpforo'),
(346, 1, 'Welcome back %s!', 'Welcome back %s!', 'wpforo'),
(347, 1, 'Member Profile', 'Member Profile', 'wpforo'),
(348, 1, 'Member', 'Member', 'wpforo'),
(349, 1, 'private', 'Private', 'wpforo'),
(350, 1, 'public', 'Public', 'wpforo'),
(351, 1, 'Private Topic', 'Private Topic', 'wpforo'),
(352, 1, 'Only Admins and Moderators can see your private topics.', 'Only Admins and Moderators can see your private topics.', 'wpforo'),
(353, 1, 'Forum ID is not detected', 'Forum ID is not detected', 'wpforo'),
(354, 1, 'You are not permitted to subscribe here', 'You are not permitted to subscribe here', 'wpforo'),
(355, 1, 'Subscribe to this topic', 'Subscribe to this topic', 'wpforo'),
(356, 1, 'Awaiting moderation', 'Awaiting moderation', 'wpforo'),
(357, 1, 'Topic first post not found.', 'Topic first post not found.', 'wpforo'),
(358, 1, 'Topic first post data not found.', 'Topic first post data not found.', 'wpforo'),
(359, 1, 'Done!', 'Done!', 'wpforo'),
(360, 1, 'unapproved', 'unapproved', 'wpforo'),
(361, 1, 'You are not allowed to attach this file type', 'You are not allowed to attach this file type', 'wpforo'),
(362, 1, 'Post is empty', 'Post is empty', 'wpforo'),
(363, 1, 'removed link', 'removed link', 'wpforo'),
(364, 1, 'Submit', 'Submit', 'wpforo'),
(365, 1, 'Usergroup', 'Usergroup', 'wpforo'),
(366, 1, 'Rating Title', 'Rating Title', 'wpforo'),
(367, 1, 'User Title', 'User Title', 'wpforo'),
(368, 1, 'approved', 'Approved', 'wpforo'),
(369, 1, 'approve', 'Approve', 'wpforo'),
(370, 1, 'unapprove', 'unapprove', 'wpforo'),
(371, 1, '--- Choose ---', '--- Choose ---', 'wpforo'),
(372, 1, 'New', 'New', 'wpforo'),
(373, 1, 'Required field', 'Required field', 'wpforo'),
(374, 1, 'Add Reply', 'Add Reply', 'wpforo'),
(375, 1, 'Forums RSS Feed', 'Forums RSS Feed', 'wpforo'),
(376, 1, 'Topics RSS Feed', 'Topics RSS Feed', 'wpforo'),
(377, 1, 'Find a member', 'Find a member', 'wpforo'),
(378, 1, 'Display Name or Nicename', 'Display Name or Nicename', 'wpforo'),
(379, 1, 'Reset Search', 'Reset Search', 'wpforo'),
(380, 1, 'Reset Result', 'Reset Result', 'wpforo'),
(381, 1, 'Recently Added', 'Recent Posts', 'wpforo'),
(382, 1, 'Recent Posts', 'Recent Posts', 'wpforo'),
(383, 1, 'No posts were found here', 'No posts were found here', 'wpforo'),
(384, 1, 'forum link', 'forum link', 'wpforo'),
(385, 1, 'in forum', 'in forum', 'wpforo'),
(386, 1, 'After registration you will receive an email confirmation with a link to set a new password', 'After registration you will receive an email confirmation with a link to set a new password', 'wpforo'),
(387, 1, 'You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.', 'You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.', 'wpforo'),
(388, 1, 'View entire topic', 'View entire topic', 'wpforo'),
(389, 1, 'Author Name', 'Author Name', 'wpforo'),
(390, 1, 'Your name', 'Your name', 'wpforo'),
(391, 1, 'Author Email', 'Author Email', 'wpforo'),
(392, 1, 'Your email', 'Your email', 'wpforo'),
(393, 1, 'Your topic successfully added and awaiting moderation', 'Your topic successfully added and awaiting moderation', 'wpforo'),
(394, 1, 'You are not allowed to edit this post', 'You are not allowed to edit this post', 'wpforo'),
(395, 1, 'Google reCAPTCHA verification failed', 'Google reCAPTCHA verification failed', 'wpforo'),
(396, 1, 'ERROR: Can\'t connect to Google reCAPTCHA API', 'ERROR: Can\'t connect to Google reCAPTCHA API', 'wpforo'),
(397, 1, 'Welcome!', 'Welcome!', 'wpforo'),
(398, 1, 'Join us today!', 'Join us today!', 'wpforo'),
(399, 1, 'Enter your email address or username and we\'ll send you a link you can use to pick a new password.', 'Enter your email address or username and we\'ll send you a link you can use to pick a new password.', 'wpforo'),
(400, 1, 'Please Insert Your Email or Username', 'Please Insert Your Email or Username', 'wpforo'),
(401, 1, 'Reset Password', 'Reset Password', 'wpforo'),
(402, 1, 'Forgot Your Password?', 'Forgot Your Password?', 'wpforo'),
(403, 1, '%s created a new topic %s', '%s created a new topic %s', 'wpforo'),
(404, 1, '%s replied to the topic %s', '%s replied to the topic %s', 'wpforo'),
(405, 1, '%s liked forum post %s', '%s liked forum post %s', 'wpforo'),
(406, 1, 'Read more', 'Read more', 'wpforo'),
(407, 1, 'Forum topic', 'Forum topic', 'wpforo'),
(408, 1, 'Forum post', 'Forum post', 'wpforo'),
(409, 1, 'Forum post like', 'Forum post like', 'wpforo'),
(410, 1, 'Tools', 'Tools', 'wpforo'),
(411, 1, 'Target Topic URL', 'Target Topic URL', 'wpforo'),
(412, 1, 'Target Topic not found', 'Target Topic not found', 'wpforo'),
(413, 1, 'Merge Topics', 'Merge Topics', 'wpforo'),
(414, 1, 'Split Topic', 'Split Topic', 'wpforo'),
(415, 1, 'Please copy the target topic URL from browser address bar and paste in the field below.', 'Please copy the target topic URL from browser address bar and paste in the field below.', 'wpforo'),
(416, 1, 'All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.', 'All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.', 'wpforo'),
(417, 1, 'Update post dates (current date) to allow append posts to the end of the target topic.', 'Update post dates (current date) to allow append posts to the end of the target topic.', 'wpforo'),
(418, 1, 'Update post titles with target topic title.', 'Update post titles with target topic title.', 'wpforo'),
(419, 1, 'Topics once merged cannot be unmerged. This topic URL will no longer be available.', 'Topics once merged cannot be unmerged. This topic URL will no longer be available.', 'wpforo'),
(420, 1, 'Create New Topic', 'Create New Topic', 'wpforo'),
(421, 1, 'Create new topic with split posts. The first post of new topic becomes the earliest reply.', 'Create new topic with split posts. The first post of new topic becomes the earliest reply.', 'wpforo'),
(422, 1, 'New Topic Title', 'New Topic Title', 'wpforo'),
(423, 1, 'New Topic Forum', 'New Topic Forum', 'wpforo'),
(424, 1, 'Select Posts to Split', 'Select Posts to Split', 'wpforo'),
(425, 1, 'Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.', 'Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.', 'wpforo'),
(426, 1, 'Merge', 'Merge', 'wpforo'),
(427, 1, 'Split', 'Split', 'wpforo'),
(428, 1, 'Move Reply', 'Move Reply', 'wpforo'),
(429, 1, 'This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.', 'This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.', 'wpforo'),
(430, 1, 'The time to edit this topic is expired', 'The time to edit this topic is expired', 'wpforo'),
(431, 1, 'The time to delete this topic is expired.', 'The time to delete this topic is expired. Please contact to forum administrator to delete it.', 'wpforo'),
(432, 1, 'The time to edit this post is expired.', 'The time to edit this post is expired.', 'wpforo'),
(433, 1, 'The time to delete this post is expired.', 'The time to delete this post is expired.', 'wpforo'),
(434, 1, 'Please contact to forum administrator to delete it.', 'Please contact to forum administrator to delete it.', 'wpforo'),
(435, 1, 'Please contact to forum administrator to edit it.', 'Please contact to forum administrator to edit it.', 'wpforo'),
(436, 1, 'Read more about Facebook public_profile properties.', 'Read more about Facebook public_profile properties.', 'wpforo'),
(437, 1, 'forum privacy policy', 'forum privacy policy', 'wpforo'),
(438, 1, 'I have read and agree to the %s.', 'I have read and agree to the %s.', 'wpforo'),
(439, 1, 'Click to open forum privacy policy below', 'Click to open forum privacy policy below', 'wpforo'),
(440, 1, 'I agree', 'I agree', 'wpforo'),
(441, 1, 'I do not agree. Take me away from here.', 'I do not agree. Take me away from here.', 'wpforo'),
(442, 1, 'forum rules', 'forum rules', 'wpforo'),
(443, 1, 'I have read and agree to abide by the %s.', 'I have read and agree to abide by the %s.', 'wpforo'),
(444, 1, 'Click to open forum rules below', 'Click to open forum rules below', 'wpforo'),
(445, 1, 'I agree to these rules', 'I agree to these rules', 'wpforo'),
(446, 1, 'I do not agree to these rules. Take me away from here.', 'I do not agree to these rules. Take me away from here.', 'wpforo'),
(447, 1, 'the website', 'the website', 'wpforo'),
(448, 1, 'I have read and agree to the', 'I have read and agree to the', 'wpforo'),
(449, 1, 'I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.', 'I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.', 'wpforo'),
(450, 1, 'Terms', 'Terms', 'wpforo'),
(451, 1, 'Privacy Policy', 'Privacy Policy', 'wpforo'),
(452, 1, 'and', 'and', 'wpforo'),
(453, 1, 'I agree to receive an email confirmation with a link to set a password.', 'I agree to receive an email confirmation with a link to set a password.', 'wpforo'),
(454, 1, 'Contact Us', 'Contact Us', 'wpforo'),
(455, 1, 'Contact the forum administrator', 'Contact the forum administrator', 'wpforo'),
(456, 1, 'Share:', 'Share:', 'wpforo'),
(457, 1, 'Share', 'Share', 'wpforo'),
(458, 1, 'Share this post', 'Share this post', 'wpforo'),
(459, 1, 'When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.', 'When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.', 'wpforo'),
(460, 1, 'I allow to create an account based on my Facebook public profile information and send confirmation email.', 'I allow to create an account based on my Facebook public profile information and send confirmation email.', 'wpforo'),
(461, 1, 'Facebook Login Information', 'Facebook Login Information', 'wpforo'),
(462, 1, 'Share to Facebook', 'Share to Facebook', 'wpforo'),
(463, 1, 'Tweet this post', 'Tweet this post', 'wpforo'),
(464, 1, 'Tweet', 'Tweet', 'wpforo'),
(465, 1, 'Share to Google+', 'Share to Google+', 'wpforo'),
(466, 1, 'Share to VK', 'Share to VK', 'wpforo'),
(467, 1, 'Share to OK', 'Share to OK', 'wpforo'),
(468, 1, 'Update Subscriptions', 'Update Subscriptions', 'wpforo'),
(469, 1, 'Subscribe to all new topics and posts', 'Subscribe to all new topics and posts', 'wpforo'),
(470, 1, 'Subscribe to all new topics', 'Subscribe to all new topics', 'wpforo'),
(471, 1, 'Subscription Manager', 'Subscription Manager', 'wpforo'),
(472, 1, 'topics and posts', 'topics and posts', 'wpforo'),
(473, 1, 'No data submitted', 'No data submitted', 'wpforo'),
(474, 1, 'User profile fields not found', 'User profile fields not found', 'wpforo'),
(475, 1, 'field is required', 'field is required', 'wpforo'),
(476, 1, 'field value must be at least %d', 'field value must be at least %d', 'wpforo'),
(477, 1, 'field value cannot be greater than %d', 'field value cannot be greater than %d', 'wpforo'),
(478, 1, 'field length must be at least %d characters', 'field length must be at least %d characters', 'wpforo'),
(479, 1, 'field length cannot be greater than %d characters', 'field length can not be greater than %d characters', 'wpforo'),
(480, 1, 'field value is not a valid URL', 'field value is not a valid URL', 'wpforo'),
(481, 1, 'file type is not detected', 'file type is not detected', 'wpforo'),
(482, 1, 'file type %s is not allowed', 'file type %s is not allowed', 'wpforo'),
(483, 1, 'file is too large', 'file is too large', 'wpforo'),
(484, 1, 'Success! Please check your mail for confirmation.', 'Success! Please check your mail for confirmation.', 'wpforo'),
(485, 1, 'Username length must be between %d characters and %d characters.', 'Username length must be between %d characters and %d characters.', 'wpforo'),
(486, 1, 'User registration is disabled.', 'User registration is disabled.', 'wpforo'),
(487, 1, 'Avatar image is too big maximum allowed size is 2MB', 'Avatar image is too big maximum allowed size is 2MB', 'wpforo'),
(488, 1, 'One of the selected Usergroups cannot be set as Secondary', 'One of the selected Usergroups cannot be set as Secondary', 'wpforo'),
(489, 1, 'The selected Usergroup is not found in allowed list', 'The selected Usergroup is not found in allowed list', 'wpforo'),
(490, 1, 'The selected Usergroup cannot be set', 'The selected Usergroup cannot be set', 'wpforo'),
(491, 1, 'Admin and Moderator Usergroups are not permitted', 'Admin and Moderator Usergroups are not permitted', 'wpforo'),
(492, 1, 'You have no permission to edit Usergroup field', 'You have no permission to edit Usergroup field', 'wpforo'),
(493, 1, 'This nickname is already in use. Please insert another.', 'This nickname is already in use. Please insert another.', 'wpforo'),
(494, 1, 'Nickname validation failed', 'Nickname validation failed', 'wpforo'),
(495, 1, 'Numerical nicknames are not allowed. Please insert another.', 'Numerical nicknames are not allowed. Please insert another.', 'wpforo'),
(496, 1, 'Maximum allowed file size is %s MB', 'Maximum allowed file size is %s MB', 'wpforo'),
(497, 1, 'This email address is already registered. Please insert another', 'This email address is already registered. Please insert another', 'wpforo'),
(498, 1, 'Allowed file types: %s', 'Allowed file types: %s', 'wpforo'),
(499, 1, 'Form name not found', 'Form name not found', 'wpforo'),
(500, 1, 'Form template not found', 'Form template not found', 'wpforo'),
(501, 1, 'Profile updated successfully', 'Profile updated successfully', 'wpforo'),
(502, 1, 'User data update failed', 'User data update failed', 'wpforo'),
(503, 1, 'User profile update failed', 'User profile update failed', 'wpforo'),
(504, 1, 'User custom field update failed', 'User custom field update failed', 'wpforo'),
(505, 1, 'Sorry, there was an error uploading attached file', 'Sorry, there was an error uploading attached file', 'wpforo'),
(506, 1, 'Edit Topic', 'Edit Topic', 'wpforo'),
(507, 1, 'This topic was modified %s by %s', 'This topic was modified %s by %s', 'wpforo'),
(508, 1, 'Edit Post', 'Edit Post', 'wpforo'),
(509, 1, 'This post was modified %s by %s', 'This post was modified %s by %s', 'wpforo'),
(510, 1, 'Topics Started', 'Topics Started', 'wpforo'),
(511, 1, 'Replies Created', 'Replies Created', 'wpforo'),
(512, 1, 'Liked Posts', 'Liked Posts', 'wpforo'),
(513, 1, 'Topic link', 'Topic link', 'wpforo'),
(514, 1, 'Forum Topics Started', 'Forum Topics Started', 'wpforo'),
(515, 1, 'Forum Replies Created', 'Forum Replies Created', 'wpforo'),
(516, 1, 'Liked Forum Posts', 'Liked Forum Posts', 'wpforo'),
(517, 1, 'Forum Subscriptions', 'Forum Subscriptions', 'wpforo'),
(518, 1, 'Start typing tags here (maximum %d tags are allowed)...', 'Start typing tags here (maximum %d tags are allowed)...', 'wpforo'),
(519, 1, 'Topic Tags', 'Topic Tags', 'wpforo'),
(520, 1, 'Separate tags using a comma', 'Separate tags using a comma', 'wpforo'),
(521, 1, 'Tags', 'Tags', 'wpforo'),
(522, 1, 'Find Topics by Tags', 'Find Topics by Tags', 'wpforo'),
(523, 1, 'Related Topics', 'Related Topics', 'wpforo'),
(524, 1, 'Next Topic', 'Next Topic', 'wpforo'),
(525, 1, 'Previous Topic', 'Previous Topic', 'wpforo'),
(526, 1, 'All forum topics', 'All forum topics', 'wpforo'),
(527, 1, 'No tags found', 'No tags found', 'wpforo'),
(528, 1, 'Forum contains no unread posts', 'Forum contains no unread posts', 'wpforo'),
(529, 1, 'Forum contains unread posts', 'Forum contains unread posts', 'wpforo'),
(530, 1, 'Mark all read', 'Mark all read', 'wpforo'),
(531, 1, 'Not Replied', 'Not Replied', 'wpforo'),
(532, 1, 'Tags are disabled', 'Tags are disabled', 'wpforo'),
(533, 1, 'Unread Posts', 'Unread Posts', 'wpforo'),
(534, 1, 'No unread posts were found', 'No unread posts were found', 'wpforo'),
(535, 1, 'Ask a question', 'Ask a question', 'wpforo'),
(536, 1, 'Your question', 'Your question', 'wpforo'),
(537, 1, 'Question Tags', 'Question Tags', 'wpforo'),
(538, 1, 'This topic doesn\'t exist or you don\'t have permissions to see that.', 'This topic doesn\'t exist or you don\'t have permissions to see that.', 'wpforo'),
(539, 1, '%d user ( %s )', '%d user ( %s )', 'wpforo'),
(540, 1, '%d users ( %s )', '%d users ( %s )', 'wpforo'),
(541, 1, 'Recently viewed by users: %s.', 'Recently viewed by users: %s.', 'wpforo'),
(542, 1, '%s guest', '%s guest', 'wpforo'),
(543, 1, '%s guests', '%s guests', 'wpforo'),
(544, 1, '%d times', '%d times', 'wpforo'),
(545, 1, 'Currently viewing this topic %s %s %s.', 'Currently viewing this topic %s %s %s.', 'wpforo'),
(546, 1, 'Forum Icons', 'Forum Icons', 'wpforo'),
(547, 1, '(%d viewing)', '(%d viewing)', 'wpforo'),
(548, 1, 'View all tags (%d)', 'View all tags (%d)', 'wpforo'),
(549, 1, 'Topic reply', 'Topic reply', 'wpforo'),
(550, 1, 'You have %d new replies', 'You have %d new replies', 'wpforo'),
(551, 1, 'You have %d new reply to %2$s from %3$s', 'You have %d new reply to %2$s from %3$s', 'wpforo'),
(552, 1, 'You have %d new reply to %s', 'You have %d new reply to %s', 'wpforo'),
(553, 1, 'Are you sure you wanted to do that?', 'Are you sure you wanted to do that?', 'wpforo'),
(554, 1, 'You do not have permission to mark notifications for that user.', 'You do not have permission to mark notifications for that user.', 'wpforo');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_posts`
--

CREATE TABLE `wp_wpforo_posts` (
  `postid` bigint(20) UNSIGNED NOT NULL,
  `parentid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `forumid` int(10) UNSIGNED NOT NULL,
  `topicid` bigint(20) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `likes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `is_answer` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_first_post` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_posts`
--

INSERT INTO `wp_wpforo_posts` (`postid`, `parentid`, `forumid`, `topicid`, `userid`, `title`, `body`, `created`, `modified`, `likes`, `votes`, `is_answer`, `is_first_post`, `status`, `name`, `email`, `private`) VALUES
(1, 0, 5, 1, 2, 'Probleme Procesor Ryzen 3 2200G', '<p>Buna ziua.....Recent am achizitionat un procesor Ryzen 3 2200G si am observat ca in Windows 10 , in momentul in care deschid mai multe taburi pe Google Chrome si in special pe Youtube, dupa un anumit timp toate filmuletele si reclamele deschise in sesiunea de Chrome in orice tab devin verzi.Ce as putea face?</p>', '2019-01-14 10:44:55', '2019-01-14 10:44:55', 0, 0, 1, 1, 0, '', '', 0),
(2, 0, 5, 1, 1, 'RE: Probleme Procesor Ryzen 3 2200G', '<p>Ne pare rau ca intampini aceasta problema.</p><p>Pentru a scapa de ea incercati sa mergeti la setarile Browserului si sa dezactivati accelerarea hardware, apoi resetati browserul. Dupa ar trebui sa functioneze normal si sa nu va mai apara aceasta problema</p>', '2019-01-14 10:46:56', '2019-01-14 10:46:56', 0, 0, 0, 0, 0, '', '', 0),
(3, 0, 5, 1, 2, 'RE: Probleme Procesor Ryzen 3 2200G', '<p>A functionat.</p><p>Multumesc foarte mult pentru ajutor.</p><p>Cel mai bun forum!!! 😍  😍 </p>', '2019-01-14 10:47:49', '2019-01-14 10:47:49', 0, 0, 0, 0, 0, '', '', 0),
(4, 0, 5, 1, 1, 'RE: Probleme Procesor Ryzen 3 2200G', '<p>Ne bucuram ca ati reusit sa scapati de aceasta problema</p>', '2019-01-14 10:48:14', '2019-01-14 10:48:14', 0, 0, 0, 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_profiles`
--

CREATE TABLE `wp_wpforo_profiles` (
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupid` int(10) UNSIGNED NOT NULL,
  `posts` int(11) NOT NULL DEFAULT '0',
  `questions` int(11) NOT NULL DEFAULT '0',
  `answers` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `site` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aim` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yahoo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gtalk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `about` text COLLATE utf8mb4_unicode_ci,
  `occupation` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online_time` int(10) UNSIGNED DEFAULT NULL,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `like` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'active' COMMENT 'active, blocked, trashed, spamer',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `secondary_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_profiles`
--

INSERT INTO `wp_wpforo_profiles` (`userid`, `title`, `username`, `groupid`, `posts`, `questions`, `answers`, `comments`, `site`, `icq`, `aim`, `yahoo`, `msn`, `facebook`, `twitter`, `gtalk`, `skype`, `avatar`, `signature`, `about`, `occupation`, `location`, `last_login`, `online_time`, `rank`, `like`, `status`, `timezone`, `is_email_confirmed`, `secondary_groups`, `fields`) VALUES
(1, 'Member', 'roco', 1, 2, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-01-13 21:44:12', 1547628334, 0, 0, 'active', '', 0, NULL, NULL),
(2, 'Member', 'irobertfl', 3, 2, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-01-16 07:45:42', 1547624751, 0, 0, 'active', '', 0, NULL, NULL),
(3, 'Member', 'ccurelariu', 3, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-01-14 10:56:29', NULL, 0, 0, 'active', '', 0, NULL, NULL),
(4, 'Member', 'mody', 2, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2019-01-14 14:33:58', 1547476442, 0, 0, 'active', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_subscribes`
--

CREATE TABLE `wp_wpforo_subscribes` (
  `subid` bigint(20) UNSIGNED NOT NULL,
  `itemid` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmkey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_tags`
--

CREATE TABLE `wp_wpforo_tags` (
  `tagid` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_tags`
--

INSERT INTO `wp_wpforo_tags` (`tagid`, `tag`, `prefix`, `count`) VALUES
(1, 'ryzen 3', 0, 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_topics`
--

CREATE TABLE `wp_wpforo_topics` (
  `topicid` bigint(20) UNSIGNED NOT NULL,
  `forumid` int(10) UNSIGNED NOT NULL,
  `first_postid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_post` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `answers` int(11) NOT NULL DEFAULT '0',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `has_attach` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prefix` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tags` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_topics`
--

INSERT INTO `wp_wpforo_topics` (`topicid`, `forumid`, `first_postid`, `userid`, `title`, `slug`, `created`, `modified`, `last_post`, `posts`, `votes`, `answers`, `views`, `meta_key`, `meta_desc`, `type`, `closed`, `has_attach`, `private`, `status`, `name`, `email`, `prefix`, `tags`) VALUES
(1, 5, 1, 2, 'Probleme Procesor Ryzen 3 2200G', 'probleme-procesor-ryzen-3-2200g', '2019-01-14 10:44:55', '2019-01-14 10:48:14', 4, 4, 0, 0, 3, '', '', 0, 1, 0, 0, 0, '', '', '', 'ryzen 3');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_usergroups`
--

CREATE TABLE `wp_wpforo_usergroups` (
  `groupid` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cans` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'board permissions',
  `description` text COLLATE utf8mb4_unicode_ci,
  `utitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `secondary` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_usergroups`
--

INSERT INTO `wp_wpforo_usergroups` (`groupid`, `name`, `cans`, `description`, `utitle`, `role`, `access`, `color`, `visible`, `secondary`) VALUES
(1, 'Admin', 'a:33:{s:2:\"mf\";s:1:\"1\";s:2:\"ms\";s:1:\"1\";s:2:\"mt\";s:1:\"1\";s:2:\"vm\";s:1:\"1\";s:3:\"aum\";s:1:\"1\";s:3:\"vmg\";s:1:\"1\";s:2:\"mp\";s:1:\"1\";s:3:\"mth\";s:1:\"1\";s:2:\"em\";s:1:\"1\";s:2:\"bm\";s:1:\"1\";s:2:\"dm\";s:1:\"1\";s:3:\"aup\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"1\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"1\";s:3:\"vmm\";s:1:\"1\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}', '', 'Admin', 'administrator', 'full', '#FF3333', 1, 0),
(2, 'Moderator', 'a:33:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"1\";s:3:\"vmg\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:2:\"bm\";s:1:\"1\";s:2:\"dm\";s:1:\"1\";s:3:\"aup\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"1\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"1\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}', '', 'Moderator', 'editor', 'moderator', '#0066FF', 1, 0),
(3, 'Registered', 'a:33:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"aup\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}', '', 'Registered', 'subscriber', 'standard', '', 1, 1),
(4, 'Guest', 'a:33:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"aup\";s:1:\"0\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:3:\"upa\";s:1:\"0\";s:3:\"ups\";s:1:\"0\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"0\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"0\";}', '', 'Guest', '', 'read_only', '#222222', 0, 0),
(5, 'Customer', 'a:33:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"aup\";s:1:\"0\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";}', '', 'Customer', 'customer', 'standard', '#993366', 1, 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_views`
--

CREATE TABLE `wp_wpforo_views` (
  `vid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `topicid` int(10) UNSIGNED NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_visits`
--

CREATE TABLE `wp_wpforo_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `forumid` int(10) UNSIGNED NOT NULL,
  `topicid` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `wp_wpforo_visits`
--

INSERT INTO `wp_wpforo_visits` (`id`, `userid`, `name`, `ip`, `time`, `forumid`, `topicid`) VALUES
(1, 1, 'roco', '', 1547627089, 0, 0),
(9, 1, 'roco', '', 1547476098, 14, 0),
(10, 1, 'roco', '', 1547476470, 13, 0),
(28, 2, 'Ionescu Robert Florin', '', 1547624749, 5, 1),
(30, 1, 'roco', '', 1547626185, 5, 1),
(69, 1, 'roco', '', 1547475062, 20, 0),
(73, 0, '', '837ec5754f503cf', 1547476422, 0, 0),
(74, 4, 'Mody', '', 1547476439, 0, 0),
(75, 4, 'Mody', '', 1547476442, 5, 1),
(77, 1, 'roco', '', 1547476471, 3, 0),
(85, 2, 'Ionescu Robert Florin', '', 1547624742, 0, 0),
(90, 1, 'roco', '', 1547626871, 10, 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wp_wpforo_votes`
--

CREATE TABLE `wp_wpforo_votes` (
  `voteid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `postid` int(10) UNSIGNED NOT NULL,
  `reaction` tinyint(4) NOT NULL DEFAULT '1',
  `post_userid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexuri pentru tabele `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexuri pentru tabele `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexuri pentru tabele `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexuri pentru tabele `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexuri pentru tabele `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexuri pentru tabele `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexuri pentru tabele `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexuri pentru tabele `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexuri pentru tabele `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexuri pentru tabele `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexuri pentru tabele `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexuri pentru tabele `wp_wpforo_accesses`
--
ALTER TABLE `wp_wpforo_accesses`
  ADD PRIMARY KEY (`accessid`),
  ADD UNIQUE KEY `access` (`access`(191));

--
-- Indexuri pentru tabele `wp_wpforo_activity`
--
ALTER TABLE `wp_wpforo_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `type_objid_objtype` (`type`,`itemid`,`itemtype`),
  ADD KEY `type_objid_objtype_userid` (`type`,`itemid`,`itemtype`,`userid`),
  ADD KEY `date` (`date`);

--
-- Indexuri pentru tabele `wp_wpforo_forums`
--
ALTER TABLE `wp_wpforo_forums`
  ADD PRIMARY KEY (`forumid`),
  ADD UNIQUE KEY `UNIQUE SLUG` (`slug`(191)),
  ADD KEY `order` (`order`),
  ADD KEY `status` (`status`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `last_postid` (`last_postid`),
  ADD KEY `is_cat` (`is_cat`);

--
-- Indexuri pentru tabele `wp_wpforo_languages`
--
ALTER TABLE `wp_wpforo_languages`
  ADD PRIMARY KEY (`langid`),
  ADD UNIQUE KEY `UNIQUE language name` (`name`(191));

--
-- Indexuri pentru tabele `wp_wpforo_likes`
--
ALTER TABLE `wp_wpforo_likes`
  ADD PRIMARY KEY (`likeid`),
  ADD UNIQUE KEY `userid` (`userid`,`postid`);

--
-- Indexuri pentru tabele `wp_wpforo_phrases`
--
ALTER TABLE `wp_wpforo_phrases`
  ADD PRIMARY KEY (`phraseid`),
  ADD UNIQUE KEY `lng_and_key_uniq` (`langid`,`phrase_key`(191)),
  ADD KEY `langid` (`langid`),
  ADD KEY `phrase_key` (`phrase_key`(191));

--
-- Indexuri pentru tabele `wp_wpforo_posts`
--
ALTER TABLE `wp_wpforo_posts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `forumid` (`forumid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `created` (`created`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `is_answer` (`is_answer`),
  ADD KEY `is_first_post` (`is_first_post`),
  ADD KEY `status` (`status`),
  ADD KEY `email` (`email`),
  ADD KEY `is_private` (`private`),
  ADD KEY `forumid_status` (`forumid`,`status`),
  ADD KEY `topicid_status` (`topicid`,`status`),
  ADD KEY `topicid_solved` (`topicid`,`is_answer`),
  ADD KEY `forumid_status_private` (`forumid`,`status`,`private`);
ALTER TABLE `wp_wpforo_posts` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `wp_wpforo_posts` ADD FULLTEXT KEY `body` (`body`);
ALTER TABLE `wp_wpforo_posts` ADD FULLTEXT KEY `title_plus_body` (`title`,`body`);

--
-- Indexuri pentru tabele `wp_wpforo_profiles`
--
ALTER TABLE `wp_wpforo_profiles`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `online_time` (`online_time`),
  ADD KEY `posts` (`posts`),
  ADD KEY `status` (`status`),
  ADD KEY `is_email_confirmed` (`is_email_confirmed`);

--
-- Indexuri pentru tabele `wp_wpforo_subscribes`
--
ALTER TABLE `wp_wpforo_subscribes`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `fld_group_unq` (`itemid`,`type`,`userid`,`user_email`),
  ADD UNIQUE KEY `confirmkey` (`confirmkey`),
  ADD KEY `itemid_2` (`itemid`),
  ADD KEY `userid` (`userid`);

--
-- Indexuri pentru tabele `wp_wpforo_tags`
--
ALTER TABLE `wp_wpforo_tags`
  ADD PRIMARY KEY (`tagid`),
  ADD UNIQUE KEY `tag` (`tag`(190)),
  ADD KEY `prefix` (`prefix`);

--
-- Indexuri pentru tabele `wp_wpforo_topics`
--
ALTER TABLE `wp_wpforo_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `slug` (`slug`(191)),
  ADD KEY `forumid` (`forumid`),
  ADD KEY `first_postid` (`first_postid`),
  ADD KEY `created` (`created`),
  ADD KEY `modified` (`modified`),
  ADD KEY `last_post` (`last_post`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`),
  ADD KEY `email` (`email`),
  ADD KEY `is_private` (`private`),
  ADD KEY `own_private` (`userid`,`private`),
  ADD KEY `forumid_status` (`forumid`,`status`),
  ADD KEY `forumid_status_private` (`forumid`,`status`,`private`),
  ADD KEY `prefix` (`prefix`);
ALTER TABLE `wp_wpforo_topics` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexuri pentru tabele `wp_wpforo_usergroups`
--
ALTER TABLE `wp_wpforo_usergroups`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `UNIQUE_GROUP_NAME` (`name`(191)),
  ADD KEY `visible` (`visible`),
  ADD KEY `secondary` (`secondary`);

--
-- Indexuri pentru tabele `wp_wpforo_views`
--
ALTER TABLE `wp_wpforo_views`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `user_topic` (`userid`,`topicid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `topicid` (`topicid`);

--
-- Indexuri pentru tabele `wp_wpforo_visits`
--
ALTER TABLE `wp_wpforo_visits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_tracking` (`userid`,`ip`,`forumid`,`topicid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `forumid` (`forumid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `time` (`time`),
  ADD KEY `ip` (`ip`),
  ADD KEY `time_forumid` (`time`,`forumid`),
  ADD KEY `time_topicid` (`time`,`topicid`);

--
-- Indexuri pentru tabele `wp_wpforo_votes`
--
ALTER TABLE `wp_wpforo_votes`
  ADD PRIMARY KEY (`voteid`),
  ADD UNIQUE KEY `unique_vote` (`userid`,`postid`,`reaction`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT pentru tabele `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT pentru tabele `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pentru tabele `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pentru tabele `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_accesses`
--
ALTER TABLE `wp_wpforo_accesses`
  MODIFY `accessid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_activity`
--
ALTER TABLE `wp_wpforo_activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_forums`
--
ALTER TABLE `wp_wpforo_forums`
  MODIFY `forumid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_languages`
--
ALTER TABLE `wp_wpforo_languages`
  MODIFY `langid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_likes`
--
ALTER TABLE `wp_wpforo_likes`
  MODIFY `likeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_phrases`
--
ALTER TABLE `wp_wpforo_phrases`
  MODIFY `phraseid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_posts`
--
ALTER TABLE `wp_wpforo_posts`
  MODIFY `postid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_subscribes`
--
ALTER TABLE `wp_wpforo_subscribes`
  MODIFY `subid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_tags`
--
ALTER TABLE `wp_wpforo_tags`
  MODIFY `tagid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_topics`
--
ALTER TABLE `wp_wpforo_topics`
  MODIFY `topicid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_usergroups`
--
ALTER TABLE `wp_wpforo_usergroups`
  MODIFY `groupid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_views`
--
ALTER TABLE `wp_wpforo_views`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_visits`
--
ALTER TABLE `wp_wpforo_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT pentru tabele `wp_wpforo_votes`
--
ALTER TABLE `wp_wpforo_votes`
  MODIFY `voteid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
