-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2019 at 05:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `atid` int(11) NOT NULL,
  `afname` varchar(50) NOT NULL,
  `asbatch` int(11) NOT NULL,
  `aname` varchar(40) NOT NULL,
  `asubject` varchar(50) NOT NULL,
  `adeadline` date NOT NULL,
  `document` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `atid`, `afname`, `asbatch`, `aname`, `asubject`, `adeadline`, `document`) VALUES
(10, 2, 'BSCSIT', 2072, 'assign 3', 'ADBMS', '2019-06-19', 'network.pdf'),
(11, 1, 'BSCCSIT', 2072, 'assign 4', 'CprogrM', '2019-06-28', '4.5-software-reengineering.pdf'),
(12, 1, 'BSCCSIT', 2072, 'assign 5', 'ADBMS', '2019-06-27', '38955112_2261644994111298_5935071893089419264_n.jpg'),
(13, 2, 'BSCSIT', 2072, 'assign 6', 'aeur', '2019-06-25', '04-1-Electronic-Payment-Systems.docx'),
(16, 1, 'BSCCSIT', 2068, 'First Assignment', 'CProgramm', '2019-06-29', '2068.pdf'),
(17, 1, 'BSCCSIT', 2068, 'asgn', 'CProgram', '2019-06-21', 'ai_solution.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submit`
--

CREATE TABLE `assignment_submit` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `asid` int(11) NOT NULL,
  `asname` varchar(50) NOT NULL,
  `asubject` varchar(50) NOT NULL,
  `astatus` int(11) NOT NULL,
  `adate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_submit`
--

INSERT INTO `assignment_submit` (`id`, `aid`, `asid`, `asname`, `asubject`, `astatus`, `adate`) VALUES
(1, 1, 1, 'AASHISH MALLA', 'ADBMS', 2, NULL),
(2, 1, 2, 'ADARSHA SUBEDI', 'ADBMS', 2, NULL),
(3, 1, 3, 'ANIL POUDEL', 'ADBMS', 4, NULL),
(4, 1, 4, 'ANISH GHIMIRE', 'ADBMS', 3, NULL),
(5, 1, 5, 'ASHISH MAHARJAN', 'ADBMS', 2, NULL),
(6, 1, 6, 'AVINAYA  ACHARYA', 'ADBMS', 3, NULL),
(7, 1, 7, 'BINA MAHARJAN', 'ADBMS', 4, NULL),
(8, 1, 8, 'BINISH MANANDHAR', 'ADBMS', 3, NULL),
(9, 1, 9, 'BINOD SUBEDI', 'ADBMS', 3, NULL),
(10, 1, 10, 'BINU GHIMIRE', 'ADBMS', 2, NULL),
(11, 1, 11, 'BISHOW SHRESTHA', 'ADBMS', 3, NULL),
(12, 1, 12, 'HARI PRASAD CHAUDHARY', 'ADBMS', 3, NULL),
(13, 1, 13, 'ISHWOR UPRETI', 'ADBMS', 2, NULL),
(14, 1, 14, 'KIRAN KUMAR THARU', 'ADBMS', 1, NULL),
(15, 1, 15, 'LALIT  UPADHAYAY', 'ADBMS', 3, NULL),
(16, 1, 16, 'MANOJ SARU', 'ADBMS', 3, NULL),
(17, 1, 17, 'NABIN KUMAR TIMALSINA', 'ADBMS', 2, NULL),
(18, 1, 18, 'NIBA TANDUKAR', 'ADBMS', 2, NULL),
(19, 1, 19, 'NIMA K.C', 'ADBMS', 3, NULL),
(20, 1, 20, 'NOOTAN BHATTARAI', 'ADBMS', 4, NULL),
(21, 1, 21, 'PRABHAKAR THAPA', 'ADBMS', 3, NULL),
(22, 1, 22, 'PRABIN  CHAUDHARY', 'ADBMS', 2, NULL),
(23, 1, 23, 'PRAGATI KANDEL', 'ADBMS', 2, NULL),
(24, 1, 24, 'PRAJW0L MAN SHAKYA', 'ADBMS', 2, NULL),
(25, 1, 25, 'PRIYANKA SHRESTHA', 'ADBMS', 1, NULL),
(26, 1, 26, 'PUSHPA KARKI', 'ADBMS', 1, NULL),
(27, 1, 27, 'RABIN MAHARJAN', 'ADBMS', 4, NULL),
(28, 1, 28, 'RAJESH  BHATTARAI', 'ADBMS', 2, NULL),
(29, 1, 29, 'RAJIB DANGOL', 'ADBMS', 3, NULL),
(30, 1, 30, 'RANJIT SHRESTHA', 'ADBMS', 3, NULL),
(31, 1, 31, 'ROJAN SEDHAI', 'ADBMS', 2, NULL),
(32, 1, 32, 'SABIN MAHAT', 'ADBMS', 2, NULL),
(33, 1, 33, 'SACHIN  SHRESTHA', 'ADBMS', 2, NULL),
(34, 1, 34, 'SAGAR SHRESTHA', 'ADBMS', 3, NULL),
(35, 1, 35, 'SAMVRANT SINGH THAPA', 'ADBMS', 4, NULL),
(36, 1, 36, 'SHIRISHA MAHARJAN', 'ADBMS', 3, NULL),
(37, 1, 37, 'SHRISTI SHRESTHA', 'ADBMS', 3, NULL),
(38, 1, 38, 'SOMIT NAKARMI', 'ADBMS', 3, NULL),
(39, 1, 39, 'SUBASH  NAGARKOTI', 'ADBMS', 4, NULL),
(40, 1, 40, 'SUBHA LAXMI MAHARJAN', 'ADBMS', 4, NULL),
(41, 1, 41, 'SUMIT BASNET', 'ADBMS', 3, NULL),
(42, 1, 42, 'UTPREKSHYA GAUTAM', 'ADBMS', 3, NULL),
(43, 1, 43, 'VINOD DANGI', 'ADBMS', 4, NULL),
(44, 1, 44, 'YOGENDRA  BHATTARAI', 'ADBMS', 4, NULL),
(45, 1, 45, 'RAMESH BAYAK', 'ADBMS', 4, NULL),
(46, 11, 1, 'AASHISH MALLA', 'CprogrM', 0, '2019-05-30'),
(47, 11, 2, 'ADARSHA SUBEDI', 'CprogrM', 0, '2019-05-30'),
(48, 11, 3, 'ANIL POUDEL', 'CprogrM', 0, '2019-05-30'),
(49, 11, 4, 'ANISH GHIMIRE', 'CprogrM', 0, '2019-05-30'),
(50, 11, 5, 'ASHISH MAHARJAN', 'CprogrM', 0, '2019-05-30'),
(51, 11, 6, 'AVINAYA  ACHARYA', 'CprogrM', 0, '2019-05-30'),
(52, 11, 7, 'BINA MAHARJAN', 'CprogrM', 0, '2019-05-30'),
(53, 11, 8, 'BINISH MANANDHAR', 'CprogrM', 0, '2019-05-30'),
(54, 11, 9, 'BINOD SUBEDI', 'CprogrM', 0, '2019-05-30'),
(55, 11, 10, 'BINU GHIMIRE', 'CprogrM', 0, '2019-05-30'),
(56, 11, 11, 'BISHOW SHRESTHA', 'CprogrM', 0, '2019-05-30'),
(57, 11, 12, 'HARI PRASAD CHAUDHARY', 'CprogrM', 0, '2019-05-30'),
(58, 11, 13, 'ISHWOR UPRETI', 'CprogrM', 0, '2019-05-30'),
(59, 11, 14, 'KIRAN KUMAR THARU', 'CprogrM', 0, '2019-05-30'),
(60, 11, 15, 'LALIT  UPADHAYAY', 'CprogrM', 0, '2019-05-30'),
(61, 11, 16, 'MANOJ SARU', 'CprogrM', 0, '2019-05-30'),
(62, 11, 17, 'NABIN KUMAR TIMALSINA', 'CprogrM', 0, '2019-05-30'),
(63, 11, 18, 'NIBA TANDUKAR', 'CprogrM', 0, '2019-05-30'),
(64, 11, 19, 'NIMA K.C', 'CprogrM', 0, '2019-05-30'),
(65, 11, 20, 'NOOTAN BHATTARAI', 'CprogrM', 0, '2019-05-30'),
(66, 11, 21, 'PRABHAKAR THAPA', 'CprogrM', 0, '2019-05-30'),
(67, 11, 22, 'PRABIN  CHAUDHARY', 'CprogrM', 0, '2019-05-30'),
(68, 11, 23, 'PRAGATI KANDEL', 'CprogrM', 0, '2019-05-30'),
(69, 11, 24, 'PRAJW0L MAN SHAKYA', 'CprogrM', 0, '2019-05-30'),
(70, 11, 25, 'PRIYANKA SHRESTHA', 'CprogrM', 0, '2019-05-30'),
(71, 11, 26, 'PUSHPA KARKI', 'CprogrM', 0, '2019-05-30'),
(72, 11, 27, 'RABIN MAHARJAN', 'CprogrM', 0, '2019-05-30'),
(73, 11, 28, 'RAJESH  BHATTARAI', 'CprogrM', 0, '2019-05-30'),
(74, 11, 29, 'RAJIB DANGOL', 'CprogrM', 0, '2019-05-30'),
(75, 11, 30, 'RANJIT SHRESTHA', 'CprogrM', 0, '2019-05-30'),
(76, 11, 31, 'ROJAN SEDHAI', 'CprogrM', 0, '2019-05-30'),
(77, 11, 32, 'SABIN MAHAT', 'CprogrM', 0, '2019-05-30'),
(78, 11, 33, 'SACHIN  SHRESTHA', 'CprogrM', 0, '2019-05-30'),
(79, 11, 34, 'SAGAR SHRESTHA', 'CprogrM', 0, '2019-05-30'),
(80, 11, 35, 'SAMVRANT SINGH THAPA', 'CprogrM', 0, '2019-05-30'),
(81, 11, 36, 'SHIRISHA MAHARJAN', 'CprogrM', 0, '2019-05-30'),
(82, 11, 37, 'SHRISTI SHRESTHA', 'CprogrM', 0, '2019-05-30'),
(83, 11, 38, 'SOMIT NAKARMI', 'CprogrM', 0, '2019-05-30'),
(84, 11, 39, 'SUBASH  NAGARKOTI', 'CprogrM', 0, '2019-05-30'),
(85, 11, 40, 'SUBHA LAXMI MAHARJAN', 'CprogrM', 0, '2019-05-30'),
(86, 11, 41, 'SUMIT BASNET', 'CprogrM', 0, '2019-05-30'),
(87, 11, 42, 'UTPREKSHYA GAUTAM', 'CprogrM', 0, '2019-05-30'),
(88, 11, 43, 'VINOD DANGI', 'CprogrM', 0, '2019-05-30'),
(89, 11, 44, 'YOGENDRA  BHATTARAI', 'CprogrM', 0, '2019-05-30'),
(90, 11, 45, 'RAMESH BAYAK', 'CprogrM', 0, '2019-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_daily`
--

CREATE TABLE `attendance_daily` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `attendance` tinyint(1) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_daily`
--

INSERT INTO `attendance_daily` (`id`, `std_id`, `std_name`, `date`, `attendance`, `faculty`, `batch`) VALUES
(1, 1, 'AASHISH MALLA', '2019-06-05', 0, 'csit faculty', 2072),
(2, 2, 'ADARSHA SUBEDI', '2019-06-05', 1, 'csit faculty', 2072),
(3, 3, 'ANIL POUDEL', '2019-06-05', 1, 'csit faculty', 2072),
(4, 4, 'ANISH GHIMIRE', '2019-06-05', 1, 'csit faculty', 2072),
(5, 5, 'ASHISH MAHARJAN', '2019-06-05', 1, 'csit faculty', 2072),
(6, 6, 'AVINAYA ACHARYA', '2019-06-05', 1, 'csit faculty', 2072),
(7, 7, 'BINA MAHARJAN', '2019-06-05', 1, 'csit faculty', 2072),
(8, 8, 'BINISH MANADHAR', '2019-06-05', 1, 'csit faculty', 2072),
(9, 9, 'BINOD SUBEDI', '2019-06-05', 1, 'csit faculty', 2072),
(10, 10, 'BINU GHIMIRE', '2019-06-05', 1, 'csit faculty', 2072),
(11, 11, 'BISHOW SHRESTHA', '2019-06-05', 1, 'csit faculty', 2072),
(12, 12, 'RAMESH BAYAK', '2019-06-05', 1, 'csit faculty', 2072),
(13, 13, 'HARI PRASAD CHAUDHARY', '2019-06-05', 1, 'csit faculty', 2072),
(14, 14, 'ISHWOR UPRETI', '2019-06-05', 1, 'csit faculty', 2072),
(15, 15, 'KIRAN KUMAR THARU', '2019-06-05', 1, 'csit faculty', 2072),
(16, 16, 'LALIT UPADHAYAY', '2019-06-05', 1, 'csit faculty', 2072),
(17, 17, 'MANOJ SARU', '2019-06-05', 1, 'csit faculty', 2072),
(18, 18, 'NABIN KUMAR TIMALSINA', '2019-06-05', 1, 'csit faculty', 2072),
(19, 19, 'NIBA TANDUKAR', '2019-06-05', 1, 'csit faculty', 2072),
(20, 20, 'NIMA K.C', '2019-06-05', 1, 'csit faculty', 2072),
(21, 21, 'NOOTAN BHATTARAI', '2019-06-05', 1, 'csit faculty', 2072),
(22, 22, 'PRABHAKAR THAPA', '2019-06-05', 1, 'csit faculty', 2072),
(23, 23, 'PRABIN CHAUDHARY', '2019-06-05', 1, 'csit faculty', 2072),
(24, 24, 'PRAGATI KANDEL', '2019-06-05', 1, 'csit faculty', 2072),
(25, 25, 'PRAJW0L MAN SHAKYA', '2019-06-05', 1, 'csit faculty', 2072),
(26, 26, 'PRIYANKA SHRESTHA', '2019-06-05', 1, 'csit faculty', 2072),
(27, 27, 'PUSHPA KARKI', '2019-06-05', 1, 'csit faculty', 2072),
(28, 28, 'RABIN MAHARJAN', '2019-06-05', 1, 'csit faculty', 2072),
(29, 29, 'RAJESH BHATTARAI', '2019-06-05', 1, 'csit faculty', 2072),
(30, 30, 'RAJIB DANGOL', '2019-06-05', 1, 'csit faculty', 2072),
(31, 31, 'RANJIT SHRESTHA', '2019-06-05', 1, 'csit faculty', 2072),
(32, 32, 'ROJAN SEDHAI', '2019-06-05', 1, 'csit faculty', 2072),
(33, 33, 'SABIN MAHAT', '2019-06-05', 1, 'csit faculty', 2072),
(34, 34, 'SACHIN SHRESTHA', '2019-06-05', 1, 'csit faculty', 2072),
(35, 35, 'SAGAR SHRESTHA', '2019-06-05', 1, 'csit faculty', 2072),
(36, 36, 'SAMVRANT SINGH THAPA', '2019-06-05', 1, 'csit faculty', 2072),
(37, 37, 'SHIRISHA MAHARJAN', '2019-06-05', 1, 'csit faculty', 2072),
(38, 38, 'SHRISTI SHRESTHA', '2019-06-05', 1, 'csit faculty', 2072),
(39, 39, 'SOMIT NAKARMI', '2019-06-05', 1, 'csit faculty', 2072),
(40, 40, 'SUBASH NAGARKOTI', '2019-06-05', 1, 'csit faculty', 2072),
(41, 41, 'SUBHA LAXMI MAHARJAN', '2019-06-05', 1, 'csit faculty', 2072),
(42, 42, 'SUMIT BASNET', '2019-06-05', 1, 'csit faculty', 2072),
(43, 43, 'UTPREKSHYA GAUTAM', '2019-06-05', 1, 'csit faculty', 2072),
(44, 44, 'VINOD DANGI', '2019-06-05', 1, 'csit faculty', 2072),
(45, 45, 'YOGENDRA BHATTARAI', '2019-06-05', 1, 'csit faculty', 2072),
(46, 1, 'AASHISH MALLA', '2019-06-06', 1, 'csit faculty', 2072),
(47, 2, 'ADARSHA SUBEDI', '2019-06-06', 1, 'csit faculty', 2072),
(48, 3, 'ANIL POUDEL', '2019-06-06', 1, 'csit faculty', 2072),
(49, 4, 'ANISH GHIMIRE', '2019-06-06', 1, 'csit faculty', 2072),
(50, 5, 'ASHISH MAHARJAN', '2019-06-06', 1, 'csit faculty', 2072),
(51, 6, 'AVINAYA  ACHARYA', '2019-06-06', 1, 'csit faculty', 2072),
(52, 7, 'BINA MAHARJAN', '2019-06-06', 1, 'csit faculty', 2072),
(53, 8, 'BINISH MANANDHAR', '2019-06-06', 1, 'csit faculty', 2072),
(54, 9, 'BINOD SUBEDI', '2019-06-06', 1, 'csit faculty', 2072),
(55, 10, 'BINU GHIMIRE', '2019-06-06', 1, 'csit faculty', 2072),
(56, 11, 'BISHOW SHRESTHA', '2019-06-06', 1, 'csit faculty', 2072),
(57, 12, 'HARI PRASAD CHAUDHARY', '2019-06-06', 1, 'csit faculty', 2072),
(58, 13, 'ISHWOR UPRETI', '2019-06-06', 1, 'csit faculty', 2072),
(59, 14, 'KIRAN KUMAR THARU', '2019-06-06', 1, 'csit faculty', 2072),
(60, 15, 'LALIT  UPADHAYAY', '2019-06-06', 1, 'csit faculty', 2072),
(61, 16, 'MANOJ SARU', '2019-06-06', 1, 'csit faculty', 2072),
(62, 17, 'NABIN KUMAR TIMALSINA', '2019-06-06', 1, 'csit faculty', 2072),
(63, 18, 'NIBA TANDUKAR', '2019-06-06', 1, 'csit faculty', 2072),
(64, 19, 'NIMA K.C', '2019-06-06', 1, 'csit faculty', 2072),
(65, 20, 'NOOTAN BHATTARAI', '2019-06-06', 1, 'csit faculty', 2072),
(66, 21, 'PRABHAKAR THAPA', '2019-06-06', 1, 'csit faculty', 2072),
(67, 22, 'PRABIN  CHAUDHARY', '2019-06-06', 1, 'csit faculty', 2072),
(68, 23, 'PRAGATI KANDEL', '2019-06-06', 1, 'csit faculty', 2072),
(69, 24, 'PRAJW0L MAN SHAKYA', '2019-06-06', 1, 'csit faculty', 2072),
(70, 25, 'PRIYANKA SHRESTHA', '2019-06-06', 1, 'csit faculty', 2072),
(71, 26, 'PUSHPA KARKI', '2019-06-06', 1, 'csit faculty', 2072),
(72, 27, 'RABIN MAHARJAN', '2019-06-06', 0, 'csit faculty', 2072),
(73, 28, 'RAJESH  BHATTARAI', '2019-06-06', 0, 'csit faculty', 2072),
(74, 29, 'RAJIB DANGOL', '2019-06-06', 1, 'csit faculty', 2072),
(75, 30, 'RANJIT SHRESTHA', '2019-06-06', 1, 'csit faculty', 2072),
(76, 31, 'ROJAN SEDHAI', '2019-06-06', 1, 'csit faculty', 2072),
(77, 32, 'SABIN MAHAT', '2019-06-06', 1, 'csit faculty', 2072),
(78, 33, 'SACHIN  SHRESTHA', '2019-06-06', 1, 'csit faculty', 2072),
(79, 34, 'SAGAR SHRESTHA', '2019-06-06', 0, 'csit faculty', 2072),
(80, 35, 'SAMVRANT SINGH THAPA', '2019-06-06', 1, 'csit faculty', 2072),
(81, 36, 'SHIRISHA MAHARJAN', '2019-06-06', 1, 'csit faculty', 2072),
(82, 37, 'SHRISTI SHRESTHA', '2019-06-06', 1, 'csit faculty', 2072),
(83, 38, 'SOMIT NAKARMI', '2019-06-06', 1, 'csit faculty', 2072),
(84, 39, 'SUBASH  NAGARKOTI', '2019-06-06', 1, 'csit faculty', 2072),
(85, 40, 'SUBHA LAXMI MAHARJAN', '2019-06-06', 1, 'csit faculty', 2072),
(86, 41, 'SUMIT BASNET', '2019-06-06', 0, 'csit faculty', 2072),
(87, 42, 'UTPREKSHYA GAUTAM', '2019-06-06', 1, 'csit faculty', 2072),
(88, 43, 'VINOD DANGI', '2019-06-06', 0, 'csit faculty', 2072),
(89, 44, 'YOGENDRA  BHATTARAI', '2019-06-06', 1, 'csit faculty', 2072),
(90, 45, 'RAMESH BAYAK', '2019-06-06', 1, 'csit faculty', 2072),
(91, 1, 'AASHISH MALLA', '2019-06-13', 0, 'csit faculty', 2072),
(92, 2, 'ADARSHA SUBEDI', '2019-06-13', 1, 'csit faculty', 2072),
(93, 3, 'ANIL POUDEL', '2019-06-13', 0, 'csit faculty', 2072),
(94, 4, 'ANISH GHIMIRE', '2019-06-13', 1, 'csit faculty', 2072),
(95, 5, 'ASHISH MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(96, 6, 'AVINAYA  ACHARYA', '2019-06-13', 1, 'csit faculty', 2072),
(97, 7, 'BINA MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(98, 8, 'BINISH MANANDHAR', '2019-06-13', 1, 'csit faculty', 2072),
(99, 9, 'BINOD SUBEDI', '2019-06-13', 1, 'csit faculty', 2072),
(100, 10, 'BINU GHIMIRE', '2019-06-13', 1, 'csit faculty', 2072),
(101, 11, 'BISHOW SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(102, 12, 'HARI PRASAD CHAUDHARY', '2019-06-13', 1, 'csit faculty', 2072),
(103, 13, 'ISHWOR UPRETI', '2019-06-13', 1, 'csit faculty', 2072),
(104, 14, 'KIRAN KUMAR THARU', '2019-06-13', 1, 'csit faculty', 2072),
(105, 15, 'LALIT  UPADHAYAY', '2019-06-13', 1, 'csit faculty', 2072),
(106, 16, 'MANOJ SARU', '2019-06-13', 1, 'csit faculty', 2072),
(107, 17, 'NABIN KUMAR TIMALSINA', '2019-06-13', 1, 'csit faculty', 2072),
(108, 18, 'NIBA TANDUKAR', '2019-06-13', 1, 'csit faculty', 2072),
(109, 19, 'NIMA K.C', '2019-06-13', 1, 'csit faculty', 2072),
(110, 20, 'NOOTAN BHATTARAI', '2019-06-13', 1, 'csit faculty', 2072),
(111, 21, 'PRABHAKAR THAPA', '2019-06-13', 1, 'csit faculty', 2072),
(112, 22, 'PRABIN  CHAUDHARY', '2019-06-13', 1, 'csit faculty', 2072),
(113, 23, 'PRAGATI KANDEL', '2019-06-13', 1, 'csit faculty', 2072),
(114, 24, 'PRAJW0L MAN SHAKYA', '2019-06-13', 1, 'csit faculty', 2072),
(115, 25, 'PRIYANKA SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(116, 26, 'PUSHPA KARKI', '2019-06-13', 1, 'csit faculty', 2072),
(117, 27, 'RABIN MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(118, 28, 'RAJESH  BHATTARAI', '2019-06-13', 1, 'csit faculty', 2072),
(119, 29, 'RAJIB DANGOL', '2019-06-13', 1, 'csit faculty', 2072),
(120, 30, 'RANJIT SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(121, 31, 'ROJAN SEDHAI', '2019-06-13', 1, 'csit faculty', 2072),
(122, 32, 'SABIN MAHAT', '2019-06-13', 1, 'csit faculty', 2072),
(123, 33, 'SACHIN  SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(124, 34, 'SAGAR SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(125, 35, 'SAMVRANT SINGH THAPA', '2019-06-13', 1, 'csit faculty', 2072),
(126, 36, 'SHIRISHA MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(127, 37, 'SHRISTI SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(128, 38, 'SOMIT NAKARMI', '2019-06-13', 1, 'csit faculty', 2072),
(129, 39, 'SUBASH  NAGARKOTI', '2019-06-13', 0, 'csit faculty', 2072),
(130, 40, 'SUBHA LAXMI MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(131, 41, 'SUMIT BASNET', '2019-06-13', 1, 'csit faculty', 2072),
(132, 42, 'UTPREKSHYA GAUTAM', '2019-06-13', 1, 'csit faculty', 2072),
(133, 43, 'VINOD DANGI', '2019-06-13', 1, 'csit faculty', 2072),
(134, 44, 'YOGENDRA  BHATTARAI', '2019-06-13', 1, 'csit faculty', 2072),
(135, 45, 'RAMESH BAYAK', '2019-06-13', 1, 'csit faculty', 2072),
(136, 1, 'AASHISH MALLA', '2019-06-13', 0, 'csit faculty', 2072),
(137, 2, 'ADARSHA SUBEDI', '2019-06-13', 1, 'csit faculty', 2072),
(138, 3, 'ANIL POUDEL', '2019-06-13', 1, 'csit faculty', 2072),
(139, 4, 'ANISH GHIMIRE', '2019-06-13', 0, 'csit faculty', 2072),
(140, 5, 'ASHISH MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(141, 6, 'AVINAYA  ACHARYA', '2019-06-13', 1, 'csit faculty', 2072),
(142, 7, 'BINA MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(143, 8, 'BINISH MANANDHAR', '2019-06-13', 1, 'csit faculty', 2072),
(144, 9, 'BINOD SUBEDI', '2019-06-13', 1, 'csit faculty', 2072),
(145, 10, 'BINU GHIMIRE', '2019-06-13', 1, 'csit faculty', 2072),
(146, 11, 'BISHOW SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(147, 12, 'HARI PRASAD CHAUDHARY', '2019-06-13', 1, 'csit faculty', 2072),
(148, 13, 'ISHWOR UPRETI', '2019-06-13', 1, 'csit faculty', 2072),
(149, 14, 'KIRAN KUMAR THARU', '2019-06-13', 1, 'csit faculty', 2072),
(150, 15, 'LALIT  UPADHAYAY', '2019-06-13', 1, 'csit faculty', 2072),
(151, 16, 'MANOJ SARU', '2019-06-13', 1, 'csit faculty', 2072),
(152, 17, 'NABIN KUMAR TIMALSINA', '2019-06-13', 1, 'csit faculty', 2072),
(153, 18, 'NIBA TANDUKAR', '2019-06-13', 1, 'csit faculty', 2072),
(154, 19, 'NIMA K.C', '2019-06-13', 0, 'csit faculty', 2072),
(155, 20, 'NOOTAN BHATTARAI', '2019-06-13', 1, 'csit faculty', 2072),
(156, 21, 'PRABHAKAR THAPA', '2019-06-13', 1, 'csit faculty', 2072),
(157, 22, 'PRABIN  CHAUDHARY', '2019-06-13', 1, 'csit faculty', 2072),
(158, 23, 'PRAGATI KANDEL', '2019-06-13', 1, 'csit faculty', 2072),
(159, 24, 'PRAJW0L MAN SHAKYA', '2019-06-13', 1, 'csit faculty', 2072),
(160, 25, 'PRIYANKA SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(161, 26, 'PUSHPA KARKI', '2019-06-13', 1, 'csit faculty', 2072),
(162, 27, 'RABIN MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(163, 28, 'RAJESH  BHATTARAI', '2019-06-13', 1, 'csit faculty', 2072),
(164, 29, 'RAJIB DANGOL', '2019-06-13', 1, 'csit faculty', 2072),
(165, 30, 'RANJIT SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(166, 31, 'ROJAN SEDHAI', '2019-06-13', 1, 'csit faculty', 2072),
(167, 32, 'SABIN MAHAT', '2019-06-13', 1, 'csit faculty', 2072),
(168, 33, 'SACHIN  SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(169, 34, 'SAGAR SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(170, 35, 'SAMVRANT SINGH THAPA', '2019-06-13', 1, 'csit faculty', 2072),
(171, 36, 'SHIRISHA MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(172, 37, 'SHRISTI SHRESTHA', '2019-06-13', 1, 'csit faculty', 2072),
(173, 38, 'SOMIT NAKARMI', '2019-06-13', 1, 'csit faculty', 2072),
(174, 39, 'SUBASH  NAGARKOTI', '2019-06-13', 1, 'csit faculty', 2072),
(175, 40, 'SUBHA LAXMI MAHARJAN', '2019-06-13', 1, 'csit faculty', 2072),
(176, 41, 'SUMIT BASNET', '2019-06-13', 1, 'csit faculty', 2072),
(177, 42, 'UTPREKSHYA GAUTAM', '2019-06-13', 1, 'csit faculty', 2072),
(178, 43, 'VINOD DANGI', '2019-06-13', 1, 'csit faculty', 2072),
(179, 44, 'YOGENDRA  BHATTARAI', '2019-06-13', 1, 'csit faculty', 2072),
(180, 45, 'RAMESH BAYAK', '2019-06-13', 1, 'csit faculty', 2072),
(181, 1, 'AASHISH MALLA', '2019-06-30', 1, 'BSCCSIT', 2072),
(182, 2, 'ADARSHA SUBEDI', '2019-06-30', 1, 'BSCCSIT', 2072),
(183, 3, 'ANIL POUDEL', '2019-06-30', 1, 'BSCCSIT', 2072),
(184, 4, 'ANISH GHIMIRE', '2019-06-30', 1, 'BSCCSIT', 2072),
(185, 5, 'ASHISH MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(186, 6, 'AVINAYA  ACHARYA', '2019-06-30', 1, 'BSCCSIT', 2072),
(187, 7, 'BINA MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(188, 8, 'BINISH MANANDHAR', '2019-06-30', 1, 'BSCCSIT', 2072),
(189, 9, 'BINOD SUBEDI', '2019-06-30', 1, 'BSCCSIT', 2072),
(190, 10, 'BINU GHIMIRE', '2019-06-30', 1, 'BSCCSIT', 2072),
(191, 11, 'BISHOW SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(192, 12, 'HARI PRASAD CHAUDHARY', '2019-06-30', 1, 'BSCCSIT', 2072),
(193, 13, 'ISHWOR UPRETI', '2019-06-30', 1, 'BSCCSIT', 2072),
(194, 14, 'KIRAN KUMAR THARU', '2019-06-30', 1, 'BSCCSIT', 2072),
(195, 15, 'LALIT  UPADHAYAY', '2019-06-30', 1, 'BSCCSIT', 2072),
(196, 16, 'MANOJ SARU', '2019-06-30', 1, 'BSCCSIT', 2072),
(197, 17, 'NABIN KUMAR TIMALSINA', '2019-06-30', 1, 'BSCCSIT', 2072),
(198, 18, 'NIBA TANDUKAR', '2019-06-30', 1, 'BSCCSIT', 2072),
(199, 19, 'NIMA K.C', '2019-06-30', 1, 'BSCCSIT', 2072),
(200, 20, 'NOOTAN BHATTARAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(201, 21, 'PRABHAKAR THAPA', '2019-06-30', 1, 'BSCCSIT', 2072),
(202, 22, 'PRABIN  CHAUDHARY', '2019-06-30', 1, 'BSCCSIT', 2072),
(203, 23, 'PRAGATI KANDEL', '2019-06-30', 1, 'BSCCSIT', 2072),
(204, 24, 'PRAJW0L MAN SHAKYA', '2019-06-30', 1, 'BSCCSIT', 2072),
(205, 25, 'PRIYANKA SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(206, 26, 'PUSHPA KARKI', '2019-06-30', 1, 'BSCCSIT', 2072),
(207, 27, 'RABIN MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(208, 28, 'RAJESH  BHATTARAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(209, 29, 'RAJIB DANGOL', '2019-06-30', 1, 'BSCCSIT', 2072),
(210, 30, 'RANJIT SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(211, 31, 'ROJAN SEDHAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(212, 32, 'SABIN MAHAT', '2019-06-30', 1, 'BSCCSIT', 2072),
(213, 33, 'SACHIN  SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(214, 34, 'SAGAR SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(215, 35, 'SAMVRANT SINGH THAPA', '2019-06-30', 0, 'BSCCSIT', 2072),
(216, 36, 'SHIRISHA MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(217, 37, 'SHRISTI SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(218, 38, 'SOMIT NAKARMI', '2019-06-30', 1, 'BSCCSIT', 2072),
(219, 39, 'SUBASH  NAGARKOTI', '2019-06-30', 1, 'BSCCSIT', 2072),
(220, 40, 'SUBHA LAXMI MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(221, 41, 'SUMIT BASNET', '2019-06-30', 1, 'BSCCSIT', 2072),
(222, 42, 'UTPREKSHYA GAUTAM', '2019-06-30', 1, 'BSCCSIT', 2072),
(223, 43, 'VINOD DANGI', '2019-06-30', 1, 'BSCCSIT', 2072),
(224, 44, 'YOGENDRA  BHATTARAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(225, 45, 'RAMESH BAYAK', '2019-06-30', 1, 'BSCCSIT', 2072),
(226, 1, 'AASHISH MALLA', '2019-06-30', 0, 'BSCCSIT', 2072),
(227, 2, 'ADARSHA SUBEDI', '2019-06-30', 1, 'BSCCSIT', 2072),
(228, 3, 'ANIL POUDEL', '2019-06-30', 0, 'BSCCSIT', 2072),
(229, 4, 'ANISH GHIMIRE', '2019-06-30', 1, 'BSCCSIT', 2072),
(230, 5, 'ASHISH MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(231, 6, 'AVINAYA  ACHARYA', '2019-06-30', 1, 'BSCCSIT', 2072),
(232, 7, 'BINA MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(233, 8, 'BINISH MANANDHAR', '2019-06-30', 1, 'BSCCSIT', 2072),
(234, 9, 'BINOD SUBEDI', '2019-06-30', 1, 'BSCCSIT', 2072),
(235, 10, 'BINU GHIMIRE', '2019-06-30', 1, 'BSCCSIT', 2072),
(236, 11, 'BISHOW SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(237, 12, 'HARI PRASAD CHAUDHARY', '2019-06-30', 1, 'BSCCSIT', 2072),
(238, 13, 'ISHWOR UPRETI', '2019-06-30', 1, 'BSCCSIT', 2072),
(239, 14, 'KIRAN KUMAR THARU', '2019-06-30', 1, 'BSCCSIT', 2072),
(240, 15, 'LALIT  UPADHAYAY', '2019-06-30', 1, 'BSCCSIT', 2072),
(241, 16, 'MANOJ SARU', '2019-06-30', 1, 'BSCCSIT', 2072),
(242, 17, 'NABIN KUMAR TIMALSINA', '2019-06-30', 1, 'BSCCSIT', 2072),
(243, 18, 'NIBA TANDUKAR', '2019-06-30', 1, 'BSCCSIT', 2072),
(244, 19, 'NIMA K.C', '2019-06-30', 1, 'BSCCSIT', 2072),
(245, 20, 'NOOTAN BHATTARAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(246, 21, 'PRABHAKAR THAPA', '2019-06-30', 1, 'BSCCSIT', 2072),
(247, 22, 'PRABIN  CHAUDHARY', '2019-06-30', 1, 'BSCCSIT', 2072),
(248, 23, 'PRAGATI KANDEL', '2019-06-30', 1, 'BSCCSIT', 2072),
(249, 24, 'PRAJW0L MAN SHAKYA', '2019-06-30', 1, 'BSCCSIT', 2072),
(250, 25, 'PRIYANKA SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(251, 26, 'PUSHPA KARKI', '2019-06-30', 1, 'BSCCSIT', 2072),
(252, 27, 'RABIN MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(253, 28, 'RAJESH  BHATTARAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(254, 29, 'RAJIB DANGOL', '2019-06-30', 1, 'BSCCSIT', 2072),
(255, 30, 'RANJIT SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(256, 31, 'ROJAN SEDHAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(257, 32, 'SABIN MAHAT', '2019-06-30', 1, 'BSCCSIT', 2072),
(258, 33, 'SACHIN  SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(259, 34, 'SAGAR SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(260, 35, 'SAMVRANT SINGH THAPA', '2019-06-30', 1, 'BSCCSIT', 2072),
(261, 36, 'SHIRISHA MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(262, 37, 'SHRISTI SHRESTHA', '2019-06-30', 1, 'BSCCSIT', 2072),
(263, 38, 'SOMIT NAKARMI', '2019-06-30', 1, 'BSCCSIT', 2072),
(264, 39, 'SUBASH  NAGARKOTI', '2019-06-30', 1, 'BSCCSIT', 2072),
(265, 40, 'SUBHA LAXMI MAHARJAN', '2019-06-30', 1, 'BSCCSIT', 2072),
(266, 41, 'SUMIT BASNET', '2019-06-30', 1, 'BSCCSIT', 2072),
(267, 42, 'UTPREKSHYA GAUTAM', '2019-06-30', 1, 'BSCCSIT', 2072),
(268, 43, 'VINOD DANGI', '2019-06-30', 1, 'BSCCSIT', 2072),
(269, 44, 'YOGENDRA  BHATTARAI', '2019-06-30', 1, 'BSCCSIT', 2072),
(270, 45, 'RAMESH BAYAK', '2019-06-30', 1, 'BSCCSIT', 2072);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_monthly`
--

CREATE TABLE `attendance_monthly` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` varchar(8) NOT NULL,
  `present_days` int(11) NOT NULL,
  `absent_days` int(11) NOT NULL,
  `working_days` int(11) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_semester`
--

CREATE TABLE `attendance_semester` (
  `id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `present_days` int(11) NOT NULL,
  `absent_days` int(11) NOT NULL,
  `working_days` int(11) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_semester`
--

INSERT INTO `attendance_semester` (`id`, `std_id`, `std_name`, `semester`, `present_days`, `absent_days`, `working_days`, `faculty`, `batch`) VALUES
(1, 1, 'AASHISH MALLA', 'First', 45, 30, 75, 'IT', 2072),
(2, 2, 'ADARSHA SUBEDI', 'First', 65, 10, 75, 'IT', 2072),
(3, 3, 'ANIL POUDEL', 'First', 70, 5, 75, 'IT', 2072),
(4, 4, 'ANISH GHIMIRE', 'First', 56, 19, 75, 'IT', 2072),
(5, 5, 'ASHISH MAHARJAN', 'First', 54, 21, 75, 'IT', 2072),
(6, 6, 'AVINAYA  ACHARYA', 'First', 65, 10, 75, 'IT', 2072),
(7, 7, 'BINA MAHARJAN', 'First', 45, 30, 75, 'IT', 2072),
(8, 8, 'BINISH MANANDHAR', 'First', 54, 21, 75, 'IT', 2072),
(9, 9, 'BINOD SUBEDI', 'First', 65, 10, 75, 'IT', 2072),
(10, 10, 'BINU GHIMIRE', 'First', 65, 10, 75, 'IT', 2072),
(11, 11, 'BISHOW SHRESTHA', 'First', 56, 19, 75, 'IT', 2072),
(12, 12, 'HARI PRASAD CHAUDHARY', 'First', 60, 15, 75, 'IT', 2072),
(13, 13, 'ISHWOR UPRETI', 'First', 45, 30, 75, 'IT', 2072),
(14, 14, 'KIRAN KUMAR THARU', 'First', 65, 10, 75, 'IT', 2072),
(15, 15, 'LALIT  UPADHAYAY', 'First', 23, 52, 75, 'IT', 2072),
(16, 16, 'MANOJ SARU', 'First', 45, 30, 75, 'IT', 2072),
(17, 17, 'NABIN KUMAR TIMALSINA', 'First', 56, 19, 75, 'IT', 2072),
(18, 18, 'NIBA TANDUKAR', 'First', 45, 30, 75, 'IT', 2072),
(19, 19, 'NIMA K.C', 'First', 45, 30, 75, 'IT', 2072),
(20, 20, 'NOOTAN BHATTARAI', 'First', 70, 5, 75, 'IT', 2072),
(21, 21, 'PRABHAKAR THAPA', 'First', 65, 10, 75, 'IT', 2072),
(22, 22, 'PRABIN  CHAUDHARY', 'First', 67, 8, 75, 'IT', 2072),
(23, 23, 'PRAGATI KANDEL', 'First', 65, 10, 75, 'IT', 2072),
(24, 24, 'PRAJW0L MAN SHAKYA', 'First', 67, 8, 75, 'IT', 2072),
(25, 25, 'PRIYANKA SHRESTHA', 'First', 70, 5, 75, 'IT', 2072),
(26, 26, 'PUSHPA KARKI', 'First', 70, 5, 75, 'IT', 2072),
(27, 27, 'RABIN MAHARJAN', 'First', 70, 5, 75, 'IT', 2072),
(28, 28, 'RAJESH  BHATTARAI', 'First', 50, 25, 75, 'IT', 2072),
(29, 29, 'RAJIB DANGOL', 'First', 60, 15, 75, 'IT', 2072),
(30, 30, 'RANJIT SHRESTHA', 'First', 56, 19, 75, 'IT', 2072),
(31, 31, 'ROJAN SEDHAI', 'First', 68, 7, 75, 'IT', 2072),
(32, 32, 'SABIN MAHAT', 'First', 67, 8, 75, 'IT', 2072),
(33, 33, 'SACHIN  SHRESTHA', 'First', 34, 41, 75, 'IT', 2072),
(34, 34, 'SAGAR SHRESTHA', 'First', 50, 25, 75, 'IT', 2072),
(35, 35, 'SAMVRANT SINGH THAPA', 'First', 45, 30, 75, 'IT', 2072),
(36, 36, 'SHIRISHA MAHARJAN', 'First', 30, 45, 75, 'IT', 2072),
(37, 37, 'SHRISTI SHRESTHA', 'First', 70, 5, 75, 'IT', 2072),
(38, 38, 'SOMIT NAKARMI', 'First', 50, 25, 75, 'IT', 2072),
(39, 39, 'SUBASH  NAGARKOTI', 'First', 56, 19, 75, 'IT', 2072),
(40, 40, 'SUBHA LAXMI MAHARJAN', 'First', 50, 25, 75, 'IT', 2072),
(41, 41, 'SUMIT BASNET', 'First', 65, 10, 75, 'IT', 2072),
(42, 42, 'UTPREKSHYA GAUTAM', 'First', 70, 5, 75, 'IT', 2072),
(43, 43, 'VINOD DANGI', 'First', 70, 5, 75, 'IT', 2072),
(44, 44, 'YOGENDRA  BHATTARAI', 'First', 60, 15, 75, 'IT', 2072),
(45, 45, 'RAMESH BAYAK', 'First', 65, 10, 75, 'IT', 2072);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add faculty', 7, 'add_faculty'),
(26, 'Can change faculty', 7, 'change_faculty'),
(27, 'Can delete faculty', 7, 'delete_faculty'),
(28, 'Can view faculty', 7, 'view_faculty'),
(29, 'Can add parent', 8, 'add_parent'),
(30, 'Can change parent', 8, 'change_parent'),
(31, 'Can delete parent', 8, 'delete_parent'),
(32, 'Can view parent', 8, 'view_parent'),
(33, 'Can add student', 9, 'add_student'),
(34, 'Can change student', 9, 'change_student'),
(35, 'Can delete student', 9, 'delete_student'),
(36, 'Can view student', 9, 'view_student'),
(37, 'Can add teacher', 10, 'add_teacher'),
(38, 'Can change teacher', 10, 'change_teacher'),
(39, 'Can delete teacher', 10, 'delete_teacher'),
(40, 'Can view teacher', 10, 'view_teacher'),
(41, 'Can add daily', 11, 'add_daily'),
(42, 'Can change daily', 11, 'change_daily'),
(43, 'Can delete daily', 11, 'delete_daily'),
(44, 'Can view daily', 11, 'view_daily'),
(45, 'Can add monthly', 12, 'add_monthly'),
(46, 'Can change monthly', 12, 'change_monthly'),
(47, 'Can delete monthly', 12, 'delete_monthly'),
(48, 'Can view monthly', 12, 'view_monthly'),
(49, 'Can add assignment', 13, 'add_assignment'),
(50, 'Can change assignment', 13, 'change_assignment'),
(51, 'Can delete assignment', 13, 'delete_assignment'),
(52, 'Can view assignment', 13, 'view_assignment'),
(53, 'Can add marks', 14, 'add_marks'),
(54, 'Can change marks', 14, 'change_marks'),
(55, 'Can delete marks', 14, 'delete_marks'),
(56, 'Can view marks', 14, 'view_marks'),
(57, 'Can add assignment_submit', 15, 'add_assignment_submit'),
(58, 'Can change assignment_submit', 15, 'change_assignment_submit'),
(59, 'Can delete assignment_submit', 15, 'delete_assignment_submit'),
(60, 'Can view assignment_submit', 15, 'view_assignment_submit'),
(61, 'Can add semester', 16, 'add_semester'),
(62, 'Can change semester', 16, 'change_semester'),
(63, 'Can delete semester', 16, 'delete_semester'),
(64, 'Can view semester', 16, 'view_semester'),
(65, 'Can add notes', 17, 'add_notes'),
(66, 'Can change notes', 17, 'change_notes'),
(67, 'Can delete notes', 17, 'delete_notes'),
(68, 'Can view notes', 17, 'view_notes'),
(69, 'Can add notics', 18, 'add_notics'),
(70, 'Can change notics', 18, 'change_notics'),
(71, 'Can delete notics', 18, 'delete_notics'),
(72, 'Can view notics', 18, 'view_notics');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(13, 'assignment', 'assignment'),
(15, 'assignment_submit', 'assignment_submit'),
(11, 'attendance', 'daily'),
(12, 'attendance', 'monthly'),
(16, 'attendance', 'semester'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'faculty', 'faculty'),
(14, 'marks', 'marks'),
(17, 'notes', 'notes'),
(18, 'notics', 'notics'),
(8, 'parent', 'parent'),
(6, 'sessions', 'session'),
(9, 'student', 'student'),
(10, 'teacher', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'faculty', '0001_initial', '2019-05-31 15:44:55.909456'),
(2, 'student', '0001_initial', '2019-05-31 15:44:56.429277'),
(3, 'contenttypes', '0001_initial', '2019-05-31 15:45:23.266892'),
(4, 'auth', '0001_initial', '2019-05-31 15:45:25.744227'),
(5, 'admin', '0001_initial', '2019-05-31 15:45:34.048046'),
(6, 'admin', '0002_logentry_remove_auto_add', '2019-05-31 15:45:36.777223'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2019-05-31 15:45:36.856150'),
(8, 'assignment', '0001_initial', '2019-05-31 15:45:37.213973'),
(9, 'attendance', '0001_initial', '2019-05-31 15:45:38.055907'),
(10, 'contenttypes', '0002_remove_content_type_name', '2019-05-31 15:45:39.395594'),
(11, 'auth', '0002_alter_permission_name_max_length', '2019-05-31 15:45:40.402488'),
(12, 'auth', '0003_alter_user_email_max_length', '2019-05-31 15:45:41.168080'),
(13, 'auth', '0004_alter_user_username_opts', '2019-05-31 15:45:41.229264'),
(14, 'auth', '0005_alter_user_last_login_null', '2019-05-31 15:45:42.126517'),
(15, 'auth', '0006_require_contenttypes_0002', '2019-05-31 15:45:42.168496'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2019-05-31 15:45:42.237424'),
(17, 'auth', '0008_alter_user_username_max_length', '2019-05-31 15:45:43.233102'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2019-05-31 15:45:44.141784'),
(19, 'auth', '0010_alter_group_name_max_length', '2019-05-31 15:45:45.400531'),
(20, 'auth', '0011_update_proxy_permissions', '2019-05-31 15:45:45.518484'),
(22, 'parent', '0001_initial', '2019-05-31 15:45:46.375431'),
(23, 'sessions', '0001_initial', '2019-05-31 15:45:47.878770'),
(26, 'marks', '0002_auto_20190605_0840', '2019-06-05 02:55:16.906978'),
(28, 'assignment', '0002_auto_20190606_0909', '2019-06-06 03:24:28.534690'),
(29, 'attendance', '0002_semester', '2019-06-06 03:24:28.801719'),
(30, 'marks', '0001_initial', '2019-06-06 03:44:31.275319'),
(31, 'assignment', '0003_auto_20190606_0950', '2019-06-06 04:05:18.593951'),
(32, 'marks', '0002_auto_20190606_0950', '2019-06-06 04:05:18.681983'),
(33, 'assignment', '0004_auto_20190606_1002', '2019-06-06 04:20:29.568921'),
(35, 'assignment_submit', '0001_initial', '2019-06-09 01:57:18.843730'),
(36, 'assignment', '0005_assignment_document', '2019-06-11 03:38:15.593674'),
(37, 'assignment', '0006_auto_20190611_0935', '2019-06-11 03:50:35.807037'),
(38, 'notes', '0001_initial', '2019-06-14 03:28:14.870768'),
(39, 'notics', '0001_initial', '2019-06-14 03:28:34.569370'),
(40, 'teacher', '0001_initial', '2019-06-16 04:44:16.081765'),
(41, 'parent', '0002_parent_ppassword', '2019-06-16 04:47:51.082775'),
(42, 'student', '0002_student_spassword', '2019-06-16 04:47:52.064495'),
(43, 'marks', '0003_auto_20190618_1559', '2019-06-18 10:14:30.625301'),
(44, 'marks', '0004_marks_sname', '2019-06-18 11:20:54.307538'),
(45, 'assignment', '0007_remove_assignment_aid', '2019-06-21 06:02:08.407922'),
(46, 'notes', '0002_notes_nname', '2019-06-23 05:53:40.699953'),
(47, 'notes', '0003_auto_20190619_1007', '2019-06-23 05:53:40.744894'),
(48, 'notics', '0002_auto_20190619_1007', '2019-06-23 05:53:41.690822'),
(49, 'notics', '0003_auto_20190621_1213', '2019-06-23 05:53:42.521595'),
(50, 'notics', '0004_auto_20190627_1058', '2019-06-27 05:14:09.665287'),
(51, 'notics', '0005_auto_20190627_1103', '2019-06-27 05:19:09.505076');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8ouh0ztmic6h6rl177baudaex9o5b7ry', 'ZjgyN2Y1M2Q3ZDdjYTNjYjhlYTU3NzQ5ZTgxNjIyOTM4YjEyNDhiNDp7InVzZXJfZW1haWwiOiJkZW1vMUBnbWFpbC5jb20xIiwidXNlcl9uYW1lIjoiQU5JVEEgQkFJREhZQSIsInVzZXJfZmFjdWx0eWlkIjoxLCJ1c2VyX2ZhY3VsdHkiOiJCU0NDU0lUIiwidXNlcl9iYXRjaCI6MjA2OCwidXNlcl9pZCI6MX0=', '2019-07-12 04:39:55.267031'),
('rjm68amfc7pgv43hs4lx3vrlsd7uozbo', 'OGRiZDRkMGUzYmJkMmI5ZTdlZmUyYTA1ZjhhOThiNDU2ZmVhZDcyMDp7InVzZXJfZW1haWwiOiJkYWJiYWxAZ21haWwuY29tIiwidXNlcl9uYW1lIjoiRGFiYmFsIFNpbmdoIE1haGFyYSIsInRpZCI6MSwidXNlcl9mYWN1bHR5aWQiOjF9', '2019-07-14 03:19:00.943956'),
('rrudgwqkgp2gbg5mb4mjvv569ik2m0sh', 'OGRiZDRkMGUzYmJkMmI5ZTdlZmUyYTA1ZjhhOThiNDU2ZmVhZDcyMDp7InVzZXJfZW1haWwiOiJkYWJiYWxAZ21haWwuY29tIiwidXNlcl9uYW1lIjoiRGFiYmFsIFNpbmdoIE1haGFyYSIsInRpZCI6MSwidXNlcl9mYWN1bHR5aWQiOjF9', '2019-07-05 06:38:14.365252');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `fhead` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `fid`, `fname`, `fhead`) VALUES
(1, 1, 'BSCCSIT', 'Dabbal Singh Mahara'),
(3, 2, 'BBS', 'Sahadev Sigdel');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `msemester` varchar(50) NOT NULL,
  `mexam` varchar(50) NOT NULL,
  `msubject` varchar(50) NOT NULL,
  `mmarks` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mbatch` int(11) NOT NULL,
  `sname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `sid`, `msemester`, `mexam`, `msubject`, `mmarks`, `fname`, `mbatch`, `sname`) VALUES
(1, 1, 'seventh', 'Mid Term', 'ADBMS', 47, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(2, 1, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(3, 1, 'seventh', 'Mid Term', 'IT', 37, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(4, 1, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(5, 2, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(6, 2, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(7, 2, 'seventh', 'Mid Term', 'IT', 38, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(8, 2, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(9, 3, 'seventh', 'Mid Term', 'ADBMS', 43, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(10, 3, 'seventh', 'Mid Term', 'JAVA', 42, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(11, 3, 'seventh', 'Mid Term', 'IT', 41, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(12, 3, 'seventh', 'Mid Term', 'DBA', 37, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(13, 4, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(14, 4, 'seventh', 'Mid Term', 'JAVA', 38, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(15, 4, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(16, 4, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(17, 5, 'seventh', 'Mid Term', 'ADBMS', 37, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(18, 5, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(19, 5, 'seventh', 'Mid Term', 'IT', 33, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(20, 5, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(21, 6, 'seventh', 'Mid Term', 'ADBMS', 33, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(22, 6, 'seventh', 'Mid Term', 'JAVA', 33, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(23, 6, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(24, 6, 'seventh', 'Mid Term', 'DBA', 25, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(25, 7, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(26, 7, 'seventh', 'Mid Term', 'JAVA', 43, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(27, 7, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(28, 7, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(29, 8, 'seventh', 'Mid Term', 'ADBMS', 51, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(30, 8, 'seventh', 'Mid Term', 'JAVA', 52, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(31, 8, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(32, 8, 'seventh', 'Mid Term', 'DBA', 33, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(33, 9, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(34, 9, 'seventh', 'Mid Term', 'JAVA', 29, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(35, 9, 'seventh', 'Mid Term', 'IT', 21, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(36, 9, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(37, 10, 'seventh', 'Mid Term', 'ADBMS', 36, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(38, 10, 'seventh', 'Mid Term', 'JAVA', 30, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(39, 10, 'seventh', 'Mid Term', 'IT', 34, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(40, 10, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(41, 11, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(42, 11, 'seventh', 'Mid Term', 'JAVA', 24, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(43, 11, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(44, 11, 'seventh', 'Mid Term', 'DBA', 36, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(45, 12, 'seventh', 'Mid Term', 'ADBMS', 43, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(46, 12, 'seventh', 'Mid Term', 'JAVA', 30, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(47, 12, 'seventh', 'Mid Term', 'IT', 27, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(48, 12, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(49, 13, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(50, 13, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(51, 13, 'seventh', 'Mid Term', 'IT', 34, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(52, 13, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(53, 14, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(54, 14, 'seventh', 'Mid Term', 'JAVA', 31, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(55, 14, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(56, 14, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(57, 15, 'seventh', 'Mid Term', 'ADBMS', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(58, 15, 'seventh', 'Mid Term', 'JAVA', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(59, 15, 'seventh', 'Mid Term', 'IT', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(60, 15, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(61, 16, 'seventh', 'Mid Term', 'ADBMS', 35, 'BSCCSIT', 2072, 'MANOJ SARU'),
(62, 16, 'seventh', 'Mid Term', 'JAVA', 36, 'BSCCSIT', 2072, 'MANOJ SARU'),
(63, 16, 'seventh', 'Mid Term', 'IT', 33, 'BSCCSIT', 2072, 'MANOJ SARU'),
(64, 16, 'seventh', 'Mid Term', 'DBA', 25, 'BSCCSIT', 2072, 'MANOJ SARU'),
(65, 17, 'seventh', 'Mid Term', 'ADBMS', 49, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(66, 17, 'seventh', 'Mid Term', 'JAVA', 52, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(67, 17, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(68, 17, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(69, 18, 'seventh', 'Mid Term', 'ADBMS', 48, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(70, 18, 'seventh', 'Mid Term', 'JAVA', 46, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(71, 18, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(72, 18, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(73, 19, 'seventh', 'Mid Term', 'ADBMS', 34, 'BSCCSIT', 2072, 'NIMA K.C'),
(74, 19, 'seventh', 'Mid Term', 'JAVA', 31, 'BSCCSIT', 2072, 'NIMA K.C'),
(75, 19, 'seventh', 'Mid Term', 'IT', 37, 'BSCCSIT', 2072, 'NIMA K.C'),
(76, 19, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'NIMA K.C'),
(77, 20, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(78, 20, 'seventh', 'Mid Term', 'JAVA', 40, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(79, 20, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(80, 20, 'seventh', 'Mid Term', 'DBA', 34, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(81, 21, 'seventh', 'Mid Term', 'ADBMS', 50, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(82, 21, 'seventh', 'Mid Term', 'JAVA', 43, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(83, 21, 'seventh', 'Mid Term', 'IT', 32, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(84, 21, 'seventh', 'Mid Term', 'DBA', 42, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(85, 22, 'seventh', 'Mid Term', 'ADBMS', 28, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(86, 22, 'seventh', 'Mid Term', 'JAVA', 32, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(87, 22, 'seventh', 'Mid Term', 'IT', 33, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(88, 22, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(89, 23, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(90, 23, 'seventh', 'Mid Term', 'JAVA', 41, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(91, 23, 'seventh', 'Mid Term', 'IT', 36, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(92, 23, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(93, 24, 'seventh', 'Mid Term', 'ADBMS', 38, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(94, 24, 'seventh', 'Mid Term', 'JAVA', 31, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(95, 24, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(96, 24, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(97, 25, 'seventh', 'Mid Term', 'ADBMS', 49, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(98, 25, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(99, 25, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(100, 25, 'seventh', 'Mid Term', 'DBA', 45, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(101, 26, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(102, 26, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(103, 26, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(104, 26, 'seventh', 'Mid Term', 'DBA', 33, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(105, 27, 'seventh', 'Mid Term', 'ADBMS', 39, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(106, 27, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(107, 27, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(108, 27, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(109, 28, 'seventh', 'Mid Term', 'ADBMS', 36, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(110, 28, 'seventh', 'Mid Term', 'JAVA', 41, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(111, 28, 'seventh', 'Mid Term', 'IT', 24, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(112, 28, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(113, 29, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(114, 29, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(115, 29, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(116, 29, 'seventh', 'Mid Term', 'DBA', 39, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(117, 30, 'seventh', 'Mid Term', 'ADBMS', 44, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(118, 30, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(119, 30, 'seventh', 'Mid Term', 'IT', 41, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(120, 30, 'seventh', 'Mid Term', 'DBA', 37, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(121, 31, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(122, 31, 'seventh', 'Mid Term', 'JAVA', 50, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(123, 31, 'seventh', 'Mid Term', 'IT', 34, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(124, 31, 'seventh', 'Mid Term', 'DBA', 25, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(125, 32, 'seventh', 'Mid Term', 'ADBMS', 53, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(126, 32, 'seventh', 'Mid Term', 'JAVA', 55, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(127, 32, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(128, 32, 'seventh', 'Mid Term', 'DBA', 44, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(129, 33, 'seventh', 'Mid Term', 'ADBMS', 33, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(130, 33, 'seventh', 'Mid Term', 'JAVA', 32, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(131, 33, 'seventh', 'Mid Term', 'IT', 26, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(132, 33, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(133, 34, 'seventh', 'Mid Term', 'ADBMS', 41, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(134, 34, 'seventh', 'Mid Term', 'JAVA', 43, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(135, 34, 'seventh', 'Mid Term', 'IT', 44, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(136, 34, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(137, 35, 'seventh', 'Mid Term', 'ADBMS', 33, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(138, 35, 'seventh', 'Mid Term', 'JAVA', 37, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(139, 35, 'seventh', 'Mid Term', 'IT', 0, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(140, 35, 'seventh', 'Mid Term', 'DBA', 24, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(141, 36, 'seventh', 'Mid Term', 'ADBMS', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(142, 36, 'seventh', 'Mid Term', 'JAVA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(143, 36, 'seventh', 'Mid Term', 'IT', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(144, 36, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(145, 37, 'seventh', 'Mid Term', 'ADBMS', 44, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(146, 37, 'seventh', 'Mid Term', 'JAVA', 49, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(147, 37, 'seventh', 'Mid Term', 'IT', 42, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(148, 37, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(149, 38, 'seventh', 'Mid Term', 'ADBMS', 47, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(150, 38, 'seventh', 'Mid Term', 'JAVA', 25, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(151, 38, 'seventh', 'Mid Term', 'IT', 31, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(152, 38, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(153, 39, 'seventh', 'Mid Term', 'ADBMS', 41, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(154, 39, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(155, 39, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(156, 39, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(157, 40, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(158, 40, 'seventh', 'Mid Term', 'JAVA', 48, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(159, 40, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(160, 40, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(161, 41, 'seventh', 'Mid Term', 'ADBMS', 42, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(162, 41, 'seventh', 'Mid Term', 'JAVA', 37, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(163, 41, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(164, 41, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(165, 42, 'seventh', 'Mid Term', 'ADBMS', 50, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(166, 42, 'seventh', 'Mid Term', 'JAVA', 55, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(167, 42, 'seventh', 'Mid Term', 'IT', 57, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(168, 42, 'seventh', 'Mid Term', 'DBA', 51, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(169, 43, 'seventh', 'Mid Term', 'ADBMS', 47, 'BSCCSIT', 2072, 'VINOD DANGI'),
(170, 43, 'seventh', 'Mid Term', 'JAVA', 48, 'BSCCSIT', 2072, 'VINOD DANGI'),
(171, 43, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'VINOD DANGI'),
(172, 43, 'seventh', 'Mid Term', 'DBA', 41, 'BSCCSIT', 2072, 'VINOD DANGI'),
(173, 44, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(174, 44, 'seventh', 'Mid Term', 'JAVA', 41, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(175, 44, 'seventh', 'Mid Term', 'IT', 45, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(176, 44, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(177, 45, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(178, 45, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(179, 45, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(180, 45, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(181, 1, 'seventh', 'Pre Board', 'ADBMS', 25, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(182, 1, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(183, 1, 'seventh', 'Pre Board', 'IT', 53, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(184, 1, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(185, 2, 'seventh', 'Pre Board', 'ADBMS', 31, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(186, 2, 'seventh', 'Pre Board', 'JAVA', 36, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(187, 2, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(188, 2, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(189, 3, 'seventh', 'Pre Board', 'ADBMS', 52, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(190, 3, 'seventh', 'Pre Board', 'JAVA', 45, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(191, 3, 'seventh', 'Pre Board', 'IT', 53, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(192, 3, 'seventh', 'Pre Board', 'DBA', 27, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(193, 4, 'seventh', 'Pre Board', 'ADBMS', 27, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(194, 4, 'seventh', 'Pre Board', 'JAVA', 29, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(195, 4, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(196, 4, 'seventh', 'Pre Board', 'DBA', 19, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(197, 5, 'seventh', 'Pre Board', 'ADBMS', 19, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(198, 5, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(199, 5, 'seventh', 'Pre Board', 'IT', 15, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(200, 5, 'seventh', 'Pre Board', 'DBA', 19, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(201, 6, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(202, 6, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(203, 6, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(204, 6, 'seventh', 'Pre Board', 'DBA', 20, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(205, 7, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(206, 7, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(207, 7, 'seventh', 'Pre Board', 'IT', 45, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(208, 7, 'seventh', 'Pre Board', 'DBA', 0, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(209, 8, 'seventh', 'Pre Board', 'ADBMS', 48, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(210, 8, 'seventh', 'Pre Board', 'JAVA', 47, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(211, 8, 'seventh', 'Pre Board', 'IT', 58, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(212, 8, 'seventh', 'Pre Board', 'DBA', 44, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(213, 9, 'seventh', 'Pre Board', 'ADBMS', 35, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(214, 9, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(215, 9, 'seventh', 'Pre Board', 'IT', 43, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(216, 9, 'seventh', 'Pre Board', 'DBA', 21, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(217, 10, 'seventh', 'Pre Board', 'ADBMS', 44, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(218, 10, 'seventh', 'Pre Board', 'JAVA', 38, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(219, 10, 'seventh', 'Pre Board', 'IT', 51, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(220, 10, 'seventh', 'Pre Board', 'DBA', 44, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(221, 11, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(222, 11, 'seventh', 'Pre Board', 'JAVA', 24, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(223, 11, 'seventh', 'Pre Board', 'IT', 26, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(224, 11, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(225, 12, 'seventh', 'Pre Board', 'ADBMS', 35, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(226, 12, 'seventh', 'Pre Board', 'JAVA', 44, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(227, 12, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(228, 12, 'seventh', 'Pre Board', 'DBA', 30, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(229, 13, 'seventh', 'Pre Board', 'ADBMS', 26, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(230, 13, 'seventh', 'Pre Board', 'JAVA', 40, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(231, 13, 'seventh', 'Pre Board', 'IT', 47, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(232, 13, 'seventh', 'Pre Board', 'DBA', 25, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(233, 14, 'seventh', 'Pre Board', 'ADBMS', 32, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(234, 14, 'seventh', 'Pre Board', 'JAVA', 40, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(235, 14, 'seventh', 'Pre Board', 'IT', 40, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(236, 14, 'seventh', 'Pre Board', 'DBA', 21, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(237, 15, 'seventh', 'Pre Board', 'ADBMS', 34, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(238, 15, 'seventh', 'Pre Board', 'JAVA', 54, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(239, 15, 'seventh', 'Pre Board', 'IT', 35, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(240, 15, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(241, 16, 'seventh', 'Pre Board', 'ADBMS', 41, 'BSCCSIT', 2072, 'MANOJ SARU'),
(242, 16, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'MANOJ SARU'),
(243, 16, 'seventh', 'Pre Board', 'IT', 40, 'BSCCSIT', 2072, 'MANOJ SARU'),
(244, 16, 'seventh', 'Pre Board', 'DBA', 22, 'BSCCSIT', 2072, 'MANOJ SARU'),
(245, 17, 'seventh', 'Pre Board', 'ADBMS', 42, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(246, 17, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(247, 17, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(248, 17, 'seventh', 'Pre Board', 'DBA', 35, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(249, 18, 'seventh', 'Pre Board', 'ADBMS', 47, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(250, 18, 'seventh', 'Pre Board', 'JAVA', 48, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(251, 18, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(252, 18, 'seventh', 'Pre Board', 'DBA', 25, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(253, 19, 'seventh', 'Pre Board', 'ADBMS', 34, 'BSCCSIT', 2072, 'NIMA K.C'),
(254, 19, 'seventh', 'Pre Board', 'JAVA', 31, 'BSCCSIT', 2072, 'NIMA K.C'),
(255, 19, 'seventh', 'Pre Board', 'IT', 37, 'BSCCSIT', 2072, 'NIMA K.C'),
(256, 19, 'seventh', 'Pre Board', 'DBA', 27, 'BSCCSIT', 2072, 'NIMA K.C'),
(257, 20, 'seventh', 'Pre Board', 'ADBMS', 43, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(258, 20, 'seventh', 'Pre Board', 'JAVA', 37, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(259, 20, 'seventh', 'Pre Board', 'IT', 52, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(260, 20, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(261, 21, 'seventh', 'Pre Board', 'ADBMS', 52, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(262, 21, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(263, 21, 'seventh', 'Pre Board', 'IT', 51, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(264, 21, 'seventh', 'Pre Board', 'DBA', 47, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(265, 22, 'seventh', 'Pre Board', 'ADBMS', 28, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(266, 22, 'seventh', 'Pre Board', 'JAVA', 29, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(267, 22, 'seventh', 'Pre Board', 'IT', 48, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(268, 22, 'seventh', 'Pre Board', 'DBA', 32, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(269, 23, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(270, 23, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(271, 23, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(272, 23, 'seventh', 'Pre Board', 'DBA', 47, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(273, 24, 'seventh', 'Pre Board', 'ADBMS', 22, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(274, 24, 'seventh', 'Pre Board', 'JAVA', 19, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(275, 24, 'seventh', 'Pre Board', 'IT', 24, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(276, 24, 'seventh', 'Pre Board', 'DBA', 4, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(277, 25, 'seventh', 'Pre Board', 'ADBMS', 46, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(278, 25, 'seventh', 'Pre Board', 'JAVA', 38, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(279, 25, 'seventh', 'Pre Board', 'IT', 49, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(280, 25, 'seventh', 'Pre Board', 'DBA', 35, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(281, 26, 'seventh', 'Pre Board', 'ADBMS', 41, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(282, 26, 'seventh', 'Pre Board', 'JAVA', 19, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(283, 26, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(284, 26, 'seventh', 'Pre Board', 'DBA', 15, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(285, 27, 'seventh', 'Pre Board', 'ADBMS', 40, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(286, 27, 'seventh', 'Pre Board', 'JAVA', 34, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(287, 27, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(288, 27, 'seventh', 'Pre Board', 'DBA', 28, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(289, 28, 'seventh', 'Pre Board', 'ADBMS', 31, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(290, 28, 'seventh', 'Pre Board', 'JAVA', 28, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(291, 28, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(292, 28, 'seventh', 'Pre Board', 'DBA', 16, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(293, 29, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(294, 29, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(295, 29, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(296, 29, 'seventh', 'Pre Board', 'DBA', 18, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(297, 30, 'seventh', 'Pre Board', 'ADBMS', 37, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(298, 30, 'seventh', 'Pre Board', 'JAVA', 37, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(299, 30, 'seventh', 'Pre Board', 'IT', 36, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(300, 30, 'seventh', 'Pre Board', 'DBA', 28, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(301, 31, 'seventh', 'Pre Board', 'ADBMS', 47, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(302, 31, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(303, 31, 'seventh', 'Pre Board', 'IT', 48, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(304, 31, 'seventh', 'Pre Board', 'DBA', 31, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(305, 32, 'seventh', 'Pre Board', 'ADBMS', 50, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(306, 32, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(307, 32, 'seventh', 'Pre Board', 'IT', 39, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(308, 32, 'seventh', 'Pre Board', 'DBA', 39, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(309, 33, 'seventh', 'Pre Board', 'ADBMS', 18, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(310, 33, 'seventh', 'Pre Board', 'JAVA', 28, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(311, 33, 'seventh', 'Pre Board', 'IT', 21, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(312, 33, 'seventh', 'Pre Board', 'DBA', 12, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(313, 34, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(314, 34, 'seventh', 'Pre Board', 'JAVA', 33, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(315, 34, 'seventh', 'Pre Board', 'IT', 42, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(316, 34, 'seventh', 'Pre Board', 'DBA', 22, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(317, 35, 'seventh', 'Pre Board', 'ADBMS', 27, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(318, 35, 'seventh', 'Pre Board', 'JAVA', 19, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(319, 35, 'seventh', 'Pre Board', 'IT', 33, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(320, 35, 'seventh', 'Pre Board', 'DBA', 6, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(321, 36, 'seventh', 'Pre Board', 'ADBMS', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(322, 36, 'seventh', 'Pre Board', 'JAVA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(323, 36, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(324, 36, 'seventh', 'Pre Board', 'DBA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(325, 37, 'seventh', 'Pre Board', 'ADBMS', 32, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(326, 37, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(327, 37, 'seventh', 'Pre Board', 'IT', 34, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(328, 37, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(329, 38, 'seventh', 'Pre Board', 'ADBMS', 31, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(330, 38, 'seventh', 'Pre Board', 'JAVA', 36, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(331, 38, 'seventh', 'Pre Board', 'IT', 36, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(332, 38, 'seventh', 'Pre Board', 'DBA', 26, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(333, 39, 'seventh', 'Pre Board', 'ADBMS', 42, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(334, 39, 'seventh', 'Pre Board', 'JAVA', 29, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(335, 39, 'seventh', 'Pre Board', 'IT', 39, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(336, 39, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(337, 40, 'seventh', 'Pre Board', 'ADBMS', 43, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(338, 40, 'seventh', 'Pre Board', 'JAVA', 26, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(339, 40, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(340, 40, 'seventh', 'Pre Board', 'DBA', 25, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(341, 41, 'seventh', 'Pre Board', 'ADBMS', 49, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(342, 41, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(343, 41, 'seventh', 'Pre Board', 'IT', 48, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(344, 41, 'seventh', 'Pre Board', 'DBA', 40, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(345, 42, 'seventh', 'Pre Board', 'ADBMS', 49, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(346, 42, 'seventh', 'Pre Board', 'JAVA', 50, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(347, 42, 'seventh', 'Pre Board', 'IT', 51, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(348, 42, 'seventh', 'Pre Board', 'DBA', 39, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(349, 43, 'seventh', 'Pre Board', 'ADBMS', 41, 'BSCCSIT', 2072, 'VINOD DANGI'),
(350, 43, 'seventh', 'Pre Board', 'JAVA', 44, 'BSCCSIT', 2072, 'VINOD DANGI'),
(351, 43, 'seventh', 'Pre Board', 'IT', 54, 'BSCCSIT', 2072, 'VINOD DANGI'),
(352, 43, 'seventh', 'Pre Board', 'DBA', 39, 'BSCCSIT', 2072, 'VINOD DANGI'),
(353, 44, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(354, 44, 'seventh', 'Pre Board', 'JAVA', 46, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(355, 44, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(356, 44, 'seventh', 'Pre Board', 'DBA', 18, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(357, 45, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(358, 45, 'seventh', 'Pre Board', 'JAVA', 25, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(359, 45, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(360, 45, 'seventh', 'Pre Board', 'DBA', 41, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(361, 1, 'First', 'Final', 'All', 372, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(362, 2, 'First', 'Final', 'All', 367, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(363, 3, 'First', 'Final', 'All', 407, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(364, 4, 'First', 'Final', 'All', 372, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(365, 5, 'First', 'Final', 'All', 376, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(366, 6, 'First', 'Final', 'All', 353, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(367, 7, 'First', 'Final', 'All', 386, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(368, 8, 'First', 'Final', 'All', 382, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(369, 9, 'First', 'Final', 'All', 367, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(370, 10, 'First', 'Final', 'All', 380, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(371, 11, 'First', 'Final', 'All', 370, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(372, 12, 'First', 'Final', 'All', 360, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(373, 13, 'First', 'Final', 'All', 375, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(374, 14, 'First', 'Final', 'All', 378, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(375, 15, 'First', 'Final', 'All', 407, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(376, 16, 'First', 'Final', 'All', 367, 'BSCCSIT', 2072, 'MANOJ SARU'),
(377, 17, 'First', 'Final', 'All', 405, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(378, 18, 'First', 'Final', 'All', 404, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(379, 19, 'First', 'Final', 'All', 369, 'BSCCSIT', 2072, 'NIMA K.C'),
(380, 20, 'First', 'Final', 'All', 362, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(381, 21, 'First', 'Final', 'All', 383, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(382, 22, 'First', 'Final', 'All', 338, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(383, 23, 'First', 'Final', 'All', 401, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(384, 24, 'First', 'Final', 'All', 358, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(385, 25, 'First', 'Final', 'All', 360, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(386, 26, 'First', 'Final', 'All', 354, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(387, 27, 'First', 'Final', 'All', 253, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(388, 28, 'First', 'Final', 'All', 347, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(389, 29, 'First', 'Final', 'All', 380, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(390, 30, 'First', 'Final', 'All', 414, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(391, 31, 'First', 'Final', 'All', 386, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(392, 32, 'First', 'Final', 'All', 379, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(393, 33, 'First', 'Final', 'All', 254, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(394, 34, 'First', 'Final', 'All', 396, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(395, 35, 'First', 'Final', 'All', 361, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(396, 36, 'First', 'Final', 'All', 392, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(397, 37, 'First', 'Final', 'All', 413, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(398, 38, 'First', 'Final', 'All', 388, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(399, 39, 'First', 'Final', 'All', 390, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(400, 40, 'First', 'Final', 'All', 396, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(401, 41, 'First', 'Final', 'All', 394, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(402, 42, 'First', 'Final', 'All', 418, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(403, 43, 'First', 'Final', 'All', 397, 'BSCCSIT', 2072, 'VINOD DANGI'),
(404, 44, 'First', 'Final', 'All', 404, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(405, 45, 'First', 'Final', 'All', 375, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(406, 1, 'Second', 'Final', 'All', 438, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(407, 2, 'Second', 'Final', 'All', 397, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(408, 3, 'Second', 'Final', 'All', 448, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(409, 4, 'Second', 'Final', 'All', 328, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(410, 5, 'Second', 'Final', 'All', 344, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(411, 6, 'Second', 'Final', 'All', 343, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(412, 7, 'Second', 'Final', 'All', 427, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(413, 8, 'Second', 'Final', 'All', 461, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(414, 9, 'Second', 'Final', 'All', 414, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(415, 10, 'Second', 'Final', 'All', 426, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(416, 11, 'Second', 'Final', 'All', 429, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(417, 12, 'Second', 'Final', 'All', 403, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(418, 13, 'Second', 'Final', 'All', 400, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(419, 14, 'Second', 'Final', 'All', 353, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(420, 15, 'Second', 'Final', 'All', 449, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(421, 16, 'Second', 'Final', 'All', 421, 'BSCCSIT', 2072, 'MANOJ SARU'),
(422, 17, 'Second', 'Final', 'All', 449, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(423, 18, 'Second', 'Final', 'All', 461, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(424, 19, 'Second', 'Final', 'All', 432, 'BSCCSIT', 2072, 'NIMA K.C'),
(425, 20, 'Second', 'Final', 'All', 375, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(426, 21, 'Second', 'Final', 'All', 431, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(427, 22, 'Second', 'Final', 'All', 355, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(428, 23, 'Second', 'Final', 'All', 463, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(429, 24, 'Second', 'Final', 'All', 386, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(430, 25, 'Second', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(431, 26, 'Second', 'Final', 'All', 433, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(432, 27, 'Second', 'Final', 'All', 319, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(433, 28, 'Second', 'Final', 'All', 415, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(434, 29, 'Second', 'Final', 'All', 419, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(435, 30, 'Second', 'Final', 'All', 411, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(436, 31, 'Second', 'Final', 'All', 352, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(437, 32, 'Second', 'Final', 'All', 431, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(438, 33, 'Second', 'Final', 'All', 167, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(439, 34, 'Second', 'Final', 'All', 446, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(440, 35, 'Second', 'Final', 'All', 272, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(441, 36, 'Second', 'Final', 'All', 443, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(442, 37, 'Second', 'Final', 'All', 415, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(443, 38, 'Second', 'Final', 'All', 401, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(444, 39, 'Second', 'Final', 'All', 334, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(445, 40, 'Second', 'Final', 'All', 446, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(446, 41, 'Second', 'Final', 'All', 419, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(447, 42, 'Second', 'Final', 'All', 484, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(448, 43, 'Second', 'Final', 'All', 384, 'BSCCSIT', 2072, 'VINOD DANGI'),
(449, 44, 'Second', 'Final', 'All', 440, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(450, 45, 'Second', 'Final', 'All', 403, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(451, 1, 'Third', 'Final', 'All', 344, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(452, 2, 'Third', 'Final', 'All', 343, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(453, 3, 'Third', 'Final', 'All', 364, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(454, 4, 'Third', 'Final', 'All', 354, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(455, 5, 'Third', 'Final', 'All', 337, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(456, 6, 'Third', 'Final', 'All', 325, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(457, 7, 'Third', 'Final', 'All', 363, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(458, 8, 'Third', 'Final', 'All', 358, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(459, 9, 'Third', 'Final', 'All', 343, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(460, 10, 'Third', 'Final', 'All', 348, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(461, 11, 'Third', 'Final', 'All', 332, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(462, 12, 'Third', 'Final', 'All', 344, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(463, 13, 'Third', 'Final', 'All', 357, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(464, 14, 'Third', 'Final', 'All', 341, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(465, 15, 'Third', 'Final', 'All', 370, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(466, 16, 'Third', 'Final', 'All', 340, 'BSCCSIT', 2072, 'MANOJ SARU'),
(467, 17, 'Third', 'Final', 'All', 367, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(468, 18, 'Third', 'Final', 'All', 387, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(469, 19, 'Third', 'Final', 'All', 378, 'BSCCSIT', 2072, 'NIMA K.C'),
(470, 20, 'Third', 'Final', 'All', 350, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(471, 21, 'Third', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(472, 22, 'Third', 'Final', 'All', 335, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(473, 23, 'Third', 'Final', 'All', 388, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(474, 24, 'Third', 'Final', 'All', 320, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(475, 25, 'Third', 'Final', 'All', 360, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(476, 26, 'Third', 'Final', 'All', 359, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(477, 27, 'Third', 'Final', 'All', 318, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(478, 28, 'Third', 'Final', 'All', 337, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(479, 29, 'Third', 'Final', 'All', 369, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(480, 30, 'Third', 'Final', 'All', 360, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(481, 31, 'Third', 'Final', 'All', 358, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(482, 32, 'Third', 'Final', 'All', 386, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(483, 33, 'Third', 'Final', 'All', 329, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(484, 34, 'Third', 'Final', 'All', 356, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(485, 35, 'Third', 'Final', 'All', 338, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(486, 36, 'Third', 'Final', 'All', 384, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(487, 37, 'Third', 'Final', 'All', 376, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(488, 38, 'Third', 'Final', 'All', 357, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(489, 39, 'Third', 'Final', 'All', 350, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(490, 40, 'Third', 'Final', 'All', 370, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(491, 41, 'Third', 'Final', 'All', 345, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(492, 42, 'Third', 'Final', 'All', 389, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(493, 43, 'Third', 'Final', 'All', 267, 'BSCCSIT', 2072, 'VINOD DANGI'),
(494, 44, 'Third', 'Final', 'All', 374, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(495, 45, 'Third', 'Final', 'All', 375, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(496, 1, 'Fourth', 'Final', 'All', 380, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(497, 2, 'Fourth', 'Final', 'All', 363, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(498, 3, 'Fourth', 'Final', 'All', 394, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(499, 4, 'Fourth', 'Final', 'All', 312, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(500, 5, 'Fourth', 'Final', 'All', 281, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(501, 6, 'Fourth', 'Final', 'All', 329, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(502, 7, 'Fourth', 'Final', 'All', 403, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(503, 8, 'Fourth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(504, 9, 'Fourth', 'Final', 'All', 368, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(505, 10, 'Fourth', 'Final', 'All', 370, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(506, 11, 'Fourth', 'Final', 'All', 318, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(507, 12, 'Fourth', 'Final', 'All', 340, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(508, 13, 'Fourth', 'Final', 'All', 349, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(509, 14, 'Fourth', 'Final', 'All', 362, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(510, 15, 'Fourth', 'Final', 'All', 373, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(511, 16, 'Fourth', 'Final', 'All', 340, 'BSCCSIT', 2072, 'MANOJ SARU'),
(512, 17, 'Fourth', 'Final', 'All', 407, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(513, 18, 'Fourth', 'Final', 'All', 389, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(514, 19, 'Fourth', 'Final', 'All', 364, 'BSCCSIT', 2072, 'NIMA K.C'),
(515, 20, 'Fourth', 'Final', 'All', 353, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(516, 21, 'Fourth', 'Final', 'All', 405, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(517, 22, 'Fourth', 'Final', 'All', 351, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(518, 23, 'Fourth', 'Final', 'All', 433, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(519, 24, 'Fourth', 'Final', 'All', 333, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(520, 25, 'Fourth', 'Final', 'All', 367, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(521, 26, 'Fourth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(522, 27, 'Fourth', 'Final', 'All', 325, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(523, 28, 'Fourth', 'Final', 'All', 346, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(524, 29, 'Fourth', 'Final', 'All', 378, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(525, 30, 'Fourth', 'Final', 'All', 390, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(526, 31, 'Fourth', 'Final', 'All', 395, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(527, 32, 'Fourth', 'Final', 'All', 426, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(528, 33, 'Fourth', 'Final', 'All', 328, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(529, 34, 'Fourth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(530, 35, 'Fourth', 'Final', 'All', 341, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(531, 36, 'Fourth', 'Final', 'All', 397, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(532, 37, 'Fourth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(533, 38, 'Fourth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(534, 39, 'Fourth', 'Final', 'All', 369, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(535, 40, 'Fourth', 'Final', 'All', 380, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(536, 41, 'Fourth', 'Final', 'All', 374, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(537, 42, 'Fourth', 'Final', 'All', 461, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(538, 43, 'Fourth', 'Final', 'All', 397, 'BSCCSIT', 2072, 'VINOD DANGI'),
(539, 44, 'Fourth', 'Final', 'All', 419, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(540, 45, 'Fourth', 'Final', 'All', 291, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(541, 1, 'Fifth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(542, 2, 'Fifth', 'Final', 'All', 355, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(543, 3, 'Fifth', 'Final', 'All', 387, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(544, 4, 'Fifth', 'Final', 'All', 368, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(545, 5, 'Fifth', 'Final', 'All', 363, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(546, 6, 'Fifth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(547, 7, 'Fifth', 'Final', 'All', 388, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(548, 8, 'Fifth', 'Final', 'All', 386, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(549, 9, 'Fifth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(550, 10, 'Fifth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(551, 11, 'Fifth', 'Final', 'All', 347, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(552, 12, 'Fifth', 'Final', 'All', 332, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(553, 13, 'Fifth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(554, 14, 'Fifth', 'Final', 'All', 373, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(555, 15, 'Fifth', 'Final', 'All', 376, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(556, 16, 'Fifth', 'Final', 'All', 349, 'BSCCSIT', 2072, 'MANOJ SARU'),
(557, 17, 'Fifth', 'Final', 'All', 372, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(558, 18, 'Fifth', 'Final', 'All', 383, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(559, 19, 'Fifth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'NIMA K.C'),
(560, 20, 'Fifth', 'Final', 'All', 359, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(561, 21, 'Fifth', 'Final', 'All', 386, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(562, 22, 'Fifth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(563, 23, 'Fifth', 'Final', 'All', 398, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(564, 24, 'Fifth', 'Final', 'All', 325, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(565, 25, 'Fifth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(566, 26, 'Fifth', 'Final', 'All', 365, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(567, 27, 'Fifth', 'Final', 'All', 337, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(568, 28, 'Fifth', 'Final', 'All', 366, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(569, 29, 'Fifth', 'Final', 'All', 381, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(570, 30, 'Fifth', 'Final', 'All', 385, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(571, 31, 'Fifth', 'Final', 'All', 365, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(572, 32, 'Fifth', 'Final', 'All', 384, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(573, 33, 'Fifth', 'Final', 'All', 331, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(574, 34, 'Fifth', 'Final', 'All', 365, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(575, 35, 'Fifth', 'Final', 'All', 358, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(576, 36, 'Fifth', 'Final', 'All', 386, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(577, 37, 'Fifth', 'Final', 'All', 379, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(578, 38, 'Fifth', 'Final', 'All', 369, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(579, 39, 'Fifth', 'Final', 'All', 367, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(580, 40, 'Fifth', 'Final', 'All', 378, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(581, 41, 'Fifth', 'Final', 'All', 383, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(582, 42, 'Fifth', 'Final', 'All', 403, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(583, 43, 'Fifth', 'Final', 'All', 370, 'BSCCSIT', 2072, 'VINOD DANGI'),
(584, 44, 'Fifth', 'Final', 'All', 382, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(585, 45, 'Fifth', 'Final', 'All', 348, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(586, 1, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(587, 2, 'Sixth', 'Final', 'All', 340, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(588, 3, 'Sixth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(589, 4, 'Sixth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(590, 5, 'Sixth', 'Final', 'All', 330, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(591, 6, 'Sixth', 'Final', 'All', 383, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(592, 7, 'Sixth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(593, 8, 'Sixth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(594, 9, 'Sixth', 'Final', 'All', 330, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(595, 10, 'Sixth', 'Final', 'All', 346, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(596, 11, 'Sixth', 'Final', 'All', 341, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(597, 12, 'Sixth', 'Final', 'All', 349, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(598, 13, 'Sixth', 'Final', 'All', 360, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(599, 14, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(600, 15, 'Sixth', 'Final', 'All', 364, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(601, 16, 'Sixth', 'Final', 'All', 345, 'BSCCSIT', 2072, 'MANOJ SARU'),
(602, 17, 'Sixth', 'Final', 'All', 385, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(603, 18, 'Sixth', 'Final', 'All', 394, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(604, 19, 'Sixth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'NIMA K.C'),
(605, 20, 'Sixth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(606, 21, 'Sixth', 'Final', 'All', 397, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(607, 22, 'Sixth', 'Final', 'All', 362, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(608, 23, 'Sixth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(609, 24, 'Sixth', 'Final', 'All', 315, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(610, 25, 'Sixth', 'Final', 'All', 367, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(611, 26, 'Sixth', 'Final', 'All', 350, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(612, 27, 'Sixth', 'Final', 'All', 332, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(613, 28, 'Sixth', 'Final', 'All', 339, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(614, 29, 'Sixth', 'Final', 'All', 352, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(615, 30, 'Sixth', 'Final', 'All', 360, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(616, 31, 'Sixth', 'Final', 'All', 362, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(617, 32, 'Sixth', 'Final', 'All', 369, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(618, 33, 'Sixth', 'Final', 'All', 303, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(619, 34, 'Sixth', 'Final', 'All', 344, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(620, 35, 'Sixth', 'Final', 'All', 350, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(621, 36, 'Sixth', 'Final', 'All', 364, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(622, 37, 'Sixth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(623, 38, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(624, 39, 'Sixth', 'Final', 'All', 348, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(625, 40, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(626, 41, 'Sixth', 'Final', 'All', 374, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(627, 42, 'Sixth', 'Final', 'All', 403, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(628, 43, 'Sixth', 'Final', 'All', 356, 'BSCCSIT', 2072, 'VINOD DANGI'),
(629, 44, 'Sixth', 'Final', 'All', 380, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(630, 45, 'Sixth', 'Final', 'All', 352, 'BSCCSIT', 2072, 'RAMESH BAYAK');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `ndocument` varchar(100) NOT NULL,
  `uploaded_at` date NOT NULL,
  `nfaculty` varchar(20) NOT NULL,
  `ntid` int(11) NOT NULL,
  `nbatch` int(11) NOT NULL,
  `nname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `ndocument`, `uploaded_at`, `nfaculty`, `ntid`, `nbatch`, `nname`) VALUES
(1, 'mfan3.jpg', '2019-06-23', 'BSCCSIT', 1, 2072, 'asdf');

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
(4, 'BSCCSIT', 2068, 'First', 'Today meeting at 2PM', '2019-06-27', 1, '2019-06-30', 'Meeting', 'Meeting'),
(5, 'BSCCSIT', 2072, 'Seventh', 'Intrested student can apply for Everest Hackathon .\r\n5 days left!', '2019-06-27', 1, '2019-07-02', 'Everest Hackathon', 'Events'),
(9, 'BSCCSIT', 2072, 'Seventh', 'There will be no classes tomorrow because of educational strike', '2019-06-29', 1, '2019-06-30', 'Educational Strike', 'Holiday'),
(10, 'BSCCSIT', 2072, 'First', 'Mid defense will be on sunday 2019/06/30. Bring required materials.', '2019-06-30', 1, '2019-06-30', 'Project Mid-defense', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `paddress` varchar(50) NOT NULL,
  `pcontact` varchar(50) NOT NULL,
  `pemail` varchar(254) NOT NULL,
  `psid_id` int(11) NOT NULL,
  `ppassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `scontact` int(11) NOT NULL,
  `semail` varchar(254) NOT NULL,
  `sbatch` int(11) NOT NULL,
  `sfaculty_id` int(11) NOT NULL,
  `spassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `sid`, `sname`, `saddress`, `scontact`, `semail`, `sbatch`, `sfaculty_id`, `spassword`) VALUES
(1, 1, 'AASHISH MALLA', 'kathmandu', 986675854, 'demo72@gmail.com1', 2072, 1, 'AAS123'),
(2, 2, 'ADARSHA SUBEDI', 'kathmandu', 986675854, 'demo72@gmail.com2', 2072, 1, 'ADAR123'),
(3, 3, 'ANIL POUDEL', 'kathmandu', 986675854, 'demo72@gmail.com3', 2072, 1, 'A123'),
(4, 4, 'ANISH GHIMIRE', 'kathmandu', 986675854, 'demo72@gmail.com4', 2072, 1, 'ANI123'),
(5, 5, 'ASHISH MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com5', 2072, 1, 'ASHIS123'),
(6, 6, 'AVINAYA  ACHARYA', 'kathmandu', 986675854, 'demo72@gmail.com6', 2072, 1, 'AVINAY123'),
(7, 7, 'BINA MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com7', 2072, 1, 'BIN123'),
(8, 8, 'BINISH MANANDHAR', 'kathmandu', 986675854, 'demo72@gmail.com8', 2072, 1, 'BINISH123'),
(9, 9, 'BINOD SUBEDI', 'kathmandu', 986675854, 'demo72@gmail.com9', 2072, 1, 'BI123'),
(10, 10, 'BINU GHIMIRE', 'kathmandu', 986675854, 'demo72@gmail.com10', 2072, 1, 'BI123'),
(11, 11, 'BISHOW SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com11', 2072, 1, 'BISHO123'),
(12, 12, 'HARI PRASAD CHAUDHARY', 'kathmandu', 986675854, 'demo72@gmail.com13', 2072, 1, 'H123'),
(13, 13, 'ISHWOR UPRETI', 'kathmandu', 986675854, 'ishwor@gmail.com', 2072, 1, 'ISH123'),
(14, 14, 'KIRAN KUMAR THARU', 'kathmandu', 986675854, 'demo72@gmail.com15', 2072, 1, 'KI123'),
(15, 15, 'LALIT  UPADHAYAY', 'kathmandu', 986675854, 'demo72@gmail.com16', 2072, 1, 'LALIT 123'),
(16, 16, 'MANOJ SARU', 'Surkhet', 986675854, 'manoj@gmail.com', 2072, 1, 'MANOJ123'),
(17, 17, 'NABIN KUMAR TIMALSINA', 'kathmandu', 986675854, 'demo72@gmail.com18', 2072, 1, 'NABIN123'),
(18, 18, 'NIBA TANDUKAR', 'kathmandu', 986675854, 'demo72@gmail.com19', 2072, 1, 'NIB123'),
(19, 19, 'NIMA K.C', 'kathmandu', 986675854, 'demo72@gmail.com20', 2072, 1, 'NIM123'),
(20, 20, 'NOOTAN BHATTARAI', 'kathmandu', 986675854, 'demo72@gmail.com21', 2072, 1, 'NOOTAN123'),
(21, 21, 'PRABHAKAR THAPA', 'kathmandu', 986675854, 'demo72@gmail.com22', 2072, 1, 'PRABH123'),
(22, 22, 'PRABIN  CHAUDHARY', 'kathmandu', 986675854, 'demo72@gmail.com23', 2072, 1, 'PRAB123'),
(23, 23, 'PRAGATI KANDEL', 'kathmandu', 986675854, 'demo72@gmail.com24', 2072, 1, 'PRAG123'),
(24, 24, 'PRAJW0L MAN SHAKYA', 'kathmandu', 986675854, 'demo72@gmail.com25', 2072, 1, 'PRAJ123'),
(25, 25, 'PRIYANKA SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com26', 2072, 1, 'PRIYANK123'),
(26, 26, 'PUSHPA KARKI', 'kathmandu', 986675854, 'demo72@gmail.com27', 2072, 1, 'PU123'),
(27, 27, 'RABIN MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com28', 2072, 1, 'RABI123'),
(28, 28, 'RAJESH  BHATTARAI', 'kathmandu', 986675854, 'hencyboymoh@gmail.com', 2072, 1, 'RAJ123'),
(29, 29, 'RAJIB DANGOL', 'kathmandu', 986675854, 'demo72@gmail.com30', 2072, 1, 'RA123'),
(30, 30, 'RANJIT SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com31', 2072, 1, 'RANJI123'),
(31, 31, 'ROJAN SEDHAI', 'kathmandu', 986675854, 'demo72@gmail.com32', 2072, 1, 'RO123'),
(32, 32, 'SABIN MAHAT', 'kathmandu', 986675854, 'demo72@gmail.com33', 2072, 1, 'S123'),
(33, 33, 'SACHIN  SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com34', 2072, 1, 'SACHIN123'),
(34, 34, 'SAGAR SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com35', 2072, 1, 'SAGA123'),
(35, 35, 'SAMVRANT SINGH THAPA', 'kathmandu', 986675854, 'demo72@gmail.com36', 2072, 1, 'SAMVRAN123'),
(36, 36, 'SHIRISHA MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com37', 2072, 1, 'SHIRISH123'),
(37, 37, 'SHRISTI SHRESTHA', 'kathmandu', 986675854, 'shristi@gmail.com', 2072, 1, 'SHRIST123'),
(38, 38, 'SOMIT NAKARMI', 'kathmandu', 986675854, 'demo72@gmail.com39', 2072, 1, 'SOM123'),
(39, 39, 'SUBASH  NAGARKOTI', 'kathmandu', 986675854, 'demo72@gmail.com40', 2072, 1, 'SU123'),
(40, 40, 'SUBHA LAXMI MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com41', 2072, 1, 'SU123'),
(41, 41, 'SUMIT BASNET', 'kathmandu', 986675854, 'demo72@gmail.com42', 2072, 1, 'SU123'),
(42, 42, 'UTPREKSHYA GAUTAM', 'kathmandu', 986675854, 'demo72@gmail.com43', 2072, 1, 'UTPREKS123'),
(43, 43, 'VINOD DANGI', 'kathmandu', 986675854, 'demo72@gmail.com44', 2072, 1, 'V123'),
(44, 44, 'YOGENDRA  BHATTARAI', 'kathmandu', 986675854, 'demo72@gmail.com45', 2072, 1, 'Y123'),
(45, 45, 'RAMESH BAYAK', 'kathmandu', 986675854, 'ramesh@gmail.com', 2072, 1, 'RA123'),
(46, 1, 'AAYUSH G.C. BHUJEL', 'kalanki', 98045332, 'demo13@gmail.com1', 2070, 1, 'AAY123'),
(47, 2, 'ANGEENA CHAWAL', 'kalanki', 98045332, 'demo13@gmail.com2', 2070, 1, 'ANGE123'),
(48, 3, 'ANIL SHRESTHA', 'kalanki', 98045332, 'demo13@gmail.com3', 2070, 1, 'ANI123'),
(49, 4, 'ANKIT TAMRAKAR ', 'kalanki', 98045332, 'demo13@gmail.com4', 2070, 1, 'ANKIT123'),
(50, 5, 'ANKIT BISTA', 'kalanki', 98045332, 'demo13@gmail.com5', 2070, 1, 'A123'),
(51, 6, 'ARUN LAMICHHANE', 'kalanki', 98045332, 'demo13@gmail.com6', 2070, 1, 'ARUN 123'),
(52, 7, 'ARUSH OLI', 'kalanki', 98045332, 'demo13@gmail.com7', 2070, 1, 'ARUS123'),
(53, 8, 'ASISH GIRI', 'kalanki', 98045332, 'demo13@gmail.com8', 2070, 1, '123'),
(54, 9, 'ATUL GHIMIRE', 'kalanki', 98045332, 'demo13@gmail.com9', 2070, 1, 'AT123'),
(55, 10, 'CHIRANJEEVI BUDHA', 'kalanki', 98045332, 'demo13@gmail.com10', 2070, 1, 'CHIRANJ123'),
(56, 11, 'DIPA GIRI', 'kalanki', 98045332, 'demo13@gmail.com11', 2070, 1, 'D123'),
(57, 12, 'DEEPA MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com12', 2070, 1, 'DEEP123'),
(58, 13, 'JEEVAN THAPA', 'kalanki', 98045332, 'demo13@gmail.com13', 2070, 1, 'JE123'),
(59, 14, 'LATA K.C.', 'kalanki', 98045332, 'demo13@gmail.com14', 2070, 1, 'LATA123'),
(60, 15, 'LAXMAN RAYMAJHI', 'kalanki', 98045332, 'demo13@gmail.com15', 2070, 1, 'LAXMA123'),
(61, 16, 'MANISH MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com16', 2070, 1, 'MANIS123'),
(62, 17, 'NEHA MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com17', 2070, 1, 'NEH123'),
(63, 18, 'NITISH DANGOL', 'kalanki', 98045332, 'demo13@gmail.com18', 2070, 1, 'NIT123'),
(64, 19, 'PARICHAYA PANDEY', 'kalanki', 98045332, 'demo13@gmail.com19', 2070, 1, 'PARICH123'),
(65, 20, 'PRAKASH BHATTARAI', 'kalanki', 98045332, 'demo13@gmail.com20', 2070, 1, 'PRAKASH123'),
(66, 21, 'PRAMISH MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com21', 2070, 1, 'PRAMIS123'),
(67, 22, 'PRASHANNA KHATRI', 'kalanki', 98045332, 'demo13@gmail.com22', 2070, 1, 'PRASHA123'),
(68, 23, 'RABIN SHRESTHA', 'kalanki', 98045332, 'demo13@gmail.com23', 2070, 1, 'RABI123'),
(69, 24, 'RAJAN JOSHI', 'kalanki', 98045332, 'demo13@gmail.com24', 2070, 1, 'R123'),
(70, 25, 'RAJU DHUNGANA', 'kalanki', 98045332, 'demo13@gmail.com25', 2070, 1, 'RAJ123'),
(71, 26, 'RAKESH THAPA', 'kalanki', 98045332, 'demo13@gmail.com26', 2070, 1, 'RA123'),
(72, 27, 'RASBINDRA BHATTARAI', 'kalanki', 98045332, 'demo13@gmail.com27', 2070, 1, 'RASBINDRA123'),
(73, 28, 'RAVI KANDEL', 'kalanki', 98045332, 'demo13@gmail.com28', 2070, 1, 'R123'),
(74, 29, 'ROHIN MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com29', 2070, 1, 'ROHI123'),
(75, 30, 'ROSHAN MANANDHAR', 'kalanki', 98045332, 'demo13@gmail.com30', 2070, 1, 'ROSHAN123'),
(76, 31, 'ROSHISH K.C.', 'kalanki', 98045332, 'demo13@gmail.com31', 2070, 1, 'RO123'),
(77, 32, 'SABANA MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com32', 2070, 1, 'SABAN123'),
(78, 33, 'SAGAR GHIMIRE', 'kalanki', 98045332, 'demo13@gmail.com33', 2070, 1, 'SAG123'),
(79, 34, 'SAMEER MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com34', 2070, 1, 'SAMEE123'),
(80, 35, 'SAMRAAT MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com35', 2070, 1, 'SAMRAA123'),
(81, 36, 'SANDHYA LAMICHHANE', 'kalanki', 98045332, 'demo13@gmail.com36', 2070, 1, 'SANDHYA 123'),
(82, 37, 'SANGAM ADHIKARI', 'kalanki', 98045332, 'demo13@gmail.com37', 2070, 1, 'SANGA123'),
(83, 38, 'SANKALPA PATHAK', 'kalanki', 98045332, 'demo13@gmail.com38', 2070, 1, 'SANKA123'),
(84, 39, 'SAUJANYA SHRESTHA', 'kalanki', 98045332, 'demo13@gmail.com39', 2070, 1, 'SAUJANY123'),
(85, 40, 'SHREE KRISHNA ADHIKARI', 'kalanki', 98045332, 'demo13@gmail.com40', 2070, 1, 'SH123'),
(86, 41, 'SUDAN BASNET', 'kalanki', 98045332, 'demo13@gmail.com41', 2070, 1, 'SU123'),
(87, 42, 'SUJAN MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com42', 2070, 1, 'SUJA123'),
(88, 43, 'SUSEN MAHARJAN', 'kalanki', 98045332, 'demo13@gmail.com43', 2070, 1, 'SUSE123'),
(89, 44, 'SUSMITA ITANI', 'kalanki', 98045332, 'demo13@gmail.com44', 2070, 1, 'SUS123'),
(90, 45, 'PARASHAR SAPKOTA', 'kalanki', 98045332, 'demo13@gmail.com45', 2070, 1, 'PARASH123'),
(91, 1, 'ANANDA SIGDEL', 'Chabahil', 98565751, 'demo71@gmail.com1', 2071, 1, 'ANA123'),
(92, 2, 'ANIL KUMAR KARKI', 'Chabahil', 98565751, 'demo71@gmail.com2', 2071, 1, 'A123'),
(93, 3, 'ANIL LAMA', 'Chabahil', 98565751, 'demo71@gmail.com3', 2071, 1, 'ANI123'),
(94, 4, 'ANISH KHANAL', 'Chabahil', 98565751, 'demo71@gmail.com4', 2071, 1, 'AN123'),
(95, 5, 'ANU HAMAL', 'Chabahil', 98565751, 'demo71@gmail.com5', 2071, 1, 'ANU123'),
(96, 6, 'ASHESH CHALISE', 'Chabahil', 98565751, 'demo71@gmail.com6', 2071, 1, 'ASHE123'),
(97, 7, 'ASHISH SUBEDI', 'Chabahil', 98565751, 'demo71@gmail.com7', 2071, 1, 'ASH123'),
(98, 8, 'ASHOK MAHARJAN', 'Chabahil', 98565751, 'demo71@gmail.com8', 2071, 1, 'ASHO123'),
(99, 9, 'ASMITA ACHARYA', 'Chabahil', 98565751, 'demo71@gmail.com9', 2071, 1, 'ASMI123'),
(100, 10, 'BHESH RAJ REGMI', 'Chabahil', 98565751, 'demo71@gmail.com10', 2071, 1, 'BHESH123'),
(101, 11, 'BIBEK SHREES', 'Chabahil', 98565751, 'demo71@gmail.com11', 2071, 1, 'BI123'),
(102, 12, 'BIKASH K.C.', 'Chabahil', 98565751, 'demo71@gmail.com12', 2071, 1, 'B123'),
(103, 13, 'BIKESH MAHARJAN', 'Chabahil', 98565751, 'demo71@gmail.com13', 2071, 1, 'BIKES123'),
(104, 14, 'DEVRAJ KHADKA', 'Chabahil', 98565751, 'demo71@gmail.com14', 2071, 1, 'DEV123'),
(105, 15, 'DHIRAJ DAHAL', 'Chabahil', 98565751, 'demo71@gmail.com15', 2071, 1, 'DH123'),
(106, 16, 'DIVYA PANDEY', 'Chabahil', 98565751, 'demo71@gmail.com16', 2071, 1, 'DI123'),
(107, 17, 'KAPIL BHATTARAI', 'Chabahil', 98565751, 'demo71@gmail.com17', 2071, 1, 'KAPIL123'),
(108, 18, 'KISHAN KHADKA', 'Chabahil', 98565751, 'demo71@gmail.com18', 2071, 1, 'KIS123'),
(109, 19, 'KUSHAL NEUPANE', 'Chabahil', 98565751, 'demo71@gmail.com19', 2071, 1, 'KUSH123'),
(110, 20, 'MATRIKA KOIRALA', 'Chabahil', 98565751, 'demo71@gmail.com20', 2071, 1, 'MATRI123'),
(111, 21, 'NISTHA SHRESTHA', 'Chabahil', 98565751, 'demo71@gmail.com21', 2071, 1, 'NISTH123'),
(112, 22, 'PRAKASH SHRESTHA', 'Chabahil', 98565751, 'demo71@gmail.com22', 2071, 1, 'PRAKAS123'),
(113, 23, 'RAMESH GIRI', 'Chabahil', 98565751, 'demo71@gmail.com23', 2071, 1, 'R123'),
(114, 24, 'RISHMA KHADKA', 'Chabahil', 98565751, 'demo71@gmail.com24', 2071, 1, 'RIS123'),
(115, 25, 'ROJINA NEUPANE', 'Chabahil', 98565751, 'demo71@gmail.com25', 2071, 1, 'ROJI123'),
(116, 26, 'SACHIN PANDEY', 'Chabahil', 98565751, 'demo71@gmail.com26', 2071, 1, 'SAC123'),
(117, 27, 'SAMEER ARYAL', 'Chabahil', 98565751, 'demo71@gmail.com27', 2071, 1, 'SA123'),
(118, 28, 'SANJEEV RIMAL', 'Chabahil', 98565751, 'demo71@gmail.com28', 2071, 1, 'SAN123'),
(119, 29, 'SANJIV THAPA', 'Chabahil', 98565751, 'demo71@gmail.com29', 2071, 1, 'SA123'),
(120, 30, 'SAURAV SITAULA', 'Chabahil', 98565751, 'demo71@gmail.com30', 2071, 1, 'SAUR123'),
(121, 31, 'SUDEEP BHADEL', 'Chabahil', 98565751, 'demo71@gmail.com31', 2071, 1, 'SUD123'),
(122, 32, 'SUDIP GIRI', 'Chabahil', 98565751, 'demo71@gmail.com32', 2071, 1, 'SUDIP123'),
(123, 33, 'SUDIP KARMACHARYA', 'Chabahil', 98565751, 'demo71@gmail.com33', 2071, 1, 'SUDIP K123'),
(124, 34, 'SUJAN GHIMIRE', 'Chabahil', 98565751, 'demo71@gmail.com34', 2071, 1, 'SUJ123'),
(125, 35, 'SUJAN KOIRALA', 'Chabahil', 98565751, 'demo71@gmail.com35', 2071, 1, 'SUJ123'),
(126, 36, 'SUMAN MAGAR', 'Chabahil', 98565751, 'demo71@gmail.com36', 2071, 1, 'S123'),
(127, 37, 'SUMAN SHRESTHA', 'Chabahil', 98565751, 'demo71@gmail.com37', 2071, 1, 'SUMA123'),
(128, 38, 'SUMIT SHAHI', 'Chabahil', 98565751, 'demo71@gmail.com38', 2071, 1, 'S123'),
(129, 39, 'SURAJ ACHARYA', 'Chabahil', 98565751, 'demo71@gmail.com39', 2071, 1, 'SUR123'),
(130, 40, 'SURENDRA PRATAP DHAMALA', 'Chabahil', 98565751, 'demo71@gmail.com40', 2071, 1, 'SUR123'),
(131, 41, 'SURESH KUMAR SHRESTHA', 'Chabahil', 98565751, 'demo71@gmail.com41', 2071, 1, 'SURESH123'),
(132, 42, 'SURESH NEUPANE', 'Chabahil', 98565751, 'demo71@gmail.com42', 2071, 1, 'SURE123'),
(133, 43, 'SUSHANT PANDEY', 'Chabahil', 98565751, 'demo71@gmail.com43', 2071, 1, 'SUSH123'),
(134, 44, 'SUSHMA PURI', 'Chabahil', 98565751, 'demo71@gmail.com44', 2071, 1, 'S123'),
(135, 45, 'SUYOG MANANDHAR', 'Chabahil', 98565751, 'demo71@gmail.com45', 2071, 1, 'SUYOG123'),
(136, 46, 'TANK PRASAD BHANDARI', 'Chabahil', 98565751, 'demo71@gmail.com46', 2071, 1, 'TANK123'),
(137, 47, 'TUKANATH PAUDEL', 'Chabahil', 98565751, 'demo71@gmail.com47', 2071, 1, 'TUKAN123'),
(138, 48, 'UJJWAL SILWAL', 'Chabahil', 98565751, 'demo71@gmail.com48', 2071, 1, 'UJJ123'),
(139, 1, 'Abash Shah', 'Balaju', 986658545, 'demo73@gmail.com1', 2073, 1, 'Abas123'),
(140, 2, 'Abinash Gaire', 'Balaju', 986658545, 'demo73@gmail.com2', 2073, 1, 'Abi123'),
(141, 3, 'Anil Pandey', 'Balaju', 986658545, 'demo73@gmail.com3', 2073, 1, 'A123'),
(142, 4, 'Anusuya Sijapati', 'Balaju', 986658545, 'demo73@gmail.com4', 2073, 1, 'Anusuy123'),
(143, 5, 'Ashan Ghimire', 'Balaju', 986658545, 'demo73@gmail.com5', 2073, 1, 'Ash123'),
(144, 6, 'Ashish Bhattarai ', 'Balaju', 986658545, 'demo73@gmail.com6', 2073, 1, 'Ashish 123'),
(145, 7, 'Ashray Dahal', 'Balaju', 986658545, 'demo73@gmail.com7', 2073, 1, 'As123'),
(146, 8, 'Asmita Bhusal', 'Balaju', 986658545, 'demo73@gmail.com8', 2073, 1, 'Asm123'),
(147, 9, 'Basant Rai', 'Balaju', 986658545, 'demo73@gmail.com9', 2073, 1, 'Ba123'),
(148, 10, 'Bibash Shrestha ', 'Balaju', 986658545, 'demo73@gmail.com10', 2073, 1, 'Bibash123'),
(149, 11, 'Bibek Maharjan ', 'Balaju', 986658545, 'demo73@gmail.com11', 2073, 1, 'Bibek123'),
(150, 12, 'Damodar Bastakoti', 'Balaju', 986658545, 'demo73@gmail.com12', 2073, 1, 'Damodar123'),
(151, 13, 'Dipesh Dulal', 'Balaju', 986658545, 'demo73@gmail.com13', 2073, 1, 'Di123'),
(152, 14, 'Divya Karna', 'Balaju', 986658545, 'demo73@gmail.com14', 2073, 1, 'D123'),
(153, 15, 'Gajendra Kumar Mahato', 'Balaju', 986658545, 'demo73@gmail.com15', 2073, 1, 'Gaje123'),
(154, 16, 'Inasha Rajbanshi', 'Balaju', 986658545, 'demo73@gmail.com16', 2073, 1, 'Inasha123'),
(155, 17, 'Jabin Khatri Manandhar', 'Balaju', 986658545, 'demo73@gmail.com17', 2073, 1, 'Jabin Khatri123'),
(156, 18, 'Junu Shrestha', 'Balaju', 986658545, 'demo73@gmail.com18', 2073, 1, 'Jun123'),
(157, 19, 'Krishna Bahadur Khadka', 'Balaju', 986658545, 'demo73@gmail.com19', 2073, 1, 'Krishna Baha123'),
(158, 20, 'Miniyan Parajuli          ', 'Balaju', 986658545, 'demo73@gmail.com20', 2073, 1, 'Miniyan123'),
(159, 21, 'Nirajan Kumar Bista', 'Balaju', 986658545, 'demo73@gmail.com21', 2073, 1, 'Nira123'),
(160, 22, 'Pralhad Kharel', 'Balaju', 986658545, 'demo73@gmail.com22', 2073, 1, 'Pral123'),
(161, 23, 'Pratigya Basnet', 'Balaju', 986658545, 'demo73@gmail.com23', 2073, 1, 'Prati123'),
(162, 24, 'Puja Shrestha', 'Balaju', 986658545, 'demo73@gmail.com24', 2073, 1, 'Puj123'),
(163, 25, 'Rabin Ghimire ', 'Balaju', 986658545, 'demo73@gmail.com25', 2073, 1, 'Rabi123'),
(164, 26, 'Rachana Poudel', 'Balaju', 986658545, 'demo73@gmail.com26', 2073, 1, 'Rach123'),
(165, 27, 'Reju Thapaliya', 'Balaju', 986658545, 'demo73@gmail.com27', 2073, 1, 'Reju123'),
(166, 28, 'Rohan KC', 'Balaju', 986658545, 'demo73@gmail.com28', 2073, 1, 'Roh123'),
(167, 29, 'Rohan Shahi', 'Balaju', 986658545, 'demo73@gmail.com29', 2073, 1, 'R123'),
(168, 30, 'Sabin Tiwari', 'Balaju', 986658545, 'demo73@gmail.com30', 2073, 1, 'Sa123'),
(169, 31, 'Sagun Shrestha', 'Balaju', 986658545, 'demo73@gmail.com31', 2073, 1, 'Sagu123'),
(170, 32, 'Sajjan Wagle', 'Balaju', 986658545, 'demo73@gmail.com32', 2073, 1, 'Sa123'),
(171, 33, 'Salim Maharjan', 'Balaju', 986658545, 'demo73@gmail.com33', 2073, 1, 'Sali123'),
(172, 34, 'Samiskhya Dhakal', 'Balaju', 986658545, 'demo73@gmail.com34', 2073, 1, 'Samisk123'),
(173, 35, 'Sandesh Dhakal                  ', 'Balaju', 986658545, 'demo73@gmail.com35', 2073, 1, 'Sa123'),
(174, 36, 'Satkul Giri', 'Balaju', 986658545, 'demo73@gmail.com36', 2073, 1, 'S123'),
(175, 37, 'Shashank Pandey', 'Balaju', 986658545, 'demo73@gmail.com37', 2073, 1, 'Shash123'),
(176, 38, 'Shashi Sharma', 'Balaju', 986658545, 'demo73@gmail.com38', 2073, 1, 'Sha123'),
(177, 39, 'Shaya Adhikari', 'Balaju', 986658545, 'demo73@gmail.com39', 2073, 1, 'Shay123'),
(178, 40, 'Shuzita Phuyal', 'Balaju', 986658545, 'demo73@gmail.com40', 2073, 1, 'Shuz123'),
(179, 41, 'Sujan Lamsal', 'Balaju', 986658545, 'demo73@gmail.com41', 2073, 1, 'Su123'),
(180, 42, 'Sujeet Singh', 'Balaju', 986658545, 'demo73@gmail.com42', 2073, 1, 'Su123'),
(181, 43, 'Suman Rasaili', 'Balaju', 986658545, 'demo73@gmail.com43', 2073, 1, 'Sum123'),
(182, 44, 'Suraj Sharma', 'Balaju', 986658545, 'demo73@gmail.com44', 2073, 1, 'Su123'),
(183, 45, 'Swostik Gautam                      ', 'Balaju', 986658545, 'demo73@gmail.com45', 2073, 1, 'Swosti123'),
(184, 46, 'Utsab Raj Khadka', 'Balaju', 986658545, 'demo73@gmail.com46', 2073, 1, 'Utsab 123'),
(185, 47, 'Yogesh Bastola', 'Balaju', 986658545, 'demo73@gmail.com47', 2073, 1, 'Yoge123'),
(186, 1, 'AADAT SHRESTHA', 'Bafal', 984575454, 'demo74@gmail.com1', 2074, 1, 'AADA123'),
(187, 2, 'ANGEL  D.C', 'Bafal', 984575454, 'demo74@gmail.com2', 2074, 1, 'AN123'),
(188, 3, 'ANIL BIKRAM  THAPA', 'Bafal', 984575454, 'demo74@gmail.com3', 2074, 1, 'ANI123'),
(189, 4, 'ANISH TIWARI', 'Bafal', 984575454, 'demo74@gmail.com4', 2074, 1, 'AN123'),
(190, 5, 'ASIM  PANDEY', 'Bafal', 984575454, 'demo74@gmail.com5', 2074, 1, 'AS123'),
(191, 6, 'BIBEK  ACHARYA', 'Bafal', 984575454, 'demo74@gmail.com6', 2074, 1, 'BIBE123'),
(192, 7, 'BIBEK GIRI', 'Bafal', 984575454, 'demo74@gmail.com7', 2074, 1, 'BI123'),
(193, 8, 'BIBESH SHRESTHA', 'Bafal', 984575454, 'demo74@gmail.com8', 2074, 1, 'BIBES123'),
(194, 9, 'BIDUR ARYAL', 'Bafal', 984575454, 'demo74@gmail.com9', 2074, 1, 'B123'),
(195, 10, 'BIJAY POKHEREL', 'Bafal', 984575454, 'demo74@gmail.com10', 2074, 1, 'BIJA123'),
(196, 11, 'BIPIN BHATTARAI', 'Bafal', 984575454, 'demo74@gmail.com11', 2074, 1, 'BIPIN123'),
(197, 12, 'DIBYANI BHADTAL', 'Bafal', 984575454, 'demo74@gmail.com12', 2074, 1, 'DIBYA123'),
(198, 13, 'DIPAN  RANA MAGAR', 'Bafal', 984575454, 'demo74@gmail.com13', 2074, 1, 'D123'),
(199, 14, 'GARIMA  JOSHI', 'Bafal', 984575454, 'demo74@gmail.com14', 2074, 1, 'GAR123'),
(200, 15, 'GYANAB  SHARMA', 'Bafal', 984575454, 'demo74@gmail.com15', 2074, 1, 'GYAN123'),
(201, 16, 'KARINA SHAKYA', 'Bafal', 984575454, 'demo74@gmail.com16', 2074, 1, 'KAR123'),
(202, 17, 'LAKAS MAHARJAN', 'Bafal', 984575454, 'demo74@gmail.com17', 2074, 1, 'LAKA123'),
(203, 18, 'MADAN ADHIKARI', 'Bafal', 984575454, 'demo74@gmail.com18', 2074, 1, 'MADA123'),
(204, 19, 'MAHESH KUMAR DAS', 'Bafal', 984575454, 'demo74@gmail.com19', 2074, 1, 'MAHESH123'),
(205, 20, 'MANISH BHATTARAI', 'Bafal', 984575454, 'demo74@gmail.com20', 2074, 1, 'MANISH123'),
(206, 21, 'MANISHA PANDEY', 'Bafal', 984575454, 'demo74@gmail.com21', 2074, 1, 'MANI123'),
(207, 22, 'MANOJ  PANDEY', 'Bafal', 984575454, 'demo74@gmail.com22', 2074, 1, 'MAN123'),
(208, 23, 'MITHUN TAMANG', 'Bafal', 984575454, 'demo74@gmail.com23', 2074, 1, 'MIT123'),
(209, 24, 'NAVIN TIMALSINA', 'Bafal', 984575454, 'demo74@gmail.com24', 2074, 1, 'NAVIN123'),
(210, 25, 'NIRVIK K.C', 'Bafal', 984575454, 'demo74@gmail.com25', 2074, 1, 'NI123'),
(211, 26, 'NISHESH DANGOL', 'Bafal', 984575454, 'demo74@gmail.com26', 2074, 1, 'NISH123'),
(212, 27, 'PROGRESS JUNG THAPA', 'Bafal', 984575454, 'demo74@gmail.com27', 2074, 1, 'PROGRESS 123'),
(213, 28, 'RAJEEV KHADKA', 'Bafal', 984575454, 'demo74@gmail.com28', 2074, 1, 'RAJ123'),
(214, 29, 'RAMESH POKHREL', 'Bafal', 984575454, 'demo74@gmail.com29', 2074, 1, 'RAME123'),
(215, 30, 'RICHA RAI', 'Bafal', 984575454, 'demo74@gmail.com30', 2074, 1, 'RICH123'),
(216, 31, 'RUDRA PRASAD KANDEL', 'Bafal', 984575454, 'demo74@gmail.com31', 2074, 1, 'RUDRA PRA123'),
(217, 32, 'SABIN SHRESTHA', 'Bafal', 984575454, 'demo74@gmail.com32', 2074, 1, 'SABI123'),
(218, 33, 'SADIKSHYA MAHARJAN', 'Bafal', 984575454, 'demo74@gmail.com33', 2074, 1, 'SADIKSHY123'),
(219, 34, 'SAFAL KUMAR  MAHAT', 'Bafal', 984575454, 'demo74@gmail.com34', 2074, 1, 'SAFA123'),
(220, 35, 'SANDESH PUDASAINI', 'Bafal', 984575454, 'demo74@gmail.com35', 2074, 1, 'SANDESH123'),
(221, 36, 'SANDIP YADAV', 'Bafal', 984575454, 'demo74@gmail.com36', 2074, 1, 'SA123'),
(222, 37, 'SARASWOTI GUPTA', 'Bafal', 984575454, 'demo74@gmail.com37', 2074, 1, 'SARAS123'),
(223, 38, 'SAUGAT TIWARI', 'Bafal', 984575454, 'demo74@gmail.com38', 2074, 1, 'SAU123'),
(224, 39, 'SAURAV DANGOL', 'Bafal', 984575454, 'demo74@gmail.com39', 2074, 1, 'SAU123'),
(225, 40, 'SHREEYA MANARJAN', 'Bafal', 984575454, 'demo74@gmail.com40', 2074, 1, 'SHREEY123'),
(226, 41, 'SOUVENIR KUMAR KHADKA', 'Bafal', 984575454, 'demo74@gmail.com41', 2074, 1, 'SOUVEN123'),
(227, 42, 'SUMIT POUDEL', 'Bafal', 984575454, 'demo74@gmail.com42', 2074, 1, 'SU123'),
(228, 43, 'SURAJ RAJ  BOHARA', 'Bafal', 984575454, 'demo74@gmail.com43', 2074, 1, 'SU123'),
(229, 44, 'SUSMITA GHIMIRE', 'Bafal', 984575454, 'demo74@gmail.com44', 2074, 1, 'SUSMI123'),
(230, 1, 'ANITA BAIDHYA', 'Kathmandu', 98665784, 'demo1@gmail.com1', 2068, 1, 'ANI123'),
(231, 2, 'Nilav Khatiwoda', 'Kathmandu', 98665784, 'demo1@gmail.com2', 2068, 1, 'Nilav123'),
(232, 3, 'Sudip Sedhain', 'Kathmandu', 98665784, 'demo1@gmail.com3', 2068, 1, 'Sud123'),
(233, 4, 'Ganesh Bhusal', 'Kathmandu', 98665784, 'demo1@gmail.com4', 2068, 1, 'Gan123'),
(234, 5, 'Rajan Kandel', 'Kathmandu', 98665784, 'demo1@gmail.com5', 2068, 1, 'Ra123'),
(235, 6, 'Tabasum Bannu', 'Kathmandu', 98665784, 'demo1@gmail.com6', 2068, 1, 'Tab123'),
(236, 7, 'Silaka Thapa', 'Kathmandu', 98665784, 'demo1@gmail.com7', 2068, 1, 'Si123'),
(237, 8, 'Nalin Adhikari', 'Kathmandu', 98665784, 'demo1@gmail.com8', 2068, 1, 'Nali123'),
(238, 9, 'Kapil Maharjan', 'Kathmandu', 98665784, 'demo1@gmail.com9', 2068, 1, 'Kapi123'),
(239, 10, 'Deependra Timilsina', 'Kathmandu', 98665784, 'demo1@gmail.com10', 2068, 1, 'Deependra123'),
(240, 11, 'Krishna Kharel', 'Kathmandu', 98665784, 'demo1@gmail.com11', 2068, 1, 'Kris123'),
(241, 12, 'Rabindra Neupane', 'Kathmandu', 98665784, 'demo1@gmail.com12', 2068, 1, 'Rabind123'),
(242, 13, 'Sabin Parjuli', 'Kathmandu', 98665784, 'demo1@gmail.com13', 2068, 1, 'Sab123'),
(243, 14, 'Prabin Maharjan', 'Kathmandu', 98665784, 'demo1@gmail.com14', 2068, 1, 'Prabi123'),
(244, 15, 'Pukar Uprety', 'Kathmandu', 98665784, 'demo1@gmail.com15', 2068, 1, 'Pu123'),
(245, 16, 'Pinky Jaiswal', 'Kathmandu', 98665784, 'demo1@gmail.com16', 2068, 1, 'Pin123'),
(246, 17, 'Dev Ratna Maharjan', 'Kathmandu', 98665784, 'demo1@gmail.com17', 2068, 1, 'Dev123'),
(247, 18, 'BIKRAM K.C', 'Kathmandu', 98665784, 'demo1@gmail.com18', 2068, 1, 'BI123'),
(248, 1, 'Aakesh Kunwar', 'Kathmandu', 98665754, 'demo12@gmail.com1', 2069, 1, 'Aak123'),
(249, 2, 'Asmita Shrestha', 'Kathmandu', 98665754, 'demo12@gmail.com2', 2069, 1, 'Asmit123'),
(250, 3, 'Avishek Manandhar', 'Kathmandu', 98665754, 'demo12@gmail.com3', 2069, 1, 'Avishek123'),
(251, 4, 'Avista Rijal', 'Kathmandu', 98665754, 'demo12@gmail.com4', 2069, 1, 'Av123'),
(252, 5, 'Bal Gopal Gadtaula', 'Kathmandu', 98665754, 'demo12@gmail.com5', 2069, 1, 'Bal123'),
(253, 6, 'Bikesh Maharjan', 'Kathmandu', 98665754, 'demo12@gmail.com6', 2069, 1, 'Bikes123'),
(254, 7, 'Binod Sharma', 'Kathmandu', 98665754, 'demo12@gmail.com7', 2069, 1, 'Bi123'),
(255, 8, 'Chirayu Gautam', 'Kathmandu', 98665754, 'demo12@gmail.com8', 2069, 1, 'Chir123'),
(256, 9, 'Deep Chandra Regmi', 'Kathmandu', 98665754, 'demo12@gmail.com9', 2069, 1, 'Dee123'),
(257, 10, 'Deependra Bist', 'Kathmandu', 98665754, 'demo12@gmail.com10', 2069, 1, 'Deep123'),
(258, 11, 'Deepesh Ghimire', 'Kathmandu', 98665754, 'demo12@gmail.com11', 2069, 1, 'Deepe123'),
(259, 12, 'Guru Prasad  Bhattarai', 'Kathmandu', 98665754, 'demo12@gmail.com12', 2069, 1, 'Gu123'),
(260, 13, 'Krishna Sodari', 'Kathmandu', 98665754, 'demo12@gmail.com13', 2069, 1, 'Kris123'),
(261, 14, 'Nakul Raj Thapa', 'Kathmandu', 98665754, 'demo12@gmail.com14', 2069, 1, 'Nakul123'),
(262, 15, 'Naresh Raj Pant', 'Kathmandu', 98665754, 'demo12@gmail.com15', 2069, 1, 'Nares123'),
(263, 16, 'Naw Raj Bhatt', 'Kathmandu', 98665754, 'demo12@gmail.com16', 2069, 1, 'Naw123'),
(264, 17, 'Prakash Pokhrel', 'Kathmandu', 98665754, 'demo12@gmail.com17', 2069, 1, 'Praka123'),
(265, 18, 'Prashant Gautam', 'Kathmandu', 98665754, 'demo12@gmail.com18', 2069, 1, 'Prash123'),
(266, 19, 'Pratima Adhikari', 'Kathmandu', 98665754, 'demo12@gmail.com19', 2069, 1, 'Pratim123'),
(267, 20, 'Prithu Raj Parajuli', 'Kathmandu', 98665754, 'demo12@gmail.com20', 2069, 1, 'Prit123'),
(268, 21, 'Ravi Singh Thakuri', 'Kathmandu', 98665754, 'demo12@gmail.com21', 2069, 1, 'Rav123'),
(269, 22, 'Rishav Gautam', 'Kathmandu', 98665754, 'demo12@gmail.com22', 2069, 1, 'Ris123'),
(270, 23, 'Rojina Kauchha', 'Kathmandu', 98665754, 'demo12@gmail.com23', 2069, 1, 'Roji123'),
(271, 24, 'Samikshya Maharjan', 'Kathmandu', 98665754, 'demo12@gmail.com24', 2069, 1, 'Samikshy123'),
(272, 25, 'Samin Maharjan', 'Kathmandu', 98665754, 'demo12@gmail.com25', 2069, 1, 'Sami123'),
(273, 26, 'Santosh Shrestha', 'Kathmandu', 98665754, 'demo12@gmail.com26', 2069, 1, 'Santos123'),
(274, 27, 'Sarmistha Das', 'Kathmandu', 98665754, 'demo12@gmail.com27', 2069, 1, 'Sar123'),
(275, 28, 'Saroj Duwadi', 'Kathmandu', 98665754, 'demo12@gmail.com28', 2069, 1, 'Sa123'),
(276, 29, 'Shibarjan Giri', 'Kathmandu', 98665754, 'demo12@gmail.com29', 2069, 1, 'Shib123'),
(277, 30, 'Sujan Maharjan', 'Kathmandu', 98665754, 'demo12@gmail.com30', 2069, 1, 'Suja123'),
(278, 31, 'Sumit Lamsal', 'Kathmandu', 98665754, 'demo12@gmail.com31', 2069, 1, 'Su123'),
(279, 32, 'Suraj Shrestha', 'Kathmandu', 98665754, 'demo12@gmail.com32', 2069, 1, 'Sura123'),
(280, 33, 'Surya Prasad Poudel', 'Kathmandu', 98665754, 'demo12@gmail.com33', 2069, 1, 'Sury123'),
(281, 34, 'Sushma Shrestha', 'Kathmandu', 98665754, 'demo12@gmail.com34', 2069, 1, 'Sushm123'),
(282, 35, 'Uttam Giri', 'Kathmandu', 98665754, 'demo12@gmail.com35', 2069, 1, 'Ut123'),
(283, 36, 'Yudip Khaniya', 'Kathmandu', 98665754, 'demo12@gmail.com36', 2069, 1, 'Yud123');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `tname` varchar(50) NOT NULL,
  `taddress` varchar(50) NOT NULL,
  `tcontact` varchar(50) NOT NULL,
  `temail` varchar(254) NOT NULL,
  `tpassword` varchar(100) NOT NULL,
  `tposition` varchar(50) NOT NULL,
  `tfaculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `tid`, `tname`, `taddress`, `tcontact`, `temail`, `tpassword`, `tposition`, `tfaculty_id`) VALUES
(1, 1, 'Dabbal Singh Mahara', 'Kalanki', '9808765645', 'dabbal@gmail.com', '123456', 'HOD', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_submit`
--
ALTER TABLE `assignment_submit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_daily`
--
ALTER TABLE `attendance_daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_monthly`
--
ALTER TABLE `attendance_monthly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_semester`
--
ALTER TABLE `attendance_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notics`
--
ALTER TABLE `notics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_psid_id_84fc4353_fk_student_id` (`psid_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_sfaculty_id_fd0d564b_fk_faculty_id` (`sfaculty_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_tfaculty_id_31f4640f_fk_faculty_id` (`tfaculty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `assignment_submit`
--
ALTER TABLE `assignment_submit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `attendance_daily`
--
ALTER TABLE `attendance_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `attendance_monthly`
--
ALTER TABLE `attendance_monthly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_semester`
--
ALTER TABLE `attendance_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notics`
--
ALTER TABLE `notics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_psid_id_84fc4353_fk_student_id` FOREIGN KEY (`psid_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_sfaculty_id_fd0d564b_fk_faculty_id` FOREIGN KEY (`sfaculty_id`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_tfaculty_id_31f4640f_fk_faculty_id` FOREIGN KEY (`tfaculty_id`) REFERENCES `faculty` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
