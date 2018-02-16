-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 16, 2018 at 04:52 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table-relation`
--

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_1`
--

CREATE TABLE `TABLE_1` (
  `sheet_id` int(12) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `TABLE_1`
--

INSERT INTO `TABLE_1` (`sheet_id`, `name`) VALUES
(1, 'Angular'),
(2, 'React');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_2`
--

CREATE TABLE `TABLE_2` (
  `sheet_item_id` int(12) NOT NULL,
  `sheet_id` int(12) NOT NULL,
  `name` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `TABLE_2`
--

INSERT INTO `TABLE_2` (`sheet_item_id`, `sheet_id`, `name`) VALUES
(1, 1, 'JAVASCRIPT'),
(2, 1, 'NATIVE'),
(3, 2, 'HYBIRD'),
(4, 2, 'JAVASCRIPT NATIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TABLE_1`
--
ALTER TABLE `TABLE_1`
  ADD PRIMARY KEY (`sheet_id`);

--
-- Indexes for table `TABLE_2`
--
ALTER TABLE `TABLE_2`
  ADD PRIMARY KEY (`sheet_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TABLE_1`
--
ALTER TABLE `TABLE_1`
  MODIFY `sheet_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TABLE_2`
--
ALTER TABLE `TABLE_2`
  MODIFY `sheet_item_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
