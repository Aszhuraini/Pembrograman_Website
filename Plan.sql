-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2021 at 01:18 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Stocks`
--

-- --------------------------------------------------------

--
-- Table structure for table `TradingPlan`
--

CREATE TABLE `TradingPlan` (
  `Code` varchar(4) NOT NULL,
  `Lot` int(7) NOT NULL,
  `AvgPrice` int(6) NOT NULL,
  `TP1` int(6) NOT NULL,
  `TP2` int(6) DEFAULT NULL,
  `CL` int(6) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `TradingPlan`
--

INSERT INTO `TradingPlan` (`Code`, `Lot`, `AvgPrice`, `TP1`, `TP2`, `CL`, `Date`) VALUES
('BBRI', 1000, 4500, 5000, NULL, 3500, '2021-04-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TradingPlan`
--
ALTER TABLE `TradingPlan`
  ADD PRIMARY KEY (`Code`),
  ADD UNIQUE KEY `Code` (`Code`),
  ADD KEY `Code_2` (`Code`),
  ADD KEY `Code_3` (`Code`),
  ADD KEY `Code_4` (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
