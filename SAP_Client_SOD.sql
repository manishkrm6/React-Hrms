-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2020 at 07:18 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sap_sayaer_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `actcode`
--

CREATE TABLE `actcode` (
  `activity` varchar(45) CHARACTER SET latin1 NOT NULL,
  `tcode` varchar(5) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `act_class`
--

CREATE TABLE `act_class` (
  `activity` varchar(5) CHARACTER SET latin1 NOT NULL,
  `act_desc` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `act_class` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `proc` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `subproc` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `act_class_desc`
--

CREATE TABLE `act_class_desc` (
  `act_num` int(11) NOT NULL,
  `act_desc` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus_proc`
--

CREATE TABLE `bus_proc` (
  `proc` int(3) NOT NULL,
  `dsc` int(45) DEFAULT NULL,
  `Status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus_subproc`
--

CREATE TABLE `bus_subproc` (
  `proc` varchar(3) CHARACTER SET latin1 NOT NULL,
  `subproc` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts`
--

CREATE TABLE `conflicts` (
  `CONFLICTID` varchar(12) CHARACTER SET latin1 NOT NULL,
  `OBJCT` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `FIELD` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `VALUE` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_c`
--

CREATE TABLE `conflicts_c` (
  `CONFLICTID` varchar(12) CHARACTER SET latin1 NOT NULL,
  `OBJCT` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `FIELD` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `VALUE` varchar(45) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_exceptions`
--

CREATE TABLE `conflicts_exceptions` (
  `TCODE` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `OBJCT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `FIELD` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `VALUE` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_exceptions_role`
--

CREATE TABLE `conflicts_exceptions_role` (
  `uname` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `agr_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_first_cnt`
--

CREATE TABLE `conflicts_first_cnt` (
  `conflictid` varchar(12) CHARACTER SET latin1 NOT NULL,
  `count` bigint(21) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_values_a`
--

CREATE TABLE `conflicts_values_a` (
  `tcode` varchar(20) CHARACTER SET latin1 NOT NULL,
  `objct` varchar(10) CHARACTER SET latin1 NOT NULL,
  `field` varchar(10) CHARACTER SET latin1 NOT NULL,
  `value` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_values_bl`
--

CREATE TABLE `conflicts_values_bl` (
  `tcode` varchar(10) CHARACTER SET latin1 NOT NULL,
  `objct` varchar(20) CHARACTER SET latin1 NOT NULL,
  `field` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_values_flbl`
--

CREATE TABLE `conflicts_values_flbl` (
  `tcode` int(20) NOT NULL,
  `objct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_values_notcd`
--

CREATE TABLE `conflicts_values_notcd` (
  `tcode` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflicts_values_org`
--

CREATE TABLE `conflicts_values_org` (
  `tcode` varchar(30) CHARACTER SET latin1 NOT NULL,
  `objct` varchar(10) CHARACTER SET latin1 NOT NULL,
  `field` varchar(10) CHARACTER SET latin1 NOT NULL,
  `org` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conflict_add_checks`
--

CREATE TABLE `conflict_add_checks` (
  `TCODE` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `OBJCT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `FIELD` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `VALUE` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `critical_auth`
--

CREATE TABLE `critical_auth` (
  `proc` varchar(3) CHARACTER SET utf8 NOT NULL,
  `tcode` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cva_cnt`
--

CREATE TABLE `cva_cnt` (
  `tcode` varchar(20) CHARACTER SET latin1 NOT NULL,
  `count` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cvb_cnt`
--

CREATE TABLE `cvb_cnt` (
  `tcode` varchar(20) CHARACTER SET latin1 NOT NULL,
  `count` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cvf_cnt`
--

CREATE TABLE `cvf_cnt` (
  `tcode` varchar(20) CHARACTER SET latin1 NOT NULL,
  `count` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `disabled_conflicts`
--

CREATE TABLE `disabled_conflicts` (
  `conflictid` varchar(12) CHARACTER SET latin1 NOT NULL,
  `reason_disabled` varchar(1000) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mit_conflict`
--

CREATE TABLE `mit_conflict` (
  `conflictid` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `uname` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `control_id` int(20) NOT NULL,
  `solman_req` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mit_control`
--

CREATE TABLE `mit_control` (
  `control_id` int(20) NOT NULL,
  `proc` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `company_id` int(4) DEFAULT NULL,
  `dsc` varchar(2500) CHARACTER SET utf8 DEFAULT NULL,
  `type_id` int(4) DEFAULT NULL,
  `control_owner` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `frequency_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mit_control_freq`
--

CREATE TABLE `mit_control_freq` (
  `frequency_id` int(4) NOT NULL,
  `frequency_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mit_control_type`
--

CREATE TABLE `mit_control_type` (
  `type_id` int(4) NOT NULL,
  `type_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mit_risk`
--

CREATE TABLE `mit_risk` (
  `riskid` int(6) DEFAULT NULL,
  `uname` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `control_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `solman_req` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qm_requests`
--

CREATE TABLE `qm_requests` (
  `request_id` int(10) UNSIGNED NOT NULL,
  `request_type` varchar(4) CHARACTER SET utf8 NOT NULL,
  `uname` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `agr_name` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `tcodes` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `objvals` varchar(1500) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `ac_type` varchar(5) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sod_risk`
--

CREATE TABLE `sod_risk` (
  `riskid` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `act1` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `act2` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `act3` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `riskname` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `dsc` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `rating` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `bproc` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `enabled` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `ctype` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcode_disabled`
--

CREATE TABLE `tcode_disabled` (
  `activity` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `tcode` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uname` varchar(12) CHARACTER SET utf8 NOT NULL,
  `user_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `valid_from` varchar(12) CHARACTER SET utf8 NOT NULL,
  `valid_to` varchar(12) CHARACTER SET utf8 NOT NULL,
  `lockstatus` int(11) NOT NULL,
  `user_type` varchar(1) CHARACTER SET utf8 NOT NULL,
  `department` varchar(45) CHARACTER SET utf8 NOT NULL,
  `manager` varchar(45) CHARACTER SET utf8 NOT NULL,
  `suser` varchar(1) CHARACTER SET utf8 NOT NULL,
  `shared_id` varchar(1) CHARACTER SET utf8 NOT NULL,
  `generic_id` varchar(1) CHARACTER SET utf8 NOT NULL,
  `company` varchar(40) CHARACTER SET utf8 NOT NULL,
  `location` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `enabled` varchar(1) CHARACTER SET utf8 NOT NULL,
  `password` varchar(250) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zcodes`
--

CREATE TABLE `zcodes` (
  `zcode` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `dsc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `proc` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `subproc` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `activity` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `add_info` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `tcode` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actcode`
--
ALTER TABLE `actcode`
  ADD PRIMARY KEY (`activity`);

--
-- Indexes for table `act_class`
--
ALTER TABLE `act_class`
  ADD PRIMARY KEY (`activity`);

--
-- Indexes for table `act_class_desc`
--
ALTER TABLE `act_class_desc`
  ADD PRIMARY KEY (`act_num`);

--
-- Indexes for table `bus_proc`
--
ALTER TABLE `bus_proc`
  ADD PRIMARY KEY (`proc`);

--
-- Indexes for table `bus_subproc`
--
ALTER TABLE `bus_subproc`
  ADD PRIMARY KEY (`proc`);

--
-- Indexes for table `conflicts`
--
ALTER TABLE `conflicts`
  ADD PRIMARY KEY (`CONFLICTID`);

--
-- Indexes for table `conflicts_c`
--
ALTER TABLE `conflicts_c`
  ADD PRIMARY KEY (`CONFLICTID`);

--
-- Indexes for table `conflicts_first_cnt`
--
ALTER TABLE `conflicts_first_cnt`
  ADD PRIMARY KEY (`conflictid`);

--
-- Indexes for table `conflicts_values_a`
--
ALTER TABLE `conflicts_values_a`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `conflicts_values_bl`
--
ALTER TABLE `conflicts_values_bl`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `conflicts_values_flbl`
--
ALTER TABLE `conflicts_values_flbl`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `conflicts_values_notcd`
--
ALTER TABLE `conflicts_values_notcd`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `cva_cnt`
--
ALTER TABLE `cva_cnt`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `cvb_cnt`
--
ALTER TABLE `cvb_cnt`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `cvf_cnt`
--
ALTER TABLE `cvf_cnt`
  ADD PRIMARY KEY (`tcode`);

--
-- Indexes for table `disabled_conflicts`
--
ALTER TABLE `disabled_conflicts`
  ADD PRIMARY KEY (`conflictid`);

--
-- Indexes for table `mit_conflict`
--
ALTER TABLE `mit_conflict`
  ADD PRIMARY KEY (`control_id`);

--
-- Indexes for table `mit_control`
--
ALTER TABLE `mit_control`
  ADD PRIMARY KEY (`control_id`);

--
-- Indexes for table `mit_control_freq`
--
ALTER TABLE `mit_control_freq`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mit_control_type`
--
ALTER TABLE `mit_control_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `qm_requests`
--
ALTER TABLE `qm_requests`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mit_conflict`
--
ALTER TABLE `mit_conflict`
  MODIFY `control_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mit_control`
--
ALTER TABLE `mit_control`
  MODIFY `control_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mit_control_freq`
--
ALTER TABLE `mit_control_freq`
  MODIFY `frequency_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mit_control_type`
--
ALTER TABLE `mit_control_type`
  MODIFY `type_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qm_requests`
--
ALTER TABLE `qm_requests`
  MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
