-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 04:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jahangir_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(1, 1, 'Mosarrof', 'Hossain', 'Male', 'mosarrof@gmail.com', '0154789456', 'Miraj', 1500, '2023-07-12', '10:00:00', 1, 1),
(2, 2, 'Mr', 'Jak', 'Male', 'jak@gmail.com', '0154789456', 'Rakib Ahsan', 0, '2023-07-19', '14:00:00', 1, 1),
(2, 3, 'Mr', 'Jak', 'Male', 'jak@gmail.com', '0154789456', 'Bristy', 1500, '2023-07-12', '12:00:00', 1, 1),
(3, 4, 'Misu', 'Islam', 'Male', 'misu@gmail.com', '0154789456', 'Bristy', 1500, '2023-07-25', '12:00:00', 1, 1),
(4, 5, 'Mr', 'Gorib', 'Male', 'gorib@fokir.com', '12345679', 'Miraj', 1500, '2023-07-19', '12:00:00', 1, 0),
(4, 6, 'Mr', 'Gorib', 'Male', 'gorib@fokir.com', '12345679', 'Jahid', 1000, '2023-07-18', '10:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Miraj', 'miraj111', 'miraj@gmail.com', 'Pediatrician', 1500),
('Rakib Ahsan', 'rakib111', 'rakib@gmail.com', 'General', 2000),
('Bristy', 'bristy111', 'bristy@gmail.com', 'Neurologist', 1500),
('Jahid', 'jahid111', 'jahid@gmail.com', 'Cardiologist', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Mosarrof', 'Hossain', 'Male', 'mosarrof@gmail.com', '0154789456', 'mosarrof111', 'mosarrof111'),
(2, 'Mr', 'Jak', 'Male', 'jak@gmail.com', '0154789456', 'jak111', 'jak111'),
(3, 'Misu', 'Islam', 'Male', 'misu@gmail.com', '0154789456', 'misu', 'misu'),
(4, 'Mr', 'Gorib', 'Male', 'gorib@fokir.com', '12345679', '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Miraj', 1, 1, 'Mosarrof', 'Hossain', '2023-07-12', '10:00:00', 'Allergy', '', 'Take Medicine'),
('Miraj', 1, 1, 'Mosarrof', 'Hossain', '2023-07-12', '10:00:00', 'hjghjg', '', 'gjnfghjghjkmgh'),
('', 1, 1, 'Mosarrof', 'Hossain', '2023-07-12', '10:00:00', 'hjghjg', '', 'gjnfghjghjkmgh'),
('', 1, 1, 'Mosarrof', 'Hossain', '2023-07-12', '10:00:00', 'hjghjg', '', 'gjnfghjghjkmgh'),
('', 1, 1, 'Mosarrof', 'Hossain', '2023-07-12', '10:00:00', 'hjghjg', '', 'gjnfghjghjkmgh'),
('Jahid', 4, 6, 'Mr', 'Gorib', '2023-07-18', '10:00:00', 'hhfjhh', '', 'fnhfghfhfh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
