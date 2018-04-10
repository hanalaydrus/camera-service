-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2018 at 08:38 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.1.11-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'http://127.0.0.1:5001/video_feed', 'Jalan Dago arah Dago Atas', '-6.879313', '107.616435'),
(2, 'http://127.0.0.1:5002/video_feed', 'Jalan Ir.H.Djuanda depan SMAN 1 arah perempatan Dago Merdeka', '-6.895575', '107.612884'),
(3, 'http://127.0.0.1:5003/video_feed', 'Jalan Ir.H.Djuanda depan KFC Dago arah Jalan Merdeka', '-6.901754', '107.611927'),
(4, 'http://127.0.0.1:5004/video_feed', 'Jalan Ir.H.Djuanda depan KFC Dago arah perempatan Dago Merdeka', '-6.901741', '107.611819'),
(5, 'http://127.0.0.1:5005/video_feed', 'Jalan Merdeka depan SDN 11 Banjarsari', '-6.913381', '107.610379'),
(6, 'http://127.0.0.1:5006/video_feed', 'Jalan Pungkur depan ITC Kebon Kelapa', '-6.927415', '107.606491');

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
