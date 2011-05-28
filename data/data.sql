-- phpMyAdmin SQL Dump
-- version 3.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2011 at 04:55 PM
-- Server version: 5.1.54
-- PHP Version: 5.3.5-1ubuntu7.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wolidays`
--

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `channel`, `date`, `is_holiday`) VALUES
(1, 'default', '2011-01-01', 1),
(2, 'default', '2011-01-02', 1),
(8, 'default', '2011-01-08', 1),
(9, 'default', '2011-01-09', 1),
(15, 'default', '2011-01-15', 1),
(16, 'default', '2011-01-16', 1),
(22, 'default', '2011-01-22', 1),
(23, 'default', '2011-01-23', 1),
(29, 'default', '2011-01-29', 1),
(30, 'default', '2011-01-30', 1),
(36, 'default', '2011-02-05', 1),
(37, 'default', '2011-02-06', 1),
(43, 'default', '2011-02-12', 1),
(44, 'default', '2011-02-13', 1),
(50, 'default', '2011-02-19', 1),
(51, 'default', '2011-02-20', 1),
(57, 'default', '2011-02-26', 1),
(58, 'default', '2011-02-27', 1),
(64, 'default', '2011-03-05', 1),
(65, 'default', '2011-03-06', 1),
(71, 'default', '2011-03-12', 1),
(72, 'default', '2011-03-13', 1),
(78, 'default', '2011-03-19', 1),
(79, 'default', '2011-03-20', 1),
(85, 'default', '2011-03-26', 1),
(86, 'default', '2011-03-27', 1),
(92, 'default', '2011-04-02', 1),
(93, 'default', '2011-04-03', 1),
(99, 'default', '2011-04-09', 1),
(100, 'default', '2011-04-10', 1),
(106, 'default', '2011-04-16', 1),
(107, 'default', '2011-04-17', 1),
(113, 'default', '2011-04-23', 1),
(114, 'default', '2011-04-24', 1),
(120, 'default', '2011-04-30', 1),
(121, 'default', '2011-05-01', 1),
(127, 'default', '2011-05-07', 1),
(128, 'default', '2011-05-08', 1),
(134, 'default', '2011-05-14', 1),
(135, 'default', '2011-05-15', 1),
(141, 'default', '2011-05-21', 1),
(142, 'default', '2011-05-22', 1),
(148, 'default', '2011-05-28', 1),
(149, 'default', '2011-05-29', 1),
(155, 'default', '2011-06-04', 1),
(156, 'default', '2011-06-05', 1),
(162, 'default', '2011-06-11', 1),
(163, 'default', '2011-06-12', 1),
(169, 'default', '2011-06-18', 1),
(170, 'default', '2011-06-19', 1),
(176, 'default', '2011-06-25', 1),
(177, 'default', '2011-06-26', 1),
(183, 'default', '2011-07-02', 1),
(184, 'default', '2011-07-03', 1),
(190, 'default', '2011-07-09', 1),
(191, 'default', '2011-07-10', 1),
(197, 'default', '2011-07-16', 1),
(198, 'default', '2011-07-17', 1),
(204, 'default', '2011-07-23', 1),
(205, 'default', '2011-07-24', 1),
(211, 'default', '2011-07-30', 1),
(212, 'default', '2011-07-31', 1),
(218, 'default', '2011-08-06', 1),
(219, 'default', '2011-08-07', 1),
(225, 'default', '2011-08-13', 1),
(226, 'default', '2011-08-14', 1),
(232, 'default', '2011-08-20', 1),
(233, 'default', '2011-08-21', 1),
(239, 'default', '2011-08-27', 1),
(240, 'default', '2011-08-28', 1),
(246, 'default', '2011-09-03', 1),
(247, 'default', '2011-09-04', 1),
(253, 'default', '2011-09-10', 1),
(254, 'default', '2011-09-11', 1),
(260, 'default', '2011-09-17', 1),
(261, 'default', '2011-09-18', 1),
(267, 'default', '2011-09-24', 1),
(268, 'default', '2011-09-25', 1),
(274, 'default', '2011-10-01', 1),
(275, 'default', '2011-10-02', 1),
(281, 'default', '2011-10-08', 1),
(282, 'default', '2011-10-09', 1),
(288, 'default', '2011-10-15', 1),
(289, 'default', '2011-10-16', 1),
(295, 'default', '2011-10-22', 1),
(296, 'default', '2011-10-23', 1),
(302, 'default', '2011-10-29', 1),
(303, 'default', '2011-10-30', 1),
(309, 'default', '2011-11-05', 1),
(310, 'default', '2011-11-06', 1),
(316, 'default', '2011-11-12', 1),
(317, 'default', '2011-11-13', 1),
(323, 'default', '2011-11-19', 1),
(324, 'default', '2011-11-20', 1),
(330, 'default', '2011-11-26', 1),
(331, 'default', '2011-11-27', 1),
(337, 'default', '2011-12-03', 1),
(338, 'default', '2011-12-04', 1),
(344, 'default', '2011-12-10', 1),
(345, 'default', '2011-12-11', 1),
(351, 'default', '2011-12-17', 1),
(352, 'default', '2011-12-18', 1),
(358, 'default', '2011-12-24', 1),
(359, 'default', '2011-12-25', 1),
(365, 'default', '2011-12-31', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
