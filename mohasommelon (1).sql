-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 05:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohasommelon`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrations`
--

CREATE TABLE `administrations` (
  `id` int(11) NOT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_access` text DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `password_hints` varchar(100) DEFAULT NULL,
  `remember_token` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrations`
--

INSERT INTO `administrations` (`id`, `user_type`, `user_access`, `photo`, `fullname`, `contact`, `username`, `email`, `designation`, `address`, `password`, `password_hints`, `remember_token`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, NULL, NULL, NULL, 'hnilaup', '01823693008', 'hnilaup', 'razanacharjeemun@gmail.com', 'MD', NULL, '$2y$10$Hyh61VMCkWT1dSnKHjmGZ.sM.wIfAULAtnq1DkXgrVdjpCSVNBVFS', 'hnila1234', 'zGyzP79XTQps3AaF1lR1q8Jl05m64tLZ2kzvIph5r9BgJAga1re7ZjBQtzIA', 1, NULL, NULL, NULL, '2019-09-23 08:04:09', '2021-12-16 20:26:22', NULL),
(10, NULL, NULL, NULL, 'wasim47', '01823693008', 'wasim47', 'wasim.html@gmail.com', 'MD', NULL, '$2y$10$7f4d7HnCvk2uBgYbKzU2vegkZVbfOM11NijWv0J7cYNQCaKN0Q/v6', 'hnila1234', 'WCah5XOre8bG7Vd53GnFE0I1iyE65bVWFxgxGiEPK0rGjfAYtR0zXix0tONO', 1, NULL, NULL, NULL, '2019-09-23 08:04:09', '2021-12-16 20:26:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `url` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `url`, `name`, `image`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(23, '#', 'During the chairman\'s speech', 'banner_1665516907.jpeg', NULL, NULL, 3, 1, '2021-10-21 03:18:11', '2022-10-11 13:35:07'),
(24, '1', 'Chairman\'s Victory Fleet', 'banner_1665516895.jpeg', NULL, NULL, 4, 1, '2021-10-21 03:18:28', '2022-10-11 13:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `company_profiles`
--

CREATE TABLE `company_profiles` (
  `id` int(11) NOT NULL,
  `url` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `hotline` int(50) DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `position` char(50) DEFAULT NULL,
  `tin` varchar(100) DEFAULT NULL,
  `bin` varchar(100) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `url`, `name`, `slogan`, `address`, `email`, `contact`, `hotline`, `image`, `meta_details`, `position`, `tin`, `bin`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(4, 'https://www.zamancarcenter.com/', 'Cox\'s Bazar Mohasommelon', 'A complete Transport Solution & All vehicles spare parts suppliers', 'Cox\'s Bazar', 'info@zamancarrental.com', '01922002381', 16245, 'companyprofile_1665517244.png', NULL, 'left', '0', '0', NULL, NULL, 1, '2022-02-16 13:40:12', '2022-10-11 13:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bangla` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `content_bangla` longtext CHARACTER SET utf8 DEFAULT NULL,
  `menu_id` int(10) DEFAULT NULL,
  `sethome` tinyint(4) DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `content`, `title_bangla`, `content_bangla`, `menu_id`, `sethome`, `image`, `created_at`, `updated_at`) VALUES
(3, 'লক্ষ্য ও উদ্দেশ্য', '<p style=\"text-align: justify;\"><span style=\"font-size:14px;\"><span style=\"color:#800080;\"><strong>ইতিকথা : সম্মিলিত নাগরিক ফোরাম, ঈদগাঁও</strong></span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:14px;\"><strong>লক্ষ্য:&nbsp;</strong><br />\r\nমুক্তিযুদ্ধের চেতনা, মূল্যবোধ চর্চার মাধ্যমে দেশের স্বাধীনতা-সার্বভৌমত্বের প্রতি সর্বদা অঙ্গীকারাবদ্ধ থেকে প্রিয় স্বদেশ, মাতৃভুমি বাংলাদেশকে একটি শান্তি,সাম্য,অসাম্প্রদায়িক চেতনার সুখী ও সম্প্রীতিময় কল্যাণ রাষ্ট্র হিসেবে প্রতিষ্ঠার আন্দোলনে সহযোগী-সহযোদ্ধা হিসেবে আত্মনিয়োগ করে প্রাকৃতিকভাবে সমৃদ্ধ ও ঐতিহ্যবাহী জনপদ ঈদগাঁও&#39;কে বাসযোগ্য, নিরাপদ,পরিবেশ-প্রকৃতি-পর্যটনবান্ধব, উন্নত-সমৃদ্ধ, আধুনিক ও পরিকল্পিত মডেল উপজেলা হিসেবে গড়ে তোলা।</span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-size:14px;\"><br />\r\n<strong>উদ্দেশ্য:&nbsp;</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">প্রচলিত ও অপ্রচলিত সকল প্রকারের পরিবেশ, প্রকৃতি, জীববৈচিত্র ও বাস্তুসংস্থান, নাগরিক অধিকার, প্রাণি অধিকার বিরোধি কার্যক্রম প্রতিরোধ ও গণসচেতনতা সৃষ্টি করা ।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">নদী-নালা, খাল-বিল-ছড়া, দীঘি, জলাশয় সংরক্ষণ, দখল, দূষণ ও ভরাট প্রতিরোধ এবং প্রাকৃতিক অবস্থার সুরক্ষা করা&nbsp;</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">নৈতিক মূল্যবোধ চর্চা এবং শিক্ষার গুণগত উৎকর্ষ সাধন ও শিক্ষাক্ষেত্রে সুশাসন প্রতিষ্ঠায় ব্যাপক জনমত ও জনসচেতনতা সৃষ্টি করা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">পাহাড়নিধন, নদী-খাল থেকে অবৈধ বালি উত্তোলন&rsquo;সহ প্রাকৃতিক বাস্তুসংস্থান ও পরিবেশবিধ্বংসী সকল কার্যক্রমের বিরুদ্ধে প্রতিরোধ গড়ে তোলা ও গণসচেতনতা সৃষ্টি করা ।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">মাতৃভাষার অধিকার, স্বীকৃতি, মর্যাদা রক্ষা এবং সঠিক ও যথাযথ ব্যবহার নিশ্চিত করে নৈতিক ও ধর্মীয় মুল্যবোধ চর্চার ক্ষেত্র বিকাশের মাধ্যমে দেশপ্রেমিক সুনাগরিক সৃষ্টি করা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">সরকারী, আধাসরকারী ও স্বায়ত্তশাসিত সেবাপ্রতিষ্ঠানের নাগরিক সনদ বাস্তবায়ন ও প্রকৃত নাগরিকসেবা নিশ্চিতকল্পে অনিয়ম, দূর্নীতি ও অব্যবস্থাপনার বিরুদ্ধে প্রতিরোধ গড়ে তোলা ও গণসচেতনতা সৃষ্টি করা ।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">ভোক্তা অধিকার সংরক্ষণ ও ভোক্তা সেবা নিশ্চিত করা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">প্রাকৃতিক দূর্যোগ, মহামারী, সামাজিক বিপর্যয় ও যেকোন ক্রান্তিকাল মোকাবেলায় সামাজিক বা নাগরিক উদ্যোগের মাধ্যমে আর্তমানবতার সেবায় আত্মনিয়োগ করা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">সংরক্ষিত বনাঞ্চল রক্ষা, প্রাকৃতিক বাস্তুসংস্থান রক্ষা, বন্যপ্রাণী রক্ষা এবং ইকোপার্ক বা জাতীয় &nbsp;উদ্যান বা উদ্ভিদ উদ্যান বা ইকোট্যুরিজম পার্ক, অভয়ারণ্য, কালচারাল বা ন্যাচারাল হেরিটেজ সাইট গড়ে তুলতে গণসচেতনতা সৃষ্টি ও যথাযথ পদক্ষেপ গ্রহণ করা।&nbsp;</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">জাতীয় বা রাষ্ট্রীয় সম্পদ বা প্রাকৃতিক সম্পদ সুরক্ষা, রক্ষণারেক্ষণ ও মনিটরিংয়ের পাশাপাশি সরকারের চলমান বা প্রস্তাবিত বা পরিকল্পিত জনস্বার্থ সংশ্লিষ্ট বা জাতীয় উন্নয়ন প্রকল্পের সঠিক ও যথাযথভাবে বাস্তবায়নে নাগরিক পর্যবেক্ষণ, মূল্যায়ন ও পরিবীক্ষণ জোরদার করা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">সামাজিক ন্যায়বিচার, সুশাসন প্রতিষ্ঠা &nbsp;ও &nbsp;নাগরিক অধিকার সুরক্ষা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">সামাজিক মূল্যায়ন, স্বীকৃতি, সম্বর্ধনা,নাগরিক পদক প্রবর্তন, কৃতজ্ঞতা ও ধন্যবাদ জ্ঞাপন কর্মসূচী পরিচালনা করা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">সংবেদনশীল নাগরিক ও প্রতিনিধিত্বশীল নেতৃত্ব সৃষ্টি এবং সৃজনশীলতা ও মননশীলতা বিকাশের লক্ষে শিল্প-সাহিত্য-সংস্কৃতির সুস্থ চর্চার মাধ্যমে জাতীয়,আঞ্চলিক ও &nbsp;লোকজ ঐতিহ্য এবং কৃষ্টিকালচার সমুন্নত রাখা।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">মাদক, অপসাংস্কৃতিক আগ্রাসন, সমাজ ও রাষ্ট্রবিরোধী কার্যক্রম প্রতিরোধ।</span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-family:Comic Sans MS,cursive;\"><span style=\"font-size:14px;\">নারী ও শিশু অধিকার সুরক্ষা, মানবাধিকার বাস্তবায়ন, ভোক্তা অধিকার, পরিবেশের ভারসাম্যরক্ষা, জীববৈচিত্র্যতা রক্ষা, নদী-খাল-বিল-ছড়া-দীঘি-জলাশয় রক্ষা, বন ও বণ্যপ্রাণী রক্ষা, প্রাণী অধিকার সুরক্ষা, সবুজায়ন, জাতীয় বা রাষ্ট্রীয় সম্পদ বা প্রাকৃতিক সম্পদ সুরক্ষা ও রক্ষণারেক্ষণ বিষয়ে গণসচেতনতা সৃষ্টির লক্ষ্যে গণমুখী কার্যক্রম, সেমিনার, প্রশিক্ষণ ও কর্মশালা পরিচালনা করা।</span></span></li>\r\n</ul>', NULL, NULL, 7, 0, NULL, '2022-02-14 18:21:26', '2022-02-17 10:57:09'),
(4, 'ভূমিকা', '<table align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: left; vertical-align: top;\">\r\n			<h2><strong><span style=\"color:#000000;\">Welcome To 03/05 Mohasommilon</span></strong></h2>\r\n\r\n			<p><span style=\"color:#000000;\"><span style=\"font-size:16px;\">Horem Ipsum passages, and more recently with desktop publishing software like aldus pageMaker including versions of all the Rorem Ipsum generators</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<ul>\r\n				<li><span style=\"color:#000000;\"><span style=\"font-size:16px;\"><span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif;\"><i></i>We are a trusted name</span></span></span></li>\r\n				<li><span style=\"color:#000000;\"><span style=\"font-size:16px;\"><span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif;\"><i></i>we deal in have all brands</span></span></span></li>\r\n				<li><span style=\"color:#000000;\"><span style=\"font-size:16px;\"><span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif;\"><i></i>have a larger stock of vehicles</span></span></span></li>\r\n				<li><span style=\"color:#000000;\"><span style=\"font-size:16px;\"><span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif;\"><i></i>we are at worldwide locations</span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td><img alt=\"\" src=\"/assets/admin/ckeditor/kcfinder/upload/images/banner.png\" style=\"width: 100%;\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 1, 1, '', '2022-02-15 12:13:18', '2022-02-17 10:57:09'),
(5, 'ইতিকথা', NULL, NULL, NULL, 1, 0, '', '2022-02-15 12:52:27', '2022-02-17 10:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `files` varchar(250) DEFAULT NULL,
  `details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_type_id`, `name`, `slug`, `image`, `files`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(16, 3, 'হ্নীলা ইউনিয়ন পরিষদের হোল্ডিং ট্যাক্স আদায় করা।', 'হ্নীলা-ইউনিয়ন-পরিষদের-হোল্ডিং-ট্যাক্স-আদায়-করা।', 'service_1634382819.jpg', NULL, '<p>হ্নীলা ইউনিয়ন পরিষদের সকল জনসাধারণদের অবগতির জানানো যাচ্ছে যে, ২০ অক্টোবর থেকে সকল জনগনের হোল্ডিং ট্যাক্স আদায় করা হবে।</p>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2021-11-05 22:57:05'),
(18, 3, 'কর দিই এবং সুন্দর ইউনিয়ন গড়িdff', 'কর-দিই-এবং-সুন্দর-ইউনি???ন-গড়িdff', 'event_1644231009.png', NULL, '<p>&nbsp;adfmhtb uidjkfldlfd</p>', NULL, NULL, 2, 1, '2021-11-22 00:08:19', '2022-02-17 08:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE `event_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'সাধারণ নোটিশ', 'সাধারণ-নো???িশ', '2021-10-29 05:46:38', '2021-10-29 05:46:38'),
(2, 'জনসংখ্যান নোটিশ', 'জনসংখ্যান-নো???িশ', '2021-10-29 05:47:09', '2021-10-29 05:47:09'),
(3, 'Activity', 'activity', '2021-10-29 05:47:19', '2022-02-07 10:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `fastivals`
--

CREATE TABLE `fastivals` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fastivals`
--

INSERT INTO `fastivals` (`id`, `name`, `slug`, `image`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(16, 'প্রকৃতি ও পরিবেশ', 'প্রকৃতি-ও-পরিবেশ', 'fastival_1644856226.png', '<h1 style=\"text-align:center\"><font color=\"#800080\"><b>ঘোষণা</b></font></h1>\r\n\r\n<p>আামি এই মর্মেঘোষণা করিতেছি যে, সম্মিলিত নাগরিক ফোরাম ঈদগাঁও কর্তৃক আয়োজিত মুক্তির মন্দির সোপান তলে প্রতিপাদ্যে অনুষ্ঠিতব্য &lsquo;স্বাধীনতা কবিতা উৎসব ২০২২&rsquo; এর যাবতীয় নিয়ম-শৃংখলা মানিয়া গৃহীত সকল কার্যক্রমে স্বেছায় ও সক্রিয়ভাবে অংশগ্রহণ করিব। উৎসবের অনুষ্ঠানমালা সুন্দর ও সফল করতে সর্বাত্মক সহযোগিতা করিব।<br />\r\n<br />\r\nমুক্তিযুদ্ধের চেতনা ও মূল্যবোধকে সমুন্নত রাখিয়া স্বদেশ ও স্বজাতির মানবিক, আর্থসামাজিক উন্নয়ন ও কল্যাণে সর্বদা নিবেদিত থাকিয়া পারষ্পারিক ভ্রাতত্ববোধ, সম্প্রীতি ও সংহতির বন্ধনে আবদ্ধ চিরজাগ্রত কাব্যিক সৌন্দর্য্যচেতনাকে<br />\r\nবিশ্বশান্তিও মানবকল্যাণে উৎসর্গকরিব।</p>\r\n\r\n<h2 style=\"text-align:center\"><br />\r\n<span style=\"color:#800080\"><strong>কবিতার জয় হোক, জয় বাংলা।</strong></span></h2>\r\n\r\n<h2 style=\"text-align: center;\"><span style=\"color:#800080;\"></span></h2>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2022-02-17 03:07:48'),
(17, 'ঈদগাহ উৎসব', 'ঈদগাহ-উ৞সব', 'fastival_1644856154.png', '<h1 style=\"text-align:center\"><font color=\"#800080\"><b>ঘোষণা</b></font></h1>\r\n\r\n<p>আামি এই মর্মেঘোষণা করিতেছি যে, সম্মিলিত নাগরিক ফোরাম ঈদগাঁও কর্তৃক আয়োজিত মুক্তির মন্দির সোপান তলে প্রতিপাদ্যে অনুষ্ঠিতব্য &lsquo;স্বাধীনতা কবিতা উৎসব ২০২২&rsquo; এর যাবতীয় নিয়ম-শৃংখলা মানিয়া গৃহীত সকল কার্যক্রমে স্বেছায় ও সক্রিয়ভাবে অংশগ্রহণ করিব। উৎসবের অনুষ্ঠানমালা সুন্দর ও সফল করতে সর্বাত্মক সহযোগিতা করিব।<br />\r\n<br />\r\nমুক্তিযুদ্ধের চেতনা ও মূল্যবোধকে সমুন্নত রাখিয়া স্বদেশ ও স্বজাতির মানবিক, আর্থসামাজিক উন্নয়ন ও কল্যাণে সর্বদা নিবেদিত থাকিয়া পারষ্পারিক ভ্রাতত্ববোধ, সম্প্রীতি ও সংহতির বন্ধনে আবদ্ধ চিরজাগ্রত কাব্যিক সৌন্দর্য্যচেতনাকে<br />\r\nবিশ্বশান্তিও মানবকল্যাণে উৎসর্গকরিব।</p>\r\n\r\n<h2 style=\"text-align:center\"><br />\r\n<span style=\"color:#800080\"><strong>কবিতার জয় হোক, জয় বাংলা।</strong></span></h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#800080\"></span></h2>', NULL, NULL, NULL, 1, '2021-11-22 00:07:18', '2022-02-17 03:07:41'),
(18, 'কবিতা উৎসব', 'কবিতা-উ৞সব', 'fastival_1644856127.png', '<h1 style=\"text-align:center\"><font color=\"#800080\"><b>ঘোষণা</b></font></h1>\r\n\r\n<p>আামি এই মর্মেঘোষণা করিতেছি যে, সম্মিলিত নাগরিক ফোরাম ঈদগাঁও কর্তৃক আয়োজিত মুক্তির মন্দির সোপান তলে প্রতিপাদ্যে অনুষ্ঠিতব্য &lsquo;স্বাধীনতা কবিতা উৎসব ২০২২&rsquo; এর যাবতীয় নিয়ম-শৃংখলা মানিয়া গৃহীত সকল কার্যক্রমে স্বেছায় ও সক্রিয়ভাবে অংশগ্রহণ করিব। উৎসবের অনুষ্ঠানমালা সুন্দর ও সফল করতে সর্বাত্মক সহযোগিতা করিব।<br />\r\n<br />\r\nমুক্তিযুদ্ধের চেতনা ও মূল্যবোধকে সমুন্নত রাখিয়া স্বদেশ ও স্বজাতির মানবিক, আর্থসামাজিক উন্নয়ন ও কল্যাণে সর্বদা নিবেদিত থাকিয়া পারষ্পারিক ভ্রাতত্ববোধ, সম্প্রীতি ও সংহতির বন্ধনে আবদ্ধ চিরজাগ্রত কাব্যিক সৌন্দর্য্যচেতনাকে<br />\r\nবিশ্বশান্তিও মানবকল্যাণে উৎসর্গকরিব।</p>\r\n\r\n<h2 style=\"text-align:center\"><br />\r\n<span style=\"color:#800080\"><strong>কবিতার জয় হোক, জয় বাংলা।</strong></span></h2>', NULL, NULL, NULL, 1, '2021-11-22 00:08:19', '2022-02-17 03:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `fastival_registrations`
--

CREATE TABLE `fastival_registrations` (
  `id` int(11) NOT NULL,
  `fastival_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `fname` varchar(250) DEFAULT NULL,
  `mname` varchar(250) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `profession` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `favourite` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `published_books` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fastival_registrations`
--

INSERT INTO `fastival_registrations` (`id`, `fastival_id`, `name`, `fname`, `mname`, `dob`, `nid`, `blood_group`, `profession`, `mobile`, `email`, `address`, `favourite`, `image`, `published_books`, `created_at`, `updated_at`) VALUES
(1, 18, 'মোহাম্মাদ ওয়াসিম', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', NULL, 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-14 16:52:31'),
(2, 18, 'ইব্রাহিম খালিল', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', NULL, 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-14 16:52:31'),
(3, 18, 'মোহাম্মাদ আনোয়ার খান', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'user_1644988785.jpg', 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-16 05:19:45'),
(4, 18, 'মোসাম্মাৎ রাবেয়া বাশরী', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'user_1644988770.jpg', 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-16 05:19:30'),
(5, 18, 'মোহাম্মাদ ওয়াসিম', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', NULL, 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-14 16:52:31'),
(6, 18, 'ইব্রাহিম খালিল', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', NULL, 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-14 16:52:31'),
(7, 18, 'মোহাম্মাদ আনোয়ার খান', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'user_1644988785.jpg', 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-16 05:19:45'),
(8, 18, 'মোসাম্মাৎ রাবেয়া বাশরী', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'user_1644988770.jpg', 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-16 05:19:30'),
(9, 18, 'ইব্রাহিম খালিল', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', NULL, 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-14 16:52:31'),
(10, 18, 'মোহাম্মাদ আনোয়ার খান', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'user_1644988785.jpg', 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-16 05:19:45'),
(11, 18, 'মোসাম্মাৎ রাবেয়া বাশরী', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'user_1644988770.jpg', 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-16 05:19:30'),
(12, 18, 'মোহাম্মাদ ওয়াসিম', 'মোহাম্মাদ কলিম', 'রোক্সানা খাতুন', '2022-02-14', '১২৪১৬৫৪৬৫', 'B+', 'Software engineer', '০১৯২২০০২৩৮১', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', NULL, 'ধুমকেতু', '2022-02-14 16:37:46', '2022-02-14 16:52:31'),
(13, 18, 'Mohammad Wasim', 'Mohammad Kalim', 'Roksana Khatun', '2022-02-23', '৬৫৪১৫৬৪৬৯', 'A+', 'ইঞ্জিনিয়ার', '01922002381', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'C:\\xampp\\tmp\\phpF468.tmp', 'ধুমকেতু', '2022-02-16 07:54:07', '2022-02-16 07:54:07'),
(14, NULL, 'Mohammad Wasim', 'Mohammad Kalim', 'Roksana Khatun', '2022-03-04', '110022', 'A+', 'Software engineer', '01922002382', 'wasim.html@gmail.com', 'Avenue-5, Mirpur-11', 'বিদ্রোহী, কবি কাজী নজরুল ইসলাম', 'C:\\xampp\\tmp\\php481A.tmp', 'ধুমকেতু', '2022-02-16 08:11:57', '2022-02-16 08:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `fixbanners`
--

CREATE TABLE `fixbanners` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixbanners`
--

INSERT INTO `fixbanners` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Banners', 'fixbanner_1644120737.png', 1, '2021-11-05 15:17:55', '2022-02-06 04:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `album_id`, `name`, `image`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(33, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -6', 'gallery_1610865326.jpg', NULL, 1, '2021-02-15 09:47:52', '2021-02-15 09:47:52'),
(34, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -7', 'gallery_1610865317.jpg', NULL, 1, '2021-02-15 09:48:10', '2021-02-15 09:48:10'),
(35, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -8', 'gallery_1610865331.jpg', NULL, 1, '2021-02-15 09:48:28', '2021-02-15 09:48:28'),
(36, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -9', 'gallery_1610865346.jpg', NULL, 1, '2021-02-15 09:49:02', '2021-02-15 09:49:02'),
(37, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -10', 'gallery_1610865375.jpg', NULL, 1, '2021-02-15 09:50:19', '2021-02-15 09:50:19'),
(38, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -11', 'gallery_1610865574.jpg', NULL, 1, '2021-02-15 09:52:08', '2021-02-15 09:52:08'),
(39, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -12', 'gallery_1610865586.jpg', NULL, 1, '2021-02-15 09:52:33', '2021-02-15 09:52:33'),
(40, 12, '১৫ আগস্ট, জাতীয় শোক দিবস -13', 'gallery_1610865580.jpg', NULL, 1, '2021-02-15 09:53:03', '2021-02-15 09:53:03'),
(41, 13, 'বৃক্ষরোপণ 1', 'gallery_1610865375.jpg', NULL, 1, '2021-02-15 10:02:24', '2021-02-15 10:02:24'),
(56, 1, 'Head Office 10', 'gallery_1613458045.jpg', NULL, 1, '2021-02-16 10:47:26', '2021-02-16 10:47:26'),
(57, 2, 'Head Office Employees', 'gallery_1613460894.jpg', NULL, 1, '2021-02-16 11:34:55', '2021-02-16 11:34:55'),
(148, 13, 'বৃক্ষরোপণ 1', 'gallery_1610865375.jpg', NULL, 1, '2021-02-15 10:02:24', '2021-02-15 10:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `url` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `position` char(50) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `url`, `name`, `image`, `meta_details`, `position`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Logo', 'logo_1645945153.jpg', NULL, 'left', NULL, NULL, 1, '2021-11-03 21:06:01', '2022-02-27 06:59:13'),
(4, NULL, 'Banner', 'logo_1645945141.png', NULL, 'left', NULL, NULL, 1, '2022-02-16 13:40:12', '2022-02-27 06:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `management`
--

CREATE TABLE `management` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `meta_details` text DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management`
--

INSERT INTO `management` (`id`, `name`, `designation`, `image`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'management_1634787022.jpg', '<p><a href=\"https://www.instagram.com/rezoan_khan?fbclid=IwAR31-zbLcbfI6glcrWZyzrlyqSSJXXHG7g9w6gu013oV_8uY46ZZQJj3QHA\" rel=\"nofollow noopener\" role=\"link\" tabindex=\"0\" target=\"_blank\">Mohammad Rezoanul Khan</a></p>', NULL, NULL, NULL, 1, '2021-10-21 03:30:22', '2021-10-21 03:30:22'),
(2, 'Mohammad Wasim', 'Principal Software Developer', 'management_1656149620.jpg', NULL, NULL, NULL, NULL, 1, '2022-06-25 03:33:41', '2022-06-25 03:33:41'),
(3, 'Biswajit', 'MD', 'management_1656149702.jpg', NULL, NULL, NULL, NULL, 1, '2022-06-25 03:35:02', '2022-06-25 03:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `member_type_id` int(11) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `designation` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `branch` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_type_id`, `name`, `designation`, `image`, `branch`, `department`, `mobile`, `email`, `status`, `created_at`, `updated_at`) VALUES
(12, 1, 'মরজিনা আকতার', 'সংরক্ষিত মহিলা মেম্বার-৭, ৮ ও ৯নং ওয়ার্ড', 'employee_1639505745.jpg', NULL, 'হ্নীলা ইউপি', '০১৮১১৮২৮৩২৬', NULL, 1, '2021-10-21 03:30:59', '2021-12-15 00:15:45'),
(13, 1, 'নাসরিন পারভীন কবির', 'সংরক্ষিত মহিলা মেম্বার-৩,৫ ও ৬নং ওয়ার্ড', 'employee_1637513574.jpg', NULL, NULL, '০১৮৩৭১২৮৭৮৬', NULL, 1, '2021-11-21 22:30:15', '2021-11-21 22:52:54'),
(14, 1, 'রাহামা', 'সংরক্ষিত মহিলা মেম্বার-১,২ ও ৪ নং ওয়ার্ড', 'employee_1637513455.jpg', NULL, NULL, '১৮৭৯৮৭৮৩৮২', NULL, 1, '2021-11-21 22:31:44', '2021-11-21 22:50:55'),
(15, 1, 'মোহাম্মদ আলী', 'মেম্বার-০৯ নং ওয়ার্ড', 'employee_1638713361.jpg', NULL, NULL, '০১৮৫২৪৬৮৮৫৯', NULL, 1, '2021-11-21 22:32:22', '2021-12-05 20:09:21'),
(16, 2, 'নুরুল হুদা', 'মেম্বার-০৮ নং ওয়ার্ড', 'employee_1639505708.jpg', NULL, NULL, '০১৮৫০৭৩২৮১২', NULL, 1, '2021-11-21 22:32:46', '2021-12-15 00:15:08'),
(17, 2, 'জামাল হোসাইন', 'মেম্বার-০৭ নং ওয়ার্ড', 'employee_1638713306.jpg', NULL, NULL, '০১৮১৩৭৯৫৭৭০', NULL, 1, '2021-11-21 22:33:34', '2021-12-05 20:08:27'),
(18, NULL, 'আবুল হোছন', 'মেম্বার-০৬ নং ওয়ার্ড', 'employee_1637513185.jpg', NULL, NULL, '০১৯১৪৫৩৮৩৩৬', NULL, 1, '2021-11-21 22:34:09', '2021-11-21 22:46:25'),
(19, NULL, 'রেজাইল করিম', 'মেম্বার-০৫ নং ওয়ার্ড', 'employee_1637513101.jpg', NULL, NULL, '০১৯২৯৭৮৬৩৭৩', NULL, 1, '2021-11-21 22:34:30', '2021-11-21 22:45:01'),
(20, NULL, 'হোছাইন আহমদ', 'মেম্বার-০৪ নং ওয়ার্ড', 'employee_1637512491.jpg', NULL, NULL, '০১৮১৭২৯২৮৮৪', NULL, 1, '2021-11-21 22:34:51', '2021-11-21 22:44:04'),
(21, NULL, 'রফিকুল ইসলাম', 'মেম্বার-০৩ নং ওয়ার্ড', 'employee_1637512772.jpg', NULL, NULL, '০১৯২৫২২০০১১', NULL, 1, '2021-11-21 22:35:13', '2021-11-21 22:39:32'),
(22, NULL, 'বেলাল উদ্দিন', 'মেম্বার-০২ নং ওয়ার্ড', 'employee_1638713270.jpg', NULL, NULL, '০১৭৮৯১৯০৫০৮', NULL, 1, '2021-11-21 22:36:36', '2021-12-05 20:07:50'),
(23, NULL, 'বশির আহমদ', 'মেম্বার-০১ নং ওয়ার্ড', 'employee_1637512981.jpg', NULL, NULL, '০১৮৪৯৫১১৩২৯', NULL, 1, '2021-11-21 22:36:55', '2021-11-21 22:43:01'),
(24, NULL, 'MD Wasim', 'Principal Software Developer', 'member_1644232544.png', 'Dhaka', 'IT', '01922002381', 'wasim.html@gmail.com', 1, '2022-02-07 11:15:44', '2022-02-07 11:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `member_types`
--

CREATE TABLE `member_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_types`
--

INSERT INTO `member_types` (`id`, `name`, `slug`, `position`, `created_at`, `updated_at`) VALUES
(1, 'সদস্যবৃন্দ', 'সদস্যবৃন্দ', 'left', '2022-02-16 03:58:49', '2022-02-17 08:51:29'),
(2, 'কমিটি', 'কমিটি', 'right', '2022-02-16 03:58:56', '2022-02-17 08:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bangla` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `uri` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sparent_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_structure` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `title_bangla`, `uri`, `parent_id`, `sparent_id`, `page_structure`, `status`, `updated_at`, `created_at`) VALUES
(1, 'ফোরাম সম্পর্কে', NULL, 'ফোরাম-সম্পর্কে', NULL, NULL, 'Text', NULL, '2022-02-15 12:49:42', '2021-10-29 10:56:59'),
(2, 'আমাদের কথা', NULL, 'আমাদের-কথা', NULL, NULL, 'messages', NULL, '2022-02-16 13:50:01', '2021-11-03 21:31:54'),
(4, 'সদস্যবৃন্দ', NULL, 'সদস্যবৃন্দ', NULL, NULL, 'members', NULL, '2022-02-15 13:04:47', '2021-11-03 22:40:36'),
(6, 'ছবিতে নাগরিক ফোরাম', NULL, 'ছবিতে-নাগরিক-ফোরাম', 'নাগরিক-ফোরাম', NULL, 'photos', NULL, '2022-02-16 13:30:45', '2021-11-05 02:25:06'),
(7, 'ভিডিওতে নাগরিক ফোরাম', NULL, 'ভিডিওতে-নাগরিক-ফোরাম', 'নাগরিক-ফোরাম', NULL, 'videos', NULL, '2022-02-16 13:30:33', '2021-11-08 13:32:57'),
(8, 'সংবাদ বিজ্ঞপ্তি', NULL, 'সংবাদ-বিজ্ঞপ্তি', NULL, NULL, 'news', NULL, '2022-02-16 13:15:39', '2021-11-20 17:20:55'),
(9, 'যোগাযোগ', NULL, 'যোগাযোগ', NULL, NULL, 'Text', NULL, '2022-02-15 13:11:59', '2022-02-07 08:08:51'),
(10, 'ভূমিকা', NULL, 'ভূমিকা', 'আমাদের-সম্পর্কে', NULL, 'Text', NULL, '2022-02-15 12:23:34', '2022-02-15 12:23:34'),
(11, 'লক্ষ্য ও উদ্দেশ্য', NULL, 'লক্ষ্য-ও-উদ্দেশ্য', 'আমাদের-সম্পর্কে', NULL, 'Text', NULL, '2022-02-15 12:25:08', '2022-02-15 12:25:08'),
(12, 'ইতিকথা', NULL, 'ইতিকথা', 'ফোরাম-সম্পর্কে', NULL, 'Text', NULL, '2022-02-15 12:53:41', '2022-02-15 12:53:41'),
(13, 'লক্ষ্য ও উদ্দেশ্য', NULL, 'লক্ষ্য-ও-উদ্দেশ্য', 'ফোরাম-সম্পর্কে', NULL, 'Text', NULL, '2022-02-15 12:54:05', '2022-02-15 12:54:05'),
(24, 'সামাজিক কার্যক্রম', NULL, 'সামাজিক-কার্যক্রম', NULL, NULL, 'event', NULL, '2022-02-16 13:27:14', '2022-02-16 13:27:14'),
(25, 'নাগরিক ফোরাম', NULL, 'নাগরিক-ফোরাম', NULL, NULL, 'photos', NULL, '2022-02-16 13:30:12', '2022-02-16 13:30:12'),
(26, 'সভার কার্য বিবরণী', NULL, 'সভার-কার্য-বিবরণী', NULL, NULL, 'notice', NULL, '2022-02-16 13:31:28', '2022-02-16 13:31:28'),
(27, 'প্রধান সমন্বয়ক', NULL, 'প্রধান-সমন্ব???ক', 'আমাদের-কথা', NULL, 'messages', NULL, '2022-02-16 13:56:35', '2022-02-16 13:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `designation` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `designation`, `image`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(3, 'মোহাম্মাদ ওয়াসিম', 'প্রধান শিক্ষক', 'management_1635480421.jpg', '<p>শিক্ষা হচ্ছে সবচেয়ে বড় শ্লোগান যা</p>\r\n\r\n<p>ইউনাইটেড আইডিয়াল স্কুল</p>\r\n\r\n<p>বিশ্বাস করে।শিক্ষার্থীদের উদ্দেশ্যে কতিপয় পরামর্শ : শিক্ষার মূল লক্ষ্য বড় কিছু হওয়া নয়, ভাল মানুষ হওয়া। সুতরাং শিক্ষার্থীদেরকে ভাল মানুষ হতে হলে &nbsp;কর্তব্যপরায়ণ হতে হবে।শিক্ষার্থীদের প্রধান কাজ নিয়মিত অধ্যয়ন ।&nbsp;এই স্কুল শিক্ষার প্রতিশ্রুতি এবং তাদের উন্নত জীবনসহ সত্যিকারের দেশ প্রেমিক করার লক্ষে কাজ করে।</p>\r\n\r\n<p>ধন্নবাদ,(মেহেদী হাসান ভুঁইয়া)প্রধান শিক্ষক</p>', NULL, NULL, 1, 1, '2021-10-21 03:30:22', '2021-10-29 04:07:02'),
(4, 'মোহাম্মাদ রেজওয়ানুল খান', 'প্রধান সমন্বয়ক', 'message_1644862723.png', '<p>কক্সবাজারের ঈদগাঁও উপজেলা সম্মিলিত নাগরিক ফোরামের<a href=\"https://www.chattalainfo24.com/chattagram-live-news/\">&nbsp;সাধারন সভা ও নৈশভোজ</a>&nbsp;আয়োজন সম্পন্ন হয়েছে।</p>\r\n\r\n<p>গতকাল সন্ধ্যা ৭টায় ঈদগাহ জাহানারা ইসলাম বালিকা উচ্চ বিদ্যালয়ের মিলনায়তনে ফোরাম সভাপতি রেজাউল করিম সিকদার সভাপতিত্বে,</p>\r\n\r\n<p>যুগ্ন সাধারন সম্পাদক আবছার কামাল,হারুনর রশিদের যৌথ পরিচালনায় স্বাগত বক্তব্য রাখে, সম্মিলিত নাগরিক ফোরাম<a href=\"https://www.chattalainfo24.com/bd-news-today-3/\">&nbsp;সাধারন সম্পাদক কাফি আনোয়ার</a>।&nbsp;</p>', NULL, NULL, 2, 1, '2021-10-21 03:30:22', '2022-02-14 18:18:43'),
(5, 'কাফি আনোয়ার', 'সাধারণ সম্পাদক', 'message_1644862662.png', '<p>কক্সবাজারের ঈদগাঁও উপজেলা সম্মিলিত নাগরিক ফোরামের<a href=\"https://www.chattalainfo24.com/chattagram-live-news/\">&nbsp;সাধারন সভা ও নৈশভোজ</a>&nbsp;আয়োজন সম্পন্ন হয়েছে।</p>\r\n\r\n<p>গতকাল সন্ধ্যা ৭টায় ঈদগাহ জাহানারা ইসলাম বালিকা উচ্চ বিদ্যালয়ের মিলনায়তনে ফোরাম সভাপতি রেজাউল করিম সিকদার সভাপতিত্বে,</p>\r\n\r\n<p>যুগ্ন সাধারন সম্পাদক আবছার কামাল,হারুনর রশিদের যৌথ পরিচালনায় স্বাগত বক্তব্য রাখে, সম্মিলিত নাগরিক ফোরাম<a href=\"https://www.chattalainfo24.com/bd-news-today-3/\">&nbsp;সাধারন সম্পাদক কাফি আনোয়ার</a>।&nbsp;</p>', NULL, NULL, 1, 1, '2021-10-21 03:30:22', '2022-02-14 18:17:42'),
(6, 'নুরুল ইসলাম', 'সম্পাদক', 'message_1644862684.png', '<p>কক্সবাজারের ঈদগাঁও উপজেলা সম্মিলিত নাগরিক ফোরামের<a href=\"https://www.chattalainfo24.com/chattagram-live-news/\">&nbsp;সাধারন সভা ও নৈশভোজ</a>&nbsp;আয়োজন সম্পন্ন হয়েছে।</p>\r\n\r\n<p>গতকাল সন্ধ্যা ৭টায় ঈদগাহ জাহানারা ইসলাম বালিকা উচ্চ বিদ্যালয়ের মিলনায়তনে ফোরাম সভাপতি রেজাউল করিম সিকদার সভাপতিত্বে,</p>\r\n\r\n<p>যুগ্ন সাধারন সম্পাদক আবছার কামাল,হারুনর রশিদের যৌথ পরিচালনায় স্বাগত বক্তব্য রাখে, সম্মিলিত নাগরিক ফোরাম<a href=\"https://www.chattalainfo24.com/bd-news-today-3/\">&nbsp;সাধারন সম্পাদক কাফি আনোয়ার</a>।&nbsp;</p>', NULL, NULL, 2, 1, '2021-10-21 03:30:22', '2022-02-14 18:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `files` varchar(250) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `image`, `files`, `publish_date`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'আগামী ১ নভেম্বর ২০২১ খ্রি: থেকে ইউনিয়ন পরিষদের সকল স্থাপনার কর আদায় করার সিদ্ধান্ত নেযা হয়। তাই সকলে কর প্রদান করার জন্য নির্দেশক্রমে অনুরোধ করা হয়েছে-চেয়ারম্যান।', 'আগামী-১-নভেম্বর-২০২১-খ্রি-থেকে-ইউনিয়ন-পরিষদের-সকল-স্থাপনার-কর-আদায়-করার-সিদ্ধান্ত-নেযা-হয়।-তাই-সকলে-কর-প্রদান-করার-জন্য-নির্দেশক্রমে-অনুরোধ-করা-হয়েছে-চেয়ারম্যান।', 'news_1635982986.jpg', NULL, NULL, NULL, 'ইউনিয়ন কর আদায়', '৩১/১০/২০২১', 2, 1, '2021-11-03 23:43:06', '2022-02-16 13:00:51'),
(2, 'আগামী ১লা ডিসেম্বর উদ্ভধন হবে', 'আগামী-১লা-ডিসেম্বর-উদ্ভধন-হবে', 'news_1635983005.jpg', NULL, NULL, '<p>আগামী ১লা ডিসেম্বর উদ্ভধন হবে</p>', 'আগামী ১লা ডিসেম্বর উদ্ভধন হবে', 'আগামী ১লা ডিসেম্বর উদ্ভধন হবে', 2, 1, '2021-11-03 23:43:25', '2022-02-16 13:00:52'),
(3, 'আগামী ১ নভেম্বর ২০২১ খ্রি: থেকে ইউনিয়ন পরিষদের সকল জনগণের কর আদায় করার সিদ্ধান্ত নেযা হয়। তাই সকলে কর প্রদান করার জন্য নির্দেশক্রমে অনুেোধ করা হয়েছে-চেয়ারম্যান।', 'আগামী-১-নভেম্বর-২০২১-খ্রি-থেকে-ইউনিয়ন-পরিষদের-সকল-জনগণের-কর-আদায়-করার-সিদ্ধান্ত-নেযা-হয়।-তাই-সকলে-কর-প্রদান-করার-জন্য-নির্দেশক্রমে-অনুেোধ-করা-হয়েছে-চেয়ারম্যান।', 'news_1635982986.jpg', NULL, NULL, NULL, 'কর তথ্য।', '৩১/১০/২০২১', 2, 1, '2021-11-03 23:43:06', '2022-02-16 13:00:52'),
(4, 'সময়মত কর প্রদান করুন। কর প্রদান করে আপনার তথ্য হালনাগাদ রাখুন।', 'সময়মত-কর-প্রদান-করুন।-কর-প্রদান-করে-আপনার-তথ্য-হালনাগাদ-রাখুন।', 'news_1635983005.jpg', NULL, NULL, NULL, '?????? ?? ????', '??/??/??', 2, 1, '2021-11-03 23:43:25', '2022-02-16 13:00:52'),
(5, 'Application Development Services', 'Application-Development-Services', 'news_1644230222.png', 'news_pdf_1645001138.pdf', '2022-02-07', '<p>Web Application Development ServicesWeb Application Development ServicesWeb Application Development Services</p>', 'Web Application Development Services', 'Web Application Development Services', 3, 1, '2022-02-07 10:37:03', '2022-02-16 13:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `notice_type_id` int(11) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `files` varchar(250) DEFAULT NULL,
  `image` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_type_id`, `name`, `slug`, `publish_date`, `files`, `image`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(2, 1, 'সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(3, 1, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(4, 1, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(5, 1, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(6, 1, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(7, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(8, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(9, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(10, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(11, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(12, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(13, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(14, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(15, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35'),
(16, 2, 'ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত', 'ঈদগাঁও-সম্মিলিত-নাগরিক-ফোরামের-জরুরী-সভা-অনুষ্ঠিত', '2022-02-07', 'notice_pdf_1644863675.pdf', 'notice_1644863562.jpg', '<p>ঈদগাঁও সম্মিলিত নাগরিক ফোরামের জরুরী সভা অনুষ্ঠিত</p>', NULL, NULL, NULL, 1, '2022-02-14 18:32:42', '2022-02-14 18:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `notice_types`
--

CREATE TABLE `notice_types` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice_types`
--

INSERT INTO `notice_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'সভার কার্য বিবরণী', 'সভার-কার্য-বিবরণী', '2021-10-29 05:46:38', '2022-02-14 18:28:46'),
(2, 'নোটিশ', 'নো???িশ', '2021-10-29 05:47:09', '2022-02-14 18:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `image`, `details`, `url`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bundesministerium für Bildung und Forschung, Germany', 'partner_1601185620.png', NULL, 'https://www.bmbf.de/', NULL, 1, '2020-09-27 05:47:00', '2020-09-27 05:47:00'),
(2, 'Ministry of Health and Family Welfare, Bangladesh', 'partner_1601185671.png', NULL, 'http://www.mohfw.gov.bd/', NULL, 1, '2020-09-27 05:47:51', '2020-09-27 05:47:51'),
(3, 'Ministry of defance (Military-Medicine), Bangladesh', 'partner_1601185747.png', NULL, 'https://mod.gov.bd/', NULL, 1, '2020-09-27 05:49:07', '2020-09-27 05:49:07'),
(4, 'Ministry of desaster and Relief, Bangladesh', 'partner_1601185807.png', NULL, 'https://modmr.gov.bd/', NULL, 1, '2020-09-27 05:50:07', '2020-09-27 05:50:07'),
(5, 'Johann Wolfgang Goethe-Universität Frankfurt am Main, Germany', 'partner_1601186080.png', NULL, 'https://www.goethe-university-frankfurt.de/en?legacy_request=1', NULL, 1, '2020-09-27 05:54:40', '2020-09-27 05:54:40'),
(6, 'RWTH Aachen University, Germany', 'partner_1601186121.png', NULL, 'https://www.rwth-aachen.de/go/id/a/?lidx=1', NULL, 1, '2020-09-27 05:55:21', '2020-09-27 05:55:21'),
(7, 'Institue für sozial-ökologische forschung', 'partner_1601186195.png', NULL, 'https://www.isoe.de/', NULL, 1, '2020-09-27 05:56:35', '2020-09-27 05:56:35'),
(8, 'VDI Technologiezentrum, Germany', 'partner_1601186231.png', NULL, 'https://www.vditz.de/', NULL, 1, '2020-09-27 05:57:11', '2020-09-27 05:57:11'),
(9, 'Dhaka Medical college and hospital, Bangladesh', 'partner_1601186270.png', NULL, 'http://www.dmc.gov.bd/', NULL, 1, '2020-09-27 05:57:50', '2020-09-27 05:57:50'),
(10, 'Chittagong Medical college and hospital, Bangladesh', 'partner_1601186304.png', NULL, 'https://cmch.gov.bd/', NULL, 1, '2020-09-27 05:58:24', '2020-09-27 05:58:24'),
(11, 'Rajshahi Medical College and hospital, Rajshahi', 'partner_1601186513.png', NULL, 'http://rmc.gov.bd/', NULL, 1, '2020-09-27 06:01:53', '2020-09-27 06:01:53'),
(12, 'CIPRB consulting, Bangladesh', 'partner_1601186681.png', NULL, 'https://www.ciprb.org/', NULL, 1, '2020-09-27 06:04:41', '2020-09-27 06:04:41'),
(13, 'Bangladesh Association for the Advancement of Tropical Medi-cine (BAATM), Bangladesh', 'partner_1601186789.png', NULL, 'https://baatm.org/', NULL, 1, '2020-09-27 06:06:29', '2020-09-27 06:06:29'),
(14, 'Toxicology Society of Bangladesh (TSB), Bangladesh', 'partner_1601187098.png', NULL, 'Toxicology Society of Bangladesh (TSB), Bangladesh', NULL, 1, '2020-09-27 06:11:38', '2020-09-27 06:11:38'),
(15, 'NC IT consulting, Bangladesh', 'partner_1601187290.png', NULL, 'http://www.nc-consulting-enterprises.com/', NULL, 1, '2020-09-27 06:14:50', '2020-09-27 06:14:50'),
(16, 'Global Health Hub Germany', 'partner_1601187419.png', NULL, 'https://www.globalhealthhub.de/', NULL, 1, '2020-09-27 06:16:59', '2020-09-27 06:16:59'),
(17, 'Einsatzmedizin.net, Germany', 'partner_1601187538.png', NULL, 'http://www.einsatzmedizin.net/', NULL, 1, '2020-09-27 06:18:58', '2020-09-27 06:18:58'),
(18, 'Miprolab', 'partner_1601187666.png', NULL, 'https://www.miprolab.com/', NULL, 1, '2020-09-27 06:21:07', '2020-09-27 06:21:07'),
(19, 'Occasione Documentaries', 'partner_1601187790.png', NULL, 'http://www.occasione.de/', NULL, 1, '2020-09-27 06:23:10', '2020-09-27 06:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `update_information`
--

CREATE TABLE `update_information` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `update_information`
--

INSERT INTO `update_information` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Web Application Development Services', 1, '2022-06-23 17:05:25', '2022-06-23 17:05:25'),
(2, 'Samsung Galaxy s3', 1, '2022-06-23 17:05:59', '2022-06-23 17:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `video_title` text CHARACTER SET utf8 DEFAULT NULL,
  `video_ref` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `cover` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_galleries`
--

INSERT INTO `video_galleries` (`id`, `album_id`, `video_title`, `video_ref`, `cover`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, '17th BD Business Award-Pioneer Insurance : Watermark', 'hQq5q5nJgLo', 'video_1611727602.png', 1, '2021-01-27 05:58:39', '2021-01-27 06:06:43'),
(2, 5, 'এজিএম বিশ্লেষণ__pioneer insurance company ltd', 'DXWRqwtNJew', 'video_1611727486.png', 1, '2021-01-27 06:04:46', '2021-01-27 06:06:34'),
(3, 5, 'Pioneer Insurance Company Limited - Fire Insurance Ad', 'rp5jVLD7yZ0', 'video_1611727742.png', 1, '2021-01-27 06:09:03', '2021-01-27 06:09:03'),
(4, 6, '‘বিমা কোম্পানিতে আমার জন্যও যেন একটি চাকরি থাকে’ | PM | Insurance day | News | Ekattor TV', 'ytLWPM4UuUs', 'video_1611727858.png', 1, '2021-01-27 06:10:58', '2021-01-27 06:10:58'),
(5, 7, '17th BD Business Award-Pioneer Insurance : Watermark', 'hQq5q5nJgLo', 'video_1611727602.png', 1, '2021-01-27 05:58:39', '2021-01-27 06:06:43'),
(6, 8, 'এজিএম বিশ্লেষণ__pioneer insurance company ltd', 'DXWRqwtNJew', 'video_1611727486.png', 1, '2021-01-27 06:04:46', '2021-01-27 06:06:34'),
(7, 8, 'বীমা কি, কত প্রকার এবং কেন প্রয়োজন ?', 'Ob8XnieNTXQ', 'video_1613549197.png', 1, '2021-01-27 06:09:03', '2021-02-17 12:06:37'),
(8, 6, '‘বিমা কোম্পানিতে আমার জন্যও যেন একটি চাকরি থাকে’ | PM | Insurance day | News | Ekattor TV', 'ytLWPM4UuUs', 'video_1611727858.png', 1, '2021-01-27 06:10:58', '2021-01-27 06:10:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrations`
--
ALTER TABLE `administrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profiles`
--
ALTER TABLE `company_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_type_id` (`event_type_id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fastivals`
--
ALTER TABLE `fastivals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fastival_registrations`
--
ALTER TABLE `fastival_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixbanners`
--
ALTER TABLE `fixbanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management`
--
ALTER TABLE `management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_types`
--
ALTER TABLE `member_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_type_id` (`notice_type_id`);

--
-- Indexes for table `notice_types`
--
ALTER TABLE `notice_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_information`
--
ALTER TABLE `update_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrations`
--
ALTER TABLE `administrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fastivals`
--
ALTER TABLE `fastivals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `fastival_registrations`
--
ALTER TABLE `fastival_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fixbanners`
--
ALTER TABLE `fixbanners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `member_types`
--
ALTER TABLE `member_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notice_types`
--
ALTER TABLE `notice_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `update_information`
--
ALTER TABLE `update_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_ibfk_1` FOREIGN KEY (`notice_type_id`) REFERENCES `notice_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
