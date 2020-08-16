-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2018 at 08:13 AM
-- Server version: 5.7.14-log
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` text,
  `email` text,
  `cdate` date DEFAULT NULL,
  `approval` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `approval`) VALUES
(1, 'Dayananda K S', '9980804373', 'dayanandaks930@gmail.com', '2018-11-01', 'Allowed'),
(2, 'dayananda', '9980804373', 'admin@gmail.com', '2018-11-01', 'Not Allowed');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234'),
(2, 'Prasath', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

DROP TABLE IF EXISTS `newsletterlog`;
CREATE TABLE IF NOT EXISTS `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(1, 'Dr.', 'aswath', 't', 'Superior Room', 'Double', 1, '2018-12-12', '2018-12-12', 0.00, 0.00, 0.00, 'Breakfast', 0.00, 0),
(2, 'Dr.', 'Dayananda', 'dolly', 'Deluxe Room', 'Single', 1, '2018-02-12', '2018-05-12', 19580.00, 20167.40, 391.60, 'Breakfast', 195.80, 89),
(3, 'Dr.', 'punneth', 'dolly', 'Superior Room', 'Single', 1, '2018-12-06', '2018-12-05', -320.00, -329.60, -6.40, 'Breakfast', -3.20, -1),
(4, 'Mr.', 'Dolly ', 'ani', 'Superior Room', 'Single', 1, '2018-12-01', '2018-12-05', 1280.00, 1318.40, 25.60, 'Breakfast', 12.80, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(1, 'Superior Room', 'Single', 'NotFree', 4),
(2, 'Superior Room', 'Double', 'NotFree', 1),
(3, 'Superior Room', 'Triple', 'Free', NULL),
(4, 'Single Room', 'Quad', 'Free', NULL),
(5, 'Superior Room', 'Quad', 'Free', NULL),
(6, 'Deluxe Room', 'Single', 'NotFree', 2),
(7, 'Deluxe Room', 'Double', 'Free', NULL),
(8, 'Deluxe Room', 'Triple', 'Free', NULL),
(9, 'Deluxe Room', 'Quad', 'Free', NULL),
(10, 'Guest House', 'Single', 'Free', NULL),
(11, 'Guest House', 'Double', 'Free', NULL),
(12, 'Guest House', 'Quad', 'Free', NULL),
(13, 'Single Room', 'Single', 'Free', NULL),
(14, 'Single Room', 'Double', 'Free', NULL),
(15, 'Single Room', 'Triple', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

DROP TABLE IF EXISTS `roombook`;
CREATE TABLE IF NOT EXISTS `roombook` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(1, 'Dr.', 'aswath', 't', 'admin@gmail.com', 'Indian', 'Iceland', '9980804373', 'Superior Room', 'Double', '1', 'Breakfast', '2018-12-12', '2018-12-12', 'Conform', 0),
(2, 'Dr.', 'Dayananda', 'dolly', 'dayanandaks@gmail.com', 'Indian', 'India', '9980804373', 'Deluxe Room', 'Single', '1', 'Breakfast', '2018-02-12', '2018-05-12', 'Conform', 89),
(5, 'Dr.', 'suresh', 't', 'suri@gmail.com', 'Indian', 'India', '9980804371', 'Single Room', 'Single', '1', 'Breakfast', '2018-12-05', '2018-12-10', 'Not Conform', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
