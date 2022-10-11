-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 03:53 AM
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
-- Database: `car_rental`
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
(2, NULL, NULL, NULL, 'Mohammad Wasim', '01922002381', 'wasim47', 'wasim.html@gmail.com', 'System Analyst', NULL, '$2y$10$FKu2fegYtQgp.sM7PEBBbu35XP0h/NDLWU5M8B4qNodNRrukfnoie', '913390', 'fDbtEaYVbqRN5faAaRjerfQu80salDM8TF5QVE8tojNNQFaDvmZ4KGCEEHhg', 0, NULL, NULL, NULL, '2019-03-30 23:40:27', '2019-09-28 04:21:42', '2019-03-31 06:15:01'),
(8, NULL, NULL, NULL, 'Shikkhangon', '01819312570', 'shikkhangon', 'email@copotronic.com', 'MD', NULL, '$2y$10$lXmJ1Zt0nWi/iLJxgOaeb.nC9cV60yvJyYBK2z2fK8ci0sQy9QP5m', 'shikkhangon1234', 'rsD6rMIAXOpczIV5SkHH4uSZKtxp0QqHkkQoM2zASpAQFkZpHTDlt1jUxbnj', 1, NULL, NULL, NULL, '2019-09-23 08:04:09', '2020-01-24 05:42:54', '2019-09-23 10:04:09'),
(9, NULL, NULL, '', 'Muhammad Towfiq Jamal', '01729292828', 'towfiq', 't.jamal@gmail.com', 'Admin', NULL, '$2y$10$Tkc3mVcN1E1YBP6cPgLz9ea/jjPwq1EP4aIIjk7gIwFjD3PS1Ce56', 'tag2000', 'dtn54mPe2XYaS9RhFWDc7SXnWY6QU1VvbZXRgIXxlHcKC7DRPD8olycbpihs', 1, NULL, NULL, NULL, '2020-06-28 02:38:58', '2020-07-04 13:18:00', '2020-06-27 15:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `url`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'MD Wasim', 'advertisement_1656026094.jpg', 1, '2022-06-23 17:14:54', '2022-06-23 17:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `type` varchar(150) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `type`, `name`, `image`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Photo', 'Head office of Pioneer Insurance Company Limited', 'album_1613449521.jpg', NULL, 1, '2021-02-13 09:21:37', '2021-02-16 08:25:22'),
(2, 'Photo', 'Employees of Pioneer Insurance Co. Ltd', 'album_1613454493.jpg', NULL, 1, '2021-02-13 09:22:10', '2021-02-16 09:48:14'),
(3, 'Photo', 'Aviation Training in Singapore', 'album_1613454787.jpg', NULL, 1, '2021-02-13 09:22:24', '2021-02-16 09:53:07'),
(4, 'Photo', 'MOU signing', 'album_1613454976.jpg', NULL, 1, '2021-02-13 09:22:38', '2021-02-16 09:56:17'),
(8, 'Video', 'বীমা কি, কত প্রকার এবং কেন প্রয়োজন ?', 'album_1613549412.png', NULL, 1, '2021-02-13 09:22:38', '2021-02-17 12:10:13'),
(11, 'Photo', 'Mujib Corner', 'album_1613366504.jpg', NULL, 1, '2021-02-15 09:21:46', '2021-02-15 09:21:46'),
(12, 'Photo', '১৫ আগস্ট, জাতীয় শোক দিবস', 'album_1613367139.jpg', NULL, 1, '2021-02-15 09:32:20', '2021-02-15 09:32:20'),
(13, 'Photo', 'বৃক্ষরোপণ', 'album_1613368792.jpg', NULL, 1, '2021-02-15 09:59:53', '2021-02-15 09:59:53'),
(14, 'Photo', 'Chittagong Bima Mela and Rally-2018', 'album_1613455315.jpg', NULL, 1, '2021-02-16 10:01:56', '2021-02-16 13:09:20'),
(15, 'Photo', 'Best Stall Prize Winner', 'album_1613455520.jpg', NULL, 1, '2021-02-16 10:05:21', '2021-02-16 10:05:21'),
(16, 'Photo', '23rd A.G.M', 'album_1613455666.jpg', NULL, 1, '2021-02-16 10:07:47', '2021-02-16 10:07:47'),
(17, 'Photo', 'Claims Payment', 'album_1613455750.jpg', NULL, 1, '2021-02-16 10:09:11', '2021-02-16 10:09:11'),
(18, 'Photo', 'Business Awards', 'album_1613455906.jpg', NULL, 1, '2021-02-16 10:11:47', '2021-02-16 10:11:47'),
(19, 'Photo', 'Branch Conference', 'album_1613456125.jpg', NULL, 1, '2021-02-16 10:15:26', '2021-02-16 10:15:26'),
(20, 'Photo', '24th Virtual A.G.M', 'album_1613456241.jpg', NULL, 1, '2021-02-16 10:17:22', '2021-02-16 10:17:22'),
(21, 'Photo', 'Bima Mela Khulna 2019', 'album_1613538172.jpg', NULL, 1, '2021-02-17 09:02:52', '2021-02-17 09:02:52'),
(22, 'Photo', 'Mujib Borso Doa', 'album_1613539129.jpg', NULL, 1, '2021-02-17 09:18:50', '2021-02-17 09:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `appid` int(11) NOT NULL,
  `jobid` int(11) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `currentDesignation` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dob` varchar(60) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `profession` varchar(200) DEFAULT NULL,
  `cv` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`appid`, `jobid`, `username`, `mobile`, `email`, `currentDesignation`, `country`, `location`, `address`, `dob`, `age`, `nationality`, `profession`, `cv`, `date`) VALUES
(5, 6, 'wasim.winux@gmail.com', '01922002381', 'wasim.html@gmail.com', NULL, NULL, 'Dhaka', NULL, NULL, NULL, 'Bangladesh', 'PHP Developer', NULL, '2017-09-26 08:12:07'),
(6, 6, 'jeasmin', '01677105635', 'rf_saya@yahoo.com', NULL, NULL, 'dhaka', NULL, NULL, NULL, 'bangladeshi', 'designer & developer', NULL, '2017-09-26 09:00:50'),
(9, 6, 'wasim', '01922002381', 'wasim.html@gmail.com', NULL, NULL, 'Dhaka', NULL, NULL, NULL, 'Bangladeshi', 'Software Developer', NULL, '2017-10-06 11:05:36'),
(20, 9, 'MD. RIFAT RAYHAN', '01554038748', 'md.rifatrayhan@yandex.com', NULL, NULL, 'Notunbazar, baridhara', NULL, NULL, NULL, 'Bangladeshi', 'Engineer', 'cv_1520493381.pdf', '2018-03-08 07:16:21'),
(21, 10, 'dfddf343334', 'r343', 'wasim.winux@gmail.com', NULL, NULL, 'dfdfadf', NULL, NULL, NULL, '`dfdf', 'wdfd', '', '2018-07-16 05:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `meta_details` text DEFAULT NULL,
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
(20, NULL, 'Technology', 'banner_1653673999.webp', NULL, NULL, 4, 1, '2021-10-21 03:18:28', '2022-05-27 17:53:19'),
(21, NULL, 'Sand Soft Vision', 'banner_1653673957.png', NULL, NULL, 1, 1, '2021-10-21 03:16:25', '2022-05-27 17:52:37'),
(22, NULL, 'Technology', 'banner_1653673942.png', NULL, NULL, 2, 1, '2021-10-21 03:17:37', '2022-05-27 17:52:22'),
(23, NULL, 'GT Moringa', 'banner_1653673934.png', NULL, NULL, 3, 1, '2021-10-21 03:18:11', '2022-05-27 17:52:15'),
(24, NULL, 'GT Moringa', 'banner_1653673926.png', NULL, NULL, 4, 1, '2021-10-21 03:18:28', '2022-05-27 17:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `meta_details` text DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `name`, `image`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'top-rated-company', 'Top Rated Company', NULL, '<p>With the headquarters in Europe and offices in the USA, Japan and Korea, the Customer is a global leader in image processing with an extensive portfolio of innovative technologies and patents. They offer award-winning products and solutions to enhance user experience in all aspects of digital imaging including processing, compression, storage, printing and display of digital images. Among the company&rsquo;s patented intellectual property there are:</p>\r\n\r\n<ul>\r\n	<li>Embedded software for manufacturers of mobile phones, tablets and digital cameras</li>\r\n	<li>Image quality evaluation software</li>\r\n	<li>Photo enhancement tools for photographers and imaging specialists</li>\r\n</ul>', NULL, NULL, 1, 1, '2021-10-16 11:44:41', '2022-05-27 18:08:28'),
(2, 'best-quality-products', 'Best Quality Products', NULL, '<h2>CUSTOMER</h2>\r\n\r\n<p>The Customer is a multinational pharmaceutical company with operations in over 100 countries, 80+ years of experience and $15+ bln revenue. It provides caregivers and patients with lifesaving oncology, renal and transfusion medical products. With extensive experience in drug research and development, the Customer supports care providers in their mission to deliver quality care across hospitals, clinics, assisted living facilities and patients&rsquo; homes.</p>\r\n\r\n<h2>CHALLENGE</h2>\r\n\r\n<p>The Customer needed a centralized solution to cover generic and non-generic short-living chemotherapy drugs and TPN production (such as cyclophosphamide, 5-FU, cisplatin and more), stock control, client information and financial transactions (direct sales). This solution was to be used not only at the organization, but also at its medical customers&rsquo; facilities.</p>\r\n\r\n<p>The previous Customer&rsquo;s system was outdated, unreliable and costly to maintain. It included two separate &lsquo;dispensing pharmacy&rsquo; and &lsquo;total parenteral nutrition&rsquo; modules, which were to be supported and updated manually. Besides, this system was non-scalable, which impeded the Customer&rsquo;s further business growth. The ordering process was carried out via such outdated media as fax and phone. Moreover, the solution was not in compliance with the newest GAMP4 standards and requirements.</p>\r\n\r\n<p>Therefore, the Customer requested to rebuild the system to make it scalable and easily updateable. The new solution was to align separate modules, create the then missing ordering, invoicing and reporting functionality to deliver the full-cycle system capable of safeguarding manufacture of first-line oncology drugs and TPN medications.</p>\r\n\r\n<h2>SOLUTION</h2>\r\n\r\n<p>The Customer chose a .NET platform for implementation of the new integrated system. The server application and clients interact via .NET web-services. The solution consists of the following modules:</p>\r\n\r\n<h3>Data maintenance</h3>\r\n\r\n<p>This module contains a database storing the system objects such as hospitals, patients, orders, batches, order status and more.</p>\r\n\r\n<h3>Production</h3>\r\n\r\n<p>The production module covers the full process of medicine manufacturing: drug order and recipe entry, entry review, pre-compounding, compounding, post-compounding, labeling, release and delivery. Let&rsquo;s review how this module works.</p>\r\n\r\n<p>For example, the new system is installed at a hospital&rsquo;s dispensing unit. This hospital&rsquo;s physician prescribes an oncology drug for a particular patient. Then this physician or a pharmacist uses the system to enter the order and send it to the factory closest to their location.</p>\r\n\r\n<p>The factory receives the order, and the software automatically performs the validity check to make sure the recipe is adequate, the dose is right and components are relevant. The system can also plan the medication production for the whole course of treatment after one order. It calculates the quantity of doses for, say, a 6-week course and schedules specific dates for each dose preparation and delivery.</p>\r\n\r\n<p>On the pre-compounding stage, the system automatically selects right components for the medicine mixture according to the &lsquo;least waste&#39; policy. The solution also supports printing out of instructions on required components and mixing techniques. Then a dispensing isolator technician uses this instruction for medicine preparation. The post-compounding stage includes another validity check to ensure a high quality of a freshly created drug.</p>\r\n\r\n<p>During the labeling, release and delivery stage, the medicine gets a sticker with the patient&rsquo;s name, his or her location, shelf-life date and storage requirements. Then this drug is handed to a courier and delivered to a patient.</p>\r\n\r\n<h3>Stock control</h3>\r\n\r\n<p>With this module, the Customer&rsquo;s specialists can oversee the flow of products, monitor the inventory of components and timely restock them. It allows the Customer to support uninterrupted production of new medicines and deliver them to patients timely.</p>\r\n\r\n<h3>Invoicing</h3>\r\n\r\n<p>The invoicing module allows the Customer to track the complete medication procurement process. The company can create new invoices, and search them by Client, Project, Invoice Status or Date of Creation. The quick filtering option also allows to check outstanding, overdue and paid invoices in one click.</p>\r\n\r\n<h3>Reporting</h3>\r\n\r\n<p>To keep a detailed history of all transactions, the organization can generate various reports based on KPI, orders, hospital clients, stock, expenditure and other factors of the user&rsquo;s choice. Charts, metrics, trend overviews and periscope reports enable in-depth population health data analytics of current operational and financial processes, as well as foreseeing areas for improvement.</p>\r\n\r\n<h3>Security</h3>\r\n\r\n<p>The security module makes sure every important step is safeguarded and authorized. Apart from login-password authorization, each medicine manufacturing step requires entering a user&rsquo;s PIN.</p>\r\n\r\n<h2>RESULTS</h2>\r\n\r\n<p>ScienceSoft delivered a GAMP4-compliant full-cycle solution to automate generic and non-generic short-living chemotherapy drugs and TPN order and manufacturing for better&nbsp;<a data-tabindex-counter=\"1\" data-tabindex-value=\"none\" href=\"https://www.scnsoft.com/healthcare/chronic-disease-management\" tabindex=\"-1\">chronic disease management</a>. The solution includes data maintenance, production, stock control, invoicing, reporting and security module. The client-server architecture was applied to allow hospitals and other clinical clients to request medicines from the factory closest to their location using the client application.</p>\r\n\r\n<p>The Customer and its clients have been using the delivered system for 10+ years so far</p>', NULL, NULL, 2, 1, '2021-10-16 11:45:09', '2022-05-27 18:08:11'),
(3, 'top-manufacturer', 'Top Manufacturer', NULL, '<h2>CUSTOMER</h2>\r\n\r\n<p>The Customer is a European startup company developing an innovative hotel self-service app to sell to various hotel facilities around the world. The new application is aimed to cover multiple hotel services at once. For example, it allows guests to check in on the way to a hotel, open a locked room door with their mobile device without any keys and plastic cards, quickly and easily manage room, food, and spa services offered by a hotel from any location and more.</p>\r\n\r\n<h2>CHALLENGE</h2>\r\n\r\n<p>The Customer needed to&nbsp;<a data-tabindex-counter=\"1\" data-tabindex-value=\"none\" href=\"https://www.scnsoft.com/services/java-development\" tabindex=\"-1\">create Java backend</a>&nbsp;that would become the basis for their web-based solution as well as Android and iOS mobile apps. The backend had to support complex functionality (check-in, door opening, extra services management, check-out, etc.) as well as enable the application&rsquo;s multitenancy, flexibility, sustainability and impeccable UX.</p>\r\n\r\n<h2>SOLUTION</h2>\r\n\r\n<p>Turning to the microservices-based architecture, ScienceSoft&rsquo;s team managed to ensure quick ongoing Agile development and simplified future scaling and integration processes. The first release of the system consisted of 9 independent services, each being responsible for a set of functions.</p>\r\n\r\n<p>The developers used Spring 5 WebFlux stack of reactive technologies for communication between microservices. This helped them to ensure that the application will stay fast and responsive in the context of multi-userness and high-volume data processing.</p>\r\n\r\n<p>The implementation of the app&rsquo;s functionality and expected multitenancy required a number of future integrations with external applications (e.g., applications of door lock providers, internal hotel management systems, etc.). To reduce time of future integration and necessary efforts, Sciencesoft&rsquo;s team created reliable, secure, and reusable APIs for microservices. As a result, only minor tweaks were needed to introduce new components to the system.</p>\r\n\r\n<p>Future multitenancy was also backed by careful application design that provided for easy scalability and flexibility to address customization needs and ability to extend performance.</p>', NULL, NULL, 3, 1, '2021-10-16 11:45:30', '2022-05-27 18:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `job_title` varchar(250) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `job_requirement` text DEFAULT NULL,
  `edu_requirement` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `publishdate` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `job_title`, `slug`, `job_requirement`, `edu_requirement`, `experience`, `salary`, `job_type`, `publishdate`, `deadline`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineer', 'software-engineer', 'Software Development', 'BSC', NULL, 'Negotiable', 'Full Time', '2022-06-24', '2022-07-07', 1, '2022-06-23 21:49:51', '2022-06-23 21:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  `model` varchar(150) DEFAULT NULL,
  `brand` varchar(150) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `type`, `model`, `brand`, `image`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toyota New Shape Prado', 'Jeep', '2010-2018', 'Toyota', 'car_1656022218.webp', 'Toyota New Shape Prado', 1, '2022-06-23 22:10:18', '2022-06-23 22:10:18'),
(2, 'Toyota Land Cruiser Prado', 'Jeep', '2003-2009', 'Toyota', 'car_1656022346.webp', 'Toyota Land Cruiser Prado', 1, '2022-06-23 22:12:26', '2022-06-23 22:12:26'),
(3, 'Toyota Land Cruiser Prado', 'Jeep', '2003-2009', 'Toyota', 'car_1656022346.webp', 'Toyota Land Cruiser Prado', 1, '2022-06-23 22:13:09', '2022-06-23 22:13:09'),
(4, 'Hyundain Tucson', 'Jeep', '2010-2012', 'Hyundi', 'car_1656022477.webp', 'Hyundain Tucson', 1, '2022-06-23 22:14:37', '2022-06-23 22:14:37'),
(5, 'Honda CRV', 'Carry boy', '2012-2015', 'Honda', 'car_1656022579.jpg', 'Honda CRV', 1, '2022-06-23 22:16:19', '2022-06-23 16:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
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
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `details`, `url`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
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
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_profiles`
--

INSERT INTO `company_profiles` (`id`, `url`, `name`, `slogan`, `address`, `email`, `contact`, `hotline`, `image`, `meta_details`, `position`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(4, '#', 'Zaman Car Rental', 'A complete Transport Solution & All vehicles spare parts suppliers', 'Cox\'s Bazar', 'info@zamancarrental.com', '01922002381', 16245, 'companyprofile_1656016931.png', NULL, 'left', NULL, NULL, 1, '2022-02-16 13:40:12', '2022-06-23 14:42:12');

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
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `content`, `title_bangla`, `content_bangla`, `menu_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'About GT Moringa', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 60%;\">\r\n			<p>GT Moringa is one of the most recognised moringa suppliers in Africa. Dedicated to supplying nothing but the highest quality moringa. We are an award winning, family-owned business. Our moringa is organically grown and lovingly processed on our family farm in Zambia. We have two branches, one in Lusaka and one in Durban, South Africa. With us you are dealing with a fully transparent, ethical source of top quality, nutritious moringa. We supply bulk quantities of moringa to both local and international markets. We have also developed our own retail products that contain our homegrown moringa! From the farm, directly to you &ndash; our valued customer. When you support us, you are supporting a family business who employs over 150 farmers, of which 90% are female. We are committed to transparency, quality, nutritional education, sustainability, social upliftment, and environmental impact.</p>\r\n			</td>\r\n			<td style=\"text-align: right; vertical-align: top;\"><img alt=\"\" src=\"/wasim/sandsoftvision/assets/ckeditor/kcfinder/upload/images/istockphoto-1207043544-612x612.jpg\" style=\"width: 90%;\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, 1, NULL, '2021-10-11 02:10:49', '2022-05-27 17:58:33'),
(2, 'Be a great software company', '<p>Be a great software company Be a great software company Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;</p>\r\n\r\n<p>Be a great software company Be a great software company Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;</p>\r\n\r\n<p>Be a great software company Be a great software company Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;Be a great software company Be a great software company&nbsp;</p>', NULL, NULL, 400, '', '2021-10-22 06:24:48', '2021-10-22 06:24:48'),
(3, 'Contact Us', '<p>House-55, sonargaon janapatha road,<br />\r\nsector- 07, uttara Dhaka<br />\r\nBangladesh<br />\r\n<strong>Phone:</strong>&nbsp;+8801922002381<br />\r\n<strong>Email:</strong>&nbsp;wasim.html@gmail.com</p>', NULL, NULL, 396, NULL, '2021-10-22 14:53:08', '2022-05-27 18:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `designation` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `branch` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `image`, `branch`, `department`, `mobile`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'employee_1634787058.png', NULL, 'IT', NULL, NULL, 1, '2021-10-21 03:30:59', '2021-10-21 03:30:59'),
(2, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'employee_1634787058.png', NULL, 'IT', NULL, NULL, 1, '2021-10-21 03:30:59', '2021-10-21 03:30:59'),
(3, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'employee_1634787058.png', NULL, 'IT', NULL, NULL, 1, '2021-10-21 03:30:59', '2021-10-21 03:30:59'),
(4, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'employee_1634787058.png', NULL, 'IT', NULL, NULL, 1, '2021-10-21 03:30:59', '2021-10-21 03:30:59'),
(5, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'employee_1634787058.png', NULL, 'IT', NULL, NULL, 1, '2021-10-21 03:30:59', '2021-10-21 03:30:59'),
(6, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'employee_1634787058.png', NULL, 'IT', NULL, NULL, 1, '2021-10-21 03:30:59', '2021-10-21 03:30:59'),
(7, 'Mohammad Wasim', 'IT Advisor', 'employee_1634877271.jpg', 'Dhaka', 'IT', '01922002381', 'wasim.html@gmail.com', 1, '2021-10-21 03:30:59', '2021-10-22 04:34:31'),
(8, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'employee_1634787058.png', NULL, 'IT', NULL, NULL, 1, '2021-10-21 03:30:59', '2021-10-21 03:30:59');

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
(140, 22, 'Mujib Borso Doa', 'gallery_1653676801.jpg', NULL, 1, '2021-02-17 09:24:04', '2022-05-27 18:40:02'),
(141, 22, 'GT Moringa', 'gallery_1653676792.jpg', NULL, 1, '2021-02-17 09:24:56', '2022-05-27 18:39:52'),
(142, 22, 'GT Moringa', 'gallery_1653676783.jpg', NULL, 1, '2021-02-17 09:26:05', '2022-05-27 18:39:44'),
(143, 22, 'GT Moringa', 'gallery_1653676756.jpg', NULL, 1, '2021-02-17 09:26:37', '2022-05-27 18:39:17'),
(144, 22, 'Mujib Borso Doa', 'gallery_1653676745.jpg', NULL, 1, '2021-02-17 09:27:04', '2022-05-27 18:39:06'),
(145, 22, 'GT Moringa', 'gallery_1653676736.jpg', NULL, 1, '2021-02-17 09:27:27', '2022-05-27 18:38:57'),
(146, 22, 'GT Moringa', 'gallery_1653676725.jpg', NULL, 1, '2021-02-17 09:28:20', '2022-05-27 18:38:46'),
(147, 22, 'GT Moringa', 'gallery_1653676716.jpg', NULL, 1, '2021-02-17 09:28:57', '2022-05-27 18:38:37'),
(148, 22, 'GT Moringa', 'gallery_1653676716.jpg', NULL, 1, '2021-02-17 09:28:57', '2022-05-27 18:38:37'),
(149, 22, 'GT Moringa', 'gallery_1653676725.jpg', NULL, 1, '2021-02-17 09:28:20', '2022-05-27 18:38:46'),
(150, 22, 'GT Moringa', 'gallery_1653676736.jpg', NULL, 1, '2021-02-17 09:27:27', '2022-05-27 18:38:57'),
(151, 22, 'Mujib Borso Doa', 'gallery_1653676745.jpg', NULL, 1, '2021-02-17 09:27:04', '2022-05-27 18:39:06'),
(152, 22, 'GT Moringa', 'gallery_1653676756.jpg', NULL, 1, '2021-02-17 09:26:37', '2022-05-27 18:39:17'),
(153, 22, 'GT Moringa', 'gallery_1653676783.jpg', NULL, 1, '2021-02-17 09:26:05', '2022-05-27 18:39:44'),
(154, 22, 'GT Moringa', 'gallery_1653676792.jpg', NULL, 1, '2021-02-17 09:24:56', '2022-05-27 18:39:52'),
(155, 22, 'Mujib Borso Doa', 'gallery_1653676801.jpg', NULL, 1, '2021-02-17 09:24:04', '2022-05-27 18:40:02'),
(156, 22, 'Mujib Borso Doa', 'gallery_1653676745.jpg', NULL, 1, '2021-02-17 09:27:04', '2022-05-27 18:39:06'),
(157, 22, 'GT Moringa', 'gallery_1653676716.jpg', NULL, 1, '2021-02-17 09:28:57', '2022-05-27 18:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `idcard_types`
--

CREATE TABLE `idcard_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `idcard_types`
--

INSERT INTO `idcard_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Holding Info', 1, '2022-05-15 14:19:27', '2022-05-15 14:19:27'),
(2, 'User Info', 1, '2022-05-15 14:19:35', '2022-05-15 14:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `appid` int(11) NOT NULL,
  `jobid` int(11) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `currentDesignation` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dob` varchar(60) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `profession` varchar(200) DEFAULT NULL,
  `cv` varchar(200) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'Mohammad Rezoanul Khan', 'CEO  & Founder', 'management_1634787022.jpg', '<p><a href=\"https://www.instagram.com/rezoan_khan?fbclid=IwAR31-zbLcbfI6glcrWZyzrlyqSSJXXHG7g9w6gu013oV_8uY46ZZQJj3QHA\" rel=\"nofollow noopener\" role=\"link\" tabindex=\"0\" target=\"_blank\">Mohammad Rezoanul Khan</a></p>', NULL, NULL, NULL, 1, '2021-10-21 03:30:22', '2021-10-21 03:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `photo`, `fullname`, `contact`, `email`, `designation`, `address`, `password`, `password_hints`, `remember_token`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_1646070937.png', 'Mohammad Wasim', '01922002381', 'wasim.html@gmail.com', 'Software Engineer', 'Avenue-5, Mirpur-11', '$2y$10$rJRzm94gIpB8Ruid9sRIEOC0bhe26treK2dxfBP3jMBYtx6oS6ILu', '913390', NULL, 1, NULL, NULL, NULL, '2021-10-29 13:48:06', '2022-02-28 17:55:37', '2021-10-29 13:48:06'),
(2, 'user_1646070930.png', 'MD Wasim', '017546867060', 'wasim.esoft@gmail.com', 'Team Leade (PHP/Laravel)', 'Avenue-5, Mirpur-11', '$2y$10$uQKTVoUONWy8xU7DoYgQPe0jZo67JSD0aJt2RX.kx7UkAJ0mgijtO', '913390', NULL, 1, NULL, NULL, NULL, '2021-10-29 13:57:26', '2022-02-28 17:55:30', '2021-10-29 13:57:26'),
(3, 'user_1646070919.jpg', 'Ali Haider', '01922002380', 'ali@gmail.com', 'Principal Software Developer', 'Avenue-5, Mirpur-11', '$2y$10$81x.h0k0qsn9rQ.WQxdyG.er37BfhgYMb3Bgh9oTRxLzgYU/K20H6', '111111', NULL, 1, NULL, NULL, NULL, '2021-11-08 11:27:56', '2022-02-28 17:55:19', '2021-11-08 11:27:56'),
(4, 'user_1646070925.png', 'Ibrahim Khalil', '01922002382', 'ibrahim-khalil@gmail.com', 'Software Engineer', 'House 133/34, Avenue - 5, Mirpur - 11, Dhaka 1216', '$2y$10$iT0LlXO2GWH/zxCQYmGPkuBg56RrPFOnDQ37xQ8Ul.3Ol8ZsYuQwi', '111111', NULL, 1, NULL, NULL, NULL, '2022-02-28 17:22:24', '2022-02-28 17:55:25', '2022-02-28 17:22:24');

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
(1, 'About Me', NULL, 'about-me', NULL, NULL, 'Text', 1, '2021-10-24 17:18:14', '2020-09-30 16:02:12'),
(3, 'Our Aim', NULL, 'qualification', 'about-me', NULL, 'Text', 1, '2021-10-24 17:18:54', '2020-09-30 16:03:13'),
(8, 'Products', NULL, 'products', NULL, NULL, 'product', 1, '2021-01-02 06:19:08', '2020-09-30 16:05:47'),
(11, 'Photo Gallery', NULL, 'photo-gallery', 'media', NULL, 'photos', 1, '2020-10-18 02:10:16', '2020-09-30 16:06:09'),
(12, 'Video Gallery', NULL, 'video-gallery', 'media', NULL, 'videos', 1, '2020-10-18 02:10:13', '2020-09-30 16:06:19'),
(18, 'Media', NULL, 'media', NULL, NULL, 'Text', 1, '2020-10-18 02:05:53', '2020-10-18 02:05:53'),
(22, 'Mission', NULL, 'working-experience', 'about-me', NULL, 'Text', 0, '2021-10-24 17:19:08', '2020-10-18 02:08:48'),
(395, 'Career', NULL, 'career', NULL, NULL, 'circular', 1, '2021-02-15 01:24:16', '2021-02-14 20:46:40'),
(396, 'Contact Us', NULL, 'contact-us', NULL, NULL, 'Text', 1, '2021-02-14 20:46:48', '2021-02-14 20:46:48'),
(397, 'Vission', NULL, 'about-my-self', 'about-me', NULL, 'Text', 0, '2021-10-24 17:19:38', '2021-02-15 01:57:42'),
(400, 'Our Goal', NULL, 'our-goal', 'about-us', 'our-mission', 'Text', NULL, '2021-10-22 06:04:39', '2021-10-22 06:04:39');

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
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `notice_type_id` int(11) DEFAULT NULL,
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
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice_type_id`, `name`, `slug`, `image`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'CAD software (engineering, architectural, etc.)', NULL, 'service_1634383307.jpg', '<p>Software for 3D modeling, design concepts visualization and real-life design simulation.</p>', NULL, NULL, 1, 1, '2021-01-17 05:50:57', '2021-10-16 11:21:47'),
(2, 3, 'Utility software', NULL, 'service_1634383376.jpg', '<ul>\r\n	<li>File managers</li>\r\n	<li>Push notification software</li>\r\n	<li>Download managers</li>\r\n	<li>Backup software</li>\r\n	<li>Data loss prevention software</li>\r\n	<li>Antivirus software</li>\r\n	<li>Plugins, add-ins</li>\r\n	<li>Drivers, utilities</li>\r\n</ul>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2021-10-16 11:22:56'),
(3, 3, 'Industrial automation software', NULL, 'service_1634383359.jpg', '<ul>\r\n	<li>Supervisory control and data acquisition (SCADA) software</li>\r\n	<li>Calibration management software</li>\r\n</ul>', NULL, NULL, NULL, 1, '2021-01-17 05:55:51', '2021-10-16 11:22:39'),
(4, 3, 'Financial software', NULL, 'service_1634383343.jpg', '<ul>\r\n	<li>Billing and invoicing software</li>\r\n	<li>General ledger software</li>\r\n	<li>Trading and stock analysis software</li>\r\n</ul>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2021-10-16 11:22:23'),
(5, 2, 'Video surveillance management (VMS) software', NULL, 'service_1634383324.jpg', '<p>Software to manage cameras&rsquo; settings, view camera feeds and set security alerts.</p>', NULL, NULL, 1, 1, '2021-01-17 05:50:57', '2021-10-16 11:22:04'),
(6, 3, 'Product lifecycle management (PLM) software', NULL, 'service_1634383254.jpg', '<p>Software to integrate data and processes related to products across their entire lifecycle, from design and engineering to manufacturing and sales.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2021-10-16 11:20:54'),
(7, 1, 'VoIP software', NULL, 'service_1634383272.jpg', '<p>Software for internet telephony that includes user interface to manage system hardware and pass on messages to the screen.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:55:51', '2021-10-16 11:21:13'),
(8, 1, 'Inventory management software', NULL, 'service_1634383232.jpg', '<p>Software to provide real-time visibility and analytics on inventory levels and costs and automate inventory-related processes.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2021-10-16 11:20:33'),
(10, 1, 'Network configuration management software', NULL, 'service_1634383216.jpg', '<p>Software to maintain a company&rsquo;s systems and servers with change management, compliance auditing and configuration tasks automation functionality.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2021-10-16 11:20:16'),
(11, 1, 'Desktop Application Development Services', NULL, 'service_1634383167.jpg', '<p>Cross-platform desktop app development services focus on building desktop software for Mac, Windows, and Linux, and upgrading it with new functionality. Established as a purely C++ development company over&nbsp;<strong>32 years ago</strong>, today ScienceSoft continues to deliver&nbsp;<strong>high-end desktop software</strong>.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:55:51', '2021-10-16 11:19:27'),
(12, 2, 'SaaS Application Development Services', 'saas-application-development-services', 'service_1634383127.jpg', '<p>SaaS development services cover design, implementation, deployment, and growth of on-demand, web-hosted software. With 32-year experience and partnerships with leading cloud providers, ScienceSoft offers&nbsp;<strong>end-to-end SaaS development&nbsp;</strong><strong>that</strong><strong>&nbsp;</strong>combines&nbsp;<strong>quick delivery</strong>&nbsp;with&nbsp;<strong>code quality</strong>&nbsp;and&nbsp;<strong>stability</strong>.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2021-10-29 06:00:11'),
(13, 2, 'Cloud App Development Services', 'cloud-app-development-services', 'service_1634383077.jpg', '<p>Cloud app development implies building apps that run in the cloud and may leverage cloud features and services offered by cloud vendors.&nbsp;<strong>In cloud computing since 2012</strong>, ScienceSoft quickly and reliably delivers cloud-native and cloud-only apps that&nbsp;<strong>efficiently employ all cloud capabilities</strong>.</p>', NULL, NULL, 1, 1, '2021-01-17 05:50:57', '2021-10-29 06:09:59'),
(14, 1, 'Mobile App Development Services', 'mobile-app-development-services', 'service_1634383010.jpg', '<p>Mobile app development services cover end-to-end development of mobile apps, from business analysis and UI/UX design to mobile application testing and deployment or online market publication.</p>\r\n\r\n<p>Over the past decade, ScienceSoft has successfully delivered over&nbsp;<strong>300 mobile apps</strong>, including&nbsp;<strong>Viber</strong>&nbsp;messenger, Android and iOS banking solutions that were highly praised by&nbsp;<strong>Deloitte</strong>, and an IPTV app empowering&nbsp;<strong>MTV</strong>,&nbsp;<strong>BBC</strong>,&nbsp;<strong>FOX Entertainment</strong>,&nbsp;<strong>T-Mobile&nbsp;</strong>and<strong>&nbsp;Orange</strong>.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2021-10-29 06:06:41'),
(15, 2, 'Software Development Services', 'software-development-services', 'service_1634382937.jpg', '<p><strong>Software development services&nbsp;</strong>are<strong>&nbsp;</strong>aimed at<strong>&nbsp;</strong>designing, engineering, supporting, and evolving various software types. Serving&nbsp;<strong>mid &amp; large enterprises</strong>&nbsp;and&nbsp;<strong>software product companies</strong>&nbsp;since 1989, ScienceSoft develops quality software for retail, banking, manufacturing, healthcare, and other industries.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:55:51', '2021-10-29 06:04:34'),
(16, 2, 'Web Application Development Services', 'web-application-development-services', 'service_1634382819.jpg', '<p>Web Application Development Services</p>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2021-10-29 05:59:54'),
(17, 3, 'Utility software', NULL, 'service_1634383376.jpg', '<ul>\r\n	<li>File managers</li>\r\n	<li>Push notification software</li>\r\n	<li>Download managers</li>\r\n	<li>Backup software</li>\r\n	<li>Data loss prevention software</li>\r\n	<li>Antivirus software</li>\r\n	<li>Plugins, add-ins</li>\r\n	<li>Drivers, utilities</li>\r\n</ul>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2021-10-16 11:22:56'),
(18, 3, 'Product lifecycle management (PLM) software', NULL, 'service_1634383254.jpg', '<p>Software to integrate data and processes related to products across their entire lifecycle, from design and engineering to manufacturing and sales.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2021-10-16 11:20:54'),
(19, 1, 'Desktop Application Development Services', NULL, 'service_1634383167.jpg', '<p>Cross-platform desktop app development services focus on building desktop software for Mac, Windows, and Linux, and upgrading it with new functionality. Established as a purely C++ development company over&nbsp;<strong>32 years ago</strong>, today ScienceSoft continues to deliver&nbsp;<strong>high-end desktop software</strong>.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:55:51', '2021-10-16 11:19:27'),
(20, 1, 'Mobile App Development Services', 'mobile-app-development-services', 'service_1634383010.jpg', '<p>Mobile app development services cover end-to-end development of mobile apps, from business analysis and UI/UX design to mobile application testing and deployment or online market publication.</p>\r\n\r\n<p>Over the past decade, ScienceSoft has successfully delivered over&nbsp;<strong>300 mobile apps</strong>, including&nbsp;<strong>Viber</strong>&nbsp;messenger, Android and iOS banking solutions that were highly praised by&nbsp;<strong>Deloitte</strong>, and an IPTV app empowering&nbsp;<strong>MTV</strong>,&nbsp;<strong>BBC</strong>,&nbsp;<strong>FOX Entertainment</strong>,&nbsp;<strong>T-Mobile&nbsp;</strong>and<strong>&nbsp;Orange</strong>.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2021-10-29 06:06:41'),
(21, 2, 'Software Development Services', 'software-development-services', 'service_1634382937.jpg', '<p><strong>Software development services&nbsp;</strong>are<strong>&nbsp;</strong>aimed at<strong>&nbsp;</strong>designing, engineering, supporting, and evolving various software types. Serving&nbsp;<strong>mid &amp; large enterprises</strong>&nbsp;and&nbsp;<strong>software product companies</strong>&nbsp;since 1989, ScienceSoft develops quality software for retail, banking, manufacturing, healthcare, and other industries.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:55:51', '2021-10-29 06:04:34'),
(22, 2, 'Web Application Development Services', 'web-application-development-services', 'service_1634382819.jpg', '<p>Web Application Development Services</p>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2021-10-29 05:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
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
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `details`, `url`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
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
-- Table structure for table `protfolios`
--

CREATE TABLE `protfolios` (
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
-- Dumping data for table `protfolios`
--

INSERT INTO `protfolios` (`id`, `name`, `image`, `details`, `url`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eishops', 'protfolio_1645963715.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:22:05', '2022-02-27 12:08:36'),
(2, 'Web Application Development Services', 'protfolio_1645963646.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:24:58', '2022-02-27 12:07:26'),
(3, 'Web Application Development Services', 'protfolio_1645963628.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:25:09', '2022-02-27 12:07:09'),
(4, 'Web Application Development Services', 'protfolio_1645963618.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:25:23', '2022-02-27 12:06:59'),
(5, 'Mobile App Development Services', 'protfolio_1645963608.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:43:08', '2022-02-27 12:06:49'),
(6, 'Inventory management software', 'protfolio_1645963599.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:43:21', '2022-02-27 12:06:40'),
(7, 'Human Resources Management System (HRMS)', 'protfolio_1645963590.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:44:00', '2022-02-27 12:06:31'),
(8, 'Cloud App Development Services', 'protfolio_1645963579.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:44:32', '2022-02-27 12:06:20'),
(9, 'Retail Store', 'protfolio_1645963566.png', NULL, 'https://eishops.com/', NULL, 1, '2021-10-22 04:44:47', '2022-02-27 12:06:06'),
(10, 'Online News Portal', 'protfolio_1645963747.png', NULL, NULL, NULL, 1, '2022-02-27 12:09:07', '2022-02-27 12:09:07'),
(11, 'University Routine', 'protfolio_1645963764.png', NULL, NULL, NULL, 1, '2022-02-27 12:09:24', '2022-02-27 12:09:24'),
(12, 'University Routine', 'protfolio_1645963776.png', NULL, NULL, NULL, 1, '2022-02-27 12:09:37', '2022-02-27 12:09:37'),
(13, 'Online Job Portal', 'protfolio_1645963791.png', NULL, NULL, NULL, 1, '2022-02-27 12:09:52', '2022-02-27 12:09:52'),
(14, 'School Management Software', 'protfolio_1645963809.png', NULL, NULL, NULL, 1, '2022-02-27 12:10:09', '2022-02-27 12:10:09'),
(15, 'Doctors BD', 'protfolio_1645963819.png', NULL, NULL, NULL, 1, '2022-02-27 12:10:20', '2022-02-27 12:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `details` longtext CHARACTER SET utf8 DEFAULT NULL,
  `meta_details` text CHARACTER SET utf8 DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `image`, `details`, `meta_details`, `keywords`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Global Manufacturing', 'service_1653675468.jpg', '<p><em>Lorem ipsum</em>&nbsp;is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>', NULL, NULL, 1, 1, '2021-01-17 05:50:57', '2022-05-27 18:19:10'),
(14, 'GT Moringa', 'service_1653675427.jpg', '<p><em>Lorem ipsum</em>&nbsp;is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:53:10', '2022-05-27 18:19:03'),
(15, 'Product Manufacture', 'service_1653675362.jpg', '<p><em>Lorem ipsum</em>&nbsp;is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:55:51', '2022-05-27 18:18:58'),
(16, 'Moringa Products', 'service_1653675340.jpg', '<p><em>Lorem ipsum</em>&nbsp;is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>', NULL, NULL, NULL, 1, '2021-01-17 05:56:15', '2022-05-27 18:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `subcribtions`
--

CREATE TABLE `subcribtions` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcribtions`
--

INSERT INTO `subcribtions` (`id`, `email`, `date`) VALUES
(1, 'wasim.html@gmail.com', '2015-12-30'),
(2, 'wasim.html@gmail.com', '2015-12-30'),
(3, 'wasim.1234@gmail.com', '2016-05-15'),
(4, 'emamhossainshovon@gmail.com', '2017-01-25'),
(5, 'mi934693@gmail.com', '2017-06-15'),
(6, 'gwyludnzmv', '2018-01-25'),
(7, 'Mdrubelkhan723@gmail.com', '2018-02-18'),
(8, 'butik slower kamerz', '2018-03-14'),
(9, 'KWQS', '2018-03-16'),
(10, 'KWQS\')..,\",,,)', '2018-03-16'),
(11, 'KWQS\'PtyeeT<\'\">ksidix', '2018-03-16'),
(12, '\'\"\\\'\\\">DEADBEEF', '2018-12-31'),
(13, '\" AND 1=2 UNION SELECT 1337--', '2018-12-31'),
(14, '\' AND 1=2 UNION SELECT 1337--', '2018-12-31'),
(15, 'AND 1=2 UNION SELECT 1337--', '2018-12-31'),
(16, '\" AND 1=2 UNION SELECT 1337--', '2018-12-31'),
(17, '\' AND 1=2 UNION SELECT 1337--', '2018-12-31'),
(18, 'MTU1MDE1MTI2Ng\'\"`', '2019-02-14'),
(19, '1', '2019-03-15'),
(20, '1)', '2019-03-15'),
(21, '1\"\'`--', '2019-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `union_information`
--

CREATE TABLE `union_information` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `village` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `holding_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `wordno` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `remark` text CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `profession` varchar(250) DEFAULT NULL,
  `qualification` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `union_information`
--

INSERT INTO `union_information` (`id`, `member_id`, `name`, `village`, `area`, `holding_no`, `wordno`, `remark`, `mobile`, `email`, `address`, `profession`, `qualification`, `created_at`, `updated_at`) VALUES
(1, 1, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '১', NULL, 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-10-30 17:45:20'),
(2, 1, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '১', NULL, 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-10-30 17:45:20'),
(3, 1, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '5', NULL, 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-11-04 20:12:12'),
(4, 2, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '১', NULL, 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-10-30 17:45:20'),
(5, 1, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '১', NULL, 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-10-30 17:45:20'),
(6, 2, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '১', NULL, 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-10-30 17:45:20'),
(7, 2, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '১', '৬', 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-11-08 06:14:56'),
(8, 1, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'প্রোগ্রামার', '১', NULL, 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2021-10-29 19:03:40', '2021-10-30 17:45:20'),
(9, 1, 'Mohammad Wasim', 'Mirpur', 'Software engineer', '১', '৫', 'Budget information', NULL, NULL, NULL, NULL, NULL, '2021-11-03 21:49:22', '2021-11-08 05:56:47'),
(10, 2, 'ইব্রাহিম খালিল', 'মিরপুর', 'ইঞ্জিনিয়ার', '৪৫', '5', 'বাৎসরিক কার্য কৃত কর গ্রহন করা হল', NULL, NULL, NULL, NULL, NULL, '2021-11-04 02:31:06', '2021-11-08 05:55:10'),
(11, 2, 'Mohammad Wasim', 'মিরপুর ১১', 'প্রোগ্রামার', '৪৫', '৫', 'বাৎসরিক কার্য কৃত কর গ্রহন করা হল', NULL, NULL, NULL, NULL, NULL, '2021-11-08 07:40:24', '2021-11-08 07:40:24'),
(15, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(16, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(17, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(18, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(19, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(20, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(21, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(22, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(23, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(24, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(25, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(26, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(27, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(28, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(29, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(30, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(31, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(32, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(33, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(34, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(35, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(36, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(37, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(38, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(39, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(40, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(41, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(42, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(43, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(44, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(45, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(46, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(47, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(48, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(49, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(50, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(51, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(52, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(53, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(54, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(55, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(56, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(57, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(58, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(59, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(60, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(61, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(62, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:27:00', '2021-11-08 11:27:00'),
(63, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(64, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(65, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(66, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(67, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(68, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(69, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(70, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(71, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(72, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(73, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(74, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(75, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(76, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(77, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(78, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(79, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(80, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(81, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(82, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(83, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(84, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(85, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(86, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(87, 2, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(88, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(89, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(90, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(91, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(92, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(93, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(94, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(95, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(96, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(97, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(98, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(99, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(100, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(101, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(102, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(103, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(104, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(105, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(106, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(107, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(108, 3, 'HMD Wasim', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(109, 3, 'মোঃ ওয়াসিম', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(110, 3, 'মোঃ ওয়াসিম', 'Mirpur', 'Software Engineer', '45', '12', 'Yax Information Updated', NULL, NULL, NULL, NULL, NULL, '2021-11-08 11:28:15', '2021-11-08 11:28:15'),
(112, 4, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'Mirpur', '50', '৬', 'বাৎসরিক কার্য কৃত কর', NULL, NULL, NULL, NULL, NULL, '2022-02-28 18:08:48', '2022-02-28 18:08:48'),
(113, 2, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'Mirpur', '৪৫', '৬', 'Budget information', NULL, NULL, NULL, NULL, NULL, '2022-02-28 18:13:00', '2022-02-28 18:13:24'),
(114, 4, 'মোঃ ওয়াসিম', 'মিরপুর ১১', 'Mirpur', '45', '14', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-01 05:28:37', '2022-03-01 05:28:37');

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
-- Table structure for table `usefulllinks`
--

CREATE TABLE `usefulllinks` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `links` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usefulllinks`
--

INSERT INTO `usefulllinks` (`id`, `name`, `links`, `created_at`, `updated_at`) VALUES
(1, 'Education Board', 'http://www.moedu.gov.bd/', '2021-01-17 05:01:35', '2021-02-15 01:53:46'),
(2, 'Teachers', 'https://www.teachers.gov.bd/', '2020-06-29 15:59:03', '2021-02-15 01:53:22'),
(3, 'Online Education', 'http://www.ebook.gov.bd/', '2020-06-29 15:59:25', '2021-02-15 01:53:04'),
(4, 'Government of Bangladesh', 'https://bangladesh.gov.bd', '2020-06-29 16:00:06', '2021-02-15 01:52:00');

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
(1, 5, '17th BD Business Award-Pioneer Insurance : Watermark', 'hQq5q5nJgLo', 'video_1611727602.png', NULL, '2021-01-27 05:58:39', '2021-01-27 06:06:43'),
(2, 5, 'এজিএম বিশ্লেষণ__pioneer insurance company ltd', 'DXWRqwtNJew', 'video_1611727486.png', NULL, '2021-01-27 06:04:46', '2021-01-27 06:06:34'),
(3, 5, 'Pioneer Insurance Company Limited - Fire Insurance Ad', 'rp5jVLD7yZ0', 'video_1611727742.png', NULL, '2021-01-27 06:09:03', '2021-01-27 06:09:03'),
(4, 6, '‘বিমা কোম্পানিতে আমার জন্যও যেন একটি চাকরি থাকে’ | PM | Insurance day | News | Ekattor TV', 'ytLWPM4UuUs', 'video_1611727858.png', NULL, '2021-01-27 06:10:58', '2021-01-27 06:10:58'),
(5, 7, '17th BD Business Award-Pioneer Insurance : Watermark', 'hQq5q5nJgLo', 'video_1611727602.png', NULL, '2021-01-27 05:58:39', '2021-01-27 06:06:43'),
(6, 8, 'এজিএম বিশ্লেষণ__pioneer insurance company ltd', 'DXWRqwtNJew', 'video_1611727486.png', NULL, '2021-01-27 06:04:46', '2021-01-27 06:06:34'),
(7, 8, 'বীমা কি, কত প্রকার এবং কেন প্রয়োজন ?', 'Ob8XnieNTXQ', 'video_1613549197.png', NULL, '2021-01-27 06:09:03', '2021-02-17 12:06:37'),
(8, 6, '‘বিমা কোম্পানিতে আমার জন্যও যেন একটি চাকরি থাকে’ | PM | Insurance day | News | Ekattor TV', 'ytLWPM4UuUs', 'video_1611727858.png', NULL, '2021-01-27 06:10:58', '2021-01-27 06:10:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrations`
--
ALTER TABLE `administrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`appid`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
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
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fastival_registrations`
--
ALTER TABLE `fastival_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idcard_types`
--
ALTER TABLE `idcard_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`appid`);

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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_type_id` (`notice_type_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protfolios`
--
ALTER TABLE `protfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcribtions`
--
ALTER TABLE `subcribtions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `union_information`
--
ALTER TABLE `union_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_information`
--
ALTER TABLE `update_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usefulllinks`
--
ALTER TABLE `usefulllinks`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `company_profiles`
--
ALTER TABLE `company_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fastival_registrations`
--
ALTER TABLE `fastival_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `idcard_types`
--
ALTER TABLE `idcard_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management`
--
ALTER TABLE `management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `protfolios`
--
ALTER TABLE `protfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subcribtions`
--
ALTER TABLE `subcribtions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `union_information`
--
ALTER TABLE `union_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `update_information`
--
ALTER TABLE `update_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usefulllinks`
--
ALTER TABLE `usefulllinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
