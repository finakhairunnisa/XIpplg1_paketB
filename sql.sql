-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 01:41 AM
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
-- Database: `galeri_foto`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(34, 'gunung', 'pemandangan gunung', '2024-11-07', 0),
(36, 'kucing', 'foto tentang kucing', '2024-11-07', 0),
(37, 'kucing', 'kucing lucu', '2024-11-14', 14),
(38, 'gunung', 'alam', '2024-11-16', 14),
(39, 'laut', 'laut indah', '2024-11-19', 14),
(40, 'bunga', 'wangii', '2024-11-19', 15),
(41, 'fina', 'fina waktu kecil', '2024-11-20', 16);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(16, 'kucing', 'kucing gemoyy', '2024-11-19', '1377143080-Kucing aneh.jpeg', 37, 14),
(19, 'gunung merapi', 'meledakk', '2024-11-19', '1269530228-Gunung Merapi.jpeg', 38, 14),
(23, 'kucing ', 'gemoyy', '2024-11-19', '738894556-download (8).jpeg', 37, 14),
(26, 'bunga', 'bunga mawar', '2024-11-20', '633787646-download.jpg', 40, 15),
(27, 'bunga', 'tulip', '2024-11-20', '1556294556-download (1).jpg', 40, 15),
(28, 'bunga', 'gatau bunga apa', '2024-11-20', '316569646-Beautiful Roses & Flowers 🌺 _ Beautiful_... _ Facebook', 40, 15),
(29, 'bunga', 'hjgh', '2024-11-20', '951921683-Ромашковый закат.jpg', 40, 15),
(30, 'gunung bromo', 'jgjw', '2024-11-20', '2017429451-Aily.jpg', 40, 15),
(31, 'kucing', 'hjwgf', '2024-11-20', '9974055-8.jpg', 40, 15),
(32, 'kecil', 'nmbdvh', '2024-11-20', '1511993283-kecil.jpg', 40, 15),
(33, 'kecil', 'bjcft', '2024-11-20', '1005569533-fina.jpg', 40, 15),
(34, 'fina', 'kecill', '2024-11-20', '656786465-kecil3.jpg', 41, 16),
(35, 'm,kebfn', 'mj,hse', '2024-11-20', '902942561-fina (2).jpg', 40, 15),
(36, 'nhtfkjkj', 'jgvh', '2024-12-13', '1531053653-kecil2.jpg', 41, 16);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(2, 16, 14, 'aneh sekali mukanya', '2024-11-19'),
(3, 16, 14, 'jelek lu', '2024-11-19'),
(4, 16, 14, 'lucu sekalii', '2024-11-19'),
(5, 16, 15, 'kaget bangett', '2024-11-19'),
(6, 23, 14, 'jelek banget lu mukanya', '2024-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(88, 16, 14, '2024-11-20'),
(89, 19, 14, '2024-11-20'),
(90, 26, 15, '2024-11-20'),
(92, 27, 15, '2024-11-20'),
(95, 34, 16, '2024-11-20'),
(96, 23, 14, '2024-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(14, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', 'admin', 'cirebon'),
(15, 'akun2', 'c81e728d9d4c2f636f067f89cc14862c', 'akun2@gmail.com', 'akun2', 'cirebon'),
(16, 'akun1', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'akun1@gmail.com', 'akun1', 'jepura');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `UserID` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `AlbumID` (`albumid`),
  ADD KEY `UserID` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `FotoID` (`fotoid`),
  ADD KEY `UserID` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `FotoID` (`fotoid`),
  ADD KEY `UserID` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
