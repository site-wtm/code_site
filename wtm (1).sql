-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 13 fév. 2018 à 10:08
-- Version du serveur :  10.1.29-MariaDB
-- Version de PHP :  7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wtm`
--

-- --------------------------------------------------------

--
-- Structure de la table `wtm_ai1ec_events`
--

CREATE TABLE `wtm_ai1ec_events` (
  `post_id` bigint(20) NOT NULL,
  `start` int(10) UNSIGNED NOT NULL,
  `end` int(10) UNSIGNED DEFAULT NULL,
  `timezone_name` varchar(50) DEFAULT NULL,
  `allday` tinyint(1) NOT NULL,
  `instant_event` tinyint(1) NOT NULL DEFAULT '0',
  `recurrence_rules` longtext,
  `exception_rules` longtext,
  `recurrence_dates` longtext,
  `exception_dates` longtext,
  `venue` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  `show_map` tinyint(1) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(32) DEFAULT NULL,
  `contact_email` varchar(128) DEFAULT NULL,
  `contact_url` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `ticket_url` varchar(255) DEFAULT NULL,
  `ical_feed_url` varchar(255) DEFAULT NULL,
  `ical_source_url` varchar(255) DEFAULT NULL,
  `ical_organizer` varchar(255) DEFAULT NULL,
  `ical_contact` varchar(255) DEFAULT NULL,
  `ical_uid` varchar(255) DEFAULT NULL,
  `show_coordinates` tinyint(1) DEFAULT NULL,
  `latitude` decimal(20,15) DEFAULT NULL,
  `longitude` decimal(20,15) DEFAULT NULL,
  `force_regenerate` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wtm_ai1ec_events`
--

INSERT INTO `wtm_ai1ec_events` (`post_id`, `start`, `end`, `timezone_name`, `allday`, `instant_event`, `recurrence_rules`, `exception_rules`, `recurrence_dates`, `exception_dates`, `venue`, `country`, `address`, `city`, `province`, `postal_code`, `show_map`, `contact_name`, `contact_phone`, `contact_email`, `contact_url`, `cost`, `ticket_url`, `ical_feed_url`, `ical_source_url`, `ical_organizer`, `ical_contact`, `ical_uid`, `show_coordinates`, `latitude`, `longitude`, `force_regenerate`) VALUES
(60, 1517689200, 1518643200, 'Atlantic/Azores', 0, 0, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, 'me', '56556', 'manessongvanessa@gmail.com', '', 'a:2:{s:4:\"cost\";s:0:\"\";s:7:\"is_free\";b:0;}', '', NULL, NULL, NULL, NULL, 'ai1ec-60@localhost/wtm', 0, '0.000000000000000', '0.000000000000000', 0),
(61, 1517619600, 1518656400, 'Atlantic/Azores', 1, 0, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 0, '', '', '', '', 'a:2:{s:4:\"cost\";s:0:\"\";s:7:\"is_free\";b:0;}', '', NULL, NULL, NULL, NULL, 'ai1ec-61@localhost/wtm', 0, '0.000000000000000', '0.000000000000000', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wtm_ai1ec_event_category_meta`
--

CREATE TABLE `wtm_ai1ec_event_category_meta` (
  `term_id` bigint(20) NOT NULL,
  `term_color` varchar(255) NOT NULL,
  `term_image` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wtm_ai1ec_event_category_meta`
--

INSERT INTO `wtm_ai1ec_event_category_meta` (`term_id`, `term_color`, `term_image`) VALUES
(3, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wtm_ai1ec_event_feeds`
--

CREATE TABLE `wtm_ai1ec_event_feeds` (
  `feed_id` bigint(20) NOT NULL,
  `feed_url` varchar(255) NOT NULL,
  `feed_name` varchar(255) NOT NULL,
  `feed_category` varchar(255) NOT NULL,
  `feed_tags` varchar(255) NOT NULL,
  `comments_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `map_display_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `keep_tags_categories` tinyint(1) NOT NULL DEFAULT '0',
  `keep_old_events` tinyint(1) NOT NULL DEFAULT '0',
  `import_timezone` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wtm_ai1ec_event_instances`
--

CREATE TABLE `wtm_ai1ec_event_instances` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `start` int(10) UNSIGNED NOT NULL,
  `end` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wtm_ai1ec_event_instances`
--

INSERT INTO `wtm_ai1ec_event_instances` (`id`, `post_id`, `start`, `end`) VALUES
(1, 60, 1517689200, 1518643200),
(2, 61, 1517619600, 1518656400);

-- --------------------------------------------------------

--
-- Structure de la table `wtm_commentmeta`
--

CREATE TABLE `wtm_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wtm_comments`
--

CREATE TABLE `wtm_comments` (
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

-- --------------------------------------------------------

--
-- Structure de la table `wtm_eo_events`
--

CREATE TABLE `wtm_eo_events` (
  `event_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `FinishTime` time NOT NULL,
  `event_occurrence` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wtm_eo_events`
--

INSERT INTO `wtm_eo_events` (`event_id`, `post_id`, `StartDate`, `EndDate`, `StartTime`, `FinishTime`, `event_occurrence`) VALUES
(1, 62, '2018-02-01', '2018-02-01', '20:00:00', '21:00:00', 0),
(2, 62, '2018-02-03', '2018-02-03', '20:00:00', '21:00:00', 1),
(3, 62, '2018-02-17', '2018-02-17', '20:00:00', '21:00:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `wtm_eo_venuemeta`
--

CREATE TABLE `wtm_eo_venuemeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `eo_venue_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wtm_links`
--

CREATE TABLE `wtm_links` (
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
-- Structure de la table `wtm_options`
--

CREATE TABLE `wtm_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wtm_options`
--

INSERT INTO `wtm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wtm', 'yes'),
(2, 'home', 'http://localhost/wtm', 'yes'),
(3, 'blogname', 'WTM N&#039;Déré', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'manessongvanessa@gmail.com', 'yes'),
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
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:55:\"all-in-one-event-calendar/all-in-one-event-calendar.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:35:\"event-organiser/event-organiser.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'realistic_/realistic', 'yes'),
(41, 'stylesheet', 'realistic_/realistic-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:35:\"event-organiser/event-organiser.php\";s:24:\"eventorganiser_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wtm_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:126:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"read_ai1ec_event\";b:1;s:16:\"edit_ai1ec_event\";b:1;s:17:\"edit_ai1ec_events\";b:1;s:25:\"edit_private_ai1ec_events\";b:1;s:27:\"edit_published_ai1ec_events\";b:1;s:18:\"delete_ai1ec_event\";b:1;s:19:\"delete_ai1ec_events\";b:1;s:29:\"delete_published_ai1ec_events\";b:1;s:27:\"delete_private_ai1ec_events\";b:1;s:20:\"publish_ai1ec_events\";b:1;s:25:\"read_private_ai1ec_events\";b:1;s:24:\"manage_events_categories\";b:1;s:18:\"manage_ai1ec_feeds\";b:1;s:19:\"switch_ai1ec_themes\";b:1;s:20:\"manage_ai1ec_options\";b:1;s:24:\"edit_others_ai1ec_events\";b:1;s:26:\"delete_others_ai1ec_events\";b:1;s:11:\"edit_events\";b:1;s:14:\"publish_events\";b:1;s:13:\"delete_events\";b:1;s:18:\"edit_others_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"read_private_events\";b:1;s:13:\"manage_venues\";b:1;s:23:\"manage_event_categories\";b:1;s:12:\"manage_salon\";b:1;s:18:\"edit_sln_attendant\";b:1;s:18:\"read_sln_attendant\";b:1;s:20:\"delete_sln_attendant\";b:1;s:19:\"edit_sln_attendants\";b:1;s:26:\"edit_others_sln_attendants\";b:1;s:22:\"publish_sln_attendants\";b:1;s:27:\"read_private_sln_attendants\";b:1;s:21:\"delete_sln_attendants\";b:1;s:29:\"delete_private_sln_attendants\";b:1;s:31:\"delete_published_sln_attendants\";b:1;s:28:\"delete_others_sln_attendants\";b:1;s:27:\"edit_private_sln_attendants\";b:1;s:29:\"edit_published_sln_attendants\";b:1;s:16:\"edit_sln_service\";b:1;s:16:\"read_sln_service\";b:1;s:18:\"delete_sln_service\";b:1;s:17:\"edit_sln_services\";b:1;s:24:\"edit_others_sln_services\";b:1;s:20:\"publish_sln_services\";b:1;s:25:\"read_private_sln_services\";b:1;s:19:\"delete_sln_services\";b:1;s:27:\"delete_private_sln_services\";b:1;s:29:\"delete_published_sln_services\";b:1;s:26:\"delete_others_sln_services\";b:1;s:25:\"edit_private_sln_services\";b:1;s:27:\"edit_published_sln_services\";b:1;s:16:\"edit_sln_booking\";b:1;s:16:\"read_sln_booking\";b:1;s:18:\"delete_sln_booking\";b:1;s:17:\"edit_sln_bookings\";b:1;s:24:\"edit_others_sln_bookings\";b:1;s:20:\"publish_sln_bookings\";b:1;s:25:\"read_private_sln_bookings\";b:1;s:19:\"delete_sln_bookings\";b:1;s:27:\"delete_private_sln_bookings\";b:1;s:29:\"delete_published_sln_bookings\";b:1;s:26:\"delete_others_sln_bookings\";b:1;s:25:\"edit_private_sln_bookings\";b:1;s:27:\"edit_published_sln_bookings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:49:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:16:\"read_ai1ec_event\";b:1;s:16:\"edit_ai1ec_event\";b:1;s:17:\"edit_ai1ec_events\";b:1;s:25:\"edit_private_ai1ec_events\";b:1;s:27:\"edit_published_ai1ec_events\";b:1;s:18:\"delete_ai1ec_event\";b:1;s:19:\"delete_ai1ec_events\";b:1;s:29:\"delete_published_ai1ec_events\";b:1;s:27:\"delete_private_ai1ec_events\";b:1;s:20:\"publish_ai1ec_events\";b:1;s:25:\"read_private_ai1ec_events\";b:1;s:24:\"manage_events_categories\";b:1;s:18:\"manage_ai1ec_feeds\";b:1;s:24:\"edit_others_ai1ec_events\";b:1;s:26:\"delete_others_ai1ec_events\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:23:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:16:\"read_ai1ec_event\";b:1;s:16:\"edit_ai1ec_event\";b:1;s:17:\"edit_ai1ec_events\";b:1;s:25:\"edit_private_ai1ec_events\";b:1;s:27:\"edit_published_ai1ec_events\";b:1;s:18:\"delete_ai1ec_event\";b:1;s:19:\"delete_ai1ec_events\";b:1;s:29:\"delete_published_ai1ec_events\";b:1;s:27:\"delete_private_ai1ec_events\";b:1;s:20:\"publish_ai1ec_events\";b:1;s:25:\"read_private_ai1ec_events\";b:1;s:24:\"manage_events_categories\";b:1;s:18:\"manage_ai1ec_feeds\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:21:\"ai1ec_event_assistant\";a:2:{s:4:\"name\";s:17:\"Event Contributor\";s:12:\"capabilities\";a:7:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_ai1ec_events\";b:1;s:17:\"read_ai1ec_events\";b:1;s:19:\"delete_ai1ec_events\";b:1;s:27:\"edit_published_ai1ec_events\";b:1;s:29:\"delete_published_ai1ec_events\";b:1;}}s:9:\"sln_staff\";a:2:{s:4:\"name\";s:11:\"Salon staff\";s:12:\"capabilities\";a:42:{s:12:\"manage_salon\";b:1;s:10:\"edit_posts\";b:1;s:18:\"edit_sln_attendant\";b:1;s:18:\"read_sln_attendant\";b:1;s:20:\"delete_sln_attendant\";b:1;s:19:\"edit_sln_attendants\";b:1;s:26:\"edit_others_sln_attendants\";b:1;s:22:\"publish_sln_attendants\";b:1;s:27:\"read_private_sln_attendants\";b:1;s:4:\"read\";b:1;s:21:\"delete_sln_attendants\";b:1;s:29:\"delete_private_sln_attendants\";b:1;s:31:\"delete_published_sln_attendants\";b:1;s:28:\"delete_others_sln_attendants\";b:1;s:27:\"edit_private_sln_attendants\";b:1;s:29:\"edit_published_sln_attendants\";b:1;s:16:\"edit_sln_service\";b:1;s:16:\"read_sln_service\";b:1;s:18:\"delete_sln_service\";b:1;s:17:\"edit_sln_services\";b:1;s:24:\"edit_others_sln_services\";b:1;s:20:\"publish_sln_services\";b:1;s:25:\"read_private_sln_services\";b:1;s:19:\"delete_sln_services\";b:1;s:27:\"delete_private_sln_services\";b:1;s:29:\"delete_published_sln_services\";b:1;s:26:\"delete_others_sln_services\";b:1;s:25:\"edit_private_sln_services\";b:1;s:27:\"edit_published_sln_services\";b:1;s:16:\"edit_sln_booking\";b:1;s:16:\"read_sln_booking\";b:1;s:18:\"delete_sln_booking\";b:1;s:17:\"edit_sln_bookings\";b:1;s:24:\"edit_others_sln_bookings\";b:1;s:20:\"publish_sln_bookings\";b:1;s:25:\"read_private_sln_bookings\";b:1;s:19:\"delete_sln_bookings\";b:1;s:27:\"delete_private_sln_bookings\";b:1;s:29:\"delete_published_sln_bookings\";b:1;s:26:\"delete_others_sln_bookings\";b:1;s:25:\"edit_private_sln_bookings\";b:1;s:27:\"edit_published_sln_bookings\";b:1;}}s:12:\"sln_customer\";a:2:{s:4:\"name\";s:14:\"Salon customer\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:13:\"publish_posts\";b:0;s:12:\"upload_files\";b:0;s:12:\"manage_salon\";b:0;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'cron', 'a:6:{i:1518514120;a:1:{s:10:\"ai1ec_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1518534630;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1518534631;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1518534660;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1518534851;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1518509802;s:7:\"checked\";a:5:{s:26:\"realistic_/realistic-child\";s:5:\"1.0.0\";s:20:\"realistic_/realistic\";s:5:\"1.3.2\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1517065866;s:4:\"data\";a:0:{}}}', 'yes'),
(116, 'can_compress_scripts', '1', 'no'),
(117, 'current_theme', 'WTM Ndere theme', 'yes'),
(118, 'theme_mods_realistic_/realistic-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:11:\"mobile-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(119, 'theme_switched', '', 'yes'),
(120, 'widget_realistic_login_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_realistic_popular_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_realistic_recent_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'widget_social-icons', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(126, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:3:{i:0;s:21:\"ai1ec_agenda_widget-2\";i:1;s:7:\"pages-2\";i:2;s:17:\"recent-comments-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(132, 'category_children', 'a:0:{}', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'acf_version', '4.4.12', 'yes'),
(157, 'cptui_new_install', 'false', 'yes'),
(163, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1518509796;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"all-in-one-event-calendar/all-in-one-event-calendar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/all-in-one-event-calendar\";s:4:\"slug\";s:25:\"all-in-one-event-calendar\";s:6:\"plugin\";s:55:\"all-in-one-event-calendar/all-in-one-event-calendar.php\";s:11:\"new_version\";s:6:\"2.5.28\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/all-in-one-event-calendar/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/all-in-one-event-calendar.2.5.28.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:77:\"https://ps.w.org/all-in-one-event-calendar/assets/icon-128x128.png?rev=982156\";s:2:\"2x\";s:77:\"https://ps.w.org/all-in-one-event-calendar/assets/icon-256x256.png?rev=982156\";s:7:\"default\";s:77:\"https://ps.w.org/all-in-one-event-calendar/assets/icon-256x256.png?rev=982156\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/all-in-one-event-calendar/assets/banner-772x250.png?rev=748390\";s:7:\"default\";s:79:\"https://ps.w.org/all-in-one-event-calendar/assets/banner-772x250.png?rev=748390\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"event-organiser/event-organiser.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/event-organiser\";s:4:\"slug\";s:15:\"event-organiser\";s:6:\"plugin\";s:35:\"event-organiser/event-organiser.php\";s:11:\"new_version\";s:5:\"3.6.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/event-organiser/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/event-organiser.3.6.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/event-organiser/assets/icon-128x128.png?rev=978123\";s:2:\"2x\";s:67:\"https://ps.w.org/event-organiser/assets/icon-256x256.png?rev=978123\";s:7:\"default\";s:67:\"https://ps.w.org/event-organiser/assets/icon-256x256.png?rev=978123\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/event-organiser/assets/banner-772x250.png?rev=978123\";s:7:\"default\";s:69:\"https://ps.w.org/event-organiser/assets/banner-772x250.png?rev=978123\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(164, 'calendarjsupdated', '0', 'no'),
(165, 'jswidgetupdated', '0', 'no'),
(166, 'ai1ec_force_flush_rewrite_rules', '', 'yes'),
(168, 'ai1ec_clean_twig_cache', '', 'yes'),
(169, 'ai1ec_version', '2.5.28', 'no'),
(170, 'ai1ec_db_version', '117d492dc04bb313a365a1b1492789ca6fda1e22', 'no'),
(171, 'ai1ec_category_meta_ported', '1', 'no'),
(172, 'ai1ec_current_theme', 'a:5:{s:9:\"theme_dir\";s:91:\"C:\\xampp\\htdocs\\wtm\\wp-content\\plugins\\all-in-one-event-calendar\\public\\themes-ai1ec\\vortex\";s:10:\"theme_root\";s:84:\"C:\\xampp\\htdocs\\wtm\\wp-content\\plugins\\all-in-one-event-calendar\\public\\themes-ai1ec\";s:9:\"theme_url\";s:92:\"http://localhost/wtm/wp-content/plugins/all-in-one-event-calendar/public/themes-ai1ec/vortex\";s:10:\"stylesheet\";s:6:\"vortex\";s:6:\"legacy\";b:0;}', 'yes'),
(173, 'ai1ec_less_variables', 'a:43:{s:14:\"bodyBackground\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:7:\"general\";s:4:\"type\";s:5:\"color\";}s:9:\"textColor\";a:3:{s:5:\"value\";s:7:\"#333333\";s:3:\"tab\";s:7:\"general\";s:4:\"type\";s:5:\"color\";}s:10:\"textEmboss\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:7:\"general\";s:4:\"type\";s:5:\"color\";}s:9:\"linkColor\";a:3:{s:5:\"value\";s:7:\"#3d6b99\";s:3:\"tab\";s:7:\"general\";s:4:\"type\";s:5:\"color\";}s:14:\"linkColorHover\";a:3:{s:5:\"value\";s:7:\"#335980\";s:3:\"tab\";s:7:\"general\";s:4:\"type\";s:5:\"color\";}s:14:\"baseFontFamily\";a:3:{s:5:\"value\";s:46:\"\"Helvetica Neue\", Helvetica, Arial, sans-serif\";s:3:\"tab\";s:7:\"general\";s:4:\"type\";s:4:\"font\";}s:12:\"baseFontSize\";a:3:{s:5:\"value\";s:4:\"13px\";s:3:\"tab\";s:7:\"general\";s:4:\"type\";s:4:\"size\";}s:15:\"tableBackground\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:5:\"table\";s:4:\"type\";s:5:\"color\";}s:20:\"tableLabelBackground\";a:3:{s:5:\"value\";s:7:\"#f5f5f5\";s:3:\"tab\";s:5:\"table\";s:4:\"type\";s:5:\"color\";}s:14:\"tableLabelText\";a:3:{s:5:\"value\";s:7:\"#9e9e9e\";s:3:\"tab\";s:5:\"table\";s:4:\"type\";s:5:\"color\";}s:20:\"btnPrimaryBackground\";a:3:{s:5:\"value\";s:7:\"#6dbb4f\";s:3:\"tab\";s:7:\"buttons\";s:4:\"type\";s:5:\"color\";}s:13:\"btnBackground\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:7:\"buttons\";s:4:\"type\";s:5:\"color\";}s:9:\"btnBorder\";a:3:{s:5:\"value\";s:7:\"#cccccc\";s:3:\"tab\";s:7:\"buttons\";s:4:\"type\";s:5:\"color\";}s:12:\"btnTextColor\";a:3:{s:5:\"value\";s:7:\"#333333\";s:3:\"tab\";s:7:\"buttons\";s:4:\"type\";s:5:\"color\";}s:9:\"inputText\";a:3:{s:5:\"value\";s:4:\"#555\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:15:\"inputBackground\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:11:\"inputBorder\";a:3:{s:5:\"value\";s:7:\"#cccccc\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:16:\"inputBorderFocus\";a:3:{s:5:\"value\";s:20:\"rgba(82,168,236,0.8)\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:23:\"inputDisabledBackground\";a:3:{s:5:\"value\";s:7:\"#eeeeee\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:10:\"labelColor\";a:3:{s:5:\"value\";s:7:\"#aaaaaa\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:18:\"dropdownBackground\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:14:\"dropdownBorder\";a:3:{s:5:\"value\";s:16:\"rgba(0,0,0,0.15)\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:17:\"dropdownLinkColor\";a:3:{s:5:\"value\";s:7:\"#333333\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:22:\"dropdownLinkColorHover\";a:3:{s:5:\"value\";s:7:\"#262626\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:27:\"dropdownLinkBackgroundHover\";a:3:{s:5:\"value\";s:7:\"#f5f5f5\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:15:\"placeholderText\";a:3:{s:5:\"value\";s:7:\"#999999\";s:3:\"tab\";s:5:\"forms\";s:4:\"type\";s:5:\"color\";}s:10:\"todayColor\";a:3:{s:5:\"value\";s:7:\"#ffffdd\";s:3:\"tab\";s:8:\"calendar\";s:4:\"type\";s:5:\"color\";}s:25:\"alldayBadgeGradientMiddle\";a:3:{s:5:\"value\";s:7:\"#3d6b99\";s:3:\"tab\";s:8:\"calendar\";s:4:\"type\";s:5:\"color\";}s:16:\"eventImageShadow\";a:3:{s:5:\"value\";s:15:\"rgba(0,0,0,0.4)\";s:3:\"tab\";s:8:\"calendar\";s:4:\"type\";s:5:\"color\";}s:17:\"eventDefaultColor\";a:3:{s:5:\"value\";s:7:\"#3d6b99\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:22:\"eventDefaultColorHover\";a:3:{s:5:\"value\";s:7:\"#335980\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:19:\"eventStubAllDayText\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:25:\"eventStubAllDayTextShadow\";a:3:{s:5:\"value\";s:15:\"rgba(0,0,0,0.4)\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:11:\"eventBorder\";a:3:{s:5:\"value\";s:7:\"#cccccc\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:15:\"eventBackground\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:19:\"eventTimeBackground\";a:3:{s:5:\"value\";s:7:\"#eeeeee\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:9:\"eventText\";a:3:{s:5:\"value\";s:7:\"#333333\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:23:\"monthViewDateBackground\";a:3:{s:5:\"value\";s:7:\"#eaf4ff\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:21:\"dayViewNowMarkerColor\";a:3:{s:5:\"value\";s:7:\"#f2c539\";s:3:\"tab\";s:5:\"month\";s:4:\"type\";s:5:\"color\";}s:21:\"agendaDateTitleBorder\";a:3:{s:5:\"value\";s:7:\"#6689AC\";s:3:\"tab\";s:6:\"agenda\";s:4:\"type\";s:5:\"color\";}s:25:\"agendaDateTitleBackground\";a:3:{s:5:\"value\";s:7:\"#ffffff\";s:3:\"tab\";s:6:\"agenda\";s:4:\"type\";s:5:\"color\";}s:20:\"agendaDateBackground\";a:3:{s:5:\"value\";s:7:\"#f2f2f2\";s:3:\"tab\";s:6:\"agenda\";s:4:\"type\";s:5:\"color\";}s:21:\"agendaTodayBackground\";a:3:{s:5:\"value\";s:7:\"#f4f4bf\";s:3:\"tab\";s:6:\"agenda\";s:4:\"type\";s:5:\"color\";}}', 'yes');
INSERT INTO `wtm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(174, 'ai1ec_settings', 'a:56:{s:31:\"enabling_ticket_invitation_page\";a:4:{s:5:\"value\";b:0;s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:9:\"ai1ec_api\";a:4:{s:5:\"value\";b:0;s:4:\"type\";s:7:\"boolean\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:16:\"ai1ec_db_version\";a:4:{s:5:\"value\";b:0;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:10:\"feeds_page\";a:4:{s:5:\"value\";s:48:\"ai1ec_event_page_all-in-one-event-calendar-feeds\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:13:\"settings_page\";a:4:{s:5:\"value\";s:51:\"ai1ec_event_page_all-in-one-event-calendar-settings\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:19:\"less_variables_page\";a:4:{s:5:\"value\";s:51:\"ai1ec_event_page_all-in-one-event-calendar-edit-css\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:17:\"input_date_format\";a:5:{s:5:\"value\";s:3:\"def\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:6:\"select\";s:3:\"tab\";s:14:\"editing-events\";s:5:\"label\";s:26:\"Input dates in this format\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:18:\"Default (d/m/yyyy)\";s:5:\"value\";s:3:\"def\";}i:1;a:2:{s:4:\"text\";s:13:\"US (m/d/yyyy)\";s:5:\"value\";s:2:\"us\";}i:2;a:2:{s:4:\"text\";s:19:\"ISO 8601 (yyyy-m-d)\";s:5:\"value\";s:3:\"iso\";}i:3;a:2:{s:4:\"text\";s:17:\"Dotted (m.d.yyyy)\";s:5:\"value\";s:3:\"dot\";}}}}s:15:\"plugins_options\";a:4:{s:5:\"value\";a:2:{s:26:\"Ai1ecImportConnectorPlugin\";a:0:{}s:23:\"Ai1ecIcsConnectorPlugin\";a:0:{}}s:4:\"type\";s:5:\"array\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:17:\"ticketing_message\";a:4:{s:5:\"value\";b:0;s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:15:\"ticketing_token\";a:4:{s:5:\"value\";s:0:\"\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:17:\"ticketing_enabled\";a:4:{s:5:\"value\";b:0;s:4:\"type\";s:7:\"boolean\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:21:\"ticketing_calendar_id\";a:4:{s:5:\"value\";N;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:16:\"calendar_page_id\";a:5:{s:5:\"value\";i:58;s:4:\"type\";s:5:\"mixed\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:22:\"calendar-page-selector\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:13:\"Calendar page\";}}s:14:\"week_start_day\";a:5:{s:5:\"value\";s:1:\"1\";s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:6:\"select\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:14:\"Week starts on\";s:7:\"options\";s:12:\"get_weekdays\";}}s:13:\"enabled_views\";a:5:{s:5:\"value\";a:4:{s:6:\"agenda\";a:5:{s:7:\"enabled\";b:1;s:7:\"default\";b:1;s:14:\"enabled_mobile\";b:1;s:14:\"default_mobile\";b:1;s:8:\"longname\";a:6:{i:0;s:6:\"Agenda\";i:1;s:6:\"Agenda\";s:8:\"singular\";s:6:\"Agenda\";s:6:\"plural\";s:6:\"Agenda\";s:7:\"context\";N;s:6:\"domain\";s:25:\"all-in-one-event-calendar\";}}s:6:\"oneday\";a:5:{s:7:\"enabled\";b:1;s:7:\"default\";b:0;s:14:\"enabled_mobile\";b:1;s:14:\"default_mobile\";b:0;s:8:\"longname\";a:6:{i:0;s:3:\"Day\";i:1;s:3:\"Day\";s:8:\"singular\";s:3:\"Day\";s:6:\"plural\";s:3:\"Day\";s:7:\"context\";N;s:6:\"domain\";s:25:\"all-in-one-event-calendar\";}}s:5:\"month\";a:5:{s:7:\"enabled\";b:1;s:7:\"default\";b:0;s:14:\"enabled_mobile\";b:1;s:14:\"default_mobile\";b:0;s:8:\"longname\";a:6:{i:0;s:5:\"Month\";i:1;s:5:\"Month\";s:8:\"singular\";s:5:\"Month\";s:6:\"plural\";s:5:\"Month\";s:7:\"context\";N;s:6:\"domain\";s:25:\"all-in-one-event-calendar\";}}s:4:\"week\";a:5:{s:7:\"enabled\";b:1;s:7:\"default\";b:0;s:14:\"enabled_mobile\";b:1;s:14:\"default_mobile\";b:0;s:8:\"longname\";a:6:{i:0;s:4:\"Week\";i:1;s:4:\"Week\";s:8:\"singular\";s:4:\"Week\";s:6:\"plural\";s:4:\"Week\";s:7:\"context\";N;s:6:\"domain\";s:25:\"all-in-one-event-calendar\";}}}s:4:\"type\";s:5:\"array\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:13:\"enabled-views\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:15:\"Available views\";}}s:15:\"timezone_string\";a:5:{s:5:\"value\";s:0:\"\";s:4:\"type\";s:9:\"wp_option\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:6:\"select\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:8:\"Timezone\";s:7:\"options\";s:33:\"Ai1ec_Date_Timezone:get_timezones\";}}s:23:\"default_tags_categories\";a:5:{s:5:\"value\";a:2:{s:10:\"categories\";a:0:{}s:4:\"tags\";a:0:{}}s:4:\"type\";s:5:\"array\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:15:\"tags-categories\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:28:\"Preselected calendar filters\";s:4:\"help\";s:80:\"To clear, hold &#8984;/<abbr class=\"initialism\">CTRL</abbr> and click selection.\";}}s:10:\"exact_date\";a:5:{s:5:\"value\";s:0:\"\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:38:\"Default calendar start date (optional)\";s:4:\"type\";s:4:\"date\";}}s:22:\"agenda_events_per_page\";a:5:{s:5:\"value\";i:10;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:7:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:25:\"Agenda pages show at most\";s:4:\"type\";s:6:\"append\";s:6:\"append\";s:6:\"events\";s:9:\"validator\";s:7:\"numeric\";}}s:19:\"week_view_starts_at\";a:5:{s:5:\"value\";i:8;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:7:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:23:\"Week/Day view starts at\";s:4:\"type\";s:6:\"append\";s:6:\"append\";s:3:\"hrs\";s:9:\"validator\";s:7:\"numeric\";}}s:17:\"week_view_ends_at\";a:5:{s:5:\"value\";i:24;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:7:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:21:\"Week/Day view ends at\";s:4:\"type\";s:6:\"append\";s:6:\"append\";s:3:\"hrs\";s:9:\"validator\";s:7:\"numeric\";}}s:19:\"google_maps_api_key\";a:5:{s:5:\"value\";s:0:\"\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:349:\"<span class=\"ai1ec-tooltip-toggle\"\n                                    data-original-title=\"Google may request for an API key in order to show the map\">\n                                    Google Maps API Key</span> (<a target=\"_blank\" href=\"https://developers.google.com/maps/documentation/javascript/get-api-key#get-an-api-key\">Get an API key</a>)\";s:4:\"type\";s:6:\"normal\";}}s:15:\"month_word_wrap\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:52:\"<strong>Word-wrap event stubs</strong> in Month view\";s:4:\"help\";s:46:\"Only applies to events that span a single day.\";}}s:30:\"agenda_include_entire_last_day\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:318:\"In <span class=\"ai1ec-tooltip-toggle\"\n                        data-original-title=\"These include Agenda view,\n                        the Upcoming Events widget, and some extended views.\">\n                        Agenda-like views</span>, <strong>include all events\n                        from last day shown</strong>\";}}s:22:\"agenda_events_expanded\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:56:\"Keep all events <strong>expanded</strong> in Agenda view\";}}s:25:\"show_year_in_agenda_dates\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:50:\"<strong>Show year</strong> in calendar date labels\";}}s:22:\"show_location_in_title\";a:5:{s:5:\"value\";b:1;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:64:\"<strong>Show location in event titles</strong> in calendar views\";}}s:19:\"exclude_from_search\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:51:\"<strong>Exclude</strong> events from search results\";}}s:29:\"turn_off_subscription_buttons\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:108:\"Hide <strong>Subscribe</strong>/<strong>Add to Calendar</strong> buttons in calendar and single event views \";}}s:27:\"disable_get_calendar_button\";a:5:{s:5:\"value\";b:1;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:50:\"Hide <strong>Get a Timely Calendar</strong> button\";}}s:23:\"hide_maps_until_clicked\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:48:\" Hide <strong>Google Maps</strong> until clicked\";}}s:17:\"affix_filter_menu\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:80:\" <strong>Affix filter menu</strong> to top of window when it scrolls out of view\";s:4:\"help\";s:57:\"Only applies to first visible calendar found on the page.\";}}s:24:\"affix_vertical_offset_md\";a:5:{s:5:\"value\";i:0;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:7:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:39:\"Offset affixed filter bar vertically by\";s:4:\"type\";s:6:\"append\";s:6:\"append\";s:6:\"pixels\";s:9:\"validator\";s:7:\"numeric\";}}s:24:\"affix_vertical_offset_lg\";a:5:{s:5:\"value\";i:0;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:7:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:100:\"<i class=\"ai1ec-fa ai1ec-fa-lg ai1ec-fa-fw ai1ec-fa-desktop\"></i> Wide screens only (&#8805; 1200px)\";s:4:\"type\";s:6:\"append\";s:6:\"append\";s:6:\"pixels\";s:9:\"validator\";s:7:\"numeric\";}}s:24:\"affix_vertical_offset_sm\";a:5:{s:5:\"value\";i:0;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:7:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:87:\"<i class=\"ai1ec-fa ai1ec-fa-lg ai1ec-fa-fw ai1ec-fa-tablet\"></i> Tablets only (< 980px)\";s:4:\"type\";s:6:\"append\";s:6:\"append\";s:6:\"pixels\";s:9:\"validator\";s:7:\"numeric\";}}s:24:\"affix_vertical_offset_xs\";a:5:{s:5:\"value\";i:0;s:4:\"type\";s:3:\"int\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:7:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:86:\"<i class=\"ai1ec-fa ai1ec-fa-lg ai1ec-fa-fw ai1ec-fa-mobile\"></i> Phones only (< 768px)\";s:4:\"type\";s:6:\"append\";s:6:\"append\";s:6:\"pixels\";s:9:\"validator\";s:7:\"numeric\";}}s:38:\"strict_compatibility_content_filtering\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:38:\"Strict compatibility content filtering\";}}s:19:\"hide_featured_image\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:61:\" <strong>Hide featured image</strong> from event details page\";s:4:\"help\";s:77:\"Select this option if your theme already displays each post\'s featured image.\";}}s:14:\"input_24h_time\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:3:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"editing-events\";s:5:\"label\";s:46:\" Use <strong>24h time</strong> in time pickers\";}}s:22:\"disable_autocompletion\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:3:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"editing-events\";s:5:\"label\";s:54:\"<strong>Disable address autocomplete</strong> function\";}}s:18:\"geo_region_biasing\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:3:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"editing-events\";s:5:\"label\";s:104:\"Use the configured <strong>region</strong> (WordPress locale) to bias the address autocomplete function \";}}s:24:\"show_create_event_button\";a:5:{s:5:\"value\";b:1;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:10:\"extensions\";s:5:\"label\";s:92:\" Show the old <strong>Post Your Event</strong> button above the calendar to privileged users\";s:4:\"help\";s:145:\"Install the <a target=\"_blank\" href=\"https://time.ly/\">Interactive Frontend Extension</a> for the <strong>frontend Post Your Event form</strong>.\";}}s:11:\"twitterinfo\";a:5:{s:5:\"value\";b:1;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:10:\"extensions\";s:4:\"item\";s:10:\"twittertab\";s:5:\"label\";s:0:\"\";s:4:\"help\";s:485:\"<div class=\"ai1ec-twitterinfo-wrap\"><b>Twitter</b><br>This feature allows your events to be automatically tweeted before they happen. Great way to add regular content to your twitter roll and keep your audience informed of all your great events. This feature is not yet enabled in your product. Please purchase it as a standalone for a low annual subscription or inside the Core+ bundle. <a target=\"_blank\" href=\"https://time.ly/wordpress-calendar-plugin/addons/\">Click here.</a></div>\";}}s:9:\"embedding\";a:5:{s:5:\"value\";N;s:4:\"type\";s:4:\"html\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:3:{s:5:\"class\";s:4:\"html\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:14:\"embedded-views\";}}s:21:\"calendar_css_selector\";a:5:{s:5:\"value\";s:0:\"\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:6:{s:5:\"class\";s:5:\"input\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:35:\"Move calendar into this DOM element\";s:4:\"type\";s:6:\"normal\";s:4:\"help\";s:597:\"Optional. Use this JavaScript-based shortcut to place the\n                        calendar a DOM element other than the usual page content container\n                        if you are unable to create an appropriate page template\n                         for the calendar page. To use, enter a\n                        <a target=\"_blank\" href=\"https://api.jquery.com/category/selectors/\">\n                        jQuery selector</a> that evaluates to a single DOM element.\n                        Any existing markup found within the target will be replaced\n                        by the calendar.\";}}s:22:\"skip_in_the_loop_check\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:98:\"<strong>Skip <tt>in_the_loop()</tt> check </strong> that protects against multiple calendar output\";s:4:\"help\";s:225:\"Try enabling this option if your calendar does not appear on the calendar page. It is needed for compatibility with a small number of themes that call <tt>the_content()</tt> from outside of The Loop. Leave disabled otherwise.\";}}s:24:\"disable_gzip_compression\";a:5:{s:5:\"value\";b:1;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:42:\"Disable <strong>gzip</strong> compression.\";s:4:\"help\";s:262:\"Use this option if calendar is unresponsive. <a target=\"_blank\" href=\"https://time.ly/document/user-guide/troubleshooting/disable-gzip-compression/\">Read more</a> about the issue. (From version 2.1 onwards, gzip is disabled by default for maximum compatibility.)\";}}s:28:\"ai1ec_use_frontend_rendering\";a:5:{s:5:\"value\";b:1;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:23:\"Use frontend rendering.\";s:4:\"help\";s:85:\"Renders calendar views on the client rather than the server; can improve performance.\";}}s:16:\"cache_dynamic_js\";a:5:{s:5:\"value\";b:1;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:22:\"Use advanced JS cache.\";s:4:\"help\";s:59:\"Cache dynamically generated JS files. Improves performance.\";}}s:18:\"render_css_as_link\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:94:\"<strong>Link CSS</strong> in <code>&lt;head&gt;</code> section when file cache is unavailable.\";s:4:\"help\";s:123:\"Use this option if file cache is unavailable and you would prefer to serve CSS as a link rather than have it output inline.\";}}s:15:\"edit_robots_txt\";a:5:{s:5:\"value\";s:484:\"User-agent: *\r\nDisallow: /calendar/action~posterboard/\r\nDisallow: /calendar/action~agenda/\r\nDisallow: /calendar/action~oneday/\r\nDisallow: /calendar/action~month/\r\nDisallow: /calendar/action~week/\r\nDisallow: /calendar/action~stream/\r\nDisallow: /calendar/action~undefined/\r\nDisallow: /calendar/action~http:/\r\nDisallow: /calendar/action~default/\r\nDisallow: /calendar/action~poster/\r\nDisallow: /calendar/action~*/\r\nDisallow: /*controller=ai1ec_exporter_controller*\r\nDisallow: /*/action~*/\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:8:{s:5:\"class\";s:8:\"textarea\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:48:\"Current <strong>robots.txt</strong> on this site\";s:4:\"type\";s:6:\"normal\";s:4:\"rows\";i:6;s:8:\"readonly\";s:8:\"readonly\";s:4:\"help\";s:517:\"The Robot Exclusion Standard, also known as the Robots Exclusion Protocol or\n                        <code><a href=\"https://en.wikipedia.org/wiki/Robots.txt\" target=\"_blank\">robots.txt</a></code>\n                        protocol, is a convention for cooperating web crawlers and other web robots\n                        about accessing all or part of a website that is otherwise publicly viewable.\n                        You can change it manually by editing <code>robots.txt</code> in your root WordPress directory.\";}}s:16:\"allow_statistics\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:8:\"advanced\";s:5:\"label\";s:184:\"<strong>Publicize, promote, and share my events</strong> marked as public on the Timely network. (<a href=\"https://time.ly/event-search-calendar\" target=\"_blank\">Learn more &#187;</a>)\";}}s:14:\"legacy_options\";a:4:{s:5:\"value\";N;s:4:\"type\";s:14:\"legacy_options\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:13:\"ics_cron_freq\";a:4:{s:5:\"value\";s:6:\"hourly\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";}s:10:\"twig_cache\";a:5:{s:5:\"value\";s:76:\"C:\\xampp\\htdocs\\wtm\\wp-content\\plugins\\all-in-one-event-calendar\\cache\\twig\\\";s:4:\"type\";s:6:\"string\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:4:{s:5:\"class\";s:5:\"cache\";s:3:\"tab\";s:8:\"advanced\";s:4:\"item\";s:5:\"cache\";s:5:\"label\";s:41:\"Templates cache improves site performance\";}}s:28:\"always_use_calendar_timezone\";a:5:{s:5:\"value\";b:0;s:4:\"type\";s:4:\"bool\";s:6:\"legacy\";b:0;s:7:\"version\";s:6:\"2.5.28\";s:8:\"renderer\";a:5:{s:5:\"class\";s:8:\"checkbox\";s:3:\"tab\";s:14:\"viewing-events\";s:4:\"item\";s:14:\"viewing-events\";s:5:\"label\";s:53:\"Display events in <strong>calendar time zone</strong>\";s:4:\"help\";s:131:\"If this box is checked events will appear in the calendar time zone with time zone information displayed on the event details page.\";}}}', 'yes'),
(175, 'ai1ec_scheduler_hooks', 'a:3:{s:5:\"hooks\";a:2:{s:24:\"ai1ec_purge_events_cache\";a:5:{s:4:\"hook\";s:24:\"ai1ec_purge_events_cache\";s:9:\"timestamp\";i:1517685510;s:7:\"version\";s:1:\"0\";s:10:\"recurrence\";s:11:\"every_10800\";s:4:\"freq\";s:2:\"3h\";}s:10:\"ai1ec_cron\";a:5:{s:4:\"hook\";s:10:\"ai1ec_cron\";s:9:\"timestamp\";i:1517686120;s:7:\"version\";s:6:\"2.5.28\";s:10:\"recurrence\";s:6:\"hourly\";s:4:\"freq\";s:6:\"hourly\";}}s:5:\"freqs\";a:2:{i:10800;a:3:{s:4:\"hash\";s:11:\"every_10800\";s:4:\"name\";N;s:7:\"seconds\";i:10800;}i:3600;a:3:{s:4:\"hash\";s:10:\"every_3600\";s:4:\"name\";N;s:7:\"seconds\";i:3600;}}s:7:\"version\";s:6:\"2.5.28\";}', 'yes'),
(176, 'widget_ai1ec_agenda_widget', 'a:2:{i:2;a:11:{s:5:\"title\";s:15:\"Upcoming Events\";s:15:\"events_per_page\";i:10;s:13:\"days_per_page\";i:10;s:16:\"events_seek_type\";s:6:\"events\";s:22:\"show_subscribe_buttons\";b:1;s:20:\"show_calendar_button\";b:1;s:21:\"hide_on_calendar_page\";b:1;s:12:\"limit_by_cat\";b:0;s:7:\"cat_ids\";a:0:{}s:12:\"limit_by_tag\";b:0;s:7:\"tag_ids\";a:0:{}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'ai1ec_admin', 'a:4:{s:9:\"_messages\";a:1:{s:40:\"f10130aba3124f245d60a1d06ece6e2dc6990ebd\";a:5:{s:7:\"message\";s:61:\"Selected timezone \"UTC+0\" will be treated as Atlantic/Azores.\";s:5:\"class\";s:7:\"updated\";s:10:\"importance\";i:0;s:10:\"persistent\";b:0;s:7:\"msg_key\";s:40:\"f10130aba3124f245d60a1d06ece6e2dc6990ebd\";}}s:3:\"all\";a:0:{}s:21:\"network_admin_notices\";a:0:{}s:13:\"admin_notices\";a:1:{s:40:\"f10130aba3124f245d60a1d06ece6e2dc6990ebd\";s:40:\"f10130aba3124f245d60a1d06ece6e2dc6990ebd\";}}', 'no'),
(178, 'ai1ec_api_settings', 'a:5:{s:7:\"enabled\";b:0;s:7:\"message\";b:0;s:5:\"token\";s:0:\"\";s:11:\"calendar_id\";i:0;s:16:\"payment_settings\";a:5:{s:14:\"payment_method\";s:6:\"paypal\";s:12:\"paypal_email\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";}}', 'yes'),
(181, '_ai1ec_review', 'a:1:{s:12:\"release_date\";s:10:\"1517685603\";}', 'no'),
(184, 'ai1ec_filename_css', '6b3f3593_ai1ec_parsed_css.css', 'yes'),
(185, 'ai1ec_render_css', 'http://localhost/wtm/wp-content/plugins/all-in-one-event-calendar/cache/6b3f3593_ai1ec_parsed_css.css', 'yes'),
(190, 'ai1ec_ics_db_version', '236', 'no'),
(196, 'ai1ec_robots_txt', 'a:2:{s:12:\"is_installed\";b:1;s:7:\"page_id\";i:58;}', 'no'),
(197, 'events_categories_children', 'a:0:{}', 'yes'),
(202, 'eventorganiser_options', 'a:20:{s:8:\"supports\";a:7:{i:0;s:6:\"author\";i:1;s:9:\"thumbnail\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom-fields\";i:4;s:8:\"eventtag\";i:5;s:5:\"title\";i:6;s:6:\"editor\";}s:14:\"event_redirect\";s:6:\"events\";s:10:\"dateformat\";s:5:\"d-m-Y\";s:9:\"prettyurl\";i:1;s:9:\"templates\";s:11:\"themecompat\";s:9:\"addtomenu\";s:14:\"menu-principal\";s:17:\"excludefromsearch\";i:0;s:8:\"showpast\";i:0;s:12:\"group_events\";s:0:\"\";s:9:\"url_venue\";s:13:\"events/venues\";s:7:\"url_cat\";s:15:\"events/category\";s:7:\"url_tag\";s:10:\"events/tag\";s:8:\"navtitle\";s:6:\"Events\";s:8:\"eventtag\";i:1;s:4:\"feed\";i:1;s:16:\"runningisnotpast\";b:0;s:13:\"deleteexpired\";i:0;s:11:\"disable_css\";i:0;s:14:\"google_api_key\";b:0;s:15:\"menu_item_db_id\";i:63;}', 'yes'),
(203, 'eventorganiser_admin_notices', 'a:1:{i:0;s:17:\"changedtemplate17\";}', 'yes'),
(204, 'widget_eo_events_agenda_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'widget_eo_event_list_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'widget_eo_calendar_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'widget_eo-event-categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'widget_eo-event-venues', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'eventorganiser_version', '3.6.2', 'yes'),
(213, '_transient_eo_is_multi_event_organiser', '0', 'yes'),
(218, 'event-category_children', 'a:0:{}', 'yes'),
(219, 'salon_settings', 'a:28:{s:11:\"date_format\";s:7:\"default\";s:11:\"time_format\";s:7:\"default\";s:17:\"hours_before_from\";s:6:\"+1 day\";s:15:\"hours_before_to\";s:8:\"+1 month\";s:8:\"interval\";i:60;s:17:\"availability_mode\";s:5:\"basic\";s:16:\"disabled_message\";s:87:\"Booking is not available at the moment, please contact us at manessongvanessa@gmail.com\";s:8:\"gen_name\";s:0:\"\";s:9:\"gen_email\";s:0:\"\";s:9:\"gen_phone\";s:14:\"00391122334455\";s:11:\"gen_address\";s:15:\"Main Street 123\";s:13:\"gen_timetable\";s:94:\"In case of delay we\'ll keep your \"seat\" for 15 minutes, after that you\'ll loose your priority.\";s:12:\"soc_facebook\";s:23:\"http://www.facebook.com\";s:11:\"soc_twitter\";s:22:\"http://www.twitter.com\";s:10:\"soc_google\";s:20:\"http://www.google.it\";s:12:\"ajax_enabled\";b:1;s:7:\"booking\";b:1;s:8:\"thankyou\";b:1;s:14:\"availabilities\";a:1:{i:0;a:3:{s:4:\"days\";a:5:{i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;}s:4:\"from\";a:2:{i:0;s:5:\"08:00\";i:1;s:5:\"13:00\";}s:2:\"to\";a:2:{i:0;s:5:\"13:00\";i:1;s:5:\"20:00\";}}}s:13:\"email_subject\";s:58:\"Your booking reminder for [DATE] at [TIME] at [SALON NAME]\";s:22:\"booking_update_message\";s:74:\"Hi [NAME],\\r\\ntake note of the details of your reservation at [SALON NAME]\";s:17:\"follow_up_message\";s:148:\"Hi [NAME],\\r\\nIt\'s been a while since your last visit, would you like to book a new appointment with us?\\r\\n\\r\\nWe look forward to seeing you again.\";s:12:\"pay_currency\";s:3:\"USD\";s:16:\"pay_currency_pos\";s:5:\"right\";s:16:\"pay_paypal_email\";s:13:\"test@test.com\";s:15:\"pay_paypal_test\";b:1;s:14:\"parallels_hour\";i:1;s:14:\"sln_db_version\";s:6:\"3.19.1\";}', 'yes'),
(220, 'salon_cache', 'a:28:{s:10:\"2018-02-04\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}s:10:\"2018-02-05\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-06\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-07\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-08\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-09\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-10\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}s:10:\"2018-02-11\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}s:10:\"2018-02-12\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-13\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-14\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-15\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-16\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-17\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}s:10:\"2018-02-18\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}s:10:\"2018-02-19\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-20\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-21\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-22\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-23\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-24\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}s:10:\"2018-02-25\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}s:10:\"2018-02-26\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-27\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-02-28\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-03-01\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-03-02\";a:2:{s:10:\"free_slots\";a:13:{i:0;s:5:\"08:00\";i:1;s:5:\"09:00\";i:2;s:5:\"10:00\";i:3;s:5:\"11:00\";i:4;s:5:\"12:00\";i:5;s:5:\"13:00\";i:6;s:5:\"14:00\";i:7;s:5:\"15:00\";i:8;s:5:\"16:00\";i:9;s:5:\"17:00\";i:10;s:5:\"18:00\";i:11;s:5:\"19:00\";i:12;s:5:\"20:00\";}s:6:\"status\";s:4:\"free\";}s:10:\"2018-03-03\";a:2:{s:10:\"free_slots\";a:0:{}s:6:\"status\";s:13:\"booking_rules\";}}', 'no'),
(253, 'widget_recent-comments', 'a:3:{i:1;a:0:{}i:2;a:2:{s:5:\"title\";s:3:\"ras\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'cptui_post_types', 'a:3:{s:14:\"Mot du manager\";a:28:{s:4:\"name\";s:14:\"Mot du manager\";s:5:\"label\";s:14:\"Mot du manager\";s:14:\"singular_label\";s:14:\"Mot du manager\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"membre\";a:28:{s:4:\"name\";s:6:\"membre\";s:5:\"label\";s:11:\"Les membres\";s:14:\"singular_label\";s:9:\"un membre\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:11:\"mot_manager\";a:28:{s:4:\"name\";s:11:\"mot_manager\";s:5:\"label\";s:14:\"Mot du manager\";s:14:\"singular_label\";s:14:\"Mot du manager\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(285, '_site_transient_timeout_theme_roots', '1518511554', 'no'),
(286, '_site_transient_theme_roots', 'a:5:{s:26:\"realistic_/realistic-child\";s:7:\"/themes\";s:20:\"realistic_/realistic\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(288, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1518509789;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(289, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"manessongvanessa@gmail.com\";s:7:\"version\";s:5:\"4.9.4\";s:9:\"timestamp\";i:1518509795;}', 'no'),
(291, '_transient_timeout_ai1ec_api_checked', '1518510845', 'no'),
(292, '_transient_ai1ec_api_checked', '1', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wtm_postmeta`
--

CREATE TABLE `wtm_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wtm_postmeta`
--

INSERT INTO `wtm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_edit_last', '1'),
(2, 2, '_edit_lock', '1517259797:1'),
(3, 2, '_wp_page_template', 'page-accueil.php'),
(4, 4, '_edit_last', '1'),
(5, 4, '_edit_lock', '1517867900:1'),
(6, 4, '_wp_page_template', 'page-presentation.php'),
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1517604057:1'),
(9, 6, '_wp_page_template', 'page-evenement.php'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1517429676:1'),
(12, 8, '_wp_page_template', 'page-membre.php'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1517685831:1'),
(15, 10, '_wp_page_template', 'page-agenda.php'),
(16, 12, '_edit_last', '1'),
(17, 12, '_edit_lock', '1517602395:1'),
(18, 12, '_wp_page_template', 'page-activite.php'),
(19, 14, '_edit_last', '1'),
(20, 14, '_edit_lock', '1517602443:1'),
(21, 14, '_wp_page_template', 'page-projet.php'),
(22, 16, '_menu_item_type', 'post_type'),
(23, 16, '_menu_item_menu_item_parent', '0'),
(24, 16, '_menu_item_object_id', '14'),
(25, 16, '_menu_item_object', 'page'),
(26, 16, '_menu_item_target', ''),
(27, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 16, '_menu_item_xfn', ''),
(29, 16, '_menu_item_url', ''),
(31, 17, '_menu_item_type', 'post_type'),
(32, 17, '_menu_item_menu_item_parent', '0'),
(33, 17, '_menu_item_object_id', '12'),
(34, 17, '_menu_item_object', 'page'),
(35, 17, '_menu_item_target', ''),
(36, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 17, '_menu_item_xfn', ''),
(38, 17, '_menu_item_url', ''),
(40, 18, '_menu_item_type', 'post_type'),
(41, 18, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_object_id', '10'),
(43, 18, '_menu_item_object', 'page'),
(44, 18, '_menu_item_target', ''),
(45, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 18, '_menu_item_xfn', ''),
(47, 18, '_menu_item_url', ''),
(49, 19, '_menu_item_type', 'post_type'),
(50, 19, '_menu_item_menu_item_parent', '0'),
(51, 19, '_menu_item_object_id', '8'),
(52, 19, '_menu_item_object', 'page'),
(53, 19, '_menu_item_target', ''),
(54, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 19, '_menu_item_xfn', ''),
(56, 19, '_menu_item_url', ''),
(58, 20, '_menu_item_type', 'post_type'),
(59, 20, '_menu_item_menu_item_parent', '0'),
(60, 20, '_menu_item_object_id', '6'),
(61, 20, '_menu_item_object', 'page'),
(62, 20, '_menu_item_target', ''),
(63, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 20, '_menu_item_xfn', ''),
(65, 20, '_menu_item_url', ''),
(67, 21, '_menu_item_type', 'post_type'),
(68, 21, '_menu_item_menu_item_parent', '0'),
(69, 21, '_menu_item_object_id', '4'),
(70, 21, '_menu_item_object', 'page'),
(71, 21, '_menu_item_target', ''),
(72, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 21, '_menu_item_xfn', ''),
(74, 21, '_menu_item_url', ''),
(76, 22, '_menu_item_type', 'post_type'),
(77, 22, '_menu_item_menu_item_parent', '0'),
(78, 22, '_menu_item_object_id', '2'),
(79, 22, '_menu_item_object', 'page'),
(80, 22, '_menu_item_target', ''),
(81, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 22, '_menu_item_xfn', ''),
(83, 22, '_menu_item_url', ''),
(84, 24, '_wp_attached_file', '2018/01/image.jpg'),
(85, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:17:\"2018/01/image.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"image-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"image-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"image-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:17:\"image-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:17:\"image-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:17:\"image-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:17:\"image-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:15:\"image-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 25, '_wp_attached_file', '2018/01/logo_gdg_ndere.png'),
(87, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:367;s:6:\"height\";i:200;s:4:\"file\";s:26:\"2018/01/logo_gdg_ndere.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo_gdg_ndere-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"logo_gdg_ndere-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:26:\"logo_gdg_ndere-218x181.png\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:26:\"logo_gdg_ndere-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:24:\"logo_gdg_ndere-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 26, '_wp_attached_file', '2018/01/team1.jpg'),
(89, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:17:\"2018/01/team1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"team1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:17:\"team1-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:17:\"team1-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:17:\"team1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:15:\"team1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:6:\"One A9\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1493194043\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.5\";s:3:\"iso\";s:3:\"120\";s:13:\"shutter_speed\";s:8:\"0.059991\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(90, 27, '_wp_attached_file', '2018/01/team2.jpg'),
(91, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:17:\"2018/01/team2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"team2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:17:\"team2-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:17:\"team2-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:17:\"team2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:15:\"team2-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:6:\"One A9\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1500537106\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.5\";s:3:\"iso\";s:3:\"229\";s:13:\"shutter_speed\";s:8:\"0.080005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(92, 28, '_wp_attached_file', '2018/01/team3.jpg'),
(93, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:333;s:4:\"file\";s:17:\"2018/01/team3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"team3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"team3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:17:\"team3-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:17:\"team3-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:17:\"team3-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:15:\"team3-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:6:\"One A9\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1499155293\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.5\";s:3:\"iso\";s:3:\"424\";s:13:\"shutter_speed\";s:8:\"0.099993\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(94, 29, '_wp_attached_file', '2018/01/wtm.png'),
(95, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1660;s:6:\"height\";i:1569;s:4:\"file\";s:15:\"2018/01/wtm.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"wtm-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"wtm-300x284.png\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"wtm-768x726.png\";s:5:\"width\";i:768;s:6:\"height\";i:726;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"wtm-1024x968.png\";s:5:\"width\";i:1024;s:6:\"height\";i:968;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:15:\"wtm-850x380.png\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:15:\"wtm-218x181.png\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:15:\"wtm-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:15:\"wtm-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:13:\"wtm-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 30, '_wp_attached_file', '2018/01/wtm2.jpg'),
(97, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:521;s:4:\"file\";s:16:\"2018/01/wtm2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"wtm2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"wtm2-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"wtm2-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"wtm2-1024x213.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:16:\"wtm2-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:16:\"wtm2-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:16:\"wtm2-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"wtm2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:14:\"wtm2-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 31, '_wp_attached_file', '2018/01/wtm3.jpg'),
(99, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2431;s:6:\"height\";i:2347;s:4:\"file\";s:16:\"2018/01/wtm3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"wtm3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"wtm3-300x290.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"wtm3-768x741.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:741;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"wtm3-1024x989.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:989;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:16:\"wtm3-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:16:\"wtm3-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:16:\"wtm3-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"wtm3-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:14:\"wtm3-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 32, '_wp_attached_file', '2018/01/wtm4.jpg'),
(101, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:521;s:4:\"file\";s:16:\"2018/01/wtm4.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"wtm4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"wtm4-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"wtm4-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"wtm4-1024x213.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:16:\"wtm4-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:16:\"wtm4-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:16:\"wtm4-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"wtm4-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:14:\"wtm4-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 33, '_wp_attached_file', '2018/01/logo.jpg'),
(103, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:16:\"2018/01/logo.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:16:\"logo-500x380.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:16:\"logo-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:16:\"logo-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"logo-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:14:\"logo-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(104, 34, '_wp_attached_file', '2018/01/iwd.jpg'),
(105, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:950;s:6:\"height\";i:712;s:4:\"file\";s:15:\"2018/01/iwd.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"iwd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"iwd-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"iwd-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:15:\"iwd-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:15:\"iwd-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:15:\"iwd-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:15:\"iwd-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:13:\"iwd-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"DV150F/DV151F/DV155F\";s:7:\"caption\";s:23:\"SAMSUNG CAMERA PICTURES\";s:17:\"created_timestamp\";s:10:\"1426948469\";s:9:\"copyright\";s:14:\"Copyright 2012\";s:12:\"focal_length\";s:3:\"4.5\";s:3:\"iso\";s:3:\"240\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:23:\"SAMSUNG CAMERA PICTURES\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(106, 35, '_wp_attached_file', '2018/02/photo-1431263154979-0982327fccbb.jpg'),
(107, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1431263154979-0982327fccbb.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1431263154979-0982327fccbb-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1431263154979-0982327fccbb-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 36, '_wp_attached_file', '2018/02/photo-1441981974669-8f9bc0978b64.jpg'),
(109, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1441981974669-8f9bc0978b64.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1441981974669-8f9bc0978b64-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1441981974669-8f9bc0978b64-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1441981974669-8f9bc0978b64-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1441981974669-8f9bc0978b64-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1441981974669-8f9bc0978b64-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1441981974669-8f9bc0978b64-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1441981974669-8f9bc0978b64-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1441981974669-8f9bc0978b64-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1441981974669-8f9bc0978b64-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 37, '_wp_attached_file', '2018/02/photo-1461749280684-dccba630e2f6.jpg'),
(111, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:701;s:4:\"file\";s:44:\"2018/02/photo-1461749280684-dccba630e2f6.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1461749280684-dccba630e2f6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1461749280684-dccba630e2f6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1461749280684-dccba630e2f6-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1461749280684-dccba630e2f6-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1461749280684-dccba630e2f6-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1461749280684-dccba630e2f6-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1461749280684-dccba630e2f6-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1461749280684-dccba630e2f6-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1461749280684-dccba630e2f6-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 38, '_wp_attached_file', '2018/02/photo-1476170434383-88b137e598bb.jpg'),
(113, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1476170434383-88b137e598bb.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1476170434383-88b137e598bb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1476170434383-88b137e598bb-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1476170434383-88b137e598bb-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1476170434383-88b137e598bb-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1476170434383-88b137e598bb-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1476170434383-88b137e598bb-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1476170434383-88b137e598bb-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1476170434383-88b137e598bb-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1476170434383-88b137e598bb-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 39, '_wp_attached_file', '2018/02/photo-1477724902304-4d75535625a0.jpg'),
(115, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1477724902304-4d75535625a0.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1477724902304-4d75535625a0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1477724902304-4d75535625a0-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1477724902304-4d75535625a0-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1477724902304-4d75535625a0-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1477724902304-4d75535625a0-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1477724902304-4d75535625a0-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1477724902304-4d75535625a0-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1477724902304-4d75535625a0-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1477724902304-4d75535625a0-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 40, '_wp_attached_file', '2018/02/photo-1485570661444-73b3f0ff9d2f.jpg'),
(117, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1063;s:6:\"height\";i:697;s:4:\"file\";s:44:\"2018/02/photo-1485570661444-73b3f0ff9d2f.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1485570661444-73b3f0ff9d2f-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1485570661444-73b3f0ff9d2f-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1485570661444-73b3f0ff9d2f-768x504.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:504;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1485570661444-73b3f0ff9d2f-1024x671.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:671;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1485570661444-73b3f0ff9d2f-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1485570661444-73b3f0ff9d2f-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1485570661444-73b3f0ff9d2f-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1485570661444-73b3f0ff9d2f-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1485570661444-73b3f0ff9d2f-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 41, '_wp_attached_file', '2018/02/photo-1487546511569-62a31e1c607c.jpg'),
(119, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1052;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1487546511569-62a31e1c607c.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1487546511569-62a31e1c607c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1487546511569-62a31e1c607c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1487546511569-62a31e1c607c-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1487546511569-62a31e1c607c-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1487546511569-62a31e1c607c-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1487546511569-62a31e1c607c-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1487546511569-62a31e1c607c-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1487546511569-62a31e1c607c-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1487546511569-62a31e1c607c-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 42, '_wp_attached_file', '2018/02/photo-1491916222225-bca67746f7e3.jpg'),
(121, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1052;s:6:\"height\";i:699;s:4:\"file\";s:44:\"2018/02/photo-1491916222225-bca67746f7e3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1491916222225-bca67746f7e3-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1491916222225-bca67746f7e3-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 43, '_wp_attached_file', '2018/02/photo-1497375638960-ca368c7231e4.jpg'),
(123, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1625;s:6:\"height\";i:1122;s:4:\"file\";s:44:\"2018/02/photo-1497375638960-ca368c7231e4.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1497375638960-ca368c7231e4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1497375638960-ca368c7231e4-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1497375638960-ca368c7231e4-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1497375638960-ca368c7231e4-1024x707.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:707;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1497375638960-ca368c7231e4-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1497375638960-ca368c7231e4-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1497375638960-ca368c7231e4-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1497375638960-ca368c7231e4-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1497375638960-ca368c7231e4-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 44, '_wp_attached_file', '2018/02/photo-1497528892195-b4ee7ea4f8bc.jpg'),
(125, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1497528892195-b4ee7ea4f8bc.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1497528892195-b4ee7ea4f8bc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1497528892195-b4ee7ea4f8bc-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1497528892195-b4ee7ea4f8bc-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1497528892195-b4ee7ea4f8bc-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1497528892195-b4ee7ea4f8bc-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1497528892195-b4ee7ea4f8bc-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1497528892195-b4ee7ea4f8bc-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1497528892195-b4ee7ea4f8bc-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1497528892195-b4ee7ea4f8bc-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 45, '_wp_attached_file', '2018/02/photo-1508204152195-1ce799200f89.jpg'),
(127, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:967;s:6:\"height\";i:725;s:4:\"file\";s:44:\"2018/02/photo-1508204152195-1ce799200f89.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1508204152195-1ce799200f89-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1508204152195-1ce799200f89-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1508204152195-1ce799200f89-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1508204152195-1ce799200f89-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1508204152195-1ce799200f89-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1508204152195-1ce799200f89-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1508204152195-1ce799200f89-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1508204152195-1ce799200f89-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 46, '_wp_attached_file', '2018/02/photo-1508785166660-30ce4484f45c.jpg'),
(129, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1508785166660-30ce4484f45c.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1508785166660-30ce4484f45c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1508785166660-30ce4484f45c-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1508785166660-30ce4484f45c-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1508785166660-30ce4484f45c-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1508785166660-30ce4484f45c-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1508785166660-30ce4484f45c-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1508785166660-30ce4484f45c-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1508785166660-30ce4484f45c-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1508785166660-30ce4484f45c-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 47, '_wp_attached_file', '2018/02/photo-1515704089429-fd06e6668458.jpg'),
(131, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1515704089429-fd06e6668458.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1515704089429-fd06e6668458-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1515704089429-fd06e6668458-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1515704089429-fd06e6668458-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1515704089429-fd06e6668458-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1515704089429-fd06e6668458-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1515704089429-fd06e6668458-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1515704089429-fd06e6668458-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1515704089429-fd06e6668458-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1515704089429-fd06e6668458-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 48, '_wp_attached_file', '2018/02/photo-1431263154979-0982327fccbb-1.jpg');
INSERT INTO `wtm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(133, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:46:\"2018/02/photo-1431263154979-0982327fccbb-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"photo-1431263154979-0982327fccbb-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"photo-1431263154979-0982327fccbb-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"photo-1431263154979-0982327fccbb-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"photo-1431263154979-0982327fccbb-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:46:\"photo-1431263154979-0982327fccbb-1-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:46:\"photo-1431263154979-0982327fccbb-1-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:46:\"photo-1431263154979-0982327fccbb-1-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:46:\"photo-1431263154979-0982327fccbb-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:44:\"photo-1431263154979-0982327fccbb-1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 49, '_wp_attached_file', '2018/02/photo-1452619277684-617640be0fc4.jpg'),
(135, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:633;s:6:\"height\";i:952;s:4:\"file\";s:44:\"2018/02/photo-1452619277684-617640be0fc4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1452619277684-617640be0fc4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1452619277684-617640be0fc4-199x300.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1452619277684-617640be0fc4-633x380.jpg\";s:5:\"width\";i:633;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1452619277684-617640be0fc4-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1452619277684-617640be0fc4-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1452619277684-617640be0fc4-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1452619277684-617640be0fc4-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 50, '_wp_attached_file', '2018/02/photo-1474112704314-8162b7749a90.jpg'),
(137, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1474112704314-8162b7749a90.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1474112704314-8162b7749a90-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1474112704314-8162b7749a90-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1474112704314-8162b7749a90-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1474112704314-8162b7749a90-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1474112704314-8162b7749a90-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1474112704314-8162b7749a90-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1474112704314-8162b7749a90-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1474112704314-8162b7749a90-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1474112704314-8162b7749a90-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 51, '_wp_attached_file', '2018/02/photo-1491916222225-bca67746f7e3-1.jpg'),
(139, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1052;s:6:\"height\";i:699;s:4:\"file\";s:46:\"2018/02/photo-1491916222225-bca67746f7e3-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"photo-1491916222225-bca67746f7e3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"photo-1491916222225-bca67746f7e3-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"photo-1491916222225-bca67746f7e3-1-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"photo-1491916222225-bca67746f7e3-1-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:46:\"photo-1491916222225-bca67746f7e3-1-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:46:\"photo-1491916222225-bca67746f7e3-1-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:46:\"photo-1491916222225-bca67746f7e3-1-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:46:\"photo-1491916222225-bca67746f7e3-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:44:\"photo-1491916222225-bca67746f7e3-1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 52, '_wp_attached_file', '2018/02/photo-1499761641384-5c78e1a810b2.jpg'),
(141, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:44:\"2018/02/photo-1499761641384-5c78e1a810b2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1499761641384-5c78e1a810b2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1499761641384-5c78e1a810b2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1499761641384-5c78e1a810b2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"photo-1499761641384-5c78e1a810b2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:44:\"photo-1499761641384-5c78e1a810b2-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:44:\"photo-1499761641384-5c78e1a810b2-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:44:\"photo-1499761641384-5c78e1a810b2-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:44:\"photo-1499761641384-5c78e1a810b2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:42:\"photo-1499761641384-5c78e1a810b2-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 60, 'test', 'testt'),
(153, 60, '_edit_last', '1'),
(154, 60, '_edit_lock', '1517685977:1'),
(156, 60, 'ai1ec_banner_image', ''),
(157, 60, '_ai1ec_cost_type', 'free'),
(158, 58, '_edit_lock', '1517686291:1'),
(159, 61, '_edit_last', '1'),
(160, 61, 'ai1ec_banner_image', ''),
(161, 61, '_ai1ec_cost_type', 'free'),
(162, 61, '_edit_lock', '1517686450:1'),
(163, 62, '_eventorganiser_schedule_until', '2018-02-03 20:00:00'),
(164, 62, '_edit_last', '1'),
(165, 62, '_edit_lock', '1517687318:1'),
(166, 62, '_eventorganiser_schedule_start_start', '2018-02-03 20:00:00'),
(167, 62, '_eventorganiser_schedule_start_finish', '2018-02-03 21:00:00'),
(168, 62, '_eventorganiser_schedule_last_start', '2018-02-17 20:00:00'),
(169, 62, '_eventorganiser_schedule_last_finish', '2018-02-17 21:00:00'),
(170, 62, '_eventorganiser_event_schedule', 'a:7:{s:7:\"all_day\";i:0;s:8:\"schedule\";s:5:\"daily\";s:13:\"schedule_meta\";s:0:\"\";s:9:\"frequency\";i:1;s:7:\"exclude\";a:0:{}s:7:\"include\";a:2:{i:0;s:19:\"2018-02-01 20:00:00\";i:1;s:19:\"2018-02-17 20:00:00\";}s:12:\"duration_str\";s:38:\"+0 days +1 hours +0 minutes +0 seconds\";}'),
(171, 63, '_menu_item_type', 'post_type_archive'),
(172, 63, '_menu_item_menu_item_parent', '0'),
(173, 63, '_menu_item_object_id', '0'),
(174, 63, '_menu_item_object', 'event'),
(175, 63, '_menu_item_target', ''),
(176, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 63, '_menu_item_xfn', ''),
(178, 63, '_menu_item_url', 'http://localhost/wtm/?post_type=event'),
(179, 62, '_eventorganiser_uid', '20180203T1950Z-1517687450.065-EO-62-1@::1'),
(180, 66, '_sln_service_price', '15'),
(181, 66, '_sln_service_unit', '3'),
(182, 66, '_sln_service_order', '0'),
(183, 67, '_sln_service_price', '10.11'),
(184, 67, '_sln_service_unit', '2'),
(185, 67, '_sln_service_duration', '00:30'),
(186, 67, '_sln_service_secondary', '1'),
(187, 67, '_sln_service_notav_from', '11'),
(188, 67, '_sln_service_notav_to', '15'),
(189, 67, '_sln_service_order', '0'),
(190, 68, '_sln_service_price', '29.99'),
(191, 68, '_sln_service_unit', '2'),
(192, 68, '_sln_service_duration', '01:00'),
(193, 68, '_sln_service_secondary', '1'),
(194, 68, '_sln_service_notav_from', '11'),
(195, 68, '_sln_service_notav_to', '15'),
(196, 68, '_sln_service_order', '0'),
(201, 74, '_wp_attached_file', '2018/02/iwd2.jpg'),
(202, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:16:\"2018/02/iwd2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"iwd2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"iwd2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"iwd2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"iwd2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:16:\"iwd2-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:16:\"iwd2-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:16:\"iwd2-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"iwd2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:14:\"iwd2-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"DV150F/DV151F/DV155F\";s:7:\"caption\";s:23:\"SAMSUNG CAMERA PICTURES\";s:17:\"created_timestamp\";s:10:\"1426948469\";s:9:\"copyright\";s:14:\"Copyright 2012\";s:12:\"focal_length\";s:3:\"4.5\";s:3:\"iso\";s:3:\"240\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:23:\"SAMSUNG CAMERA PICTURES\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(203, 75, '_wp_attached_file', '2018/02/photomama.jpg'),
(204, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:21:\"2018/02/photomama.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"photomama-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"photomama-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"photomama-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"photomama-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:21:\"photomama-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:21:\"photomama-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:21:\"photomama-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:21:\"photomama-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:19:\"photomama-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(205, 76, '_wp_attached_file', '2018/02/photo_enfant.jpg'),
(206, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:24:\"2018/02/photo_enfant.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"photo_enfant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"photo_enfant-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"photo_enfant-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"photo_enfant-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:24:\"photo_enfant-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:24:\"photo_enfant-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:24:\"photo_enfant-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"photo_enfant-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:22:\"photo_enfant-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(207, 77, '_wp_attached_file', '2018/02/20170828143813Logo_AUF.jpg'),
(208, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2018/02/20170828143813Logo_AUF.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"20170828143813Logo_AUF-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"20170828143813Logo_AUF-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:34:\"20170828143813Logo_AUF-500x380.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:34:\"20170828143813Logo_AUF-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:34:\"20170828143813Logo_AUF-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:34:\"20170828143813Logo_AUF-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:32:\"20170828143813Logo_AUF-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 78, '_wp_attached_file', '2018/02/ensai_logo.jpg'),
(210, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:342;s:4:\"file\";s:22:\"2018/02/ensai_logo.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ensai_logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ensai_logo-263x300.jpg\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:22:\"ensai_logo-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:22:\"ensai_logo-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:22:\"ensai_logo-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:20:\"ensai_logo-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 79, '_wp_attached_file', '2018/02/googlogo.jpg'),
(212, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2018/02/googlogo.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"googlogo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"googlogo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:20:\"googlogo-500x380.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:20:\"googlogo-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:20:\"googlogo-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:20:\"googlogo-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:18:\"googlogo-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(213, 80, '_wp_attached_file', '2018/02/iut_ndere_logo.jpg'),
(214, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:325;s:4:\"file\";s:26:\"2018/02/iut_ndere_logo.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"iut_ndere_logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"iut_ndere_logo-277x300.jpg\";s:5:\"width\";i:277;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:26:\"iut_ndere_logo-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:26:\"iut_ndere_logo-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:26:\"iut_ndere_logo-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:24:\"iut_ndere_logo-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 81, '_wp_attached_file', '2018/02/logo_fs.png'),
(216, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2018/02/logo_fs.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"logo_fs-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo_fs-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:19:\"logo_fs-500x380.png\";s:5:\"width\";i:500;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:19:\"logo_fs-218x181.png\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:19:\"logo_fs-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:19:\"logo_fs-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:17:\"logo_fs-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 82, '_wp_attached_file', '2018/02/logo_gdg-ndere.jpg'),
(218, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:26:\"2018/02/logo_gdg-ndere.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo_gdg-ndere-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:26:\"logo_gdg-ndere-200x181.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:26:\"logo_gdg-ndere-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:24:\"logo_gdg-ndere-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 83, '_wp_attached_file', '2018/02/logo-lockup-gdg-horizontal.jpg'),
(220, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2018/02/logo-lockup-gdg-horizontal.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"logo-lockup-gdg-horizontal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"logo-lockup-gdg-horizontal-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:38:\"logo-lockup-gdg-horizontal-500x380.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:38:\"logo-lockup-gdg-horizontal-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:38:\"logo-lockup-gdg-horizontal-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:38:\"logo-lockup-gdg-horizontal-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:36:\"logo-lockup-gdg-horizontal-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 84, '_wp_attached_file', '2018/02/logo-univ_ndere.png'),
(222, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:627;s:4:\"file\";s:27:\"2018/02/logo-univ_ndere.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"logo-univ_ndere-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"logo-univ_ndere-300x289.png\";s:5:\"width\";i:300;s:6:\"height\";i:289;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:27:\"logo-univ_ndere-650x380.png\";s:5:\"width\";i:650;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"featured\";a:4:{s:4:\"file\";s:27:\"logo-univ_ndere-218x181.png\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:27:\"logo-univ_ndere-400x250.png\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"small\";a:4:{s:4:\"file\";s:27:\"logo-univ_ndere-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:25:\"logo-univ_ndere-70x70.png\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 85, '_wp_attached_file', '2018/02/women-tech-makers.jpg'),
(224, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2018/02/women-tech-makers.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"women-tech-makers-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"women-tech-makers-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:29:\"women-tech-makers-500x380.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:29:\"women-tech-makers-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:29:\"women-tech-makers-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:29:\"women-tech-makers-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:27:\"women-tech-makers-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 88, '_wp_attached_file', '2018/02/img_chicago1.jpg'),
(230, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2018/02/img_chicago1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"img_chicago1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"img_chicago1-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"img_chicago1-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"img_chicago1-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:24:\"img_chicago1-850x380.jpg\";s:5:\"width\";i:850;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:24:\"img_chicago1-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:24:\"img_chicago1-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:24:\"img_chicago1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:22:\"img_chicago1-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(231, 1, '_edit_lock', '1518122229:1'),
(232, 89, '_wp_trash_meta_status', 'publish'),
(233, 89, '_wp_trash_meta_time', '1518377667'),
(234, 91, '_edit_last', '1'),
(235, 91, 'field_5a80a2fe74ba9', 'a:11:{s:3:\"key\";s:19:\"field_5a80a2fe74ba9\";s:5:\"label\";s:5:\"image\";s:4:\"name\";s:5:\"image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(237, 91, 'position', 'normal'),
(238, 91, 'layout', 'no_box'),
(239, 91, 'hide_on_screen', ''),
(240, 91, '_edit_lock', '1518379835:1'),
(241, 91, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"motdumanager\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(242, 92, '_edit_last', '1'),
(243, 92, 'field_5a80a4ffa008f', 'a:14:{s:3:\"key\";s:19:\"field_5a80a4ffa008f\";s:5:\"label\";s:13:\"Nom & prénom\";s:4:\"name\";s:10:\"nom_prenom\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:30:\"Entrer le nom suivi du prénom\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(244, 92, 'field_5a80a532a0090', 'a:14:{s:3:\"key\";s:19:\"field_5a80a532a0090\";s:5:\"label\";s:5:\"Rôle\";s:4:\"name\";s:4:\"role\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:116:\"Entrer le rôle que joue le membre au sein du groupe. s\'il est par exemple le manager, ou tout simplement un membre.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(245, 92, 'field_5a80a57ca0091', 'a:11:{s:3:\"key\";s:19:\"field_5a80a57ca0091\";s:5:\"label\";s:16:\"Photo de profil \";s:4:\"name\";s:12:\"photo_profil\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:87:\"Entrer une image illustrative du membre.\r\nNB: cette image doit être de taille: 500*333\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(247, 92, 'position', 'normal'),
(248, 92, 'layout', 'no_box'),
(249, 92, 'hide_on_screen', ''),
(250, 92, '_edit_lock', '1518511817:1'),
(251, 92, 'field_5a80a61b517f4', 'a:14:{s:3:\"key\";s:19:\"field_5a80a61b517f4\";s:5:\"label\";s:14:\"Compétence(s)\";s:4:\"name\";s:10:\"competence\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:82:\"Entrer les différentes compétences du membre. Par exemple: C++, Java, Android...\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(254, 93, '_edit_last', '1'),
(255, 93, '_edit_lock', '1518512731:1'),
(256, 93, 'nom_prenom', 'Belona SONNA'),
(257, 93, '_nom_prenom', 'field_5a80a4ffa008f'),
(258, 93, 'role', 'Manager'),
(259, 93, '_role', 'field_5a80a532a0090'),
(260, 93, 'competence', 'Informatique'),
(261, 93, '_competence', 'field_5a80a61b517f4'),
(262, 93, 'photo_profil', '96'),
(263, 93, '_photo_profil', 'field_5a80a57ca0091'),
(264, 92, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"membre\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(265, 94, '_edit_last', '1'),
(266, 94, '_edit_lock', '1518384581:1'),
(267, 94, 'image', '26'),
(268, 94, '_image', 'field_5a80a2fe74ba9'),
(269, 96, '_wp_attached_file', '2018/02/face.jpg'),
(270, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:16:\"2018/02/face.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"face-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"face-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"rc_big\";a:4:{s:4:\"file\";s:16:\"face-500x380.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"featured\";a:4:{s:4:\"file\";s:16:\"face-218x181.jpg\";s:5:\"width\";i:218;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"rc_related\";a:4:{s:4:\"file\";s:16:\"face-400x250.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:16:\"face-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"tiny\";a:4:{s:4:\"file\";s:14:\"face-70x70.jpg\";s:5:\"width\";i:70;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wtm_posts`
--

CREATE TABLE `wtm_posts` (
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
-- Déchargement des données de la table `wtm_posts`
--

INSERT INTO `wtm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-27 15:10:31', '2018-01-27 15:10:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-01-27 15:10:31', '2018-01-27 15:10:31', '', 0, 'http://localhost/wtm/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-27 15:14:33', '2018-01-27 15:14:33', 'Accueil', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-01-29 20:14:06', '2018-01-29 20:14:06', '', 0, 'http://localhost/wtm/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-01-27 15:14:33', '2018-01-27 15:14:33', 'Accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-27 15:14:33', '2018-01-27 15:14:33', '', 2, 'http://localhost/wtm/?p=3', 0, 'revision', '', 0),
(4, 1, '2018-01-27 15:14:57', '2018-01-27 15:14:57', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Qui sommes nous?</span></span>', 'Qui sommes nous?', '', 'publish', 'closed', 'closed', '', 'qui-sommes-nous', '', '', '2018-02-05 20:23:44', '2018-02-05 20:23:44', '', 0, 'http://localhost/wtm/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-01-27 15:14:57', '2018-01-27 15:14:57', 'Qui sommes nous?', 'Qui sommes nous?', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-01-27 15:14:57', '2018-01-27 15:14:57', '', 4, 'http://localhost/wtm/?p=5', 0, 'revision', '', 0),
(6, 1, '2018-01-27 15:15:18', '2018-01-27 15:15:18', 'Evènements', 'Evènements', '', 'publish', 'closed', 'closed', '', 'evenements', '', '', '2018-02-02 20:16:43', '2018-02-02 20:16:43', '', 0, 'http://localhost/wtm/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-01-27 15:15:18', '2018-01-27 15:15:18', 'Evènements', 'Evènements', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-01-27 15:15:18', '2018-01-27 15:15:18', '', 6, 'http://localhost/wtm/?p=7', 0, 'revision', '', 0),
(8, 1, '2018-01-27 15:15:40', '2018-01-27 15:15:40', 'Membres', 'Membres', '', 'publish', 'closed', 'closed', '', 'membres', '', '', '2018-01-31 19:38:48', '2018-01-31 19:38:48', '', 0, 'http://localhost/wtm/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-01-27 15:15:40', '2018-01-27 15:15:40', 'Membres', 'Membres', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-01-27 15:15:40', '2018-01-27 15:15:40', '', 8, 'http://localhost/wtm/?p=9', 0, 'revision', '', 0),
(10, 1, '2018-01-27 15:16:02', '2018-01-27 15:16:02', 'Agenda', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2018-02-02 20:16:00', '2018-02-02 20:16:00', '', 0, 'http://localhost/wtm/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-01-27 15:16:02', '2018-01-27 15:16:02', 'Agenda', 'Agenda', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-01-27 15:16:02', '2018-01-27 15:16:02', '', 10, 'http://localhost/wtm/?p=11', 0, 'revision', '', 0),
(12, 1, '2018-01-27 15:16:37', '2018-01-27 15:16:37', 'Activités', 'Activités', '', 'publish', 'closed', 'closed', '', 'activites', '', '', '2018-02-02 20:12:47', '2018-02-02 20:12:47', '', 0, 'http://localhost/wtm/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-01-27 15:16:37', '2018-01-27 15:16:37', 'Activités', 'Activités', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-01-27 15:16:37', '2018-01-27 15:16:37', '', 12, 'http://localhost/wtm/?p=13', 0, 'revision', '', 0),
(14, 1, '2018-01-27 15:16:57', '2018-01-27 15:16:57', 'Projets', 'Projets', '', 'publish', 'closed', 'closed', '', 'projets', '', '', '2018-02-02 20:16:20', '2018-02-02 20:16:20', '', 0, 'http://localhost/wtm/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-01-27 15:16:57', '2018-01-27 15:16:57', 'Projets', 'Projets', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-01-27 15:16:57', '2018-01-27 15:16:57', '', 14, 'http://localhost/wtm/?p=15', 0, 'revision', '', 0),
(16, 1, '2018-01-27 15:18:06', '2018-01-27 15:18:06', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-01-27 15:18:06', '2018-01-27 15:18:06', '', 0, 'http://localhost/wtm/?p=16', 7, 'nav_menu_item', '', 0),
(17, 1, '2018-01-27 15:18:04', '2018-01-27 15:18:04', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-01-27 15:18:04', '2018-01-27 15:18:04', '', 0, 'http://localhost/wtm/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2018-01-27 15:18:05', '2018-01-27 15:18:05', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-01-27 15:18:05', '2018-01-27 15:18:05', '', 0, 'http://localhost/wtm/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2018-01-27 15:18:06', '2018-01-27 15:18:06', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-01-27 15:18:06', '2018-01-27 15:18:06', '', 0, 'http://localhost/wtm/?p=19', 6, 'nav_menu_item', '', 0),
(20, 1, '2018-01-27 15:18:05', '2018-01-27 15:18:05', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-01-27 15:18:05', '2018-01-27 15:18:05', '', 0, 'http://localhost/wtm/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2018-01-27 15:18:04', '2018-01-27 15:18:04', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-01-27 15:18:04', '2018-01-27 15:18:04', '', 0, 'http://localhost/wtm/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2018-01-27 15:18:03', '2018-01-27 15:18:03', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-01-27 15:18:03', '2018-01-27 15:18:03', '', 0, 'http://localhost/wtm/?p=22', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-01-29 21:06:12', '2018-01-29 21:06:12', '', 'image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2018-01-29 21:06:12', '2018-01-29 21:06:12', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/image.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-01-29 22:14:07', '2018-01-29 22:14:07', '', 'logo_gdg_ndere', '', 'inherit', 'open', 'closed', '', 'logo_gdg_ndere', '', '', '2018-01-29 22:14:07', '2018-01-29 22:14:07', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/logo_gdg_ndere.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2018-01-31 20:17:38', '2018-01-31 20:17:38', '', 'team1', '', 'inherit', 'open', 'closed', '', 'team1', '', '', '2018-01-31 20:17:38', '2018-01-31 20:17:38', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/team1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-01-31 20:17:39', '2018-01-31 20:17:39', '', 'team2', '', 'inherit', 'open', 'closed', '', 'team2', '', '', '2018-01-31 20:17:39', '2018-01-31 20:17:39', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/team2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-01-31 20:17:40', '2018-01-31 20:17:40', '', 'team3', '', 'inherit', 'open', 'closed', '', 'team3', '', '', '2018-01-31 20:17:40', '2018-01-31 20:17:40', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/team3.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-01-31 21:40:33', '2018-01-31 21:40:33', '', 'wtm', '', 'inherit', 'open', 'closed', '', 'wtm', '', '', '2018-01-31 21:40:33', '2018-01-31 21:40:33', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/wtm.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-01-31 21:40:42', '2018-01-31 21:40:42', '', 'wtm2', '', 'inherit', 'open', 'closed', '', 'wtm2', '', '', '2018-01-31 21:40:42', '2018-01-31 21:40:42', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/wtm2.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-01-31 21:40:46', '2018-01-31 21:40:46', '', 'wtm3', '', 'inherit', 'open', 'closed', '', 'wtm3', '', '', '2018-01-31 21:40:46', '2018-01-31 21:40:46', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/wtm3.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-01-31 21:40:57', '2018-01-31 21:40:57', '', 'wtm4', '', 'inherit', 'open', 'closed', '', 'wtm4', '', '', '2018-01-31 21:40:57', '2018-01-31 21:40:57', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/wtm4.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-01-31 21:44:04', '2018-01-31 21:44:04', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-01-31 21:44:04', '2018-01-31 21:44:04', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-01-31 21:49:27', '2018-01-31 21:49:27', '', 'SAMSUNG CAMERA PICTURES', 'SAMSUNG CAMERA PICTURES', 'inherit', 'open', 'closed', '', 'samsung-camera-pictures', '', '', '2018-01-31 21:49:27', '2018-01-31 21:49:27', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/01/iwd.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-02-02 19:51:40', '2018-02-02 19:51:40', '', 'photo-1431263154979-0982327fccbb', '', 'inherit', 'open', 'closed', '', 'photo-1431263154979-0982327fccbb', '', '', '2018-02-02 19:51:40', '2018-02-02 19:51:40', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1431263154979-0982327fccbb.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-02-02 19:51:45', '2018-02-02 19:51:45', '', 'photo-1441981974669-8f9bc0978b64', '', 'inherit', 'open', 'closed', '', 'photo-1441981974669-8f9bc0978b64', '', '', '2018-02-02 19:51:45', '2018-02-02 19:51:45', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1441981974669-8f9bc0978b64.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-02-02 19:51:49', '2018-02-02 19:51:49', '', 'photo-1461749280684-dccba630e2f6', '', 'inherit', 'open', 'closed', '', 'photo-1461749280684-dccba630e2f6', '', '', '2018-02-02 19:51:49', '2018-02-02 19:51:49', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1461749280684-dccba630e2f6.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-02-02 19:51:54', '2018-02-02 19:51:54', '', 'photo-1476170434383-88b137e598bb', '', 'inherit', 'open', 'closed', '', 'photo-1476170434383-88b137e598bb', '', '', '2018-02-02 19:51:54', '2018-02-02 19:51:54', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1476170434383-88b137e598bb.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-02-02 19:51:59', '2018-02-02 19:51:59', '', 'photo-1477724902304-4d75535625a0', '', 'inherit', 'open', 'closed', '', 'photo-1477724902304-4d75535625a0', '', '', '2018-02-02 19:51:59', '2018-02-02 19:51:59', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1477724902304-4d75535625a0.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-02-02 19:52:04', '2018-02-02 19:52:04', '', 'photo-1485570661444-73b3f0ff9d2f', '', 'inherit', 'open', 'closed', '', 'photo-1485570661444-73b3f0ff9d2f', '', '', '2018-02-02 19:52:04', '2018-02-02 19:52:04', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1485570661444-73b3f0ff9d2f.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-02-02 19:52:12', '2018-02-02 19:52:12', '', 'photo-1487546511569-62a31e1c607c', '', 'inherit', 'open', 'closed', '', 'photo-1487546511569-62a31e1c607c', '', '', '2018-02-02 19:52:12', '2018-02-02 19:52:12', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1487546511569-62a31e1c607c.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-02-02 19:52:17', '2018-02-02 19:52:17', '', 'photo-1491916222225-bca67746f7e3', '', 'inherit', 'open', 'closed', '', 'photo-1491916222225-bca67746f7e3', '', '', '2018-02-02 19:52:17', '2018-02-02 19:52:17', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1491916222225-bca67746f7e3.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-02-02 19:52:20', '2018-02-02 19:52:20', '', 'photo-1497375638960-ca368c7231e4', '', 'inherit', 'open', 'closed', '', 'photo-1497375638960-ca368c7231e4', '', '', '2018-02-02 19:52:20', '2018-02-02 19:52:20', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1497375638960-ca368c7231e4.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-02-02 19:52:27', '2018-02-02 19:52:27', '', 'photo-1497528892195-b4ee7ea4f8bc', '', 'inherit', 'open', 'closed', '', 'photo-1497528892195-b4ee7ea4f8bc', '', '', '2018-02-02 19:52:27', '2018-02-02 19:52:27', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1497528892195-b4ee7ea4f8bc.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-02-02 19:52:35', '2018-02-02 19:52:35', '', 'photo-1508204152195-1ce799200f89', '', 'inherit', 'open', 'closed', '', 'photo-1508204152195-1ce799200f89', '', '', '2018-02-02 19:52:35', '2018-02-02 19:52:35', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1508204152195-1ce799200f89.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-02-02 19:52:37', '2018-02-02 19:52:37', '', 'photo-1508785166660-30ce4484f45c', '', 'inherit', 'open', 'closed', '', 'photo-1508785166660-30ce4484f45c', '', '', '2018-02-02 19:52:37', '2018-02-02 19:52:37', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1508785166660-30ce4484f45c.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-02-02 19:52:41', '2018-02-02 19:52:41', '', 'photo-1515704089429-fd06e6668458', '', 'inherit', 'open', 'closed', '', 'photo-1515704089429-fd06e6668458', '', '', '2018-02-02 19:52:41', '2018-02-02 19:52:41', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1515704089429-fd06e6668458.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-02-02 20:22:32', '2018-02-02 20:22:32', '', 'photo-1431263154979-0982327fccbb', '', 'inherit', 'open', 'closed', '', 'photo-1431263154979-0982327fccbb-2', '', '', '2018-02-02 20:22:32', '2018-02-02 20:22:32', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1431263154979-0982327fccbb-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-02-02 20:25:00', '2018-02-02 20:25:00', '', 'photo-1452619277684-617640be0fc4', '', 'inherit', 'open', 'closed', '', 'photo-1452619277684-617640be0fc4', '', '', '2018-02-02 20:25:00', '2018-02-02 20:25:00', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1452619277684-617640be0fc4.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-02-02 20:25:04', '2018-02-02 20:25:04', '', 'photo-1474112704314-8162b7749a90', '', 'inherit', 'open', 'closed', '', 'photo-1474112704314-8162b7749a90', '', '', '2018-02-02 20:25:04', '2018-02-02 20:25:04', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1474112704314-8162b7749a90.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-02-02 20:25:09', '2018-02-02 20:25:09', '', 'photo-1491916222225-bca67746f7e3', '', 'inherit', 'open', 'closed', '', 'photo-1491916222225-bca67746f7e3-2', '', '', '2018-02-02 20:25:09', '2018-02-02 20:25:09', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1491916222225-bca67746f7e3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-02-02 20:25:14', '2018-02-02 20:25:14', '', 'photo-1499761641384-5c78e1a810b2', '', 'inherit', 'open', 'closed', '', 'photo-1499761641384-5c78e1a810b2', '', '', '2018-02-02 20:25:14', '2018-02-02 20:25:14', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo-1499761641384-5c78e1a810b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-02-03 19:18:39', '2018-02-03 19:18:39', '', 'Calendar', '', 'publish', 'closed', 'closed', '', 'calendar', '', '', '2018-02-03 19:18:39', '2018-02-03 19:18:39', '', 0, 'http://localhost/wtm/?page_id=58', 0, 'page', '', 0),
(60, 1, '2018-02-03 19:24:19', '2018-02-03 19:24:19', 'Evenement premier', 'Evenement premier', '', 'publish', 'open', 'closed', '', 'evenement-premier', '', '', '2018-02-03 19:24:19', '2018-02-03 19:24:19', '', 0, 'http://localhost/wtm/?post_type=ai1ec_event&#038;p=60', 0, 'ai1ec_event', '', 0),
(61, 1, '2018-02-03 19:34:18', '2018-02-03 19:34:18', '', '', '', 'publish', 'open', 'closed', '', '61', '', '', '2018-02-03 19:34:36', '2018-02-03 19:34:36', '', 0, 'http://localhost/wtm/?post_type=ai1ec_event&#038;p=61', 0, 'ai1ec_event', '', 0),
(62, 1, '2018-02-03 19:42:55', '2018-02-03 19:42:55', 'IWD\r\n\r\nDans la société actuelle, les gens se préoccupent plus des aliments qu’ils vont consommer chaque jour au dépriment de la valeur nutritionnelle de ces derniers. C’est notamment cette négligeance qui est d’ailleurs l’origine de plusieurs troubles alimentaires tels que l’obésité, la boulimie, le surpoids. Ces maladies étant défavorables au bien être corporel, ils sont alors des freins à l’épanouissement de l’individu dans la société et aussi dans sa vie professionnelle.', 'IWD', 'Dans la société actuelle, les gens se préoccupent plus des aliments qu’ils vont consommer chaque jour au dépriment de la valeur nutritionnelle de ces derniers. C’est notamment cette négligeance qui est d’ailleurs l’origine de plusieurs troubles alimentaires tels que l’obésité, la boulimie, le surpoids. Ces maladies étant défavorables au bien être corporel, ils sont alors des freins à l’épanouissement de l’individu dans la société et aussi dans sa vie professionnelle. ', 'publish', 'closed', 'closed', '', 'iwd', '', '', '2018-02-03 19:44:07', '2018-02-03 19:44:07', '', 0, 'http://localhost/wtm/?post_type=event&#038;p=62', 0, 'event', '', 0),
(63, 1, '2018-02-03 19:48:36', '2018-02-03 19:48:36', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-02-03 19:48:36', '2018-02-03 19:48:36', '', 0, 'http://localhost/wtm/?p=63', 8, 'nav_menu_item', '', 0),
(64, 1, '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 'Mario', 'mario', 'publish', 'closed', 'closed', '', 'mario', '', '', '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 0, 'http://localhost/wtm/?sln_attendant=mario', 0, 'sln_attendant', '', 0),
(65, 1, '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 'Pablo', 'pablo', 'publish', 'closed', 'closed', '', 'pablo', '', '', '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 0, 'http://localhost/wtm/?sln_attendant=pablo', 0, 'sln_attendant', '', 0),
(66, 1, '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 'Manicure', 'manicure', 'publish', 'closed', 'closed', '', 'manicure', '', '', '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 0, 'http://localhost/wtm/?sln_service=manicure', 0, 'sln_service', '', 0),
(67, 1, '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 'Nails styling', 'nails styling', 'publish', 'closed', 'closed', '', 'nails-styling', '', '', '2018-02-03 19:55:26', '2018-02-03 19:55:26', '', 0, 'http://localhost/wtm/?sln_service=nails-styling', 0, 'sln_service', '', 0),
(68, 1, '2018-02-03 19:55:27', '2018-02-03 19:55:27', '', 'Massage', 'massage', 'publish', 'closed', 'closed', '', 'massage', '', '', '2018-02-03 19:55:27', '2018-02-03 19:55:27', '', 0, 'http://localhost/wtm/?sln_service=massage', 0, 'sln_service', '', 0),
(69, 1, '2018-02-03 19:55:28', '2018-02-03 19:55:28', '[salon/]', 'Booking', '', 'publish', 'closed', 'closed', '', 'booking', '', '', '2018-02-03 19:55:28', '2018-02-03 19:55:28', '', 0, 'http://localhost/wtm/?page_id=69', 0, 'page', '', 0),
(70, 1, '2018-02-03 19:55:28', '2018-02-03 19:55:28', '', 'Thank you for booking', 'thank you', 'publish', 'closed', 'closed', '', 'thank-you-for-booking', '', '', '2018-02-03 19:55:28', '2018-02-03 19:55:28', '', 0, 'http://localhost/wtm/?page_id=70', 0, 'page', '', 0),
(71, 1, '2018-02-03 19:55:28', '2018-02-03 19:55:28', '[salon_booking_my_account]', 'Booking My Account', '', 'publish', 'closed', 'closed', '', 'booking-my-account', '', '', '2018-02-03 19:55:28', '2018-02-03 19:55:28', '', 0, 'http://localhost/wtm/?page_id=71', 0, 'page', '', 0),
(73, 1, '2018-02-05 20:23:44', '2018-02-05 20:23:44', '<span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Qui sommes nous?</span></span>', 'Qui sommes nous?', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-02-05 20:23:44', '2018-02-05 20:23:44', '', 4, 'http://localhost/wtm/?p=73', 0, 'revision', '', 0),
(74, 1, '2018-02-05 21:42:53', '2018-02-05 21:42:53', '', 'SAMSUNG CAMERA PICTURES', 'SAMSUNG CAMERA PICTURES', 'inherit', 'open', 'closed', '', 'samsung-camera-pictures-2', '', '', '2018-02-05 21:42:53', '2018-02-05 21:42:53', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/iwd2.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-02-05 21:53:11', '2018-02-05 21:53:11', '', 'photomama', '', 'inherit', 'open', 'closed', '', 'photomama', '', '', '2018-02-05 21:53:11', '2018-02-05 21:53:11', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photomama.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-02-05 21:58:55', '2018-02-05 21:58:55', '', 'photo_enfant', '', 'inherit', 'open', 'closed', '', 'photo_enfant', '', '', '2018-02-05 21:58:55', '2018-02-05 21:58:55', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/photo_enfant.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-02-08 18:50:37', '2018-02-08 18:50:37', '', '20170828143813!Logo_AUF', '', 'inherit', 'open', 'closed', '', '20170828143813logo_auf', '', '', '2018-02-08 18:50:37', '2018-02-08 18:50:37', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/20170828143813Logo_AUF.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-02-08 18:50:39', '2018-02-08 18:50:39', '', 'ensai_logo', '', 'inherit', 'open', 'closed', '', 'ensai_logo', '', '', '2018-02-08 18:50:39', '2018-02-08 18:50:39', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/ensai_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-02-08 18:50:41', '2018-02-08 18:50:41', '', 'googlogo', '', 'inherit', 'open', 'closed', '', 'googlogo', '', '', '2018-02-08 18:50:41', '2018-02-08 18:50:41', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/googlogo.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-02-08 18:50:46', '2018-02-08 18:50:46', '', 'iut_ndere_logo', '', 'inherit', 'open', 'closed', '', 'iut_ndere_logo', '', '', '2018-02-08 18:50:46', '2018-02-08 18:50:46', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/iut_ndere_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-02-08 18:50:47', '2018-02-08 18:50:47', '', 'logo_fs', '', 'inherit', 'open', 'closed', '', 'logo_fs', '', '', '2018-02-08 18:50:47', '2018-02-08 18:50:47', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/logo_fs.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2018-02-08 18:50:50', '2018-02-08 18:50:50', '', 'logo_gdg-ndere', '', 'inherit', 'open', 'closed', '', 'logo_gdg-ndere', '', '', '2018-02-08 18:50:50', '2018-02-08 18:50:50', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/logo_gdg-ndere.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-02-08 18:50:51', '2018-02-08 18:50:51', '', 'logo-lockup-gdg-horizontal', '', 'inherit', 'open', 'closed', '', 'logo-lockup-gdg-horizontal', '', '', '2018-02-08 18:50:51', '2018-02-08 18:50:51', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/logo-lockup-gdg-horizontal.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-02-08 18:50:53', '2018-02-08 18:50:53', '', 'logo-univ_ndere', '', 'inherit', 'open', 'closed', '', 'logo-univ_ndere', '', '', '2018-02-08 18:50:53', '2018-02-08 18:50:53', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/logo-univ_ndere.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2018-02-08 18:51:01', '2018-02-08 18:51:01', '', 'women-tech-makers', '', 'inherit', 'open', 'closed', '', 'women-tech-makers', '', '', '2018-02-08 18:51:01', '2018-02-08 18:51:01', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/women-tech-makers.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-02-08 20:05:41', '2018-02-08 20:05:41', '', 'img_chicago1', '', 'inherit', 'open', 'closed', '', 'img_chicago1', '', '', '2018-02-08 20:05:41', '2018-02-08 20:05:41', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/img_chicago1.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-02-11 19:34:26', '2018-02-11 19:34:26', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-11 19:34:26\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-11 19:34:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e27b85c-a8c3-4702-a117-e6147ecfde33', '', '', '2018-02-11 19:34:26', '2018-02-11 19:34:26', '', 0, 'http://localhost/wtm/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2018-02-11 19:35:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-11 19:35:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wtm/?p=90', 0, 'post', '', 0),
(91, 1, '2018-02-11 20:10:40', '2018-02-11 20:10:40', '', 'Mot manager', '', 'publish', 'closed', 'closed', '', 'acf_mot-manager', '', '', '2018-02-11 20:12:50', '2018-02-11 20:12:50', '', 0, 'http://localhost/wtm/?post_type=acf&#038;p=91', 0, 'acf', '', 0),
(92, 1, '2018-02-11 20:22:30', '2018-02-11 20:22:30', '', 'Membres', '', 'publish', 'closed', 'closed', '', 'acf_membres', '', '', '2018-02-11 20:35:34', '2018-02-11 20:35:34', '', 0, 'http://localhost/wtm/?post_type=acf&#038;p=92', 0, 'acf', '', 0),
(93, 1, '2018-02-11 20:34:18', '2018-02-11 20:34:18', '', 'Belona SONNA', '', 'publish', 'closed', 'closed', '', 'belona-sonna', '', '', '2018-02-13 08:53:32', '2018-02-13 08:53:32', '', 0, 'http://localhost/wtm/?post_type=membre&#038;p=93', 0, 'membre', '', 0),
(94, 1, '2018-02-11 21:23:53', '2018-02-11 21:23:53', 'La WTM by GDG NDERE rassemble un ensemble filles autour des technologies GOOGLE. Ce groupe de jeunes femmes venant d’horizons diverses avec des compétences diverses ont en commun le désir de promouvoir l’utilisation de la technologie au quotidien pour la résolution des problèmes locaux. A cet effet, nous organisons des activités de sensibilisation du grand public et nous réalisons des projets solutions pour notre localité à l’aide des technologies Google.\r\n\r\nL’information étant la base de toute action, nos objectifs au quotidien consistent à inciter les personnes et les filles en particulier à l’apprentissage et à la bonne utilisation des TIC pour être à la page de nos problèmes locaux et donc de pouvoir agir avec efficacité. Nos objectifs à long terme sont de mettre sur pieds une plateforme d’écoute pour recenser les problèmes de la localité de Ngaoundéré et de produire des solutions technologiques pour les résoudre.\r\n\r\nEn tant que Leader actuel de ce groupe, c’est un honneur pour moi de travailler avec des femmes aux compétences multiples et voulant le mettre au service de notre quotidien. Je suis convaincue que nous réaliserons de grands projets tout en gardant notre équipe toujours solide et dynamique.', 'Mot du manager', '', 'publish', 'closed', 'closed', '', 'mot-du-manager', '', '', '2018-02-11 21:23:53', '2018-02-11 21:23:53', '', 0, 'http://localhost/wtm/?post_type=motdumanager&#038;p=94', 0, 'motdumanager', '', 0),
(95, 1, '2018-02-11 21:19:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-02-11 21:19:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wtm/?post_type=motdumanager&p=95', 0, 'motdumanager', '', 0),
(96, 1, '2018-02-13 08:53:04', '2018-02-13 08:53:04', '', 'face', '', 'inherit', 'open', 'closed', '', 'face', '', '', '2018-02-13 08:53:04', '2018-02-13 08:53:04', '', 0, 'http://localhost/wtm/wp-content/uploads/2018/02/face.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wtm_termmeta`
--

CREATE TABLE `wtm_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wtm_terms`
--

CREATE TABLE `wtm_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wtm_terms`
--

INSERT INTO `wtm_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu principal', 'menu-principal', 0),
(3, 'type_even1', 'type_even1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wtm_term_relationships`
--

CREATE TABLE `wtm_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wtm_term_relationships`
--

INSERT INTO `wtm_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(61, 3, 0),
(63, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wtm_term_taxonomy`
--

CREATE TABLE `wtm_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wtm_term_taxonomy`
--

INSERT INTO `wtm_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'events_categories', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wtm_usermeta`
--

CREATE TABLE `wtm_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wtm_usermeta`
--

INSERT INTO `wtm_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wtm'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wtm_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wtm_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'session_tokens', 'a:2:{s:64:\"f3db9e63b2a29ae2be0f1ae83d516f42633ba6bac38f765cea83bd23d457257a\";a:4:{s:10:\"expiration\";i:1518550220;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36\";s:5:\"login\";i:1518377420;}s:64:\"94b83209129274b25e25849f9a550271bf30dd2cb54490de5590d449809122f9\";a:4:{s:10:\"expiration\";i:1518683286;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518510486;}}'),
(16, 1, 'wtm_user-settings', 'libraryContent=browse&mfold=o'),
(17, 1, 'wtm_user-settings-time', '1517685580'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wtm_dashboard_quick_press_last_post_id', '90'),
(22, 1, 'closedpostboxes_ai1ec_event', 'a:0:{}'),
(23, 1, 'metaboxhidden_ai1ec_event', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'meta-box-order_ai1ec_event', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:84:\"submitdiv,events_categoriesdiv,tagsdiv-events_tags,postimagediv,ai1ec_event_features\";s:6:\"normal\";s:45:\"postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_ai1ec_event', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wtm_users`
--

CREATE TABLE `wtm_users` (
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
-- Déchargement des données de la table `wtm_users`
--

INSERT INTO `wtm_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wtm', '$P$BFzmWS85dm2jKhaBWbX8nGRlP2j/UW.', 'wtm', 'manessongvanessa@gmail.com', '', '2018-01-27 15:10:27', '', 0, 'wtm');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wtm_ai1ec_events`
--
ALTER TABLE `wtm_ai1ec_events`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `feed_source` (`ical_feed_url`);

--
-- Index pour la table `wtm_ai1ec_event_category_meta`
--
ALTER TABLE `wtm_ai1ec_event_category_meta`
  ADD PRIMARY KEY (`term_id`);

--
-- Index pour la table `wtm_ai1ec_event_feeds`
--
ALTER TABLE `wtm_ai1ec_event_feeds`
  ADD PRIMARY KEY (`feed_id`),
  ADD UNIQUE KEY `feed` (`feed_url`);

--
-- Index pour la table `wtm_ai1ec_event_instances`
--
ALTER TABLE `wtm_ai1ec_event_instances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evt_instance` (`post_id`,`start`);

--
-- Index pour la table `wtm_commentmeta`
--
ALTER TABLE `wtm_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wtm_comments`
--
ALTER TABLE `wtm_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wtm_eo_events`
--
ALTER TABLE `wtm_eo_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `StartDate` (`StartDate`),
  ADD KEY `EndDate` (`EndDate`);

--
-- Index pour la table `wtm_eo_venuemeta`
--
ALTER TABLE `wtm_eo_venuemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `eo_venue_id` (`eo_venue_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wtm_links`
--
ALTER TABLE `wtm_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wtm_options`
--
ALTER TABLE `wtm_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wtm_postmeta`
--
ALTER TABLE `wtm_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wtm_posts`
--
ALTER TABLE `wtm_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wtm_termmeta`
--
ALTER TABLE `wtm_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wtm_terms`
--
ALTER TABLE `wtm_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wtm_term_relationships`
--
ALTER TABLE `wtm_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wtm_term_taxonomy`
--
ALTER TABLE `wtm_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wtm_usermeta`
--
ALTER TABLE `wtm_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wtm_users`
--
ALTER TABLE `wtm_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wtm_ai1ec_event_feeds`
--
ALTER TABLE `wtm_ai1ec_event_feeds`
  MODIFY `feed_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wtm_ai1ec_event_instances`
--
ALTER TABLE `wtm_ai1ec_event_instances`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wtm_commentmeta`
--
ALTER TABLE `wtm_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wtm_comments`
--
ALTER TABLE `wtm_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wtm_eo_events`
--
ALTER TABLE `wtm_eo_events`
  MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wtm_eo_venuemeta`
--
ALTER TABLE `wtm_eo_venuemeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wtm_links`
--
ALTER TABLE `wtm_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wtm_options`
--
ALTER TABLE `wtm_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT pour la table `wtm_postmeta`
--
ALTER TABLE `wtm_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT pour la table `wtm_posts`
--
ALTER TABLE `wtm_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `wtm_termmeta`
--
ALTER TABLE `wtm_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wtm_terms`
--
ALTER TABLE `wtm_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wtm_term_taxonomy`
--
ALTER TABLE `wtm_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wtm_usermeta`
--
ALTER TABLE `wtm_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `wtm_users`
--
ALTER TABLE `wtm_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
