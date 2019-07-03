-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 06:13 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colleges`
--

-- --------------------------------------------------------

--
-- Table structure for table `notics`
--

CREATE TABLE `notics` (
  `id` int(11) NOT NULL,
  `nfaculty` varchar(50) NOT NULL,
  `nbatch` int(11) NOT NULL,
  `nsemester` varchar(50) NOT NULL,
  `nnotice` varchar(1000) NOT NULL,
  `uploaded_at` date NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `display` date NOT NULL,
  `ntitle` varchar(50) NOT NULL,
  `ntype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notics`
--

INSERT INTO `notics` (`id`, `nfaculty`, `nbatch`, `nsemester`, `nnotice`, `uploaded_at`, `uploaded_by`, `display`, `ntitle`, `ntype`) VALUES
(1, 'BSCSCIT', 2068, 'First', 'iohsde', '2019-06-27', 1, '2019-06-27', 'Notice', 'Others'),
(2, 'BSCCSIT', 2068, 'Third', 'holiday', '2019-06-27', 1, '2019-06-27', 'Notice', 'Others'),
(3, 'BSCCSIT', 2068, 'First', 'There will be no classes tomorrow  because of educational strike', '2019-06-27', 1, '2019-06-29', 'Educational Strike', 'Holiday'),
(4, 'BSCCSIT', 2068, 'First', 'Today meeting at 2PM', '2019-06-27', 1, '2019-06-30', 'Meeting', 'Meeting'),
(5, 'BSCCSIT', 2068, 'First', 'Intrested student can apply for Everest Hackathon .\r\n5 days left!', '2019-06-27', 1, '2019-07-02', 'Everest Hackathon', 'Events'),
(6, 'BSCCSIT', 2068, 'First', 'kijew', '2019-06-27', 1, '2019-06-28', 'akj', 'Holiday'),
(7, 'BBS', 2069, 'First', 'klwejor', '2019-06-28', 1, '2019-06-29', 'Holiday', 'Holiday'),
(8, 'BBS', 2068, 'First', 'jhweiuh', '2019-06-28', 1, '2019-06-30', 'Event1', 'Events');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notics`
--
ALTER TABLE `notics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notics`
--
ALTER TABLE `notics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
