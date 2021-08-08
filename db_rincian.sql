-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2021 at 01:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rincian`
--

-- --------------------------------------------------------

--
-- Table structure for table `t00_sekolah`
--

CREATE TABLE `t00_sekolah` (
  `idsekolah` int(11) NOT NULL,
  `kode` varchar(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telepon` varchar(25) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t00_sekolah`
--

INSERT INTO `t00_sekolah` (`idsekolah`, `kode`, `nama`, `alamat`, `nomor_telepon`, `logo`) VALUES
(1, '01', 'MINU UNGGULAN BOJONEGORO', 'JL. JAMBEAN BOJONEGORO', '', ''),
(2, '02', 'MINU KARAKTER BOJONEGORO', 'JL. JAMBEAN BOJONEGORO', '', ''),
(3, '03', 'MINU ICP BOJONEGORO', 'JL. JAMBEAN BOJONEGORO', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t01_tahunajaran`
--

CREATE TABLE `t01_tahunajaran` (
  `idtahunajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t01_tahunajaran`
--

INSERT INTO `t01_tahunajaran` (`idtahunajaran`, `tahun_ajaran`) VALUES
(1, '2021/2022');

-- --------------------------------------------------------

--
-- Table structure for table `t02_kelas`
--

CREATE TABLE `t02_kelas` (
  `idkelas` int(11) NOT NULL,
  `sekolah` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `sub_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t02_kelas`
--

INSERT INTO `t02_kelas` (`idkelas`, `sekolah`, `kelas`, `sub_kelas`) VALUES
(1, 3, '1', 'SHAFA'),
(2, 3, '1', 'MARWA'),
(3, 3, '1', 'MASJIDIL HARAM');

-- --------------------------------------------------------

--
-- Table structure for table `t03_tagihan`
--

CREATE TABLE `t03_tagihan` (
  `idtagihan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t03_tagihan`
--

INSERT INTO `t03_tagihan` (`idtagihan`, `nama`) VALUES
(1, 'SYARIAH'),
(2, 'CATERING'),
(3, 'WORKSHEET');

-- --------------------------------------------------------

--
-- Table structure for table `t04_rincian`
--

CREATE TABLE `t04_rincian` (
  `idrincian` int(11) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  `sekolah` int(11) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t05_rinciandetail`
--

CREATE TABLE `t05_rinciandetail` (
  `idrinciandetail` int(11) NOT NULL,
  `rincian` int(11) NOT NULL,
  `tagihan` int(11) NOT NULL,
  `nominal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t88_menus`
--

CREATE TABLE `t88_menus` (
  `idmenus` int(11) NOT NULL,
  `menus` varchar(50) NOT NULL,
  `kode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t88_menus`
--

INSERT INTO `t88_menus` (`idmenus`, `menus`, `kode`) VALUES
(13, 'Master - Sekolah', 'sekolah'),
(14, 'Master - Tahun Ajaran', 'tahunajaran'),
(15, 'Master - Kelas', 'kelas'),
(16, 'Master - Tagihan', 'tagihan'),
(17, 'Master - Rincian', 'rincian');

-- --------------------------------------------------------

--
-- Table structure for table `t89_users_menus`
--

CREATE TABLE `t89_users_menus` (
  `idusersmenus` int(11) NOT NULL,
  `idusers` int(11) UNSIGNED NOT NULL,
  `idmenus` int(11) NOT NULL,
  `rights` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t89_users_menus`
--

INSERT INTO `t89_users_menus` (`idusersmenus`, `idusers`, `idmenus`, `rights`) VALUES
(1, 2, 1, 7),
(2, 1, 1, 7),
(3, 2, 2, 7),
(4, 1, 2, 7),
(5, 2, 3, 7),
(6, 1, 3, 7),
(7, 2, 4, 7),
(8, 1, 4, 7),
(9, 2, 5, 7),
(10, 1, 5, 7),
(11, 2, 6, 7),
(12, 1, 6, 7),
(13, 2, 7, 7),
(14, 1, 7, 7),
(15, 2, 8, 7),
(16, 1, 8, 7),
(17, 2, 9, 7),
(18, 1, 9, 7),
(19, 2, 10, 7),
(20, 1, 10, 7),
(21, 4, 10, 7),
(22, 4, 9, 7),
(23, 4, 8, 7),
(24, 4, 7, 7),
(25, 4, 6, 7),
(26, 4, 5, 7),
(27, 4, 4, 7),
(28, 4, 3, 7),
(29, 4, 2, 7),
(30, 4, 1, 7),
(31, 5, 10, 7),
(32, 5, 9, 7),
(33, 5, 8, 7),
(34, 5, 7, 7),
(35, 5, 6, 7),
(36, 5, 5, 7),
(37, 5, 4, 7),
(38, 5, 3, 7),
(39, 5, 2, 7),
(40, 5, 1, 7),
(41, 3, 1, 7),
(42, 3, 2, 7),
(43, 3, 3, 7),
(44, 3, 4, 7),
(45, 3, 5, 7),
(46, 3, 6, 7),
(47, 3, 7, 7),
(48, 3, 8, 7),
(49, 3, 9, 7),
(50, 3, 10, 7),
(56, 5, 11, 7),
(57, 4, 11, 7),
(58, 3, 11, 7),
(59, 2, 11, 7),
(60, 1, 11, 7),
(61, 5, 12, 7),
(62, 4, 12, 7),
(63, 3, 12, 7),
(64, 2, 12, 7),
(65, 1, 12, 7),
(66, 5, 13, 7),
(67, 4, 13, 7),
(68, 3, 13, 7),
(69, 2, 13, 7),
(70, 1, 13, 7),
(71, 5, 14, 7),
(72, 4, 14, 7),
(73, 3, 14, 7),
(74, 2, 14, 7),
(75, 1, 14, 7),
(76, 5, 15, 7),
(77, 4, 15, 7),
(78, 3, 15, 7),
(79, 2, 15, 7),
(80, 1, 15, 7),
(81, 5, 16, 7),
(82, 4, 16, 7),
(83, 3, 16, 7),
(84, 2, 16, 7),
(85, 1, 16, 7),
(86, 5, 17, 7),
(87, 4, 17, 7),
(88, 3, 17, 7),
(89, 2, 17, 7),
(90, 1, 17, 7);

-- --------------------------------------------------------

--
-- Table structure for table `t90_users`
--

CREATE TABLE `t90_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t90_users`
--

INSERT INTO `t90_users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$10$dPHoARWNwi3q8RSaACTb6O0dK8fTNUfJ7K52jxOG7Bn15x2WHOciu', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1628457488, 1, 'Administrator', 'istrator', 'ADMIN', '0'),
(2, '::1', 'dodo', '$2y$10$45w8AaYwozR/hjmH.Qm0.OMxwJJs6BmFBbn2AIQP16NuDDDxbfvU6', 'e135146@f135146.g135146', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1625399506, 1628410468, 1, 'Dodo Ananto', NULL, NULL, NULL),
(3, '::1', 'budi', '$2y$10$MvzwSXUbEi.0mYppxcxc9.6u1lE2K13ELcpw8GJkr1Xdo9co9aOjC', 'e195422@f195422.g195422', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1626198862, 1627203728, 1, 'Budi Wiranto', NULL, NULL, NULL),
(4, '::1', 'ilham', '$2y$10$X9GVQQk4pD5UPWgbM8Qgq.4ljAUX.Fjytf3vXg5CahIcfMRDA6ac.', 'e212914@f212914.g212914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1626204554, NULL, 1, 'Ilham', NULL, NULL, NULL),
(5, '::1', 'rido', '$2y$10$irQ9LsaHnSWuORf0iep/yeTA1KRzE43lj6jqQB4miJUjEjnFqKJVi', 'e215310@f215310.g215310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1626205990, NULL, 1, 'Rido', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t91_groups`
--

CREATE TABLE `t91_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t91_groups`
--

INSERT INTO `t91_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `t92_users_groups`
--

CREATE TABLE `t92_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t92_users_groups`
--

INSERT INTO `t92_users_groups` (`id`, `user_id`, `group_id`) VALUES
(11, 1, 1),
(12, 1, 2),
(14, 2, 1),
(15, 2, 2),
(16, 3, 2),
(17, 4, 2),
(18, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t93_login_attempts`
--

CREATE TABLE `t93_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t93_login_attempts`
--

INSERT INTO `t93_login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(4, '::1', 'admin@admin.com', 1628410392),
(5, '::1', 'admin@admin.com', 1628410397),
(7, '::1', 'admin@admin.com', 1628410418);

-- --------------------------------------------------------

--
-- Table structure for table `t97_saldoawal`
--

CREATE TABLE `t97_saldoawal` (
  `kode` varchar(25) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `saldo_awal_tahun` double NOT NULL DEFAULT 0,
  `bulan_01` double NOT NULL DEFAULT 0,
  `bulan_02` double NOT NULL DEFAULT 0,
  `bulan_03` double NOT NULL DEFAULT 0,
  `bulan_04` double NOT NULL DEFAULT 0,
  `bulan_05` double NOT NULL DEFAULT 0,
  `bulan_06` double NOT NULL DEFAULT 0,
  `bulan_07` double NOT NULL DEFAULT 0,
  `bulan_08` double NOT NULL DEFAULT 0,
  `bulan_09` double NOT NULL DEFAULT 0,
  `bulan_10` double NOT NULL DEFAULT 0,
  `bulan_11` double NOT NULL DEFAULT 0,
  `bulan_12` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t97_saldoawal`
--

INSERT INTO `t97_saldoawal` (`kode`, `tahun`, `saldo_awal_tahun`, `bulan_01`, `bulan_02`, `bulan_03`, `bulan_04`, `bulan_05`, `bulan_06`, `bulan_07`, `bulan_08`, `bulan_09`, `bulan_10`, `bulan_11`, `bulan_12`) VALUES
('1', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('11', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1101', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1101001', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1102', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1102001', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1102002', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1102003', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1102004', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1102005', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103001', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103001001', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103001002', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103002', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103002001', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103002002', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103002003', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103002004', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1103002005', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('12', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1201', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1202', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1203', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1204', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('18', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1801', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1802', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('1803', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('21', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2101', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2102', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2103', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('22', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2201', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('23', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2301', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('24', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2401', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2402', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2403', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2404', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2405', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2406', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('3', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('31', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('32', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('33', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('34', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('35', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('36', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('4', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('41', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('4101', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('4102', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('42', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('4201', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('4202', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('5', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('51', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('5101', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('5102', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('61', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6101', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6102', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6103', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6104', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6105', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6106', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6107', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6108', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6109', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6110', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6111', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6112', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6113', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6114', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6115', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6116', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('62', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6201', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6202', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('63', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6301', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6302', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6303', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('64', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6401', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('65', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6501', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6502', '2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t98_akun`
--

CREATE TABLE `t98_akun` (
  `kode` varchar(25) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `induk` varchar(25) NOT NULL,
  `urutan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t98_akun`
--

INSERT INTO `t98_akun` (`kode`, `nama`, `induk`, `urutan`) VALUES
('1', 'AKTIVA ', '-', '1000000000000'),
('11', 'AKTIVA LANCAR', '1', '1100000000000'),
('1101', 'KAS', '11', '1101000000000'),
('1101001', 'KAS', '1101', '1101001000000'),
('1102', 'BANK', '11', '1102000000000'),
('1102001', 'BANK BCA - LUTINUS', '1102', '1102001000000'),
('1102002', 'BANK MANDIRI - LUTINUS', '1102', '1102002000000'),
('1102003', 'GIRO MANDIRI - LUTINUS', '1102', '1102003000000'),
('1102004', 'BANK MANDIRI - VISTA', '1102', '1102004000000'),
('1102005', 'AYAT SILANG', '1102', '1102005000000'),
('1103', 'PIUTANG', '11', '1103000000000'),
('1103001', 'PIUTANG USAHA', '1103', '1103001000000'),
('1103001001', 'PIUTANG USAHA DOMESTIK', '1103001', '1103001001000'),
('1103001002', 'PIUTANG USAHA INTERNASIONAL', '1103001', '1103001002000'),
('1103002', 'PIUTANG LAIN-LAIN', '1103', '1103002000000'),
('1103002001', 'BIAYA DIBAYAR DIMUKA', '1103002', '1103002001000'),
('1103002002', 'PPH PSL. 23', '1103002', '1103002002000'),
('1103002003', 'PPH PSL 25', '1103002', '1103002003000'),
('1103002004', 'SEWA DIBAYAR DIMUKA', '1103002', '1103002004000'),
('1103002005', 'PPN MASUKAN', '1103002', '1103002005000'),
('12', 'AKTIVA TETAP', '1', '1200000000000'),
('1201', 'TANAH', '12', '1201000000000'),
('1202', 'BANGUNAN', '12', '1202000000000'),
('1203', 'KENDARAAN', '12', '1203000000000'),
('1204', 'INVENTARIS', '12', '1204000000000'),
('18', 'AKUMULASI PENYUSUTAN', '1', '1800000000000'),
('1801', 'AKUMULASI PENYUSUTAN BANGUNAN', '18', '1801000000000'),
('1802', 'AKUMULASI PENYUSUTAN KENDARAAN', '18', '1802000000000'),
('1803', 'AKUMULASI PENYUSUTAN INVENTARIS', '18', '1803000000000'),
('2', 'HUTANG', '-', '2000000000000'),
('21', 'HUTANG LANCAR', '2', '2100000000000'),
('2101', 'HUTANG USAHA DOMESTIK', '21', '2101000000000'),
('2102', 'HUTANG USAHA INTERNASIONAL', '21', '2102000000000'),
('2103', 'HUTANG REFUND', '21', '2103000000000'),
('22', 'KEWAJIBAN JANGKA PANJANG', '2', '2200000000000'),
('2201', 'HUTANG JANGKA PANJANG LAINNYA', '22', '2201000000000'),
('23', 'HUTANG USAHA LAINNYA', '2', '2300000000000'),
('2301', 'HUTANG BANK', '23', '2301000000000'),
('24', 'HUTANG PPN', '2', '2400000000000'),
('2401', 'HUTANG PPH PSL. 21', '24', '2401000000000'),
('2402', 'HUTANG PPH PSL. 23', '24', '2402000000000'),
('2403', 'HUTANG PPH PSL. 25', '24', '2403000000000'),
('2404', 'HUTANG PPH PSL. 4 (2)', '24', '2404000000000'),
('2405', 'HUTANG PPH PSL. 29', '24', '2405000000000'),
('2406', 'BIAYA YMH DIBAYAR LAINNYA', '24', '2406000000000'),
('3', 'MODAL', '-', '3000000000000'),
('31', 'MODAL SAHAM', '3', '3100000000000'),
('32', 'DEVIDEN', '3', '3200000000000'),
('33', 'PRIVE', '3', '3300000000000'),
('34', 'LABA ( RUGI ) DITAHAN', '3', '3400000000000'),
('35', 'LABA ( RUGI ) TAHUN BERJALAN', '3', '3500000000000'),
('36', 'LABA ( RUGI ) BULAN BERJALAN', '3', '3600000000000'),
('4', 'PENDAPATAN', '-', '4000000000000'),
('41', 'PENDAPATAN JASA FREIGHT', '4', '4100000000000'),
('4101', 'PENDAPATAN FREIGHT DOMESTIK', '41', '4101000000000'),
('4102', 'PENDAPATAN FREIGHT INTERNASIONAL', '41', '4102000000000'),
('42', 'PENDAPATAN LAIN', '4', '4200000000000'),
('4201', 'PENDAPATAN BUNGA BANK', '42', '4201000000000'),
('4202', 'PENDAPATAN LAIN-LAIN', '42', '4202000000000'),
('5', 'HARGA POKOK PENJUALAN', '-', '5000000000000'),
('51', 'HARGA POKOK FREIGHT', '5', '5100000000000'),
('5101', 'HARGA POKOK FREIGHT DOMESTIK', '51', '5101000000000'),
('5102', 'HARGA POKOK FREIGHT INTERNASIONAL', '51', '5102000000000'),
('6', 'BIAYA', '-', '6000000000000'),
('61', 'BIAYA USAHA', '6', '6100000000000'),
('6101', 'BIAYA GAJI', '61', '6101000000000'),
('6102', 'BIAYA PARKIR, TOL DAN BBM', '61', '6102000000000'),
('6103', 'BIAYA LISTRIK', '61', '6103000000000'),
('6104', 'BIAYA TELEPON, FAX DAN INTERNET', '61', '6104000000000'),
('6105', 'IURAN, RETRIBUSI AIR DAN PBB', '61', '6105000000000'),
('6106', 'PERLENGKAPAN DAN KEPERLUAN KANTOR', '61', '6106000000000'),
('6107', 'ALAT TULIS KANTOR', '61', '6107000000000'),
('6108', 'KONSUMSI', '61', '6108000000000'),
('6109', 'PEMELIHARAAN KENDARAAN', '61', '6109000000000'),
('6110', 'ENTERTAINMENT', '61', '6110000000000'),
('6111', 'BIAYA SEWA', '61', '6111000000000'),
('6112', 'INSENTIF MARKETING', '61', '6112000000000'),
('6113', 'BONUS TAHUNAN', '61', '6113000000000'),
('6114', 'ASURANSI KENDARAAN', '61', '6114000000000'),
('6115', 'BIAYA KENDARAAN', '61', '6115000000000'),
('6116', 'PAJAK PENGHASILAN', '61', '6116000000000'),
('62', 'BIAYA PEMELIHARAAN', '6', '6200000000000'),
('6201', 'PEMELIHARAAN PERALATAN DAN PERLENGKAPAN KANTOR', '62', '6201000000000'),
('6202', 'PEMELIHARAAN BANGUNAN KANTOR', '62', '6202000000000'),
('63', 'BIAYA PENYUSUTAN', '6', '6300000000000'),
('6301', 'PENYUSUTAN BANGUNAN', '63', '6301000000000'),
('6302', 'PENYUSUTAN KENDARAAN', '63', '6302000000000'),
('6303', 'PENYUSUTAN INVENTARIS', '63', '6303000000000'),
('64', 'BIAYA PAJAK', '6', '6400000000000'),
('6401', 'BIAYA PAJAK PPH 21', '64', '6401000000000'),
('65', 'BEBAN LAIN', '6', '6500000000000'),
('6501', 'BIAYA ADMINISTRASI BANK', '65', '6501000000000'),
('6502', 'BEBAN LAIN-LAIN', '65', '6502000000000');

-- --------------------------------------------------------

--
-- Table structure for table `t99_company`
--

CREATE TABLE `t99_company` (
  `idcompany` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t99_company`
--

INSERT INTO `t99_company` (`idcompany`, `nama`, `alamat`, `kota`) VALUES
(1, 'MINU', 'JL. JAMBEAN', 'BOJONEGORO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t00_sekolah`
--
ALTER TABLE `t00_sekolah`
  ADD PRIMARY KEY (`idsekolah`);

--
-- Indexes for table `t01_tahunajaran`
--
ALTER TABLE `t01_tahunajaran`
  ADD PRIMARY KEY (`idtahunajaran`);

--
-- Indexes for table `t02_kelas`
--
ALTER TABLE `t02_kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `t03_tagihan`
--
ALTER TABLE `t03_tagihan`
  ADD PRIMARY KEY (`idtagihan`);

--
-- Indexes for table `t04_rincian`
--
ALTER TABLE `t04_rincian`
  ADD PRIMARY KEY (`idrincian`);

--
-- Indexes for table `t05_rinciandetail`
--
ALTER TABLE `t05_rinciandetail`
  ADD PRIMARY KEY (`idrinciandetail`);

--
-- Indexes for table `t88_menus`
--
ALTER TABLE `t88_menus`
  ADD PRIMARY KEY (`idmenus`);

--
-- Indexes for table `t89_users_menus`
--
ALTER TABLE `t89_users_menus`
  ADD PRIMARY KEY (`idusersmenus`),
  ADD UNIQUE KEY `users_menus` (`idusers`,`idmenus`),
  ADD KEY `idmenus` (`idmenus`);

--
-- Indexes for table `t90_users`
--
ALTER TABLE `t90_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_username` (`username`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `t91_groups`
--
ALTER TABLE `t91_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t92_users_groups`
--
ALTER TABLE `t92_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `t93_login_attempts`
--
ALTER TABLE `t93_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t97_saldoawal`
--
ALTER TABLE `t97_saldoawal`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `t98_akun`
--
ALTER TABLE `t98_akun`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `t99_company`
--
ALTER TABLE `t99_company`
  ADD PRIMARY KEY (`idcompany`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t00_sekolah`
--
ALTER TABLE `t00_sekolah`
  MODIFY `idsekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t01_tahunajaran`
--
ALTER TABLE `t01_tahunajaran`
  MODIFY `idtahunajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t02_kelas`
--
ALTER TABLE `t02_kelas`
  MODIFY `idkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t03_tagihan`
--
ALTER TABLE `t03_tagihan`
  MODIFY `idtagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t04_rincian`
--
ALTER TABLE `t04_rincian`
  MODIFY `idrincian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t05_rinciandetail`
--
ALTER TABLE `t05_rinciandetail`
  MODIFY `idrinciandetail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t88_menus`
--
ALTER TABLE `t88_menus`
  MODIFY `idmenus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `t89_users_menus`
--
ALTER TABLE `t89_users_menus`
  MODIFY `idusersmenus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `t90_users`
--
ALTER TABLE `t90_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t91_groups`
--
ALTER TABLE `t91_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t92_users_groups`
--
ALTER TABLE `t92_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t93_login_attempts`
--
ALTER TABLE `t93_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t99_company`
--
ALTER TABLE `t99_company`
  MODIFY `idcompany` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
