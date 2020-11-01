-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 02:11 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `usres`
--

CREATE TABLE `usres` (
  `UserID` int(11) NOT NULL COMMENT 'to idntfiy user',
  `Username` varchar(255) NOT NULL COMMENT 'username to login',
  `Password` varchar(255) NOT NULL COMMENT 'password to login',
  `Email` varchar(255) NOT NULL COMMENT 'email to login',
  `Fullname` varchar(255) NOT NULL COMMENT 'fullname to login',
  `GroupID` int(11) NOT NULL DEFAULT 0 COMMENT 'identfiy user Group',
  `TrustStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'Seller Rank',
  `RegStatus` int(11) NOT NULL DEFAULT 0 COMMENT 'pending Approval',
  `RegusterDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usres`
--

INSERT INTO `usres` (`UserID`, `Username`, `Password`, `Email`, `Fullname`, `GroupID`, `TrustStatus`, `RegStatus`, `RegusterDate`) VALUES
(1, 'ayman', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'ayman@yahoo.com', 'ayman', 1, 0, 1, '2020-10-31'),
(3, 'ayaaa', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'ayaa@yahoo.comsssssssssssss', 'ayaa sammer', 1, 0, 1, '2020-10-30'),
(100, 'ayman mohammed', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'atmanMoh@yahoo.com', 'aymanMoh', 0, 0, 1, '2020-11-01'),
(101, 'aymangawad', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'aymangawad@yahoo.com', 'aymangawad', 0, 0, 1, '2020-11-01'),
(102, 'ayaaSammer', '597c9f131f74f61cab01178d7ac30a5666d0ff14', 'ayaaSammer@yahoo.com', 'ayaaSammer', 0, 0, 0, '2020-11-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usres`
--
ALTER TABLE `usres`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usres`
--
ALTER TABLE `usres`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'to idntfiy user', AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
