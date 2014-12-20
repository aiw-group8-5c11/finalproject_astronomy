-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2014 at 11:10 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aiw2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
`id` int(11) NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `news_is` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
`id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$u5iCbevMgdpUlDFnheRpR.V10jQqcr4TlL64Oc0N8HZNr6KG8SK62', NULL, NULL, NULL, 14, '2014-12-13 02:30:51', '2014-12-12 15:55:38', '127.0.0.1', '127.0.0.1', '2014-11-04 16:34:06', '2014-12-13 02:30:51'),
(2, 'ptxuxu@gmail.com', '$2a$10$RpQb.WkEugxgPI/k8uO8/.MV6qMtRnGKqS0jmaiI./Ex9J.JUi/yu', NULL, NULL, NULL, 7, '2014-12-12 16:12:23', '2014-12-09 08:29:19', '127.0.0.1', '127.0.0.1', '2014-12-06 10:10:15', '2014-12-12 16:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thiên Văn Việt Nam', '2014-12-06 10:19:33', '2014-12-06 10:19:33'),
(2, 'Thiên Văn Thế Giới', '2014-12-06 10:43:33', '2014-12-06 10:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `description`, `created_at`, `updated_at`, `element_id`) VALUES
(1, 'Những thông tin cơ bản về Trái Đất', 'Trái Đất là hành tinh thứ ba tính từ Mặt Trời, đồng thời cũng là hành tinh lớn nhất trong các hành tinh đất đá của hệ Mặt Trời xét về bán kính, khối lượng và mật độ vật chất.', '2014-12-06 12:33:08', '2014-12-07 08:44:15', 3),
(2, 'Những thông tin cơ bản về Sao Thủy', 'Sao Thủy hay Thủy Tinh là hành tinh nhỏ nhất và gần Mặt Trời nhất trong tám hành tinh thuộc Hệ Mặt Trời, với chu kỳ quỹ đạo bằng 88 ngày Trái Đất.', '2014-12-07 08:49:54', '2014-12-07 08:49:54', 6),
(3, 'Những thông tin cơ bản về Sao Mộc', 'Sao Mộc hay Mộc tinh là hành tinh thứ năm tính từ Mặt Trời và là hành tinh lớn nhất trong Hệ Mặt Trời.', '2014-12-07 08:50:24', '2014-12-07 08:50:24', 7),
(4, 'Những thông tin cơ bản về Sao Thiên Vương', 'Sao Thiên Vương là hành tinh thứ bảy tính từ Mặt Trời; là hành tinh có bán kính lớn thứ ba và có khối lượng lớn thứ tư trong hệ.', '2014-12-07 08:50:51', '2014-12-07 08:50:51', 8),
(5, 'Những thông tin cơ bản về Sao Hỏa', 'Sao Hỏa là hành tinh thứ tư tính từ Mặt Trời trong Thái Dương Hệ. Đôi khi hành tinh này còn được gọi tên là Hỏa Tinh.\r\n', '2014-12-07 08:51:22', '2014-12-07 08:51:22', 9),
(6, 'Những thông tin cơ bản về Sao Kim', 'Sao Kim hay Kim tinh, còn gọi là sao Thái Bạch, Thái Bạch Kim tinh, là hành tinh thứ hai từ Mặt Trời, quay quanh nó với chu kỳ 224,7 ngày Trái Đất.\r\n', '2014-12-07 08:52:02', '2014-12-07 08:52:02', 4),
(7, 'Những thông tin cơ bản về Sao Thổ', 'Sao Thổ là hành tinh thứ sáu tính theo khoảng cách trung bình từ Mặt Trời và là hành tinh lớn thứ hai về đường kính cũng như khối lượng, sau Sao Mộc trong Hệ Mặt Trời.', '2014-12-07 08:52:50', '2014-12-07 08:52:50', 2),
(8, 'Những thông tin cơ bản về Sao Hải Vương', 'Sao Hải Vương là hành tinh thứ tám và xa nhất tính từ Mặt Trời trong Hệ Mặt Trời. Nó là hành tinh lớn thứ tư về đường kính và lớn thứ ba về khối lượng.', '2014-12-07 08:53:36', '2014-12-07 08:53:36', 10);

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE IF NOT EXISTS `elements` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `name`, `created_at`, `updated_at`, `system_id`) VALUES
(1, 'Dai Ngan Ha', '2014-12-06 04:57:30', '2014-12-06 04:57:30', 1),
(2, 'Sao Thổ', '2014-12-06 05:08:42', '2014-12-06 12:11:04', 2),
(3, 'Trái Đất', NULL, '2014-12-06 12:10:23', 2),
(4, 'Sao Kim', '2014-12-07 08:44:57', '2014-12-07 08:44:57', 2),
(6, 'Sao Thủy', '2014-12-07 08:47:35', '2014-12-07 08:47:35', 2),
(7, 'Sao Mộc', '2014-12-07 08:47:59', '2014-12-07 08:47:59', 2),
(8, 'Sao Thiên Vương', '2014-12-07 08:48:32', '2014-12-07 08:48:32', 2),
(9, 'Sao Hỏa', '2014-12-07 08:48:52', '2014-12-07 08:48:52', 2),
(10, 'Sao Hải Vương', '2014-12-07 08:53:10', '2014-12-07 08:53:10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id` int(11) NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_path`, `created_at`, `updated_at`, `attachment`, `mission_id`, `news_id`, `detail_id`) VALUES
(3, 'Trái Đất', '2014-12-06 17:15:31', '2014-12-07 17:47:07', 'pl3.png', NULL, NULL, 1),
(4, 'Sao Hỏa', '2014-12-06 17:33:32', '2014-12-07 17:47:39', 'pl4.png', NULL, NULL, 5),
(5, 'sao Mộc', '2014-12-06 17:40:49', '2014-12-07 17:49:03', 'pl5.png', NULL, NULL, 3),
(6, 'Sao Kim', '2014-12-07 01:35:02', '2014-12-07 17:48:18', 'pl2.png', NULL, NULL, 6),
(8, 'Sao Thổ', '2014-12-07 09:15:58', '2014-12-07 17:49:30', 'pl6.png', NULL, NULL, 7),
(9, 'Sao Thiên Vương', '2014-12-07 09:41:09', '2014-12-07 17:49:57', 'pl7.png', NULL, NULL, 4),
(10, 'Sao Hải Vương', '2014-12-07 09:43:17', '2014-12-07 17:50:35', 'pl8.png', NULL, NULL, 8),
(14, 'Sao Thủy', '2014-12-07 17:51:07', '2014-12-07 17:51:07', 'pl1.png', NULL, NULL, 2),
(15, 'Message1', '2014-12-08 13:26:55', '2014-12-08 13:26:55', 'MESSENGER_Sunside.jpg', 2, NULL, NULL),
(16, 'Message1', '2014-12-08 13:27:36', '2014-12-08 13:27:36', 'MESSENGER_Instr.jpg', 2, NULL, NULL),
(18, 'Message1', '2014-12-08 13:29:34', '2014-12-08 13:29:34', 'MercuryMessenger_NASA4X3.jpg', 2, NULL, NULL),
(20, 'cassini-huygens', '2014-12-08 14:24:15', '2014-12-08 14:24:15', '12_2.jpg', 1, NULL, NULL),
(21, 'cassini-huygens', '2014-12-08 14:24:51', '2014-12-08 14:24:51', 'Artist_s_impression_of_Cassini-Huygens_closing_in_on_Saturn.jpg', 1, NULL, NULL),
(22, 'cassini-huygens', '2014-12-08 14:25:40', '2014-12-08 14:25:40', 'Cassini_Saturn_Orbit_Insertion.jpg', 1, NULL, NULL),
(23, 'cassini-huygens', '2014-12-08 14:26:05', '2014-12-08 14:26:05', 'saturnsolareclipse.jpg', 1, NULL, NULL),
(24, 'Post1', '2014-12-08 16:09:12', '2014-12-08 16:09:12', 'a1.PNG', NULL, 2, NULL),
(25, 'Post2', '2014-12-08 16:11:25', '2014-12-08 16:11:25', 'a2.PNG', NULL, 3, NULL),
(26, 'Chiêm ngưỡng loạt ảnh thiên văn đoạt giải', '2014-12-11 07:23:43', '2014-12-11 07:23:43', '1.jpg', NULL, 4, NULL),
(27, 'Chiêm ngưỡng loạt ảnh thiên văn đoạt giải', '2014-12-11 07:25:00', '2014-12-11 07:25:00', '2.jpg', NULL, 4, NULL),
(28, 'Message1', '2014-12-13 02:32:22', '2014-12-13 02:32:22', 'murchie05_lg.jpg', 2, NULL, NULL),
(29, 'Jupiter', '2014-12-13 02:34:17', '2014-12-13 02:34:17', 'Jupiter_and_Galileo_by_adrian3Dart.jpg', 3, NULL, NULL),
(30, 'Jupiter', '2014-12-13 02:35:04', '2014-12-13 02:35:04', 'Galileo_encounter_with_Io.gif', 3, NULL, NULL),
(31, 'Jupiter', '2014-12-13 02:35:42', '2014-12-13 02:35:42', 'galileo-probe.jpg', 3, NULL, NULL),
(32, 'Jupiter', '2014-12-13 02:37:06', '2014-12-13 02:37:06', 'jupitorProbe.jpg', 3, NULL, NULL),
(33, 'Magellan', '2014-12-13 02:38:42', '2014-12-13 02:38:42', 'Magellan-Venus-Map.mediumthumb.jpg', 4, NULL, NULL),
(34, 'Magellan', '2014-12-13 02:39:07', '2014-12-13 02:39:07', 'composite-46.jpg', 4, NULL, NULL),
(35, 'Magellan', '2014-12-13 02:40:17', '2014-12-13 02:40:17', 'mag2.gif', 4, NULL, NULL),
(36, 'Magellan', '2014-12-13 02:40:45', '2014-12-13 02:40:45', 'magellan_orbit.jpg', 4, NULL, NULL),
(37, 'MarOrbiter', '2014-12-13 02:41:59', '2014-12-13 02:41:59', 'mars_aerobrake.jpg', 5, NULL, NULL),
(38, 'MarOrbiter', '2014-12-13 02:43:28', '2014-12-13 02:43:28', 'Mars_Reconnaissance_Orbiter2.jpg', 5, NULL, NULL),
(39, 'MarOrbiter', '2014-12-13 02:44:37', '2014-12-13 02:44:37', '157415main_mro-front-view-browse.jpg', 5, NULL, NULL),
(40, 'MarOrbiter', '2014-12-13 02:46:23', '2014-12-13 02:46:23', 'mro_b.jpg', 5, NULL, NULL),
(41, 'sieu vết lóa từ sao lùn đỏ', '2014-12-13 02:59:26', '2014-12-13 02:59:26', 'a3.PNG', NULL, 5, NULL),
(42, 'ảnh bài viết', '2014-12-13 03:15:28', '2014-12-13 03:22:59', 'a7.PNG', NULL, 7, NULL),
(43, 'ảnh bài viết', '2014-12-13 03:16:41', '2014-12-13 03:24:02', 'a5.PNG', NULL, 6, NULL),
(44, 'ảnh bài viết', '2014-12-13 03:18:42', '2014-12-13 03:18:42', 'a8.PNG', NULL, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lienkets`
--

CREATE TABLE IF NOT EXISTS `lienkets` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `lienkets`
--

INSERT INTO `lienkets` (`id`, `name`, `url`, `created_at`, `updated_at`, `mission_id`) VALUES
(1, 'MESSENGER Web Site', 'http://messenger.jhuapl.edu/', '2014-12-08 15:30:48', '2014-12-08 15:30:48', 2),
(2, 'MESSENGER Mission Page', 'http://www.nasa.gov/mission_pages/messenger/main/', '2014-12-08 15:31:28', '2014-12-08 15:31:28', 2),
(3, 'MESSENGER Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=MESSENGER', '2014-12-08 15:31:57', '2014-12-08 15:31:57', 2),
(4, 'Galileo home page', 'http://solarsystem.nasa.gov/galileo/', '2014-12-08 15:32:39', '2014-12-08 15:32:39', 3),
(5, 'Galileo Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=Galileo', '2014-12-08 15:33:06', '2014-12-08 15:33:06', 3),
(6, 'Cassini-Huygens', 'http://saturn.jpl.nasa.gov/index.cfm', '2014-12-08 15:33:43', '2014-12-08 15:33:43', 1),
(7, 'Cassini-Huygens', 'http://www.esa.int/Our_Activities/Space_Science/Cassini-Huygens', '2014-12-08 15:34:20', '2014-12-08 15:34:20', 1),
(8, 'Huygens', 'http://sci.esa.int/cassini-huygens/', '2014-12-08 15:34:40', '2014-12-08 15:34:40', 1),
(9, 'Magellan homepage', 'http://www2.jpl.nasa.gov/magellan/', '2014-12-08 15:35:14', '2014-12-08 15:35:14', 4),
(10, 'Magellan mission description and data', 'http://nssdc.gsfc.nasa.gov/planetary/magellan.html', '2014-12-08 15:35:40', '2014-12-08 15:35:40', 4),
(11, 'Magellan Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=Magellan', '2014-12-08 15:36:07', '2014-12-08 15:36:07', 4),
(12, 'Mars Reconnaissance Orbiter Homepage', 'http://www.nasa.gov/mission_pages/MRO/main/index.html#.VG95BvmUffc', '2014-12-08 15:36:48', '2014-12-08 15:36:48', 5),
(13, 'Mars Reconnaissance Orbiter Homepage', 'http://mars.jpl.nasa.gov/mro/', '2014-12-08 15:37:17', '2014-12-08 15:37:17', 5),
(14, 'Mars Reconnaissance Orbiter Mission Profile', 'http://solarsystem.nasa.gov/missions/profile.cfm?MCode=Magellan', '2014-12-08 15:38:43', '2014-12-08 15:38:43', 5);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE IF NOT EXISTS `missions` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status_id` int(11) DEFAULT NULL,
  `launch_date` datetime DEFAULT NULL,
  `active_date` datetime DEFAULT NULL,
  `finished_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `name`, `description`, `status_id`, `launch_date`, `active_date`, `finished_date`, `created_at`, `updated_at`, `element_id`) VALUES
(1, 'NASA''s Cassini Huygens (Saturn)', 'Cassini–Huygens là một phi vụ tàu không gian robot hợp tác bởi NASA/ESA/ASI với nhiệm vụ nghiên cứu Sao Thổ và các vệ tinh tự nhiên của nó.', 3, '1997-10-15 08:43:00', '2004-07-01 00:00:00', NULL, '2014-12-06 12:14:28', '2014-12-08 13:10:40', 2),
(2, 'NASA''s Messenger (Mercury)', 'Tàu thăm dò MESSENGER là một tàu vũ trụ của NASA với sứ mệnh mô tả đặc điểm hợp chất hóa học của bề mặt Sao Thủy, lịch sử địa chất, bản chất của từ trường, kích thước và trạng thái của lõi, tóm tắt linh hoạt tại các điểm cực, và bản chất của phần bên ngoài khí quyển và quyển từ với sứ mệnh trên quỹ đạo ảo trong vòng một năm Trái Đất.', 3, '2004-08-03 15:56:00', '2011-03-18 01:00:00', NULL, '2014-12-08 11:01:57', '2014-12-08 11:01:57', 6),
(3, 'NASA''s Galileo (Jupiter)', 'Tàu thăm dò Galileo là tàu vũ trụ tự động của NASA gửi đến thăm dò và nghiên cứu hành tinh khổng lồ Sao Mộc và các vệ tinh của nó.', 1, '1989-10-18 16:53:00', '1995-12-08 01:20:00', '2003-09-21 18:57:00', '2014-12-08 13:09:22', '2014-12-08 13:09:22', 7),
(4, 'NASA''s Magellan (Venus)', 'Tàu thăm dò Magellan là một tàu vũ trụ của NASA đã được phóng lên bởi tàu con thoi Atlantis với mục đích chủ yếu là chụp ảnh bề mặt sao Kim ở khoảng cách gần.', 1, '1989-05-04 18:47:00', '1990-10-08 00:00:00', '1994-10-13 10:05:00', '2014-12-08 13:13:40', '2014-12-08 13:13:40', 4),
(5, 'NASA''s Mars Recon. Orbiter (Mars)', 'Mars Reconnaissance Orbiter là tàu vũ trụ có nhiều chức năng, được phóng lên để tìm hiểu về Sao Hỏa bằng cách quan sát tỷ mỷ, để kiếm nơi có thể hạ cánh trong các chuyến hạ xuống trong tương lai, và để chuyển tiếp tin nhanh cho các chuyến đó.\r\n', 3, '2005-08-12 11:43:00', '2006-10-03 21:24:00', NULL, '2014-12-08 13:16:43', '2014-12-08 13:16:53', 9);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `content`, `created_at`, `updated_at`, `category_id`, `title`, `author`, `full_content`) VALUES
(2, 'Lần đầu tiên, các nhà thiên văn học đã vẽ được bản đồ hàng trăm sao chổi quay xung quanh một ngôi sao cách Trái Đất 63 năm ánh sáng.      ', '2014-12-08 16:06:46', '2014-12-13 03:05:50', 1, 'Bản đồ đầu tiên về các sao chổi quay quanh một ngôi sao', 'Vietnam Plus', '<img alt="Ảnh minh họa. (Nguồn: zmescience.com)" title="Ảnh minh họa. (Nguồn: zmescience.com)" src="http://img.vietnamplus.vn/t660/Uploaded/izhsa/2014_10_24/20141024_comet_2508026k.jpg"><br><br><i>Ảnh minh họa. (Nguồn: zmescience.com)</i><br><br>Lần đầu tiên, các nhà thiên văn học đã vẽ được bản đồ hàng trăm sao chổi quay xung quanh một ngôi sao cách Trái Đất 63 năm ánh sáng.&nbsp;<br><br>Đây là kết quả nghiên cứu thiên văn học mới được công bố trên tạp chí Nature (Anh).<br><br>Nhóm các nhà thiên văn học do Pháp đứng đầu đã nghiên cứu gần 1.000 kết quả hình ảnh thu được khi quan sát ngôi sao trẻ Beta Pictoris trong vòng 8 năm nhờ sự trợ giúp của kính viễn vọng có độ chính xác cao HARPS đặt tại đài quan sát La Silla nằm trên sa mạc Attacama, miền Bắc Chile.&nbsp;<br><br>Qua đó, các nhà khoa học đã nhận diện được tổng cộng 493 sao chổi quanh ngôi sao này, số lượng nhiều nhất thu thập được trong một cuộc thăm dò ngoài Hệ Mặt Trời.<br><br>Trước đó, các nhà thiên văn học từng phát hiện các ngôi sao khác cũng có sao chổi quay quanh, song rất khó để vẽ bản đồ chi tiết.<br><br>Beta Pictoris được xem là một ngôi sao trẻ (khoảng 20 triệu năm tuổi), bao quanh nó là lớp bụi và khí khổng lồ, vốn là "nguyên liệu" để hình thành các hành tinh, tiểu hành tinh và sao chổi.&nbsp;<br><br>Giới khoa học tin rằng các sao chổi là vật thể sót lại từ xa xưa sau quá trình hình thành Hệ Mặt Trời khoảng 4,6 tỷ năm trước, vì vậy việc quan sát các sao chổi quay quanh ngôi sao Beta Pictoris có thể giúp tìm ra cơ chế hình thành Hệ Mặt Trời./.'),
(3, ' Các nhà thiên văn học của NASA đã phát hiện ra nơi có nhiệt độ thấp nhất trong vũ trụ. Đó là tinh vân Boomerang thuộc chòm sao Nhân Mã (Centaurus), được hình thành từ những đám mây bụi và khí từ một ngôi sao đang chết.', '2014-12-08 16:10:40', '2014-12-11 15:04:20', 2, 'Phát hiện ra nơi lạnh nhất trong vũ trụ', 'Songmoi.vn', '<div>Nằm cách chúng ta 5000 năm ánh sáng, tinh vân Boomerang là một trong những vật thể bí ẩn và kì lạ nhất trong vũ trụ. Trong đám mây được hình thành từ bụi và khí của ngôi sao đang “hấp hối” này, các nhà thiên văn học đã phát hiện ra nhiệt độ ở đây còn xuống thấp hơn nửa độ so với 0 độ tuyệt đối (-273,15 o C). Đây có thể coi là nơi lạnh nhất trong vũ trụ mà chúng ta từng biết đến.</div><div>Như đã biết, các ngôi sao đều được sinh ra và theo thời gian, sẽ phải chết đi. Khi các ngôi sao chết đi, chúng sẽ giải phóng ra năng lượng, đồng thời phun ra một lượng lớn bụi và khí vào không trung. Với các ngôi sao cỡ nhỏ và trung bình như mặt trời, khi chết đi, chúng sẽ trở thành các ngôi sao lùn (Dwarf star). Còn với các ngôi sao có kích cỡ đủ lớn, khi chết đi, chúng có thể hình thành nên hố đen.</div><div>Raghvendra Sahai, một nhà thiên văn học của NASA đã phát hiện ra lý do tại sao nhiệt độ tinh vân Boomerang lại xuống thấp đến như vậy. Đó là do tốc độ khí thoát ra từ tinh vân này lớn hơn rất nhiều lần so với mức bình thường. Tốc độ khí phun ra từ ngôi sao đang chết đo được lên tới 164km/s, gấp 10 lần so với các ngôi sao chết bình thường có cùng kích cỡ. Với tốc độ phun trào khí như vậy, trong 1500 năm tới, trung tâm của ngôi sao chết sẽ mất đi một khối lượng tương đương khối lượng của hàng nghìn mặt trời mỗi năm. Khí sẽ trở nên lạnh khi giãn nở ra, và với tốc độ giãn nở khí như vậy thì việc tinh vân Boomerang trở thành nơi lạnh lẽo nhất trong vũ trụ cũng không phải là điều quá ngạc nhiên.<br><br></div>'),
(4, 'Đài thiên văn Hoàng Gia tại Greenwich (ROG), London vừa công bố loạt ảnh thiên văn đoạt giải cuộc thi “Nhiếp ảnh gia thiên văn học năm 2014”.\r\n\r\nBức ảnh “Cực quang xanh lá” xuất hiện trên bầu trời công viên quốc gia Vatnajokull, Iceland của nhiếp ảnh gia James Woodend, đã đánh bại hàng nghìn bức ảnh thiên văn xuất sắc khác, đoạt giải thưởng cao nhất trong cuộc thi ảnh thiên văn năm 2014. Ban giám khảo cuộc thi chia sẻ: “Woodend đã ghi lại khoảng khắc cực quang xanh lá, sống động nhảy múa trên bầu trời đêm Iceland, trái ngược vẻ đẹp băng giá tại công viên quốc gia Vatnajokull bên dưới. Đó là sự kết hợp tuyệt vời".', '2014-12-11 07:22:12', '2014-12-11 15:43:11', 2, 'Chiêm ngưỡng loạt ảnh thiên văn đoạt giải', 'Linh Dâu', 'Đài thiên văn Hoàng Gia tại Greenwich (ROG), London vừa công bố loạt ảnh thiên văn đoạt giải cuộc thi “Nhiếp ảnh gia thiên văn học năm 2014”.\r\n\r\nBức ảnh “Cực quang xanh lá” xuất hiện trên bầu trời công viên quốc gia Vatnajokull, Iceland của nhiếp ảnh gia James Woodend, đã đánh bại hàng nghìn bức ảnh thiên văn xuất sắc khác, đoạt giải thưởng cao nhất trong cuộc thi ảnh thiên văn năm 2014. Ban giám khảo cuộc thi chia sẻ: “Woodend đã ghi lại khoảng khắc cực quang xanh lá, sống động nhảy múa trên bầu trời đêm Iceland, trái ngược vẻ đẹp băng giá tại công viên quốc gia Vatnajokull bên dưới. Đó là sự kết hợp tuyệt vời".\r\n\r\nCực quang xanh lá\r\nBức ảnh “Cực quang xanh lá” của nhiếp ảnh gia James Woodend đoạt giải thưởng cao nhất cuộc thi “nhiếp ảnh gia thiên văn học năm 2014”\r\n\r\n\r\nCuộc thi “Nhiếp ảnh gia thiên văn học” được tổ chức thường niên bởi Đài thiên văn Hoàng Gia Greenwich (ROG) hợp tác với tạp chí Bầu trời đêm BBC.\r\nCuộc thi ảnh thiên văn học thường niên lần thứ 6 đã thu hút hơn 2.500 tác phẩm dự thi từ các nhiếp ảnh gia nghiệp dư lẫn chuyên nghiệp từ 51 quốc gia trên thế giới.\r\nSau đây những bức ảnh thiên văn học xuất sắc nhất năm 2014:\r\n\r\nTinh vân đầu ngựa\r\nBức ảnh “Tinh vân đầu ngựa” được chụp trong ánh sáng mới của nhiếp ảnh gia Bill Snyder\r\n\r\n\r\n\r\nNhiếp ảnh gia Chris Murphy ghi lại hình ảnh tuyệt đẹp của núi đá New Zealand tương phản những đám mây bụi khiêu vũ trên dãi Ngân Hà trong không khí trong lành, không ô nhiễm. Mọi thứ trở nên rõ ràng, sắc nét\r\n\r\n\r\n\r\nIC 1340 là một phần của tinh vân Veil, tàn tích của siêu tân tinh trong chòm sao Cygnus, cách trái đất 1470 năm ánh sáng. Bức ảnh được chụp bởi nhiếp ảnh gia J.P. Metsävainio của Phần Lan\r\n\r\n\r\n\r\nNhững hoạt động trên bề mặt Mặt trời được chụp bởi nhiếp ảnh gia Alexandra Hart\r\n\r\n\r\n\r\nẢnh sáng hoàng đạo phát triển dần, từ đường chân trời tạo thành hình kim tự tháp với đỉnh là sao Kim. Bức ảnh tuyệt đẹp này được chụ bởi nhiếp ảnh gia Julie Fletcher tại khu vực nước Kati Thanda của hồ Eyre\r\n\r\n\r\n\r\nTinh vân xoắn ốc như con mắt khổng lồ trong không gian, tại vị trí cách trái đất 700 năm ánh sáng, được chụp bởi nhiếp ảnh gia David Fitz-Henry\r\n\r\n\r\n\r\nBức ảnh thể hiện độ cong của trái đất, cùng dãy núi Rocky cao chót vót tạo thành những nếp nhăn nhỏ trên bức hình. Bức ảnh được chụp bởi nhiếp ảnh gia Patrick Cullis\r\n\r\n\r\n\r\nNhiếp ảnh gia Matt James chụp trang trại gió tại thị xã Bungendore, Úc (trái), cảnh nhật thực chụp trên một máy bay của nhiếp ảnh gia Catalin Beldea (phải)\r\n\r\n\r\n\r\nBức ảnh vùng trung tâm NGC 1999, nằm dưới vành đai chòm sao Orion bởi nhiếp ảnh gia Marco Lorenzi'),
(5, 'Cơ quan Hàng không Vũ trụ Mỹ (NASA) đã phát hiện một vết lóa cường độ gấp hơn 10.000 lần so với vết lóa mạnh nhất từng được ghi nhận trong lịch sử mặt trời.', '2014-12-13 02:57:54', '2014-12-13 03:07:24', 2, 'Siêu vết lóa từ sao lùn đỏ', 'Hạo Nhiên', '<p><img alt="NASA ghi nhận hoạt động không tưởng của các vết lóa tại hệ DG CVn - Ảnh: NASA" title="NASA ghi nhận hoạt động không tưởng của các vết lóa tại hệ DG CVn - Ảnh: NASA" src="http://www.thanhnien.com.vn/Pictures201410/NgocThanh/1/sao-lun.jpg" class="wysiwyg"><br></p><p><i><br></i></p><p><i>NASA ghi nhận hoạt động không tưởng của các vết lóa tại hệ DG CVn - Ảnh: NASA</i><br></p><p><i><br></i></p><p>Vết lóa từ mặt trời có thể đánh sập mạng lưới điện trên Trái đất và làm gián đoạn liên lạc viễn thông.</p><p>Tuy nhiên, đối với những gì NASA vừa chứng kiến ở sao lùn đỏ láng giềng của hệ mặt trời, ngôi sao trung tâm của chúng ta xem ra vẫn cư xử rất hiền hòa với cư dân địa cầu.</p><p>Theo&nbsp;<em>Space.com</em>, một thành viên của hệ sao đôi DG Canum Venaticorum (viết tắt DG CVn) cách Trái đất khoảng 60 năm ánh sáng vừa tung ra một chuỗi các vết lóa mạnh nhất, nóng nhất và dài nhất từng được ghi nhận, với ít nhất 7 đợt bùng nổ trên bề mặt ngôi sao này trong vòng&nbsp;hai tuần.</p><p>Ở giai đoạn cao điểm, vết lóa trên sao lùn đỏ ở DG CVn đạt mức nhiệt độ 200 triệu độ C, tức nóng hơn gấp 12 lần so với lõi của mặt trời chúng ta.</p><p>Giới thiên văn học ước tính DG CVn được sinh ra khoảng 30 triệu năm trước, có nghĩa là tuổi đời của nó không bằng 0,7% số tuổi của hệ mặt trời.</p>'),
(6, 'Hôm nay (8-10), hiện tượng nguyệt thực toàn phần (hay còn có tên gọi là Mặt trăng máu) sẽ diễn ra với hình ảnh mặt trăng có màu đỏ như máu. Ở Việt Nam và nhiều vùng khác trên thế giới, có thể quan sát được hiện tượng thiên văn đáng chú ý nhất năm 2014 này.', '2014-12-13 03:12:21', '2014-12-13 03:12:21', 1, 'Hiện tượng ‘Mặt trăng máu’ diễn ra ngày 8-10', 'Theo Thiên An (Vietnam+)', '<h2>Hôm nay (8-10), hiện tượng nguyệt thực toàn phần (hay còn có tên gọi là Mặt trăng máu) sẽ diễn ra với hình ảnh mặt trăng có màu đỏ như máu. Ở Việt Nam và nhiều vùng khác trên thế giới, có thể quan sát được hiện tượng thiên văn đáng chú ý nhất năm 2014 này.</h2><div class="relation"><ul><li><div class="icon"></div><a title="10 hiện tượng thiên nhiên hiếm thấy gây kinh ngạc" href="http://nld.com.vn/khoa-hoc/10-hien-tuong-thien-nhien-hiem-thay-gay-kinh-ngac-20141205145735059.htm">10 hiện tượng thiên nhiên hiếm thấy gây kinh ngạc</a></li><li><div class="icon"></div><a title="Bức ảnh trăng máu gây “sốt” cộng đồng mạng" href="http://nld.com.vn/khoa-hoc/buc-anh-trang-mau-gay-sot-cong-dong-mang-20141009155831014.htm">Bức ảnh trăng máu gây “sốt” cộng đồng mạng</a></li><li><div class="icon"></div><a title="Chiêm ngưỡng kỳ “trăng máu” thứ hai trên toàn thế giới" href="http://nld.com.vn/khoa-hoc/chiem-nguong-ky-trang-mau-thu-hai-tren-toan-the-gioi-2014100909525308.htm">Chiêm ngưỡng kỳ “trăng máu” thứ hai trên toàn thế giới</a></li></ul></div><div class="content news_detail"><p>&nbsp;</p><div class="VCSortableInPreviewMode"><div><img alt="Hiện tượng ‘Mặt trăng máu’ diễn ra ngày 8-10" title="" src="http://nld.vcmedia.vn/thumb_w/540/2014/mat-trang-mau-hinh-anh-bimf-1412755535990.jpg"></div><div class="PhotoCMS_Caption"></div></div><p>&nbsp;</p><p><strong>Tại Việt Nam xem "Mặt trăng máu" lúc nào?</strong></p><p>Trao đổi với&nbsp;<em>Vietnam+</em>, anh Đặng Vũ Tuấn Sơn, Chủ tịch Hội&nbsp;<a target="_blank" title="Thiên văn học" href="http://nld.com.vn/thien-van-hoc.html" class="VCCTagItemInNews">Thiên văn học</a>&nbsp;trẻ Việt Nam (VACA) cho biết, hiện tượng&nbsp;<a target="_blank" title="nguyệt thực toàn phần" href="http://nld.com.vn/nguyet-thuc-toan-phan.html" class="VCCTagItemInNews">nguyệt thực toàn phần</a>&nbsp;(gần đây được gọi là “Mặt trăng máu”) diễn ra vào 8-10 tới sẽ bắt đầu pha nửa tối vào 15 giờ 15 phút, pha một phần vào lúc 16 giờ 15 phút và đạt cực đại vào 17 giờ 54 phút.</p><p>Sau đó, hiện tượng sẽ kết thúc pha toàn phần, một phần và nửa tối tương ứng vào 18 giờ 24 phút, 19 giờ 24 phút và 20 giờ 34 phút (giờ Việt Nam).</p><p>Tại Việt Nam, giờ mặt trăng mọc trong ngày này vào khoảng 17 giờ 25 phút nên người yêu thiên văn không thể theo dõi hiện tượng trước đó cũng như thời điểm trăng mới mọc. Bởi vậy, thời điểm quan sát lý tưởng nhất vào khoảng từ 17 giờ 45 phút cho tới khi kết thúc hiện tượng.</p><p>Anh Hoàng Quốc Phương, quản trị web của Hội Thiên văn nghiệp dư Hà Nội cho hay lần nguyệt thực toàn phần gần đây nhất mà Việt Nam quan sát được là vào ngày 10-12-2011. Kể từ đó đến nay, đã có tổng cộng 6 lần nguyệt thực diễn ra nhưng không quan sát được tại Việt Nam hoặc là<a target="_blank" title="nguyệt thực nửa tối" href="http://nld.com.vn/nguyet-thuc-nua-toi.html" class="VCCTagItemInNews">nguyệt thực nửa tối</a>&nbsp;rất khó để quan sát.</p><p>Các chuyên gia cũng đưa ra khuyến cáo người quan sát cần chọn vị trí thoáng đãng nhìn về chân trời phía Đông. Người xem cũng quan sát bằng mắt thường, song sẽ thú vị hơn khi có thêm dụng cụ hỗ trợ là ống nhòm,&nbsp;<a target="_blank" title="kính thiên văn" href="http://nld.com.vn/kinh-thien-van.html" class="VCCTagItemInNews">kính thiên văn</a>...</p><p><strong>Mặt trời, trái đất và mặt trăng sẽ nằm trên một đường thẳng</strong></p><p>Còn theo trang&nbsp;<em>Livescience</em>, hiện tượng nguyệt thực toàn phần hiếm gặp này có thể được quan sát vào sáng thứ tư.</p><p>Vào ngày 8-10, những nhà yêu thích quan sát vũ trụ có thể thưởng thức hiện tượng nguyệt thực toàn phần và&nbsp;<a target="_blank" title="Mặt trời mọc" href="http://nld.com.vn/mat-troi-moc.html" class="VCCTagItemInNews">Mặt trời mọc</a>&nbsp;cùng một lúc. Tên gọi khoa học của hiện tượng này là Selenelion mà các nhà chiêm tinh học cho rằng rất khó xảy ra.</p><p>Trong suốt quá trình nguyệt thực, Mặt trời, Trái đất và Mặt trăng sẽ nằm trên một đường thẳng. Với cách bố trí đó, việc quan sát được là điều không thể xảy ra. Nhưng nhờ&nbsp;<a target="_blank" title="bầu khí quyển" href="http://nld.com.vn/bau-khi-quyen.html" class="VCCTagItemInNews">bầu khí quyển</a>&nbsp;của Trái đất, hình ảnh của Mặt trăng và Mặt trời lại xuất hiện ở chân trời bởi sự khúc xạ khí quyển. Điều này giúp mọi người trên Trái đất nhìn thấy được trong vài phút Mặt trời trước khi mọc và Mặt trăng sau khi nó lặn.</p><p>Như một hệ quả, nhiều vùng ở khu vực sông Missisipphi có cơ hội quan sát trực tiếp hiện tượng này. Nếu thời tiết cho phép, người dân có thể ngắm nhìn trong từ 2 đến 9 phút (tùy vị trí) quan cảnh Mặt trời mọc từ phía Đông và hiện tượng nguyệt thực toàn phần ở hướng Tây.</p><p>Từ Newfouldland, giai đoạn nguyệt thực toàn phần bắt đầu khoảng 30 – 45 phút trước khi Mặt trăng lặn.</p><p>Ở khắp phía đông Nova Scotia, bạn chỉ có thể quan sát được phần thấp nhất của Mặt trăng khi nó lặn ở phía Tây chân trời.</p><p>Xa hơn ở phía đông và nam vùng bờ biển&nbsp;<a target="_blank" title="Đại Tây Dương" href="http://nld.com.vn/dai-tay-duong.html" class="VCCTagItemInNews">Đại Tây Dương</a>, Mặt trăng sẽ hoàn toàn chìm vào vùng tối của Trái đất.</p><p>Các nhà thiên văn học cho rằng Selenelion là một hiện tượng cực kì hiếm. Cách đây 25 năm, trên tạp chí&nbsp;<em>Sky &amp; Telescope</em>, tháng 8-1989, nhà thiên văn học Bradley Schaefer, người nghiên cứu khả năng xuất hiện của Mặt trăng khi nó ở vị trí thấp nhất trên bầu trời, đã lưu ý rằng Mặt trăng tròn chỉ xuất hiện khi nó ở trên 2 độ và Mặt trời ở dưới 2 độ của chân trời. Vì vậy, phụ thuộc vào độ quang đãng của bầu trời mà người quan sát có thể theo dõi được hiện tường từ 10-15 phút trước khi Mặt trời mọc.</p></div>'),
(7, 'Người dân Việt Nam sẽ quan sát được tổng cộng 18 hiện tượng thiên văn kỳ thú trong năm 2014.\r\nTrong bài viết đăng trên website chính thức của Hội Thiên văn học trẻ Việt Nam (VACA), anh Đặng Vũ Tuấn Sơn, chủ nhiệm Hội cho biết, năm 2014 có nhiều sự kiện thiên văn đáng chú ý như nguyệt thực toàn phần, điểm trực đối của các hành tinh cũng như cơ hội tương đối lý tưởng để quan sát nhiều trận mưa sao băng lớn.', '2014-12-13 03:14:28', '2014-12-13 03:14:28', 1, '18 hiện tượng thiên văn nổi bật năm 2014', 'Phạm Hương (theo VACA)', '<p>Dưới đây là những hiện tượng có thể quan sát trực tiếp tại Việt Nam năm 2014:</p><p>Mưa sao băng Quadrantids</p><p>Trận mưa sao băng loại trung bình trong năm với mật độ tối đa từ 30 đến 40 sao băng mỗi giờ trong điều kiện thời tiết lý tưởng. Do diễn ra vào đầu tháng âm lịch nên người quan sát ở các khu vực thời tiết cho phép sẽ có nhiều cơ hội theo dõi hiện tượng này. Thời điểm lý tưởng nhất để quan sát là rạng sáng ngày 3/1 với hướng là bầu trời phía đông nơi có chòm sao Bootes. (<a href="http://vnexpress.net/tin-tuc/khoa-hoc/canh-tuong-mua-sao-bang-dau-tien-cua-nam-2409442.html">Quadrantids 2013</a>)</p><table><tbody><tr><td><img alt="nationalgeographic" src="http://m.f29.img.vnecdn.net/2013/12/31/saobang-6564-1388490987.jpg"></td></tr><tr><td><p>Một trận mưa sao băng&nbsp;Quadrantid. Ảnh:&nbsp;<em>Nationalgeographic.</em></p></td></tr></tbody></table><p><strong>Sao Mộc tới vị trí trực đối với mặt trời so với trái đất</strong></p><p>Đây là vị trí sao Mộc gần trái đất nhất trên quỹ đạo của nó và phần được chiếu sáng của nó hướng về trái đất nhiều nhất. Người quan sát cần hỗ trợ của các kính thiên văn nghiệp dư để ngắm hành tinh lớn nhất Hệ mặt trời dịp này. Hiện tượng diễn ra ngày 5/1.</p><p><strong>Sao Hỏa tới vị trí trực đối với mặt trời so với trái đất</strong></p><p>Ngày 8/4, ở vị trí gần trái đất nhất trên quỹ đạo, hành tinh đỏ sẽ cho phép người yêu thích bầu trời quan sát nó qua kính thiên văn. Với mắt thường, người xem có thể nhìn thấy sao Hỏa, cũng như với sao Mộc như trên nhưng độ sáng của chúng không lớn hơn ngày thường ró rệt.&nbsp;</p><p><strong>Mưa sao băng Lyrids</strong></p><p>Đây là trận mưa sao băng nhỏ với chỉ khoảng 20 sao băng mỗi giờ ngay cả trong điều kiện tương đối lý tưởng. Hiện tượng diễn ra ngày&nbsp;22, 23/4 và trùng vào thời điểm trăng bán nguyệt cuối tháng nên ánh trăng sẽ gây cản trở không nhỏ cho người quan sát.&nbsp;&nbsp;</p><p><strong>Mưa sao băng Eta Aquarids</strong></p><p>Trận mưa sao băng cỡ trung bình này có thể cho phép người quan sát thấy hơn 50 sao băng mỗi giờ trong điều kiện cho phép. Nằm gần thời điểm đầu tháng âm lịch nên nếu thời tiết không có thay đổi đặc biệt hiện tượng này có thể khá dễ dàng để quan sát. Thời điểm lý tưởng nhất là sau nửa đêm ngày 5, rạng sáng 6/5.</p><p><strong>Sao Thổ tới vị trí trực đối với mặt trời qua trái đất</strong></p><p>Vị trí này cho phép người quan sát có thể nhìn sao Thổ rõ nhất. Nếu có một chiếc kính thiên văn, người xem không nên bỏ lỡ cơ hội quan sát hành tinh này cùng vành đai thú vị của nó vào ngày 10/5.</p><p><strong>Mặt trăng tiến gần sao Hỏa trên bầu trời</strong></p><p>Hai thiên thể sáng của bầu trời đêm chỉ nằm cách nhau chừng 2 độ trên bầu trời. Đây không phải một hiện tượng đặc biệt, nhưng sẽ là điểm sáng đáng chú ý khi người xem ngắm nhìn bầu trời sau lúc mặt trời lặn ngày này. Hiện tượng diễn ra ngày 7/6.</p><p><strong>Mưa sao băng Delta Aquarids</strong></p><p>Trận mưa sao băng nhỏ trong năm vào ngày 28, 29/7. Tuy nhiên cuối tháng 7, trời ít mây và không bị ánh trăng cản trở nên sẽ là điều kiện thuận lợi để quan sát.</p><p><strong>Mưa sao băng Perseids</strong></p><p>Một trong hai trận mưa sao băng lớn nhất trong năm với mật độ thường lên tới hơn 60 sao băng mỗi giờ, nó đạt cực điểm vào ngày 12, 13/8. Năm 2014, sự có mặt của mặt trăng sẽ làm che lấp một phần những sao băng sẽ xuất hiện. Dù vậy, nếu trời không mây thì đây vẫn sẽ là hiện tượng thiên văn rất đáng quan sát trong năm. (<a href="http://vnexpress.net/tin-tuc/khoa-hoc/canh-tuong-mua-sao-bang-sang-nhat-nam-2864064.html"><strong>Perseids 2013)</strong></a></p><table><tbody><tr><td><img alt="ao băng Perseid rực sáng, lướt qua những đám mây ở khu vực Embudo, bang New Mexico, Mỹ. Ảnh: Mike Lewinski." title="Image: http://m.f29.img.vnecdn.net/2013/12/31/saobang1-4221-1388490987.jpg" src="http://m.f29.img.vnecdn.net/2013/12/31/saobang1-4221-1388490987.jpg"></td></tr><tr><td><p>Mưa sao băng Perseid rực sáng vào năm 2013.&nbsp;Ảnh:&nbsp;<em>Mike Lewinski.</em></p></td></tr></tbody></table><p><strong>S</strong>ao Hải Vương tới vị trí trực đối với mặt trời qua trái đất</p><p>Đây là vị trí mà hành tinh này tới gần trái đất nhất trên quỹ đạo của nó. Dù vậy với khoảng cách quá xa, thì chỉ những người được trang bị kính thiên văn khá mạnh mới có thể thấy nó là một chấm xanh trong ống kính. Sự kiện diễn ra ngày 29/8.</p><p>Sao Thiên Vương tới vị trí trực đối</p><p>Cũng như sao Hải Vương, sao Thiên Vương ở quá xa nên nó chỉ được coi là thuận lợi để quan sát với người yêu thiên văn có sự hỗ trợ của kính thiên văn tương có độ phóng đại là chất lượng tương đối cao. Hiện tượng diễn ra 7/10.</p><p>Nguyệt thực toàn phần ngày 8/10</p><p>Đây là hiện tượng rất đáng chú ý trong năm 2014. Nguyệt thực sẽ trải trên một dải rộng từ Bắc Mỹ qua Nam Phi, Đông Á và Australia. Việt Nam nằm trong khu vực có thể quan sát hiện tượng này.</p><p>Mưa sao băng Draconids</p><p>Ngày 8, 9/10 trận mưa sao băng nhỏ này xuất hiện với mật độ chỉ khoảng 10 sao băng mỗi giờ. Mặt khác, hiện tượng này trùng vào thời điểm trăng tròn, ánh trăng sẽ che khuất hầu hết các sao băng của nó nên về cơ bản, đây không phải một sự kiện đáng chú ý với người quan sát.</p><p>Mưa sao băng Orionids</p><p>Đây là trận mưa sao băng cỡ trung bình với mật độ khoảng 30 sao băng mỗi giờ. Năm 2014, hiện tượng sẽ diễn ra vào thời điểm không trăng, do vậy nếu trời ít mây thì đây sẽ là một năm lý tưởng để quan sát mưa sao băng này. Nó đạt cực điểm và ngày 22, 23/10.</p><p>Mưa sao băng Taurids</p><p>Ngày 5, 6/11 người yêu thiên văn sẽ được quan sát trận mưa sao băng này. Nó chỉ là trận mưa sao băng nhỏ với trên dưới 10 sao băng mỗi giờ và xảy ra gần thời điểm trăng tròn nên việc quan sát trở nên khó khăn hơn.</p><p>Mưa sao băng Leonids</p><p>Leonids là trận mưa sao băng cỡ trung bình. Năm 2014, với sự vắng mặt của ánh trăng, người quan sát sẽ có cơ hội lý tưởng để theo dõi hiện tượng này nếu thời tiết thuận lợi. Trận mưa sao băng diễn ra 17, 18/11.</p><p>Mưa sao băng Geminids</p><p>Đây là trận mưa sao băng lớn nhất, nó có thể cho phép người quan sát đếm được trên 100 sao băng mỗi giờ vào 13, 14/12. Mặc dù mặt trăng sẽ che khuất một số sao băng, nhưng chỉ cần trời ít mấy thì đây vẫn sẽ là một hiện tượng tuyệt vời vì Geminids có những sao băng rất sáng, ngay cả khi có sự can thiệp của ánh trăng.</p><p>Mưa sao băng Ursids</p><p>Đây chỉ là một trận mưa sao băng nhỏ, nhưng nó rơi vào thời điểm không trăng nên Ursids vẫn có thể cho phép người yêu bầu trời quan sát được một số sao băng của mình. Trận mưa sao băng diễn ra ngày 22, 23/12.</p>'),
(8, 'TTO - Theo tạp chí National Geographic, năm 2014 có nhiều sự kiện thiên văn tuyệt vời sẽ xảy ra như: nguyệt thực toàn phần, mưa sao băng lớn... Các nhà thiên văn học bình chọn 5 hiện tượng thiên văn đáng chú ý nhất trong năm 2014.', '2014-12-13 03:18:10', '2014-12-13 03:18:10', 2, 'Quan sát 5 hiện tượng thiên văn đáng chú ý nhất năm 2014', 'TRÙNG DƯƠNG (Theo National Geographic)', '<div class="block-feature block-feature-1"><p>TTO - Theo tạp chí&nbsp;<em>National Geographic</em>, năm 2014 có nhiều sự kiện thiên văn tuyệt vời sẽ xảy ra như: nguyệt thực toàn phần, mưa sao băng lớn... Các nhà thiên văn học bình chọn 5 hiện tượng thiên văn đáng chú ý nhất trong năm 2014.</p></div><div class="fck"><p></p><table><tbody><tr><td><img src="http://static.new.tuoitre.vn/tto/i/s626/2014/01/04/B1bJjh6T.jpg" class="ck_image"><a class="btnSlideshow">Phóng to</a></td></tr><tr><td><p>5 hiện tượng thiên văn đáng chú ý nhất 2014 - Ảnh: National Geographic</p></td></tr></tbody></table><p></p><p><strong>1. Hiện tượng nguyệt thực toàn phần</strong></p><p>Năm nay, chúng ta sẽ có cơ hội chứng kiến hiện tượng nguyệt thực toàn phần. Vào thời điểm trước bình minh ngày 15-4, Mặt trăng sẽ bị bao phủ từ từ bởi bóng tối Trái đất, khi đó Trái đất sẽ nằm giữa Mặt trời và Mặt trăng. Có thể quan sát hiện tượng này từ tây bán cầu, bao gồm Bắc và Nam Mỹ. Phần nhật thực sẽ không nhìn thấy từ phía Bắc và Đông Âu, Đông Phi, Trung Đông hay Trung Á.</p><p>Ngoài ra, chúng ta sẽ có thêm cơ hội chứng kiến hiện tượng Mặt trăng “ửng đỏ” vào ngày 8-10, khi nguyệt thực toàn phần hiện rõ từ Thái Bình Dương. Chỉ một phần phía tây bắc Bắc Mỹ mới quan sát toàn bộ quá trình này. Trong khi đó, toàn bộ quá trình xảy ra nhật thực sẽ nhìn thấy từ New Zealand và một phần tư phía đông Úc.</p><p><strong>2. Mưa sao băng do sao chổi LINEAR</strong></p><p>Nếu bầu trời quang đãng, chúng ta có thể chứng kiến vụ nổ dữ dội của sao băng vào ngày 23 và 24-5. Trong hai thế kỷ qua, sao chổi 209P/LINEAR dường như bung ra nhiều mảnh vỡ bụi. Một số chuyên gia dự đoán Trái đất có thể sẽ thụt đi bởi con đường bụi của sao chổi này trong năm nay. Dựa trên mô hình quỹ đạo, dự báo mật độ trận mưa sao băng này cao, mặt trăng lưỡi liềm sẽ kéo dài đêm, tạo điều kiện thuận lợi cho việc quan sát.</p><p><strong>3. Hiện tượng liên kết bộ ba của Mặt trăng</strong></p><p>Hiện tượng này sẽ xảy ra hai lần trong năm 2014, Mặt trăng sẽ “túm tụm” với hành tinh và ngôi sao sáng, làm cho bầu trời trở nên bắt mắt. Hiện tượng này sẽ diễn ra đầu tiên vào ngày 5-7, khi ấy trên bầu trời xuất hiện vầng trăng khuyết chen ngang giữa sao Spica xanh nhạt và sao Hỏa hồng đỏ, hiện tượng này sẽ xảy ra trong vòng 30 phút.</p><p>Ở Nam bán cầu, Mặt trăng và các hành tinh sẽ túm tụm cùng nhau vào ngày 6 và 7-7 phía trên cao bầu trời phía đông bắc.</p><p>Vào lúc hoàng hôn ngày 31-8, chúng ta sẽ quan sát một mô hình tam giác được tạo bởi Mặt trăng lưỡi liềm, sao Hỏa và sao Thổ. Đối với Nam bán cầu, chúng ta quan sát hiện tượng này ở phía tây vào ngày 31-8 và 1-9.</p><p><strong>4. Sự liên kết sao Mộc và sao Kim</strong></p><p>Vào rạng sáng 18, 19-8 tại Nam bán cầu, chúng ta có cơ hội quan sát cuộc gặp gỡ vô cùng thân mật của hai hành tinh sáng nhất trong bầu trời chúng ta: sao Kim và sao Mộc. Hiện tượng hồ quang sẽ kéo dài trong vòng 20 phút.</p><p><strong>5. Nhật thực một phần</strong></p><p>Ngày 23-10, nhật thực một phần sẽ hiển thị phần lớn khắp Bắc Mỹ. Chúng ta có thể quan sát hiện tượng này từ phần nửa đông của Mỹ và Canada. Khu vực Vancouver sẽ thấy 65%, San Francisco 50%, 55% tại Denver, Toronto 44% và New York 15%, Mặt trời sẽ biến mất đằng sau hình bóng của Mặt trăng.</p></div>');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20141101034906'),
('20141101035725'),
('20141101035728'),
('20141103062009'),
('20141204155842'),
('20141204160246'),
('20141204160412'),
('20141204160629'),
('20141204161220'),
('20141204161407'),
('20141206025535'),
('20141206031227'),
('20141206032234'),
('20141206063529'),
('20141206071040'),
('20141206071914'),
('20141206072318'),
('20141206074100'),
('20141206102615'),
('20141206105324'),
('20141206163018'),
('20141207150622'),
('20141208145735'),
('20141208150032'),
('20141208151720'),
('20141211071233');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Đã Hoàn Thành', '2014-12-06 12:06:54', '2014-12-06 12:06:54'),
(2, 'Đang phát triển', '2014-12-06 12:07:48', '2014-12-06 12:07:48'),
(3, 'Chưa Hoàn Thành', '2014-12-06 12:18:38', '2014-12-06 12:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE IF NOT EXISTS `systems` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thiên Hà', NULL, '2014-12-06 04:57:11', '2014-12-07 01:20:45'),
(2, 'Hệ Mặt Trời', NULL, '2014-12-06 12:10:04', '2014-12-06 12:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'bibibi.bobobo.9x@gmail.com', '$2a$10$R1xNlHAhTMVgNSpJh0e.nOI7GB3GjHNcaSRdXee67jHCEdl46JUAi', NULL, NULL, NULL, 5, '2014-12-13 03:28:01', '2014-12-13 01:46:01', '127.0.0.1', '127.0.0.1', '2014-12-06 12:38:46', '2014-12-13 03:28:01'),
(2, 'abc@gmail.com', '$2a$10$pQPR2DVCWNyjFfOkH3EYm.sMQAUqycoPtWS/r3Rq0d43otd9fWc2G', NULL, NULL, NULL, 1, '2014-12-11 03:47:19', '2014-12-11 03:47:19', '127.0.0.1', '127.0.0.1', '2014-12-11 03:47:19', '2014-12-11 03:47:19'),
(3, 'linhly@gmail.com', '$2a$10$aI7WXrwvbs7LGZMmEzIppuhWEfVkaRiWGHPAQ5glhsXpp0sCF81Oy', NULL, NULL, NULL, 1, '2014-12-11 04:42:19', '2014-12-11 04:42:19', '127.0.0.1', '127.0.0.1', '2014-12-11 04:42:19', '2014-12-11 04:42:19'),
(4, 'trinhan.hanu@gmail.com', '$2a$10$kpPqZzY9.foPn.5a5D7bvuen3ZLNDm40w3c7t55fTgFUsh/Ts4gY6', NULL, NULL, NULL, 1, '2014-12-11 06:11:07', '2014-12-11 06:11:07', '127.0.0.1', '127.0.0.1', '2014-12-11 06:11:07', '2014-12-11 06:11:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `index_active_admin_comments_on_namespace` (`namespace`), ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`), ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_admin_users_on_email` (`email`), ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lienkets`
--
ALTER TABLE `lienkets`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
 ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_users_on_email` (`email`), ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `lienkets`
--
ALTER TABLE `lienkets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
