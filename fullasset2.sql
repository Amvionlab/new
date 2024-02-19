-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 07:23 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullasset2`
--

-- --------------------------------------------------------

--
-- Table structure for table `link_asset_details`
--

CREATE TABLE `link_asset_details` (
  `laid` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `idtype` varchar(100) NOT NULL,
  `link_date` datetime NOT NULL,
  `like_by` int(11) NOT NULL,
  `unlink_date` datetime DEFAULT NULL,
  `unlink_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locationgroups`
--

CREATE TABLE `locationgroups` (
  `id` int(11) NOT NULL,
  `fromip` varchar(255) DEFAULT NULL,
  `toip` varchar(255) DEFAULT NULL,
  `locations_id` int(11) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locationgroups`
--

INSERT INTO `locationgroups` (`id`, `fromip`, `toip`, `locations_id`, `comment`, `date_mod`, `date_creation`) VALUES
(1, '10.104.20.1', '10.104.20.255', 1, NULL, '2019-11-19 17:43:06', '2019-11-06 13:09:57'),
(2, '172.16.23.1', '172.16.23.255', 60, NULL, '2020-03-09 17:30:06', '2019-11-06 13:10:12'),
(3, '10.104.17.1', '10.104.17.255', 3, NULL, '2019-11-06 13:10:27', '2019-11-06 13:10:27'),
(4, '10.104.26.1', '10.104.26.255', 4, NULL, '2019-11-06 13:10:45', '2019-11-06 13:10:45'),
(5, '10.104.33.1', '10.104.33.255', 5, NULL, '2019-11-06 13:11:02', '2019-11-06 13:11:02'),
(6, '10.104.45.1', '10.104.45.255', 6, NULL, '2019-11-06 13:12:25', '2019-11-06 13:12:25'),
(7, '10.104.46.1', '10.104.46.255', 7, NULL, '2019-11-06 13:15:01', '2019-11-06 13:15:01'),
(8, '10.104.43.1', '10.104.43.255', 8, NULL, '2019-11-06 13:15:22', '2019-11-06 13:15:22'),
(9, '10.104.21.1', '10.104.21.255', 9, NULL, '2019-11-06 13:17:06', '2019-11-06 13:17:06'),
(10, '10.104.22.1', '10.104.22.255', 10, NULL, '2019-11-11 12:02:21', '2019-11-06 13:17:22'),
(11, '10.104.55.1', '10.104.55.255', 11, NULL, '2019-11-06 13:17:38', '2019-11-06 13:17:38'),
(12, '10.112.23.1', '10.112.23.255', 12, NULL, '2019-11-06 13:18:02', '2019-11-06 13:18:02'),
(13, '10.104.31.1', '10.104.31.255', 13, NULL, '2019-11-06 13:18:44', '2019-11-06 13:18:28'),
(14, '10.104.30.1', '10.104.30.255', 14, NULL, '2019-11-06 13:18:59', '2019-11-06 13:18:59'),
(15, '10.104.32.1', '10.104.32.255', 15, NULL, '2019-11-06 13:19:20', '2019-11-06 13:19:20'),
(16, '10.104.54.1', '10.104.54.255', 16, NULL, '2019-11-06 13:19:39', '2019-11-06 13:19:39'),
(17, '10.104.44.1', '10.104.44.255', 17, NULL, '2019-11-06 13:20:01', '2019-11-06 13:20:01'),
(18, '10.104.56.1', '10.104.56.255', 18, NULL, '2019-11-06 13:20:23', '2019-11-06 13:20:23'),
(19, '10.104.29.1', '10.104.29.255', 19, NULL, '2019-11-06 13:20:39', '2019-11-06 13:20:39'),
(20, '10.104.47.1', '10.104.47.255', 20, NULL, '2019-11-06 13:24:14', '2019-11-06 13:20:55'),
(21, '10.104.41.1', '10.104.41.255', 21, NULL, '2019-11-06 13:21:10', '2019-11-06 13:21:10'),
(22, '10.104.58.1', '10.104.58.255', 22, NULL, '2019-11-06 13:24:01', '2019-11-06 13:24:01'),
(23, '10.104.51.1', '10.104.51.255', 23, NULL, '2019-11-06 13:24:31', '2019-11-06 13:24:31'),
(24, '10.104.37.1', '10.104.37.255', 24, NULL, '2019-11-06 13:24:47', '2019-11-06 13:24:47'),
(25, '10.104.38.1', '10.104.38.255', 25, NULL, '2019-11-06 13:25:06', '2019-11-06 13:25:06'),
(26, '10.104.39.1', '10.104.39.255', 26, NULL, '2019-11-06 13:25:32', '2019-11-06 13:25:32'),
(27, '10.104.42.1', '10.104.42.255', 27, NULL, '2019-11-06 13:25:47', '2019-11-06 13:25:47'),
(28, '10.104.28.1', '10.104.28.255', 28, NULL, '2019-11-06 13:26:11', '2019-11-06 13:26:11'),
(29, '10.104.53.1', '10.104.53.255', 29, NULL, '2019-11-06 13:26:26', '2019-11-06 13:26:26'),
(30, '10.104.36.1', '10.104.36.255', 30, NULL, '2019-11-06 13:26:39', '2019-11-06 13:26:39'),
(31, '10.104.52.1', '10.104.52.255', 31, NULL, '2019-11-06 13:28:00', '2019-11-06 13:28:00'),
(32, '10.104.50.1', '10.104.50.255', 32, NULL, '2019-11-06 13:28:17', '2019-11-06 13:28:17'),
(33, '10.104.48.1', '10.104.48.255', 33, NULL, '2019-11-06 13:28:31', '2019-11-06 13:28:31'),
(34, '10.104.59.1', '10.104.59.255', 34, NULL, '2019-11-06 13:28:48', '2019-11-06 13:28:48'),
(35, '10.104.60.1', '10.104.60.255', 35, NULL, '2019-11-06 13:29:03', '2019-11-06 13:29:03'),
(36, '10.104.49.1', '10.104.49.255', 36, NULL, '2019-11-06 13:29:22', '2019-11-06 13:29:22'),
(37, '10.104.35.1', '10.104.35.255', 37, NULL, '2019-11-06 13:35:57', '2019-11-06 13:35:57'),
(38, '10.104.61.1', '10.104.61.255', 38, NULL, '2019-11-06 13:36:14', '2019-11-06 13:36:14'),
(39, '10.104.62.1', '10.104.62.255', 39, NULL, '2019-11-06 13:36:37', '2019-11-06 13:36:37'),
(40, '10.104.68.1', '10.104.68.255', 40, NULL, '2019-11-06 13:36:53', '2019-11-06 13:36:53'),
(41, '10.104.69.1', '10.104.69.255', 41, NULL, '2019-11-06 13:37:06', '2019-11-06 13:37:06'),
(42, '10.104.70.1', '10.104.70.255', 42, NULL, '2019-11-06 13:37:21', '2019-11-06 13:37:21'),
(43, '10.104.71.1', '10.104.71.255', 43, NULL, '2019-11-06 13:37:45', '2019-11-06 13:37:45'),
(44, '10.104.72.1', '10.104.72.255', 44, NULL, '2019-11-06 13:37:57', '2019-11-06 13:37:57'),
(45, '10.104.73.1', '10.104.73.255', 45, NULL, '2019-11-06 13:38:08', '2019-11-06 13:38:08'),
(46, '10.104.74.1', '10.104.74.255', 46, NULL, '2019-11-06 13:38:23', '2019-11-06 13:38:23'),
(47, '10.104.75.1', '10.104.75.255', 47, NULL, '2019-11-06 13:38:37', '2019-11-06 13:38:37'),
(48, '10.104.76.1', '10.104.76.255', 48, NULL, '2019-11-06 13:38:48', '2019-11-06 13:38:48'),
(49, '10.104.77.1', '10.104.77.255', 49, NULL, '2019-11-06 13:39:00', '2019-11-06 13:39:00'),
(50, '10.104.78.1', '10.104.78.255', 50, NULL, '2019-11-06 13:39:13', '2019-11-06 13:39:13'),
(51, '10.104.79.1', '10.104.79.255', 51, NULL, '2019-11-06 13:39:25', '2019-11-06 13:39:25'),
(52, '10.104.81.1', '10.104.81.255', 52, NULL, '2019-11-06 13:39:38', '2019-11-06 13:39:38'),
(53, '10.104.80.1', '10.104.80.255', 53, NULL, '2019-11-06 13:44:03', '2019-11-06 13:44:03'),
(54, '10.104.87.1', '10.104.87.255', 54, NULL, '2019-11-06 13:44:21', '2019-11-06 13:44:21'),
(55, '10.104.88.1', '10.104.88.255', 55, NULL, '2019-11-06 13:44:41', '2019-11-06 13:44:41'),
(56, '10.104.89.1', '10.104.89.255', 56, NULL, '2019-11-06 13:44:54', '2019-11-06 13:44:54'),
(57, '10.114.10.1', '10.114.10.255', 57, NULL, '2019-11-06 13:45:17', '2019-11-06 13:45:17'),
(58, '10.114.11.1', '10.114.11.255', 57, NULL, '2019-11-06 13:45:37', '2019-11-06 13:45:37'),
(59, '192.168.29.1', '192.168.29.255', 58, NULL, '2019-11-11 11:48:16', '2019-11-11 11:48:16'),
(60, '10.114.203.1', '10.114.203.255', 57, NULL, '2019-11-11 12:07:27', '2019-11-11 12:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_type_id` int(11) DEFAULT 1,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `lid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `company_type_id`, `comment`, `date_mod`, `date_creation`, `lid`) VALUES
(1, 'COIMBATORE HANUDEV', 2, NULL, '2020-07-06 13:11:49', '2019-11-06 13:01:30', 3),
(2, 'CHENNAI', 2, NULL, '2020-07-06 13:11:13', '2019-11-11 11:48:01', 2),
(3, 'COIMBATORE TIDEL PARK', 2, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `location_type`
--

CREATE TABLE `location_type` (
  `loctypeid` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `location_type`
--

INSERT INTO `location_type` (`loctypeid`, `name`, `isactive`) VALUES
(1, 'OFFICE', 1),
(2, 'CTI', 1),
(3, 'VENDOR', 1),
(4, 'CTI-COMMON', 1),
(5, 'WFH', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logtypes`
--

CREATE TABLE `logtypes` (
  `logtypeid` int(11) NOT NULL,
  `logtype` varchar(20) NOT NULL,
  `logcolor` varchar(15) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_error_log`
--

CREATE TABLE `mail_error_log` (
  `id` int(11) NOT NULL,
  `error` varchar(500) DEFAULT NULL,
  `error2` varchar(500) DEFAULT NULL,
  `createdOn` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_menus`
--

CREATE TABLE `main_menus` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_mod`
--

CREATE TABLE `main_mod` (
  `mod_id` int(11) NOT NULL,
  `mod_name` varchar(30) NOT NULL,
  `heading_mod_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1-Active,0-Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `computer` tinyint(1) NOT NULL DEFAULT 0,
  `processor` tinyint(1) NOT NULL DEFAULT 0,
  `physical_memory` tinyint(1) NOT NULL DEFAULT 0,
  `hard_driver` tinyint(1) NOT NULL DEFAULT 0,
  `devicenetwork_cards` tinyint(1) NOT NULL DEFAULT 0,
  `device_drivers` tinyint(1) NOT NULL DEFAULT 0,
  `device_controls` tinyint(1) NOT NULL DEFAULT 0,
  `network_ports` tinyint(1) NOT NULL DEFAULT 0,
  `device_soundcards` tinyint(1) NOT NULL DEFAULT 0,
  `device_graphiccards` tinyint(1) NOT NULL DEFAULT 0,
  `computer_antiviruses` tinyint(1) NOT NULL DEFAULT 0,
  `monitor` tinyint(1) NOT NULL DEFAULT 0,
  `printer` tinyint(1) NOT NULL DEFAULT 0,
  `peripheral` tinyint(1) NOT NULL DEFAULT 0,
  `networkequipment` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `comment`, `date_mod`, `date_creation`, `computer`, `processor`, `physical_memory`, `hard_driver`, `devicenetwork_cards`, `device_drivers`, `device_controls`, `network_ports`, `device_soundcards`, `device_graphiccards`, `computer_antiviruses`, `monitor`, `printer`, `peripheral`, `networkequipment`) VALUES
(1, 'HP', NULL, '2019-11-11 15:08:38', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Intel', NULL, NULL, NULL, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Intel Corporation', NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(4, '(Standard disk drives)', NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Realtek Semiconductor Co., Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Intel(R) Corporation', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(7, 'Conexant', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(8, 'Microsoft Corporation', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(9, 'Validity Sensors, Inc.', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(10, 'Quick Heal Technologies Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(11, 'Hewlett Packard', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(12, 'Hewlett-Packard', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '(Standard CD-ROM drives)', NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'NVIDIA Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Integrated Technology Express, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0),
(16, 'NVIDIA', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(17, 'Realtek', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(18, 'HPN', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(19, 'Texas Instruments, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(20, 'Synaptics', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(21, 'Wheatstone Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(22, 'Focusrite Audio Engineering Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(23, 'Waves Audio Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(24, 'Focusrite-Novation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(25, 'AMI', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 'Microsoft', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(27, 'Samsung Electric Company', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(28, 'Phoenix Technologies, LTD', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 'Broadcom Inc. and subsidiaries', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 'Seqrite', NULL, '2019-11-11 15:08:51', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(31, 'ViewSonic Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(32, 'WsAudio_Device', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(33, 'American Megatrends Inc.', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 'To Be Filled By O.E.M.', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'VIA Technologies, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(36, 'Canon, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(37, 'Hewlett-Packard Company', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 'Matrox Electronics Systems Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 'Apple, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(40, 'PLX Technology, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 'Seqrite Endpoint Security', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(42, 'HCL Peripherals', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(43, 'Digigram', NULL, '2019-11-22 12:14:33', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(44, 'Dell Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(45, 'Samsung Electronics Co., Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(46, 'AnvSoft Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(47, 'HP, Inc', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(48, 'Blackmagic Design', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0),
(49, 'HPE', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 'Adaptec', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 'Realtek Semiconductor Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0),
(52, 'Yamaha Corporation.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(53, 'Qualcomm Atheros', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 'JMicron Technology Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 'IDT', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(56, 'Qualcomm Atheros Communications', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(57, 'Marvell Technology Group Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 'Chicony Electronics Co., Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(59, 'Xilinx Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 'RME', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(61, 'M-Audio', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(62, 'Athena Smartcard Solutions Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(63, 'VIA Technologies Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 'C-Media Electronics Inc', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 'ASMedia Technology Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0),
(66, '(Generic USB Audio)', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(67, 'C-Media', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(68, 'D-Link System Inc', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 'Axia - Telos Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(70, 'Lite-On Technology Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(71, 'Ralink corp.', NULL, NULL, NULL, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 'Primax Electronics, Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(73, 'Sony Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(74, 'Creative Labs', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 'Creative Technology Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(76, 'Yamaha Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 'Advanced Micro Devices, Inc. [AMD/ATI]', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 'Yamaha', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(79, 'ICS Advent', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(80, 'Analog Devices', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(81, 'Focusrite Audio Engineering, Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(82, 'VXL', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 'LSI Logic / Symbios Logic', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 'Texas Instruments', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 'Western Digital Technologies, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(86, 'ASIX Electronics Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(87, 'Seagate RSS LLC', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(88, 'HCL Infosystems Limited', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 'ASUSTek COMPUTER INC.', NULL, '2019-11-18 19:24:00', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 'Hangzhou Silan Microelectronics Co., Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 'Digidesign', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(92, 'Broadcom', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 'Compaq Computer Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 'Ralink Technology, Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(95, 'Intel Corp.', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 'Goldstar Company Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(97, 'LG Display', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 'Cheng Uei Precision Industry Co., Ltd (Foxlink)', NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 'AudioScience Inc', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(100, 'Huawei Technologies Co., Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(101, 'Samson Technologies Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(102, 'Action Star Enterprise Co., Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(103, 'IBM France', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(104, 'Timedia Technology Co Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 'RTK', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(106, 'Mixlr', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(107, 'VB-Audio Software', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(108, 'HPQOEM', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 'NEC Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 'MediaTek Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(111, 'Google Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(112, 'Alcor Micro Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(113, 'SanDisk Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(114, 'Silicon Image, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 'Sony Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(116, 'LG Electronics, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(117, 'IVT Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(118, 'Motorola PCS', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(119, 'Kingston Technology', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(120, 'Lenovo', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(121, 'Spreadtrum Communications Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(122, 'JMicron Technology Corp. / JMicron USA Technology Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(123, 'ZOOM Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(124, 'ASUSTek Computer, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(125, 'Toshiba Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(126, 'ShiningMorning Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(127, 'BEHRINGER', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(128, 'LaCie, Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(129, 'Plain Tree Systems Inc', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(130, 'Toshiba America Inc', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(131, 'Qualcomm, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(132, 'Transcend Information, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(133, 'Silicon Motion, Inc. - Taiwan (formerly Feiya Technology Corp.)', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(134, 'Kingston Technology Company Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(135, 'Seagate', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 'NVIDIA Corporation Device', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(137, 'KVM', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(138, 'Sony Ericsson Mobile Communications AB', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(139, 'MXT', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(140, 'DFX', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(141, 'CompUSA', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(142, 'Super Top', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(143, 'ESET, spol. s r.o.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(144, 'Logitech, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(145, 'A-DATA Technology Co., Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(146, 'BenQ Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(147, 'Unknown', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(148, 'NewTek Partners LLP', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(149, 'LSI Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 'Cisco Systems, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(151, 'Samsung Electronics Co Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 'Brother Industries, Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(153, 'Cambridge Silicon Radio, Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(154, 'Research In Motion, Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(155, 'VIA Labs, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(156, 'AVG Technologies', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(157, 'Barco Display Systems', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(158, 'Logitech', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(159, 'Apacer Technology, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(160, 'OMEGA TECHNOLOGY', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(161, 'Malwarebytes', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(162, 'Sanyo Electric Co.,Ltd.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(163, 'Brainboxes, Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(164, 'Roland', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(165, 'MSI', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 'GN Netcom', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(167, '(Standard system devices)', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 'Generic USB xHCI Host Controller', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 'Verbatim, Ltd', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(170, 'Maxtor', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(171, 'Symantec Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(172, 'Sandisk Corp', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 'Quanta Computer, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(174, 'Screaming Bee LLC', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(175, 'BlueJeans', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(176, 'Micron Technology Inc', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 'RODE Microphones', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(178, 'HTC (High Tech Computer Corp.)', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(179, 'iLok', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(180, 'Silicon Motion, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 'Lab126, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(182, 'TP-Link', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(183, 'Synaptics, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(184, 'Seiko Epson Corp.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(185, 'Standard NVM Express Controller', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 'Micron/Crucial Technology', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 'Acer', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 'INSYDE Corp.', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 'Sentinel Labs, Inc.', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(190, 'Initio Corporation', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturertypes`
--

CREATE TABLE `manufacturertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_order` tinyint(4) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_config`
--

CREATE TABLE `menu_config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `menu_page` varchar(255) NOT NULL,
  `menu_module` varchar(255) NOT NULL,
  `menu_submodule` varchar(255) NOT NULL,
  `is_submodule` tinyint(1) NOT NULL DEFAULT 0,
  `is_view` int(11) NOT NULL DEFAULT 1,
  `top_menu_active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monitormodels`
--

CREATE TABLE `monitormodels` (
  `id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monitors`
--

CREATE TABLE `monitors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `have_micro` tinyint(1) NOT NULL DEFAULT 0,
  `have_speaker` tinyint(1) NOT NULL DEFAULT 0,
  `have_subd` tinyint(1) NOT NULL DEFAULT 0,
  `have_bnc` tinyint(1) NOT NULL DEFAULT 0,
  `have_dvi` tinyint(1) NOT NULL DEFAULT 0,
  `have_pivot` tinyint(1) NOT NULL DEFAULT 0,
  `have_hdmi` tinyint(1) NOT NULL DEFAULT 0,
  `have_displayport` tinyint(1) NOT NULL DEFAULT 0,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `monitortypes_id` int(11) NOT NULL DEFAULT 0,
  `monitormodels_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `is_glpi_id` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monitors_allocation`
--

CREATE TABLE `monitors_allocation` (
  `id` int(11) NOT NULL,
  `monitors_id` int(11) NOT NULL,
  `employees_id` int(11) DEFAULT 0,
  `allocation_date` date NOT NULL,
  `allocation_remark` text DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_remark` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monitors_log`
--

CREATE TABLE `monitors_log` (
  `id` int(11) NOT NULL,
  `monitors_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `is_alert` tinyint(1) DEFAULT 0,
  `items_dbname` varchar(255) DEFAULT NULL,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `is_update_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monitortypes`
--

CREATE TABLE `monitortypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkequipmentfirmwares`
--

CREATE TABLE `networkequipmentfirmwares` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkequipmentmodels`
--

CREATE TABLE `networkequipmentmodels` (
  `id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkequipments`
--

CREATE TABLE `networkequipments` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `is_recursive` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `domains_id` int(11) NOT NULL DEFAULT 0,
  `networks_id` int(11) NOT NULL DEFAULT 0,
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT 0,
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT 0,
  `networkequipmentfirmwares_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` int(11) DEFAULT 0,
  `substatus_id` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `mod_login` int(11) DEFAULT 0,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) DEFAULT 0,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkequipments_allocation`
--

CREATE TABLE `networkequipments_allocation` (
  `id` int(11) NOT NULL,
  `networkequipments_id` int(11) NOT NULL,
  `employees_id` int(11) DEFAULT 0,
  `allocation_date` date NOT NULL,
  `allocation_remark` text DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_remark` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkequipments_log`
--

CREATE TABLE `networkequipments_log` (
  `id` int(11) NOT NULL,
  `networkequipments_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `is_alert` tinyint(1) DEFAULT 0,
  `items_dbname` varchar(255) DEFAULT NULL,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `is_update_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkequipments_snmp`
--

CREATE TABLE `networkequipments_snmp` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `is_recursive` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(11) NOT NULL DEFAULT 0,
  `groups_id_tech` int(11) NOT NULL DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `domains_id` int(11) NOT NULL DEFAULT 0,
  `networks_id` int(11) NOT NULL DEFAULT 0,
  `networkequipmenttypes_id` int(11) NOT NULL DEFAULT 0,
  `networkequipmentmodels_id` int(11) NOT NULL DEFAULT 0,
  `networkequipmentfirmwares_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_template` tinyint(1) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(11) NOT NULL DEFAULT 0,
  `groups_id` int(11) NOT NULL DEFAULT 0,
  `states_id` int(11) NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkequipmenttypes`
--

CREATE TABLE `networkequipmenttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networknames`
--

CREATE TABLE `networknames` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `items_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT 0,
  `is_view` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `is_glpi_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_glpi_items_id` int(11) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networknames_history`
--

CREATE TABLE `networknames_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `items_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `fqdns_id` int(11) NOT NULL DEFAULT 0,
  `is_view` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `is_glpi_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_glpi_items_id` int(11) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkportethernets`
--

CREATE TABLE `networkportethernets` (
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT 0,
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT 0,
  `netpoints_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT 10 COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `is_view` tinyint(1) DEFAULT 1,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_networkports_id` int(11) NOT NULL,
  `is_glpi_items_devicenetworkcards_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkportethernets_history`
--

CREATE TABLE `networkportethernets_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `networkports_id` int(11) NOT NULL DEFAULT 0,
  `items_devicenetworkcards_id` int(11) NOT NULL DEFAULT 0,
  `netpoints_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT 10 COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `is_view` tinyint(1) DEFAULT 1,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_networkports_id` int(11) NOT NULL,
  `is_glpi_items_devicenetworkcards_id` int(11) NOT NULL,
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkports`
--

CREATE TABLE `networkports` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `logical_number` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `instantiation_type` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `add_type` tinyint(1) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL DEFAULT 0,
  `substatus_id` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkports_history`
--

CREATE TABLE `networkports_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `logical_number` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `instantiation_type` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `add_type` tinyint(1) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL DEFAULT 0,
  `substatus_id` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkscan_query`
--

CREATE TABLE `networkscan_query` (
  `ntwscid` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `scanby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `networkscan_query_result`
--

CREATE TABLE `networkscan_query_result` (
  `ntwscrid` int(11) NOT NULL,
  `ntwscid` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `netbios` varchar(255) NOT NULL,
  `server` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `macaddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `network_scan`
--

CREATE TABLE `network_scan` (
  `id` int(11) NOT NULL,
  `hostname` varchar(255) DEFAULT '-',
  `os_type` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_scan` tinyint(1) DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `network_scan_old`
--

CREATE TABLE `network_scan_old` (
  `id` int(11) NOT NULL,
  `hostname` varchar(255) DEFAULT '-',
  `os_type` varchar(255) DEFAULT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_scan` tinyint(1) DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `office_details`
--

CREATE TABLE `office_details` (
  `off_id` int(11) NOT NULL,
  `location` varchar(250) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `createdby` int(11) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `office_dg`
--

CREATE TABLE `office_dg` (
  `dgid` int(11) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `kva` varchar(20) NOT NULL,
  `own_landlord` varchar(250) NOT NULL,
  `amf_status` varchar(20) NOT NULL,
  `amflocation` varchar(250) NOT NULL,
  `dglocation` varchar(250) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `office_eb`
--

CREATE TABLE `office_eb` (
  `edid` int(11) NOT NULL,
  `totalpower` varchar(100) DEFAULT NULL,
  `loadpower` varchar(100) DEFAULT NULL,
  `apfcstatus` varchar(100) DEFAULT NULL,
  `apfccapacity` varchar(100) DEFAULT NULL,
  `powervalue` varchar(100) DEFAULT NULL,
  `upsoppower` varchar(100) DEFAULT NULL,
  `upsbkptime` time DEFAULT NULL,
  `ht_lt` varchar(250) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `office_infra`
--

CREATE TABLE `office_infra` (
  `infraid` int(11) NOT NULL,
  `totalfloors` varchar(5) NOT NULL,
  `officefloor` varchar(5) NOT NULL,
  `officearea` varchar(10) NOT NULL,
  `noofearthing` varchar(5) NOT NULL,
  `pole_tower_height` varchar(20) NOT NULL,
  `mplspheight` varchar(20) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `office_team_details`
--

CREATE TABLE `office_team_details` (
  `teamid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operatingsystemarchitectures`
--

CREATE TABLE `operatingsystemarchitectures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operatingsystemarchitectures`
--

INSERT INTO `operatingsystemarchitectures` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, '64-bit', NULL, NULL, NULL),
(2, '32-bit', NULL, NULL, NULL),
(3, 'x86_64', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `operatingsystems`
--

CREATE TABLE `operatingsystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operatingsystems`
--

INSERT INTO `operatingsystems` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Windows', NULL, NULL, NULL),
(2, 'Ubuntu', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `operatingsystemservicepacks`
--

CREATE TABLE `operatingsystemservicepacks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operatingsystemservicepacks`
--

INSERT INTO `operatingsystemservicepacks` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Multiprocessor Free', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `operatingsystemversions`
--

CREATE TABLE `operatingsystemversions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operatingsystemversions`
--

INSERT INTO `operatingsystemversions` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, '8.1', NULL, NULL, NULL),
(2, '10-1809', NULL, NULL, NULL),
(3, '10-1803', NULL, NULL, NULL),
(4, '10-1903', NULL, NULL, NULL),
(5, '7', NULL, NULL, NULL),
(6, '2012 R2', NULL, NULL, NULL),
(7, '10-1511', NULL, NULL, NULL),
(8, '2008', NULL, NULL, NULL),
(9, '10-1709', NULL, NULL, NULL),
(10, '8', NULL, NULL, NULL),
(11, 'XP', NULL, NULL, NULL),
(12, '10-1703', NULL, NULL, NULL),
(13, '10-1607', NULL, NULL, NULL),
(14, '2003', NULL, NULL, NULL),
(15, '2008 R2', NULL, NULL, NULL),
(16, '10', NULL, NULL, NULL),
(17, '10-1909', NULL, NULL, NULL),
(18, '18.04', NULL, NULL, NULL),
(19, '2004', NULL, NULL, NULL),
(20, '2009', NULL, NULL, NULL),
(21, '10-1803', NULL, NULL, NULL),
(22, '10-1511', NULL, NULL, NULL),
(23, '10-1903', NULL, NULL, NULL),
(24, '10-1703', NULL, NULL, NULL),
(25, '10-1909', NULL, NULL, NULL),
(26, '10-1607', NULL, NULL, NULL),
(27, '10-1709', NULL, NULL, NULL),
(28, '10-1809', NULL, NULL, NULL),
(29, '1909', NULL, NULL, NULL),
(30, '1803', NULL, NULL, NULL),
(31, '1809', NULL, NULL, NULL),
(32, '1709', NULL, NULL, NULL),
(33, '1903', NULL, NULL, NULL),
(34, '1607', NULL, NULL, NULL),
(35, '1703', NULL, NULL, NULL),
(36, '1511', NULL, NULL, NULL),
(37, '11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oslicenses`
--

CREATE TABLE `oslicenses` (
  `id` int(11) NOT NULL,
  `os_id` int(11) NOT NULL DEFAULT 0,
  `number` varchar(11) NOT NULL DEFAULT '0',
  `oslicensetypes_id` varchar(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `osversions_id_buy` int(11) NOT NULL DEFAULT 0,
  `osversions_id_use` int(11) NOT NULL DEFAULT 0,
  `expire` date DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` varchar(11) NOT NULL DEFAULT '0',
  `is_deleted` varchar(1) NOT NULL DEFAULT '0',
  `publishers_id` varchar(11) NOT NULL DEFAULT '0',
  `states_id` varchar(11) NOT NULL DEFAULT '0',
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `mod_login` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oslicensetypes`
--

CREATE TABLE `oslicensetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oslicensetypes`
--

INSERT INTO `oslicensetypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Volume', 'KMS Client and Volume MAK product keys, are volume license keys that are not-for-resale. They are issued by organizations for use on client computers associated in some way with the organization. Volume license keys may not be transferred with the computer if the computer changes ownership. This form of licensing typically applies for business, government and educational institutions, with prices for volume licensing varying depending on the type, quantity and applicable subscription-term. A volume license key (VLK) denotes the product key used when installing software licensed in bulk, which allows a single product key to be used for multiple installations. For example, the Windows Enterprise edition is activated with a volume license key.', NULL, NULL),
(2, 'OEM', 'Product keys are issued by the original equipment manufacturer (OEM) and are not-for-resale and may not be transferred to another computer. They may, however, be transferred with the computer if the computer is transferred to new ownership. If the OEM PC came preinstalled with Windows 8 or Windows 10, then the product key will be embedded in the UEFI firmware chip.', NULL, NULL),
(3, 'Retail/FPP', 'This when you buy a Full Packaged Product (FPP), commonly known as a \"boxed copy\", of Windows from a retail merchant or purchases Windows online from the Microsoft Store. Product keys can be transferred to another PC.', NULL, NULL),
(4, 'Trial', 'Trial Version means a version of the Software, so identified, to be used only to review, demonstrate and evaluate the Software for a limited time period. The Trial Version may have limited features, may lack the ability for the end-user to save the end product, and will cease operating after a predetermined amount of time due to an internal mechanism within the Trial Version.', NULL, NULL),
(5, 'Freeware', 'Freeware is software, most often proprietary, that is distributed at no monetary cost to the end user. There is no agreed-upon set of rights, license, or EULA that defines freeware unambiguously; every publisher defines its own rules for the freeware it offers. ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peripheralmodels`
--

CREATE TABLE `peripheralmodels` (
  `id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peripherals`
--

CREATE TABLE `peripherals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `peripheraltypes_id` int(11) NOT NULL DEFAULT 0,
  `peripheralmodels_id` int(11) NOT NULL DEFAULT 0,
  `brand` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `is_glpi_id` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peripherals_allocation`
--

CREATE TABLE `peripherals_allocation` (
  `id` int(11) NOT NULL,
  `peripherals_id` int(11) NOT NULL,
  `employees_id` int(11) DEFAULT 0,
  `allocation_date` date NOT NULL,
  `allocation_remark` text DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_remark` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peripherals_log`
--

CREATE TABLE `peripherals_log` (
  `id` int(11) NOT NULL,
  `peripherals_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `is_alert` tinyint(1) DEFAULT 0,
  `items_dbname` varchar(255) DEFAULT NULL,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `is_update_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peripheraltypes`
--

CREATE TABLE `peripheraltypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_numbers`
--

CREATE TABLE `phone_numbers` (
  `numberid` int(11) NOT NULL,
  `phonenum` varchar(255) NOT NULL,
  `phoneid` int(11) DEFAULT 0,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `refid` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policys`
--

CREATE TABLE `policys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designations_id` int(11) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `date_mod` datetime DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `login_creation` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printermodels`
--

CREATE TABLE `printermodels` (
  `id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `have_serial` tinyint(1) NOT NULL DEFAULT 0,
  `have_parallel` tinyint(1) NOT NULL DEFAULT 0,
  `have_usb` tinyint(1) NOT NULL DEFAULT 0,
  `have_wifi` tinyint(1) NOT NULL DEFAULT 0,
  `have_ethernet` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `memory_size` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `domains_id` int(11) NOT NULL DEFAULT 0,
  `networks_id` int(11) NOT NULL DEFAULT 0,
  `printertypes_id` int(11) NOT NULL DEFAULT 0,
  `printermodels_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `init_pages_counter` int(11) NOT NULL DEFAULT 0,
  `last_pages_counter` int(11) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_glpi_id` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printers_allocation`
--

CREATE TABLE `printers_allocation` (
  `id` int(11) NOT NULL,
  `printers_id` int(11) NOT NULL,
  `employees_id` int(11) DEFAULT 0,
  `allocation_date` date NOT NULL,
  `allocation_remark` text DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_remark` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printers_log`
--

CREATE TABLE `printers_log` (
  `id` int(11) NOT NULL,
  `printers_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `is_alert` tinyint(1) DEFAULT 0,
  `items_dbname` varchar(255) DEFAULT NULL,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `is_update_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `printertypes`
--

CREATE TABLE `printertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `approver` int(11) NOT NULL,
  `appuid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sap_details`
--

CREATE TABLE `sap_details` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `serialno` varchar(255) DEFAULT NULL,
  `capitalized_on` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `acquisition_value` varchar(25) DEFAULT NULL,
  `accumulated_depreciation_value` varchar(25) DEFAULT NULL,
  `book_value` varchar(25) DEFAULT NULL,
  `cost_center` varchar(50) DEFAULT NULL,
  `locations_id` int(11) DEFAULT 0,
  `po_number` varchar(255) DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sap_detailsmissing`
--

CREATE TABLE `sap_detailsmissing` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `serialno` varchar(255) DEFAULT NULL,
  `capitalized_on` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `acquisition_value` varchar(25) DEFAULT NULL,
  `accumulated_depreciation_value` varchar(25) DEFAULT NULL,
  `book_value` varchar(25) DEFAULT NULL,
  `cost_center` varchar(50) DEFAULT NULL,
  `locations_id` int(11) DEFAULT 0,
  `po_number` varchar(255) DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sap_details_300321`
--

CREATE TABLE `sap_details_300321` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `serialno` varchar(255) DEFAULT NULL,
  `capitalized_on` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `acquisition_value` varchar(25) DEFAULT NULL,
  `accumulated_depreciation_value` varchar(25) DEFAULT NULL,
  `book_value` varchar(25) DEFAULT NULL,
  `cost_center` varchar(50) DEFAULT NULL,
  `locations_id` int(11) DEFAULT 0,
  `po_number` varchar(255) DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sap_details_log`
--

CREATE TABLE `sap_details_log` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `serialno` varchar(255) DEFAULT NULL,
  `capitalized_on` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `acquisition_value` varchar(25) DEFAULT NULL,
  `accumulated_depreciation_value` varchar(25) DEFAULT NULL,
  `book_value` varchar(25) DEFAULT NULL,
  `cost_center` varchar(50) DEFAULT NULL,
  `locations_id` int(11) DEFAULT 0,
  `po_number` varchar(255) DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sap_details_old`
--

CREATE TABLE `sap_details_old` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `capitalized_on` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `acquisition_value` varchar(25) DEFAULT NULL,
  `accumulated_depreciation_value` varchar(25) DEFAULT NULL,
  `book_value` varchar(25) DEFAULT NULL,
  `cost_center` varchar(50) DEFAULT NULL,
  `locations_id` int(11) DEFAULT 0,
  `login_mod` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sap_details_old2`
--

CREATE TABLE `sap_details_old2` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `capitalized_on` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `acquisition_value` varchar(25) DEFAULT NULL,
  `accumulated_depreciation_value` varchar(25) DEFAULT NULL,
  `book_value` varchar(25) DEFAULT NULL,
  `cost_center` varchar(50) DEFAULT NULL,
  `locations_id` int(11) DEFAULT 0,
  `login_mod` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servergroups`
--

CREATE TABLE `servergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `os_name` varchar(255) DEFAULT NULL,
  `osv_name` varchar(255) DEFAULT NULL,
  `operatingsystems_id` int(11) DEFAULT 0,
  `operatingsystemversions_id` int(11) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `snmp`
--

CREATE TABLE `snmp` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `snmp_read` varchar(100) DEFAULT NULL,
  `snmp_port` varchar(100) DEFAULT NULL,
  `timeout` varchar(100) DEFAULT NULL,
  `retries` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `context_name` varchar(100) DEFAULT NULL,
  `auth_protocal` varchar(100) DEFAULT NULL,
  `auth_password` varbinary(100) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `softwarelicenses`
--

CREATE TABLE `softwarelicenses` (
  `id` int(11) NOT NULL,
  `softwares_id` int(11) NOT NULL DEFAULT 0,
  `number` varchar(11) NOT NULL DEFAULT '0',
  `softwarelicensetypes_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `softwareversions_id_buy` int(11) NOT NULL DEFAULT 0,
  `softwareversions_id_use` int(11) NOT NULL DEFAULT 0,
  `expire` date DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` varchar(11) NOT NULL DEFAULT '0',
  `is_deleted` varchar(1) NOT NULL DEFAULT '0',
  `publishers_id` varchar(11) NOT NULL DEFAULT '0',
  `states_id` varchar(11) NOT NULL DEFAULT '0',
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `mod_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `softwarelicensetypes`
--

CREATE TABLE `softwarelicensetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `softwares`
--

CREATE TABLE `softwares` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `softwares_id` int(11) NOT NULL DEFAULT 0,
  `publishers_id` int(11) NOT NULL DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `softwaresearch`
--

CREATE TABLE `softwaresearch` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `softwaresearch_map`
--

CREATE TABLE `softwaresearch_map` (
  `id` int(11) NOT NULL,
  `softwaresearch_id` int(11) DEFAULT 0,
  `softwares_id` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `softwareversions`
--

CREATE TABLE `softwareversions` (
  `id` int(11) NOT NULL,
  `softwares_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `is_blacklist` tinyint(1) NOT NULL DEFAULT 0,
  `is_whitelist` tinyint(1) DEFAULT 0,
  `is_free` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `software_blacklist_config`
--

CREATE TABLE `software_blacklist_config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `software_free_config`
--

CREATE TABLE `software_free_config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `software_whitelist_config`
--

CREATE TABLE `software_whitelist_config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spares`
--

CREATE TABLE `spares` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `uom` int(11) DEFAULT NULL,
  `minimum_q_alert` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spare_stock_in`
--

CREATE TABLE `spare_stock_in` (
  `id` int(11) NOT NULL,
  `spare_id` int(11) DEFAULT NULL,
  `stock_in` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `mod_login` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spare_stock_out`
--

CREATE TABLE `spare_stock_out` (
  `id` int(11) NOT NULL,
  `spare_id` int(11) DEFAULT NULL,
  `consumed_user` int(11) DEFAULT NULL,
  `login_location` text DEFAULT NULL,
  `stock_out` int(11) DEFAULT NULL,
  `stock_out_by` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stl_details`
--

CREATE TABLE `stl_details` (
  `stlid` int(11) NOT NULL,
  `stlvendor` varchar(255) NOT NULL,
  `stlconnection` varchar(20) NOT NULL,
  `stlbandwidth` varchar(20) NOT NULL,
  `stlpayment` varchar(20) NOT NULL,
  `conncode` varchar(250) NOT NULL,
  `stlarc` double(20,2) DEFAULT 0.00,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `is_recursive` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `suppliertypes_id` int(11) NOT NULL DEFAULT 0,
  `address` text DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliertypes`
--

CREATE TABLE `suppliertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemadmin_menus`
--

CREATE TABLE `systemadmin_menus` (
  `mid` int(11) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_tiny` varchar(255) DEFAULT NULL,
  `menu_type` varchar(5) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `menu_icon` int(11) DEFAULT 0,
  `menu_mid` int(11) DEFAULT 0,
  `menu_order` int(11) DEFAULT 0,
  `menu_asname` varchar(255) DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `add` int(11) DEFAULT 0,
  `edit` int(11) DEFAULT 0,
  `delete` int(11) DEFAULT 0,
  `download` int(11) DEFAULT 0,
  `isview` tinyint(1) DEFAULT 1,
  `module_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `systemadmin_menus`
--

INSERT INTO `systemadmin_menus` (`mid`, `menu_name`, `menu_tiny`, `menu_type`, `menu_url`, `menu_icon`, `menu_mid`, `menu_order`, `menu_asname`, `view`, `add`, `edit`, `delete`, `download`, `isview`, `module_type`) VALUES
(1348, 'Desktop', NULL, 'c', NULL, 0, 7, 103, 'Desktop', 1, 0, 1, 1, 0, 1, 2),
(1349, 'Servers', NULL, 'c', NULL, 0, 7, 104, 'Servers', 1, 0, 1, 1, 0, 1, 2),
(1350, 'Switches', NULL, 'c', NULL, 0, 7, 105, 'Switches', 1, 0, 1, 1, 0, 1, 2),
(1351, 'Firewall', NULL, 'c', NULL, 0, 7, 106, 'Firewall', 1, 0, 1, 1, 0, 1, 2),
(1352, 'Wifi Devices', NULL, 'c', NULL, 0, 7, 107, 'Wifi Devices', 1, 0, 1, 1, 0, 1, 2),
(1353, 'Laptop', NULL, 'c', NULL, 0, 7, 108, 'Laptop', 1, 0, 1, 1, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `system_menus`
--

CREATE TABLE `system_menus` (
  `mid` int(11) NOT NULL,
  `menu_name` varchar(230) NOT NULL,
  `menu_tiny` varchar(30) NOT NULL,
  `menu_type` varchar(5) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `menu_icon` int(11) NOT NULL,
  `menu_mid` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_asname` varchar(100) NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `isview` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telephone_details`
--

CREATE TABLE `telephone_details` (
  `phoneid` int(11) NOT NULL,
  `phonevendor` varchar(250) DEFAULT NULL,
  `phoneconnection` varchar(250) DEFAULT NULL,
  `phoneplan` varchar(250) DEFAULT NULL,
  `phonedeposit` varchar(250) DEFAULT NULL,
  `phoneinternet` varchar(20) DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) DEFAULT NULL,
  `refid` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_transfer`
--

CREATE TABLE `temp_transfer` (
  `atid` int(11) NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `given_to` int(11) DEFAULT NULL,
  `givento_type` varchar(15) NOT NULL DEFAULT 'appuser',
  `transfer_by` int(11) NOT NULL,
  `transfer_date` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `aid` int(11) NOT NULL,
  `asset_table` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 3 COMMENT 'Out(1), Received(2)',
  `received_by` int(11) NOT NULL DEFAULT 0,
  `transfer_note` text NOT NULL,
  `return_note` text DEFAULT NULL,
  `return_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_transfer_log`
--

CREATE TABLE `temp_transfer_log` (
  `atlid` int(11) NOT NULL,
  `atid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_approval_request_list`
--

CREATE TABLE `transfer_approval_request_list` (
  `tarlid` int(11) NOT NULL,
  `atid` int(11) NOT NULL,
  `approver_id` int(11) NOT NULL,
  `isapproved` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by_id` int(11) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `dontcheck` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE `uom` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_name` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_links`
--

CREATE TABLE `upload_links` (
  `id` int(11) NOT NULL,
  `autogen_no` varchar(255) DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `employee_id` text DEFAULT NULL,
  `employee_name` text DEFAULT NULL,
  `office` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `building` text DEFAULT NULL,
  `block` text DEFAULT NULL,
  `floor` text DEFAULT NULL,
  `room` text DEFAULT NULL,
  `desk_phone` text DEFAULT NULL,
  `asset_owner` text DEFAULT NULL,
  `asset_keeper` text DEFAULT NULL,
  `reporting_authority` text DEFAULT NULL,
  `webportal_login` text DEFAULT NULL,
  `crm_login` text DEFAULT NULL,
  `erp_login` text DEFAULT NULL,
  `sap_login` text DEFAULT NULL,
  `emp_exist` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `login_creation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_links_temp`
--

CREATE TABLE `upload_links_temp` (
  `id` int(11) NOT NULL,
  `autogen_no` varchar(255) DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `employee_id` text DEFAULT NULL,
  `employee_name` text DEFAULT NULL,
  `office` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `building` text DEFAULT NULL,
  `block` text DEFAULT NULL,
  `floor` text DEFAULT NULL,
  `room` text DEFAULT NULL,
  `desk_phone` text DEFAULT NULL,
  `asset_owner` text DEFAULT NULL,
  `asset_keeper` text DEFAULT NULL,
  `reporting_authority` text DEFAULT NULL,
  `webportal_login` text DEFAULT NULL,
  `crm_login` text DEFAULT NULL,
  `erp_login` text DEFAULT NULL,
  `sap_login` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `login_creation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `empid` varchar(25) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `acl_group_id` int(11) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `lastaccess` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useraccess_locations`
--

CREATE TABLE `useraccess_locations` (
  `id` int(11) NOT NULL,
  `appuser_id` int(11) DEFAULT 0,
  `locations_id` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `date_mod` datetime DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `login_creation` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `employees_id` int(11) DEFAULT 0,
  `employees_empid` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `lastaccess` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_surrender_items_log`
--

CREATE TABLE `users_surrender_items_log` (
  `id` int(11) NOT NULL,
  `users_surrender_log_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL,
  `items_allocations_id` int(11) DEFAULT 0,
  `itemtype` varchar(255) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `is_alert` tinyint(1) DEFAULT 0,
  `items_dbname` varchar(255) DEFAULT NULL,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `is_update_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_surrender_log`
--

CREATE TABLE `users_surrender_log` (
  `id` int(11) NOT NULL,
  `appuser_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_log`
--

CREATE TABLE `user_activity_log` (
  `logid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `logdate` datetime NOT NULL,
  `apptype` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_activity_log`
--

INSERT INTO `user_activity_log` (`logid`, `id`, `page`, `comments`, `logdate`, `apptype`, `is_active`, `is_deleted`, `ip`) VALUES
(80106, 1, 'login', 'Login successful', '2024-02-19 10:53:28', 'Web', 1, 0, NULL),
(80107, 4, 'login', 'Login successful', '2024-02-19 10:54:07', 'Web', 1, 0, NULL),
(80108, 5, 'login', 'Login successful', '2024-02-19 10:55:17', 'Web', 1, 0, NULL),
(80109, 1, 'login', 'Login successful', '2024-02-19 11:15:43', 'Web', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_custom`
--

CREATE TABLE `user_custom` (
  `ucustomid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `ipaddress` varchar(100) NOT NULL,
  `cpu` varchar(100) NOT NULL,
  `mouse` varchar(100) NOT NULL,
  `keyboard` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `harddisk` varchar(100) NOT NULL,
  `printer` varchar(100) NOT NULL,
  `monitor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_custom_type`
--

CREATE TABLE `user_custom_type` (
  `typeid` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `countries_id` int(11) DEFAULT NULL,
  `states_id` int(11) DEFAULT NULL,
  `cities_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `vendortypes_id` int(11) DEFAULT 0,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `login_creation` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendortypes`
--

CREATE TABLE `vendortypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wmi_config`
--

CREATE TABLE `wmi_config` (
  `config_id` int(11) NOT NULL,
  `wmi_ip_from` varchar(20) NOT NULL,
  `wmi_ip_to` varchar(20) NOT NULL,
  `wmi_name` varchar(100) NOT NULL,
  `wmi_user_name` varchar(50) NOT NULL,
  `wmi_password` varchar(50) NOT NULL,
  `domain` varchar(75) NOT NULL,
  `locationid` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0-Inactive,1-Active,2-maintance',
  `createby` int(11) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `link_asset_details`
--
ALTER TABLE `link_asset_details`
  ADD PRIMARY KEY (`laid`);

--
-- Indexes for table `locationgroups`
--
ALTER TABLE `locationgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`fromip`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `location_type`
--
ALTER TABLE `location_type`
  ADD PRIMARY KEY (`loctypeid`);

--
-- Indexes for table `logtypes`
--
ALTER TABLE `logtypes`
  ADD PRIMARY KEY (`logtypeid`);

--
-- Indexes for table `mail_error_log`
--
ALTER TABLE `mail_error_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_menus`
--
ALTER TABLE `main_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_mod`
--
ALTER TABLE `main_mod`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `manufacturertypes`
--
ALTER TABLE `manufacturertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `menu_config`
--
ALTER TABLE `menu_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitormodels`
--
ALTER TABLE `monitormodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `monitors`
--
ALTER TABLE `monitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`monitormodels_id`),
  ADD KEY `monitortypes_id` (`monitortypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `monitors_allocation`
--
ALTER TABLE `monitors_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitors_log`
--
ALTER TABLE `monitors_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitortypes`
--
ALTER TABLE `monitortypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkequipmentfirmwares`
--
ALTER TABLE `networkequipmentfirmwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkequipmentmodels`
--
ALTER TABLE `networkequipmentmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkequipments`
--
ALTER TABLE `networkequipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `networkequipmentfirmwares_id` (`networkequipmentfirmwares_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkequipments_allocation`
--
ALTER TABLE `networkequipments_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `networkequipments_log`
--
ALTER TABLE `networkequipments_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `networkequipments_snmp`
--
ALTER TABLE `networkequipments_snmp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `networkequipmentfirmwares_id` (`networkequipmentfirmwares_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `states_id` (`states_id`),
  ADD KEY `users_id_tech` (`users_id_tech`),
  ADD KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `groups_id_tech` (`groups_id_tech`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkequipmenttypes`
--
ALTER TABLE `networkequipmenttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networknames`
--
ALTER TABLE `networknames`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `FQDN` (`name`,`fqdns_id`),
  ADD KEY `name` (`name`),
  ADD KEY `fqdns_id` (`fqdns_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networknames_history`
--
ALTER TABLE `networknames_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `FQDN` (`name`,`fqdns_id`),
  ADD KEY `name` (`name`),
  ADD KEY `fqdns_id` (`fqdns_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkportethernets`
--
ALTER TABLE `networkportethernets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD KEY `card` (`items_devicenetworkcards_id`),
  ADD KEY `netpoint` (`netpoints_id`),
  ADD KEY `type` (`type`),
  ADD KEY `speed` (`speed`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkportethernets_history`
--
ALTER TABLE `networkportethernets_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `networkports_id` (`networkports_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `card` (`items_devicenetworkcards_id`),
  ADD KEY `netpoint` (`netpoints_id`),
  ADD KEY `type` (`type`),
  ADD KEY `speed` (`speed`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkports`
--
ALTER TABLE `networkports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `on_device` (`computers_id`,`itemtype`),
  ADD KEY `item` (`itemtype`,`computers_id`),
  ADD KEY `mac` (`mac`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkports_history`
--
ALTER TABLE `networkports_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `on_device` (`computers_id`,`itemtype`),
  ADD KEY `item` (`itemtype`,`computers_id`),
  ADD KEY `mac` (`mac`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `networkscan_query`
--
ALTER TABLE `networkscan_query`
  ADD PRIMARY KEY (`ntwscid`);

--
-- Indexes for table `networkscan_query_result`
--
ALTER TABLE `networkscan_query_result`
  ADD PRIMARY KEY (`ntwscrid`);

--
-- Indexes for table `network_scan`
--
ALTER TABLE `network_scan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `network_scan_old`
--
ALTER TABLE `network_scan_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_details`
--
ALTER TABLE `office_details`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `office_dg`
--
ALTER TABLE `office_dg`
  ADD PRIMARY KEY (`dgid`);

--
-- Indexes for table `office_eb`
--
ALTER TABLE `office_eb`
  ADD PRIMARY KEY (`edid`);

--
-- Indexes for table `office_infra`
--
ALTER TABLE `office_infra`
  ADD PRIMARY KEY (`infraid`);

--
-- Indexes for table `office_team_details`
--
ALTER TABLE `office_team_details`
  ADD PRIMARY KEY (`teamid`);

--
-- Indexes for table `operatingsystemarchitectures`
--
ALTER TABLE `operatingsystemarchitectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `operatingsystems`
--
ALTER TABLE `operatingsystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `operatingsystemservicepacks`
--
ALTER TABLE `operatingsystemservicepacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `operatingsystemversions`
--
ALTER TABLE `operatingsystemversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `oslicenses`
--
ALTER TABLE `oslicenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `expire` (`expire`),
  ADD KEY `softwareversions_id_buy` (`osversions_id_buy`),
  ADD KEY `softwarelicensetypes_id` (`oslicensetypes_id`),
  ADD KEY `softwareversions_id_use` (`osversions_id_use`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `softwares_id_expire` (`os_id`,`expire`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `manufacturers_id` (`publishers_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Indexes for table `oslicensetypes`
--
ALTER TABLE `oslicensetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `peripheralmodels`
--
ALTER TABLE `peripheralmodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `peripherals`
--
ALTER TABLE `peripherals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `peripheralmodels_id` (`peripheralmodels_id`),
  ADD KEY `peripheraltypes_id` (`peripheraltypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `peripherals_allocation`
--
ALTER TABLE `peripherals_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peripherals_log`
--
ALTER TABLE `peripherals_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peripheraltypes`
--
ALTER TABLE `peripheraltypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `phone_numbers`
--
ALTER TABLE `phone_numbers`
  ADD PRIMARY KEY (`numberid`);

--
-- Indexes for table `policys`
--
ALTER TABLE `policys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printermodels`
--
ALTER TABLE `printermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `printermodels_id` (`printermodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `printertypes_id` (`printertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `last_pages_counter` (`last_pages_counter`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `printers_allocation`
--
ALTER TABLE `printers_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printers_log`
--
ALTER TABLE `printers_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printertypes`
--
ALTER TABLE `printertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`approver`);

--
-- Indexes for table `sap_details`
--
ALTER TABLE `sap_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sap_detailsmissing`
--
ALTER TABLE `sap_detailsmissing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sap_details_300321`
--
ALTER TABLE `sap_details_300321`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sap_details_log`
--
ALTER TABLE `sap_details_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sap_details_old`
--
ALTER TABLE `sap_details_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sap_details_old2`
--
ALTER TABLE `sap_details_old2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servergroups`
--
ALTER TABLE `servergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snmp`
--
ALTER TABLE `snmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `softwarelicenses`
--
ALTER TABLE `softwarelicenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `expire` (`expire`),
  ADD KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  ADD KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  ADD KEY `softwareversions_id_use` (`softwareversions_id_use`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `softwares_id_expire` (`softwares_id`,`expire`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `manufacturers_id` (`publishers_id`),
  ADD KEY `states_id` (`states_id`);

--
-- Indexes for table `softwarelicensetypes`
--
ALTER TABLE `softwarelicensetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `softwares`
--
ALTER TABLE `softwares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`publishers_id`),
  ADD KEY `softwares_id` (`softwares_id`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `softwaresearch`
--
ALTER TABLE `softwaresearch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `softwaresearch_map`
--
ALTER TABLE `softwaresearch_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `softwareversions`
--
ALTER TABLE `softwareversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `softwares_id` (`softwares_id`),
  ADD KEY `operatingsystems_id` (`operatingsystems_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `software_blacklist_config`
--
ALTER TABLE `software_blacklist_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `software_free_config`
--
ALTER TABLE `software_free_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `software_whitelist_config`
--
ALTER TABLE `software_whitelist_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spares`
--
ALTER TABLE `spares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spare_stock_in`
--
ALTER TABLE `spare_stock_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spare_stock_out`
--
ALTER TABLE `spare_stock_out`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stl_details`
--
ALTER TABLE `stl_details`
  ADD PRIMARY KEY (`stlid`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `suppliertypes_id` (`suppliertypes_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `suppliertypes`
--
ALTER TABLE `suppliertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `systemadmin_menus`
--
ALTER TABLE `systemadmin_menus`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `system_menus`
--
ALTER TABLE `system_menus`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `telephone_details`
--
ALTER TABLE `telephone_details`
  ADD PRIMARY KEY (`phoneid`);

--
-- Indexes for table `temp_transfer`
--
ALTER TABLE `temp_transfer`
  ADD PRIMARY KEY (`atid`);

--
-- Indexes for table `temp_transfer_log`
--
ALTER TABLE `temp_transfer_log`
  ADD PRIMARY KEY (`atlid`),
  ADD KEY `atid` (`atid`);

--
-- Indexes for table `transfer_approval_request_list`
--
ALTER TABLE `transfer_approval_request_list`
  ADD PRIMARY KEY (`tarlid`);

--
-- Indexes for table `uom`
--
ALTER TABLE `uom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `upload_links`
--
ALTER TABLE `upload_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_links_temp`
--
ALTER TABLE `upload_links_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `useraccess_locations`
--
ALTER TABLE `useraccess_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_surrender_items_log`
--
ALTER TABLE `users_surrender_items_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_surrender_log`
--
ALTER TABLE `users_surrender_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `user_custom`
--
ALTER TABLE `user_custom`
  ADD PRIMARY KEY (`ucustomid`);

--
-- Indexes for table `user_custom_type`
--
ALTER TABLE `user_custom_type`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `vendortypes`
--
ALTER TABLE `vendortypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `wmi_config`
--
ALTER TABLE `wmi_config`
  ADD PRIMARY KEY (`config_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `link_asset_details`
--
ALTER TABLE `link_asset_details`
  MODIFY `laid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `locationgroups`
--
ALTER TABLE `locationgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `location_type`
--
ALTER TABLE `location_type`
  MODIFY `loctypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logtypes`
--
ALTER TABLE `logtypes`
  MODIFY `logtypeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_error_log`
--
ALTER TABLE `mail_error_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_menus`
--
ALTER TABLE `main_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_mod`
--
ALTER TABLE `main_mod`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `manufacturertypes`
--
ALTER TABLE `manufacturertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu_config`
--
ALTER TABLE `menu_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `monitormodels`
--
ALTER TABLE `monitormodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monitors`
--
ALTER TABLE `monitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1058;

--
-- AUTO_INCREMENT for table `monitors_allocation`
--
ALTER TABLE `monitors_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monitors_log`
--
ALTER TABLE `monitors_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44074;

--
-- AUTO_INCREMENT for table `monitortypes`
--
ALTER TABLE `monitortypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkequipmentfirmwares`
--
ALTER TABLE `networkequipmentfirmwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkequipmentmodels`
--
ALTER TABLE `networkequipmentmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkequipments`
--
ALTER TABLE `networkequipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkequipments_allocation`
--
ALTER TABLE `networkequipments_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkequipments_log`
--
ALTER TABLE `networkequipments_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkequipments_snmp`
--
ALTER TABLE `networkequipments_snmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkequipmenttypes`
--
ALTER TABLE `networkequipmenttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networknames`
--
ALTER TABLE `networknames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275010;

--
-- AUTO_INCREMENT for table `networknames_history`
--
ALTER TABLE `networknames_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174121;

--
-- AUTO_INCREMENT for table `networkportethernets`
--
ALTER TABLE `networkportethernets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179143;

--
-- AUTO_INCREMENT for table `networkportethernets_history`
--
ALTER TABLE `networkportethernets_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172547;

--
-- AUTO_INCREMENT for table `networkports`
--
ALTER TABLE `networkports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180844;

--
-- AUTO_INCREMENT for table `networkports_history`
--
ALTER TABLE `networkports_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174122;

--
-- AUTO_INCREMENT for table `networkscan_query`
--
ALTER TABLE `networkscan_query`
  MODIFY `ntwscid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `networkscan_query_result`
--
ALTER TABLE `networkscan_query_result`
  MODIFY `ntwscrid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `network_scan`
--
ALTER TABLE `network_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `network_scan_old`
--
ALTER TABLE `network_scan_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office_details`
--
ALTER TABLE `office_details`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `office_dg`
--
ALTER TABLE `office_dg`
  MODIFY `dgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `office_eb`
--
ALTER TABLE `office_eb`
  MODIFY `edid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `office_infra`
--
ALTER TABLE `office_infra`
  MODIFY `infraid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `office_team_details`
--
ALTER TABLE `office_team_details`
  MODIFY `teamid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `operatingsystemarchitectures`
--
ALTER TABLE `operatingsystemarchitectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `operatingsystems`
--
ALTER TABLE `operatingsystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `operatingsystemservicepacks`
--
ALTER TABLE `operatingsystemservicepacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operatingsystemversions`
--
ALTER TABLE `operatingsystemversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `oslicenses`
--
ALTER TABLE `oslicenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oslicensetypes`
--
ALTER TABLE `oslicensetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peripheralmodels`
--
ALTER TABLE `peripheralmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peripherals`
--
ALTER TABLE `peripherals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=826;

--
-- AUTO_INCREMENT for table `peripherals_allocation`
--
ALTER TABLE `peripherals_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peripherals_log`
--
ALTER TABLE `peripherals_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1468;

--
-- AUTO_INCREMENT for table `peripheraltypes`
--
ALTER TABLE `peripheraltypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_numbers`
--
ALTER TABLE `phone_numbers`
  MODIFY `numberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `policys`
--
ALTER TABLE `policys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `printermodels`
--
ALTER TABLE `printermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `printers_allocation`
--
ALTER TABLE `printers_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printers_log`
--
ALTER TABLE `printers_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691191;

--
-- AUTO_INCREMENT for table `printertypes`
--
ALTER TABLE `printertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `receiver`
--
ALTER TABLE `receiver`
  MODIFY `approver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sap_details`
--
ALTER TABLE `sap_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5690;

--
-- AUTO_INCREMENT for table `sap_detailsmissing`
--
ALTER TABLE `sap_detailsmissing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sap_details_300321`
--
ALTER TABLE `sap_details_300321`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7150;

--
-- AUTO_INCREMENT for table `sap_details_log`
--
ALTER TABLE `sap_details_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90350;

--
-- AUTO_INCREMENT for table `sap_details_old`
--
ALTER TABLE `sap_details_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7956;

--
-- AUTO_INCREMENT for table `sap_details_old2`
--
ALTER TABLE `sap_details_old2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7956;

--
-- AUTO_INCREMENT for table `servergroups`
--
ALTER TABLE `servergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `snmp`
--
ALTER TABLE `snmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `softwarelicenses`
--
ALTER TABLE `softwarelicenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `softwarelicensetypes`
--
ALTER TABLE `softwarelicensetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `softwares`
--
ALTER TABLE `softwares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9592;

--
-- AUTO_INCREMENT for table `softwaresearch`
--
ALTER TABLE `softwaresearch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `softwaresearch_map`
--
ALTER TABLE `softwaresearch_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `softwareversions`
--
ALTER TABLE `softwareversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16076;

--
-- AUTO_INCREMENT for table `software_blacklist_config`
--
ALTER TABLE `software_blacklist_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `software_free_config`
--
ALTER TABLE `software_free_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `software_whitelist_config`
--
ALTER TABLE `software_whitelist_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spares`
--
ALTER TABLE `spares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spare_stock_in`
--
ALTER TABLE `spare_stock_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spare_stock_out`
--
ALTER TABLE `spare_stock_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stl_details`
--
ALTER TABLE `stl_details`
  MODIFY `stlid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliertypes`
--
ALTER TABLE `suppliertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemadmin_menus`
--
ALTER TABLE `systemadmin_menus`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1354;

--
-- AUTO_INCREMENT for table `system_menus`
--
ALTER TABLE `system_menus`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telephone_details`
--
ALTER TABLE `telephone_details`
  MODIFY `phoneid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `temp_transfer`
--
ALTER TABLE `temp_transfer`
  MODIFY `atid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `temp_transfer_log`
--
ALTER TABLE `temp_transfer_log`
  MODIFY `atlid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- AUTO_INCREMENT for table `transfer_approval_request_list`
--
ALTER TABLE `transfer_approval_request_list`
  MODIFY `tarlid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9608;

--
-- AUTO_INCREMENT for table `uom`
--
ALTER TABLE `uom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_links`
--
ALTER TABLE `upload_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_links_temp`
--
ALTER TABLE `upload_links_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `useraccess_locations`
--
ALTER TABLE `useraccess_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_surrender_items_log`
--
ALTER TABLE `users_surrender_items_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6578;

--
-- AUTO_INCREMENT for table `users_surrender_log`
--
ALTER TABLE `users_surrender_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6588;

--
-- AUTO_INCREMENT for table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80110;

--
-- AUTO_INCREMENT for table `user_custom`
--
ALTER TABLE `user_custom`
  MODIFY `ucustomid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_custom_type`
--
ALTER TABLE `user_custom_type`
  MODIFY `typeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendortypes`
--
ALTER TABLE `vendortypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wmi_config`
--
ALTER TABLE `wmi_config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
