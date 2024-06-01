-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 09:16 PM
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
-- Database: `savoy`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingId` char(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` char(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) NOT NULL,
  `street` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `postcode` char(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactNumber` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movieId` char(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `producer` varchar(40) NOT NULL,
  `director` varchar(40) NOT NULL,
  `releaseDate` date NOT NULL,
  `screeningTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_show`
--

CREATE TABLE `movie_show` (
  `showId` char(10) NOT NULL,
  `show_date` date NOT NULL,
  `timeSlot` time NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentId` char(10) NOT NULL,
  `amount` char(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `mode_of_payment` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `screening`
--

CREATE TABLE `screening` (
  `screeningId` char(10) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `screening`
--

INSERT INTO `screening` (`screeningId`, `startDate`, `endDate`) VALUES
('12', '0000-00-00', '0000-00-00'),
('14', '2003-12-31', '2004-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatNumber` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seatrow`
--

CREATE TABLE `seatrow` (
  `row_Id` char(5) NOT NULL,
  `rowName` varchar(20) NOT NULL,
  `number_of_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seattype`
--

CREATE TABLE `seattype` (
  `seat_type_Id` char(10) NOT NULL,
  `seat_type_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `theatreId` char(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `location` varchar(50) NOT NULL,
  `street` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `postcode` char(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `managerName` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movieId`);

--
-- Indexes for table `movie_show`
--
ALTER TABLE `movie_show`
  ADD PRIMARY KEY (`showId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentId`);

--
-- Indexes for table `screening`
--
ALTER TABLE `screening`
  ADD PRIMARY KEY (`screeningId`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatNumber`);

--
-- Indexes for table `seatrow`
--
ALTER TABLE `seatrow`
  ADD PRIMARY KEY (`row_Id`);

--
-- Indexes for table `seattype`
--
ALTER TABLE `seattype`
  ADD PRIMARY KEY (`seat_type_Id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`theatreId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
