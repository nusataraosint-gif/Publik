-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2026 at 05:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `nama_web` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `wa` varchar(255) DEFAULT NULL,
  `tele` varchar(255) DEFAULT NULL,
  `running_text` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `bg_color_2` varchar(255) NOT NULL DEFAULT '#000',
  `nav_login` varchar(255) NOT NULL DEFAULT '#000',
  `nav_login_2` varchar(255) NOT NULL DEFAULT '#000',
  `bg_color_single` varchar(255) NOT NULL DEFAULT '0',
  `nav_color` varchar(255) DEFAULT NULL,
  `nav_color_trans` int(11) NOT NULL DEFAULT 100,
  `nav_color_2` varchar(255) NOT NULL DEFAULT '#000',
  `txt_color` varchar(255) NOT NULL DEFAULT '#000',
  `updated_at` datetime DEFAULT NULL,
  `live_chat` longtext DEFAULT NULL,
  `msg_popup` longtext DEFAULT NULL,
  `maintenance_mode` int(11) DEFAULT 0,
  `deposit_delay` int(11) DEFAULT 24,
  `template` text DEFAULT 'main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nama_web`, `telp`, `wa`, `tele`, `running_text`, `logo`, `bg_color`, `bg_color_2`, `nav_login`, `nav_login_2`, `bg_color_single`, `nav_color`, `nav_color_trans`, `nav_color_2`, `txt_color`, `updated_at`, `live_chat`, `msg_popup`, `maintenance_mode`, `deposit_delay`, `template`) VALUES
(1, 'REDBULL707', NULL, '123456789', '123456789', 'RUNNING TEXT', '1767442730_1708977140_DDD4F883-A6CA-44F1-A041-7275F0D14C0D-removebg-preview 2.png', '#000000', '#343434', '#1100ff', '#cf0c0c', '0', '#000000', 100, '#000000', '#ffffff', '2026-01-03 12:18:50', NULL, 'Saldo masih terkunci silahkan hubungi admin atau livechat.', 0, 24, 'main');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
