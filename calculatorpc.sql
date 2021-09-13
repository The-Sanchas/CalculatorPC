-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2020 at 06:39 AM
-- Server version: 5.7.18
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calculatorpc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cooler`
--

CREATE TABLE `cooler` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `power` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cooler`
--

INSERT INTO `cooler` (`id`, `name`, `power`) VALUES
(1, '1 куллер', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `power` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`id`, `name`, `power`) VALUES
(1, 'Intel Core i5-9400F Coffee Lake-S Refresh 2900Mhz\r\n', 65),
(2, 'Intel Core i5-9600K Coffee Lake-S Refresh 3700Mhz\r\n', 95),
(3, 'Intel Core i5-10400F Comet Lake 2900Mhz\r\n', 65),
(4, 'Intel Core i7-9700K Coffee Lake-S Refresh 3600Mhz\r\n', 95),
(5, 'Intel Core i7-10700K Comet Lake 3800Mhz\r\n', 125),
(6, 'Intel Core i9-9900K Coffee Lake-S Refresh 3600Mhz\r\n', 95),
(7, 'Intel Core i9-10900K Comet Lake 3700Mhz \r\n', 125),
(8, 'Intel Core i9-9900X Skylake-X Refresh 3500Mhz\r\n', 165),
(9, 'AMD Ryzen 5 2600 Pinnacle Ridge 3400Mhz \r\n', 65),
(10, 'AMD Ryzen 5 3600 Matisse 3600Mhz\r\n', 65),
(11, 'AMD Ryzen 7 3700X Matisse 3600Mhz\r\n', 65),
(12, 'AMD Ryzen 7 4750G Pro Renoir 3600Mhz\r\n', 65),
(13, 'AMD Ryzen 9 3900XT Matisse 3800Mhz\r\n', 105);

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `power` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`id`, `name`, `power`) VALUES
(1, 'Поиск в интернете и работа с документами, кодинг небольших проектов ', 30),
(2, 'Полное геймерсоке погружение ', 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` char(30) NOT NULL,
  `Username` char(30) CHARACTER SET utf32 NOT NULL,
  `Email` char(30) NOT NULL,
  `Password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `id` int(11) NOT NULL,
  `graphicscard` varchar(200) NOT NULL,
  `cpu` varchar(200) NOT NULL,
  `motherboard` varchar(200) NOT NULL,
  `сooler` varchar(200) NOT NULL,
  `ram` varchar(200) NOT NULL,
  `hdd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Videocards`
--

CREATE TABLE `Videocards` (
  `id` int(11) NOT NULL,
  `namecard` varchar(200) NOT NULL,
  `power` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Videocards`
--

INSERT INTO `Videocards` (`id`, `namecard`, `power`) VALUES
(9, 'MSI GeForce GTX 1050 Ti Gaming X 4GB 1379MHz', 75),
(10, 'Gigabyte GeForce GTX 1050 Ti OC 4GB 1341MHz', 75),
(11, 'Asus GeForce GTX 1050 Ti Phoenix 4GB 1290MHz', 75),
(12, 'Gigabyte GeForce GTX 1070 Ti Gaming OC 8GB 1721MHz', 180),
(13, 'MSI GeForce GTX 1070 Ti Gaming 8GB 1607MHz ', 180),
(14, 'Palit GeForce GTX 1070 Ti Dual 8GB 1607MHz', 180),
(15, 'MSI GeForce GTX 1080 Ti Aero 11G OC 11GB 1506MHz ', 180),
(16, 'MSI GeForce GTX 1080 Ti Armor OC 11GB 1531MHz', 250),
(17, 'Gigabyte GeForce GTX 1080 Ti 11GB 1708MHz', 250);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cooler`
--
ALTER TABLE `cooler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Indexes for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `name_2` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `сooler` (`сooler`),
  ADD KEY `ram` (`ram`),
  ADD KEY `hdd` (`hdd`),
  ADD KEY `graphicscard` (`graphicscard`),
  ADD KEY `cpu` (`cpu`),
  ADD KEY `motherboard` (`motherboard`);

--
-- Indexes for table `Videocards`
--
ALTER TABLE `Videocards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `namecard` (`namecard`),
  ADD KEY `namecard_2` (`namecard`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cooler`
--
ALTER TABLE `cooler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usersdata`
--
ALTER TABLE `usersdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Videocards`
--
ALTER TABLE `Videocards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD CONSTRAINT `usersdata_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usersdata_ibfk_2` FOREIGN KEY (`graphicscard`) REFERENCES `Videocards` (`namecard`),
  ADD CONSTRAINT `usersdata_ibfk_3` FOREIGN KEY (`cpu`) REFERENCES `cpu` (`name`),
  ADD CONSTRAINT `usersdata_ibfk_4` FOREIGN KEY (`сooler`) REFERENCES `cooler` (`name`),
  ADD CONSTRAINT `usersdata_ibfk_5` FOREIGN KEY (`motherboard`) REFERENCES `motherboard` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
