-- phpMyAdmin SQL Dump doing a test
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2011 at 10:04 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `wolidays`
--

CREATE TABLE `wolidays`.`day` (
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`channel` VARCHAR( 255 ) NOT NULL ,
`date` DATE NOT NULL ,
`is_worked` BOOLEAN NOT NULL
) ENGINE = InnoDB;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `channel`, `date`, `is_worked`) VALUES
(1, 'default', '2011-01-01', 0),
(2, 'default', '2011-01-02', 0),
(3, 'default', '2011-01-03', 1),
(4, 'default', '2011-01-04', 1),
(5, 'default', '2011-01-05', 1),
(6, 'default', '2011-01-06', 1),
(7, 'default', '2011-01-07', 1),
(8, 'default', '2011-01-08', 0),
(9, 'default', '2011-01-09', 0),
(10, 'default', '2011-01-10', 1),
(11, 'default', '2011-01-11', 1),
(12, 'default', '2011-01-12', 1),
(13, 'default', '2011-01-13', 1),
(14, 'default', '2011-01-14', 1),
(15, 'default', '2011-01-15', 0),
(16, 'default', '2011-01-16', 0),
(17, 'default', '2011-01-17', 1),
(18, 'default', '2011-01-18', 1),
(19, 'default', '2011-01-19', 1),
(20, 'default', '2011-01-20', 1),
(21, 'default', '2011-01-21', 1),
(22, 'default', '2011-01-22', 0),
(23, 'default', '2011-01-23', 0),
(24, 'default', '2011-01-24', 1),
(25, 'default', '2011-01-25', 1),
(26, 'default', '2011-01-26', 1),
(27, 'default', '2011-01-27', 1),
(28, 'default', '2011-01-28', 1),
(29, 'default', '2011-01-29', 0),
(30, 'default', '2011-01-30', 0),
(31, 'default', '2011-01-31', 1),
(32, 'default', '2011-02-01', 1),
(33, 'default', '2011-02-02', 1),
(34, 'default', '2011-02-03', 1),
(35, 'default', '2011-02-04', 1),
(36, 'default', '2011-02-05', 0),
(37, 'default', '2011-02-06', 0),
(38, 'default', '2011-02-07', 1),
(39, 'default', '2011-02-08', 1),
(40, 'default', '2011-02-09', 1),
(41, 'default', '2011-02-10', 1),
(42, 'default', '2011-02-11', 1),
(43, 'default', '2011-02-12', 0),
(44, 'default', '2011-02-13', 0),
(45, 'default', '2011-02-14', 1),
(46, 'default', '2011-02-15', 1),
(47, 'default', '2011-02-16', 1),
(48, 'default', '2011-02-17', 1),
(49, 'default', '2011-02-18', 1),
(50, 'default', '2011-02-19', 0),
(51, 'default', '2011-02-20', 0),
(52, 'default', '2011-02-21', 1),
(53, 'default', '2011-02-22', 1),
(54, 'default', '2011-02-23', 1),
(55, 'default', '2011-02-24', 1),
(56, 'default', '2011-02-25', 1),
(57, 'default', '2011-02-26', 0),
(58, 'default', '2011-02-27', 0),
(59, 'default', '2011-02-28', 1),
(60, 'default', '2011-03-01', 1),
(61, 'default', '2011-03-02', 1),
(62, 'default', '2011-03-03', 1),
(63, 'default', '2011-03-04', 1),
(64, 'default', '2011-03-05', 0),
(65, 'default', '2011-03-06', 0),
(66, 'default', '2011-03-07', 1),
(67, 'default', '2011-03-08', 1),
(68, 'default', '2011-03-09', 1),
(69, 'default', '2011-03-10', 1),
(70, 'default', '2011-03-11', 1),
(71, 'default', '2011-03-12', 0),
(72, 'default', '2011-03-13', 0),
(73, 'default', '2011-03-14', 1),
(74, 'default', '2011-03-15', 1),
(75, 'default', '2011-03-16', 1),
(76, 'default', '2011-03-17', 1),
(77, 'default', '2011-03-18', 1),
(78, 'default', '2011-03-19', 0),
(79, 'default', '2011-03-20', 0),
(80, 'default', '2011-03-21', 1),
(81, 'default', '2011-03-22', 1),
(82, 'default', '2011-03-23', 1),
(83, 'default', '2011-03-24', 1),
(84, 'default', '2011-03-25', 1),
(85, 'default', '2011-03-26', 0),
(86, 'default', '2011-03-27', 0),
(87, 'default', '2011-03-28', 1),
(88, 'default', '2011-03-29', 1),
(89, 'default', '2011-03-30', 1),
(90, 'default', '2011-03-31', 1),
(91, 'default', '2011-04-01', 1),
(92, 'default', '2011-04-02', 0),
(93, 'default', '2011-04-03', 0),
(94, 'default', '2011-04-04', 1),
(95, 'default', '2011-04-05', 1),
(96, 'default', '2011-04-06', 1),
(97, 'default', '2011-04-07', 1),
(98, 'default', '2011-04-08', 1),
(99, 'default', '2011-04-09', 0),
(100, 'default', '2011-04-10', 0),
(101, 'default', '2011-04-11', 1),
(102, 'default', '2011-04-12', 1),
(103, 'default', '2011-04-13', 1),
(104, 'default', '2011-04-14', 1),
(105, 'default', '2011-04-15', 1),
(106, 'default', '2011-04-16', 0),
(107, 'default', '2011-04-17', 0),
(108, 'default', '2011-04-18', 1),
(109, 'default', '2011-04-19', 1),
(110, 'default', '2011-04-20', 1),
(111, 'default', '2011-04-21', 1),
(112, 'default', '2011-04-22', 1),
(113, 'default', '2011-04-23', 0),
(114, 'default', '2011-04-24', 0),
(115, 'default', '2011-04-25', 1),
(116, 'default', '2011-04-26', 1),
(117, 'default', '2011-04-27', 1),
(118, 'default', '2011-04-28', 1),
(119, 'default', '2011-04-29', 1),
(120, 'default', '2011-04-30', 0),
(121, 'default', '2011-05-01', 0),
(122, 'default', '2011-05-02', 1),
(123, 'default', '2011-05-03', 1),
(124, 'default', '2011-05-04', 1),
(125, 'default', '2011-05-05', 1),
(126, 'default', '2011-05-06', 1),
(127, 'default', '2011-05-07', 0),
(128, 'default', '2011-05-08', 0),
(129, 'default', '2011-05-09', 1),
(130, 'default', '2011-05-10', 1),
(131, 'default', '2011-05-11', 1),
(132, 'default', '2011-05-12', 1),
(133, 'default', '2011-05-13', 1),
(134, 'default', '2011-05-14', 0),
(135, 'default', '2011-05-15', 0),
(136, 'default', '2011-05-16', 1),
(137, 'default', '2011-05-17', 1),
(138, 'default', '2011-05-18', 1),
(139, 'default', '2011-05-19', 1),
(140, 'default', '2011-05-20', 1),
(141, 'default', '2011-05-21', 0),
(142, 'default', '2011-05-22', 0),
(143, 'default', '2011-05-23', 1),
(144, 'default', '2011-05-24', 1),
(145, 'default', '2011-05-25', 1),
(146, 'default', '2011-05-26', 1),
(147, 'default', '2011-05-27', 1),
(148, 'default', '2011-05-28', 0),
(149, 'default', '2011-05-29', 0),
(150, 'default', '2011-05-30', 1),
(151, 'default', '2011-05-31', 1),
(152, 'default', '2011-06-01', 1),
(153, 'default', '2011-06-02', 1),
(154, 'default', '2011-06-03', 1),
(155, 'default', '2011-06-04', 0),
(156, 'default', '2011-06-05', 0),
(157, 'default', '2011-06-06', 1),
(158, 'default', '2011-06-07', 1),
(159, 'default', '2011-06-08', 1),
(160, 'default', '2011-06-09', 1),
(161, 'default', '2011-06-10', 1),
(162, 'default', '2011-06-11', 0),
(163, 'default', '2011-06-12', 0),
(164, 'default', '2011-06-13', 1),
(165, 'default', '2011-06-14', 1),
(166, 'default', '2011-06-15', 1),
(167, 'default', '2011-06-16', 1),
(168, 'default', '2011-06-17', 1),
(169, 'default', '2011-06-18', 0),
(170, 'default', '2011-06-19', 0),
(171, 'default', '2011-06-20', 1),
(172, 'default', '2011-06-21', 1),
(173, 'default', '2011-06-22', 1),
(174, 'default', '2011-06-23', 1),
(175, 'default', '2011-06-24', 1),
(176, 'default', '2011-06-25', 0),
(177, 'default', '2011-06-26', 0),
(178, 'default', '2011-06-27', 1),
(179, 'default', '2011-06-28', 1),
(180, 'default', '2011-06-29', 1),
(181, 'default', '2011-06-30', 1),
(182, 'default', '2011-07-01', 1),
(183, 'default', '2011-07-02', 0),
(184, 'default', '2011-07-03', 0),
(185, 'default', '2011-07-04', 1),
(186, 'default', '2011-07-05', 1),
(187, 'default', '2011-07-06', 1),
(188, 'default', '2011-07-07', 1),
(189, 'default', '2011-07-08', 1),
(190, 'default', '2011-07-09', 0),
(191, 'default', '2011-07-10', 0),
(192, 'default', '2011-07-11', 1),
(193, 'default', '2011-07-12', 1),
(194, 'default', '2011-07-13', 1),
(195, 'default', '2011-07-14', 1),
(196, 'default', '2011-07-15', 1),
(197, 'default', '2011-07-16', 0),
(198, 'default', '2011-07-17', 0),
(199, 'default', '2011-07-18', 1),
(200, 'default', '2011-07-19', 1),
(201, 'default', '2011-07-20', 1),
(202, 'default', '2011-07-21', 1),
(203, 'default', '2011-07-22', 1),
(204, 'default', '2011-07-23', 0),
(205, 'default', '2011-07-24', 0),
(206, 'default', '2011-07-25', 1),
(207, 'default', '2011-07-26', 1),
(208, 'default', '2011-07-27', 1),
(209, 'default', '2011-07-28', 1),
(210, 'default', '2011-07-29', 1),
(211, 'default', '2011-07-30', 0),
(212, 'default', '2011-07-31', 0),
(213, 'default', '2011-08-01', 1),
(214, 'default', '2011-08-02', 1),
(215, 'default', '2011-08-03', 1),
(216, 'default', '2011-08-04', 1),
(217, 'default', '2011-08-05', 1),
(218, 'default', '2011-08-06', 0),
(219, 'default', '2011-08-07', 0),
(220, 'default', '2011-08-08', 1),
(221, 'default', '2011-08-09', 1),
(222, 'default', '2011-08-10', 1),
(223, 'default', '2011-08-11', 1),
(224, 'default', '2011-08-12', 1),
(225, 'default', '2011-08-13', 0),
(226, 'default', '2011-08-14', 0),
(227, 'default', '2011-08-15', 1),
(228, 'default', '2011-08-16', 1),
(229, 'default', '2011-08-17', 1),
(230, 'default', '2011-08-18', 1),
(231, 'default', '2011-08-19', 1),
(232, 'default', '2011-08-20', 0),
(233, 'default', '2011-08-21', 0),
(234, 'default', '2011-08-22', 1),
(235, 'default', '2011-08-23', 1),
(236, 'default', '2011-08-24', 1),
(237, 'default', '2011-08-25', 1),
(238, 'default', '2011-08-26', 1),
(239, 'default', '2011-08-27', 0),
(240, 'default', '2011-08-28', 0),
(241, 'default', '2011-08-29', 1),
(242, 'default', '2011-08-30', 1),
(243, 'default', '2011-08-31', 1),
(244, 'default', '2011-09-01', 1),
(245, 'default', '2011-09-02', 1),
(246, 'default', '2011-09-03', 0),
(247, 'default', '2011-09-04', 0),
(248, 'default', '2011-09-05', 1),
(249, 'default', '2011-09-06', 1),
(250, 'default', '2011-09-07', 1),
(251, 'default', '2011-09-08', 1),
(252, 'default', '2011-09-09', 1),
(253, 'default', '2011-09-10', 0),
(254, 'default', '2011-09-11', 0),
(255, 'default', '2011-09-12', 1),
(256, 'default', '2011-09-13', 1),
(257, 'default', '2011-09-14', 1),
(258, 'default', '2011-09-15', 1),
(259, 'default', '2011-09-16', 1),
(260, 'default', '2011-09-17', 0),
(261, 'default', '2011-09-18', 0),
(262, 'default', '2011-09-19', 1),
(263, 'default', '2011-09-20', 1),
(264, 'default', '2011-09-21', 1),
(265, 'default', '2011-09-22', 1),
(266, 'default', '2011-09-23', 1),
(267, 'default', '2011-09-24', 0),
(268, 'default', '2011-09-25', 0),
(269, 'default', '2011-09-26', 1),
(270, 'default', '2011-09-27', 1),
(271, 'default', '2011-09-28', 1),
(272, 'default', '2011-09-29', 1),
(273, 'default', '2011-09-30', 1),
(274, 'default', '2011-10-01', 0),
(275, 'default', '2011-10-02', 0),
(276, 'default', '2011-10-03', 1),
(277, 'default', '2011-10-04', 1),
(278, 'default', '2011-10-05', 1),
(279, 'default', '2011-10-06', 1),
(280, 'default', '2011-10-07', 1),
(281, 'default', '2011-10-08', 0),
(282, 'default', '2011-10-09', 0),
(283, 'default', '2011-10-10', 1),
(284, 'default', '2011-10-11', 1),
(285, 'default', '2011-10-12', 1),
(286, 'default', '2011-10-13', 1),
(287, 'default', '2011-10-14', 1),
(288, 'default', '2011-10-15', 0),
(289, 'default', '2011-10-16', 0),
(290, 'default', '2011-10-17', 1),
(291, 'default', '2011-10-18', 1),
(292, 'default', '2011-10-19', 1),
(293, 'default', '2011-10-20', 1),
(294, 'default', '2011-10-21', 1),
(295, 'default', '2011-10-22', 0),
(296, 'default', '2011-10-23', 0),
(297, 'default', '2011-10-24', 1),
(298, 'default', '2011-10-25', 1),
(299, 'default', '2011-10-26', 1),
(300, 'default', '2011-10-27', 1),
(301, 'default', '2011-10-28', 1),
(302, 'default', '2011-10-29', 0),
(303, 'default', '2011-10-30', 0),
(304, 'default', '2011-10-31', 1),
(305, 'default', '2011-11-01', 1),
(306, 'default', '2011-11-02', 1),
(307, 'default', '2011-11-03', 1),
(308, 'default', '2011-11-04', 1),
(309, 'default', '2011-11-05', 0),
(310, 'default', '2011-11-06', 0),
(311, 'default', '2011-11-07', 1),
(312, 'default', '2011-11-08', 1),
(313, 'default', '2011-11-09', 1),
(314, 'default', '2011-11-10', 1),
(315, 'default', '2011-11-11', 1),
(316, 'default', '2011-11-12', 0),
(317, 'default', '2011-11-13', 0),
(318, 'default', '2011-11-14', 1),
(319, 'default', '2011-11-15', 1),
(320, 'default', '2011-11-16', 1),
(321, 'default', '2011-11-17', 1),
(322, 'default', '2011-11-18', 1),
(323, 'default', '2011-11-19', 0),
(324, 'default', '2011-11-20', 0),
(325, 'default', '2011-11-21', 1),
(326, 'default', '2011-11-22', 1),
(327, 'default', '2011-11-23', 1),
(328, 'default', '2011-11-24', 1),
(329, 'default', '2011-11-25', 1),
(330, 'default', '2011-11-26', 0),
(331, 'default', '2011-11-27', 0),
(332, 'default', '2011-11-28', 1),
(333, 'default', '2011-11-29', 1),
(334, 'default', '2011-11-30', 1),
(335, 'default', '2011-12-01', 1),
(336, 'default', '2011-12-02', 1),
(337, 'default', '2011-12-03', 0),
(338, 'default', '2011-12-04', 0),
(339, 'default', '2011-12-05', 1),
(340, 'default', '2011-12-06', 1),
(341, 'default', '2011-12-07', 1),
(342, 'default', '2011-12-08', 1),
(343, 'default', '2011-12-09', 1),
(344, 'default', '2011-12-10', 0),
(345, 'default', '2011-12-11', 0),
(346, 'default', '2011-12-12', 1),
(347, 'default', '2011-12-13', 1),
(348, 'default', '2011-12-14', 1),
(349, 'default', '2011-12-15', 1),
(350, 'default', '2011-12-16', 1),
(351, 'default', '2011-12-17', 0),
(352, 'default', '2011-12-18', 0),
(353, 'default', '2011-12-19', 1),
(354, 'default', '2011-12-20', 1),
(355, 'default', '2011-12-21', 1),
(356, 'default', '2011-12-22', 1),
(357, 'default', '2011-12-23', 1),
(358, 'default', '2011-12-24', 0),
(359, 'default', '2011-12-25', 0),
(360, 'default', '2011-12-26', 1),
(361, 'default', '2011-12-27', 1),
(362, 'default', '2011-12-28', 1),
(363, 'default', '2011-12-29', 1),
(364, 'default', '2011-12-30', 1),
(365, 'default', '2011-12-31', 0);
