-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2024 at 02:23 AM
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
-- Database: `toko_gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'user1', 'password1'),
(3, 'user2', 'password2'),
(4, 'user3', 'password3'),
(5, 'user4', 'password4'),
(6, 'user5', 'password5'),
(7, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `harga`, `kategori`, `stok`) VALUES
(1, 'Buku Tulis', 5000.00, 'Alat Tulis', 39),
(2, 'Pensil', 2000.00, 'Alat Tulis', 105),
(3, 'Penghapus', 1000.00, 'Alat Tulis', 209),
(4, 'Kabel', 7000000.00, 'Elektronik', 33),
(5, 'Lampu', 100000.00, 'Elektronik', 125),
(6, 'Indomie Goreng', 3000.00, 'Makanan', 51),
(7, 'Indomie Kuah', 3000.00, 'Makanan', 98),
(8, 'Minyak Goreng 1L', 14000.00, 'Kebutuhan Dapur', 93),
(9, 'Gula Pasir 1Kg', 13000.00, 'Kebutuhan Dapur', 15),
(10, 'Teh Celup', 5000.00, 'Minuman', 175),
(11, 'Kopi Sachet', 2000.00, 'Minuman', 127),
(12, 'Rokok Sampoerna', 26000.00, 'Rokok', 64),
(13, 'Sabun Mandi', 5000.00, 'Kebutuhan Pribadi', 28),
(14, 'Shampoo Sachet', 1000.00, 'Kebutuhan Pribadi', 146),
(15, 'Air Mineral Botol', 3000.00, 'Minuman', 85),
(16, 'Kecap Manis 500ml', 12000.00, 'Kebutuhan Dapur', 53),
(17, 'Saos Sambal 500ml', 10000.00, 'Kebutuhan Dapur', 41),
(18, 'Telur Ayam (Butir)', 2500.00, 'Makanan', 145),
(19, 'Coklat Batang', 7000.00, 'Snack', 15),
(20, 'Kerupuk', 1000.00, 'Snack', 155),
(21, 'Biskuit Kaleng', 25000.00, 'Snack', 67),
(22, 'Baterai AA', 5000.00, 'Elektronik', 16),
(23, 'Detergen 1Kg', 15000.00, 'Kebutuhan Rumah Tangga', 99),
(24, 'Obat Nyamuk', 8000.00, 'Kebutuhan Rumah Tangga', 30),
(25, 'Tissue Gulung', 12000.00, 'Kebutuhan Pribadi', 150),
(26, 'Minuman Teh Botol', 7000.00, 'Minuman', 80),
(27, 'Biskuit', 4000.00, 'Makanan', 230),
(28, 'Kecap Manis 1L', 22000.00, 'Kebutuhan Dapur', 18),
(29, 'Chips', 8000.00, 'Snack', 140),
(30, 'Susu UHT 1L', 15000.00, 'Minuman', 80),
(31, 'Lada bubuk', 5000.00, 'Kebutuhan Dapur', 90),
(32, 'Pepsodent', 7000.00, 'Kebutuhan Pribadi', 15),
(33, 'Shampoo Botol', 15000.00, 'Kebutuhan Pribadi', 85),
(34, 'Penggaris', 1000.00, 'Alat Tulis', 165),
(35, 'Roti Tawar', 5000.00, 'Makanan', 115),
(36, 'Sabun Cuci Piring', 8000.00, 'Kebutuhan Dapur', 60),
(37, 'Tepung Terigu 1Kg', 11000.00, 'Kebutuhan Dapur', 45),
(38, 'Sereal', 25000.00, 'Makanan', 30),
(39, 'Madu 500g', 35000.00, 'Kebutuhan Dapur', 20),
(40, 'Wafer', 9000.00, 'Snack', 50),
(41, 'Roti', 3500.00, 'Makanan', 100),
(42, 'Kopi Bubuk 250g', 22000.00, 'Minuman', 40),
(43, 'Kecap Asin 1L', 18000.00, 'Kebutuhan Dapur', 60),
(44, 'Keju 250g', 25000.00, 'Makanan', 35),
(45, 'Susu Kental Manis', 12000.00, 'Makanan', 70),
(46, 'Susu Sachet', 15000.00, 'Minuman', 80),
(47, 'Mie Instan Cup', 6000.00, 'Makanan', 120),
(48, 'Coklat Bubuk', 25000.00, 'Minuman', 40),
(49, 'Kacang Goreng', 12000.00, 'Snack', 60),
(50, 'Garam 1Kg', 5000.00, 'Kebutuhan Dapur', 100),
(51, 'Vicks Vaporub 50g', 12000.00, 'Kesehatan', 39),
(52, 'Tissue Basah', 7000.00, 'Kebutuhan Pribadi', 78),
(53, 'Pasta Gigi', 10000.00, 'Kebutuhan Pribadi', 96),
(54, 'Bumbu Ramen', 7000.00, 'Kebutuhan Dapur', 67),
(55, 'Tepung Ketan 500g', 8000.00, 'Kebutuhan Dapur', 58),
(57, 'Susu Coklat', 2000.00, 'Makanan/Minuman', 300),
(58, 'Stik PS', 30000.00, 'elektro', 40),
(59, 'Stik PS', 30000.00, 'elektro', 90),
(60, 'Headset', 30000.00, 'Elektronik', 5),
(61, 'Pulpen', 2000.00, 'alat tulis', 200),
(62, 'Pulpen', 2000.00, 'alat tulis', 200),
(63, 'Headset', 2000.00, 'Elektronik', 20),
(64, 'Pulpen', 2000.00, 'coba tulis', 90);

-- --------------------------------------------------------

--
-- Table structure for table `logaktivitas`
--

CREATE TABLE `logaktivitas` (
  `id_log` int(30) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `aksi` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `stok` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logaktivitas`
--

INSERT INTO `logaktivitas` (`id_log`, `barang`, `aksi`, `tanggal`, `stok`) VALUES
(1, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 6),
(2, 'Stik PS', 'Tambah Barang', '2024-12-20', 90),
(3, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 250),
(4, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 5),
(5, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 5),
(6, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 10),
(7, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 5),
(8, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 5),
(9, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 5),
(10, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 5),
(11, 'Kecap Manis 1L', 'Tambah Stok', '2024-12-20', 8),
(12, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 10),
(13, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 1),
(14, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 1),
(15, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 2),
(16, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 10),
(17, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 5),
(18, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 5),
(19, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 5),
(20, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 1),
(21, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 4),
(22, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 60),
(23, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 10),
(24, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 1),
(25, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 1),
(26, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 90),
(27, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 8),
(28, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 2),
(29, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 3),
(30, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 3),
(31, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 3),
(32, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 1),
(33, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 1),
(34, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 2),
(35, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 1),
(36, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 4),
(37, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 10),
(38, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 10),
(39, 'Buku Tulis', 'Ambil Stok', '2024-12-20', 100),
(40, 'Buku Tulis', 'Tambah Stok', '2024-12-20', 30),
(41, 'Buku Tulis', 'Tambah Stok', '2024-12-22', 2),
(42, 'Buku Tulis', 'Ambil Stok', '2024-12-22', 2),
(43, 'Headset', 'Tambah Barang', '2024-12-22', 5),
(44, 'Pulpen', 'Tambah Barang', '2024-12-22', 200),
(45, 'Pulpen', 'Tambah Barang', '2024-12-22', 200),
(46, 'Headset', 'Tambah Barang', '2024-12-22', 20),
(47, 'Pulpen', 'Tambah Barang', '2024-12-22', 90),
(48, 'Buku Tulis', 'Ambil Stok', '2024-12-22', 2),
(49, 'Buku Tulis', 'Ambil Stok', '2024-12-22', 2),
(50, 'Buku Tulis', 'Ambil Stok', '2024-12-22', 3),
(51, 'Buku Tulis', 'Ambil Stok', '2024-12-22', 4);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jenis_transaksi` enum('masuk','keluar') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `jenis_transaksi`, `jumlah`, `tgl_transaksi`) VALUES
(1, 1, 'masuk', 50, '2024-12-01'),
(2, 2, 'keluar', 30, '2024-12-02'),
(3, 3, 'masuk', 20, '2024-12-03'),
(4, 4, 'keluar', 5, '2024-12-03'),
(5, 5, 'masuk', 15, '2024-12-04'),
(7, 1, 'masuk', 50, '2024-12-01'),
(8, 1, 'masuk', 50, '2024-12-01'),
(9, 2, 'keluar', 20, '2024-12-02'),
(10, 3, 'masuk', 30, '2024-12-03'),
(11, 4, 'keluar', 15, '2024-12-04'),
(12, 5, 'masuk', 40, '2024-12-05'),
(13, 6, 'keluar', 25, '2024-12-06'),
(14, 7, 'keluar', 10, '2024-12-07'),
(15, 8, 'masuk', 20, '2024-12-08'),
(16, 9, 'keluar', 35, '2024-12-09'),
(17, 10, 'masuk', 50, '2024-12-10'),
(18, 11, 'keluar', 10, '2024-12-11'),
(19, 12, 'masuk', 15, '2024-12-12'),
(20, 13, 'keluar', 40, '2024-12-13'),
(21, 14, 'masuk', 20, '2024-12-14'),
(22, 15, 'keluar', 50, '2024-12-15'),
(23, 16, 'masuk', 10, '2024-12-16'),
(24, 17, 'keluar', 15, '2024-12-17'),
(25, 18, 'masuk', 30, '2024-12-18'),
(26, 19, 'keluar', 10, '2024-12-19'),
(27, 20, 'masuk', 25, '2024-12-20'),
(28, 2, 'keluar', 50, '2024-12-01'),
(29, 2, 'keluar', 30, '2024-12-01'),
(30, 1, 'masuk', 50, '2024-12-01'),
(31, 2, 'keluar', 20, '2024-12-01'),
(32, 3, 'masuk', 30, '2024-12-01'),
(33, 4, 'keluar', 15, '2024-12-01'),
(34, 5, 'masuk', 40, '2024-12-01'),
(35, 6, 'keluar', 25, '2024-12-01'),
(36, 7, 'keluar', 10, '2024-12-01'),
(37, 8, 'masuk', 20, '2024-12-01'),
(38, 9, 'keluar', 35, '2024-12-01'),
(39, 10, 'masuk', 50, '2024-12-02'),
(40, 11, 'keluar', 10, '2024-12-02'),
(41, 12, 'masuk', 15, '2024-12-02'),
(42, 13, 'keluar', 40, '2024-12-02'),
(43, 14, 'masuk', 20, '2024-12-02'),
(44, 15, 'keluar', 50, '2024-12-02'),
(45, 16, 'masuk', 10, '2024-12-03'),
(46, 17, 'keluar', 15, '2024-12-03'),
(47, 18, 'masuk', 30, '2024-12-03'),
(48, 19, 'keluar', 10, '2024-12-03'),
(49, 20, 'masuk', 25, '2024-12-03'),
(50, 21, 'masuk', 50, '2024-12-04'),
(51, 22, 'keluar', 30, '2024-12-04'),
(52, 23, 'masuk', 70, '2024-12-04'),
(53, 24, 'keluar', 40, '2024-12-04'),
(54, 25, 'masuk', 100, '2024-12-05'),
(55, 26, 'keluar', 20, '2024-12-05'),
(56, 27, 'masuk', 80, '2024-12-05'),
(57, 28, 'keluar', 50, '2024-12-05'),
(58, 29, 'masuk', 60, '2024-12-05'),
(59, 30, 'keluar', 10, '2024-12-05'),
(60, 31, 'masuk', 40, '2024-12-05'),
(61, 32, 'keluar', 25, '2024-12-05'),
(62, 33, 'masuk', 55, '2024-12-05'),
(63, 34, 'keluar', 35, '2024-12-05'),
(64, 35, 'masuk', 45, '2024-12-05'),
(65, 4, 'masuk', 50, '2024-12-01'),
(66, 13, 'masuk', 50, '2024-12-01'),
(67, 17, 'masuk', 50, '2024-12-01'),
(68, 9, 'masuk', 50, '2024-12-01'),
(69, 24, 'masuk', 50, '2024-12-01'),
(70, 51, 'masuk', 4, '2024-12-11'),
(71, 52, 'keluar', 2, '2024-12-11'),
(72, 53, 'masuk', 6, '2024-12-11'),
(73, 54, 'keluar', 3, '2024-12-11'),
(74, 55, 'masuk', 8, '2024-12-11'),
(75, 1, 'keluar', 15, '2024-12-12'),
(76, 2, 'masuk', 5, '2024-12-12'),
(77, 3, 'keluar', 1, '2024-12-12'),
(78, 4, 'masuk', 3, '2024-12-12'),
(79, 5, 'keluar', 5, '2024-12-12'),
(80, 6, 'masuk', 1, '2024-12-13'),
(81, 7, 'keluar', 2, '2024-12-13'),
(82, 8, 'masuk', 3, '2024-12-13'),
(83, 9, 'keluar', 5, '2024-12-13'),
(84, 10, 'masuk', 5, '2024-12-13'),
(85, 11, 'keluar', 3, '2024-12-13'),
(86, 12, 'masuk', 4, '2024-12-14'),
(87, 13, 'keluar', 2, '2024-12-14'),
(88, 14, 'masuk', 6, '2024-12-14'),
(89, 15, 'keluar', 15, '2024-12-14'),
(90, 16, 'masuk', 3, '2024-12-14'),
(91, 17, 'keluar', 4, '2024-12-14'),
(92, 18, 'masuk', 5, '2024-12-15'),
(93, 19, 'keluar', 15, '2024-12-15'),
(94, 20, 'masuk', 5, '2024-12-15'),
(95, 21, 'keluar', 3, '2024-12-15'),
(96, 22, 'masuk', 6, '2024-12-15'),
(97, 23, 'keluar', 1, '2024-12-15');

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `update_stok_after_transaksi` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
    IF NEW.jenis_transaksi = 'masuk' THEN
        UPDATE barang
        SET stok = stok + NEW.jumlah
        WHERE id = NEW.id_barang;
    ELSEIF NEW.jenis_transaksi = 'keluar' THEN
        UPDATE barang
        SET stok = stok - NEW.jumlah
        WHERE id = NEW.id_barang;
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logaktivitas`
--
ALTER TABLE `logaktivitas`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `logaktivitas`
--
ALTER TABLE `logaktivitas`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
