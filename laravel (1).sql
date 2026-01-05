-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2026 at 12:44 AM
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
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `image_qr` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`, `no_rek`, `nama_penerima`, `image_qr`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BCA', '3901081943638136', 'VIRTUAL ACCOUNT', '', '1', NULL, '2026-01-03 03:39:14'),
(2, 'BRI', '8881081943638136', 'VIRTUAL ACCOUNT', '', '1', NULL, '2026-01-03 03:44:34'),
(3, 'MANDIRI', '89508081943638136', 'VIRTUAL ACCOUNT', '', '1', NULL, '2026-01-03 03:45:58'),
(4, 'BNI', '8881081943638136', 'VIRTUAL ACCOUNT', '1689091333_qrdanakobam.jpg', '1', NULL, '2026-01-03 03:46:47'),
(5, 'DANA', '081943638136', NULL, '1708876084_49d6259a-fde9-433f-a368-6454d552d1eb.jpeg', '1', NULL, '2026-01-03 03:47:14'),
(6, 'LINK AJA', '081943638136', 'DIALIHKAN KE DANA', '', '1', NULL, '2026-01-03 03:47:45'),
(7, 'OVO', '081943638136', 'DIALIHKAN KE DANA', '', '1', NULL, '2026-01-03 03:48:18'),
(8, 'GOPAY', '081943638136', NULL, '1708877422_6fcdc8f2-7552-4a6c-ba0b-852436c21675.jpeg', '1', NULL, '2026-01-03 03:48:45'),
(9, 'QRIS', '081943638136', 'DIALIHKAN KE DANA', '1708877371_6fcdc8f2-7552-4a6c-ba0b-852436c21675.jpeg', '1', NULL, '2026-01-03 03:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `gambar` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `banner_promosi`
--

CREATE TABLE `banner_promosi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `batas_waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `minimal` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`id`, `judul`, `keterangan`, `nominal`, `status`, `created_at`, `updated_at`, `minimal`) VALUES
(3, 'Bonus pertama', 'keterangan bonus pertama', 10, '2', '2023-06-11 04:30:16', '2023-06-18 21:44:07', 500000),
(6, 'BONUS NEW MEMBER 100%', 'BONUS NEW MEMBER 100%', 100, '1', '2023-06-18 21:43:44', '2023-06-18 21:43:47', NULL),
(7, 'BONUS NEW MEMBER 200%', 'BONUS NEW MEMBER 200%', 200, '1', '2023-06-18 21:43:58', '2023-06-18 21:44:04', NULL),
(8, 'Tanpa To & Syarat Apapun', 'BONUS CASHBACK 100% | TO hanya x5 , Tanpa Max WD', 100, '1', '2023-06-18 21:44:26', '2023-06-19 10:28:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bonus_lama`
--

CREATE TABLE `bonus_lama` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `game_api`
--

CREATE TABLE `game_api` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` text DEFAULT NULL,
  `provider_name` text DEFAULT NULL,
  `api_key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `url_request` text DEFAULT NULL,
  `url_response` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_api`
--

INSERT INTO `game_api` (`id`, `provider`, `provider_name`, `api_key`, `secret_key`, `url_request`, `url_response`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PragmaticPlay', 'megajackpot', 'nbnj_megajackpot', 'Fa3cD4Fd676a4b4a', 'https://api-sg12.ppslot001.net/IntegrationService/v3/http/CasinoGameAPI', '', 1, NULL, NULL),
(2, 'pgsoft', 'PGSoft', '4e307bb3b844ab5213cafbd224311488', '1f5916966c3c41fff7910352ed89848f', 'https://api.pg-bo.me/', '', 1, '2023-08-13 18:12:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_betting`
--

CREATE TABLE `game_betting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `game_id` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `periode` int(11) DEFAULT NULL,
  `tebak` text DEFAULT NULL,
  `posisi` text DEFAULT NULL,
  `nominal` text DEFAULT NULL,
  `menang` text DEFAULT NULL,
  `diskon` text DEFAULT NULL,
  `bayar` text DEFAULT NULL,
  `jumlah` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_list`
--

CREATE TABLE `game_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `image_is_url` text DEFAULT NULL,
  `game_group_id` text DEFAULT NULL,
  `game_id` longtext DEFAULT NULL,
  `game_id_long` longtext DEFAULT NULL,
  `game_name` text DEFAULT NULL,
  `game_type_id` text DEFAULT NULL,
  `game_demo` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `technology` text DEFAULT NULL,
  `technology_id` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `aspect_ratio` text DEFAULT NULL,
  `jurisdictions` text DEFAULT NULL,
  `frb_available` text DEFAULT NULL,
  `data_type` text DEFAULT NULL,
  `features` text DEFAULT NULL,
  `game_locked` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_list`
--

INSERT INTO `game_list` (`id`, `provider`, `image`, `image_is_url`, `game_group_id`, `game_id`, `game_id_long`, `game_name`, `game_type_id`, `game_demo`, `category`, `technology`, `technology_id`, `platform`, `aspect_ratio`, `jurisdictions`, `frb_available`, `data_type`, `features`, `game_locked`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20olympgate.png', NULL, 'slot', 'vs20olympgate', '1605284987', 'Gates of Olympus', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,X1,IT,UA,MT,RO,EE,DE,IM,GR,LV,GG,ZA,99,UK,CO,BG,ES,NL,LT,DK,SE,PT,66,CH,IE,ON,BY,CZ,NO,AT,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, '2026-01-03 22:23:56'),
(2, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysdogs.png', NULL, 'slot', 'vswaysdogs', '1588845613', 'The Dog House Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,IT,SE,GG,ES,LT,RS,UK,DK,EE,PT,99,LV,DE,CO,GR,BG,RO,IM,ZA,66,X1,UA,NL,CH,IE,CZ,BY,ON,AT,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(3, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20starlight.png', NULL, 'slot', 'vs20starlight', '1625837214', 'Starlight Princess', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,RO,66,RS,UA,DE,GR,LT,PT,99,EE,GG,IT,UK,DK,CO,X1,LV,ZA,MT,SE,ES,BG,IE,BY,ON,NL,AT,NO,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(4, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20tweethouse.png', NULL, 'slot', 'vs20tweethouse', '1631597776', 'The Tweety House', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(5, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20fruitsw.png', NULL, 'slot', 'vs20fruitsw', '1551185482', 'Sweet Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DE,GR,EE,UK,IM,LT,RS,MT,DK,IT,LV,99,PT,RO,ES,SE,BY,GG,BG,ZA,CO,X1,UA,NL,66,CH,IE,ON,CZ,NO,AT,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(6, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40wildwest.png', NULL, 'slot', 'vs40wildwest', '1579880805', 'Wild West Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,DK,RO,SE,LV,CO,PT,IT,99,GG,MT,BG,RS,ES,EE,IM,UK,DE,GR,NL,ZA,X1,UA,66,CH,IE,ON,BY,CZ,AT,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(7, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayslions.png', NULL, 'slot', 'vswayslions', '1613654675', '5 Lions Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,ES,DK,LV,PT,IT,SE,X1,LT,CO,ZA,99,RS,IM,RO,UK,EE,MT,GR,66,DE,GG,UA,IE,BY,ON,NL,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(8, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20doghouse.png', NULL, 'slot', 'vs20doghouse', '1547739735', 'The Dog House', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,DE,IM,SE,99,EE,BG,ES,UK,RS,DK,IT,PT,LV,BY,GG,MT,LT,RO,ZA,UA,NL,66,CH,IE,ON,CZ,NO,X1,AT,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(9, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20sbxmas.png', NULL, 'slot', 'vs20sbxmas', '1570610572', 'Sweet Bonanza Xmas', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,DE,BG,99,DK,RO,PT,SE,GG,CO,EE,LV,IT,ES,MT,IM,UK,RS,LT,ZA,X1,UA,NL,66,CH,IE,CZ,BY,ON,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(10, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5aztecgems.png', NULL, 'slot', 'vs5aztecgems', '1516626484', 'Aztec Gems', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,IT,SE,RO,LV,PT,BG,99,GG,ES,LT,IM,RS,CO,MT,UK,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(11, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25pandagold.png', NULL, NULL, 'vs25pandagold', '1505815201', 'Panda&apos,s Fortune', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,RS,ES,CO,IT,GG,RO,LT,PT,IM,UK,EE,SE,99,LV,MT,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(12, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysrhino.png', NULL, NULL, 'vswaysrhino', '1582290630', 'Great Rhino Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,GG,99,SE,LT,GR,RO,RS,IT,MT,LV,UK,EE,ES,DE,CO,PT,BG,DK,NL,ZA,66,X1,UA,CH,IE,BY,ON,CZ,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(13, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20pbonanza.png', NULL, NULL, 'vs20pbonanza', '1628690435', 'Pyramid Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(14, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayshammthor.png', NULL, NULL, 'vswayshammthor', '1606496748', 'Power of Thor Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,DK,SE,PT,ES,LT,BG,UA,66,CO,X1,IT,99,MT,EE,DE,GR,LV,RO,UK,ZA,GG,IM,RS,CH,IE,ON,BY,CZ,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(15, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243lionsgold.png', NULL, NULL, 'vs243lionsgold', '1551174315', '5 Lions Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,PT,UK,LV,GG,SE,IM,IT,99,MT,DK,EE,LT,RO,RS,CO,BG,ZA,X1,UA,66,IE,BY,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(16, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5joker.png', NULL, NULL, 'vs5joker', '1519119693', 'Joker&apos,s Jewels', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,DE,GR,ES,DK,GG,SE,IT,EE,CO,99,RS,BY,MT,UK,LT,LV,BG,IM,PT,NL,ZA,X1,UA,66,CH,IE,ON,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(17, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20amuleteg.png', NULL, NULL, 'vs20amuleteg', '1626782528', 'Fortune of Giza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,LT,X1,DE,LV,ES,IT,DK,BG,66,99,EE,GG,GR,IM,MT,RO,RS,UA,UK,ZA,PT,SE,IE,NL,ON,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(18, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20midas.png', NULL, NULL, 'vs20midas', '1599482900', 'The Hand of Midas', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,DK,PT,CO,BG,RO,EE,GG,RS,MT,UK,ZA,IM,LV,GR,99,DE,SE,IT,ES,X1,UA,NL,66,CH,IE,CZ,BY,ON,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(19, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243caishien.png', NULL, NULL, 'vs243caishien', '1549294581', 'Caishen&apos,s Cash', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,PT,BG,ES,IM,GG,RS,LV,EE,IT,DK,99,CO,UK,SE,MT,RO,ZA,X1,GR,DE,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(20, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25hotfiesta.png', NULL, NULL, 'vs25hotfiesta', '1612433442', 'Hot Fiesta', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,DK,PT,LT,UA,EE,GG,UK,GR,IM,MT,99,DE,66,ZA,RS,LV,RO,X1,BG,CO,ES,IT,IE,NL,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(21, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayswildwest.png', NULL, NULL, 'vswayswildwest', '1643285988', 'Wild West Gold Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,GR,IE,IM,RO,RS,UA,UK,ZA,MT,NL,SE,PT,IT,X1,LT,CO,ON,DK,LV,ES,BG,BY,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(22, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs12bbb.png', NULL, NULL, 'vs12bbb', '1622710851', 'Bigger Bass Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,SE,PT,LV,X1,BG,IT,LT,CO,RS,GG,GR,UK,EE,UA,MT,IM,RO,ZA,66,DE,99,DK,IE,BY,ON,NL,AT,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(23, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysbufking.png', NULL, NULL, 'vswaysbufking', '1610109843', 'Buffalo King Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,BG,X1,CO,IT,PT,SE,UA,LT,LV,ES,GG,RS,66,EE,GR,UK,MT,RO,ZA,99,IM,DE,DK,CH,IE,ON,CZ,BY,AT,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(24, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10floatdrg.png', NULL, NULL, 'vs10floatdrg', '1608220623', 'Floating Dragon', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UA,LT,DK,ZA,99,GG,66,DE,RS,EE,MT,RO,UK,IM,LV,GR,CO,X1,BG,ES,PT,SE,IT,IE,BY,ON,NL,AT,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(25, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayssamurai.png', NULL, NULL, 'vswayssamurai', '1617195325', 'Rise of Samurai Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,GG,99,LV,PT,ES,UA,EE,LT,GR,IT,SE,RO,DE,IM,MT,RS,BG,ZA,DK,UK,IE,ON,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(26, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs9aztecgemsdx.png', NULL, NULL, 'vs9aztecgemsdx', '1587971999', 'Aztec Gems Deluxe', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,ES,GG,BG,LT,PT,EE,UK,LV,RO,IT,SE,MT,RS,99,DK,IM,GR,DE,NL,ZA,66,X1,UA,CH,IE,BY,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(27, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs4096bufking.png', NULL, NULL, 'vs4096bufking', '1570091142', 'Buffalo King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,EE,GR,RO,RS,DK,GG,BG,PT,LT,IT,LV,UK,DE,SE,CO,MT,99,ES,NL,ZA,X1,UA,66,CH,IE,CZ,ON,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(28, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25pandatemple.png', NULL, NULL, 'vs25pandatemple', '1611673947', 'Panda Fortune 2', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,RO,LV,ZA,IM,RS,GG,UK,66,99,MT,DE,GR,UA,ES,X1,SE,IT,LT,CO,PT,DK,BG,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(29, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10chkchase.png', NULL, NULL, 'vs10chkchase', '1629126516', 'Chicken Chase', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UK,DE,PT,LT,UA,99,IT,X1,ZA,DK,EE,BG,GG,RO,ES,GR,RS,66,IE,LV,MT,IM,NL,CO,SE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(30, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20mustanggld2.png', NULL, NULL, 'vs20mustanggld2', '1635781496', 'Clover Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,ES,IT,BG,NL,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,LT,CO,DK,SE,X1,PT,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(31, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20drtgold.png', NULL, NULL, 'vs20drtgold', '1639576365', 'Drill That Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,IE,RO,DE,IM,GG,CO,RS,EE,IT,LT,99,NL,BG,GR,LV,MT,PT,ZA,SE,UK,66,UA,X1,ES,BY,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(32, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10spiritadv.png', NULL, NULL, 'vs10spiritadv', '1640357295', 'Spirit of Adventure', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,PT,NL,SE,LT,LV,BG,ON,ES,GR,DK,X1,CO,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BY,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(33, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10firestrike2.png', NULL, NULL, 'vs10firestrike2', '1642089410', 'Fire Strike 2', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ON,SE,GR,LT,ES,BG,IT,NL,CO,DK,X1,PT,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(34, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40cleoeye.png', NULL, NULL, 'vs40cleoeye', '1629274598', 'Eye of Cleopatra', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,ES,SE,X1,CO,66,99,DE,EE,GG,GR,IE,IM,LV,MT,RO,RS,UA,UK,ZA,LT,ON,IT,BG,NL,PT,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(35, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20hburnhs.png', NULL, NULL, 'vs20hburnhs', '1607600080', 'Hot to Burn Hold and Spin', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,UA,BG,DK,LT,CO,SE,PT,X1,ES,NL,EE,LV,MT,99,GG,GR,IM,UK,DE,RO,RS,ZA,66,CH,IE,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(36, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bxmasbnza.png', NULL, NULL, 'vs10bxmasbnza', '1629217485', 'Christmas Big Bass Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,DK,GR,PT,RO,ZA,IM,RS,EE,99,LV,MT,DE,GG,UA,UK,IT,NL,SE,IE,X1,CO,LT,BG,ES,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(37, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysmadame.png', NULL, NULL, 'vswaysmadame', '1604413074', 'Madame Destiny Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,BG,CO,IT,NL,GR,MT,ZA,UK,IM,99,DE,LV,GG,RO,RS,EE,LT,ES,SE,DK,66,X1,UA,CH,IE,BY,CZ,ON,AT,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(38, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs4096magician.png', NULL, NULL, 'vs4096magician', '1622711664', 'Magician&apos,s Secrets', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,CO,IT,X1,DK,ES,IE,66,99,DE,EE,GG,GR,IM,LV,MT,RO,RS,UA,UK,ZA,NL,PT,SE,BG,LT,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(39, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20farmfest.png', NULL, NULL, 'vs20farmfest', '1636618208', 'Barn Festival', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UK,EE,IT,PT,GR,RO,SE,ZA,99,BG,GG,IE,NL,X1,66,DE,ES,DK,RS,LV,IM,CO,MT,LT,UA,BY,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(40, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243queenie.png', NULL, NULL, 'vs243queenie', '1635519094', 'Queenie', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,SE,UK,X1,PT,CO,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,ZA,DK,LT,IT,NL,ES,LV,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(41, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243discolady.png', NULL, NULL, 'vs243discolady', '1639484771', 'Disco Lady', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(42, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10tictac.png', NULL, NULL, 'vs10tictac', '1636445187', 'Tic Tac Take', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,CO,LV,BG,PT,X1,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LT,IT,ES,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(43, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20rainbowg.png', NULL, NULL, 'vs20rainbowg', '1640249257', 'Rainbow Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,DK,UK,IT,RO,BG,ES,LT,LV,RS,SE,GR,MT,EE,IM,DE,CO,GG,IE,ZA,X1,NL,UA,66,99,BE', '1', 'RNG', 'ANTE', 0, 1, NULL, NULL),
(44, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10snakeladd.png', NULL, NULL, 'vs10snakeladd', '1636465504', 'Snakes and Ladders Megadice', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,DE,LV,GG,IE,EE,GR,99,66,UK,ZA,IM,MT,RO,RS,UA,BG,CO,LT,X1,IT,DK,ES,PT,NL,SE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(45, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50mightra.png', NULL, NULL, 'vs50mightra', '1625598783', 'Might of Ra', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,99,IE,ES,X1,CO,66,DE,EE,GG,GR,IM,LV,MT,RO,RS,UA,UK,ZA,IT,PT,SE,BG,DK,NL,LT,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(46, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10firestrike.png', NULL, NULL, 'vs10firestrike', '1563973373', 'Fire Strike', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,LT,RO,GG,MT,SE,99,LV,IT,IM,RS,GR,DK,EE,ES,CO,UK,BY,BG,DE,ZA,X1,UA,NL,66,CH,IE,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(47, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20xmascarol.png', NULL, NULL, 'vs20xmascarol', '1598517644', 'Christmas Carol Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ZA,GR,DE,99,MT,EE,RS,IM,GG,LV,UK,LT,RO,SE,ES,DK,IT,CO,BG,PT,X1,NL,UA,66,CH,IE,CZ,BY,ON,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(48, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs7776aztec.png', NULL, NULL, 'vs7776aztec', '1573553476', 'Aztec Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UK,RS,LT,IT,99,MT,DK,LV,GG,ES,IM,CO,PT,EE,BG,RO,GR,DE,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(49, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysxjuicy.png', NULL, NULL, 'vswaysxjuicy', '1627560139', 'Extra Juicy Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,LV,DK,IT,SE,ES,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,X1,CO,NL,BG,LT,PT,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(50, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20goldfever.png', NULL, NULL, 'vs20goldfever', '1595225976', 'Gems Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,EE,GG,IM,RS,DK,RO,DE,GR,99,MT,SE,UK,CO,ZA,BG,ES,LT,LV,PT,X1,UA,NL,66,CH,IE,BY,ON,CZ,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(51, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25scarabqueen.png', NULL, NULL, 'vs25scarabqueen', '1558530830', 'John Hunter and the Tomb of the Scarab Queen', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,BG,RS,DK,MT,DE,ES,EE,IM,RO,99,BY,LV,SE,GG,GR,UK,LT,PT,CO,ZA,X1,UA,NL,66,CH,IE,ON,CZ,BE,AT', '1', 'RNG', '', 0, 1, NULL, NULL),
(52, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10returndead.png', NULL, NULL, 'vs10returndead', '1596025317', 'Return of the Dead', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,99,CO,IT,SE,EE,RO,ES,MT,LV,UK,GG,IM,LT,PT,BG,RS,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(53, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayslight.png', NULL, NULL, 'vswayslight', '1613724310', 'Lucky Lightning', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'X1,CO,DK,PT,BG,SE,EE,GG,MT,IM,RO,99,RS,ZA,DE,GR,UA,UK,66,ES,LV,LT,IT,IE,BY,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(54, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20trsbox.png', NULL, NULL, 'vs20trsbox', '1619783650', 'Treasure Wild', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,UK,IM,99,GG,RS,66,DE,RO,ZA,MT,UA,EE,ES,PT,BG,DK,LV,CO,X1,IT,LT,SE,IE,BY,ON,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(55, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25goldparty.png', NULL, NULL, 'vs25goldparty', '1621807754', 'Gold Party', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,99,PT,IT,LV,ES,LT,X1,CO,IE,BG,DK,SE,NL,66,DE,EE,GG,GR,IM,MT,RO,RS,UA,UK,ZA,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(56, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243lions.png', NULL, NULL, 'vs243lions', '1520439412', '5 Lions', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,IT,UK,SE,RO,GG,CO,BG,EE,IM,LT,LV,RS,MT,PT,DK,ES,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(57, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysyumyum.png', NULL, NULL, 'vswaysyumyum', '1617894269', 'Yum Yum Powerways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DE,MT,66,DK,RS,UK,EE,GG,RO,ZA,GR,99,IM,UA,CO,SE,X1,PT,BG,ES,IT,LT,LV,IE,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(58, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25copsrobbers.png', NULL, NULL, 'vs25copsrobbers', '1627630162', 'Cash Patrol', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UA,EE,RS,GG,66,RO,UK,ON,LV,MT,99,IM,ZA,X1,IT,LT,CO,ES,DK,DE,BG,GR,SE,PT,IE,NL,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(59, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5ultra.png', NULL, NULL, 'vs5ultra', '1591953815', 'Ultra Hold and Spin', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,EE,GR,RS,GG,LT,SE,LV,PT,MT,DE,BG,RO,DK,IM,ES,CO,UK,IT,ZA,X1,UA,NL,66,CH,IE,BY,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(60, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20rhinoluxe.png', NULL, NULL, 'vs20rhinoluxe', '1587642556', 'Great Rhino Deluxe', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,SE,RO,EE,IM,BG,LT,GR,MT,DK,DE,GG,99,PT,RS,CO,UK,ES,LV,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(61, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs15diamond.png', NULL, NULL, 'vs15diamond', '1503317712', 'Diamond Strike', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,CO,IM,GG,PT,SE,RS,DK,LT,IT,MT,BG,DE,LV,GR,UK,99,EE,RO,ZA,X1,UA,NL,66,CH,IE,BY,CZ,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(62, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bbbonanza.png', NULL, NULL, 'vs10bbbonanza', '1599738017', 'Big Bass Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,DE,EE,LV,RS,UK,99,MT,GR,IM,ZA,RO,GG,SE,IT,PT,BG,ES,DK,LT,X1,UA,NL,66,CH,IE,BY,ON,CZ,AT,BE,NO', '1', 'RNG', '', 0, 1, NULL, NULL),
(63, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20terrorv.png', NULL, NULL, 'vs20terrorv', '1611330460', 'Cash Elevator', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UA,66,LV,IM,GG,ZA,EE,MT,GR,RS,UK,DE,99,SE,BG,LT,PT,DK,IT,RO,ES,CO,X1,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(64, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243empcaishen.png', NULL, NULL, 'vs243empcaishen', '1628355239', 'Emperor Caishen', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(65, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10nudgeit.png', NULL, NULL, 'vs10nudgeit', '1616059826', 'Rise of Giza PowerNudge', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,X1,LT,DK,BG,SE,UK,LV,EE,MT,RO,GG,IM,ZA,RS,DE,GR,UA,66,PT,ES,IT,99,IE,ON,BY,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(66, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayselements.png', NULL, NULL, 'vswayselements', '1633098228', 'Elemental Gems Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,UA,99,66,GG,DE,MT,ZA,RO,EE,GR,IM,LV,RS,IE,UK,ES,BG,DK,SE,NL,LT,PT,IT,X1,CO,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(67, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10amm.png', NULL, NULL, 'vs10amm', '1611903197', 'Amazing Money Machine', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,UA,IT,PT,BG,DK,SE,X1,CO,ES,NL,LV,RS,UK,66,99,GR,ZA,IM,DE,MT,EE,RO,GG,CH,IE,BY,CZ,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(68, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20bchprty.png', NULL, NULL, 'vs20bchprty', '1634131757', 'Wild Beach Party', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,GR,IE,NL,DK,IT,ES,PT,SE,IM,MT,RO,RS,UA,UK,ZA,CO,LV,LT,BG,X1,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(69, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10egyptcls.png', NULL, NULL, 'vs10egyptcls', '1537863475', 'Ancient Egypt Classic', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,DE,ES,IM,EE,LT,GG,BG,SE,DK,LV,RS,RO,PT,CO,MT,99,IT,UK,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(70, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20santawonder.png', NULL, NULL, 'vs20santawonder', '1631020967', 'Santa&apos,s Wonderland', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IE,SE,DK,GR,BG,ES,X1,EE,PT,IT,99,DE,IM,RS,UA,LT,LV,MT,UK,ZA,66,GG,NL,CO,RO,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(71, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20rhino.png', NULL, NULL, 'vs20rhino', '1521189220', 'Great Rhino', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DE,GR,IM,IT,GG,BY,CO,RS,99,DK,LT,UK,LV,BG,SE,MT,PT,RO,EE,ES,ZA,X1,UA,NL,66,CH,IE,ON,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(72, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20superx.png', NULL, NULL, 'vs20superx', '1623763257', 'Super X', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IE,GG,RS,PT,DK,99,BG,CO,RO,ZA,IT,66,SE,MT,GR,UA,UK,DE,IM,LV,X1,BY,EE,ES,LT,NL,BE', '1', 'RNG', 'SUPER_SPIN', 0, 1, NULL, NULL),
(73, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40pirate.png', NULL, NULL, 'vs40pirate', '1545310716', 'Pirate Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,EE,IM,99,IT,LT,RS,DE,LV,RO,PT,BY,DK,GG,ES,GR,SE,BG,UK,NL,ZA,UA,66,CH,IE,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(74, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10fruity2.png', NULL, NULL, 'vs10fruity2', '1540818802', 'Extra Juicy', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,UK,GG,ES,SE,LV,DK,MT,LT,IM,DE,EE,RS,GR,IT,99,PT,RO,ZA,UA,NL,66,CH,IE,BY,ON,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(75, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20fparty2.png', NULL, NULL, 'vs20fparty2', '1617348645', 'Fruit Party 2', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ZA,GG,GR,UK,IM,66,RO,EE,RS,99,DE,MT,UA,ES,DK,PT,IT,LT,CO,X1,LV,BG,SE,IE,ON,BY,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(76, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayscryscav.png', NULL, NULL, 'vswayscryscav', '1628587072', 'Crystal Caverns Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IE,BY,66,PT,UK,IT,IM,NL,99,DK,MT,DE,ES,LV,RS,SE,BG,UA,ZA,CO,EE,GG,GR,LT,RO,X1,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(77, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10cowgold.png', NULL, NULL, 'vs10cowgold', '1597301701', 'Cowboys Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,99,LV,RO,RS,UK,GG,IM,MT,ZA,ES,LT,DE,GR,DK,SE,IT,CO,BG,PT,X1,UA,NL,66,CH,IE,BY,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(78, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs7fire88.png', NULL, NULL, 'vs7fire88', '1516798686', 'Fire 88', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,CO,BG,LV,LT,ES,MT,PT,RO,IT,GG,99,UK,RS,SE,EE,NL,ZA,X1,UA,66,CH,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(79, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50juicyfr.png', NULL, NULL, 'vs50juicyfr', '1606463130', 'Juicy Fruits', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,PT,EE,ZA,DE,IM,UK,RS,RO,GR,LV,GG,MT,BG,CO,X1,IT,UA,ES,LT,DK,66,SE,99,CH,IE,ON,BY,CZ,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(80, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20ultim5.png', NULL, NULL, 'vs20ultim5', '1634561519', 'The Ultimate 5', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,GG,RO,GR,IM,99,MT,DE,UK,EE,66,IE,LV,RS,UA,ZA,SE,ES,X1,CO,PT,LT,DK,BG,IT,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(81, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10eyestorm.png', NULL, NULL, 'vs10eyestorm', '1602151278', 'Eye of the Storm', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,DK,CO,ES,IT,BG,PT,LT,EE,MT,UK,GR,RS,RO,IM,LV,ZA,GG,DE,99,X1,UA,NL,66,CH,IE,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(82, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243mwarrior.png', NULL, NULL, 'vs243mwarrior', '1553615521', 'Monkey Warrior', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,GG,PT,IM,EE,BG,CO,ES,UK,IT,MT,RO,LV,LT,RS,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(83, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25mustang.png', NULL, NULL, 'vs25mustang', '1535445127', 'Mustang Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,BG,MT,SE,LT,DK,BY,PT,99,RO,LV,CO,GG,UK,ES,IM,IT,EE,DE,GR,ZA,X1,UA,NL,66,CH,IE,ON,CZ,BE,AT', '1', 'RNG', '', 0, 1, NULL, NULL),
(84, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysstrwild.png', NULL, NULL, 'vswaysstrwild', '1650031167', 'Candy Stars', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,DK,EE,GG,GR,IE,IM,LT,LV,NL,PT,RO,RS,SE,UA,UK,ZA,MT,CO,IT,ON,BG,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(85, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs576treasures.png', NULL, NULL, 'vs576treasures', '1590589403', 'Wild Wild Riches', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,MT,UK,IM,CO,LV,LT,GG,GR,RS,IT,99,PT,DE,BG,EE,SE,ES,RO,NL,ZA,X1,UA,66,CH,IE,ON,CZ,BY,BE', '1', 'RNG', 'ANTE', 0, 1, NULL, NULL),
(86, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5drhs.png', NULL, NULL, 'vs5drhs', '1611758020', 'Dragon Hot Hold & Spin', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,PT,X1,CO,RO,ZA,66,UK,GG,RS,EE,GR,IM,MT,UA,99,LV,DE,SE,BG,ES,DK,LT,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(87, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20kraken.png', NULL, NULL, 'vs20kraken', '1562244428', 'Release the Kraken', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,RS,BG,EE,CO,LT,ES,SE,IM,GG,PT,MT,GR,DK,DE,UK,RO,IT,99,ZA,X1,UA,66,IE,BY,ON,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(88, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20phoenixf.png', NULL, NULL, 'vs20phoenixf', '1612429795', 'Phoenix Forge', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,SE,LT,IM,LV,GG,RS,UK,MT,RO,EE,DE,66,GR,ZA,99,UA,ES,NL,X1,DK,CO,BG,IT,CH,IE,BY,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(89, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20rockvegas.png', NULL, NULL, 'vs20rockvegas', '1629122638', 'Rock Vegas', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,PT,IT,LT,ES,IE,X1,CO,BG,SE,DK,NL,66,99,DE,EE,GG,GR,IM,LV,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(90, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1024temuj.png', NULL, NULL, 'vs1024temuj', '1607697052', 'Temujin Treasures', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'X1,SE,PT,UA,DK,BG,RS,DE,RO,UK,99,GG,ZA,IM,EE,GR,MT,ES,IT,CO,LT,66,LV,IE,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(91, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10runes.png', NULL, NULL, 'vs10runes', '1628164192', 'Gates of Valhalla', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,ES,66,99,DE,EE,GG,GR,IM,MT,RO,RS,UA,UK,ZA,IE,CO,SE,X1,PT,BG,DK,LT,LV,IT,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(92, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1dragon8.png', NULL, NULL, 'vs1dragon8', '1493812996', '888 Dragons', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,GG,UK,EE,MT,IM,SE,LV,99,IT,RO,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(93, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25chilli.png', NULL, NULL, 'vs25chilli', '1513769922', 'Chilli Heat', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,GG,UK,DE,BY,LT,99,MT,ES,IM,DK,BG,SE,LV,GR,EE,IT,CO,RS,PT,ZA,X1,NL,UA,66,CH,IE,ON,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(94, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysrabbits.png', NULL, NULL, 'vswaysrabbits', '1666863473', '5 Rabbits Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(95, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25kfruit.png', NULL, NULL, 'vs25kfruit', '1650618938', 'Aztec Blaze', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,PT,LT,GR,ES,BG,CO,NL,IT,ON,SE,DK,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(96, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bbkir.png', NULL, NULL, 'vs10bbkir', '1655131213', 'Big Bass Bonanza - Keeping it Reel', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,SE,IT,NL,ON,PT,LT,GR,CO,BG,DK,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(97, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs12bbbxmas.png', NULL, NULL, 'vs12bbbxmas', '1658214381', 'Bigger Bass Blizzard - Christmas Catch', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,RS,UA,UK,ZA,LV,NL,DK,ON,IT,PT,SE,CO,LT,GR,66,99,DE,EE,GG,IE,IM,MT,ES,BG,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(98, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20trswild2.png', NULL, NULL, 'vs20trswild2', '1647530068', 'Black Bull', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,X1,CO,LT,DK,ON,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,LV,PT,SE,ES,BG,IT,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(99, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25bomb.png', NULL, NULL, 'vs25bomb', '1642081790', 'Bomb Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,ES,PT,SE,66,99,DE,EE,GG,GR,IE,IM,LT,MT,RO,RS,UA,UK,ZA,LV,IT,NL,CO,X1,BG,ON,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(100, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10tut.png', NULL, NULL, 'vs10tut', '1654176306', 'Book Of Tut Respin', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,BG,NL,ES,IT,PT,GR,CO,LT,LV,66,99,DE,DK,EE,GG,IE,IM,MT,ON,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(101, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysbook.png', NULL, NULL, 'vswaysbook', '1647515448', 'Book of Golden Sands', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,SE,IT,ON,NL,LT,LV,BG,CO,X1,DK,GR,PT,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(102, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243ckemp.png', NULL, NULL, 'vs243ckemp', '1658909395', 'Cheeky Emperor', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(103, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs12tropicana.png', NULL, NULL, 'vs12tropicana', '1660891115', 'Club Tropicana', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,LV,BE,DK,LT,CO,GR,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,ON,PT,SE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(104, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40cosmiccash.png', NULL, NULL, 'vs40cosmiccash', '1646930177', 'Cosmic Cash', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ON,ES,DK,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,PT,IT,LV,NL,SE,CO,X1,LT,BG,CH,BY,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(105, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysultrcoin.png', NULL, NULL, 'vswaysultrcoin', '1667822006', 'Cowboy Coins', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(106, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10crownfire.png', NULL, NULL, 'vs10crownfire', '1653920247', 'Crown of Fire', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,LT,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,DK,BG,CO,X1,LV,IT,NL,ON,PT,SE,DE,ES,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(107, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20underground.png', NULL, NULL, 'vs20underground', '1648559965', 'Down the Rails', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,GG,UK,66,DE,EE,IE,IM,MT,RO,RS,UA,ZA,PT,SE,DK,LT,LV,ON,IT,NL,X1,CO,ES,BG,GR,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(108, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20drgbless.png', NULL, NULL, 'vs20drgbless', '1666854917', 'Dragon Hero', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,GR,LT,ES,IT,ON,PT,SE,CO,NL,LV,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(109, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25archer.png', NULL, NULL, 'vs25archer', '1662032319', 'Fire Archer', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,BE,IT,LV,NL,GR,CO,DK,LT,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,PT,SE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(110, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs100firehot.png', NULL, NULL, 'vs100firehot', '1648120006', 'Fire Hot 100', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,GR,BG,CO,DK,X1,LT,LV,NL,PT,SE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(111, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20fh.png', NULL, NULL, 'vs20fh', '1647872051', 'Fire Hot 20', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ES,ON,CO,DK,LT,X1,GR,BG,LV,NL,PT,SE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(112, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40firehot.png', NULL, NULL, 'vs40firehot', '1648470786', 'Fire Hot 40', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ES,ON,X1,DK,BG,CO,LT,GR,LV,NL,PT,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(113, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5firehot.png', NULL, NULL, 'vs5firehot', '1647595145', 'Fire Hot 5', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,PT,SE,IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,ES,LT,X1,CO,GR,BG,DK,LV,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(114, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysconcoll.png', NULL, NULL, 'vswaysconcoll', '1655736970', 'Firebird Spirit - Connect & Collect', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,NL,BG,ON,LV,PT,SE,ES,GR,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,LT,DK,CO,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(115, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10fisheye.png', NULL, NULL, 'vs10fisheye', '1663793834', 'Fish Eye', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,IT,BE,ES,CO,GR,LT,LV,NL,ON,PT,SE,BG', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(116, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysfltdrg.png', NULL, NULL, 'vswaysfltdrg', '1654619004', 'Floating Dragon Hold & Spin Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,LV,NL,ON,IT,PT,SE,LT,ES,BG,GR,CO,BY,66,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(117, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysfuryodin.png', NULL, NULL, 'vswaysfuryodin', '1658907845', 'Fury of Odin Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,BG,BE,CO,GR,LT,ES,66,99,DE,EE,GG,IE,IM,IT,LV,MT,ON,PT,RO,RS,SE,UA,UK,X1,ZA,NL', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(118, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20aztecgates.png', NULL, NULL, 'vs20aztecgates', '1671197044', 'Gates of Aztec', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(119, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20gatotgates.png', NULL, NULL, 'vs20gatotgates', '1664453812', 'Gates of Gatot Kaca', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(120, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20gatotfury.png', NULL, NULL, 'vs20gatotfury', '1670316344', 'Gatot Kaca&apos,s Fury', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(121, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20lcount.png', NULL, NULL, 'vs20lcount', '1649059371', 'Gems of Serengeti', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,ON,GR,DK,CO,LV,NL,PT,SE,IT,LT,BG,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(122, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1024gmayhem.png', NULL, NULL, 'vs1024gmayhem', '1645783969', 'Gorilla Mayhem', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,LV,DK,SE,IT,NL,CO,X1,BG,MT,66,99,DE,EE,GG,GR,IE,IM,RO,RS,UA,UK,ZA,ON,LT,ES,BY,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(123, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20wolfie.png', NULL, NULL, 'vs20wolfie', '1649884522', 'Greedy Wolf', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,CO,X1,LT,DK,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,LV,NL,ES,ON,IT,PT,BY,BE', '1', 'RNG', 'ANTE', 0, 1, NULL, NULL),
(124, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40mstrwild.png', NULL, NULL, 'vs40mstrwild', '1649403727', 'Happy Hooves', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,ON,PT,ES,CO,LT,X1,BG,BY,DK,GR,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(125, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20dugems.png', NULL, NULL, 'vs20dugems', '1654681279', 'Hot Pepper', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,NL,ON,PT,SE,BG,LT,DK,CO,GR,ES,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(126, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40hotburnx.png', NULL, NULL, 'vs40hotburnx', '1650461546', 'Hot To Burn Extreme', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,NL,SE,DK,X1,LT,CO,BG,ON,IT,LV,ES,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(127, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20mvwild.png', NULL, NULL, 'vs20mvwild', '1654091720', 'Jasmine Dreams', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(128, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20asgard.png', NULL, NULL, 'vs20asgard', '1662996634', 'Kingdom of Asgard', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(129, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243koipond.png', NULL, NULL, 'vs243koipond', '1632121425', 'Koi Pond', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(130, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayslofhero.png', NULL, NULL, 'vswayslofhero', '1655895863', 'Legend of Heroes', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(131, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysluckyfish.png', NULL, NULL, 'vswaysluckyfish', '1666863578', 'Lucky Fishing', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(132, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25tigeryear.png', NULL, NULL, 'vs25tigeryear', '1638970408', 'Lucky New Year - Tiger Treasures', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(133, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10mmm.png', NULL, NULL, 'vs10mmm', '1648833669', 'Magic Money Maze', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,CO,DK,X1,ON,LT,BG,NL,PT,SE,LV,IT,ES,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(134, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20mammoth.png', NULL, NULL, 'vs20mammoth', '1664173161', 'Mammoth Gold Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LV,NL,ON,PT,SE,ES,GR,IT,CO,LT,BG,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(135, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20superlanche.png', NULL, NULL, 'vs20superlanche', '1665130261', 'Monster Superlanche', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,LT,CO,ES,DK,66,99,DE,EE,GG,IE,IM,MT,NL,RO,RS,SE,UA,UK,ZA,IT,LV,ON,GR,BG,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(136, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20muertos.png', NULL, NULL, 'vs20muertos', '1657890717', 'Muertos Multiplier Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,LV,ON,SE,LT,CO,IT,NL,PT,ES,BG,DK,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(137, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysmorient.png', NULL, NULL, 'vswaysmorient', '1668582966', 'Mystery of the Orient', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BE,NL,GR,IT,LT,ON,PT,SE,DK', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(138, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20octobeer.png', NULL, NULL, 'vs20octobeer', '1650009032', 'Octobeer Fortunes', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,LV,IT,NL,ON,PT,SE,X1,CO,GR,ES,BG,LT,DK,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(139, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysoldminer.png', NULL, NULL, 'vswaysoldminer', '1644856286', 'Old Gold Miner Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,MT,RO,UK,NL,ON,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(140, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayspizza.png', NULL, NULL, 'vswayspizza', '1664288098', 'PIZZA PIZZA PIZZA', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,GR,SE,BG,ES,BE,ON,IT,NL,PT,CO,DK,LT', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(141, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20ltng.png', NULL, NULL, 'vs20ltng', '1654505839', 'Pinup Girls', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,SE,DK,NL,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,LT,ES,GR,CO,ON,BG,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(142, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20mtreasure.png', NULL, NULL, 'vs20mtreasure', '1645198209', 'Pirate Golden Age', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,BG,GR,ES,PT,CO,LT,IT,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LV,NL,ON,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(143, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20goldclust.png', NULL, NULL, 'vs20goldclust', '1669900144', 'Rabbit Garden', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(144, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25rlbank.png', NULL, NULL, 'vs25rlbank', '1657027833', 'Reel Banks', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UK,99,66,DE,EE,GG,IE,IM,MT,RO,RS,UA,ZA,SE,BE,LT,LV,NL,ON,PT,DK,GR,CO,ES,IT,BG', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(145, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20kraken2.png', NULL, NULL, 'vs20kraken2', '1657867870', 'Release the Kraken 2', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,ON,PT,SE,BG,ES,DK,GR,LT,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(146, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20porbs.png', NULL, NULL, 'vs20porbs', '1659687509', 'Santa&apos,s Great Gifts', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,ON,PT,SE,ES,BG,GR,CO,DK,LT,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(147, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25spgldways.png', NULL, NULL, 'vs25spgldways', '1663758009', 'Secret City Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,IT,LV,NL,ON,BE,PT,SE,ES,LT,GR,CO,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BG', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(148, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20sparta.png', NULL, NULL, 'vs20sparta', '1654691367', 'Shield Of Sparta', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,LT,BG,GR,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,LV,ON,PT,SE,IT,NL,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(149, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs100sh.png', NULL, NULL, 'vs100sh', '1644586301', 'Shining Hot 100', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,BG,ON,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,ES,IT,LV,NL,PT,SE,X1,DK,CO,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(150, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20sh.png', NULL, NULL, 'vs20sh', '1643976929', 'Shining Hot 20', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,ON,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,ES,IT,LV,NL,PT,SE,X1,DK,CO,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(151, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40sh.png', NULL, NULL, 'vs40sh', '1642592904', 'Shining Hot 40', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,BG,ON,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,PT,SE,ES,X1,DK,CO,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(152, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5sh.png', NULL, NULL, 'vs5sh', '1644228406', 'Shining Hot 5', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,ON,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,PT,SE,ES,X1,CO,DK,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(153, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10snakeeyes.png', NULL, NULL, 'vs10snakeeyes', '1653393645', 'Snakes & Ladders - Snake Eyes', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,99,UK,GR,ON,DK,CO,LT,LV,NL,PT,SE,IT,BG,66,DE,EE,IE,IM,MT,RO,RS,UA,ZA,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL);
INSERT INTO `game_list` (`id`, `provider`, `image`, `image_is_url`, `game_group_id`, `game_id`, `game_id_long`, `game_name`, `game_type_id`, `game_demo`, `category`, `technology`, `technology_id`, `platform`, `aspect_ratio`, `jurisdictions`, `frb_available`, `data_type`, `features`, `game_locked`, `status`, `created_at`, `updated_at`) VALUES
(154, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysfrywld.png', NULL, NULL, 'vswaysfrywld', '1657201370', 'Spin & Score Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,ON,PT,SE,BG,ES,LV,GR,DK,LT,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(155, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20schristmas.png', NULL, NULL, 'vs20schristmas', '1666862661', 'Starlight Christmas', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,EE,GG,IE,IM,LV,MT,RO,RS,UA,ZA,99,UK,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(156, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5strh.png', NULL, NULL, 'vs5strh', '1651661433', 'Striking Hot 5', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,NL,ON,PT,IT,LV,ES,CO,LT,X1,SE,BG,DK,GR,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(157, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20sugarrush.png', NULL, NULL, 'vs20sugarrush', '1646488614', 'Sugar Rush', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'X1,CO,ON,ES,LT,IM,RS,DK,GG,IT,NL,EE,UK,LV,ZA,GR,MT,DE,PT,UA,99,66,IE,SE,RO,BG,BY,AT,NO,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(158, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20clspwrndg.png', NULL, NULL, 'vs20clspwrndg', '1661154054', 'Sweet Powernudge', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,DK,LT,CO,BG,NL,ON,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,BE,PT,SE,GR,IT', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(159, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20swordofares.png', NULL, NULL, 'vs20swordofares', '1657802275', 'Sword of Ares', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,NL,ON,PT,SE,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BG,ES,DK,CO,LT,GR,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(160, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20doghousemh.png', NULL, NULL, 'vs20doghousemh', '1671616840', 'The Dog House Multihold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BE,IT,PT,SE,66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,NL,ON', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(161, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20sknights.png', NULL, NULL, 'vs20sknights', '1666631946', 'The Knight King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(162, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20theights.png', NULL, NULL, 'vs20theights', '1650457777', 'Towering Fortunes', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,LT,BG,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,ES,DK,LV,ON,PT,SE,IT,NL,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(163, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysjkrdrop.png', NULL, NULL, 'vswaysjkrdrop', '1646656358', 'Tropical Tiki', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,DK,CO,X1,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,LV,NL,PT,SE,ES,ON,LT,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(164, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20mparty.png', NULL, NULL, 'vs20mparty', '1651051209', 'Wild Hop & Drop', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,LT,GR,DK,BG,CO,X1,SE,LV,GG,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,ON,PT,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(165, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20pistols.png', NULL, NULL, 'vs20pistols', '1658782771', 'Wild West Duels', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,IT,NL,ON,CO,PT,SE,BE,GR,LT,DK', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(166, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayswwhex.png', NULL, NULL, 'vswayswwhex', '1655994486', 'Wild Wild Bananas', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,CO,DK,GR,LT,PT,SE,UK,66,99,DE,EE,IE,IM,MT,RO,RS,UA,ZA,IT,LV,NL,ON,BE,BG,ES', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(167, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayswwriches.png', NULL, NULL, 'vswayswwriches', '1663938013', 'Wild Wild Riches Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,IM,UK,BE,66,99,DE,EE,IE,MT,RO,RS,UA,ZA,IT,LV,PT,SE,CO,DK,GR,LT,NL,ON,ES,BG', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(168, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40spartaking.png', NULL, NULL, 'vs40spartaking', '1597399279', 'Spartan King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,ES,IT,RS,GG,LV,99,IM,RO,EE,GR,UK,DE,LT,MT,ZA,BG,PT,SE,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(169, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/bjmb.png', NULL, NULL, 'bjmb', '1510756997', 'American Blackjack', 'bj', '1', 'Blackjack', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UK,IT,IM,SE,MT,EE,CO,RO,DK,99,GG,RS,ZA,UA,PT,66,IE,BE', '', 'LC', '', 0, 1, NULL, NULL),
(170, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysaztecking.png', NULL, NULL, 'vswaysaztecking', '1623317373', 'Aztec King Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(171, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/cs5moneyroll.png', NULL, NULL, 'cs5moneyroll', '1507188401', 'Money Roll', 'cs', '1', 'Classic Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '', 'RNG', '', 0, 1, NULL, NULL),
(172, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5ultrab.png', NULL, NULL, 'vs5ultrab', '1584361706', 'Ultra Burn', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,UK,MT,IM,LV,GR,DK,IT,GG,BG,99,CO,ES,RS,RO,LT,PT,DE,SE,NL,ZA,X1,UA,66,CH,IE,CZ,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(173, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20emptybank.png', NULL, NULL, 'vs20emptybank', '1617603300', 'Empty the Bank', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,IM,GG,UK,RO,ZA,GR,MT,DE,UA,99,66,RS,BG,IT,X1,CO,LT,DK,PT,ES,SE,LV,IE,ON,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(174, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243chargebull.png', NULL, NULL, 'vs243chargebull', '1622189972', 'Raging Bull', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(175, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25btygold.png', NULL, NULL, 'vs25btygold', '1622215011', 'Bounty Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,RS,EE,UA,99,UK,66,IM,RO,DE,ZA,MT,GR,DK,SE,PT,LV,IE,CO,ES,IT,LT,X1,BG,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(176, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25gldox.png', NULL, NULL, 'vs25gldox', '1605616608', 'Golden Ox', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(177, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20eightdragons.png', NULL, NULL, 'vs20eightdragons', '1495539348', '8 Dragons', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,UK,99,GG,IM,EE,RS,MT,IT,ZA,UA,66,IE,RO,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(178, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1money.png', NULL, NULL, 'vs1money', '1580468307', 'Money Money Money', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(179, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25mmouse.png', NULL, NULL, 'vs25mmouse', '1574083679', 'Money Mouse', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,IT,PT,RO,CO,GG,RS,ES,LV,UK,MT,EE,99,BG,SE,IM,DE,GR,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(180, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25rio.png', NULL, NULL, 'vs25rio', '1616072367', 'Heart of Rio', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,MT,66,ZA,UA,GG,IT,99,ES,IM,SE,RO,RS,DE,PT,UK,LT,GR,LV,DK,CO,X1,BG,IE,BY,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(181, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs75bronco.png', NULL, NULL, 'vs75bronco', '1581319336', 'Bronco Spirit', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,RS,LV,GR,MT,PT,ES,RO,EE,UK,GG,99,LT,DE,IM,SE,IT,CO,DK,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(182, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20bermuda.png', NULL, NULL, 'vs20bermuda', '1622797439', 'Bermuda Riches', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,MT,RO,RS,ZA,UA,GR,99,66,UK,EE,DE,GG,LT,CO,X1,DK,LV,BG,SE,ES,PT,IT,IE,BY,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(183, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40bigjuan.png', NULL, NULL, 'vs40bigjuan', '1627046307', 'Big Juan', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,GG,RO,GR,LV,ZA,MT,EE,PT,IM,DE,UK,66,RS,SE,UA,99,IT,IE,X1,ES,BG,CO,LT,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(184, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayschilheat.png', NULL, NULL, 'vswayschilheat', '1617610052', 'Chilli Heat Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,IM,ZA,GG,MT,RS,UA,ES,GR,DE,RO,66,99,EE,UK,LT,IT,PT,SE,BG,LV,X1,CO,IE,ON,BY,NL,BE', '1', 'RNG', 'ANTE,BUY', 0, 1, NULL, NULL),
(185, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243fortseren.png', NULL, NULL, 'vs243fortseren', '1562750191', 'Greek Gods', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,DE,RO,IT,LT,SE,LV,CO,GR,99,EE,GG,IM,RS,MT,UK,BG,PT,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(186, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bookazteck.png', NULL, NULL, 'vs10bookazteck', '1644420346', 'Book of Aztec King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(187, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1024lionsd.png', NULL, NULL, 'vs1024lionsd', '1591365456', '5 Lions Dance', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,CO,BG,GG,UK,IM,PT,SE,RS,LV,EE,99,RO,IT,DK,ES,MT,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(188, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20chickdrop.png', NULL, NULL, 'vs20chickdrop', '1619768910', 'Chicken Drop', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ZA,DE,GR,UK,99,GG,MT,RO,IM,RS,66,EE,UA,ES,DK,CO,X1,IT,LT,LV,BG,PT,SE,IE,BY,ON,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(189, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs576hokkwolf.png', NULL, NULL, 'vs576hokkwolf', '1620375335', 'Hokkaido Wolf', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'ANTE', 0, 1, NULL, NULL),
(190, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs75empress.png', NULL, NULL, 'vs75empress', '1573481798', 'Golden Beauty', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,ES,DE,SE,IM,LT,BG,MT,LV,CO,99,DK,GR,RS,PT,IT,EE,UK,GG,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(191, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1600drago.png', NULL, NULL, 'vs1600drago', '1573809698', 'Drago - Jewels of Fortune', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,DE,ES,RS,IM,GG,LT,99,IT,EE,LV,RO,MT,PT,UK,BG,CO,DK,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(192, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1fortunetree.png', NULL, NULL, 'vs1fortunetree', '1559907578', 'Tree of Riches', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,RS,CO,LV,IT,RO,MT,PT,GG,LT,EE,DE,DK,ES,GR,IM,UK,99,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(193, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/cs5triple8gold.png', NULL, NULL, 'cs5triple8gold', '1484225848', '888 Gold', 'cs', '1', 'Classic Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '', 'RNG', '', 0, 1, NULL, NULL),
(194, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bblpop.png', NULL, NULL, 'vs10bblpop', '1631598049', 'Bubble Pop', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(195, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25pyramid.png', NULL, NULL, 'vs25pyramid', '1582874025', 'Pyramid King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,LV,RO,MT,UK,DK,IT,GG,CO,GR,LT,EE,SE,BG,DE,IM,PT,ES,RS,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(196, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20vegasmagic.png', NULL, NULL, 'vs20vegasmagic', '1525426594', 'Vegas Magic', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,CO,UK,LT,RS,LV,ES,BG,PT,IT,EE,99,IM,MT,GG,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(197, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/bjma.png', NULL, NULL, 'bjma', '1455872782', 'Multihand Blackjack', 'bj', '1', 'Blackjack', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,99,IM,GG,SE,MT,RO,DK,RS,IT,EE,UK,ZA,UA,PT,66,IE,BE', '', 'LC', '', 0, 1, NULL, NULL),
(198, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysbbb.png', NULL, NULL, 'vswaysbbb', '1628177246', 'Big Bass Bonanza Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UA,UK,GR,MT,EE,DE,GG,RS,66,ZA,RO,IM,99,IE,DK,LT,BG,ES,LV,SE,BY,CO,PT,X1,IT,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(199, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs432congocash.png', NULL, NULL, 'vs432congocash', '1598948184', 'Congo Cash', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,NL,DK,RO,DE,SE,IM,GR,IT,LT,LV,GG,BG,99,UK,ZA,PT,MT,EE,RS,ES,X1,UA,66,CH,IE,BY,CZ,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(200, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20colcashzone.png', NULL, NULL, 'vs20colcashzone', '1630654866', 'Colossal Cash Zone', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,ES,66,99,DE,EE,GG,GR,IM,LV,MT,RO,RS,UA,UK,ZA,BG,IE,X1,PT,CO,SE,LT,DK,IT,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(201, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243dancingpar.png', NULL, NULL, 'vs243dancingpar', '1574956138', 'Dance Party', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DE,GR,UK,RO,SE,DK,BG,CO,RS,IM,99,LV,IT,MT,LT,GG,EE,ES,PT,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(202, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25goldpig.png', NULL, NULL, 'vs25goldpig', '1546428971', 'Golden Pig', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(203, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40wanderw.png', NULL, NULL, 'vs40wanderw', '1625224653', 'Wild Depths', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,ES,IE,CO,X1,SE,NL,BG,PT,DE,GR,99,LV,UA,ZA,RS,DK,IM,MT,GG,LT,RO,UK,EE,66,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(204, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1masterjoker.png', NULL, NULL, 'vs1masterjoker', '1576066858', 'Master Joker', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,MT,GG,SE,LV,UK,BG,IT,IM,99,GR,ES,EE,DE,DK,CO,LT,PT,RS,ZA,X1,UA,NL,66,CH,IE,CZ,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(205, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs243fortune.png', NULL, NULL, 'vs243fortune', '1496240977', 'Caishen&apos,s Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,CO,BG,UK,IT,99,GG,ES,RS,MT,LV,PT,RO,DK,EE,LT,ZA,DE,GR,X1,UA,66,SE,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(206, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs9piggybank.png', NULL, NULL, 'vs9piggybank', '1620304691', 'Piggy Bank Bills', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,CO,BG,X1,UA,UK,GG,ZA,EE,RS,DE,66,99,GR,RO,MT,IM,ES,LV,PT,SE,DK,IT,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(207, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25wolfgold.png', NULL, NULL, 'vs25wolfgold', '1487350061', 'Wolf Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,SE,99,BG,UK,GR,LV,IT,RS,RO,EE,MT,ES,DE,DK,LT,GG,CO,IM,PT,ZA,X1,UA,NL,66,CH,IE,CZ,ON,BE,AT', '1', 'RNG', '', 0, 1, NULL, NULL),
(208, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/bca.png', NULL, NULL, 'bca', '1455872785', 'Baccarat', 'bc', '1', 'Baccarat', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,99,CO,RS,GG,IT,IM,DK,RO,EE,UK,SE,ZA,UA,66,IE,BE', '', 'LC', '', 0, 1, NULL, NULL),
(209, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20wildboost.png', NULL, NULL, 'vs20wildboost', '1608204824', 'Wild Booster', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,99,ES,SE,IT,BG,LV,EE,UK,GG,GR,66,MT,RO,DE,IM,ZA,RS,CO,PT,LT,X1,NL,UA,CH,IE,CZ,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(210, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayswerewolf.png', NULL, NULL, 'vswayswerewolf', '1589544488', 'Curse of the Werewolf Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,BG,PT,IT,IM,UK,LV,SE,CO,ES,99,RS,GG,DK,EE,RO,MT,DE,GR,NL,ZA,66,X1,UA,CH,IE,CZ,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(211, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25wildspells.png', NULL, NULL, 'vs25wildspells', '1499775857', 'Wild Spells', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,RS,MT,EE,99,IM,LT,IT,RO,LV,GG,PT,BG,SE,CO,UK,DK,ZA,DE,GR,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(212, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5super7.png', NULL, NULL, 'vs5super7', '1573127688', 'Super 7s ', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,ES,UK,BG,99,SE,DE,MT,IT,RO,GG,LT,GR,EE,LV,IM,RS,PT,DK,NL,ZA,X1,UA,66,CH,IE,CZ,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(213, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bookoftut.png', NULL, NULL, 'vs10bookoftut', '1582290405', 'Book of Tut', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,DE,EE,MT,ES,IM,LT,CO,GR,RS,LV,GG,DK,UK,99,IT,RO,PT,SE,ZA,X1,UA,NL,66,CH,IE,CZ,BY,ON,AT,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(214, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10luckcharm.png', NULL, NULL, 'vs10luckcharm', '1614601142', 'Lucky, Grace & Charm', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,PT,ES,LT,DK,IT,SE,DE,RO,UA,EE,CO,GG,LV,UK,66,IM,MT,RS,X1,ZA,GR,99,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(215, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40pirgold.png', NULL, NULL, 'vs40pirgold', '1596114870', 'Pirate Gold Deluxe', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,IT,ES,BG,PT,EE,RO,RS,ZA,MT,GG,IM,GR,99,DE,UK,CO,DK,LT,SE,UA,66,IE,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(216, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1tigers.png', NULL, NULL, 'vs1tigers', '1513070130', 'Triple Tigers', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,IT,IM,EE,RO,GG,99,LV,RS,SE,UK,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(217, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10wildtut.png', NULL, NULL, 'vs10wildtut', '1599212816', 'Mysterious Egypt', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,MT,RO,RS,EE,UK,DE,LV,99,GR,IM,GG,ZA,LT,SE,PT,BG,DK,IT,ES,X1,UA,66,IE,ON,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(218, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25newyear.png', NULL, NULL, 'vs25newyear', '1511857851', 'Lucky New Year', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,99,RS,CO,MT,IT,RO,GG,IM,UK,SE,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(219, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayswest.png', NULL, NULL, 'vswayswest', '1619447303', 'Mystic Chief', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,PT,CO,IT,LV,X1,LT,BG,ES,99,RS,RO,DE,UA,GG,EE,ZA,IM,UK,66,GR,MT,SE,IE,BY,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(220, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25tigerwar.png', NULL, NULL, 'vs25tigerwar', '1589357657', 'The Tiger Warrior', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(221, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25peking.png', NULL, NULL, 'vs25peking', '1529399160', 'Peking Luck', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,PT,BG,LT,LV,GG,MT,RO,ES,CO,EE,IM,IT,UK,RS,SE,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(222, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1024dtiger.png', NULL, NULL, 'vs1024dtiger', '1592569000', 'The Dragon Tiger', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,SE,EE,LV,GG,IM,LT,RS,99,MT,RO,UK,CO,ZA,ES,BG,IT,DE,GR,PT,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(223, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20smugcove.png', NULL, NULL, 'vs20smugcove', '1626269940', 'Smugglers Cove', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,IE,LT,CO,X1,IT,DK,EE,IM,RS,ZA,SE,UK,66,RO,DE,GG,LV,UA,99,GR,MT,NL,ES,PT,BE', '1', 'RNG', 'ANTE', 0, 1, NULL, NULL),
(224, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25asgard.png', NULL, NULL, 'vs25asgard', '1523960262', 'Asgard', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,SE,LV,IT,BG,UK,MT,CO,GG,PT,RO,LT,ES,99,RS,EE,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(225, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25goldrush.png', NULL, NULL, 'vs25goldrush', '1507726919', 'Gold Rush', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,DE,BG,RS,MT,DK,CO,LT,IT,UK,EE,PT,ES,LV,RO,IM,GG,SE,99,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(226, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5spjoker.png', NULL, NULL, 'vs5spjoker', '1564667918', 'Super Joker', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,PT,EE,99,SE,BG,UK,GR,LT,ES,LV,RO,DK,CO,GG,IM,DE,IT,RS,NL,ZA,X1,UA,66,CH,IE,CZ,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(227, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1024butterfly.png', NULL, NULL, 'vs1024butterfly', '1524579919', 'Jade Butterfly', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,IM,GG,SE,RS,EE,99,LT,ES,MT,BG,UK,PT,LV,IT,ZA,UA,66,IE,BE', '', 'RNG', '', 0, 1, NULL, NULL),
(228, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5hotburn.png', NULL, NULL, 'vs5hotburn', '1578498329', 'Hot to Burn', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,IM,CO,ES,LT,GG,LV,UK,EE,99,IT,RO,DK,PT,SE,RS,BG,DE,GR,NL,ZA,UA,66,CH,IE,BY,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(229, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10mayangods.png', NULL, NULL, 'vs10mayangods', '1594304610', 'John Hunter And The Mayan Gods', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,MT,LV,RO,GG,IM,ZA,EE,RS,UK,GR,99,DE,DK,IT,SE,LT,BG,ES,PT,X1,UA,NL,66,CH,IE,CZ,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(230, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10madame.png', NULL, NULL, 'vs10madame', '1524489855', 'Madame Destiny', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,MT,GG,EE,PT,99,IT,IM,DE,RO,ES,BG,UK,RS,LT,GR,LV,CO,SE,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(231, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/bnadvanced.png', NULL, NULL, 'bnadvanced', '1545750248', 'Dragon Bonus Baccarat', 'bn', '1', 'Baccarat New', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '', 'LC', '', 0, 1, NULL, NULL),
(232, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20daydead.png', NULL, NULL, 'vs20daydead', '1625747556', 'Day of Dead', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,UA,UK,99,MT,GG,RO,CO,DK,GR,LT,66,IT,DE,PT,RS,X1,EE,ZA,IM,SE,BG,ES,IE,BY,NL,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(233, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25samurai.png', NULL, NULL, 'vs25samurai', '1590072949', 'Rise of Samurai', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(234, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25vegas.png', NULL, NULL, 'vs25vegas', '1498044866', 'Vegas Nights', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,IM,UK,RO,EE,RS,MT,BG,LT,99,GG,SE,PT,ES,LV,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(235, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayshive.png', NULL, NULL, 'vswayshive', '1590991956', 'Star Bounty', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,BG,RO,LT,UK,DK,LV,IM,CO,ES,IT,99,MT,PT,EE,SE,RS,ZA,DE,GR,66,X1,UA,IE,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(236, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25jokerking.png', NULL, NULL, 'vs25jokerking', '1603968551', 'Joker King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,IT,ES,SE,NL,CO,DK,PT,BG,99,EE,GG,MT,IM,LV,DE,UK,ZA,GR,RO,RS,X1,UA,66,CH,IE,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(237, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1fufufu.png', NULL, NULL, 'vs1fufufu', '1587098558', 'Fu Fu Fu', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(238, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10threestar.png', NULL, NULL, 'vs10threestar', '1581497589', 'Three Star Fortune', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,ES,RO,LV,GG,LT,BG,GR,EE,MT,RS,SE,CO,UK,99,PT,IM,DE,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(239, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40voodoo.png', NULL, NULL, 'vs40voodoo', '1597418564', 'Voodoo Magic', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,CO,99,LT,MT,EE,LV,RO,RS,SE,ZA,DE,GG,IM,GR,UK,IT,ES,BG,UA,66,IE,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(240, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25dragonkingdom.png', NULL, NULL, 'vs25dragonkingdom', '1478788538', 'Dragon Kingdom', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,DE,99,IM,EE,RS,IT,ES,GG,LV,PT,BG,CO,RO,MT,SE,UK,DK,ZA,X1,UA,66,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(241, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1ball.png', NULL, NULL, 'vs1ball', '1573134508', 'Lucky Dragon Ball', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(242, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25kingdoms.png', NULL, NULL, 'vs25kingdoms', '1489503590', '3 Kingdoms - Battle of Red Cliffs', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,LV,BG,RO,ES,MT,RS,EE,UK,99,LT,PT,GG,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(243, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10goldfish.png', NULL, NULL, 'vs10goldfish', '1606314731', 'Fishin Reels', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,UK,EE,GR,GG,RS,ZA,99,DE,LV,MT,RO,PT,LT,SE,X1,IT,UA,BG,CO,ES,DK,NL,66,CH,IE,BY,CZ,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(244, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20hercpeg.png', NULL, NULL, 'vs20hercpeg', '1562075684', 'Hercules and Pegasus', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DE,GR,UK,GG,RO,IT,RS,BG,LT,DK,SE,PT,EE,CO,MT,IM,99,ES,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(245, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20egypttrs.png', NULL, NULL, 'vs20egypttrs', '1536585008', 'Egyptian Fortunes', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,DK,EE,RS,GG,BG,99,MT,IT,RO,LT,IM,PT,ES,CO,LV,UK,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(246, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50safariking.png', NULL, NULL, 'vs50safariking', '1537433259', 'Safari King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,MT,SE,CO,DK,LV,PT,IT,UK,BG,LT,GG,IM,EE,RS,ES,RO,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(247, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50pixie.png', NULL, NULL, 'vs50pixie', '1496932177', 'Pixie Wings', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,DK,CO,UK,PT,BG,RO,GG,IM,LV,EE,LT,SE,IT,RS,99,ES,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(248, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20ekingrr.png', NULL, NULL, 'vs20ekingrr', '1601366016', 'Emerald King Rainbow Road', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,BG,ZA,EE,GR,LV,MT,RS,UK,99,GG,IT,DE,RO,IM,PT,LT,SE,ES,CO,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(249, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs88hockattack.png', NULL, NULL, 'vs88hockattack', '1628247387', 'Hockey Attack', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(250, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswaysbankbonz.png', NULL, NULL, 'vswaysbankbonz', '1624007316', 'Cash Bonanza', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,DK,LV,DE,IM,EE,RO,RS,UK,GR,MT,UA,GG,ZA,66,99,LT,IT,ES,BG,X1,CO,SE,IE,ON,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(251, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20honey.png', NULL, NULL, 'vs20honey', '1560171048', 'Honey Honey Honey', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,GG,BG,RO,IM,IT,EE,LV,PT,DK,CO,RS,99,MT,LT,UK,ES,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(252, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/rla.png', NULL, NULL, 'rla', '1455872890', 'Roulette', 'rl', '1', 'Roulette', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,CO,SE,99,RO,MT,DK,IT,ES,EE,UK,IM,GG,ZA,X1,UA,PT,66,IE,BE', '', 'RNG', '', 0, 1, NULL, NULL),
(253, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20santa.png', NULL, NULL, 'vs20santa', '1507812581', 'Santa', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,BG,DK,CO,GG,MT,LT,LV,SE,RS,PT,RO,UK,EE,IM,99,IT,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(254, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20wildpix.png', NULL, NULL, 'vs20wildpix', '1536841004', 'Wild Pixies', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,SE,99,IT,IM,BG,LT,RO,GG,MT,CO,EE,LV,PT,RS,UK,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(255, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs18mashang.png', NULL, NULL, 'vs18mashang', '1538387434', 'Treasure Horse', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,IM,IT,GG,DK,EE,ES,RO,PT,MT,99,UK,LT,BG,SE,LV,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(256, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs9madmonkey.png', NULL, NULL, 'vs9madmonkey', '1511957943', 'Monkey Madness', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,IT,EE,ES,RO,GG,LV,UK,PT,LT,SE,MT,99,BG,IM,ZA,66,UA,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(257, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40madwheel.png', NULL, NULL, 'vs40madwheel', '1556892148', 'The Wild Machine', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,RS,RO,IM,UK,GG,99,SE,IT,PT,DE,MT,LV,CO,DK,BG,ES,GR,LT,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(258, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20leprexmas.png', NULL, NULL, 'vs20leprexmas', '1539081379', 'Leprechaun Carol', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,BG,GG,ES,LT,EE,SE,99,DK,LV,IT,PT,MT,CO,RO,RS,UK,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(259, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs9hotroll.png', NULL, NULL, 'vs9hotroll', '1560415906', 'Hot Chilli', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,99,PT,SE,IM,RS,GG,UK,IT,ES,LT,LV,BG,CO,MT,RO,ZA,66,X1,UA,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(260, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20chicken.png', NULL, NULL, 'vs20chicken', '1550648841', 'The Great Chicken Escape', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,SE,BG,CO,DK,RS,GG,PT,IT,EE,LT,RO,UK,ES,MT,99,IM,ZA,X1,UA,66,IE,BY,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(261, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10starpirate.png', NULL, NULL, 'vs10starpirate', '1623297136', 'Star Pirates Code', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,LT,X1,BG,ES,66,UA,GG,99,GR,DE,ZA,UK,EE,RO,MT,RS,IM,DK,SE,PT,IT,LV,IE,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(262, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/cs3w.png', NULL, NULL, 'cs3w', '1455872761', 'Diamonds are Forever 3 Lines', 'cs', '1', 'Classic Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '', 'RNG', '', 0, 1, NULL, NULL),
(263, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs9chen.png', NULL, NULL, 'vs9chen', '1532961240', 'Master Chen&apos,s Fortune', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ES,MT,99,PT,IM,RO,IT,SE,RS,LT,UK,GG,EE,BG,LV,ZA,66,UA,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(264, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20eking.png', NULL, NULL, 'vs20eking', '1595853176', 'Emerald King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,CO,PT,BG,99,EE,RO,IT,RS,GG,DK,MT,UK,LT,IM,ES,LV,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(265, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50hercules.png', NULL, NULL, 'vs50hercules', '1477914757', 'Hercules Son of Zeus', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,EE,LV,RO,RS,MT,IM,PT,99,UK,SE,ES,GG,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(266, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25davinci.png', NULL, NULL, 'vs25davinci', '1519836742', 'Da Vinci&apos,s Treasure', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,GG,LV,LT,UK,PT,CO,ES,MT,SE,EE,RO,IT,99,BG,IM,RS,NL,ZA,GR,DE,X1,UA,66,CH,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(267, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20magicpot.png', NULL, NULL, 'vs20magicpot', '1613144805', 'The Magic Cauldron', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,LV,66,MT,DE,IM,GG,RS,EE,GR,ZA,UA,IT,LT,SE,DK,ES,BG,99,UK,PT,X1,CO,IE,BY,ON,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(268, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs15fairytale.png', NULL, NULL, 'vs15fairytale', '1515507828', 'Fairytale Fortune', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,SE,IT,UK,RS,EE,BG,GG,RO,MT,LV,PT,99,IM,ES,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(269, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25journey.png', NULL, NULL, 'vs25journey', '1464092888', 'Journey to the West', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,PT,SE,UK,ES,IM,99,LV,CO,MT,EE,GG,RO,RS,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(270, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20godiva.png', NULL, NULL, 'vs20godiva', '1455872846', 'Lady Godiva', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,IM,MT,RO,EE,SE,IT,LV,UK,GG,99,PH,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(271, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40frrainbow.png', NULL, NULL, 'vs40frrainbow', '1579613180', 'Fruit Rainbow', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GR,LT,DK,99,RS,EE,ES,CO,GG,BG,RO,IM,LV,SE,PT,DE,UK,IT,MT,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(272, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5drmystery.png', NULL, NULL, 'vs5drmystery', '1599640357', 'Dragon Kingdom - Eyes of Fire', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,PT,CO,ES,DK,IT,BG,99,DE,LV,RS,RO,ZA,IM,MT,GG,UK,GR,EE,LT,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(273, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50chinesecharms.png', NULL, NULL, 'vs50chinesecharms', '1461317789', 'Lucky Dragons', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,IM,SE,GG,EE,99,LV,RS,RO,UK,MT,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(274, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/cs3irishcharms.png', NULL, NULL, 'cs3irishcharms', '1487083475', 'Irish Charms', 'cs', '1', 'Classic Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '', 'RNG', '', 0, 1, NULL, NULL),
(275, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs3train.png', NULL, NULL, 'vs3train', '1492772366', 'Gold Train', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,IM,UK,EE,MT,LV,RS,99,RO,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(276, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs4096mystery.png', NULL, NULL, 'vs4096mystery', '1576682710', 'Mysterious', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,DK,CO,RS,EE,UK,ES,LT,MT,99,DE,BG,IT,RO,SE,IM,GR,GG,PT,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(277, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25safari.png', NULL, NULL, 'vs25safari', '1457774328', 'Hot Safari', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'PT,SE,EE,UK,RO,MT,GG,99,RS,CO,PH,BG,IT,IM,ES,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(278, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs7776secrets.png', NULL, NULL, 'vs7776secrets', '1550843208', 'Aztec Treasure', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,LT,DK,EE,IM,LV,SE,ES,PT,99,RO,CO,BG,MT,RS,IT,UK,GR,DE,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(279, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25queenofgold.png', NULL, NULL, 'vs25queenofgold', '1486107537', 'Queen of Gold', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,MT,RO,BG,EE,99,CO,IT,SE,UK,ES,LV,IM,GG,PT,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(280, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs7pigs.png', NULL, NULL, 'vs7pigs', '1499426883', '7 Piggies', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,LV,GG,EE,BG,RO,SE,99,IM,PT,UK,MT,ES,LT,RS,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(281, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25sea.png', NULL, NULL, 'vs25sea', '1455872798', 'Great Reef', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,PH', '1', 'RNG', '', 0, 1, NULL, NULL),
(282, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50aladdin.png', NULL, NULL, 'vs50aladdin', '1478694817', '3 Genie Wishes', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,SE,99,DK,GG,BG,CO,UK,LV,PT,EE,MT,RS,IM,ES,RO,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(283, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs8magicjourn.png', NULL, NULL, 'vs8magicjourn', '1571239142', 'Magic Journey', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,IM,CO,EE,MT,IT,LV,RS,PT,BG,SE,ES,RO,UK,99,GG,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(284, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10vampwolf.png', NULL, NULL, 'vs10vampwolf', '1560406594', 'Vampires vs Wolves', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,PT,LV,IT,RS,UK,IM,ES,99,SE,CO,RO,DK,GG,LT,BG,EE,ZA,GR,DE,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(285, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25walker.png', NULL, NULL, 'vs25walker', '1593692685', 'Wild Walker', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,GG,UK,CO,BG,DK,IT,ES,RS,EE,PT,LT,MT,IM,RO,99,SE,ZA,DE,GR,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(286, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50kingkong.png', NULL, NULL, 'vs50kingkong', '1455872792', 'Mighty Kong', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,99,CO,MT,RO,RS,IT,LV,UK,EE,PH,GG,IM,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(287, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs40streetracer.png', NULL, NULL, 'vs40streetracer', '1582626160', 'Street Racer', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,UK,LT,RS,IT,GG,DK,BG,99,LV,CO,GR,IM,ES,SE,PT,DE,RO,MT,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(288, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5trdragons.png', NULL, NULL, 'vs5trdragons', '1536668671', 'Triple Dragons', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,GG,BG,LT,SE,MT,PT,99,ES,EE,LV,UK,RS,IT,RO,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(289, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/bndt.png', NULL, NULL, 'bndt', '1546961175', 'Dragon Tiger', 'bn', '1', 'Baccarat New', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '', 'LC', '', 0, 1, NULL, NULL),
(290, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20leprechaun.png', NULL, NULL, 'vs20leprechaun', '1524466813', 'Leprechaun Song', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'GG,BG,CO,DK,PT,ES,SE,MT,LV,IM,EE,99,IT,UK,RS,LT,RO,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(291, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20aladdinsorc.png', NULL, NULL, 'vs20aladdinsorc', '1562328986', 'Aladdin and the Sorcerer', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,CO,99,LT,GG,EE,PT,RS,ES,SE,UK,IT,LV,BG,RO,IM,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(292, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25gladiator.png', NULL, NULL, 'vs25gladiator', '1502116141', 'Wild Gladiator', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,IT,ES,PT,DK,EE,SE,99,MT,CO,LV,GG,RO,UK,IM,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(293, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20bl.png', NULL, NULL, 'vs20bl', '1455872868', 'Busy Bees', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(294, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10egypt.png', NULL, NULL, 'vs10egypt', '1512131581', 'Ancient Egypt', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,IM,LT,MT,SE,BG,RO,GG,ES,UK,RS,DK,LV,99,PT,IT,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(295, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20gorilla.png', NULL, NULL, 'vs20gorilla', '1586253637', 'Jungle Gorilla', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,IM,LT,BG,EE,RS,99,IT,GR,ES,DK,MT,DE,UK,GG,PT,RO,LV,ZA,X1,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(296, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25dwarves_new.png', NULL, NULL, 'vs25dwarves_new', '1461241564', 'Dwarven Gold Deluxe', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,IT,IM,ES,RO,99,LV,MT,PT,UK,GG,RS,EE,ZA,UA,66,IE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(297, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs7monkeys.png', NULL, NULL, 'vs7monkeys', '1455872791', '7 Monkeys', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,EE,RS,SE,GG,PH,LV,RO,UK,BG,MT,IT,ZA,UA,66,99,IE,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(298, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs13g.png', NULL, NULL, 'vs13g', '1455872880', 'Devil&apos,s 13', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(299, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scpandai.png', NULL, NULL, 'scpandai', '1521805857', 'Panda Gold 50,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(300, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scgoldrushai.png', NULL, NULL, 'scgoldrushai', '1521805713', 'Gold Rush 500,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(301, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/1301.png', NULL, NULL, '1301', '1301', 'Live - Spaceman', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IE,99,MT,NL,EE,SE,ZA,GG,UK,ON,UA,RS,IT,BY,IM,LV,RO,CO,GR,X1,CH,NO', '', 'LC', '', 0, 1, NULL, NULL),
(302, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/1101.png', NULL, NULL, '1101', '1101', 'Live - Sweet Bonanza CandyLand', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,EE,GG,GR,IM,MT,RS,UK,IE,ON,DE,LT,BY,LV,NL,UA,BG,CO,IT,RO,X1,ZA', '', 'LC', '', 0, 1, NULL, NULL),
(303, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/402.png', NULL, NULL, '402', '402', 'Speed Baccarat 1', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,IM,99,UK,MT,DK,SE,RO,GG,RS,ZA,GR,EE,CO,X1,66,BG,ON,CH,IE,LT,NL,DE,LV,BY,UA', '', 'LC', '', 0, 1, NULL, NULL),
(304, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/701.png', NULL, NULL, '701', '701', 'Live - Mega Sic Bo', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'SE,MT,UK,99,IM,IT,EE,GG,RS,GR,ZA,X1,66,BG,CH,IE,ON,NL,UA,LV,LT,DE,CO,BY', '', 'LC', '', 0, 1, NULL, NULL),
(305, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/801.png', NULL, NULL, '801', '801', 'Live - Mega Wheel', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,IM,IT,MT,UK,RS,EE,ZA,GG,GR,BG,66,X1,CH,IE,ON,NL,UA,DE,LV,CO,LT,BY', '', 'LC', '', 0, 1, NULL, NULL),
(306, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/204.png', NULL, NULL, '204', '204', 'Live - Mega Roulette', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,BG,CO,DK,IM,IT,MT,SE,UK,EE,RO,RS,BY,ZA,X1,66,ON,CH,IE,GG,GR,LV,DE,NL,UA,LT', '', 'LC', '', 0, 1, NULL, NULL),
(307, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/401.png', NULL, NULL, '401', '401', 'Baccarat 1', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,DK,UK,IT,99,IM,SE,MT,GG,GR,ZA,RS,EE,CO,BG,X1,66,ON,CH,IE,LT,DE,LV,UA,BY,NL', '', 'LC', '', 0, 1, NULL, NULL),
(308, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/901.png', NULL, NULL, '901', '901', 'Live - ONE Blackjack', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,IT,RO,GG,DK,RS,EE,MT,ZA,GR,IM,UK,SE,CO,BG,66,X1,CH,IE,ON,BY,UA,DE,LT,LV,NL', '', 'LC', '', 0, 1, NULL, NULL),
(309, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/203.png', NULL, NULL, '203', '203', 'Speed Roulette 1', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,SE,DK,UK,IT,MT,RO,99,EE,ZA,GG,RS,GR,CO,BG,66,X1,ON,CH,IE,UA,NL,BY,DE,LT,LV', '', 'LC', '', 0, 1, NULL, NULL),
(310, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/1001.png', NULL, NULL, '1001', '1001', 'Live - Dragon Tiger', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UA,NL,DE,LT,LV,CO,GG,GR,IT,RO,IM,UK,MT,RS,BG,ZA,99,EE,SE,X1,66,IE,ON,BY,CH', '', 'LC', '', 0, 1, NULL, NULL),
(311, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/201.png', NULL, NULL, '201', '201', 'Roulette 2', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RO,SE,99,MT,IT,DK,IM,UK,ZA,RS,GR,GG,EE,CO,BG,66,X1,ON,CH,IE,UA,DE,LT,NL,BY,LV', '', 'LC', '', 0, 1, NULL, NULL),
(312, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/1024.png', NULL, NULL, '1024', '1024', 'Live - Andar Bahar', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BY,DE,CO,NL,X1,ZA,IT,UA,LT,LV,BG,RO,99,EE,GG,GR,IM,MT,RS,SE,UK,CH,IE,ON', '', 'LC', '', 0, 1, NULL, NULL),
(313, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/902.png', NULL, NULL, '902', '902', 'Live - ONE Blackjack 2 - Ruby', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DK,UK,EE,SE,GR,IM,MT,99,GG,RO,RS,IE,ON,LT,NL,X1,CO,IT,LV,ZA,BG,BY,UA', '', 'LC', '', 0, 1, NULL, NULL),
(314, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/225.png', NULL, NULL, '225', '225', 'Auto-Roulette 1', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,MT,UK,99,SE,DK,RO,IM,EE,RS,GG,GR,ZA,CO,X1,66,BG,ON,CH,IE,LV,BY,DE,LT,UA,NL', '', 'LC', '', 0, 1, NULL, NULL),
(315, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/229.png', NULL, NULL, '229', '229', 'Live - Roulette 8 - Indian', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ON,BG,CO,IT,99,ZA,GR,MT,EE,UK,GG,IM,DK,RO,RS,X1,SE,CH,IE,NL,BY,UA,LT', '', 'LC', '', 0, 1, NULL, NULL),
(316, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/545.png', NULL, NULL, '545', '545', 'Live - The Club Roulette', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CH,BG,DK,MT,99,CO,EE,GG,X1,SE,RO,UK,ZA,IM,IT,GR,RS,IE,ON,BY,LV,LT,NL,DE', '', 'LC', '', 0, 1, NULL, NULL),
(317, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/303.png', NULL, NULL, '303', '303', 'Blackjack 14', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,SE,IM,99,DK,IT,RO,UK,ZA,GG,GR,EE,RS,CO,BG,66,X1,ON,CH,IE,BY,UA,LT,NL,DE,LV', '', 'LC', '', 0, 1, NULL, NULL);
INSERT INTO `game_list` (`id`, `provider`, `image`, `image_is_url`, `game_group_id`, `game_id`, `game_id_long`, `game_name`, `game_type_id`, `game_demo`, `category`, `technology`, `technology_id`, `platform`, `aspect_ratio`, `jurisdictions`, `frb_available`, `data_type`, `features`, `game_locked`, `status`, `created_at`, `updated_at`) VALUES
(318, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/111.png', NULL, NULL, '111', '111', 'Live - Other Promos', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,DK,EE,GG,GR,IM,MT,RS,UK,RO,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', '', 0, 1, NULL, NULL),
(319, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25kingdomsnojp.png', NULL, NULL, 'vs25kingdomsnojp', '1495185205', '3 Kingdoms - Battle of Red Cliffs', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,IT', '1', 'RNG', '', 0, 1, NULL, NULL),
(320, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/sc7piggiesai.png', NULL, NULL, 'sc7piggiesai', '1521800031', '7 Piggies 25,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(321, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/sc7piggies.png', NULL, NULL, 'sc7piggies', '1508836715', '7 Piggies 5,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,RS,LV,EE,UK,GG,RO,IM,MT,ZA,66,IE,UA,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(322, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25aztecking.png', NULL, NULL, 'vs25aztecking', '1621500658', 'Aztec King', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(323, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10txbigbass.png', NULL, NULL, 'vs10txbigbass', '1644578872', 'Big Bass Splash', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ON,BG,LV,DK,LT,ES,CO,X1,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,IT,NL,PT,SE,BY,AT,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(324, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25bkofkngdm.png', NULL, NULL, 'vs25bkofkngdm', '1598017285', 'Book Of Kingdoms', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,SE,LV,UK,GG,IM,RO,RS,99,MT,EE,ES,ZA,DE,GR,IT,DK,CO,PT,BG,NL,UA,66,CH,IE,CZ,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(325, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bookfallen.png', NULL, NULL, 'vs10bookfallen', '1631697713', 'Book of Fallen', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IE,DE,GR,66,BY,NL,PT,ZA,IM,LT,ON,GG,LV,SE,EE,ES,UA,IT,DK,MT,99,RO,X1,CO,RS,BG,UK,AT,BE', '1', 'RNG', 'SUPER_SPIN,BUY', 0, 1, NULL, NULL),
(326, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10bookviking.png', NULL, NULL, 'vs10bookviking', '1597743733', 'Book of Vikings', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,GG,RO,EE,RS,IM,DE,GR,MT,UK,99,LT,LV,SE,PT,CO,IT,DK,X1,UA,ES,66,IE,BY,ON,ZA,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(327, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20cleocatra.png', NULL, NULL, 'vs20cleocatra', '1639648701', 'Cleocatra', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,GR,IE,IM,RO,RS,UA,UK,ZA,LV,NL,SE,MT,IT,PT,CO,X1,LT,ON,DK,BG,ES,BY,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(328, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs15b.png', NULL, NULL, 'vs15b', '1455872873', 'Crazy 7s', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(329, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vpdt11.png', NULL, NULL, 'vpdt11', '1644584790', 'Darts', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,EE,IE,MT,RO,RS,SE,UA,UK,99,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(330, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scdiamond.png', NULL, NULL, 'scdiamond', '1508836171', 'Diamond Strike 100,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,LV,EE,RS,99,RO,UK,GG,MT,ZA,66,IE,UA,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(331, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scdiamondai.png', NULL, NULL, 'scdiamondai', '1521805477', 'Diamond Strike 250,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(332, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vplfl6.png', NULL, NULL, 'vplfl6', '1582273352', 'Fantastic League Football', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,MT,UK,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(333, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vpfh3.png', NULL, NULL, 'vpfh3', '1584109543', 'Flat Horse Racing', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,UK,MT,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(334, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vpmr9.png', NULL, NULL, 'vpmr9', '1618816543', 'Force 1 Racing', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,IE,MT,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(335, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20fruitparty.png', NULL, NULL, 'vs20fruitparty', '1581677875', 'Fruit Party', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'MT,CO,DK,RO,IT,LV,IM,99,ES,PT,SE,DE,UK,EE,GG,LT,GR,RS,BG,ZA,X1,UA,NL,66,CH,IE,BY,CZ,ON,AT,NO,BE', '1', 'RNG', 'BUY', 0, 1, NULL, NULL),
(336, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25h.png', NULL, NULL, 'vs25h', '1455872806', 'Fruity Blast', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(337, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20gobnudge.png', NULL, NULL, 'vs20gobnudge', '1643373167', 'Goblin Heist Powernudge', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,X1,BG,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,GR,LT,NL,ON,ES,SE,DK,PT,IT,LV,BY,AT,BE', '1', 'RNG', 'ANTE,FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(338, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scgoldrush.png', NULL, NULL, 'scgoldrush', '1508842495', 'Gold Rush 250,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,UK,MT,99,GG,LV,EE,IM,RO,ZA,66,IE,UA,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(339, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vpdr7.png', NULL, NULL, 'vpdr7', '1597653695', 'Greyhound Racing', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,MT,UK,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(340, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20hockey.png', NULL, NULL, 'vs20hockey', '1455872843', 'Hockey League', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,PH', '1', 'RNG', '', 0, 1, NULL, NULL),
(341, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs9hockey.png', NULL, NULL, 'vs9hockey', '1455889237', 'Hockey League Wild Match', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(342, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scsafari.png', NULL, NULL, 'scsafari', '1508834908', 'Hot Safari 50,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,LV,RO,IM,GG,UK,99,RS,MT,ZA,66,IE,UA,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(343, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scsafariai.png', NULL, NULL, 'scsafariai', '1521806186', 'Hot Safari 75,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(344, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs15ktv.png', NULL, NULL, 'vs15ktv', '1455872871', 'KTV', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,PH', '1', 'RNG', '', 0, 1, NULL, NULL),
(345, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs5littlegem.png', NULL, NULL, 'vs5littlegem', '1643379569', 'Little Gem Hold and Spin', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,SE,IT,PT,LV,X1,CO,ES,DK,LT,ON,BG,66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(347, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/1401.png', NULL, NULL, '1401', '1401', 'Live - BOOM CITY', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,MT,GG,IE,IM,ON,UA,IT,CH,NL,LT,CO,BY,EE,LV,RS,SE,UK,GR', '', 'LC', '', 0, 1, NULL, NULL),
(348, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/110.png', NULL, NULL, '110', '110', 'Live - D&W', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,DK,EE,GG,GR,IM,MT,RS,UK,RO,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', '', 0, 1, NULL, NULL),
(349, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/108.png', NULL, NULL, '108', '108', 'Live - Dragon Tiger', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,EE,GG,GR,IM,MT,RS,SE,UK,CH,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', '', 0, 1, NULL, NULL),
(350, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/105.png', NULL, NULL, '105', '105', 'Live - GAMESHOWS', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'UA,DE,LT,LV,NL,EE,IT,RO,99,DK,SE,ZA,UK,MT,RS,GR,IM,GG,66,BG,X1,CO,IE,ON,BY,CH', '', 'LC', '', 0, 1, NULL, NULL),
(351, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/101.png', NULL, NULL, '101', '101', 'Live - Lobby', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,UA,LT,LV,DE,RO,UK,MT,99,DK,IM,IT,SE,GR,ZA,RS,EE,GG,CO,BG,66,X1,IE,ON,BY,CH', '', 'LC', '', 0, 1, NULL, NULL),
(352, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/103.png', NULL, NULL, '103', '103', 'Live - Lobby BJ', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'DE,UA,NL,LV,LT,MT,SE,99,RO,IM,DK,IT,UK,EE,ZA,GG,GR,RS,CO,66,BG,X1,IE,ON,BY,CH', '', 'LC', '', 0, 1, NULL, NULL),
(353, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/104.png', NULL, NULL, '104', '104', 'Live - Lobby Baccarat', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LT,LV,DE,NL,UA,99,IM,MT,RO,IT,SE,DK,UK,GR,EE,RS,ZA,GG,CO,BG,66,X1,IE,ON,BY,CH', '', 'LC', '', 0, 1, NULL, NULL),
(354, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/102.png', NULL, NULL, '102', '102', 'Live - Lobby Roulette', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,UA,LT,LV,DE,DK,UK,99,IT,MT,SE,RO,IM,GG,GR,RS,ZA,EE,CO,BG,66,X1,IE,ON,BY,CH', '', 'LC', '', 0, 1, NULL, NULL),
(355, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/240.png', NULL, NULL, '240', '240', 'Live - PowerUp Roulette', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'BG,EE,MT,SE,ZA,99,CO,LV,RS,IT,RO,IM,NL,BY,X1,GG,CH,GR,LT,UA,DK,ON,UK,IE,DE', '', 'LC', '', 0, 1, NULL, NULL),
(356, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/230.png', NULL, NULL, '230', '230', 'Live - Roulette 10 - Ruby', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'ON,BG,MT,UA,EE,LV,NL,X1,BY,CO,LT,GR,RO,99,CH,DK,IT,SE,GG,UK,ZA,DE,IM,RS,IE', '', 'LC', '', 0, 1, NULL, NULL),
(357, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/107.png', NULL, NULL, '107', '1531471148', 'Live - Sic Bo', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,DE,LT,99,DK,EE,GG,GR,IM,MT,RS,SE,UK,IE,ON,BY,LV,NL,UA', '', 'LC', '', 0, 1, NULL, NULL),
(358, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/109.png', NULL, NULL, '109', '109', 'Live - Sic Bo & Dragon Tiger', 'lg', '', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,DK,EE,GG,GR,IM,MT,RS,SE,UK,IE,ON,BY,DE,LT,LV,NL,UA', '', 'LC', '', 0, 1, NULL, NULL),
(359, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/1302.png', NULL, NULL, '1302', '1302', 'Live - Spaceman', 'lg', '1', 'Live games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'LV,BG,IT,CO,NL,RS,CH,ON,GR,99,DE,X1,IM,EE,GG,MT,RO,UK,ZA,BY,DK,UA,SE,NO', '', 'LC', '', 0, 1, NULL, NULL),
(360, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs1024mahjpanda.png', NULL, NULL, 'vs1024mahjpanda', '1640010384', 'Mahjong Panda', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(361, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs50northgard.png', NULL, NULL, 'vs50northgard', '1641470156', 'North Guardians', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IT,NL,PT,SE,LV,GR,LT,BG,ON,ES,66,99,DE,EE,GG,IE,IM,MT,RO,RS,UA,UK,ZA,DK,CO,X1,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(362, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scpanda.png', NULL, NULL, 'scpanda', '1508841864', 'Panda Gold 10,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'RS,MT,EE,RO,UK,99,IM,LV,GG,ZA,66,IE,UA,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(363, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vppso4.png', NULL, NULL, 'vppso4', '1582273067', 'Penalty Shootout', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,UK,MT,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(364, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs10egrich.png', NULL, NULL, 'vs10egrich', '1640785834', 'Queen of Gods', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,GR,IE,IM,LV,MT,RO,RS,UA,UK,ZA,BG,PT,ON,SE,DK,LT,ES,CO,X1,IT,NL,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(365, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scqogai.png', NULL, NULL, 'scqogai', '1521806036', 'Queen of Gold 100,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(366, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scqog.png', NULL, NULL, 'scqog', '1508830808', 'Queen of Gold 100,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'IM,GG,UK,99,RO,EE,LV,MT,RS,ZA,66,IE,UA,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(367, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25romeoandjuliet.png', NULL, NULL, 'vs25romeoandjuliet', '1458728713', 'Romeo and Juliet', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(368, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20gg.png', NULL, NULL, 'vs20gg', '1455872848', 'Spooky Fortune', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(369, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs117649starz.png', NULL, NULL, 'vs117649starz', '1577112971', 'Starz Megaways', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'CO,RS,LV,ES,PT,RO,LT,GR,GG,DK,BG,UK,DE,EE,IT,99,SE,MT,IM,ZA,X1,UA,66,IE,BY,NL,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(370, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vpsc10.png', NULL, NULL, 'vpsc10', '1644584646', 'Steeplechase', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,EE,RO,RS,SE,UA,IE,MT,CO,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(371, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20cms.png', NULL, NULL, 'vs20cms', '1455872860', 'Sugar Rush Summer Time', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,PH', '1', 'RNG', '', 0, 1, NULL, NULL),
(372, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20cmv.png', NULL, NULL, 'vs20cmv', '1455872858', 'Sugar Rush Valentine&apos,s Day', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,PH', '1', 'RNG', '', 0, 1, NULL, NULL),
(373, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20cw.png', NULL, NULL, 'vs20cw', '1455872855', 'Sugar Rush Winter', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(374, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs9catz.png', NULL, NULL, 'vs9catz', '1455872789', 'The Catfather', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,PH', '1', 'RNG', '', 0, 1, NULL, NULL),
(375, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs30catz.png', NULL, NULL, 'vs30catz', '1474540498', 'The Catfather Part II', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(376, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs20stickysymbol.png', NULL, NULL, 'vs20stickysymbol', '1642096017', 'The Great Stick-up', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,IE,IM,LV,MT,RO,RS,UA,UK,ZA,PT,SE,IT,X1,CO,LT,ON,GR,DK,NL,BG,ES,BE', '1', 'RNG', 'FREE_BONUS_FEATURE', 0, 1, NULL, NULL),
(377, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vplobby.png', NULL, NULL, 'vplobby', '1618816510', 'Virtual Sports Lobby', 'rgs-vsb', '', 'RGS - VSB', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99,MT,UK,IE,EE,RO,RS,SE,UA,CO,BY', '', 'VSB', '', 0, 1, NULL, NULL),
(378, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scwolfgold.png', NULL, NULL, 'scwolfgold', '1508829900', 'Wolf Gold 1 Million', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'EE,UK,GG,MT,99,RO,IM,LV,RS,ZA,66,IE,UA,BY,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(379, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/scwolfgoldai.png', NULL, NULL, 'scwolfgoldai', '1521806288', 'Wolf Gold 1,000,000', 'sc', '1', 'Scratch card', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '99', '1', 'RNG', '', 0, 1, NULL, NULL),
(380, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vs25wolfjpt.png', NULL, NULL, 'vs25wolfjpt', '1615460266', 'Wolf Gold Power Jackpot', 'vs', '', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', 'NL,99,GG,IE,IM,LV,MT,RO,UK,DK,SE,UA,EE,BE', '1', 'RNG', '', 0, 1, NULL, NULL),
(381, 'PragmaticPlay', 'storage/game_pic/pragmaticplay/vswayszombcarn.png', NULL, NULL, 'vswayszombcarn', '1647605861', 'Zombie Carnival', 'vs', '1', 'Video Slots', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:9', '66,99,DE,EE,GG,GR,IE,IM,MT,RO,RS,UA,UK,ZA,ON,BG,ES,NL,LT,DK,IT,LV,PT,SE,CO,X1,BY,BE', '1', 'RNG', 'FREE_BONUS_FEATURE,BUY', 0, 1, NULL, NULL),
(1008, 'PGSoft', 'storage/game_pic/pgsoft/65.jpg', NULL, NULL, '65', '1', 'Mahjong Ways', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1009, 'PGSoft', 'storage/game_pic/pgsoft/74.jpg', NULL, NULL, '74', '2', 'Mahjong Ways 2', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1010, 'PGSoft', 'storage/game_pic/pgsoft/87.jpg', NULL, NULL, '87', '3', 'Treasures of Aztec', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1011, 'PGSoft', 'storage/game_pic/pgsoft/60.jpg', NULL, NULL, '60', '4', 'Leprechaun Riches', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1012, 'PGSoft', 'storage/game_pic/pgsoft/89.jpg', NULL, NULL, '89', '5', 'Lucky Neko', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1013, 'PGSoft', 'storage/game_pic/pgsoft/54.jpg', NULL, NULL, '54', '6', 'Captain\'s Bounty', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1014, 'PGSoft', 'storage/game_pic/pgsoft/84.jpg', NULL, NULL, '84', '7', 'Queen of Bounty ', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1015, 'PGSoft', 'storage/game_pic/pgsoft/104.jpg', NULL, NULL, '104', '8', 'Wild Bandito', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1016, 'PGSoft', 'storage/game_pic/pgsoft/106.jpg', NULL, NULL, '106', '9', 'Ways of the Qilin', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1017, 'PGSoft', 'storage/game_pic/pgsoft/57.jpg', NULL, NULL, '57', '10', 'Dragon Hatch', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1018, 'PGSoft', 'storage/game_pic/pgsoft/48.jpg', NULL, NULL, '48', '11', 'Double Fortune', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1019, 'PGSoft', 'storage/game_pic/pgsoft/53.jpg', NULL, NULL, '53', '12', 'The Great Icescape', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1020, 'PGSoft', 'storage/game_pic/pgsoft/71.jpg', NULL, NULL, '71', '13', 'Caishen Wins', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1021, 'PGSoft', 'storage/game_pic/pgsoft/75.jpg', NULL, NULL, '75', '14', 'Ganesha Fortune', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1022, 'PGSoft', 'storage/game_pic/pgsoft/79.jpg', NULL, NULL, '79', '15', 'Dreams of Macau', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1023, 'PGSoft', 'storage/game_pic/pgsoft/98.jpg', NULL, NULL, '98', '16', 'Fortune Ox', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1024, 'PGSoft', 'storage/game_pic/pgsoft/135.jpg', NULL, NULL, '135', '17', 'Wild Bounty Showdown', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1025, 'PGSoft', 'storage/game_pic/pgsoft/1312883.jpg', NULL, NULL, '1312883', '18', 'Prosperity Fortune Tree', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1026, 'PGSoft', 'storage/game_pic/pgsoft/1372643.jpg', NULL, NULL, '1372643', '19', 'Diner Delights', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1027, 'PGSoft', 'storage/game_pic/pgsoft/73.jpg', NULL, NULL, '73', '20', 'Egypt\'s Book of Mystery', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1028, 'PGSoft', 'storage/game_pic/pgsoft/82.jpg', NULL, NULL, '82', '21', 'Phoenix Rises', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1029, 'PGSoft', 'storage/game_pic/pgsoft/83.jpg', NULL, NULL, '83', '22', 'Wild Fireworks', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1030, 'PGSoft', 'storage/game_pic/pgsoft/92.jpg', NULL, NULL, '92', '23', 'Thai River Wonders', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1031, 'PGSoft', 'storage/game_pic/pgsoft/94.jpg', NULL, NULL, '94', '24', 'Bali Vacation', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1032, 'PGSoft', 'storage/game_pic/pgsoft/103.jpg', NULL, NULL, '103', '25', 'Crypto Gold', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1033, 'PGSoft', 'storage/game_pic/pgsoft/110.jpg', NULL, NULL, '110', '26', 'Jurassic Kingdom', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1035, 'PGSoft', 'storage/game_pic/pgsoft/126.jpg', NULL, NULL, '126', '28', 'Fortune Tiger', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1036, 'PGSoft', 'storage/game_pic/pgsoft/127.jpg', NULL, NULL, '127', '29', 'Speed Winner', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1037, 'PGSoft', 'storage/game_pic/pgsoft/128.jpg', NULL, NULL, '128', '30', 'Legend of Perseus', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1039, 'PGSoft', 'storage/game_pic/pgsoft/3.jpg', NULL, NULL, '3', '32', 'Fortune Gods', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1040, 'PGSoft', 'storage/game_pic/pgsoft/24.jpg', NULL, NULL, '24', '33', 'Win Win Won', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1041, 'PGSoft', 'storage/game_pic/pgsoft/6.jpg', NULL, NULL, '6', '34', 'Medusa II', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1043, 'PGSoft', 'storage/game_pic/pgsoft/7.jpg', NULL, NULL, '7', '36', 'Medusa ', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1044, 'PGSoft', 'storage/game_pic/pgsoft/25.jpg', NULL, NULL, '25', '37', 'Plushie Frenzy', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1045, 'PGSoft', 'storage/game_pic/pgsoft/2.jpg', NULL, NULL, '2', '38', 'Gem Saviour', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1046, 'PGSoft', 'storage/game_pic/pgsoft/18.jpg', NULL, NULL, '18', '39', 'Hood vs Wolf', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1047, 'PGSoft', 'storage/game_pic/pgsoft/28.jpg', NULL, NULL, '28', '40', 'Hotpot', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1048, 'PGSoft', 'storage/game_pic/pgsoft/29.jpg', NULL, NULL, '29', '41', 'Dragon Legend', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1049, 'PGSoft', 'storage/game_pic/pgsoft/35.jpg', NULL, NULL, '35', '42', 'Mr. Hallow-Win', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1050, 'PGSoft', 'storage/game_pic/pgsoft/34.jpg', NULL, NULL, '34', '43', 'Legend of Hou Yi', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1051, 'PGSoft', 'storage/game_pic/pgsoft/36.jpg', NULL, NULL, '36', '44', 'Prosperity Lion', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1052, 'PGSoft', 'storage/game_pic/pgsoft/33.jpg', NULL, NULL, '33', '45', 'Hip Hop Panda', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1053, 'PGSoft', 'storage/game_pic/pgsoft/37.jpg', NULL, NULL, '37', '46', 'Santa\'s Gift Rush', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1054, 'PGSoft', 'storage/game_pic/pgsoft/38.jpg', NULL, NULL, '38', '48', 'Gem Saviour Sword', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1055, 'PGSoft', 'storage/game_pic/pgsoft/39.jpg', NULL, NULL, '39', '49', 'Piggy Gold', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1056, 'PGSoft', 'storage/game_pic/pgsoft/41.jpg', NULL, NULL, '41', '50', 'Symbols of Egypt', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1057, 'PGSoft', 'storage/game_pic/pgsoft/44.jpg', NULL, NULL, '44', '51', 'Emperor\'s Favour', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1058, 'PGSoft', 'storage/game_pic/pgsoft/42.jpg', NULL, NULL, '42', '52', 'Ganesha Gold', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1059, 'PGSoft', 'storage/game_pic/pgsoft/40.jpg', NULL, NULL, '40', '53', 'Jungle Delight', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1060, 'PGSoft', 'storage/game_pic/pgsoft/50.jpg', NULL, NULL, '50', '54', 'Journey to the Wealth', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1061, 'PGSoft', 'storage/game_pic/pgsoft/61.jpg', NULL, NULL, '61', '55', 'Flirting Scholar', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1062, 'PGSoft', 'storage/game_pic/pgsoft/59.jpg', NULL, NULL, '59', '56', 'Ninja vs Samurai', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1063, 'PGSoft', 'storage/game_pic/pgsoft/64.jpg', NULL, NULL, '64', '57', 'Muay Thai Champion', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1064, 'PGSoft', 'storage/game_pic/pgsoft/63.jpg', NULL, NULL, '63', '58', 'Dragon Tiger Luck', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1065, 'PGSoft', 'storage/game_pic/pgsoft/68.jpg', NULL, NULL, '68', '59', 'Fortune Mouse', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1066, 'PGSoft', 'storage/game_pic/pgsoft/20.jpg', NULL, NULL, '20', '60', 'Reel Love', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1067, 'PGSoft', 'storage/game_pic/pgsoft/62.jpg', NULL, NULL, '62', '61', 'Gem Saviour Conquest', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1068, 'PGSoft', 'storage/game_pic/pgsoft/67.jpg', NULL, NULL, '67', '62', 'Shaolin Soccer', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1069, 'PGSoft', 'storage/game_pic/pgsoft/70.jpg', NULL, NULL, '70', '63', 'Candy Burst ', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1070, 'PGSoft', 'storage/game_pic/pgsoft/69.jpg', NULL, NULL, '69', '64', 'Bikini Paradise ', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1071, 'PGSoft', 'storage/game_pic/pgsoft/85.jpg', NULL, NULL, '85', '65', 'Genie\'s 3 Wishes', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1072, 'PGSoft', 'storage/game_pic/pgsoft/80.jpg', NULL, NULL, '80', '66', 'Circus Delight', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1073, 'PGSoft', 'storage/game_pic/pgsoft/90.jpg', NULL, NULL, '90', '67', 'Secrets of Cleopatra', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1074, 'PGSoft', 'storage/game_pic/pgsoft/58.jpg', NULL, NULL, '58', '68', 'Vampire\'s Charm', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1075, 'PGSoft', 'storage/game_pic/pgsoft/88.jpg', NULL, NULL, '88', '69', 'Jewels of Prosperity', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1076, 'PGSoft', 'storage/game_pic/pgsoft/97.jpg', NULL, NULL, '97', '70', 'Jack Frost\'s Winter', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1077, 'PGSoft', 'storage/game_pic/pgsoft/86.jpg', NULL, NULL, '86', '71', 'Galactic Gems', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1078, 'PGSoft', 'storage/game_pic/pgsoft/91.jpg', NULL, NULL, '91', '72', 'Guardians of Ice and Fire', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1079, 'PGSoft', 'storage/game_pic/pgsoft/93.jpg', NULL, NULL, '93', '73', 'Opera Dynasty', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1080, 'PGSoft', 'storage/game_pic/pgsoft/95.jpg', NULL, NULL, '95', '74', 'Majestic Treasures', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1081, 'PGSoft', 'storage/game_pic/pgsoft/100.jpg', NULL, NULL, '100', '75', 'Candy Bonanza', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1082, 'PGSoft', 'storage/game_pic/pgsoft/105.jpg', NULL, NULL, '105', '76', 'Heist  Stakes', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1083, 'PGSoft', 'storage/game_pic/pgsoft/101.jpg', NULL, NULL, '101', '77', 'Rise of Apollo', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1084, 'PGSoft', 'storage/game_pic/pgsoft/102.jpg', NULL, NULL, '102', '78', 'Mermaid Riches', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1086, 'PGSoft', 'storage/game_pic/pgsoft/115.jpg', NULL, NULL, '115', '80', 'Supermarket Spree', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1087, 'PGSoft', 'storage/game_pic/pgsoft/108.jpg', NULL, NULL, '108', '81', 'Buffalo Win', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1088, 'PGSoft', 'storage/game_pic/pgsoft/107.jpg', NULL, NULL, '107', '82', 'Legendary Monkey King', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1091, 'PGSoft', 'storage/game_pic/pgsoft/118.jpg', NULL, NULL, '118', '85', 'Mask Carnival', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1092, 'PGSoft', 'storage/game_pic/pgsoft/112.jpg', NULL, NULL, '112', '86', 'Oriental Prosperity', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1093, 'PGSoft', 'storage/game_pic/pgsoft/122.jpg', NULL, NULL, '122', '87', 'Garuda Gems', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1094, 'PGSoft', 'storage/game_pic/pgsoft/121.jpg', NULL, NULL, '121', '88', 'Destiny of Sun & Moon', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1095, 'PGSoft', 'storage/game_pic/pgsoft/125.jpg', NULL, NULL, '125', '89', 'Butterfly Blossom', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1096, 'PGSoft', 'storage/game_pic/pgsoft/123.jpg', NULL, NULL, '123', '90', 'Rooster Rumble', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1098, 'PGSoft', 'storage/game_pic/pgsoft/124.jpg', NULL, NULL, '124', '92', 'Battleground Royale', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1099, 'PGSoft', 'storage/game_pic/pgsoft/129.jpg', NULL, NULL, '129', '93', 'Win Win Fish Prawn Crab', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1100, 'PGSoft', 'storage/game_pic/pgsoft/130.jpg', NULL, NULL, '130', '94', 'Lucky Piggy', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1101, 'PGSoft', 'storage/game_pic/pgsoft/132.jpg', NULL, NULL, '132', '95', 'Wild Coaster', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1102, 'PGSoft', 'storage/game_pic/pgsoft/1338274.jpg', NULL, NULL, '1338274', '96', 'Totem Wonders', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1103, 'PGSoft', 'storage/game_pic/pgsoft/1368367.jpg', NULL, NULL, '1368367', '97', 'Alchemy Gold', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1104, 'PGSoft', 'storage/game_pic/pgsoft/1340277.jpg', NULL, NULL, '1340277', '98', 'Asgardian Rising', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1105, 'PGSoft', 'storage/game_pic/pgsoft/1402846.jpg', NULL, NULL, '1402846', '99', 'Midas Fortune', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL),
(1106, 'PGSoft', 'storage/game_pic/pgsoft/1543462.jpg', NULL, NULL, '1543462', '100', 'Fortune Rabbit', 'vs', '1', 'Slot Games', 'html5', 'H5', 'MOBILE,DOWNLOAD,WEB', '16:09', '', '1', 'RNG', '', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_locks`
--

CREATE TABLE `game_locks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `game_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_setting`
--

CREATE TABLE `game_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `diskon` text DEFAULT NULL,
  `min_bet` int(11) DEFAULT NULL,
  `max_bet` int(11) DEFAULT NULL,
  `satuan` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_setting`
--

INSERT INTO `game_setting` (`id`, `title`, `price`, `diskon`, `min_bet`, `max_bet`, `satuan`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, '4D/3D/2D', '0', '66', 1000, 1000000, 0, 0, 0, NULL, NULL),
(2, '4D', '3000', '66', 1000, 1000000, 0, 1, 0, NULL, NULL),
(3, '3D', '400', '59', 1000, 1000000, 0, 1, 0, NULL, NULL),
(4, '2D', '70', '29', 1000, 1000000, 0, 1, 0, NULL, NULL),
(5, 'COLOK BEBAS', '1.2', '4', 10000, 1000000, 0, 0, 0, NULL, NULL),
(6, 'COLOK BEBAS 2D', '5.3', '8', 10000, 1000000, 0, 0, 0, NULL, NULL),
(7, 'COLOK NAGA', '14', '8', 10000, 1000000, 0, 0, 0, NULL, NULL),
(8, 'COLOK JITU', '0', '4', 10000, 1000000, 0, 0, 0, NULL, NULL),
(9, 'TENGAH', '0', '1', 10000, 1000000, 1, 0, 0, NULL, NULL),
(11, 'TEPI', '-4', '1', 10000, 1000000, 1, 9, 0, NULL, NULL),
(12, 'TENGAH', '-3', '1', 10000, 1000000, 1, 9, 0, NULL, NULL),
(13, 'DASAR', '0', '1', 10000, 1000000, 1, 0, 0, NULL, NULL),
(14, 'GANJIL', '-23', '1', 10000, 1000000, 1, 13, 0, NULL, NULL),
(15, 'GENAP', '6', '1', 10000, 1000000, 1, 13, 0, NULL, NULL),
(16, 'BESAR', '-23', '1', 10000, 1000000, 1, 13, 0, NULL, NULL),
(17, 'KECIL', '6', '1', 10000, 1000000, 1, 13, 0, NULL, NULL),
(18, 'AS', '6', '4', 10000, 1000000, 1, 8, 0, NULL, NULL),
(19, 'KOP', '6', '4', 10000, 1000000, 1, 8, 0, NULL, NULL),
(20, 'KEPALA', '7', '4', 10000, 1000000, 1, 8, 0, NULL, NULL),
(22, 'SHIO', '9', '3', 10000, 1000000, 0, 0, 0, NULL, NULL),
(23, 'SILANG - HOMO', '0', '1', 10000, 1000000, 1, 0, 0, NULL, NULL),
(24, 'SILANG - DEPAN', '-2.3', '1', 10000, 1000000, 1, 23, 0, NULL, NULL),
(25, 'SILANG - TENGAH', '-2.3', '1', 10000, 1000000, 1, 23, 0, NULL, NULL),
(26, 'SILANG - BELAKANG', '-2.3', '1', 10000, 1000000, 1, 23, 0, NULL, NULL),
(27, 'HOMO - DEPAN', '-2.3', '1', 10000, 1000000, 1, 23, 0, NULL, NULL),
(28, 'HOMO - TENGAH', '-2.3', '1', 10000, 1000000, 1, 23, 0, NULL, NULL),
(29, 'HOMO - BELAKANG', '-2.3', '1', 10000, 1000000, 1, 23, 0, NULL, NULL),
(30, 'KEMBANG', '0', '1', 10000, 1000000, 1, 0, 0, NULL, NULL),
(31, 'KEMBANG - DEPAN', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(32, 'KEMBANG - TENGAH', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(33, 'KEMBANG - BELAKANG', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(34, 'KEMPIS - DEPAN', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(35, 'KEMPIS - TENGAH', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(36, 'KEMPIS - BELAKANG', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(37, 'KEMBAR - DEPAN', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(38, 'KEMBAR - TENGAH', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(39, 'KEMBAR - BELAKANG', '-2.5', '1', 10000, 1000000, 1, 30, 0, NULL, NULL),
(40, 'EKOR', '7', '4', 10000, 1000000, 1, 8, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_stat`
--

CREATE TABLE `game_stat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` text DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `page` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_transaction`
--

CREATE TABLE `game_transaction` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codes` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `transaksi` text DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `game_id` text DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `jenis` text DEFAULT NULL,
  `metode` text DEFAULT NULL,
  `pay_from` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_users`
--

CREATE TABLE `game_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` text DEFAULT NULL,
  `provider` text DEFAULT NULL,
  `ext_id` text DEFAULT NULL,
  `player_id` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `balance` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_users`
--

INSERT INTO `game_users` (`id`, `user_id`, `provider`, `ext_id`, `player_id`, `token`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(10, '2', 'PragmaticPlay', 'ab5mls', '3767163', NULL, '126980', 1, '2023-08-18 01:05:18', '2023-08-18 01:10:20'),
(11, '27', 'PragmaticPlay', 'abbone', '32413819', NULL, '0', 1, '2024-02-24 15:14:36', '2024-02-24 15:14:36'),
(12, '28', 'PragmaticPlay', 'ab6x12', '32414418', NULL, '0', 1, '2024-02-24 15:36:54', '2024-02-24 15:36:54'),
(13, '29', 'PragmaticPlay', 'abqyej', '32442886', NULL, '0', 1, '2024-02-25 00:49:33', '2024-02-25 00:49:33'),
(14, '30', 'PragmaticPlay', 'ab6pwf', '32479734', NULL, '0', 1, '2024-02-25 08:52:06', '2024-02-25 08:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `member_data`
--

CREATE TABLE `member_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ID_member` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `nohp` varchar(25) NOT NULL,
  `norek_ewallet` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deposit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_10_192113_create_banner_promosi_table', 2),
(7, '2023_06_11_030649_create_bonus_table', 3),
(8, '2023_06_20_151819_live_chat', 4),
(9, '2023_07_06_141825_setting_style', 5),
(10, '2023_07_07_142315_setting_login_2', 6),
(11, '2023_07_11_141444_qr_image', 7),
(12, '2023_07_12_115951_approved_at_trans', 8),
(13, '2023_07_13_065855_approved_by', 9),
(14, '2023_07_15_012932_gamelist', 10),
(15, '2023_07_15_143700_ext_users', 10),
(16, '2023_07_15_154233_game_users', 10),
(17, '2023_07_18_151037_saldo_log', 11),
(18, '2023_07_18_161456_game_bet_id', 11),
(19, '2023_07_20_135854_game_lock', 12),
(20, '2023_07_23_130645_maintenance_mode', 13),
(21, '2023_07_25_143955_transaksi_index', 14),
(22, '2023_07_25_170636_user_index', 15),
(23, '2023_08_03_142756_setting_delay', 16),
(24, '2023_08_23_133614_template_setting', 17),
(25, '2023_09_03_140037_deposit_mpo', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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

-- --------------------------------------------------------

--
-- Table structure for table `promosi`
--

CREATE TABLE `promosi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `batas_waktu` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `saldo` bigint(20) DEFAULT NULL,
  `bonus` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id`, `user_id`, `saldo`, `bonus`, `created_at`, `updated_at`) VALUES
(13, 0, 1, 0, '2023-07-20 22:19:04', '2023-08-08 15:09:46'),
(14, 2, 0, 0, '2023-07-27 15:56:23', '2023-08-18 08:10:20'),
(15, 3, 0, 0, '2023-07-27 15:56:59', '2023-07-27 15:56:59'),
(18, 27, 0, 0, '2024-02-24 22:12:42', '2024-02-24 22:12:42'),
(19, 28, 0, 0, '2024-02-24 22:36:40', '2024-02-24 22:36:40'),
(20, 29, 0, 0, '2024-02-25 07:49:20', '2024-02-25 07:49:20'),
(21, 30, 0, 0, '2024-02-25 08:41:41', '2024-02-25 08:41:41'),
(22, 31, 0, 0, '2024-02-25 14:13:55', '2024-02-25 14:13:55'),
(23, 32, 0, 0, '2024-02-25 15:35:33', '2024-02-25 15:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `saldo_log`
--

CREATE TABLE `saldo_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `saldo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `saldo_before` int(11) NOT NULL,
  `saldo_trans` int(11) NOT NULL,
  `saldo_after` int(11) NOT NULL,
  `bonus_before` int(11) NOT NULL,
  `bonus_trans` int(11) NOT NULL,
  `bonus_after` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '1 Deposit 2Withdraw',
  `status` varchar(255) DEFAULT NULL COMMENT '1 Request 2 Aprove 3 Reject',
  `bonus_id` int(11) DEFAULT NULL,
  `bonus_persentase` int(11) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `bukti_transfer` text DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `rek_pengirim` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `alasan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `type`, `status`, `bonus_id`, `bonus_persentase`, `nominal`, `user_id`, `created_at`, `updated_at`, `approved_at`, `approved_by`, `bukti_transfer`, `bank_id`, `rek_pengirim`, `keterangan`, `alasan`) VALUES
(52, '1', '1', 6, 100, 50000, 27, '2024-02-24 22:14:07', '2024-02-24 22:14:07', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(53, '1', '1', NULL, NULL, 50000, 30, '2024-02-25 16:33:32', '2024-02-25 16:33:32', NULL, NULL, NULL, 1, NULL, '1231213', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT '1 = Admin, 2 = Developer',
  `telp` varchar(255) DEFAULT NULL,
  `ref_code` varchar(255) DEFAULT NULL,
  `nama_rek` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`, `telp`, `ref_code`, `nama_rek`, `bank`, `no_rek`, `photo`) VALUES
(1, 'nyobainjudol', 'nyobainjudol@gmail.com', NULL, '$2y$10$tFLQoAb5GhDiZ4E.fgu5ueghnKCDR3ryR99vRHq0xb6Qwf5nnZLUu', NULL, '2023-07-20 15:19:04', '2026-01-03 11:31:00', 2, '', '', '', '', '', NULL),
(2, 'master', 'master@mail.com', NULL, '$2y$10$prsfnxXNo09DCQ0SgMtrlu2RKAnyQw6h1byJ7OZLUH7ve8C/NP1se', NULL, '2023-07-27 08:56:23', '2023-07-27 08:56:23', 2, '123321123', 'nyobainjudol', 'MASTER PANEL', 'MANDIRI', '123321123', NULL),
(3, 'payment', 'payment@mail.com', NULL, '$2y$10$YvtRNJ5vimkmaEtVDicKNOIIkLdEoaQD5/nz2DeQZb8uIaGDJHuYO', NULL, '2023-07-27 08:56:59', '2023-07-27 08:56:59', 1, '123321123', 'nyobainjudol', 'PAYMENT PANEL', 'DANA', '123321123', NULL),
(27, 'samidaja', 'newsamid24@gmail.com', NULL, '$2y$10$bFCvdizK5LSTChFqgkd9veyxQfyO5Sz3Lr/WkHAZSw3Z8QjUHGB2W', NULL, '2024-02-24 15:12:42', '2024-02-24 15:12:42', 2, '082210828716', NULL, 'ARAMY', 'BCA', '0895056644', NULL),
(28, 'modalanjing', 'modalanjing88@gmail.com', NULL, '$2y$10$FyhcLctxhKfSfJ1vekQeHe1884/XsH7mh8HakGV2Q24a6aDI3Xq2y', NULL, '2024-02-24 15:36:40', '2024-02-24 15:36:40', NULL, '08951832983', NULL, 'ANTOS', 'BCA', '5162312343', NULL),
(29, 'anjing88', 'hahaah@gmail.com', NULL, '$2y$10$SR20BNryri43jLQNxde5Q.T2z4z/o955JTYxD78GH0B4Rm07Po.f6', NULL, '2024-02-25 00:49:20', '2024-02-25 00:49:20', NULL, '089502408354', NULL, 'dasril mahendra', 'DANA', '089882323435', NULL),
(30, 'superadmin', 'superadmin889@gmail.com', NULL, '$2y$10$Rn8gzMUUO8tD6Rm0xiaGBepgnHWN2d.2ryPlK8VPCEzPFmCrXlALi', NULL, '2024-02-25 01:41:41', '2024-02-25 01:41:41', 2, '089517283121', NULL, 'SUPER SUPER', 'BCA', '5135234321', NULL),
(31, 'king00', 'akulelah418@gmail.com', NULL, '$2y$10$2t3BWSVlT.Jv4M3ffZBc5.2f5IOBa7vhbWzjUWQabI0HlesTWwlZO', NULL, '2024-02-25 07:13:55', '2024-02-25 07:13:55', NULL, '04848811818', NULL, 'Rivalkings', 'BCA', '5151515158', NULL),
(32, 'danger88', 'danger88@gmail.com', NULL, '$2y$10$yyoNlxm6Iuqj0eaX.vR3DefBECvXhcm8RlbC9qel7O2jItDCBEGk6', NULL, '2024-02-25 08:35:33', '2024-02-25 08:35:33', 1, '089517341923', NULL, 'DANGERRR', 'BCA', '5135532412', NULL),
(33, 'Admin', 'admin@gmail.com', NULL, '$2y$10$rbiW6fMQLWv65wuHM9t/K.WYqOR6lMWcGUFaNT0mRrq9IslNltKLC', NULL, '2026-01-03 10:34:27', '2026-01-03 10:34:27', 2, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `banner_promosi`
--
ALTER TABLE `banner_promosi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bonus_lama`
--
ALTER TABLE `bonus_lama`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `game_api`
--
ALTER TABLE `game_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_betting`
--
ALTER TABLE `game_betting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_list`
--
ALTER TABLE `game_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_locks`
--
ALTER TABLE `game_locks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_setting`
--
ALTER TABLE `game_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_stat`
--
ALTER TABLE `game_stat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_transaction`
--
ALTER TABLE `game_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_users`
--
ALTER TABLE `game_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_data`
--
ALTER TABLE `member_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `promosi`
--
ALTER TABLE `promosi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `saldo_user_id_index` (`user_id`);

--
-- Indexes for table `saldo_log`
--
ALTER TABLE `saldo_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transaksi_user_id_bank_id_status_index` (`user_id`,`bank_id`,`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `users_name_telp_email_index` (`name`,`telp`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `banner_promosi`
--
ALTER TABLE `banner_promosi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bonus_lama`
--
ALTER TABLE `bonus_lama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_api`
--
ALTER TABLE `game_api`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game_betting`
--
ALTER TABLE `game_betting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_list`
--
ALTER TABLE `game_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1107;

--
-- AUTO_INCREMENT for table `game_locks`
--
ALTER TABLE `game_locks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_setting`
--
ALTER TABLE `game_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `game_stat`
--
ALTER TABLE `game_stat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_transaction`
--
ALTER TABLE `game_transaction`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_users`
--
ALTER TABLE `game_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `member_data`
--
ALTER TABLE `member_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promosi`
--
ALTER TABLE `promosi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `saldo_log`
--
ALTER TABLE `saldo_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
