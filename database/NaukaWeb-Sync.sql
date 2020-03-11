-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2020 at 08:07 AM
-- Server version: 10.3.22-MariaDB-1:10.3.22+maria~bionic-log
-- PHP Version: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NaukaWeb-Sync`
--
CREATE DATABASE IF NOT EXISTS `NaukaWeb-Sync` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `NaukaWeb-Sync`;

-- --------------------------------------------------------

--
-- Table structure for table `QueueLog`
--

DROP TABLE IF EXISTS `QueueLog`;
CREATE TABLE `QueueLog` (
  `queueLogId` int(11) NOT NULL,
  `queueLogData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `queueLogAux` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `queueLogCalc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `__Search__` int(11) DEFAULT NULL,
  `queueLogStartDate` varchar(100) DEFAULT NULL,
  `queueLogStartTime` varchar(100) DEFAULT NULL,
  `queueLogClientId` varchar(100) DEFAULT NULL,
  `queueLogQueueId` varchar(100) DEFAULT NULL,
  `queueLogServiceId` varchar(100) DEFAULT NULL,
  `queueLogCampaignId` varchar(100) DEFAULT NULL,
  `queueLogSupervisorId` varchar(100) DEFAULT NULL,
  `queueLogAgentId` varchar(100) DEFAULT NULL,
  `queueLogRoleId` varchar(100) DEFAULT NULL,
  `queueLogScheduleId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `QueueLog`
--
ALTER TABLE `QueueLog`
  ADD PRIMARY KEY (`queueLogId`),
  ADD KEY `queueLogStartDate` (`queueLogStartDate`),
  ADD KEY `queueLogStartTime` (`queueLogStartTime`),
  ADD KEY `queueLogClientId` (`queueLogClientId`),
  ADD KEY `queueLogQueueId` (`queueLogQueueId`),
  ADD KEY `queueLogServiceId` (`queueLogServiceId`),
  ADD KEY `queueLogCampaignId` (`queueLogCampaignId`),
  ADD KEY `queueLogSupervisorId` (`queueLogSupervisorId`),
  ADD KEY `queueLogAgentId` (`queueLogAgentId`),
  ADD KEY `queueLogRoleId` (`queueLogRoleId`),
  ADD KEY `queueLogScheduleId` (`queueLogScheduleId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
