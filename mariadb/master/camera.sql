-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2018 at 08:52 PM
-- Server version: 5.7.21
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camera`
--

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE `camera` (
  `camera_id` int(10) NOT NULL,
  `url` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`camera_id`, `url`, `street_name`, `latitude`, `longitude`) VALUES
(1, 'http://35.247.150.21:5000/camera_1', 'Jalan Dago arah Dago Atas', '-6.879313', '107.616435'),
(2, 'http://35.247.150.21:5000/camera_2', 'Jalan Ir.H.Djuanda depan SMAN 1 arah perempatan Dago Merdeka', '-6.895575', '107.612884'),
(3, 'http://35.247.150.21:5000/camera_3', 'Jalan Ir.H.Djuanda depan KFC Dago arah Jalan Merdeka', '-6.901754', '107.611927'),
(4, 'http://35.247.150.21:5000/camera_4', 'Jalan Ir.H.Djuanda depan KFC Dago arah perempatan Dago Merdeka', '-6.901741', '107.611819'),
(5, 'http://35.247.150.21:5000/camera_5', 'Jalan Merdeka depan SDN 11 Banjarsari', '-6.913381', '107.610379'),
(6, 'http://35.247.150.21:5000/camera_6', 'Jalan Pungkur depan ITC Kebon Kelapa', '-6.927415', '107.606491');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`camera_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `camera_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' IDENTIFIED BY 'root';

GRANT REPLICATION SLAVE ON *.* TO 'root'@'%' IDENTIFIED BY 'root';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
