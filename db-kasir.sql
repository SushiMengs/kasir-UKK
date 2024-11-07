-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 01:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `detail_id` int(11) NOT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `penjualan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`detail_id`, `kode_produk`, `nama_produk`, `harga`, `jumlah`, `penjualan_id`) VALUES
(74, 'PR.003', 'Intel Core i5 8365U', 4499000, 1, 33),
(75, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 33),
(76, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 34),
(77, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 35),
(78, 'PR.002', 'Intel Core i7 8700', 1499000, 1, 36),
(79, 'PR.004', 'Ryzen 5600G', 1999000, 1, 36),
(80, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 36),
(81, 'PR.005', 'Ryzen 3600', 999999, 1, 36),
(82, 'PR.004', 'Ryzen 5600G', 1999000, 2, 36),
(83, 'PR.002', 'Intel Core i7 8700', 1499000, 1, 37),
(84, 'PR.003', 'Intel Core i5 8365U', 4499000, 3, 37),
(85, 'PR.004', 'Ryzen 5600G', 1999000, 2, 37),
(86, 'PR.005', 'Ryzen 3600', 999999, 4, 37),
(87, 'PR.005', 'Ryzen 3600', 999999, 4, 37),
(88, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 38),
(89, 'PR.005', 'Ryzen 3600', 999999, 2, 38),
(90, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 40),
(91, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 41),
(92, 'PR.003', 'Intel Core i5 8365U', 4499000, 3, 42),
(93, 'PR.001', 'Intel Core i7 1167G7', 7199000, 2, 43),
(94, 'PR.002', 'Intel Core i7 8700', 1499000, 1, 43),
(95, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 44),
(96, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 46),
(97, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 47),
(98, 'PR.002', 'Intel Core i7 8700', 1499000, 3, 48),
(99, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 49),
(100, 'PR.003', 'Intel Core i5 8365U', 4499000, 1, 50),
(101, 'PR.001', 'Intel Core i7 1167G7', 7199000, 2, 50),
(102, 'PR.005', 'Ryzen 3600', 999999, 3, 51),
(103, 'PR.002', 'Intel Core i7 8700', 1499000, 1, 51),
(104, 'PR.002', 'Intel Core i7 8700', 1499000, 1, 52),
(105, 'PR.003', 'Intel Core i5 8365U', 4499000, 3, 53),
(106, 'PR.001', 'Intel Core i7 1167G7', 7199000, 2, 53),
(107, 'PR.003', 'Intel Core i5 8365U', 4499000, 2, 54),
(108, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 55),
(109, 'PR.005', 'Ryzen 3600', 999999, 2, 55),
(110, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 56),
(111, 'PR.004', 'Ryzen 5600G', 1999000, 3, 56),
(112, 'PR.001', 'Intel Core i7 1167G7', 7199000, 2, 57),
(113, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 58),
(114, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 59),
(115, 'PR.001', 'Intel Core i7 1167G7', 7199000, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `kode_pelanggan` varchar(15) DEFAULT NULL,
  `nama_pelanggan` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `kode_pelanggan`, `nama_pelanggan`, `alamat`, `no_hp`) VALUES
(1, 'P.001', 'Alan Rusdiana', 'Jl. K.H. Abdul Halim No. 2000 Majalengka', '085111222333'),
(3, 'P.002', 'ADIT Adhit', 'Majalengka', '089911122233');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `tanggal`, `total_harga`, `bayar`, `id_pelanggan`, `id_petugas`, `nama_petugas`) VALUES
(33, '2024-08-15 11:32:25', 11698000, 15000000, NULL, 1, 'Yoga Eryana'),
(34, '2024-08-15 11:36:59', 7199000, 10000000, NULL, 1, 'Oyag Tono'),
(35, '2024-10-16 14:32:23', 7199000, 10000000, NULL, 1, 'Oyag Tono'),
(36, '2024-08-28 19:34:47', 15694999, 20000000, NULL, 1, 'Oyag Tono'),
(37, '2024-08-16 19:41:15', 26993992, 30000000, NULL, 1, 'Oyag Tono'),
(38, '2024-10-16 17:50:49', 9198998, 9500000, NULL, 1, 'Oyag Tono'),
(39, '2024-09-25 19:41:23', 9198998, 9500000, NULL, 1, 'Oyag Tono'),
(40, '2024-10-17 18:50:57', 7199000, 10000000, NULL, 1, 'William Christyyanto'),
(41, '2024-10-18 18:46:13', 7199000, 10000000, NULL, 1, 'William Christyyanto'),
(42, '2024-10-18 22:15:11', 13497000, 15000000, NULL, 1, 'William Christyyanto'),
(43, '2024-10-22 08:46:31', 15897000, 20000000, 1, 1, 'William Christyyanto'),
(44, '2024-10-22 08:56:26', 7199000, 7500000, NULL, 2, 'Oyag Tono'),
(45, '2024-10-22 08:59:01', NULL, NULL, NULL, 0, NULL),
(46, '2024-10-22 09:17:42', 7199000, 8000000, NULL, 1, 'William Christyyanto'),
(47, '2024-10-22 09:27:55', 7199000, 111111111, NULL, 1, 'William Christyyanto'),
(48, '2024-08-21 10:04:08', 4497000, 5000000, NULL, 1, 'William Christyyanto'),
(49, '2024-07-30 10:07:01', 7199000, 10000000, NULL, 1, 'William Christyyanto'),
(50, '2024-08-21 22:11:13', 18897000, 20000000, NULL, 1, 'William Christyyanto'),
(51, '2024-09-24 22:12:28', 4498997, 5000000, NULL, 1, 'William Christyyanto'),
(52, '2024-09-24 22:12:47', 1499000, 1500000, NULL, 1, 'William Christyyanto'),
(53, '2024-09-24 22:13:45', 27895000, 30000000, NULL, 1, 'William Christyyanto'),
(54, '2024-08-21 22:16:22', 8998000, 10000000, NULL, 1, 'William Christyyanto'),
(55, '2024-07-24 21:16:40', 9198998, 10000000, NULL, 1, 'William Christyyanto'),
(56, '2024-10-23 07:13:38', 13196000, 14000000, 3, 2, 'Oyag Tono'),
(57, '2024-10-23 08:19:48', 14398000, 15000000, NULL, 1, 'William Christyyanto'),
(58, '2024-10-23 09:30:11', 7199000, 10000000, 1, 1, 'William Christyyanto'),
(59, '2024-10-23 09:38:19', 7199000, 8000000, NULL, 1, 'William Christyyanto'),
(60, '2024-11-07 06:57:39', 7199000, 10000000, NULL, 1, 'William Christyyanto');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_petugas` varchar(35) DEFAULT NULL,
  `level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'william', '$2y$10$webST7VgmkBm24aWAFxmWeSU/rdRaxfYN.rzLc4AnklcdIp4xXrdi', 'William Christyyanto', 'admin'),
(2, 'Yoga', '$2y$10$Kf/y5xn0ucayXN0uuWMmYukljCK/DqgE0A20/K2AsrJ6nAgghGrqK', 'Oyag Tono', 'petugas'),
(6, 'admin2', '$2y$10$AfkEy15IeA6VEwOBqBTHM.KRL33mhv5I.3CGE/9jHWdnLlgZ9t8PC', 'Fathan', 'admin'),
(7, 'Rizki ', '$2y$10$OpothDYEzfI2QgLpYtsAXO1ULJsJFN6yrgCAjwTlNz82cFZoM0OBS', 'Rizki Fauzi Ali', 'admin'),
(8, 'Andre', '$2y$10$7axpFmVqClVIyJ8DO2ImEu7Qjb/vTgekKdmf4blcpzxLKHzvs6Ogy', 'Andre Pratama', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `nama_produk`, `harga`, `stok`) VALUES
(8, 'PR.001', 'Intel Core i7 1167G7', 7199000, 11),
(9, 'PR.002', 'Intel Core i7 8700', 1499000, 20),
(10, 'PR.003', 'Intel Core i5 8365U', 4499000, 40),
(11, 'PR.004', 'Ryzen 5600G', 1999000, 25),
(12, 'PR.005', 'Ryzen 3600', 999999, 35),
(13, 'PR.006', 'RYZEN 1000', 6000000, 3),
(14, 'PR.006', 'RYZEN 1000', 6000000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tambah_stok`
--

CREATE TABLE `tambah_stok` (
  `tambah_id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kode_produk` varchar(15) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tambah_stok`
--

INSERT INTO `tambah_stok` (`tambah_id`, `tanggal`, `kode_produk`, `jumlah`) VALUES
(1, '2024-01-31 08:39:02', 'M.001', 20),
(2, '2024-01-31 08:39:48', 'M.002', 10),
(3, '2024-01-31 08:41:23', 'M.003', 20),
(4, '2024-01-31 08:43:53', 'M.005', 10),
(5, '0000-00-00 00:00:00', 'M.001', 10),
(6, '0000-00-00 00:00:00', 'M.001', 50),
(7, '0000-00-00 00:00:00', 'D.002', 10),
(8, '0000-00-00 00:00:00', 'PR.001', 10),
(9, '0000-00-00 00:00:00', 'PR.003', 2),
(10, '0000-00-00 00:00:00', 'PR.001', 100),
(11, '0000-00-00 00:00:00', 'PR.002', 100),
(12, '0000-00-00 00:00:00', 'PR.003', 100),
(13, '0000-00-00 00:00:00', 'PR.004', 100),
(14, '0000-00-00 00:00:00', 'PR.005', 100),
(15, '0000-00-00 00:00:00', 'PR.006', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tambah_stok`
--
ALTER TABLE `tambah_stok`
  ADD PRIMARY KEY (`tambah_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tambah_stok`
--
ALTER TABLE `tambah_stok`
  MODIFY `tambah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
