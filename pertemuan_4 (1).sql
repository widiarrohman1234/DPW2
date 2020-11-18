-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 06:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertemuan_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'Rantai Cambuk Bandhil Pencak Silat Tapak Suci Kusarigama Ninjutsu', 135000, 500, 'Deskripsi Rantai Cambuk Bandhil Pencak Silat Tapak Suci Kusarigama Ninjutsu\r\n\r\nSenjata tradisional Bandhil salah satunya, senjata ini disebut juga sebagai Umban Pelempar Batu. Terdapat tiga jenis senjata ini di antaranya: Brubuh, Jauh, dan Lepas. Brubuh digunakan dalam pertempuran jarak dekat. Biasanya berupa rantai besi, dan pelurunya juga dari besi.\r\nSelain itu, senjata ini juga digunakan dalam perguruan seni beladiri Indonesia Tapak Suci. Senjata ini dipakai untuk pertarungan jarak jauh dan untuk melawan beberapa orang yang bersenjata. Senjata tradisional jenis ini memiliki tingkat kesulitan teknik yang cukup tinggi karena membutuhkan koordinasi gerakan badan yang seimbang dan juga membutuhkan kelenturan tubuh, timing yang tepat serta membutuhkan keberanian yang besar. Hati-hati dalam menggunakan senjata tersebut bagi praktisi yang belum mahir.\r\n\r\nSpek Rantai:\r\n- Batang Terbuat Dari Behel 10mm\r\n- Peluru/Bandul Dari Besi\r\n- Gagang Dari Aluminium\r\n- Panjang Total 1m\r\n- Berat Nett Satu Senjata 800gr\r\n\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:39:29', '2020-11-16 09:06:43'),
(2, 'Double Stick Nunchaku Foam Busa Import Warna Polos', 40000, 250, 'Deskripsi Double Stick Nunchaku Foam Busa Import Warna Polos\r\n\r\nDouble Stick Nunchaku Foam Busa,\r\nSangat Cocok Untuk Latihan/Pemula,\r\nSangat Empuk,\r\nRingan dan Aman,\r\nProduk Import,\r\nTersedia Warna Hitam, Hijau Merah dan Biru\r\nRANDOM, Tergantung Ketersediaan Stock\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:40:08', '2020-11-16 09:06:46'),
(3, 'Mini Knuckle Glass Breaker,Model Skull Atau Tengkorak', 30000, 450, 'Deskripsi Mini Knuckle Glass Breaker,Model Skull Atau Tengkorak\r\n\r\nMini Knuckle Glass Breaker,\r\n\r\nModel Skull Atau Tengkorak,\r\n\r\nPraktis, Kuat, Murah-Meriah dan Berkualitas,\r\n\r\nTersedia Warna Silver, Hitam dan Emas,\r\n\r\nRandom Tergantung Ketersediaan Stock,\r\n\r\nFull Metal,\r\n\r\nStainless Steel,\r\n\r\nProduk Import,\r\n\r\nPerhatian: Hanya untuk Koleksi, Mohon Tidak Disalahgunakan!\r\n\r\nToko MR MIYAMOTO / REZA MIYAMOTO', 10, '2020-11-15 01:44:29', '2020-11-16 09:06:49'),
(4, 'Katana Samurai Pedang Gi Joe hitam murah meriah', 320000, 1000, 'Deskripsi Katana Samurai Pedang Gi Joe hitam murah meriah\r\n\r\nKatana Gi Joe Black\r\nSpek :\r\nBahan bilah baja strip \r\nPanjang bilah 70 cm\r\nPanjang handle 28 cm\r\nLebar bilah 2,5cm\r\nKondisi tajam\r\nCocok buat jadi koleksi atau pajangan rumah nya', 50, '2020-11-15 09:20:18', '2020-11-16 09:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama_user`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'widiarrohman1234@sidafa.id', 'user@gmail.com', 'user', '$2y$10$Qxl29smp1t2GCaS5cnvgMuvLlg3ACSAJ4uTvGKPoWPRUIPqcqAosG', NULL, '2020-11-16 06:47:35', '2020-11-16 07:37:18'),
(2, 'widi_arrohman', 'widiarrohman1234@sidafa.id', 'widi arrohman', '$2y$10$yVUSYGN.Z0Oz3XuJ7ZNwP.BTMhs9VRskrdutbEaei6OYrw.A3oVxy', NULL, '2020-11-16 06:51:32', '2020-11-16 14:10:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
