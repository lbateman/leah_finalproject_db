-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.14 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for leahbate_taf
DROP DATABASE IF EXISTS `leahbate_taf`;
CREATE DATABASE IF NOT EXISTS `leahbate_taf` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `leahbate_taf`;


-- Dumping structure for table leahbate_taf.wp_commentmeta
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_commentmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_comments
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-04-05 23:43:31', '2014-04-05 23:43:31', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_links
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_options
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- Dumping structure for table leahbate_taf.wp_postmeta
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_postmeta: ~316 rows (approximately)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(6, 7, '_edit_last', '1'),
	(7, 7, '_edit_lock', '1396835181:1'),
	(8, 8, '_wp_attached_file', '2014/04/rosen_guild_logo.jpg'),
	(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:274;s:6:"height";i:97;s:4:"file";s:28:"2014/04/rosen_guild_logo.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"rosen_guild_logo-150x97.jpg";s:5:"width";i:150;s:6:"height";i:97;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(10, 7, '_thumbnail_id', '8'),
	(11, 9, '_menu_item_type', 'custom'),
	(12, 9, '_menu_item_menu_item_parent', '0'),
	(13, 9, '_menu_item_object_id', '9'),
	(14, 9, '_menu_item_object', 'custom'),
	(15, 9, '_menu_item_target', ''),
	(16, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(17, 9, '_menu_item_xfn', ''),
	(18, 9, '_menu_item_url', 'http://taf.leahbateman.com/'),
	(20, 10, '_menu_item_type', 'post_type'),
	(21, 10, '_menu_item_menu_item_parent', '0'),
	(22, 10, '_menu_item_object_id', '2'),
	(23, 10, '_menu_item_object', 'page'),
	(24, 10, '_menu_item_target', ''),
	(25, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(26, 10, '_menu_item_xfn', ''),
	(27, 10, '_menu_item_url', ''),
	(29, 11, '_menu_item_type', 'custom'),
	(30, 11, '_menu_item_menu_item_parent', '0'),
	(31, 11, '_menu_item_object_id', '11'),
	(32, 11, '_menu_item_object', 'custom'),
	(33, 11, '_menu_item_target', ''),
	(34, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(35, 11, '_menu_item_xfn', ''),
	(36, 11, '_menu_item_url', 'http://taf.leahbateman.com/'),
	(38, 12, '_menu_item_type', 'post_type'),
	(39, 12, '_menu_item_menu_item_parent', '0'),
	(40, 12, '_menu_item_object_id', '2'),
	(41, 12, '_menu_item_object', 'page'),
	(42, 12, '_menu_item_target', ''),
	(43, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(44, 12, '_menu_item_xfn', ''),
	(45, 12, '_menu_item_url', ''),
	(46, 12, '_menu_item_orphaned', '1396748443'),
	(47, 13, '_menu_item_type', 'custom'),
	(48, 13, '_menu_item_menu_item_parent', '0'),
	(49, 13, '_menu_item_object_id', '13'),
	(50, 13, '_menu_item_object', 'custom'),
	(51, 13, '_menu_item_target', ''),
	(52, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(53, 13, '_menu_item_xfn', ''),
	(54, 13, '_menu_item_url', 'http://taf.leahbateman.com/'),
	(56, 14, '_menu_item_type', 'custom'),
	(57, 14, '_menu_item_menu_item_parent', '0'),
	(58, 14, '_menu_item_object_id', '14'),
	(59, 14, '_menu_item_object', 'custom'),
	(60, 14, '_menu_item_target', ''),
	(61, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(62, 14, '_menu_item_xfn', ''),
	(63, 14, '_menu_item_url', 'http://taf.leahbateman.com/'),
	(65, 15, '_menu_item_type', 'custom'),
	(66, 15, '_menu_item_menu_item_parent', '0'),
	(67, 15, '_menu_item_object_id', '15'),
	(68, 15, '_menu_item_object', 'custom'),
	(69, 15, '_menu_item_target', ''),
	(70, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(71, 15, '_menu_item_xfn', ''),
	(72, 15, '_menu_item_url', 'http://taf.leahbateman.com/'),
	(74, 16, '_menu_item_type', 'custom'),
	(75, 16, '_menu_item_menu_item_parent', '0'),
	(76, 16, '_menu_item_object_id', '16'),
	(77, 16, '_menu_item_object', 'custom'),
	(78, 16, '_menu_item_target', ''),
	(79, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(80, 16, '_menu_item_xfn', ''),
	(81, 16, '_menu_item_url', 'http://taf.leahbateman.com/'),
	(83, 17, '_menu_item_type', 'custom'),
	(84, 17, '_menu_item_menu_item_parent', '10'),
	(85, 17, '_menu_item_object_id', '17'),
	(86, 17, '_menu_item_object', 'custom'),
	(87, 17, '_menu_item_target', ''),
	(88, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(89, 17, '_menu_item_xfn', ''),
	(90, 17, '_menu_item_url', 'http://taf.leahbateman.com/shows/randg-are-dead/'),
	(92, 18, '_edit_last', '1'),
	(93, 18, 'field_5340b4990c941', 'a:14:{s:3:"key";s:19:"field_5340b4990c941";s:5:"label";s:9:"Author(s)";s:4:"name";s:7:"authors";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:2:"by";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
	(94, 18, 'field_5340b4cc0c942', 'a:14:{s:3:"key";s:19:"field_5340b4cc0c942";s:5:"label";s:11:"Director(s)";s:4:"name";s:9:"directors";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:11:"directed by";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
	(95, 18, 'field_5340b4f70c943', 'a:14:{s:3:"key";s:19:"field_5340b4f70c943";s:5:"label";s:26:"Text for Licensing Company";s:4:"name";s:26:"text_for_licensing_company";s:4:"type";s:4:"text";s:12:"instructions";s:65:"Enter any text that the licensing company requires us to include.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
	(96, 18, 'field_5340b51f0c944', 'a:11:{s:3:"key";s:19:"field_5340b51f0c944";s:5:"label";s:19:"Description of Show";s:4:"name";s:19:"description_of_show";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
	(97, 18, 'field_5340b5420c945', 'a:13:{s:3:"key";s:19:"field_5340b5420c945";s:5:"label";s:20:"Performance Schedule";s:4:"name";s:20:"performance_schedule";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:10:"sub_fields";a:3:{i:0;a:15:{s:3:"key";s:19:"field_5340b5580c946";s:5:"label";s:11:"Day of Week";s:4:"name";s:11:"day_of_week";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:12:{s:3:"key";s:19:"field_5340b56f0c947";s:5:"label";s:4:"Date";s:4:"name";s:4:"date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:11:"date_format";s:7:"MM-d-yy";s:14:"display_format";s:8:"MM d, yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}i:2;a:15:{s:3:"key";s:19:"field_5340b5f50c948";s:5:"label";s:4:"Time";s:4:"name";s:4:"time";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
	(98, 18, 'field_5340b62a0c949', 'a:11:{s:3:"key";s:19:"field_5340b62a0c949";s:5:"label";s:10:"Venue Name";s:4:"name";s:10:"venue_name";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
	(99, 18, 'field_5340b6840c94c', 'a:13:{s:3:"key";s:19:"field_5340b6840c94c";s:5:"label";s:18:"Ticket Information";s:4:"name";s:18:"ticket_information";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:12:{s:3:"key";s:19:"field_5340b6c10c94e";s:5:"label";s:19:"Ticket Service Logo";s:4:"name";s:19:"ticket_service_logo";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:11:"save_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:12:{s:3:"key";s:19:"field_5340b7680c950";s:5:"label";s:26:"Ticket Service Description";s:4:"name";s:26:"ticket_service_description";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
	(100, 18, 'field_5340b7a30c951', 'a:11:{s:3:"key";s:19:"field_5340b7a30c951";s:5:"label";s:23:"Description of Director";s:4:"name";s:23:"description_of_director";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
	(101, 18, 'field_5340b8310c952', 'a:13:{s:3:"key";s:19:"field_5340b8310c952";s:5:"label";s:9:"Cast List";s:4:"name";s:9:"cast_list";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:10:"sub_fields";a:2:{i:0;a:15:{s:3:"key";s:19:"field_5340b84a0c953";s:5:"label";s:16:"Character\'s Name";s:4:"name";s:15:"characters_name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:15:{s:3:"key";s:19:"field_5340b8670c954";s:5:"label";s:12:"Actor\'s Name";s:4:"name";s:11:"actors_name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
	(102, 18, 'field_5340b8880c956', 'a:13:{s:3:"key";s:19:"field_5340b8880c956";s:5:"label";s:15:"Production Team";s:4:"name";s:15:"production_team";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:10:"sub_fields";a:2:{i:0;a:15:{s:3:"key";s:19:"field_5340b8970c957";s:5:"label";s:15:"Production Role";s:4:"name";s:15:"production_role";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}i:1;a:15:{s:3:"key";s:19:"field_5340b8a60c958";s:5:"label";s:4:"Name";s:4:"name";s:4:"name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}}s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
	(103, 18, 'field_5340b8cc0c959', 'a:10:{s:3:"key";s:19:"field_5340b8cc0c959";s:5:"label";s:11:"Cast Photos";s:4:"name";s:11:"cast_photos";s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'),
	(105, 18, 'position', 'normal'),
	(106, 18, 'layout', 'no_box'),
	(107, 18, 'hide_on_screen', 'a:2:{i:0;s:11:"the_content";i:1;s:7:"excerpt";}'),
	(108, 18, '_edit_lock', '1396831023:1'),
	(109, 18, 'field_5340ba906237b', 'a:14:{s:3:"key";s:19:"field_5340ba906237b";s:5:"label";s:21:"Venue Address or Area";s:4:"name";s:13:"venue_address";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:28:"Davis Square, Somerville, MA";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
	(110, 18, 'field_5340babe6237c', 'a:12:{s:3:"key";s:19:"field_5340babe6237c";s:5:"label";s:3:"Map";s:4:"name";s:3:"map";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
	(112, 19, '_wp_attached_file', '2014/04/BPT_buy_tickets_large.png'),
	(113, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:182;s:6:"height";i:92;s:4:"file";s:33:"2014/04/BPT_buy_tickets_large.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"BPT_buy_tickets_large-150x92.png";s:5:"width";i:150;s:6:"height";i:92;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(114, 19, '_wp_attachment_image_alt', 'Brown Paper Tickets logo'),
	(115, 20, '_wp_attached_file', '2014/04/rosen_guild_2014_cast.jpg'),
	(116, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2100;s:6:"height";i:855;s:4:"file";s:33:"2014/04/rosen_guild_2014_cast.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"rosen_guild_2014_cast-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"rosen_guild_2014_cast-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"rosen_guild_2014_cast-1024x416.jpg";s:5:"width";i:1024;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.100000000000000088817841970012523233890533447265625;s:6:"credit";s:0:"";s:6:"camera";s:12:"COOLPIX L120";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1390858136;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.5";s:3:"iso";s:3:"180";s:13:"shutter_speed";s:17:"0.033333333333333";s:5:"title";s:0:"";}}'),
	(117, 20, '_wp_attachment_image_alt', ''),
	(118, 7, 'authors', 'by Tom Stoppard'),
	(119, 7, '_authors', 'field_5340b4990c941'),
	(120, 7, 'directors', 'directed by Elizabeth Hunter'),
	(121, 7, '_directors', 'field_5340b4cc0c942'),
	(122, 7, 'text_for_licensing_company', 'presented by special arrangement with Samuel French, Inc.'),
	(123, 7, '_text_for_licensing_company', 'field_5340b4f70c943'),
	(124, 7, 'description_of_show', 'What would you do if you suddenly found yourself living in the world of Hamlet? When Rosencrantz &amp; Guildenstern find themselves rushing toward Elsinore with the rules of probability playing funny tricks, they don\'t know which way is up! Celebrate T@F\'s 10th Anniversary with Tom Stoppard\'s wise and witty masterwork.'),
	(125, 7, '_description_of_show', 'field_5340b51f0c944'),
	(126, 7, 'performance_schedule_0_day_of_week', 'Friday'),
	(127, 7, '_performance_schedule_0_day_of_week', 'field_5340b5580c946'),
	(128, 7, 'performance_schedule_0_date', 'April-4-2014'),
	(129, 7, '_performance_schedule_0_date', 'field_5340b56f0c947'),
	(130, 7, 'performance_schedule_0_time', '7 pm'),
	(131, 7, '_performance_schedule_0_time', 'field_5340b5f50c948'),
	(132, 7, 'performance_schedule', '7'),
	(133, 7, '_performance_schedule', 'field_5340b5420c945'),
	(134, 7, 'venue_name', '<a href="http://www.davissquaretheatre.com/" target="new">The Davis Square Theatre</a>'),
	(135, 7, '_venue_name', 'field_5340b62a0c949'),
	(136, 7, 'venue_address', 'Davis Square, Somerville, MA'),
	(137, 7, '_venue_address', 'field_5340ba906237b'),
	(138, 7, 'map', 'a:3:{s:7:"address";s:92:"Davis Square Theatre, Elm Street, Davis Square, Somerville, MA, United States, North America";s:3:"lat";s:9:"42.395523";s:3:"lng";s:18:"-71.12188500000002";}'),
	(139, 7, '_map', 'field_5340babe6237c'),
	(140, 7, 'ticket_information_0_ticket_service_logo', '19'),
	(141, 7, '_ticket_information_0_ticket_service_logo', 'field_5340b6c10c94e'),
	(142, 7, 'ticket_information_0_ticket_service_description', 'To purchase your tickets before the show, visit our online ticketing system at <a href="http://www.brownpapertickets.com/event/557209" target="_blank">Brown Paper Tickets</a>. Please note that this option has a $1.99 service fee per ticket, and that tickets may <b>not</b> be purchased online the <b>day of</b> a performance.'),
	(143, 7, '_ticket_information_0_ticket_service_description', 'field_5340b7680c950'),
	(144, 7, 'ticket_information', '1'),
	(145, 7, '_ticket_information', 'field_5340b6840c94c'),
	(146, 7, 'description_of_director', 'Elizabeth Hunter is the founding Artistic Director of Theatre@First. Ten years ago, she directed <em>Rosencrantz and Guildenstern Are Dead</em> for the first time, followed by <em>Murder in the Cathedral</em>, <em>Talley\'s Folly</em>, <em>The Merry Wives of Windsor</em>, <em>The Margaret Ghost</em>, <em>Much Ado About Nothing</em>, <em>Never After</em>, <em>Pride &amp; Prejudice</em>, and <em>The Vagina Monologues</em>. She also founded<em>Bare Bones: Staged Readings</em> at T@F and directed <em>Clubfoot, or Tales from the Back of an Ambulance</em> as part of that ongoing series. As an actor, she has appeared with T@F for<em>Festival@First 2: Summer Splash: My Boyfriend\'s Wife</em> (Raina), <em>You Can\'t Take It With You</em> (Penny), <em>Equus</em> (Dysart), and <em>Bare Bones: Mrs. Hawking</em> (Mrs. Hawking). Elizabeth is excited to celebrate Theatre@First\'s 10th Anniversary by returning to the beginning and seeing how far we\'ve come.'),
	(147, 7, '_description_of_director', 'field_5340b7a30c951'),
	(148, 7, 'cast_list_0_characters_name', 'Rosencrantz'),
	(149, 7, '_cast_list_0_characters_name', 'field_5340b84a0c953'),
	(150, 7, 'cast_list_0_actors_name', 'Jason Merrill'),
	(151, 7, '_cast_list_0_actors_name', 'field_5340b8670c954'),
	(152, 7, 'cast_list', '16'),
	(153, 7, '_cast_list', 'field_5340b8310c952'),
	(154, 7, 'production_team_0_production_role', 'Director'),
	(155, 7, '_production_team_0_production_role', 'field_5340b8970c957'),
	(156, 7, 'production_team_0_name', 'Elizabeth Hunter'),
	(157, 7, '_production_team_0_name', 'field_5340b8a60c958'),
	(158, 7, 'production_team', '15'),
	(159, 7, '_production_team', 'field_5340b8880c956'),
	(160, 7, 'cast_photos', 'a:3:{i:0;s:2:"20";i:1;s:1:"8";i:2;s:2:"19";}'),
	(161, 7, '_cast_photos', 'field_5340b8cc0c959'),
	(164, 2, '_edit_lock', '1396753323:1'),
	(171, 7, 'cast_list_1_characters_name', 'Guildenstern'),
	(172, 7, '_cast_list_1_characters_name', 'field_5340b84a0c953'),
	(173, 7, 'cast_list_1_actors_name', 'Mike Haddad'),
	(174, 7, '_cast_list_1_actors_name', 'field_5340b8670c954'),
	(175, 7, 'cast_list_2_characters_name', 'Lead Player'),
	(176, 7, '_cast_list_2_characters_name', 'field_5340b84a0c953'),
	(177, 7, 'cast_list_2_actors_name', 'Johnbarry Green'),
	(178, 7, '_cast_list_2_actors_name', 'field_5340b8670c954'),
	(179, 7, 'cast_list_3_characters_name', 'Hamlet'),
	(180, 7, '_cast_list_3_characters_name', 'field_5340b84a0c953'),
	(181, 7, 'cast_list_3_actors_name', 'Michael Tomasulo'),
	(182, 7, '_cast_list_3_actors_name', 'field_5340b8670c954'),
	(183, 7, 'cast_list_4_characters_name', 'Gertrude'),
	(184, 7, '_cast_list_4_characters_name', 'field_5340b84a0c953'),
	(185, 7, 'cast_list_4_actors_name', 'Lori-Anne Cohen'),
	(186, 7, '_cast_list_4_actors_name', 'field_5340b8670c954'),
	(187, 7, 'cast_list_5_characters_name', 'Claudius'),
	(188, 7, '_cast_list_5_characters_name', 'field_5340b84a0c953'),
	(189, 7, 'cast_list_5_actors_name', 'Geoffrey Pingree'),
	(190, 7, '_cast_list_5_actors_name', 'field_5340b8670c954'),
	(191, 7, 'cast_list_6_characters_name', 'Polonius'),
	(192, 7, '_cast_list_6_characters_name', 'field_5340b84a0c953'),
	(193, 7, 'cast_list_6_actors_name', 'Dave Policar'),
	(194, 7, '_cast_list_6_actors_name', 'field_5340b8670c954'),
	(195, 7, 'cast_list_7_characters_name', 'Ophelia'),
	(196, 7, '_cast_list_7_characters_name', 'field_5340b84a0c953'),
	(197, 7, 'cast_list_7_actors_name', 'Melody Martin'),
	(198, 7, '_cast_list_7_actors_name', 'field_5340b8670c954'),
	(199, 7, 'cast_list_8_characters_name', 'Attendant/Pirate'),
	(200, 7, '_cast_list_8_characters_name', 'field_5340b84a0c953'),
	(201, 7, 'cast_list_8_actors_name', 'Santiago Rivas'),
	(202, 7, '_cast_list_8_actors_name', 'field_5340b8670c954'),
	(203, 7, 'cast_list_9_characters_name', 'Attendant/Pirate'),
	(204, 7, '_cast_list_9_characters_name', 'field_5340b84a0c953'),
	(205, 7, 'cast_list_9_actors_name', 'Chris Soule'),
	(206, 7, '_cast_list_9_actors_name', 'field_5340b8670c954'),
	(207, 7, 'cast_list_10_characters_name', 'Ambassador'),
	(208, 7, '_cast_list_10_characters_name', 'field_5340b84a0c953'),
	(209, 7, 'cast_list_10_actors_name', 'Jack Dietz'),
	(210, 7, '_cast_list_10_actors_name', 'field_5340b8670c954'),
	(211, 7, 'cast_list_11_characters_name', 'Tragedians'),
	(212, 7, '_cast_list_11_characters_name', 'field_5340b84a0c953'),
	(213, 7, 'cast_list_11_actors_name', 'Mare Freed'),
	(214, 7, '_cast_list_11_actors_name', 'field_5340b8670c954'),
	(215, 7, 'cast_list_12_characters_name', ''),
	(216, 7, '_cast_list_12_characters_name', 'field_5340b84a0c953'),
	(217, 7, 'cast_list_12_actors_name', 'Jared Hite'),
	(218, 7, '_cast_list_12_actors_name', 'field_5340b8670c954'),
	(219, 7, 'cast_list_13_characters_name', ''),
	(220, 7, '_cast_list_13_characters_name', 'field_5340b84a0c953'),
	(221, 7, 'cast_list_13_actors_name', 'Eric Villhauer'),
	(222, 7, '_cast_list_13_actors_name', 'field_5340b8670c954'),
	(223, 7, 'cast_list_14_characters_name', ''),
	(224, 7, '_cast_list_14_characters_name', 'field_5340b84a0c953'),
	(225, 7, 'cast_list_14_actors_name', 'Chris Deter'),
	(226, 7, '_cast_list_14_actors_name', 'field_5340b8670c954'),
	(227, 7, 'cast_list_15_characters_name', ''),
	(228, 7, '_cast_list_15_characters_name', 'field_5340b84a0c953'),
	(229, 7, 'cast_list_15_actors_name', 'Micha Goolsby'),
	(230, 7, '_cast_list_15_actors_name', 'field_5340b8670c954'),
	(231, 7, 'production_team_1_production_role', 'Producer'),
	(232, 7, '_production_team_1_production_role', 'field_5340b8970c957'),
	(233, 7, 'production_team_1_name', 'Beckie Hunter'),
	(234, 7, '_production_team_1_name', 'field_5340b8a60c958'),
	(235, 7, 'production_team_2_production_role', 'Assistant Director'),
	(236, 7, '_production_team_2_production_role', 'field_5340b8970c957'),
	(237, 7, 'production_team_2_name', 'Brigid Battell'),
	(238, 7, '_production_team_2_name', 'field_5340b8a60c958'),
	(239, 7, 'production_team_3_production_role', 'Technical Director'),
	(240, 7, '_production_team_3_production_role', 'field_5340b8970c957'),
	(241, 7, 'production_team_3_name', 'Jo Guthrie'),
	(242, 7, '_production_team_3_name', 'field_5340b8a60c958'),
	(243, 7, 'production_team_4_production_role', 'Set Designer'),
	(244, 7, '_production_team_4_production_role', 'field_5340b8970c957'),
	(245, 7, 'production_team_4_name', 'Brie Frame'),
	(246, 7, '_production_team_4_name', 'field_5340b8a60c958'),
	(247, 7, 'production_team_5_production_role', 'Sound Designer'),
	(248, 7, '_production_team_5_production_role', 'field_5340b8970c957'),
	(249, 7, 'production_team_5_name', 'Neil Marsh'),
	(250, 7, '_production_team_5_name', 'field_5340b8a60c958'),
	(251, 7, 'production_team_6_production_role', 'Fight Choreographer'),
	(252, 7, '_production_team_6_production_role', 'field_5340b8970c957'),
	(253, 7, 'production_team_6_name', 'James Hester'),
	(254, 7, '_production_team_6_name', 'field_5340b8a60c958'),
	(255, 7, 'production_team_7_production_role', 'Stage Manager'),
	(256, 7, '_production_team_7_production_role', 'field_5340b8970c957'),
	(257, 7, 'production_team_7_name', 'Katie Aasland'),
	(258, 7, '_production_team_7_name', 'field_5340b8a60c958'),
	(259, 7, 'production_team_8_production_role', 'Rehearsal Assistant'),
	(260, 7, '_production_team_8_production_role', 'field_5340b8970c957'),
	(261, 7, 'production_team_8_name', 'Theresa Haas'),
	(262, 7, '_production_team_8_name', 'field_5340b8a60c958'),
	(263, 7, 'production_team_9_production_role', 'House Manager'),
	(264, 7, '_production_team_9_production_role', 'field_5340b8970c957'),
	(265, 7, 'production_team_9_name', 'Chris DeKalb'),
	(266, 7, '_production_team_9_name', 'field_5340b8a60c958'),
	(267, 7, 'production_team_10_production_role', 'Props Design'),
	(268, 7, '_production_team_10_production_role', 'field_5340b8970c957'),
	(269, 7, 'production_team_10_name', 'Shazza Gilbert'),
	(270, 7, '_production_team_10_name', 'field_5340b8a60c958'),
	(271, 7, 'production_team_11_production_role', 'Costume Design'),
	(272, 7, '_production_team_11_production_role', 'field_5340b8970c957'),
	(273, 7, 'production_team_11_name', 'Amanda Dausman'),
	(274, 7, '_production_team_11_name', 'field_5340b8a60c958'),
	(275, 7, 'production_team_12_production_role', 'Costume Design'),
	(276, 7, '_production_team_12_production_role', 'field_5340b8970c957'),
	(277, 7, 'production_team_12_name', 'Vickie Wu'),
	(278, 7, '_production_team_12_name', 'field_5340b8a60c958'),
	(279, 7, 'production_team_13_production_role', 'Make-Up/Hair Designer'),
	(280, 7, '_production_team_13_production_role', 'field_5340b8970c957'),
	(281, 7, 'production_team_13_name', 'Zeph Stewart'),
	(282, 7, '_production_team_13_name', 'field_5340b8a60c958'),
	(283, 7, 'production_team_14_production_role', 'Graphic Designer'),
	(284, 7, '_production_team_14_production_role', 'field_5340b8970c957'),
	(285, 7, 'production_team_14_name', 'Gilly Rosenthol'),
	(286, 7, '_production_team_14_name', 'field_5340b8a60c958'),
	(291, 23, '_wp_attached_file', '2014/04/header_text.png'),
	(292, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:404;s:6:"height";i:128;s:4:"file";s:23:"2014/04/header_text.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"header_text-150x128.png";s:5:"width";i:150;s:6:"height";i:128;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"header_text-300x95.png";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(293, 24, '_wp_attached_file', '2014/04/01_twitter.png'),
	(294, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:22:"2014/04/01_twitter.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(295, 25, '_wp_attached_file', '2014/04/02_facebook.png'),
	(296, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:23:"2014/04/02_facebook.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(297, 26, '_wp_attached_file', '2014/04/03_youtube.png'),
	(298, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:22:"2014/04/03_youtube.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(299, 27, '_wp_attached_file', '2014/04/14_google+.png'),
	(300, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:22:"2014/04/14_google+.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(301, 28, '_wp_attached_file', '2014/04/header_logo.png'),
	(302, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:169;s:6:"height";i:193;s:4:"file";s:23:"2014/04/header_logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"header_logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(303, 29, '_wp_attached_file', '2014/04/phoenix-best2010-ribbon.png'),
	(304, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:91;s:6:"height";i:121;s:4:"file";s:35:"2014/04/phoenix-best2010-ribbon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
	(305, 7, 'performance_schedule_1_day_of_week', 'Saturday'),
	(306, 7, '_performance_schedule_1_day_of_week', 'field_5340b5580c946'),
	(307, 7, 'performance_schedule_1_date', 'April-5-2014'),
	(308, 7, '_performance_schedule_1_date', 'field_5340b56f0c947'),
	(309, 7, 'performance_schedule_1_time', '4 pm (matinee)'),
	(310, 7, '_performance_schedule_1_time', 'field_5340b5f50c948'),
	(311, 7, 'performance_schedule_2_day_of_week', 'Sunday'),
	(312, 7, '_performance_schedule_2_day_of_week', 'field_5340b5580c946'),
	(313, 7, 'performance_schedule_2_date', 'April-6-2014'),
	(314, 7, '_performance_schedule_2_date', 'field_5340b56f0c947'),
	(315, 7, 'performance_schedule_2_time', '7 pm'),
	(316, 7, '_performance_schedule_2_time', 'field_5340b5f50c948'),
	(317, 7, 'performance_schedule_3_day_of_week', 'Wednesday'),
	(318, 7, '_performance_schedule_3_day_of_week', 'field_5340b5580c946'),
	(319, 7, 'performance_schedule_3_date', 'April-9-2014'),
	(320, 7, '_performance_schedule_3_date', 'field_5340b56f0c947'),
	(321, 7, 'performance_schedule_3_time', '7 pm'),
	(322, 7, '_performance_schedule_3_time', 'field_5340b5f50c948'),
	(323, 7, 'performance_schedule_4_day_of_week', 'Thursday'),
	(324, 7, '_performance_schedule_4_day_of_week', 'field_5340b5580c946'),
	(325, 7, 'performance_schedule_4_date', 'April-10-2014'),
	(326, 7, '_performance_schedule_4_date', 'field_5340b56f0c947'),
	(327, 7, 'performance_schedule_4_time', '7 pm'),
	(328, 7, '_performance_schedule_4_time', 'field_5340b5f50c948'),
	(329, 7, 'performance_schedule_5_day_of_week', 'Friday'),
	(330, 7, '_performance_schedule_5_day_of_week', 'field_5340b5580c946'),
	(331, 7, 'performance_schedule_5_date', 'April-11-2014'),
	(332, 7, '_performance_schedule_5_date', 'field_5340b56f0c947'),
	(333, 7, 'performance_schedule_5_time', '7 pm'),
	(334, 7, '_performance_schedule_5_time', 'field_5340b5f50c948'),
	(335, 7, 'performance_schedule_6_day_of_week', 'Saturday'),
	(336, 7, '_performance_schedule_6_day_of_week', 'field_5340b5580c946'),
	(337, 7, 'performance_schedule_6_date', 'April-12-2014'),
	(338, 7, '_performance_schedule_6_date', 'field_5340b56f0c947'),
	(339, 7, 'performance_schedule_6_time', '4 pm (matinee)'),
	(340, 7, '_performance_schedule_6_time', 'field_5340b5f50c948'),
	(343, 18, 'field_5341f254fe979', 'a:14:{s:3:"key";s:19:"field_5341f254fe979";s:5:"label";s:11:"Show Status";s:4:"name";s:11:"show_status";s:4:"type";s:4:"text";s:12:"instructions";s:61:"Indicate whether the show is the Current Show or a past show.";s:8:"required";s:1:"1";s:13:"default_value";s:12:"Current Show";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
	(346, 7, 'show_status', 'Current Show'),
	(347, 7, '_show_status', 'field_5341f254fe979'),
	(348, 18, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"show_post";s:8:"order_no";i:0;s:8:"group_no";i:0;}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_posts
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_posts: ~26 rows (approximately)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2014-04-05 23:43:31', '2014-04-05 23:43:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-04-05 23:43:31', '2014-04-05 23:43:31', '', 0, 'http://taf.leahbateman.com/?p=1', 0, 'post', '', 1),
	(2, 1, '2014-04-05 23:43:31', '2014-04-05 23:43:31', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://taf.leahbateman.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-04-05 23:43:31', '2014-04-05 23:43:31', '', 0, 'http://taf.leahbateman.com/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2014-04-05 23:43:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-05 23:43:54', '0000-00-00 00:00:00', '', 0, 'http://taf.leahbateman.com/?p=3', 0, 'post', '', 0),
	(6, 1, '2014-04-06 00:56:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-06 00:56:00', '0000-00-00 00:00:00', '', 0, 'http://taf.leahbateman.com/?p=6', 0, 'post', '', 0),
	(7, 1, '2014-04-06 01:07:05', '2014-04-06 01:07:05', '', 'Rosencrantz and Guildenstern Are Dead', '', 'publish', 'closed', 'closed', '', 'randg-are-dead', '', '', '2014-04-07 01:46:20', '2014-04-07 01:46:20', '', 0, 'http://taf.leahbateman.com/?post_type=show_post&#038;p=7', 0, 'show_post', '', 0),
	(8, 1, '2014-04-06 01:23:42', '2014-04-06 01:23:42', '', 'rosen_guild_logo', '', 'inherit', 'open', 'open', '', 'rosen_guild_logo', '', '', '2014-04-06 01:23:42', '2014-04-06 01:23:42', '', 7, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/rosen_guild_logo.jpg', 0, 'attachment', 'image/jpeg', 0),
	(9, 1, '2014-04-06 01:40:08', '2014-04-06 01:40:08', '', 'Past Shows', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=9', 4, 'nav_menu_item', '', 0),
	(10, 1, '2014-04-06 01:40:08', '2014-04-06 01:40:08', '', 'Upcoming', '', 'publish', 'open', 'open', '', 'upcoming', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=10', 2, 'nav_menu_item', '', 0),
	(11, 1, '2014-04-06 01:41:11', '2014-04-06 01:41:11', '', 'About T@F', '', 'publish', 'open', 'open', '', 'home-2', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=11', 5, 'nav_menu_item', '', 0),
	(12, 1, '2014-04-06 01:40:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-04-06 01:40:43', '0000-00-00 00:00:00', '', 0, 'http://taf.leahbateman.com/?p=12', 1, 'nav_menu_item', '', 0),
	(13, 1, '2014-04-06 01:42:19', '2014-04-06 01:42:19', '', 'Get Involved', '', 'publish', 'open', 'open', '', 'get-involved', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=13', 6, 'nav_menu_item', '', 0),
	(14, 1, '2014-04-06 01:42:19', '2014-04-06 01:42:19', '', 'Support T@F', '', 'publish', 'open', 'open', '', 'home-3', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=14', 7, 'nav_menu_item', '', 0),
	(15, 1, '2014-04-06 01:43:08', '2014-04-06 01:43:08', '', 'Press', '', 'publish', 'open', 'open', '', 'press', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=15', 8, 'nav_menu_item', '', 0),
	(16, 1, '2014-04-06 01:43:08', '2014-04-06 01:43:08', '', 'Home', '', 'publish', 'open', 'open', '', 'home-4', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=16', 1, 'nav_menu_item', '', 0),
	(17, 1, '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 'Rosencrantz and Guildenstern Are Dead', '', 'publish', 'open', 'open', '', 'rosencrantz-and-guildenstern-are-dead', '', '', '2014-04-06 01:46:05', '2014-04-06 01:46:05', '', 0, 'http://taf.leahbateman.com/?p=17', 3, 'nav_menu_item', '', 0),
	(18, 1, '2014-04-06 02:17:37', '2014-04-06 02:17:37', '', 'Show Pages', '', 'publish', 'closed', 'closed', '', 'acf_show-pages', '', '', '2014-04-07 00:37:03', '2014-04-07 00:37:03', '', 0, 'http://taf.leahbateman.com/?post_type=acf&#038;p=18', 0, 'acf', '', 0),
	(19, 1, '2014-04-06 02:44:34', '2014-04-06 02:44:34', '', 'BPT_buy_tickets_large', '', 'inherit', 'open', 'open', '', 'bpt_buy_tickets_large', '', '', '2014-04-06 02:44:34', '2014-04-06 02:44:34', '', 7, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/BPT_buy_tickets_large.png', 0, 'attachment', 'image/png', 0),
	(20, 1, '2014-04-06 02:46:00', '2014-04-06 02:46:00', '', 'rosen_guild_2014_cast', '', 'inherit', 'open', 'open', '', 'rosen_guild_2014_cast', '', '', '2014-04-06 02:46:00', '2014-04-06 02:46:00', '', 7, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/rosen_guild_2014_cast.jpg', 0, 'attachment', 'image/jpeg', 0),
	(22, 1, '2014-04-06 03:02:34', '2014-04-06 03:02:34', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://taf.leahbateman.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2014-04-06 03:02:34', '2014-04-06 03:02:34', '', 2, 'http://taf.leahbateman.com/2-autosave-v1/', 0, 'revision', '', 0),
	(23, 1, '2014-04-06 22:23:54', '2014-04-06 22:23:54', '', 'header_text', '', 'inherit', 'open', 'open', '', 'header_text', '', '', '2014-04-06 22:23:54', '2014-04-06 22:23:54', '', 0, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/header_text.png', 0, 'attachment', 'image/png', 0),
	(24, 1, '2014-04-06 22:23:55', '2014-04-06 22:23:55', '', '01_twitter', '', 'inherit', 'open', 'open', '', '01_twitter', '', '', '2014-04-06 22:23:55', '2014-04-06 22:23:55', '', 0, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/01_twitter.png', 0, 'attachment', 'image/png', 0),
	(25, 1, '2014-04-06 22:23:55', '2014-04-06 22:23:55', '', '02_facebook', '', 'inherit', 'open', 'open', '', '02_facebook', '', '', '2014-04-06 22:23:55', '2014-04-06 22:23:55', '', 0, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/02_facebook.png', 0, 'attachment', 'image/png', 0),
	(26, 1, '2014-04-06 22:23:55', '2014-04-06 22:23:55', '', '03_youtube', '', 'inherit', 'open', 'open', '', '03_youtube', '', '', '2014-04-06 22:23:55', '2014-04-06 22:23:55', '', 0, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/03_youtube.png', 0, 'attachment', 'image/png', 0),
	(27, 1, '2014-04-06 22:23:56', '2014-04-06 22:23:56', '', '14_google+', '', 'inherit', 'open', 'open', '', '14_google', '', '', '2014-04-06 22:23:56', '2014-04-06 22:23:56', '', 0, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/14_google+.png', 0, 'attachment', 'image/png', 0),
	(28, 1, '2014-04-06 22:23:56', '2014-04-06 22:23:56', '', 'header_logo', '', 'inherit', 'open', 'open', '', 'header_logo', '', '', '2014-04-06 22:23:56', '2014-04-06 22:23:56', '', 0, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/header_logo.png', 0, 'attachment', 'image/png', 0),
	(29, 1, '2014-04-06 22:29:30', '2014-04-06 22:29:30', '', 'phoenix-best2010-ribbon', '', 'inherit', 'open', 'open', '', 'phoenix-best2010-ribbon', '', '', '2014-04-06 22:29:30', '2014-04-06 22:29:30', '', 0, 'http://taf.leahbateman.com/wp-content/uploads/2014/04/phoenix-best2010-ribbon.png', 0, 'attachment', 'image/png', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_terms
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_terms: ~2 rows (approximately)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0),
	(2, 'Main Nav', 'main-nav', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_term_relationships
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_term_relationships: ~8 rows (approximately)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(9, 2, 0),
	(10, 2, 0),
	(11, 2, 0),
	(13, 2, 0),
	(14, 2, 0),
	(15, 2, 0),
	(16, 2, 0),
	(17, 2, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_term_taxonomy
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_term_taxonomy: ~2 rows (approximately)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'nav_menu', '', 0, 8);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_usermeta
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_usermeta: ~18 rows (approximately)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'first_name', ''),
	(2, 1, 'last_name', ''),
	(3, 1, 'nickname', 'lbateman'),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'comment_shortcuts', 'false'),
	(7, 1, 'admin_color', 'fresh'),
	(8, 1, 'use_ssl', '0'),
	(9, 1, 'show_admin_bar_front', 'true'),
	(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(11, 1, 'wp_user_level', '10'),
	(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
	(13, 1, 'show_welcome_panel', '1'),
	(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
	(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
	(16, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:8:"add-post";i:1;s:13:"add-show_post";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";}'),
	(17, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
	(18, 1, 'wp_user-settings-time', '1396835070'),
	(19, 1, 'nav_menu_recently_edited', '2'),
	(20, 1, 'closedpostboxes_show_post', 'a:0:{}'),
	(21, 1, 'metaboxhidden_show_post', 'a:2:{i:0;s:11:"postexcerpt";i:1;s:7:"slugdiv";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;


-- Dumping structure for table leahbate_taf.wp_users
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table leahbate_taf.wp_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'lbateman', '$P$B/MmHkKOvxAdTTUcoLHqxmwqGd7mge/', 'lbateman', 'leahbateman@gmail.com', '', '2014-04-05 23:43:31', '', 0, 'lbateman');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
