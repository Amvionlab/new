-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 07:24 AM
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
-- Table structure for table `access_policy_menus`
--

CREATE TABLE `access_policy_menus` (
  `id` int(11) NOT NULL,
  `policys_id` int(11) DEFAULT 0,
  `main_menus_id` tinyint(4) DEFAULT 0,
  `isview` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_page`
--

CREATE TABLE `acl_page` (
  `id` int(11) NOT NULL,
  `policys_id` int(11) DEFAULT 0,
  `systemadmin_menus_id` int(11) DEFAULT 0,
  `add` tinyint(1) NOT NULL DEFAULT 0,
  `edit` tinyint(1) DEFAULT 0,
  `view` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  `download` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `date_mod` datetime DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `login_creation` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_page_2`
--

CREATE TABLE `acl_page_2` (
  `id` int(11) NOT NULL,
  `policys_id` int(11) DEFAULT 0,
  `systemadmin_menus_id` int(11) DEFAULT 0,
  `add` tinyint(1) NOT NULL DEFAULT 0,
  `edit` tinyint(1) DEFAULT 0,
  `view` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  `download` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `date_mod` datetime DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `login_creation` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adsync_config`
--

CREATE TABLE `adsync_config` (
  `id` int(11) NOT NULL,
  `host` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pwrd` varchar(255) NOT NULL,
  `dn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approver`
--

CREATE TABLE `approver` (
  `approver` int(11) NOT NULL,
  `appuid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `id` int(11) NOT NULL,
  `samaccountname` varchar(255) DEFAULT NULL COMMENT 'loginID',
  `givenname` varchar(255) NOT NULL COMMENT 'Display Name',
  `employeeid` varchar(255) NOT NULL COMMENT 'Emoployee ID',
  `gender` tinyint(4) DEFAULT 0,
  `gender_avathar` tinyint(4) DEFAULT 0,
  `office` text DEFAULT NULL,
  `l` varchar(255) DEFAULT NULL COMMENT 'location',
  `st` varchar(255) DEFAULT NULL COMMENT 'state',
  `city` text DEFAULT NULL,
  `co` varchar(255) DEFAULT NULL COMMENT 'country',
  `mail` varchar(255) DEFAULT NULL COMMENT 'email',
  `mobile` varchar(255) DEFAULT NULL COMMENT 'Mobile',
  `department` varchar(255) DEFAULT NULL COMMENT 'department',
  `title` varchar(255) DEFAULT NULL COMMENT 'Designation',
  `description` text DEFAULT NULL COMMENT 'description',
  `building` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `room` text DEFAULT NULL,
  `desk_phone` text DEFAULT NULL,
  `asset_owner` text DEFAULT NULL,
  `asset_keeper` text DEFAULT NULL,
  `reporting_authority` int(11) DEFAULT 0,
  `webportal_login` text DEFAULT NULL,
  `crm_login` text DEFAULT NULL,
  `erp_login` text DEFAULT NULL,
  `sap_login` text DEFAULT NULL,
  `lastaccess` datetime DEFAULT NULL COMMENT 'Last login',
  `logintype` varchar(10) NOT NULL DEFAULT 'local' COMMENT 'Login Type',
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'IS Active',
  `user_active` tinyint(1) NOT NULL DEFAULT 1,
  `createdate` datetime DEFAULT NULL COMMENT 'createdate',
  `mod` varchar(10) NOT NULL DEFAULT 'user' COMMENT 'Login Mode (User/Agent)',
  `pass` varchar(255) DEFAULT NULL,
  `access_type` tinyint(4) DEFAULT 2,
  `is_budgets` tinyint(1) DEFAULT 0,
  `policy_id` tinyint(4) NOT NULL DEFAULT 0,
  `extention_no` varchar(20) NOT NULL,
  `isadmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`id`, `samaccountname`, `givenname`, `employeeid`, `gender`, `gender_avathar`, `office`, `l`, `st`, `city`, `co`, `mail`, `mobile`, `department`, `title`, `description`, `building`, `block`, `floor`, `room`, `desk_phone`, `asset_owner`, `asset_keeper`, `reporting_authority`, `webportal_login`, `crm_login`, `erp_login`, `sap_login`, `lastaccess`, `logintype`, `active`, `user_active`, `createdate`, `mod`, `pass`, `access_type`, `is_budgets`, `policy_id`, `extention_no`, `isadmin`) VALUES
(1, 'admin', 'Administrator', 'admin', 1, 1, NULL, '2', 'Tamilnadu', NULL, 'India', 'demo@demo.com', '9999999999', 'IT', 'IT', NULL, '', '', '', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'local', 1, 1, NULL, 'user', 'e6e061838856bf47e1de730719fb2609', 2, 1, 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `appuser_2`
--

CREATE TABLE `appuser_2` (
  `id` int(11) NOT NULL,
  `samaccountname` varchar(255) DEFAULT NULL COMMENT 'loginID',
  `givenname` varchar(255) NOT NULL COMMENT 'Display Name',
  `employeeid` varchar(255) NOT NULL COMMENT 'Emoployee ID',
  `gender` tinyint(4) DEFAULT 0,
  `gender_avathar` tinyint(4) DEFAULT 0,
  `office` text DEFAULT NULL,
  `l` varchar(255) DEFAULT NULL COMMENT 'location',
  `st` varchar(255) DEFAULT NULL COMMENT 'state',
  `city` text DEFAULT NULL,
  `co` varchar(255) DEFAULT NULL COMMENT 'country',
  `mail` varchar(255) DEFAULT NULL COMMENT 'email',
  `mobile` varchar(255) DEFAULT NULL COMMENT 'Mobile',
  `department` varchar(255) DEFAULT NULL COMMENT 'department',
  `title` varchar(255) DEFAULT NULL COMMENT 'Designation',
  `description` text DEFAULT NULL COMMENT 'description',
  `building` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `room` text DEFAULT NULL,
  `desk_phone` text DEFAULT NULL,
  `asset_owner` text DEFAULT NULL,
  `asset_keeper` text DEFAULT NULL,
  `reporting_authority` int(11) DEFAULT 0,
  `webportal_login` text DEFAULT NULL,
  `crm_login` text DEFAULT NULL,
  `erp_login` text DEFAULT NULL,
  `sap_login` text DEFAULT NULL,
  `lastaccess` datetime DEFAULT NULL COMMENT 'Last login',
  `logintype` varchar(10) NOT NULL DEFAULT 'local' COMMENT 'Login Type',
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'IS Active',
  `user_active` tinyint(1) NOT NULL DEFAULT 1,
  `createdate` datetime DEFAULT NULL COMMENT 'createdate',
  `mod` varchar(10) NOT NULL DEFAULT 'user' COMMENT 'Login Mode (User/Agent)',
  `pass` varchar(255) DEFAULT NULL,
  `access_type` tinyint(4) DEFAULT 2,
  `is_budgets` tinyint(1) DEFAULT 0,
  `policy_id` tinyint(4) NOT NULL DEFAULT 0,
  `extention_no` varchar(20) NOT NULL,
  `isadmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appuser_bkp`
--

CREATE TABLE `appuser_bkp` (
  `id` int(11) NOT NULL,
  `samaccountname` varchar(255) DEFAULT NULL COMMENT 'loginID',
  `givenname` varchar(255) NOT NULL COMMENT 'Display Name',
  `employeeid` varchar(255) NOT NULL COMMENT 'Emoployee ID',
  `gender` tinyint(4) DEFAULT 0,
  `gender_avathar` tinyint(4) DEFAULT 0,
  `office` text DEFAULT NULL,
  `l` varchar(255) DEFAULT NULL COMMENT 'location',
  `st` varchar(255) DEFAULT NULL COMMENT 'state',
  `city` text DEFAULT NULL,
  `co` varchar(255) DEFAULT NULL COMMENT 'country',
  `mail` varchar(255) DEFAULT NULL COMMENT 'email',
  `mobile` varchar(255) DEFAULT NULL COMMENT 'Mobile',
  `department` varchar(255) DEFAULT NULL COMMENT 'department',
  `title` varchar(255) DEFAULT NULL COMMENT 'Designation',
  `description` text DEFAULT NULL COMMENT 'description',
  `building` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `room` text DEFAULT NULL,
  `desk_phone` text DEFAULT NULL,
  `asset_owner` text DEFAULT NULL,
  `asset_keeper` text DEFAULT NULL,
  `reporting_authority` int(11) DEFAULT 0,
  `webportal_login` text DEFAULT NULL,
  `crm_login` text DEFAULT NULL,
  `erp_login` text DEFAULT NULL,
  `sap_login` text DEFAULT NULL,
  `lastaccess` datetime DEFAULT NULL COMMENT 'Last login',
  `logintype` varchar(10) NOT NULL DEFAULT 'local' COMMENT 'Login Type',
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'IS Active',
  `user_active` tinyint(1) NOT NULL DEFAULT 1,
  `createdate` datetime DEFAULT NULL COMMENT 'createdate',
  `mod` varchar(10) NOT NULL DEFAULT 'user' COMMENT 'Login Mode (User/Agent)',
  `pass` varchar(255) DEFAULT NULL,
  `access_type` tinyint(4) DEFAULT 2,
  `is_budgets` tinyint(1) DEFAULT 0,
  `policy_id` tinyint(4) NOT NULL DEFAULT 0,
  `extention_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appuser_upload`
--

CREATE TABLE `appuser_upload` (
  `id` int(11) NOT NULL,
  `autogen_num` varchar(255) DEFAULT NULL,
  `samaccountname` varchar(255) DEFAULT NULL COMMENT 'loginID',
  `givenname` varchar(255) NOT NULL COMMENT 'Display Name',
  `employeeid` varchar(255) NOT NULL COMMENT 'Emoployee ID',
  `gender` tinyint(4) DEFAULT 0,
  `l` varchar(255) DEFAULT NULL COMMENT 'location',
  `st` varchar(255) DEFAULT NULL COMMENT 'state',
  `city` text DEFAULT NULL,
  `co` varchar(255) DEFAULT NULL COMMENT 'country',
  `mail` varchar(255) DEFAULT NULL COMMENT 'email',
  `mobile` varchar(255) DEFAULT NULL COMMENT 'Mobile',
  `department` varchar(255) DEFAULT NULL COMMENT 'department',
  `title` varchar(255) DEFAULT NULL COMMENT 'Designation',
  `building` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `reporting_authority` int(11) DEFAULT 0,
  `createdate` datetime DEFAULT NULL COMMENT 'createdate',
  `created_login` int(11) DEFAULT 0,
  `extention_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_config`
--

CREATE TABLE `app_config` (
  `cid` int(11) NOT NULL,
  `maintenance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetall`
--

CREATE TABLE `assetall` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tag` varchar(35) NOT NULL,
  `serial` varchar(35) NOT NULL,
  `locations_id` varchar(15) NOT NULL,
  `model_id` varchar(15) NOT NULL,
  `manufacturers_id` varchar(15) NOT NULL,
  `employee_id` varchar(25) NOT NULL,
  `date_creation` varchar(35) NOT NULL,
  `created_login` varchar(35) NOT NULL,
  `created_by` int(10) NOT NULL,
  `login_empid` varchar(30) NOT NULL,
  `gid` int(10) NOT NULL,
  `catid` int(10) NOT NULL,
  `tblname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_allocation`
--

CREATE TABLE `assets_allocation` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `asset_table` varchar(255) DEFAULT NULL,
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
-- Table structure for table `assets_status`
--

CREATE TABLE `assets_status` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `status_order` int(11) NOT NULL,
  `dontshowondashboard` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assets_status`
--

INSERT INTO `assets_status` (`id`, `name`, `active`, `status_order`, `dontshowondashboard`) VALUES
(1, 'Un Deployed', 1, 0, 0),
(2, 'Deployed', 1, 0, 0),
(3, 'Un Deployable', 1, 0, 0),
(4, 'Scrap', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assets_substatus`
--

CREATE TABLE `assets_substatus` (
  `id` int(11) NOT NULL,
  `assets_statusid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status_order` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assets_substatus`
--

INSERT INTO `assets_substatus` (`id`, `assets_statusid`, `name`, `status_order`, `active`) VALUES
(1, 1, 'Ready to Deploy', 0, 1),
(2, 1, 'Not Ready', 0, 1),
(3, 1, 'Pending Install', 0, 1),
(4, 1, 'Surrender', 0, 1),
(5, 1, 'Reserved', 0, 1),
(6, 2, 'In use', 0, 1),
(7, 2, 'Not Working', 0, 1),
(8, 2, 'Returned', 0, 1),
(9, 2, 'In Service', 0, 1),
(10, 3, 'Broken', 0, 1),
(11, 3, 'Out for Repair', 0, 1),
(12, 3, 'Out for Diagnostics', 0, 1),
(13, 4, 'Stolen', 0, 1),
(14, 4, 'Lost', 0, 1),
(15, 4, 'Retired', 0, 1),
(16, 4, 'Broken not fixable', 0, 1),
(17, 4, 'Scrap', 0, 1),
(18, 4, 'Duplicate', 0, 1),
(19, 1, 'Out for Transfer', 0, 1),
(20, 1, 'Store', 0, 1),
(21, 3, 'Faulty', 0, 1),
(22, 4, 'Obsoleted', 0, 1),
(23, 4, 'Sale', 0, 1),
(24, 4, 'Company transfer', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assettag_config`
--

CREATE TABLE `assettag_config` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ref_code` varchar(10) DEFAULT NULL,
  `ref_length` tinyint(4) DEFAULT 6,
  `custom_asset_id` int(11) DEFAULT 0,
  `db_table_name` varchar(255) DEFAULT NULL,
  `login_mod` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assettypes`
--

CREATE TABLE `assettypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_amc`
--

CREATE TABLE `asset_amc` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `asset_table` varchar(250) NOT NULL,
  `duration_id` int(11) NOT NULL DEFAULT 0,
  `custom_vendors_id` int(11) DEFAULT 0,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_expire` tinyint(1) NOT NULL DEFAULT 0,
  `created_login` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_amc_details`
--

CREATE TABLE `asset_amc_details` (
  `amcid` int(11) NOT NULL,
  `asset_type` varchar(15) NOT NULL,
  `assetid` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amc_vendor_id` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_comments`
--

CREATE TABLE `asset_comments` (
  `comid` int(11) NOT NULL,
  `comtext` text DEFAULT NULL,
  `aid` int(11) NOT NULL,
  `asset_table` varchar(50) NOT NULL,
  `com_by` int(11) NOT NULL,
  `com_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='asset user comments';

-- --------------------------------------------------------

--
-- Table structure for table `asset_depreciation`
--

CREATE TABLE `asset_depreciation` (
  `id` int(11) NOT NULL,
  `aid` int(11) DEFAULT 0,
  `asset_table` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `original_cost` double DEFAULT NULL,
  `salvage_value` double DEFAULT NULL,
  `useful_life` int(11) DEFAULT 0 COMMENT 'Year',
  `depreciation_cost` double DEFAULT NULL COMMENT 'Per Year',
  `is_active` tinyint(1) DEFAULT 1,
  `created_login` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_depreciation_history`
--

CREATE TABLE `asset_depreciation_history` (
  `id` int(11) NOT NULL,
  `aid` int(11) DEFAULT 0,
  `asset_table` varchar(255) DEFAULT NULL,
  `depreciation_date` date DEFAULT NULL,
  `year` int(11) DEFAULT 0 COMMENT 'Year',
  `depreciation_cost` double DEFAULT NULL COMMENT 'Per Year',
  `book_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_login` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_documents`
--

CREATE TABLE `asset_documents` (
  `attachment_id` int(11) NOT NULL,
  `asset_tablename` varchar(100) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `attachmentname` varchar(250) NOT NULL,
  `path` varchar(255) NOT NULL,
  `filetype` varchar(100) NOT NULL,
  `filesize` varchar(10) NOT NULL,
  `is_assetimage` tinyint(1) NOT NULL DEFAULT 1,
  `is_view` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Computers attachments';

-- --------------------------------------------------------

--
-- Table structure for table `asset_transfer`
--

CREATE TABLE `asset_transfer` (
  `atid` int(11) NOT NULL,
  `transfer_date` datetime DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `transfer_by` int(11) NOT NULL,
  `requested_date` datetime NOT NULL DEFAULT current_timestamp(),
  `approved_by` int(11) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `aid` int(11) NOT NULL,
  `asset_table` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 3 COMMENT 'pending(3),rejected(2),approved(1)',
  `received_by` int(11) DEFAULT NULL,
  `transfer_note` text NOT NULL,
  `approval_note` text DEFAULT NULL,
  `transfer_to` int(11) NOT NULL,
  `transfer_from` int(11) NOT NULL,
  `transfer_vendor` text NOT NULL,
  `transfer_status` int(1) NOT NULL,
  `out_by` int(11) DEFAULT NULL,
  `out_date` datetime DEFAULT NULL,
  `approved_view` tinyint(1) NOT NULL DEFAULT 0,
  `reject_view` tinyint(1) NOT NULL DEFAULT 0,
  `approved_view_date` datetime DEFAULT NULL,
  `reject_view_date` datetime DEFAULT NULL,
  `cancel_by` int(11) DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_transfer_log`
--

CREATE TABLE `asset_transfer_log` (
  `atlid` int(11) NOT NULL,
  `atid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_transfer_srno`
--

CREATE TABLE `asset_transfer_srno` (
  `id` int(15) NOT NULL,
  `aid` int(15) NOT NULL,
  `atid` int(15) NOT NULL,
  `auid` int(15) NOT NULL,
  `yer` int(15) NOT NULL,
  `asset_table` varchar(105) NOT NULL,
  `log_id` int(15) NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_warranty`
--

CREATE TABLE `asset_warranty` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `asset_table` varchar(250) NOT NULL,
  `duration_id` int(11) DEFAULT 0,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_expire` tinyint(1) NOT NULL DEFAULT 0,
  `created_login` int(11) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `auditid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comments` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2 COMMENT '2-not start, 1-started, 3-completed',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_asset_list`
--

CREATE TABLE `audit_asset_list` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `audit_scan_date` datetime NOT NULL DEFAULT current_timestamp(),
  `audit_by` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `db_table_name` varchar(250) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0,
  `is_error` tinyint(1) NOT NULL DEFAULT 0,
  `error_hint` varchar(250) DEFAULT NULL,
  `scandate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_asset_pending_list`
--

CREATE TABLE `audit_asset_pending_list` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `audit_scan_date` datetime NOT NULL DEFAULT current_timestamp(),
  `audit_by` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `db_table_name` varchar(250) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0,
  `is_error` tinyint(1) NOT NULL DEFAULT 0,
  `error_hint` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `broadcaster`
--

CREATE TABLE `broadcaster` (
  `broadcasterid` int(11) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `comname` varchar(255) NOT NULL,
  `frequency` varchar(20) NOT NULL,
  `operatingpower` varchar(20) NOT NULL,
  `txontime` time DEFAULT NULL,
  `txofftime` time DEFAULT NULL,
  `reducedpower` varchar(20) NOT NULL,
  `reducedtime` varchar(250) NOT NULL,
  `txmake` varchar(255) NOT NULL,
  `combinermake` varchar(255) NOT NULL,
  `audiomake` varchar(255) NOT NULL,
  `ctimaintainby` varchar(250) NOT NULL,
  `operatingfromcti` varchar(10) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgetcategories`
--

CREATE TABLE `budgetcategories` (
  `id` int(11) NOT NULL,
  `budgettypes_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` int(11) NOT NULL,
  `budgets_template_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `is_recursive` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,2) NOT NULL DEFAULT 0.00,
  `is_template` tinyint(1) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `budgettypes_id` int(11) NOT NULL DEFAULT 0,
  `budgetcategories_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_approval_type`
--

CREATE TABLE `budgets_approval_type` (
  `id` int(11) NOT NULL,
  `from_value` decimal(20,2) DEFAULT NULL,
  `to_value` decimal(20,2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_approval_user`
--

CREATE TABLE `budgets_approval_user` (
  `id` int(11) NOT NULL,
  `budgets_approval_type_id` int(11) DEFAULT 0,
  `budgettypes_id` int(11) DEFAULT 0,
  `from_value` decimal(20,2) DEFAULT 0.00,
  `to_value` decimal(20,2) DEFAULT 0.00,
  `appuser_id` int(11) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `budgetcategories_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_process_user`
--

CREATE TABLE `budgets_process_user` (
  `id` int(11) NOT NULL,
  `budgets_approval_type_id` int(11) DEFAULT 0,
  `budgettypes_id` int(11) DEFAULT 0,
  `from_value` decimal(20,2) DEFAULT 0.00,
  `to_value` decimal(20,2) DEFAULT 0.00,
  `appuser_id` int(11) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `budgetcategories_id` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_request`
--

CREATE TABLE `budgets_request` (
  `id` int(11) NOT NULL,
  `request_no` varchar(255) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `request_appuser_id` int(11) DEFAULT 0,
  `budgets_template_id` int(11) DEFAULT 0,
  `duration` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `budgettypes_id` int(11) DEFAULT 0,
  `budgetcategories_id` int(11) DEFAULT 0,
  `locations_id` int(11) DEFAULT 0,
  `value` decimal(20,2) NOT NULL DEFAULT 0.00,
  `comment` text DEFAULT NULL,
  `approve_appuser_id` int(11) DEFAULT 0,
  `approve_date` date DEFAULT NULL,
  `approve_value` decimal(20,2) DEFAULT 0.00,
  `approve_comment` text DEFAULT NULL,
  `process_appuser_id` int(11) DEFAULT 0,
  `process_date` date DEFAULT NULL,
  `process_value` decimal(20,2) DEFAULT 0.00,
  `process_comment` text DEFAULT NULL,
  `reject_appuser_id` int(11) DEFAULT 0,
  `reject_date` date DEFAULT NULL,
  `reject_comment` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `budgets_approval_type_id` int(11) DEFAULT 0,
  `approval_user_to_value` decimal(20,2) DEFAULT 0.00,
  `current_request_appuser_id` int(11) DEFAULT 0,
  `order_number` varchar(255) DEFAULT NULL,
  `bill_number` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_request_approval`
--

CREATE TABLE `budgets_request_approval` (
  `id` int(11) NOT NULL,
  `budgets_request_id` int(11) DEFAULT 0,
  `value` decimal(20,2) DEFAULT 0.00,
  `appuser_id` int(11) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_request_log`
--

CREATE TABLE `budgets_request_log` (
  `id` int(11) NOT NULL,
  `budgets_request_id` int(11) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `action_status` varchar(255) DEFAULT NULL,
  `value` decimal(20,2) DEFAULT NULL,
  `is_alert` tinyint(1) DEFAULT 0,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_request_process`
--

CREATE TABLE `budgets_request_process` (
  `id` int(11) NOT NULL,
  `budgets_request_id` int(11) DEFAULT 0,
  `value` decimal(20,2) DEFAULT 0.00,
  `appuser_id` int(11) DEFAULT 0,
  `comment` text DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_status`
--

CREATE TABLE `budgets_status` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `action_name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `status_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgets_template`
--

CREATE TABLE `budgets_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,2) NOT NULL DEFAULT 0.00,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budgettypes`
--

CREATE TABLE `budgettypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `buildid` int(11) NOT NULL,
  `build_name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `com_name` varchar(100) DEFAULT NULL,
  `com_adrs` varchar(200) DEFAULT NULL,
  `com_phn` varchar(100) DEFAULT NULL,
  `cti_name` varchar(100) DEFAULT NULL,
  `cti_adrs` varchar(200) DEFAULT NULL,
  `cti_phn` varchar(100) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_bc_details`
--

CREATE TABLE `company_bc_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `broadcasters` varchar(100) DEFAULT NULL,
  `frequency` varchar(200) DEFAULT NULL,
  `operating_power` varchar(100) DEFAULT NULL,
  `txontime` varchar(100) DEFAULT NULL,
  `txofftime` varchar(200) DEFAULT NULL,
  `power` varchar(100) DEFAULT NULL,
  `timing` varchar(100) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_contact`
--

CREATE TABLE `company_contact` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `com1_name` varchar(200) DEFAULT NULL,
  `com1_phn` varchar(100) DEFAULT NULL,
  `cti1_name` varchar(100) DEFAULT NULL,
  `cti1_phn` varchar(200) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `tot_floors` varchar(100) DEFAULT NULL,
  `fm_floor` varchar(200) DEFAULT NULL,
  `off_sqft` varchar(100) DEFAULT NULL,
  `dgl` varchar(100) DEFAULT NULL,
  `apl` varchar(200) DEFAULT NULL,
  `rf_pole` varchar(100) DEFAULT NULL,
  `rf_tower` varchar(200) DEFAULT NULL,
  `mpls_pole` varchar(200) DEFAULT NULL,
  `mpls_tower` varchar(200) DEFAULT NULL,
  `fm_tow_ht` varchar(200) DEFAULT NULL,
  `fm_tow_pos` varchar(200) DEFAULT NULL,
  `rf_dml` varchar(200) DEFAULT NULL,
  `rf_fr` varchar(200) DEFAULT NULL,
  `rf_ven_dt` varchar(200) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_dg_details`
--

CREATE TABLE `company_dg_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `kva` varchar(200) DEFAULT NULL,
  `dtc` varchar(100) DEFAULT NULL,
  `owl` varchar(100) DEFAULT NULL,
  `amc_vendor` varchar(200) DEFAULT NULL,
  `amf_status` varchar(100) DEFAULT NULL,
  `cti_dtc` varchar(200) DEFAULT NULL,
  `cti_brand` varchar(200) DEFAULT NULL,
  `cti_kva` varchar(200) DEFAULT NULL,
  `cti_bc` varchar(200) DEFAULT NULL,
  `cti_amc_vendor` varchar(200) DEFAULT NULL,
  `cti_amf_pannel` varchar(200) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_eb_details`
--

CREATE TABLE `company_eb_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `off_tap` varchar(100) DEFAULT NULL,
  `off_lcp` varchar(200) DEFAULT NULL,
  `off_rp` varchar(100) DEFAULT NULL,
  `off_apfc` varchar(100) DEFAULT NULL,
  `off_pf` varchar(200) DEFAULT NULL,
  `off_ups_lp` varchar(100) DEFAULT NULL,
  `off_ups_bp` varchar(200) DEFAULT NULL,
  `cti_tap` varchar(200) DEFAULT NULL,
  `cti_lcp` varchar(200) DEFAULT NULL,
  `cti_ups_rp` varchar(200) DEFAULT NULL,
  `cti_ups_lp` varchar(200) DEFAULT NULL,
  `cti_ups_bp` varchar(200) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_logo`
--

CREATE TABLE `company_logo` (
  `lid` int(11) NOT NULL,
  `img` varchar(125) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `note` varchar(250) NOT NULL,
  `skin` varchar(25) NOT NULL DEFAULT 'skin-blue',
  `color` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_type`
--

CREATE TABLE `company_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computerantiviruses`
--

CREATE TABLE `computerantiviruses` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `antivirus_version` varchar(255) DEFAULT NULL,
  `signature_version` varchar(255) DEFAULT NULL,
  `date_expiration` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computerantiviruses_history`
--

CREATE TABLE `computerantiviruses_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `antivirus_version` varchar(255) DEFAULT NULL,
  `signature_version` varchar(255) DEFAULT NULL,
  `date_expiration` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
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
-- Table structure for table `computerdisks`
--

CREATE TABLE `computerdisks` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `mountpoint` varchar(255) DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT 0,
  `totalsize` int(11) NOT NULL DEFAULT 0,
  `freesize` int(11) NOT NULL DEFAULT 0,
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

--
-- Dumping data for table `computerdisks`
--

INSERT INTO `computerdisks` (`id`, `computers_id`, `name`, `device`, `mountpoint`, `filesystems_id`, `totalsize`, `freesize`, `add_type`, `status_id`, `substatus_id`, `date_creation`, `created_login`, `date_mod`, `mod_login`, `is_glpi_id`, `is_glpi_computers_id`, `is_update_type`, `is_view`, `is_status`) VALUES
(4, 10402, 'C:\\', NULL, NULL, 0, 99028, 2442, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(5, 10402, 'D:\\', NULL, NULL, 0, 194192, 118793, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(6, 10402, 'E:\\', NULL, NULL, 0, 194193, 76128, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(7, 10403, 'C:\\', NULL, NULL, 0, 99028, 3523, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(8, 10403, 'D:\\', NULL, NULL, 0, 194192, 118792, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(9, 10403, 'E:\\', NULL, NULL, 0, 194193, 76067, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(10, 1, 'C:\\', NULL, NULL, 0, 99028, 3826, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(11, 1, 'D:\\', NULL, NULL, 0, 194192, 118792, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(12, 1, 'E:\\', NULL, NULL, 0, 194193, 76066, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(13, 10404, 'C:\\', NULL, NULL, 0, 99028, 3521, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(14, 10404, 'D:\\', NULL, NULL, 0, 194192, 118792, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1),
(15, 10404, 'E:\\', NULL, NULL, 0, 194193, 76066, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `computerdisks1`
--

CREATE TABLE `computerdisks1` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `mountpoint` varchar(255) DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT 0,
  `totalsize` int(11) NOT NULL DEFAULT 0,
  `freesize` int(11) NOT NULL DEFAULT 0,
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
-- Table structure for table `computerdisks_history`
--

CREATE TABLE `computerdisks_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `mountpoint` varchar(255) DEFAULT NULL,
  `filesystems_id` int(11) NOT NULL DEFAULT 0,
  `totalsize` int(11) NOT NULL DEFAULT 0,
  `freesize` int(11) NOT NULL DEFAULT 0,
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
-- Table structure for table `computermodels`
--

CREATE TABLE `computermodels` (
  `id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computermodels`
--

INSERT INTO `computermodels` (`id`, `manufacturers_id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 1, 'HP ProBook 440 G3', NULL, NULL, NULL),
(2, 1, 'HP ProDesk 400 G4 MT', NULL, NULL, NULL),
(3, 12, 'HP Z640 Workstation', NULL, NULL, NULL),
(4, 1, 'HP ProDesk 400 G5 MT', NULL, NULL, NULL),
(5, 12, 'HP Pro 3330 MT', NULL, '2019-11-19 15:32:03', NULL),
(6, 12, 'HP Compaq Elite 8300 MT', NULL, NULL, NULL),
(7, 1, 'HP ProDesk 400 G3 MT', NULL, NULL, NULL),
(8, 12, 'HP Compaq dx7400 Small Form Factor.', NULL, NULL, NULL),
(9, 12, 'HP ProDesk 400 G2 MT (TPM DP)', NULL, NULL, NULL),
(10, 12, 'HP ProDesk 400 G2 MT', NULL, NULL, NULL),
(11, 1, 'HP EliteDesk 800 G4 WKS TWR', NULL, NULL, NULL),
(12, 1, 'HP 280 G2 MT (Legacy)', NULL, NULL, NULL),
(13, 12, 'HP Z210 Workstation', NULL, NULL, NULL),
(14, 12, 'HP Pro 3090 Microtower PC', NULL, NULL, NULL),
(15, 12, 'HP Pro 3090 MT', NULL, NULL, NULL),
(16, 1, 'HP Z6 G4 Workstation', NULL, NULL, NULL),
(17, 1, 'HP ProBook 440 G4', NULL, NULL, NULL),
(18, 1, 'ProLiant ML350 Gen9', NULL, NULL, NULL),
(19, 12, '0AB8', NULL, NULL, NULL),
(20, 12, 'HP xw4400 Workstation', NULL, NULL, NULL),
(21, 12, 'HP Z440 Workstation', NULL, NULL, NULL),
(22, 49, 'ProLiant ML350 Gen10', NULL, NULL, NULL),
(23, 12, 'HP ProBook 4540s', NULL, NULL, NULL),
(24, 12, 'HP xw4600 Workstation', NULL, NULL, NULL),
(25, 12, 'HP Compaq 6530s', NULL, NULL, NULL),
(26, 12, 'HP ProBook 440 G2', NULL, NULL, NULL),
(27, 12, 'HP ProBook 4430s', NULL, NULL, NULL),
(28, 12, 'HP ProBook 4440s', NULL, NULL, NULL),
(29, 12, 'HP xw4300 Workstation', NULL, NULL, NULL),
(30, 12, 'HP Compaq dc5800 Small Form Factor', NULL, NULL, NULL),
(31, 1, 'HP 406 G1 MT', NULL, NULL, NULL),
(32, 82, 'TC67yy Series', NULL, NULL, NULL),
(33, 12, 'HP Z440 BASE MODEL', NULL, NULL, NULL),
(34, 12, 'hp workstation xw8200', NULL, NULL, NULL),
(35, 1, 'HP ProBook 440 G5', NULL, NULL, NULL),
(36, 12, 'HP Compaq dx7400 Microtower', NULL, NULL, NULL),
(37, 88, 'P5LD2-VM-CR-SI', NULL, NULL, NULL),
(38, 89, 'H61M-CS', NULL, NULL, NULL),
(39, 12, '198E', NULL, NULL, NULL),
(40, 1, 'ProLiant ML350 G5', NULL, NULL, NULL),
(41, 88, 'HCL Desktop', NULL, NULL, NULL),
(42, 1, 'HP406G1', NULL, NULL, NULL),
(43, 12, 'HP Compaq dx7480 ab MT', NULL, NULL, NULL),
(44, 12, 'HP PRODESK 400 G2', NULL, NULL, NULL),
(45, 12, 'HP 280 G1 MT', NULL, NULL, NULL),
(46, 1, 'ProLiant ML350e Gen8', NULL, NULL, NULL),
(47, 1, '8061', NULL, NULL, NULL),
(48, 12, 'HP Compaq 6000 Pro SFF PC', NULL, NULL, NULL),
(49, 1, 'ProLiant DL380 G4', NULL, NULL, NULL),
(50, 1, 'HP PRO DESK 400 G3 MT', NULL, NULL, NULL),
(51, 1, 'HP 280 G2 MT Business PC', NULL, NULL, NULL),
(52, 12, 'HP Compaq 8000 Elite USDT PC', NULL, NULL, NULL),
(53, 12, 'HP Z230 Tower Workstation', NULL, NULL, NULL),
(54, 108, '167C____', NULL, NULL, NULL),
(55, 1, 'HP ProBook 440 G5 NoteBook PC', NULL, NULL, NULL),
(56, 1, 'HP 200 G3 AiO', NULL, NULL, NULL),
(57, 12, 'HP ProBook 4530s', NULL, NULL, NULL),
(58, 1, '82A1', NULL, NULL, NULL),
(59, 1, 'HP ProBook 440 G6', NULL, NULL, NULL),
(60, 1, '83F0', NULL, NULL, NULL),
(61, 12, '17A0', NULL, NULL, NULL),
(62, 12, 'SLIC-CPC', NULL, NULL, NULL),
(63, 34, 'H81', NULL, NULL, NULL),
(64, 1, 'HP EliteBook 830 G5', NULL, NULL, NULL),
(65, 2, 'H81', NULL, NULL, NULL),
(66, 82, 'BAT-I2', NULL, NULL, NULL),
(67, 165, 'MS-7817', NULL, NULL, NULL),
(68, 1, 'HP Z6 G4 BASE MODEL WORKSTATION', NULL, NULL, NULL),
(69, 1, 'HP EliteOne 800 G6 24 All-in-One PC', NULL, NULL, NULL),
(70, 1, 'HP 240 G8 Notebook PC', NULL, NULL, NULL),
(71, 1, 'HP ELITEBOOK 830 G5 NOTEBOOK PC', NULL, NULL, NULL),
(72, 1, 'HP Z4 G4 Workstation', NULL, NULL, NULL),
(73, 1, 'HP ProBook 450 G4', NULL, NULL, NULL),
(74, 1, 'HP ZBook Firefly 14 inch G8 Mobile Workstation PC', NULL, NULL, NULL),
(75, 1, 'HP ProBook 440 G8 Notebook PC', NULL, NULL, NULL),
(76, 187, 'TravelMate P214-53', NULL, NULL, NULL),
(77, 1, 'HP EliteDesk 800 G4 TWR WS', NULL, NULL, NULL),
(78, 1, 'HP ProBook 440 14 inch G9 Notebook PC', NULL, NULL, NULL),
(79, 0, 'Latitude 5400', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `computers`
--

CREATE TABLE `computers` (
  `id` int(11) NOT NULL,
  `last_sync_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `computertypes_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `computermodels_id` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT 0,
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT 0,
  `operatingsystemservicepacks_id` varchar(25) NOT NULL DEFAULT '0',
  `operatingsystemarchitectures_id` int(11) NOT NULL DEFAULT 0,
  `os_license_number` varchar(255) DEFAULT NULL,
  `os_licenseid` varchar(255) DEFAULT NULL,
  `os_kernel_version` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `domains_id` int(11) NOT NULL DEFAULT 0,
  `networks_id` varchar(15) NOT NULL DEFAULT '0',
  `uuid` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `substatus_id` tinyint(4) DEFAULT NULL,
  `system_username` varchar(255) DEFAULT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_glpi_id` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `oslicenseid` varchar(14) NOT NULL DEFAULT '0',
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_new_computer` tinyint(1) DEFAULT 0,
  `is_new_memory` tinyint(1) DEFAULT 0,
  `is_remove_memory` tinyint(1) DEFAULT 0,
  `is_new_processor` tinyint(1) DEFAULT 0,
  `is_remove_processor` tinyint(1) DEFAULT 0,
  `is_new_harddrive` tinyint(1) DEFAULT 0,
  `is_remove_harddrive` tinyint(1) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0,
  `assettypes_id` int(11) DEFAULT 1,
  `mac` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computers`
--

INSERT INTO `computers` (`id`, `last_sync_date`, `name`, `computertypes_id`, `manufacturers_id`, `computermodels_id`, `serial`, `otherserial`, `operatingsystems_id`, `operatingsystemversions_id`, `operatingsystemservicepacks_id`, `operatingsystemarchitectures_id`, `os_license_number`, `os_licenseid`, `os_kernel_version`, `locations_id`, `domains_id`, `networks_id`, `uuid`, `tag`, `status_id`, `substatus_id`, `system_username`, `employee_id`, `comment`, `date_creation`, `created_login`, `date_mod`, `mod_login`, `is_glpi_id`, `is_update_type`, `add_type`, `is_view`, `is_status`, `oslicenseid`, `is_allocated`, `is_new_computer`, `is_new_memory`, `is_remove_memory`, `is_new_processor`, `is_remove_processor`, `is_new_harddrive`, `is_remove_harddrive`, `is_deleted`, `is_duplicate`, `assettypes_id`, `mac`) VALUES
(1, '2024-02-19 10:07:27', 'ARISH-PC', 11, 44, 79, NULL, NULL, 1, 37, 'Multiprocessor Free', 1, '0', '0', '10.0.22621', 2, 1, '192.168.1.146', '95c2b37f-cee0-11ee-928a-c03eba6cb6ef', 'COM1001', 2, 6, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'AGENT', 0, 1, 1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2d:b6:db:6e:bb:ef');

-- --------------------------------------------------------

--
-- Table structure for table `computers1`
--

CREATE TABLE `computers1` (
  `id` int(11) NOT NULL,
  `last_sync_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `computertypes_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `computermodels_id` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `operatingsystems_id` int(11) NOT NULL DEFAULT 0,
  `operatingsystemversions_id` int(11) NOT NULL DEFAULT 0,
  `operatingsystemservicepacks_id` varchar(25) NOT NULL DEFAULT '0',
  `operatingsystemarchitectures_id` int(11) NOT NULL DEFAULT 0,
  `os_license_number` varchar(255) DEFAULT NULL,
  `os_licenseid` varchar(255) DEFAULT NULL,
  `os_kernel_version` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `domains_id` int(11) NOT NULL DEFAULT 0,
  `networks_id` varchar(15) NOT NULL DEFAULT '0',
  `uuid` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `substatus_id` tinyint(4) DEFAULT NULL,
  `system_username` varchar(255) DEFAULT NULL,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_glpi_id` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `oslicenseid` varchar(14) NOT NULL DEFAULT '0',
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_new_computer` tinyint(1) DEFAULT 0,
  `is_new_memory` tinyint(1) DEFAULT 0,
  `is_remove_memory` tinyint(1) DEFAULT 0,
  `is_new_processor` tinyint(1) DEFAULT 0,
  `is_remove_processor` tinyint(1) DEFAULT 0,
  `is_new_harddrive` tinyint(1) DEFAULT 0,
  `is_remove_harddrive` tinyint(1) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0,
  `assettypes_id` int(11) DEFAULT 1,
  `mac` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_allocation`
--

CREATE TABLE `computers_allocation` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL,
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
-- Table structure for table `computers_items`
--

CREATE TABLE `computers_items` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT 0 COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `id_glpi_items_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `created_login` int(11) NOT NULL,
  `date_creation` datetime NOT NULL,
  `mod_login` int(11) NOT NULL,
  `date_mod` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_devicecontrols`
--

CREATE TABLE `computers_items_devicecontrols` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `interfacetypes_id` int(11) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
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
-- Table structure for table `computers_items_devicecontrols_history`
--

CREATE TABLE `computers_items_devicecontrols_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `interfacetypes_id` int(11) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
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
-- Table structure for table `computers_items_devicedrives`
--

CREATE TABLE `computers_items_devicedrives` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `interfacetypes_id` int(11) NOT NULL,
  `is_writer` tinyint(1) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
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
-- Table structure for table `computers_items_devicedrives_history`
--

CREATE TABLE `computers_items_devicedrives_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `interfacetypes_id` int(11) NOT NULL,
  `is_writer` tinyint(1) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
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
-- Table structure for table `computers_items_devicegraphiccards`
--

CREATE TABLE `computers_items_devicegraphiccards` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `interfacetypes_id` int(11) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `memory` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computers_items_devicegraphiccards`
--

INSERT INTO `computers_items_devicegraphiccards` (`id`, `computers_id`, `itemtype`, `designation`, `interfacetypes_id`, `manufacturers_id`, `memory`, `serial`, `date_creation`, `created_login`, `date_mod`, `mod_login`, `is_glpi_id`, `is_glpi_computers_id`, `is_update_type`, `add_type`, `is_view`, `is_status`) VALUES
(2, 10402, NULL, 'Intel(R) UHD Graphics 620', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1),
(3, 10403, NULL, 'Intel(R) UHD Graphics 620', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1),
(4, 1, NULL, 'Intel(R) UHD Graphics 620', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1),
(5, 10404, NULL, 'Intel(R) UHD Graphics 620', 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_devicegraphiccards_history`
--

CREATE TABLE `computers_items_devicegraphiccards_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `interfacetypes_id` int(11) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `memory` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_deviceharddrives`
--

CREATE TABLE `computers_items_deviceharddrives` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `interfacetypes_id` int(11) NOT NULL DEFAULT 0,
  `rpm` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `add_type` tinyint(1) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL,
  `substatus_id` tinyint(4) NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime NOT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `is_new_harddrive` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computers_items_deviceharddrives`
--

INSERT INTO `computers_items_deviceharddrives` (`id`, `computers_id`, `itemtype`, `tag`, `designation`, `manufacturers_id`, `interfacetypes_id`, `rpm`, `capacity`, `serial`, `add_type`, `status_id`, `substatus_id`, `date_creation`, `created_login`, `date_mod`, `mod_login`, `is_glpi_id`, `is_glpi_computers_id`, `is_update_type`, `is_view`, `is_status`, `is_new_harddrive`) VALUES
(9574, 10402, NULL, '', '\\\\.\\PHYSICALDRIVE0', 4, 3, 'N/A', 488382, 'FJA8N534211308T3Z_00000001.', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '', 1, 1, 0),
(9575, 10403, NULL, '', '\\\\.\\PHYSICALDRIVE0', 4, 3, 'N/A', 488382, 'FJA8N534211308T3Z_00000001.', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '', 1, 1, 0),
(9576, 1, NULL, '', '\\\\.\\PHYSICALDRIVE0', 4, 3, 'N/A', 488382, 'FJA8N534211308T3Z_00000001.', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '', 1, 1, 0),
(9577, 10404, NULL, '', '\\\\.\\PHYSICALDRIVE0', 4, 3, 'N/A', 488382, 'FJA8N534211308T3Z_00000001.', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_deviceharddrives_history`
--

CREATE TABLE `computers_items_deviceharddrives_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `interfacetypes_id` int(11) NOT NULL DEFAULT 0,
  `rpm` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `add_type` tinyint(1) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL,
  `substatus_id` tinyint(4) NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime NOT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `is_new_harddrive` tinyint(1) DEFAULT 1,
  `acknowledge` text DEFAULT NULL,
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_devicememories`
--

CREATE TABLE `computers_items_devicememories` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `frequence` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `devicememorytypes_id` int(11) NOT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) NOT NULL,
  `add_type` tinyint(1) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL,
  `substatus_id` tinyint(4) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `is_new_memory` tinyint(1) DEFAULT 0,
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computers_items_devicememories`
--

INSERT INTO `computers_items_devicememories` (`id`, `computers_id`, `itemtype`, `tag`, `designation`, `frequence`, `manufacturers_id`, `devicememorytypes_id`, `size`, `serial`, `busID`, `add_type`, `status_id`, `substatus_id`, `date_creation`, `created_login`, `date_mod`, `mod_login`, `is_glpi_id`, `is_glpi_computers_id`, `is_update_type`, `is_view`, `is_status`, `is_new_memory`, `remove_login`, `remove_date`, `is_remove_type`) VALUES
(7949, 10402, NULL, '', '', '', 0, 0, 16384, '36BBB18D', '', 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0, 0, NULL, NULL),
(7950, 10403, NULL, '', '', '', 0, 0, 16384, '36BBB18D', '', 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0, 0, NULL, NULL),
(7951, 1, NULL, '', '', '', 0, 0, 16384, '36BBB18D', '', 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0, 0, NULL, NULL),
(7952, 10404, NULL, '', '', '', 0, 0, 16384, '36BBB18D', '', 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_devicememories_history`
--

CREATE TABLE `computers_items_devicememories_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `frequence` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `devicememorytypes_id` int(11) NOT NULL,
  `size` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) NOT NULL,
  `add_type` tinyint(1) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL,
  `substatus_id` tinyint(4) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `is_new_memory` tinyint(1) DEFAULT 1,
  `acknowledge` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_devicenetworkcards`
--

CREATE TABLE `computers_items_devicenetworkcards` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
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
-- Table structure for table `computers_items_devicenetworkcards_history`
--

CREATE TABLE `computers_items_devicenetworkcards_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
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
-- Table structure for table `computers_items_deviceprocessors`
--

CREATE TABLE `computers_items_deviceprocessors` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `nbcores` int(11) DEFAULT NULL,
  `nbthreads` int(11) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL,
  `substatus_id` tinyint(4) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `is_new_processor` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computers_items_deviceprocessors`
--

INSERT INTO `computers_items_deviceprocessors` (`id`, `computers_id`, `itemtype`, `tag`, `manufacturers_id`, `designation`, `frequency`, `serial`, `nbcores`, `nbthreads`, `add_type`, `status_id`, `substatus_id`, `date_creation`, `created_login`, `date_mod`, `mod_login`, `is_glpi_id`, `is_glpi_computers_id`, `is_update_type`, `is_view`, `is_status`, `is_new_processor`) VALUES
(13581, 10402, NULL, '', 0, 'Intel64 Family 6 Model 142 Stepping 12, GenuineIntel', 1600, NULL, 4, 8, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0),
(13582, 10403, NULL, '', 0, 'Intel64 Family 6 Model 142 Stepping 12, GenuineIntel', 1600, NULL, 4, 8, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0),
(13583, 1, NULL, '', 0, 'Intel64 Family 6 Model 142 Stepping 12, GenuineIntel', 1600, NULL, 4, 8, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0),
(13584, 10404, NULL, '', 0, 'Intel64 Family 6 Model 142 Stepping 12, GenuineIntel', 1600, NULL, 4, 8, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_deviceprocessors_history`
--

CREATE TABLE `computers_items_deviceprocessors_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL DEFAULT 0,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `tag` varchar(50) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `nbcores` int(11) DEFAULT NULL,
  `nbthreads` int(11) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) NOT NULL,
  `substatus_id` tinyint(4) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `is_new_processor` tinyint(1) DEFAULT 1,
  `acknowledge` text DEFAULT NULL,
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_devicesoundcards`
--

CREATE TABLE `computers_items_devicesoundcards` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computers_items_devicesoundcards`
--

INSERT INTO `computers_items_devicesoundcards` (`id`, `computers_id`, `itemtype`, `designation`, `manufacturers_id`, `serial`, `date_creation`, `created_login`, `date_mod`, `mod_login`, `is_glpi_id`, `is_glpi_computers_id`, `is_update_type`, `add_type`, `is_view`, `is_status`) VALUES
(16612, 10402, NULL, 'Speakers/Headphones (Realtek(R)', 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1),
(16613, 10403, NULL, 'Speakers/Headphones (Realtek(R)', 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1),
(16614, 1, NULL, 'Speakers/Headphones (Realtek(R)', 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1),
(16615, 10404, NULL, 'Speakers/Headphones (Realtek(R)', 0, NULL, NULL, 0, NULL, 0, 0, 0, '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `computers_items_devicesoundcards_history`
--

CREATE TABLE `computers_items_devicesoundcards_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_log`
--

CREATE TABLE `computers_log` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL,
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
-- Table structure for table `computers_softwarelicenses`
--

CREATE TABLE `computers_softwarelicenses` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `softwarelicenses_id` int(11) NOT NULL DEFAULT 0,
  `install_date` date DEFAULT NULL,
  `uninstall_date` date DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_softwareversions`
--

CREATE TABLE `computers_softwareversions` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `softwareversions_id` int(11) NOT NULL DEFAULT 0,
  `date_install` varchar(20) DEFAULT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `softwarelicenses_id` int(11) DEFAULT 0,
  `is_blacklist` tinyint(1) NOT NULL DEFAULT 0,
  `is_free` tinyint(1) DEFAULT 0,
  `add_type` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computers_softwareversions_history`
--

CREATE TABLE `computers_softwareversions_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) DEFAULT 0,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `softwareversions_id` int(11) NOT NULL DEFAULT 0,
  `date_install` varchar(20) DEFAULT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE',
  `softwarelicenses_id` int(11) DEFAULT 0,
  `is_blacklist` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-default,1-blacklist to whitelist',
  `add_type` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT 0,
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computertypegroups_map`
--

CREATE TABLE `computertypegroups_map` (
  `id` int(11) NOT NULL,
  `computertypegroups_id` int(11) DEFAULT 0,
  `computertypes_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `computertypes`
--

CREATE TABLE `computertypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `computertypes`
--

INSERT INTO `computertypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'Notebook', NULL, NULL, NULL),
(2, 'Desktop', NULL, NULL, NULL),
(3, 'Mini Tower', NULL, NULL, NULL),
(4, 'Physical', NULL, NULL, NULL),
(5, 'Tower', NULL, NULL, NULL),
(6, 'Low Profile Desktop', NULL, NULL, NULL),
(7, 'Rack Mount Chassis', NULL, NULL, NULL),
(8, 'Space-Saving', NULL, NULL, NULL),
(9, 'All in One', NULL, NULL, NULL),
(10, 'Unknown', NULL, NULL, NULL),
(11, 'Laptop', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `config_itemtype`
--

CREATE TABLE `config_itemtype` (
  `id` int(11) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `menu_page` varchar(255) NOT NULL,
  `db_name` varchar(255) DEFAULT NULL,
  `isview` tinyint(1) DEFAULT 1,
  `is_top_view` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `vendors_id` int(11) DEFAULT 0,
  `contracttypes_id` int(11) DEFAULT 0,
  `contractsubtypes_id` int(11) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `remainder` int(11) DEFAULT 0,
  `due_date` date DEFAULT NULL,
  `term` text DEFAULT NULL,
  `contract_status_id` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `login_creation` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contractsubtypes`
--

CREATE TABLE `contractsubtypes` (
  `id` int(11) NOT NULL,
  `contracttypes_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracttypes`
--

CREATE TABLE `contracttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_status`
--

CREATE TABLE `contract_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionstatus_id` int(11) DEFAULT 0 COMMENT '1-Renewals,2-Closed,3-Terminate',
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_assets`
--

CREATE TABLE `cron_assets` (
  `id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cti_details`
--

CREATE TABLE `cti_details` (
  `cti_id` int(11) NOT NULL,
  `premises` varchar(250) NOT NULL,
  `maintainedby` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(250) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cti_dg`
--

CREATE TABLE `cti_dg` (
  `dgid` int(11) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `kva` varchar(50) DEFAULT NULL,
  `noofdg` varchar(50) DEFAULT NULL,
  `amfstatus` varchar(50) DEFAULT NULL,
  `dgsharedno` varchar(50) DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `cti_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cti_eb`
--

CREATE TABLE `cti_eb` (
  `ebid` int(11) NOT NULL,
  `totalpower` varchar(50) NOT NULL,
  `loadpower` varchar(50) NOT NULL,
  `apfcstatus` varchar(50) NOT NULL,
  `apfccapacity` varchar(250) NOT NULL,
  `powervalue` varchar(250) NOT NULL,
  `upsoppower` varchar(50) NOT NULL,
  `upsbkptime` varchar(250) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `cti_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cti_infra`
--

CREATE TABLE `cti_infra` (
  `infraid` int(11) NOT NULL,
  `fmtowerheight` varchar(250) NOT NULL,
  `antmountheight` varchar(250) NOT NULL,
  `dishmount` varchar(50) DEFAULT NULL,
  `rffrequency` varchar(50) DEFAULT NULL,
  `offtoctidistance` varchar(250) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `cti_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cti_team_details`
--

CREATE TABLE `cti_team_details` (
  `teamid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `cti_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customassetdelete`
--

CREATE TABLE `customassetdelete` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `insurance` varchar(50) NOT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` varchar(106) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` varchar(30) DEFAULT NULL,
  `mod_login` varchar(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0,
  `tablename` varchar(50) NOT NULL,
  `cid` int(10) NOT NULL,
  `gid` varchar(10) NOT NULL,
  `catid` varchar(10) NOT NULL,
  `sts` int(2) NOT NULL,
  `date_deleted` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_`
--

CREATE TABLE `customasset_` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_1`
--

CREATE TABLE `customasset_1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_2`
--

CREATE TABLE `customasset_2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_3`
--

CREATE TABLE `customasset_3` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_4`
--

CREATE TABLE `customasset_4` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0,
  `field856` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_5`
--

CREATE TABLE `customasset_5` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_6`
--

CREATE TABLE `customasset_6` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_7`
--

CREATE TABLE `customasset_7` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_8`
--

CREATE TABLE `customasset_8` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_9`
--

CREATE TABLE `customasset_9` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_10`
--

CREATE TABLE `customasset_10` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_11`
--

CREATE TABLE `customasset_11` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_12`
--

CREATE TABLE `customasset_12` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_13`
--

CREATE TABLE `customasset_13` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_14`
--

CREATE TABLE `customasset_14` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_15`
--

CREATE TABLE `customasset_15` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_16`
--

CREATE TABLE `customasset_16` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_17`
--

CREATE TABLE `customasset_17` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_18`
--

CREATE TABLE `customasset_18` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_19`
--

CREATE TABLE `customasset_19` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_20`
--

CREATE TABLE `customasset_20` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_21`
--

CREATE TABLE `customasset_21` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_22`
--

CREATE TABLE `customasset_22` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_23`
--

CREATE TABLE `customasset_23` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_24`
--

CREATE TABLE `customasset_24` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_24_bkp`
--

CREATE TABLE `customasset_24_bkp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_25`
--

CREATE TABLE `customasset_25` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_26`
--

CREATE TABLE `customasset_26` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_27`
--

CREATE TABLE `customasset_27` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_28`
--

CREATE TABLE `customasset_28` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_29`
--

CREATE TABLE `customasset_29` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_30`
--

CREATE TABLE `customasset_30` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_31`
--

CREATE TABLE `customasset_31` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_32`
--

CREATE TABLE `customasset_32` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_33`
--

CREATE TABLE `customasset_33` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_34`
--

CREATE TABLE `customasset_34` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_35`
--

CREATE TABLE `customasset_35` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_36`
--

CREATE TABLE `customasset_36` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_37`
--

CREATE TABLE `customasset_37` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_38`
--

CREATE TABLE `customasset_38` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_39`
--

CREATE TABLE `customasset_39` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_40`
--

CREATE TABLE `customasset_40` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_41`
--

CREATE TABLE `customasset_41` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_42`
--

CREATE TABLE `customasset_42` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_43`
--

CREATE TABLE `customasset_43` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_44`
--

CREATE TABLE `customasset_44` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_45`
--

CREATE TABLE `customasset_45` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_46`
--

CREATE TABLE `customasset_46` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_47`
--

CREATE TABLE `customasset_47` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_48`
--

CREATE TABLE `customasset_48` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_49`
--

CREATE TABLE `customasset_49` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_50`
--

CREATE TABLE `customasset_50` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_51`
--

CREATE TABLE `customasset_51` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_52`
--

CREATE TABLE `customasset_52` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_53`
--

CREATE TABLE `customasset_53` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_54`
--

CREATE TABLE `customasset_54` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_55`
--

CREATE TABLE `customasset_55` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_56`
--

CREATE TABLE `customasset_56` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_57`
--

CREATE TABLE `customasset_57` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_58`
--

CREATE TABLE `customasset_58` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_59`
--

CREATE TABLE `customasset_59` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_60`
--

CREATE TABLE `customasset_60` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_61`
--

CREATE TABLE `customasset_61` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_62`
--

CREATE TABLE `customasset_62` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_63`
--

CREATE TABLE `customasset_63` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_64`
--

CREATE TABLE `customasset_64` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_65`
--

CREATE TABLE `customasset_65` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_66`
--

CREATE TABLE `customasset_66` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_67`
--

CREATE TABLE `customasset_67` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_68`
--

CREATE TABLE `customasset_68` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_69`
--

CREATE TABLE `customasset_69` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_70`
--

CREATE TABLE `customasset_70` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_71`
--

CREATE TABLE `customasset_71` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_72`
--

CREATE TABLE `customasset_72` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_73`
--

CREATE TABLE `customasset_73` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_74`
--

CREATE TABLE `customasset_74` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0,
  `field855` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_75`
--

CREATE TABLE `customasset_75` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_76`
--

CREATE TABLE `customasset_76` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_77`
--

CREATE TABLE `customasset_77` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_78`
--

CREATE TABLE `customasset_78` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_79`
--

CREATE TABLE `customasset_79` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_80`
--

CREATE TABLE `customasset_80` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_81`
--

CREATE TABLE `customasset_81` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_82`
--

CREATE TABLE `customasset_82` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_83`
--

CREATE TABLE `customasset_83` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_84`
--

CREATE TABLE `customasset_84` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_85`
--

CREATE TABLE `customasset_85` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_86`
--

CREATE TABLE `customasset_86` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_87`
--

CREATE TABLE `customasset_87` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_88`
--

CREATE TABLE `customasset_88` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_89`
--

CREATE TABLE `customasset_89` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_90`
--

CREATE TABLE `customasset_90` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_91`
--

CREATE TABLE `customasset_91` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_92`
--

CREATE TABLE `customasset_92` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_93`
--

CREATE TABLE `customasset_93` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_94`
--

CREATE TABLE `customasset_94` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_95`
--

CREATE TABLE `customasset_95` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_96`
--

CREATE TABLE `customasset_96` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_97`
--

CREATE TABLE `customasset_97` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_98`
--

CREATE TABLE `customasset_98` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_99`
--

CREATE TABLE `customasset_99` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_100`
--

CREATE TABLE `customasset_100` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_101`
--

CREATE TABLE `customasset_101` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_102`
--

CREATE TABLE `customasset_102` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_103`
--

CREATE TABLE `customasset_103` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_104`
--

CREATE TABLE `customasset_104` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_105`
--

CREATE TABLE `customasset_105` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_106`
--

CREATE TABLE `customasset_106` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_107`
--

CREATE TABLE `customasset_107` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_108`
--

CREATE TABLE `customasset_108` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_all`
--

CREATE TABLE `customasset_all` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_catid`
--

CREATE TABLE `customasset_catid` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_catid_template`
--

CREATE TABLE `customasset_catid_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_computers`
--

CREATE TABLE `customasset_computers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_log`
--

CREATE TABLE `customasset_log` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `asset_table` varchar(255) DEFAULT NULL,
  `items_id` int(11) NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `is_alert` tinyint(1) DEFAULT 0,
  `items_dbname` varchar(255) DEFAULT NULL,
  `remarks` text NOT NULL,
  `date_creation` datetime NOT NULL,
  `created_login` int(11) NOT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `sql` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_new`
--

CREATE TABLE `customasset_new` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `default_3` varchar(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL,
  `is_update_type` varchar(255) DEFAULT NULL,
  `add_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Agent,1-WMI,2-Manual',
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) DEFAULT NULL,
  `is_allocated` tinyint(1) DEFAULT 0,
  `is_duplicate` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customasset_upload`
--

CREATE TABLE `customasset_upload` (
  `id` int(11) NOT NULL,
  `autogen_num` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `model_id` int(11) NOT NULL DEFAULT 0,
  `manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `default_1` varchar(255) DEFAULT NULL,
  `default_2` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `status_id` tinyint(4) DEFAULT 0,
  `substatus_id` tinyint(4) DEFAULT 0,
  `date_creation` datetime DEFAULT current_timestamp(),
  `created_login` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_asset_groups`
--

CREATE TABLE `custom_asset_groups` (
  `cagid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_asset_group_models`
--

CREATE TABLE `custom_asset_group_models` (
  `id` int(11) NOT NULL,
  `cagid` int(11) DEFAULT 0,
  `camodelid` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_asset_manufacturers`
--

CREATE TABLE `custom_asset_manufacturers` (
  `camid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_asset_model`
--

CREATE TABLE `custom_asset_model` (
  `ca_model_id` int(11) NOT NULL,
  `camid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT NULL,
  `catid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_asset_templates`
--

CREATE TABLE `custom_asset_templates` (
  `catempid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `field_type` varchar(10) NOT NULL DEFAULT 'varchar',
  `field_length` int(11) NOT NULL DEFAULT 50,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `custom_asset_templates`
--

INSERT INTO `custom_asset_templates` (`catempid`, `catid`, `field_name`, `field_type`, `field_length`, `active`, `is_deleted`, `created_date`, `is_default`) VALUES
(1102, 103, 'Name', 'varchar', 255, 1, 0, '2024-02-16 12:23:05', 1),
(1103, 103, 'Type', 'dropdown', 11, 1, 0, '2024-02-16 12:23:05', 1),
(1104, 103, 'Manufacturer', 'dropdown', 11, 1, 0, '2024-02-16 12:23:05', 1),
(1105, 103, 'Model', 'dropdown', 11, 1, 0, '2024-02-16 12:23:05', 1),
(1106, 103, 'Serial Number', 'varchar', 255, 1, 0, '2024-02-16 12:23:05', 1),
(1107, 103, 'Inventory number', 'varchar', 255, 1, 0, '2024-02-16 12:23:05', 1),
(1108, 103, 'Location', 'dropdown', 11, 1, 0, '2024-02-16 12:23:05', 1),
(1109, 103, 'Asset Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:05', 1),
(1110, 103, 'Asset Sub Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:05', 1),
(1111, 104, 'Name', 'varchar', 255, 1, 0, '2024-02-16 12:23:20', 1),
(1112, 104, 'Type', 'dropdown', 11, 1, 0, '2024-02-16 12:23:20', 1),
(1113, 104, 'Manufacturer', 'dropdown', 11, 1, 0, '2024-02-16 12:23:20', 1),
(1114, 104, 'Model', 'dropdown', 11, 1, 0, '2024-02-16 12:23:20', 1),
(1115, 104, 'Serial Number', 'varchar', 255, 1, 0, '2024-02-16 12:23:20', 1),
(1116, 104, 'Inventory number', 'varchar', 255, 1, 0, '2024-02-16 12:23:20', 1),
(1117, 104, 'Location', 'dropdown', 11, 1, 0, '2024-02-16 12:23:20', 1),
(1118, 104, 'Asset Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:20', 1),
(1119, 104, 'Asset Sub Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:20', 1),
(1120, 105, 'Name', 'varchar', 255, 1, 0, '2024-02-16 12:23:33', 1),
(1121, 105, 'Type', 'dropdown', 11, 1, 0, '2024-02-16 12:23:33', 1),
(1122, 105, 'Manufacturer', 'dropdown', 11, 1, 0, '2024-02-16 12:23:33', 1),
(1123, 105, 'Model', 'dropdown', 11, 1, 0, '2024-02-16 12:23:33', 1),
(1124, 105, 'Serial Number', 'varchar', 255, 1, 0, '2024-02-16 12:23:33', 1),
(1125, 105, 'Inventory number', 'varchar', 255, 1, 0, '2024-02-16 12:23:33', 1),
(1126, 105, 'Location', 'dropdown', 11, 1, 0, '2024-02-16 12:23:33', 1),
(1127, 105, 'Asset Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:33', 1),
(1128, 105, 'Asset Sub Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:33', 1),
(1129, 106, 'Name', 'varchar', 255, 1, 0, '2024-02-16 12:23:40', 1),
(1130, 106, 'Type', 'dropdown', 11, 1, 0, '2024-02-16 12:23:40', 1),
(1131, 106, 'Manufacturer', 'dropdown', 11, 1, 0, '2024-02-16 12:23:40', 1),
(1132, 106, 'Model', 'dropdown', 11, 1, 0, '2024-02-16 12:23:40', 1),
(1133, 106, 'Serial Number', 'varchar', 255, 1, 0, '2024-02-16 12:23:40', 1),
(1134, 106, 'Inventory number', 'varchar', 255, 1, 0, '2024-02-16 12:23:40', 1),
(1135, 106, 'Location', 'dropdown', 11, 1, 0, '2024-02-16 12:23:40', 1),
(1136, 106, 'Asset Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:40', 1),
(1137, 106, 'Asset Sub Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:40', 1),
(1138, 107, 'Name', 'varchar', 255, 1, 0, '2024-02-16 12:23:57', 1),
(1139, 107, 'Type', 'dropdown', 11, 1, 0, '2024-02-16 12:23:57', 1),
(1140, 107, 'Manufacturer', 'dropdown', 11, 1, 0, '2024-02-16 12:23:57', 1),
(1141, 107, 'Model', 'dropdown', 11, 1, 0, '2024-02-16 12:23:57', 1),
(1142, 107, 'Serial Number', 'varchar', 255, 1, 0, '2024-02-16 12:23:57', 1),
(1143, 107, 'Inventory number', 'varchar', 255, 1, 0, '2024-02-16 12:23:57', 1),
(1144, 107, 'Location', 'dropdown', 11, 1, 0, '2024-02-16 12:23:57', 1),
(1145, 107, 'Asset Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:57', 1),
(1146, 107, 'Asset Sub Status', 'dropdown', 11, 1, 0, '2024-02-16 12:23:57', 1),
(1147, 108, 'Name', 'varchar', 255, 1, 0, '2024-02-16 12:30:15', 1),
(1148, 108, 'Type', 'dropdown', 11, 1, 0, '2024-02-16 12:30:15', 1),
(1149, 108, 'Manufacturer', 'dropdown', 11, 1, 0, '2024-02-16 12:30:15', 1),
(1150, 108, 'Model', 'dropdown', 11, 1, 0, '2024-02-16 12:30:15', 1),
(1151, 108, 'Serial Number', 'varchar', 255, 1, 0, '2024-02-16 12:30:15', 1),
(1152, 108, 'Inventory number', 'varchar', 255, 1, 0, '2024-02-16 12:30:15', 1),
(1153, 108, 'Location', 'dropdown', 11, 1, 0, '2024-02-16 12:30:15', 1),
(1154, 108, 'Asset Status', 'dropdown', 11, 1, 0, '2024-02-16 12:30:15', 1),
(1155, 108, 'Asset Sub Status', 'dropdown', 11, 1, 0, '2024-02-16 12:30:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_asset_type`
--

CREATE TABLE `custom_asset_type` (
  `camid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_asset_types`
--

CREATE TABLE `custom_asset_types` (
  `catid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gid` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `custom_asset_types`
--

INSERT INTO `custom_asset_types` (`catid`, `name`, `gid`, `active`, `created_date`, `is_deleted`) VALUES
(103, 'Desktop', 11, 1, '2024-02-16 12:22:05', 0),
(104, 'Servers', 11, 1, '2024-02-16 12:23:06', 0),
(105, 'Switches', 11, 1, '2024-02-16 12:23:22', 0),
(106, 'Firewall', 11, 1, '2024-02-16 12:23:34', 0),
(107, 'Wifi Devices', 11, 1, '2024-02-16 12:23:42', 0),
(108, 'Laptop', 11, 1, '2024-02-16 12:29:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_cat_groups`
--

CREATE TABLE `custom_cat_groups` (
  `gid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `custom_cat_groups`
--

INSERT INTO `custom_cat_groups` (`gid`, `name`, `active`, `is_deleted`, `created_date`) VALUES
(11, 'IT', 1, 0, '2024-02-16 12:19:16'),
(12, 'IT WITHOUT AGENT', 0, 0, '2024-02-16 12:19:52'),
(13, 'NON IT', 1, 0, '2024-02-16 12:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `custom_vendors`
--

CREATE TABLE `custom_vendors` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `locations_id` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `inactive_date` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `business_unit` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designationid` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devicememorytypes`
--

CREATE TABLE `devicememorytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discovery`
--

CREATE TABLE `discovery` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `fromip` varchar(16) NOT NULL,
  `toip` varchar(16) NOT NULL,
  `scancount` int(11) NOT NULL,
  `addby` int(11) NOT NULL,
  `addon` datetime DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `is_recursive` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `host` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pwrd` varchar(255) NOT NULL,
  `port` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` int(11) UNSIGNED NOT NULL,
  `tpl_id` int(11) UNSIGNED NOT NULL,
  `code_name` varchar(32) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `title` varchar(250) NOT NULL,
  `user` enum('Agent','End-User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_group`
--

CREATE TABLE `email_template_group` (
  `tpl_id` int(11) NOT NULL,
  `isactive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL DEFAULT '',
  `lang` varchar(16) NOT NULL DEFAULT 'en_US',
  `notes` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `departments_id` int(11) DEFAULT 0,
  `designations_id` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `date_creation` datetime DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `created_login` int(11) DEFAULT 0,
  `mod_login` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filesystems`
--

CREATE TABLE `filesystems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finance_year`
--

CREATE TABLE `finance_year` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `floorid` int(11) NOT NULL,
  `floor_name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fusioninventory_agents`
--

CREATE TABLE `fusioninventory_agents` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `is_recursive` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `lock` tinyint(1) NOT NULL DEFAULT 0,
  `device_id` varchar(255) DEFAULT NULL COMMENT 'XML <DEVICE_ID> TAG VALUE',
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `threads_networkdiscovery` int(4) NOT NULL DEFAULT 1 COMMENT 'array(xmltag=>value)',
  `threads_networkinventory` int(4) NOT NULL DEFAULT 1 COMMENT 'array(xmltag=>value)',
  `senddico` tinyint(1) NOT NULL DEFAULT 0,
  `timeout_networkdiscovery` int(4) NOT NULL DEFAULT 0 COMMENT 'Network Discovery task timeout (disabled by default)',
  `timeout_networkinventory` int(4) NOT NULL DEFAULT 0 COMMENT 'Network Inventory task timeout (disabled by default)',
  `agent_port` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fusioninventory_computerlicenseinfos`
--

CREATE TABLE `fusioninventory_computerlicenseinfos` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `softwarelicenses_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `is_update` tinyint(1) NOT NULL DEFAULT 0,
  `is_oem` tinyint(1) NOT NULL DEFAULT 0,
  `activation_date` datetime DEFAULT NULL,
  `is_glpi_id` int(11) DEFAULT 0,
  `is_glpi_computers_id` int(11) DEFAULT 0,
  `is_update_type` varchar(255) DEFAULT NULL,
  `is_view` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fusioninventory_computerlicenseinfos_history`
--

CREATE TABLE `fusioninventory_computerlicenseinfos_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `softwarelicenses_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `is_update` tinyint(1) NOT NULL DEFAULT 0,
  `is_oem` tinyint(1) NOT NULL DEFAULT 0,
  `activation_date` datetime DEFAULT NULL,
  `is_glpi_id` int(11) DEFAULT 0,
  `is_glpi_computers_id` int(11) DEFAULT 0,
  `is_update_type` varchar(255) DEFAULT NULL,
  `is_view` tinyint(1) DEFAULT 1,
  `remove_login` int(11) DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gradeid` int(11) NOT NULL,
  `grade_name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee`
--

CREATE TABLE `hr_employee` (
  `eid` int(11) NOT NULL,
  `empid` varchar(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `companyid` int(11) NOT NULL,
  `emp_building` int(11) NOT NULL,
  `emp_floor` int(11) NOT NULL,
  `gradeid` int(11) NOT NULL,
  `business_unit` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `designationid` int(11) NOT NULL,
  `emp_mail` varchar(100) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_landline` varchar(50) NOT NULL,
  `locationid` varchar(100) NOT NULL,
  `custom_typeid` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `emp_type` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `active` int(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infocoms`
--

CREATE TABLE `infocoms` (
  `id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `is_recursive` tinyint(1) NOT NULL DEFAULT 0,
  `order_date` date DEFAULT NULL,
  `buy_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `decommission_date` datetime DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT 0,
  `warranty_date` date DEFAULT NULL,
  `warranty_expire_date` date DEFAULT NULL,
  `warranty_info` varchar(255) DEFAULT NULL,
  `suppliers_id` int(11) NOT NULL DEFAULT 0,
  `order_number` varchar(255) DEFAULT NULL,
  `reference_number` text DEFAULT NULL,
  `delivery_number` varchar(255) DEFAULT NULL,
  `immo_number` varchar(255) DEFAULT NULL,
  `value` decimal(20,2) NOT NULL DEFAULT 0.00,
  `warranty_value` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `sink_time` int(11) NOT NULL DEFAULT 0,
  `sink_type` int(11) NOT NULL DEFAULT 0,
  `sink_coeff` float NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `budgets_id` int(11) NOT NULL DEFAULT 0,
  `alert` int(11) NOT NULL DEFAULT 0,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infocoms_warranty`
--

CREATE TABLE `infocoms_warranty` (
  `id` int(11) NOT NULL,
  `infocoms_id` int(11) DEFAULT 0,
  `warranty_date` date NOT NULL,
  `warranty_expire_date` date NOT NULL,
  `warranty_duration` int(11) NOT NULL,
  `warranty_info` text NOT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `action_status` varchar(255) DEFAULT NULL,
  `created_login` int(11) NOT NULL DEFAULT 0,
  `date_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interfacetypes`
--

CREATE TABLE `interfacetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` datetime DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interfacetypes`
--

INSERT INTO `interfacetypes` (`id`, `name`, `comment`, `date_mod`, `date_creation`) VALUES
(1, 'IDE', NULL, NULL, NULL),
(2, '0', NULL, NULL, NULL),
(3, 'SCSI', NULL, NULL, NULL),
(4, 'DVD-ROM', NULL, NULL, NULL),
(5, 'DVD Writer', NULL, NULL, NULL),
(6, 'UNKNOWN', NULL, NULL, NULL),
(7, 'CD Writer', NULL, NULL, NULL),
(8, 'CD-ROM', NULL, NULL, NULL),
(9, 'USB', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `internet_details`
--

CREATE TABLE `internet_details` (
  `internetid` int(11) NOT NULL,
  `internetvendor` varchar(255) NOT NULL,
  `internetconnection` varchar(250) NOT NULL,
  `internetbandwidth` varchar(50) DEFAULT NULL,
  `internetarc` double(20,2) DEFAULT 0.00,
  `internetpayment` varchar(50) DEFAULT NULL,
  `totalstaticip` varchar(50) DEFAULT NULL,
  `wifi` varchar(50) DEFAULT NULL,
  `securitydeposit` double(20,2) DEFAULT 0.00,
  `planwithtelephone` varchar(50) DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT 1,
  `off_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventorycomputercomputers`
--

CREATE TABLE `inventorycomputercomputers` (
  `id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL DEFAULT 0,
  `bios_date` datetime DEFAULT NULL,
  `bios_version` varchar(255) DEFAULT NULL,
  `bios_manufacturers_id` int(11) NOT NULL DEFAULT 0,
  `operatingsystem_installationdate` datetime DEFAULT NULL,
  `winowner` varchar(255) DEFAULT NULL,
  `wincompany` varchar(255) DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `remote_addr` varchar(255) DEFAULT NULL,
  `computeroperatingsystems_id` int(11) NOT NULL DEFAULT 0,
  `oscomment` text DEFAULT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_glpi_computers_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_view` tinyint(1) NOT NULL DEFAULT 1,
  `is_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'NEW,UPDATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ipaddresses`
--

CREATE TABLE `ipaddresses` (
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `items_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `version` tinyint(3) UNSIGNED DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `binary_0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `binary_1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `binary_2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `binary_3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_view` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `is_glpi_mainitems_id` int(11) NOT NULL DEFAULT 0,
  `mainitemtype` varchar(255) DEFAULT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_glpi_items_id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ipaddresses_history`
--

CREATE TABLE `ipaddresses_history` (
  `history_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `entities_id` int(11) NOT NULL DEFAULT 0,
  `items_id` int(11) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `version` tinyint(3) UNSIGNED DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `binary_0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `binary_1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `binary_2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `binary_3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_view` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(1) NOT NULL DEFAULT 0,
  `is_glpi_mainitems_id` int(11) NOT NULL DEFAULT 0,
  `mainitemtype` varchar(255) DEFAULT NULL,
  `is_glpi_id` int(11) NOT NULL,
  `is_update_type` varchar(255) NOT NULL,
  `is_glpi_items_id` int(11) NOT NULL,
  `computers_id` int(11) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `created_login` int(11) NOT NULL,
  `date_mod` datetime DEFAULT NULL,
  `mod_login` int(11) NOT NULL,
  `remove_login` int(11) NOT NULL DEFAULT 0,
  `remove_date` datetime DEFAULT NULL,
  `is_remove_type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_policy_menus`
--
ALTER TABLE `access_policy_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acl_page`
--
ALTER TABLE `acl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acl_page_2`
--
ALTER TABLE `acl_page_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adsync_config`
--
ALTER TABLE `adsync_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `approver`
--
ALTER TABLE `approver`
  ADD PRIMARY KEY (`approver`);

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appuser_2`
--
ALTER TABLE `appuser_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appuser_bkp`
--
ALTER TABLE `appuser_bkp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appuser_upload`
--
ALTER TABLE `appuser_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `samaccountname` (`samaccountname`),
  ADD KEY `l` (`l`);

--
-- Indexes for table `app_config`
--
ALTER TABLE `app_config`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `assetall`
--
ALTER TABLE `assetall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets_allocation`
--
ALTER TABLE `assets_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets_status`
--
ALTER TABLE `assets_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets_substatus`
--
ALTER TABLE `assets_substatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assettag_config`
--
ALTER TABLE `assettag_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assettypes`
--
ALTER TABLE `assettypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `asset_amc`
--
ALTER TABLE `asset_amc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_amc_details`
--
ALTER TABLE `asset_amc_details`
  ADD PRIMARY KEY (`amcid`);

--
-- Indexes for table `asset_comments`
--
ALTER TABLE `asset_comments`
  ADD PRIMARY KEY (`comid`);

--
-- Indexes for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_depreciation_history`
--
ALTER TABLE `asset_depreciation_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_documents`
--
ALTER TABLE `asset_documents`
  ADD PRIMARY KEY (`attachment_id`);

--
-- Indexes for table `asset_transfer`
--
ALTER TABLE `asset_transfer`
  ADD PRIMARY KEY (`atid`);

--
-- Indexes for table `asset_transfer_log`
--
ALTER TABLE `asset_transfer_log`
  ADD PRIMARY KEY (`atlid`),
  ADD KEY `atid` (`atid`);

--
-- Indexes for table `asset_transfer_srno`
--
ALTER TABLE `asset_transfer_srno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_warranty`
--
ALTER TABLE `asset_warranty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`auditid`);

--
-- Indexes for table `audit_asset_list`
--
ALTER TABLE `audit_asset_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `audit_asset_pending_list`
--
ALTER TABLE `audit_asset_pending_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `broadcaster`
--
ALTER TABLE `broadcaster`
  ADD PRIMARY KEY (`broadcasterid`);

--
-- Indexes for table `budgetcategories`
--
ALTER TABLE `budgetcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `is_template` (`is_template`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `budgettypes_id` (`budgettypes_id`);

--
-- Indexes for table `budgets_approval_type`
--
ALTER TABLE `budgets_approval_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `budgets_approval_user`
--
ALTER TABLE `budgets_approval_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `budgets_process_user`
--
ALTER TABLE `budgets_process_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `budgets_request`
--
ALTER TABLE `budgets_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `budgets_request_approval`
--
ALTER TABLE `budgets_request_approval`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `budgets_request_log`
--
ALTER TABLE `budgets_request_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets_request_process`
--
ALTER TABLE `budgets_request_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `budgets_status`
--
ALTER TABLE `budgets_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets_template`
--
ALTER TABLE `budgets_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `locations_id` (`locations_id`);

--
-- Indexes for table `budgettypes`
--
ALTER TABLE `budgettypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`buildid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_bc_details`
--
ALTER TABLE `company_bc_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_contact`
--
ALTER TABLE `company_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_dg_details`
--
ALTER TABLE `company_dg_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_eb_details`
--
ALTER TABLE `company_eb_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_logo`
--
ALTER TABLE `company_logo`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `company_type`
--
ALTER TABLE `company_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computerantiviruses`
--
ALTER TABLE `computerantiviruses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `antivirus_version` (`antivirus_version`),
  ADD KEY `signature_version` (`signature_version`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `date_expiration` (`date_expiration`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computerantiviruses_history`
--
ALTER TABLE `computerantiviruses_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `antivirus_version` (`antivirus_version`),
  ADD KEY `signature_version` (`signature_version`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `date_expiration` (`date_expiration`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computerdisks`
--
ALTER TABLE `computerdisks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `device` (`device`),
  ADD KEY `mountpoint` (`mountpoint`),
  ADD KEY `totalsize` (`totalsize`),
  ADD KEY `freesize` (`freesize`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `filesystems_id` (`filesystems_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computerdisks1`
--
ALTER TABLE `computerdisks1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `device` (`device`),
  ADD KEY `mountpoint` (`mountpoint`),
  ADD KEY `totalsize` (`totalsize`),
  ADD KEY `freesize` (`freesize`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `filesystems_id` (`filesystems_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computerdisks_history`
--
ALTER TABLE `computerdisks_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `device` (`device`),
  ADD KEY `mountpoint` (`mountpoint`),
  ADD KEY `totalsize` (`totalsize`),
  ADD KEY `freesize` (`freesize`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `filesystems_id` (`filesystems_id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computermodels`
--
ALTER TABLE `computermodels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `computermodels_id` (`computermodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `operatingsystems_id` (`operatingsystems_id`),
  ADD KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  ADD KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  ADD KEY `operatingsystemarchitectures_id` (`operatingsystemarchitectures_id`),
  ADD KEY `computertypes_id` (`computertypes_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `computers1`
--
ALTER TABLE `computers1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `name` (`name`),
  ADD KEY `domains_id` (`domains_id`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `computermodels_id` (`computermodels_id`),
  ADD KEY `networks_id` (`networks_id`),
  ADD KEY `operatingsystems_id` (`operatingsystems_id`),
  ADD KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  ADD KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  ADD KEY `operatingsystemarchitectures_id` (`operatingsystemarchitectures_id`),
  ADD KEY `computertypes_id` (`computertypes_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `uuid` (`uuid`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `computers_allocation`
--
ALTER TABLE `computers_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computers_items`
--
ALTER TABLE `computers_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `item` (`itemtype`,`items_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `computers_items_devicecontrols`
--
ALTER TABLE `computers_items_devicecontrols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicecontrols_history`
--
ALTER TABLE `computers_items_devicecontrols_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicedrives`
--
ALTER TABLE `computers_items_devicedrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicedrives_history`
--
ALTER TABLE `computers_items_devicedrives_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicegraphiccards`
--
ALTER TABLE `computers_items_devicegraphiccards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`memory`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicegraphiccards_history`
--
ALTER TABLE `computers_items_devicegraphiccards_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`memory`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_deviceharddrives`
--
ALTER TABLE `computers_items_deviceharddrives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`capacity`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_deviceharddrives_history`
--
ALTER TABLE `computers_items_deviceharddrives_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`capacity`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicememories`
--
ALTER TABLE `computers_items_devicememories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`size`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicememories_history`
--
ALTER TABLE `computers_items_devicememories_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`size`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicenetworkcards`
--
ALTER TABLE `computers_items_devicenetworkcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`mac`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicenetworkcards_history`
--
ALTER TABLE `computers_items_devicenetworkcards_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`mac`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_deviceprocessors`
--
ALTER TABLE `computers_items_deviceprocessors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`frequency`),
  ADD KEY `serial` (`serial`),
  ADD KEY `nbcores` (`nbcores`),
  ADD KEY `nbthreads` (`nbthreads`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_deviceprocessors_history`
--
ALTER TABLE `computers_items_deviceprocessors_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `specificity` (`frequency`),
  ADD KEY `serial` (`serial`),
  ADD KEY `nbcores` (`nbcores`),
  ADD KEY `nbthreads` (`nbthreads`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicesoundcards`
--
ALTER TABLE `computers_items_devicesoundcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_items_devicesoundcards_history`
--
ALTER TABLE `computers_items_devicesoundcards_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `serial` (`serial`),
  ADD KEY `item` (`itemtype`,`computers_id`);

--
-- Indexes for table `computers_log`
--
ALTER TABLE `computers_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computers_softwarelicenses`
--
ALTER TABLE `computers_softwarelicenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `softwarelicenses_id` (`softwarelicenses_id`),
  ADD KEY `is_deleted` (`is_deleted`);

--
-- Indexes for table `computers_softwareversions`
--
ALTER TABLE `computers_softwareversions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  ADD KEY `softwareversions_id` (`softwareversions_id`),
  ADD KEY `date_install` (`date_install`);

--
-- Indexes for table `computers_softwareversions_history`
--
ALTER TABLE `computers_softwareversions_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `unicity` (`computers_id`,`softwareversions_id`),
  ADD KEY `softwareversions_id` (`softwareversions_id`),
  ADD KEY `date_install` (`date_install`);

--
-- Indexes for table `computertypegroups_map`
--
ALTER TABLE `computertypegroups_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `computertypes`
--
ALTER TABLE `computertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `config_itemtype`
--
ALTER TABLE `config_itemtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractsubtypes`
--
ALTER TABLE `contractsubtypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `contracttypes`
--
ALTER TABLE `contracttypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `contract_status`
--
ALTER TABLE `contract_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_assets`
--
ALTER TABLE `cron_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cti_details`
--
ALTER TABLE `cti_details`
  ADD PRIMARY KEY (`cti_id`);

--
-- Indexes for table `cti_dg`
--
ALTER TABLE `cti_dg`
  ADD PRIMARY KEY (`dgid`);

--
-- Indexes for table `cti_eb`
--
ALTER TABLE `cti_eb`
  ADD PRIMARY KEY (`ebid`);

--
-- Indexes for table `cti_infra`
--
ALTER TABLE `cti_infra`
  ADD PRIMARY KEY (`infraid`);

--
-- Indexes for table `cti_team_details`
--
ALTER TABLE `cti_team_details`
  ADD PRIMARY KEY (`teamid`);

--
-- Indexes for table `customassetdelete`
--
ALTER TABLE `customassetdelete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_`
--
ALTER TABLE `customasset_`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_1`
--
ALTER TABLE `customasset_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_2`
--
ALTER TABLE `customasset_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_3`
--
ALTER TABLE `customasset_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_4`
--
ALTER TABLE `customasset_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_5`
--
ALTER TABLE `customasset_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_6`
--
ALTER TABLE `customasset_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_7`
--
ALTER TABLE `customasset_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_8`
--
ALTER TABLE `customasset_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_9`
--
ALTER TABLE `customasset_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_10`
--
ALTER TABLE `customasset_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_11`
--
ALTER TABLE `customasset_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_12`
--
ALTER TABLE `customasset_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_13`
--
ALTER TABLE `customasset_13`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_14`
--
ALTER TABLE `customasset_14`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_15`
--
ALTER TABLE `customasset_15`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_16`
--
ALTER TABLE `customasset_16`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_17`
--
ALTER TABLE `customasset_17`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_18`
--
ALTER TABLE `customasset_18`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_19`
--
ALTER TABLE `customasset_19`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_20`
--
ALTER TABLE `customasset_20`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_21`
--
ALTER TABLE `customasset_21`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_22`
--
ALTER TABLE `customasset_22`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_23`
--
ALTER TABLE `customasset_23`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_24`
--
ALTER TABLE `customasset_24`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_24_bkp`
--
ALTER TABLE `customasset_24_bkp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_25`
--
ALTER TABLE `customasset_25`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_26`
--
ALTER TABLE `customasset_26`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_27`
--
ALTER TABLE `customasset_27`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_28`
--
ALTER TABLE `customasset_28`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_29`
--
ALTER TABLE `customasset_29`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_30`
--
ALTER TABLE `customasset_30`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_31`
--
ALTER TABLE `customasset_31`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_32`
--
ALTER TABLE `customasset_32`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_33`
--
ALTER TABLE `customasset_33`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_34`
--
ALTER TABLE `customasset_34`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_35`
--
ALTER TABLE `customasset_35`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_36`
--
ALTER TABLE `customasset_36`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_37`
--
ALTER TABLE `customasset_37`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_38`
--
ALTER TABLE `customasset_38`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_39`
--
ALTER TABLE `customasset_39`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_40`
--
ALTER TABLE `customasset_40`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_41`
--
ALTER TABLE `customasset_41`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_42`
--
ALTER TABLE `customasset_42`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_43`
--
ALTER TABLE `customasset_43`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_44`
--
ALTER TABLE `customasset_44`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_45`
--
ALTER TABLE `customasset_45`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_46`
--
ALTER TABLE `customasset_46`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_47`
--
ALTER TABLE `customasset_47`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_48`
--
ALTER TABLE `customasset_48`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_49`
--
ALTER TABLE `customasset_49`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_50`
--
ALTER TABLE `customasset_50`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_51`
--
ALTER TABLE `customasset_51`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_52`
--
ALTER TABLE `customasset_52`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_53`
--
ALTER TABLE `customasset_53`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_54`
--
ALTER TABLE `customasset_54`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_55`
--
ALTER TABLE `customasset_55`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_56`
--
ALTER TABLE `customasset_56`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_57`
--
ALTER TABLE `customasset_57`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_58`
--
ALTER TABLE `customasset_58`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_59`
--
ALTER TABLE `customasset_59`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_60`
--
ALTER TABLE `customasset_60`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_61`
--
ALTER TABLE `customasset_61`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_62`
--
ALTER TABLE `customasset_62`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_63`
--
ALTER TABLE `customasset_63`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_64`
--
ALTER TABLE `customasset_64`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_65`
--
ALTER TABLE `customasset_65`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_66`
--
ALTER TABLE `customasset_66`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_67`
--
ALTER TABLE `customasset_67`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_68`
--
ALTER TABLE `customasset_68`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_69`
--
ALTER TABLE `customasset_69`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_70`
--
ALTER TABLE `customasset_70`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_71`
--
ALTER TABLE `customasset_71`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_72`
--
ALTER TABLE `customasset_72`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_73`
--
ALTER TABLE `customasset_73`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_74`
--
ALTER TABLE `customasset_74`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_75`
--
ALTER TABLE `customasset_75`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_76`
--
ALTER TABLE `customasset_76`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_77`
--
ALTER TABLE `customasset_77`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_78`
--
ALTER TABLE `customasset_78`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_79`
--
ALTER TABLE `customasset_79`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_80`
--
ALTER TABLE `customasset_80`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_81`
--
ALTER TABLE `customasset_81`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_82`
--
ALTER TABLE `customasset_82`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_83`
--
ALTER TABLE `customasset_83`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_84`
--
ALTER TABLE `customasset_84`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_85`
--
ALTER TABLE `customasset_85`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_86`
--
ALTER TABLE `customasset_86`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_87`
--
ALTER TABLE `customasset_87`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_88`
--
ALTER TABLE `customasset_88`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_89`
--
ALTER TABLE `customasset_89`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_90`
--
ALTER TABLE `customasset_90`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_91`
--
ALTER TABLE `customasset_91`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_92`
--
ALTER TABLE `customasset_92`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_93`
--
ALTER TABLE `customasset_93`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_94`
--
ALTER TABLE `customasset_94`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_95`
--
ALTER TABLE `customasset_95`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_96`
--
ALTER TABLE `customasset_96`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_97`
--
ALTER TABLE `customasset_97`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_98`
--
ALTER TABLE `customasset_98`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_99`
--
ALTER TABLE `customasset_99`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_100`
--
ALTER TABLE `customasset_100`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_101`
--
ALTER TABLE `customasset_101`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_102`
--
ALTER TABLE `customasset_102`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_103`
--
ALTER TABLE `customasset_103`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_104`
--
ALTER TABLE `customasset_104`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_105`
--
ALTER TABLE `customasset_105`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_106`
--
ALTER TABLE `customasset_106`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_107`
--
ALTER TABLE `customasset_107`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_108`
--
ALTER TABLE `customasset_108`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_all`
--
ALTER TABLE `customasset_all`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_catid`
--
ALTER TABLE `customasset_catid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_catid_template`
--
ALTER TABLE `customasset_catid_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_computers`
--
ALTER TABLE `customasset_computers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_log`
--
ALTER TABLE `customasset_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customasset_new`
--
ALTER TABLE `customasset_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `customasset_upload`
--
ALTER TABLE `customasset_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `manufacturers_id` (`manufacturers_id`),
  ADD KEY `users_id` (`employee_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `monitormodels_id` (`model_id`),
  ADD KEY `monitortypes_id` (`type_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `serial` (`serial`),
  ADD KEY `otherserial` (`otherserial`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `custom_asset_groups`
--
ALTER TABLE `custom_asset_groups`
  ADD PRIMARY KEY (`cagid`);

--
-- Indexes for table `custom_asset_group_models`
--
ALTER TABLE `custom_asset_group_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_asset_manufacturers`
--
ALTER TABLE `custom_asset_manufacturers`
  ADD PRIMARY KEY (`camid`);

--
-- Indexes for table `custom_asset_model`
--
ALTER TABLE `custom_asset_model`
  ADD PRIMARY KEY (`ca_model_id`);

--
-- Indexes for table `custom_asset_templates`
--
ALTER TABLE `custom_asset_templates`
  ADD PRIMARY KEY (`catempid`);

--
-- Indexes for table `custom_asset_type`
--
ALTER TABLE `custom_asset_type`
  ADD PRIMARY KEY (`camid`);

--
-- Indexes for table `custom_asset_types`
--
ALTER TABLE `custom_asset_types`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `custom_cat_groups`
--
ALTER TABLE `custom_cat_groups`
  ADD PRIMARY KEY (`gid`) USING BTREE;

--
-- Indexes for table `custom_vendors`
--
ALTER TABLE `custom_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designationid`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `devicememorytypes`
--
ALTER TABLE `devicememorytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `discovery`
--
ALTER TABLE `discovery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `template_lookup` (`tpl_id`,`code_name`);

--
-- Indexes for table `email_template_group`
--
ALTER TABLE `email_template_group`
  ADD PRIMARY KEY (`tpl_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filesystems`
--
ALTER TABLE `filesystems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `finance_year`
--
ALTER TABLE `finance_year`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`floorid`);

--
-- Indexes for table `fusioninventory_agents`
--
ALTER TABLE `fusioninventory_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `device_id` (`device_id`),
  ADD KEY `computers_id` (`computers_id`);

--
-- Indexes for table `fusioninventory_computerlicenseinfos`
--
ALTER TABLE `fusioninventory_computerlicenseinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `fullname` (`fullname`);

--
-- Indexes for table `fusioninventory_computerlicenseinfos_history`
--
ALTER TABLE `fusioninventory_computerlicenseinfos_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `name` (`name`),
  ADD KEY `fullname` (`fullname`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeid`);

--
-- Indexes for table `hr_employee`
--
ALTER TABLE `hr_employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `infocoms`
--
ALTER TABLE `infocoms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  ADD KEY `buy_date` (`buy_date`),
  ADD KEY `alert` (`alert`),
  ADD KEY `budgets_id` (`budgets_id`),
  ADD KEY `suppliers_id` (`suppliers_id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `infocoms_warranty`
--
ALTER TABLE `infocoms_warranty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interfacetypes`
--
ALTER TABLE `interfacetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `date_creation` (`date_creation`);

--
-- Indexes for table `internet_details`
--
ALTER TABLE `internet_details`
  ADD PRIMARY KEY (`internetid`);

--
-- Indexes for table `inventorycomputercomputers`
--
ALTER TABLE `inventorycomputercomputers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `computers_id` (`computers_id`),
  ADD KEY `last_fusioninventory_update` (`last_update_date`);

--
-- Indexes for table `ipaddresses`
--
ALTER TABLE `ipaddresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `textual` (`name`),
  ADD KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  ADD KEY `mainitem` (`mainitemtype`,`is_glpi_mainitems_id`,`is_deleted`);

--
-- Indexes for table `ipaddresses_history`
--
ALTER TABLE `ipaddresses_history`
  ADD PRIMARY KEY (`history_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `textual` (`name`),
  ADD KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  ADD KEY `mainitem` (`mainitemtype`,`is_glpi_mainitems_id`,`is_deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_policy_menus`
--
ALTER TABLE `access_policy_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `acl_page`
--
ALTER TABLE `acl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1676;

--
-- AUTO_INCREMENT for table `acl_page_2`
--
ALTER TABLE `acl_page_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1386;

--
-- AUTO_INCREMENT for table `adsync_config`
--
ALTER TABLE `adsync_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `approver`
--
ALTER TABLE `approver`
  MODIFY `approver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1807;

--
-- AUTO_INCREMENT for table `appuser_2`
--
ALTER TABLE `appuser_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1244;

--
-- AUTO_INCREMENT for table `appuser_bkp`
--
ALTER TABLE `appuser_bkp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `appuser_upload`
--
ALTER TABLE `appuser_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_config`
--
ALTER TABLE `app_config`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetall`
--
ALTER TABLE `assetall`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets_allocation`
--
ALTER TABLE `assets_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19680;

--
-- AUTO_INCREMENT for table `assets_status`
--
ALTER TABLE `assets_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assets_substatus`
--
ALTER TABLE `assets_substatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `assettag_config`
--
ALTER TABLE `assettag_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `assettypes`
--
ALTER TABLE `assettypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `asset_amc`
--
ALTER TABLE `asset_amc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `asset_amc_details`
--
ALTER TABLE `asset_amc_details`
  MODIFY `amcid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_comments`
--
ALTER TABLE `asset_comments`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5737;

--
-- AUTO_INCREMENT for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_depreciation_history`
--
ALTER TABLE `asset_depreciation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_documents`
--
ALTER TABLE `asset_documents`
  MODIFY `attachment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18317;

--
-- AUTO_INCREMENT for table `asset_transfer`
--
ALTER TABLE `asset_transfer`
  MODIFY `atid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1760;

--
-- AUTO_INCREMENT for table `asset_transfer_log`
--
ALTER TABLE `asset_transfer_log`
  MODIFY `atlid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5565;

--
-- AUTO_INCREMENT for table `asset_transfer_srno`
--
ALTER TABLE `asset_transfer_srno`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `asset_warranty`
--
ALTER TABLE `asset_warranty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `auditid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audit_asset_list`
--
ALTER TABLE `audit_asset_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `audit_asset_pending_list`
--
ALTER TABLE `audit_asset_pending_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `broadcaster`
--
ALTER TABLE `broadcaster`
  MODIFY `broadcasterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1072;

--
-- AUTO_INCREMENT for table `budgetcategories`
--
ALTER TABLE `budgetcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_approval_type`
--
ALTER TABLE `budgets_approval_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_approval_user`
--
ALTER TABLE `budgets_approval_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_process_user`
--
ALTER TABLE `budgets_process_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_request`
--
ALTER TABLE `budgets_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_request_approval`
--
ALTER TABLE `budgets_request_approval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_request_log`
--
ALTER TABLE `budgets_request_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_request_process`
--
ALTER TABLE `budgets_request_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_status`
--
ALTER TABLE `budgets_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgets_template`
--
ALTER TABLE `budgets_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budgettypes`
--
ALTER TABLE `budgettypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `buildid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `company_bc_details`
--
ALTER TABLE `company_bc_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1347;

--
-- AUTO_INCREMENT for table `company_contact`
--
ALTER TABLE `company_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1307;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `company_dg_details`
--
ALTER TABLE `company_dg_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `company_eb_details`
--
ALTER TABLE `company_eb_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `company_logo`
--
ALTER TABLE `company_logo`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_type`
--
ALTER TABLE `company_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `computerantiviruses`
--
ALTER TABLE `computerantiviruses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22073;

--
-- AUTO_INCREMENT for table `computerantiviruses_history`
--
ALTER TABLE `computerantiviruses_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18605;

--
-- AUTO_INCREMENT for table `computerdisks`
--
ALTER TABLE `computerdisks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `computerdisks1`
--
ALTER TABLE `computerdisks1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47995;

--
-- AUTO_INCREMENT for table `computerdisks_history`
--
ALTER TABLE `computerdisks_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38397;

--
-- AUTO_INCREMENT for table `computermodels`
--
ALTER TABLE `computermodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `computers`
--
ALTER TABLE `computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `computers1`
--
ALTER TABLE `computers1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2389;

--
-- AUTO_INCREMENT for table `computers_allocation`
--
ALTER TABLE `computers_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `computers_items`
--
ALTER TABLE `computers_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3418;

--
-- AUTO_INCREMENT for table `computers_items_devicecontrols`
--
ALTER TABLE `computers_items_devicecontrols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204724;

--
-- AUTO_INCREMENT for table `computers_items_devicecontrols_history`
--
ALTER TABLE `computers_items_devicecontrols_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158341;

--
-- AUTO_INCREMENT for table `computers_items_devicedrives`
--
ALTER TABLE `computers_items_devicedrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2096;

--
-- AUTO_INCREMENT for table `computers_items_devicedrives_history`
--
ALTER TABLE `computers_items_devicedrives_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1360;

--
-- AUTO_INCREMENT for table `computers_items_devicegraphiccards`
--
ALTER TABLE `computers_items_devicegraphiccards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `computers_items_devicegraphiccards_history`
--
ALTER TABLE `computers_items_devicegraphiccards_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computers_items_deviceharddrives`
--
ALTER TABLE `computers_items_deviceharddrives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9578;

--
-- AUTO_INCREMENT for table `computers_items_deviceharddrives_history`
--
ALTER TABLE `computers_items_deviceharddrives_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6917;

--
-- AUTO_INCREMENT for table `computers_items_devicememories`
--
ALTER TABLE `computers_items_devicememories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7953;

--
-- AUTO_INCREMENT for table `computers_items_devicememories_history`
--
ALTER TABLE `computers_items_devicememories_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4200;

--
-- AUTO_INCREMENT for table `computers_items_devicenetworkcards`
--
ALTER TABLE `computers_items_devicenetworkcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13174;

--
-- AUTO_INCREMENT for table `computers_items_devicenetworkcards_history`
--
ALTER TABLE `computers_items_devicenetworkcards_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10930;

--
-- AUTO_INCREMENT for table `computers_items_deviceprocessors`
--
ALTER TABLE `computers_items_deviceprocessors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13585;

--
-- AUTO_INCREMENT for table `computers_items_deviceprocessors_history`
--
ALTER TABLE `computers_items_deviceprocessors_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11118;

--
-- AUTO_INCREMENT for table `computers_items_devicesoundcards`
--
ALTER TABLE `computers_items_devicesoundcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16616;

--
-- AUTO_INCREMENT for table `computers_items_devicesoundcards_history`
--
ALTER TABLE `computers_items_devicesoundcards_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12854;

--
-- AUTO_INCREMENT for table `computers_log`
--
ALTER TABLE `computers_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111324;

--
-- AUTO_INCREMENT for table `computers_softwarelicenses`
--
ALTER TABLE `computers_softwarelicenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computers_softwareversions`
--
ALTER TABLE `computers_softwareversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307043;

--
-- AUTO_INCREMENT for table `computers_softwareversions_history`
--
ALTER TABLE `computers_softwareversions_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `computertypegroups_map`
--
ALTER TABLE `computertypegroups_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `computertypes`
--
ALTER TABLE `computertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `config_itemtype`
--
ALTER TABLE `config_itemtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contractsubtypes`
--
ALTER TABLE `contractsubtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracttypes`
--
ALTER TABLE `contracttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_status`
--
ALTER TABLE `contract_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cron_assets`
--
ALTER TABLE `cron_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cti_details`
--
ALTER TABLE `cti_details`
  MODIFY `cti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `cti_dg`
--
ALTER TABLE `cti_dg`
  MODIFY `dgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `cti_eb`
--
ALTER TABLE `cti_eb`
  MODIFY `ebid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `cti_infra`
--
ALTER TABLE `cti_infra`
  MODIFY `infraid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `cti_team_details`
--
ALTER TABLE `cti_team_details`
  MODIFY `teamid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- AUTO_INCREMENT for table `customassetdelete`
--
ALTER TABLE `customassetdelete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;

--
-- AUTO_INCREMENT for table `customasset_`
--
ALTER TABLE `customasset_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_1`
--
ALTER TABLE `customasset_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `customasset_2`
--
ALTER TABLE `customasset_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `customasset_3`
--
ALTER TABLE `customasset_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `customasset_4`
--
ALTER TABLE `customasset_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1176;

--
-- AUTO_INCREMENT for table `customasset_5`
--
ALTER TABLE `customasset_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `customasset_6`
--
ALTER TABLE `customasset_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT for table `customasset_7`
--
ALTER TABLE `customasset_7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `customasset_8`
--
ALTER TABLE `customasset_8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customasset_9`
--
ALTER TABLE `customasset_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `customasset_10`
--
ALTER TABLE `customasset_10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `customasset_11`
--
ALTER TABLE `customasset_11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;

--
-- AUTO_INCREMENT for table `customasset_12`
--
ALTER TABLE `customasset_12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `customasset_13`
--
ALTER TABLE `customasset_13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `customasset_14`
--
ALTER TABLE `customasset_14`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `customasset_15`
--
ALTER TABLE `customasset_15`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `customasset_16`
--
ALTER TABLE `customasset_16`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `customasset_17`
--
ALTER TABLE `customasset_17`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `customasset_18`
--
ALTER TABLE `customasset_18`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `customasset_19`
--
ALTER TABLE `customasset_19`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `customasset_20`
--
ALTER TABLE `customasset_20`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `customasset_21`
--
ALTER TABLE `customasset_21`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `customasset_22`
--
ALTER TABLE `customasset_22`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `customasset_23`
--
ALTER TABLE `customasset_23`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `customasset_24`
--
ALTER TABLE `customasset_24`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1202;

--
-- AUTO_INCREMENT for table `customasset_24_bkp`
--
ALTER TABLE `customasset_24_bkp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1199;

--
-- AUTO_INCREMENT for table `customasset_25`
--
ALTER TABLE `customasset_25`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `customasset_26`
--
ALTER TABLE `customasset_26`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `customasset_27`
--
ALTER TABLE `customasset_27`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `customasset_28`
--
ALTER TABLE `customasset_28`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `customasset_29`
--
ALTER TABLE `customasset_29`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `customasset_30`
--
ALTER TABLE `customasset_30`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `customasset_31`
--
ALTER TABLE `customasset_31`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `customasset_32`
--
ALTER TABLE `customasset_32`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `customasset_33`
--
ALTER TABLE `customasset_33`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `customasset_34`
--
ALTER TABLE `customasset_34`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `customasset_35`
--
ALTER TABLE `customasset_35`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1388;

--
-- AUTO_INCREMENT for table `customasset_36`
--
ALTER TABLE `customasset_36`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `customasset_37`
--
ALTER TABLE `customasset_37`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `customasset_38`
--
ALTER TABLE `customasset_38`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `customasset_39`
--
ALTER TABLE `customasset_39`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT for table `customasset_40`
--
ALTER TABLE `customasset_40`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `customasset_41`
--
ALTER TABLE `customasset_41`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `customasset_42`
--
ALTER TABLE `customasset_42`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `customasset_43`
--
ALTER TABLE `customasset_43`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `customasset_44`
--
ALTER TABLE `customasset_44`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `customasset_45`
--
ALTER TABLE `customasset_45`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `customasset_46`
--
ALTER TABLE `customasset_46`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `customasset_47`
--
ALTER TABLE `customasset_47`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `customasset_48`
--
ALTER TABLE `customasset_48`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `customasset_49`
--
ALTER TABLE `customasset_49`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `customasset_50`
--
ALTER TABLE `customasset_50`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `customasset_51`
--
ALTER TABLE `customasset_51`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `customasset_52`
--
ALTER TABLE `customasset_52`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `customasset_53`
--
ALTER TABLE `customasset_53`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `customasset_54`
--
ALTER TABLE `customasset_54`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=814;

--
-- AUTO_INCREMENT for table `customasset_55`
--
ALTER TABLE `customasset_55`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `customasset_56`
--
ALTER TABLE `customasset_56`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customasset_57`
--
ALTER TABLE `customasset_57`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `customasset_58`
--
ALTER TABLE `customasset_58`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `customasset_59`
--
ALTER TABLE `customasset_59`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customasset_60`
--
ALTER TABLE `customasset_60`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customasset_61`
--
ALTER TABLE `customasset_61`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `customasset_62`
--
ALTER TABLE `customasset_62`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `customasset_63`
--
ALTER TABLE `customasset_63`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `customasset_64`
--
ALTER TABLE `customasset_64`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `customasset_65`
--
ALTER TABLE `customasset_65`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customasset_66`
--
ALTER TABLE `customasset_66`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `customasset_67`
--
ALTER TABLE `customasset_67`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `customasset_68`
--
ALTER TABLE `customasset_68`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customasset_69`
--
ALTER TABLE `customasset_69`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customasset_70`
--
ALTER TABLE `customasset_70`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customasset_71`
--
ALTER TABLE `customasset_71`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customasset_72`
--
ALTER TABLE `customasset_72`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1078;

--
-- AUTO_INCREMENT for table `customasset_73`
--
ALTER TABLE `customasset_73`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `customasset_74`
--
ALTER TABLE `customasset_74`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `customasset_75`
--
ALTER TABLE `customasset_75`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customasset_76`
--
ALTER TABLE `customasset_76`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `customasset_77`
--
ALTER TABLE `customasset_77`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customasset_78`
--
ALTER TABLE `customasset_78`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `customasset_79`
--
ALTER TABLE `customasset_79`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `customasset_80`
--
ALTER TABLE `customasset_80`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customasset_81`
--
ALTER TABLE `customasset_81`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `customasset_82`
--
ALTER TABLE `customasset_82`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `customasset_83`
--
ALTER TABLE `customasset_83`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `customasset_84`
--
ALTER TABLE `customasset_84`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customasset_85`
--
ALTER TABLE `customasset_85`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `customasset_86`
--
ALTER TABLE `customasset_86`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `customasset_87`
--
ALTER TABLE `customasset_87`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customasset_88`
--
ALTER TABLE `customasset_88`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `customasset_89`
--
ALTER TABLE `customasset_89`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customasset_90`
--
ALTER TABLE `customasset_90`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `customasset_91`
--
ALTER TABLE `customasset_91`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `customasset_92`
--
ALTER TABLE `customasset_92`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customasset_93`
--
ALTER TABLE `customasset_93`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_94`
--
ALTER TABLE `customasset_94`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customasset_95`
--
ALTER TABLE `customasset_95`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customasset_96`
--
ALTER TABLE `customasset_96`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_97`
--
ALTER TABLE `customasset_97`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT for table `customasset_98`
--
ALTER TABLE `customasset_98`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customasset_99`
--
ALTER TABLE `customasset_99`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `customasset_100`
--
ALTER TABLE `customasset_100`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `customasset_101`
--
ALTER TABLE `customasset_101`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customasset_102`
--
ALTER TABLE `customasset_102`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customasset_103`
--
ALTER TABLE `customasset_103`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_104`
--
ALTER TABLE `customasset_104`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_105`
--
ALTER TABLE `customasset_105`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_106`
--
ALTER TABLE `customasset_106`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_107`
--
ALTER TABLE `customasset_107`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_108`
--
ALTER TABLE `customasset_108`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_all`
--
ALTER TABLE `customasset_all`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_catid`
--
ALTER TABLE `customasset_catid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_catid_template`
--
ALTER TABLE `customasset_catid_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `customasset_computers`
--
ALTER TABLE `customasset_computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customasset_log`
--
ALTER TABLE `customasset_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54929;

--
-- AUTO_INCREMENT for table `customasset_new`
--
ALTER TABLE `customasset_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `customasset_upload`
--
ALTER TABLE `customasset_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4104;

--
-- AUTO_INCREMENT for table `custom_asset_groups`
--
ALTER TABLE `custom_asset_groups`
  MODIFY `cagid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `custom_asset_group_models`
--
ALTER TABLE `custom_asset_group_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `custom_asset_manufacturers`
--
ALTER TABLE `custom_asset_manufacturers`
  MODIFY `camid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1279;

--
-- AUTO_INCREMENT for table `custom_asset_model`
--
ALTER TABLE `custom_asset_model`
  MODIFY `ca_model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3168;

--
-- AUTO_INCREMENT for table `custom_asset_templates`
--
ALTER TABLE `custom_asset_templates`
  MODIFY `catempid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1156;

--
-- AUTO_INCREMENT for table `custom_asset_type`
--
ALTER TABLE `custom_asset_type`
  MODIFY `camid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_asset_types`
--
ALTER TABLE `custom_asset_types`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `custom_cat_groups`
--
ALTER TABLE `custom_cat_groups`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `custom_vendors`
--
ALTER TABLE `custom_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designationid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `devicememorytypes`
--
ALTER TABLE `devicememorytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `discovery`
--
ALTER TABLE `discovery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_template_group`
--
ALTER TABLE `email_template_group`
  MODIFY `tpl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filesystems`
--
ALTER TABLE `filesystems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finance_year`
--
ALTER TABLE `finance_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `floorid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fusioninventory_agents`
--
ALTER TABLE `fusioninventory_agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6031;

--
-- AUTO_INCREMENT for table `fusioninventory_computerlicenseinfos`
--
ALTER TABLE `fusioninventory_computerlicenseinfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8608;

--
-- AUTO_INCREMENT for table `fusioninventory_computerlicenseinfos_history`
--
ALTER TABLE `fusioninventory_computerlicenseinfos_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `gradeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee`
--
ALTER TABLE `hr_employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infocoms`
--
ALTER TABLE `infocoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infocoms_warranty`
--
ALTER TABLE `infocoms_warranty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interfacetypes`
--
ALTER TABLE `interfacetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `internet_details`
--
ALTER TABLE `internet_details`
  MODIFY `internetid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `inventorycomputercomputers`
--
ALTER TABLE `inventorycomputercomputers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2534;

--
-- AUTO_INCREMENT for table `ipaddresses`
--
ALTER TABLE `ipaddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32318;

--
-- AUTO_INCREMENT for table `ipaddresses_history`
--
ALTER TABLE `ipaddresses_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26996;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
