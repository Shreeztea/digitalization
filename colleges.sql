-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 02:39 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

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
(9, 2, 'BSCCSIT', 2072, 'Second Assignment', 'CProgramming', '2019-06-25', ''),
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
(45, 1, 45, 'RAMESH BAYAK', 'ADBMS', 4, NULL);

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
(225, 45, 'RAMESH BAYAK', '2019-06-30', 1, 'BSCCSIT', 2072);

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
(72, 'Can view notics', 18, 'view_notics'),
(73, 'Can add routine', 19, 'add_routine'),
(74, 'Can change routine', 19, 'change_routine'),
(75, 'Can delete routine', 19, 'delete_routine'),
(76, 'Can view routine', 19, 'view_routine');

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
  `object_id` longtext DEFAULT NULL,
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
(19, 'routine', 'routine'),
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
(51, 'notics', '0005_auto_20190627_1103', '2019-06-27 05:19:09.505076'),
(52, 'routine', '0001_initial', '2019-08-03 10:58:08.496807');

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
('rrudgwqkgp2gbg5mb4mjvv569ik2m0sh', 'OGRiZDRkMGUzYmJkMmI5ZTdlZmUyYTA1ZjhhOThiNDU2ZmVhZDcyMDp7InVzZXJfZW1haWwiOiJkYWJiYWxAZ21haWwuY29tIiwidXNlcl9uYW1lIjoiRGFiYmFsIFNpbmdoIE1haGFyYSIsInRpZCI6MSwidXNlcl9mYWN1bHR5aWQiOjF9', '2019-07-05 06:38:14.365252'),
('u57mevemm1fbkzsjdlriaf16a9qgf5w2', 'M2Y0ZWI2YTg1ZTBjMjc4ODVlMWQ2YzgzYmVkNTMyMzMwYjc3MmI4MTp7InVzZXJfZW1haWwiOiJkYWJiYWxAZ21haWwuY29tIiwidXNlcl9uYW1lIjoiRGFiYmFsIFNpbmdoIE1haGFyYSIsInRpZCI6MSwidXNlcl9mYWN1bHR5aWQiOjEsInBvc2l0aW9uIjoiSE9EIn0=', '2019-08-17 10:57:44.345114');

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
(1, 148, 'First', 'Final', 'All', 372, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(2, 149, 'First', 'Final', 'All', 367, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(3, 150, 'First', 'Final', 'All', 407, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(4, 151, 'First', 'Final', 'All', 372, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(5, 152, 'First', 'Final', 'All', 376, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(6, 153, 'First', 'Final', 'All', 353, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(7, 154, 'First', 'Final', 'All', 386, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(8, 155, 'First', 'Final', 'All', 382, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(9, 156, 'First', 'Final', 'All', 367, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(10, 157, 'First', 'Final', 'All', 380, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(11, 158, 'First', 'Final', 'All', 370, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(12, 159, 'First', 'Final', 'All', 360, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(13, 160, 'First', 'Final', 'All', 375, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(14, 161, 'First', 'Final', 'All', 378, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(15, 162, 'First', 'Final', 'All', 407, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(16, 163, 'First', 'Final', 'All', 367, 'BSCCSIT', 2072, 'MANOJ SARU'),
(17, 164, 'First', 'Final', 'All', 405, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(18, 165, 'First', 'Final', 'All', 404, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(19, 166, 'First', 'Final', 'All', 369, 'BSCCSIT', 2072, 'NIMA K.C'),
(20, 167, 'First', 'Final', 'All', 362, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(21, 168, 'First', 'Final', 'All', 383, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(22, 169, 'First', 'Final', 'All', 338, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(23, 170, 'First', 'Final', 'All', 401, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(24, 171, 'First', 'Final', 'All', 358, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(25, 172, 'First', 'Final', 'All', 360, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(26, 173, 'First', 'Final', 'All', 354, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(27, 174, 'First', 'Final', 'All', 253, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(28, 175, 'First', 'Final', 'All', 347, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(29, 176, 'First', 'Final', 'All', 380, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(30, 177, 'First', 'Final', 'All', 414, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(31, 178, 'First', 'Final', 'All', 386, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(32, 179, 'First', 'Final', 'All', 379, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(33, 180, 'First', 'Final', 'All', 254, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(34, 181, 'First', 'Final', 'All', 396, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(35, 182, 'First', 'Final', 'All', 361, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(36, 183, 'First', 'Final', 'All', 392, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(37, 184, 'First', 'Final', 'All', 413, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(38, 185, 'First', 'Final', 'All', 388, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(39, 186, 'First', 'Final', 'All', 390, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(40, 187, 'First', 'Final', 'All', 396, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(41, 188, 'First', 'Final', 'All', 394, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(42, 189, 'First', 'Final', 'All', 418, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(43, 190, 'First', 'Final', 'All', 397, 'BSCCSIT', 2072, 'VINOD DANGI'),
(44, 191, 'First', 'Final', 'All', 404, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(45, 192, 'First', 'Final', 'All', 375, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(46, 148, 'Second', 'Final', 'All', 438, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(47, 149, 'Second', 'Final', 'All', 397, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(48, 150, 'Second', 'Final', 'All', 448, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(49, 151, 'Second', 'Final', 'All', 328, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(50, 152, 'Second', 'Final', 'All', 344, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(51, 153, 'Second', 'Final', 'All', 343, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(52, 154, 'Second', 'Final', 'All', 427, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(53, 155, 'Second', 'Final', 'All', 461, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(54, 156, 'Second', 'Final', 'All', 414, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(55, 157, 'Second', 'Final', 'All', 426, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(56, 158, 'Second', 'Final', 'All', 429, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(57, 159, 'Second', 'Final', 'All', 403, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(58, 160, 'Second', 'Final', 'All', 400, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(59, 161, 'Second', 'Final', 'All', 353, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(60, 162, 'Second', 'Final', 'All', 449, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(61, 163, 'Second', 'Final', 'All', 421, 'BSCCSIT', 2072, 'MANOJ SARU'),
(62, 164, 'Second', 'Final', 'All', 449, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(63, 165, 'Second', 'Final', 'All', 461, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(64, 166, 'Second', 'Final', 'All', 432, 'BSCCSIT', 2072, 'NIMA K.C'),
(65, 167, 'Second', 'Final', 'All', 375, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(66, 168, 'Second', 'Final', 'All', 431, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(67, 169, 'Second', 'Final', 'All', 355, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(68, 170, 'Second', 'Final', 'All', 463, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(69, 171, 'Second', 'Final', 'All', 386, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(70, 172, 'Second', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(71, 173, 'Second', 'Final', 'All', 433, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(72, 174, 'Second', 'Final', 'All', 319, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(73, 175, 'Second', 'Final', 'All', 415, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(74, 176, 'Second', 'Final', 'All', 419, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(75, 177, 'Second', 'Final', 'All', 411, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(76, 178, 'Second', 'Final', 'All', 352, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(77, 179, 'Second', 'Final', 'All', 431, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(78, 180, 'Second', 'Final', 'All', 167, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(79, 181, 'Second', 'Final', 'All', 446, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(80, 182, 'Second', 'Final', 'All', 272, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(81, 183, 'Second', 'Final', 'All', 443, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(82, 184, 'Second', 'Final', 'All', 415, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(83, 185, 'Second', 'Final', 'All', 401, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(84, 186, 'Second', 'Final', 'All', 334, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(85, 187, 'Second', 'Final', 'All', 446, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(86, 188, 'Second', 'Final', 'All', 419, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(87, 189, 'Second', 'Final', 'All', 484, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(88, 190, 'Second', 'Final', 'All', 384, 'BSCCSIT', 2072, 'VINOD DANGI'),
(89, 191, 'Second', 'Final', 'All', 440, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(90, 192, 'Second', 'Final', 'All', 403, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(91, 148, 'Third', 'Final', 'All', 344, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(92, 149, 'Third', 'Final', 'All', 343, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(93, 150, 'Third', 'Final', 'All', 364, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(94, 151, 'Third', 'Final', 'All', 354, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(95, 152, 'Third', 'Final', 'All', 337, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(96, 153, 'Third', 'Final', 'All', 325, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(97, 154, 'Third', 'Final', 'All', 363, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(98, 155, 'Third', 'Final', 'All', 358, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(99, 156, 'Third', 'Final', 'All', 343, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(100, 157, 'Third', 'Final', 'All', 348, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(101, 158, 'Third', 'Final', 'All', 332, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(102, 159, 'Third', 'Final', 'All', 344, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(103, 160, 'Third', 'Final', 'All', 357, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(104, 161, 'Third', 'Final', 'All', 341, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(105, 162, 'Third', 'Final', 'All', 370, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(106, 163, 'Third', 'Final', 'All', 340, 'BSCCSIT', 2072, 'MANOJ SARU'),
(107, 164, 'Third', 'Final', 'All', 367, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(108, 165, 'Third', 'Final', 'All', 387, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(109, 166, 'Third', 'Final', 'All', 378, 'BSCCSIT', 2072, 'NIMA K.C'),
(110, 167, 'Third', 'Final', 'All', 350, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(111, 168, 'Third', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(112, 169, 'Third', 'Final', 'All', 335, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(113, 170, 'Third', 'Final', 'All', 388, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(114, 171, 'Third', 'Final', 'All', 320, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(115, 172, 'Third', 'Final', 'All', 360, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(116, 173, 'Third', 'Final', 'All', 359, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(117, 174, 'Third', 'Final', 'All', 318, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(118, 175, 'Third', 'Final', 'All', 337, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(119, 176, 'Third', 'Final', 'All', 369, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(120, 177, 'Third', 'Final', 'All', 360, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(121, 178, 'Third', 'Final', 'All', 358, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(122, 179, 'Third', 'Final', 'All', 386, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(123, 180, 'Third', 'Final', 'All', 329, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(124, 181, 'Third', 'Final', 'All', 356, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(125, 182, 'Third', 'Final', 'All', 338, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(126, 183, 'Third', 'Final', 'All', 384, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(127, 184, 'Third', 'Final', 'All', 376, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(128, 185, 'Third', 'Final', 'All', 357, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(129, 186, 'Third', 'Final', 'All', 350, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(130, 187, 'Third', 'Final', 'All', 370, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(131, 188, 'Third', 'Final', 'All', 345, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(132, 189, 'Third', 'Final', 'All', 389, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(133, 190, 'Third', 'Final', 'All', 267, 'BSCCSIT', 2072, 'VINOD DANGI'),
(134, 191, 'Third', 'Final', 'All', 374, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(135, 192, 'Third', 'Final', 'All', 375, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(136, 148, 'Fourth', 'Final', 'All', 380, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(137, 149, 'Fourth', 'Final', 'All', 363, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(138, 150, 'Fourth', 'Final', 'All', 394, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(139, 151, 'Fourth', 'Final', 'All', 312, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(140, 152, 'Fourth', 'Final', 'All', 281, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(141, 153, 'Fourth', 'Final', 'All', 329, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(142, 154, 'Fourth', 'Final', 'All', 403, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(143, 155, 'Fourth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(144, 156, 'Fourth', 'Final', 'All', 368, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(145, 157, 'Fourth', 'Final', 'All', 370, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(146, 158, 'Fourth', 'Final', 'All', 318, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(147, 159, 'Fourth', 'Final', 'All', 340, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(148, 160, 'Fourth', 'Final', 'All', 349, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(149, 161, 'Fourth', 'Final', 'All', 362, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(150, 162, 'Fourth', 'Final', 'All', 373, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(151, 163, 'Fourth', 'Final', 'All', 340, 'BSCCSIT', 2072, 'MANOJ SARU'),
(152, 164, 'Fourth', 'Final', 'All', 407, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(153, 165, 'Fourth', 'Final', 'All', 389, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(154, 166, 'Fourth', 'Final', 'All', 364, 'BSCCSIT', 2072, 'NIMA K.C'),
(155, 167, 'Fourth', 'Final', 'All', 353, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(156, 168, 'Fourth', 'Final', 'All', 405, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(157, 169, 'Fourth', 'Final', 'All', 351, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(158, 170, 'Fourth', 'Final', 'All', 433, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(159, 171, 'Fourth', 'Final', 'All', 333, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(160, 172, 'Fourth', 'Final', 'All', 367, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(161, 173, 'Fourth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(162, 174, 'Fourth', 'Final', 'All', 325, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(163, 175, 'Fourth', 'Final', 'All', 346, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(164, 176, 'Fourth', 'Final', 'All', 378, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(165, 177, 'Fourth', 'Final', 'All', 390, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(166, 178, 'Fourth', 'Final', 'All', 395, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(167, 179, 'Fourth', 'Final', 'All', 426, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(168, 180, 'Fourth', 'Final', 'All', 328, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(169, 181, 'Fourth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(170, 182, 'Fourth', 'Final', 'All', 341, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(171, 183, 'Fourth', 'Final', 'All', 397, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(172, 184, 'Fourth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(173, 185, 'Fourth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(174, 186, 'Fourth', 'Final', 'All', 369, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(175, 187, 'Fourth', 'Final', 'All', 380, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(176, 188, 'Fourth', 'Final', 'All', 374, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(177, 189, 'Fourth', 'Final', 'All', 461, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(178, 190, 'Fourth', 'Final', 'All', 397, 'BSCCSIT', 2072, 'VINOD DANGI'),
(179, 191, 'Fourth', 'Final', 'All', 419, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(180, 192, 'Fourth', 'Final', 'All', 291, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(181, 148, 'Fifth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(182, 149, 'Fifth', 'Final', 'All', 355, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(183, 150, 'Fifth', 'Final', 'All', 387, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(184, 151, 'Fifth', 'Final', 'All', 368, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(185, 152, 'Fifth', 'Final', 'All', 363, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(186, 153, 'Fifth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(187, 154, 'Fifth', 'Final', 'All', 388, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(188, 155, 'Fifth', 'Final', 'All', 386, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(189, 156, 'Fifth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(190, 157, 'Fifth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(191, 158, 'Fifth', 'Final', 'All', 347, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(192, 159, 'Fifth', 'Final', 'All', 332, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(193, 160, 'Fifth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(194, 161, 'Fifth', 'Final', 'All', 373, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(195, 162, 'Fifth', 'Final', 'All', 376, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(196, 163, 'Fifth', 'Final', 'All', 349, 'BSCCSIT', 2072, 'MANOJ SARU'),
(197, 164, 'Fifth', 'Final', 'All', 372, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(198, 165, 'Fifth', 'Final', 'All', 383, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(199, 166, 'Fifth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'NIMA K.C'),
(200, 167, 'Fifth', 'Final', 'All', 359, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(201, 168, 'Fifth', 'Final', 'All', 386, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(202, 169, 'Fifth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(203, 170, 'Fifth', 'Final', 'All', 398, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(204, 171, 'Fifth', 'Final', 'All', 325, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(205, 172, 'Fifth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(206, 173, 'Fifth', 'Final', 'All', 365, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(207, 174, 'Fifth', 'Final', 'All', 337, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(208, 175, 'Fifth', 'Final', 'All', 366, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(209, 176, 'Fifth', 'Final', 'All', 381, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(210, 177, 'Fifth', 'Final', 'All', 385, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(211, 178, 'Fifth', 'Final', 'All', 365, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(212, 179, 'Fifth', 'Final', 'All', 384, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(213, 180, 'Fifth', 'Final', 'All', 331, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(214, 181, 'Fifth', 'Final', 'All', 365, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(215, 182, 'Fifth', 'Final', 'All', 358, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(216, 183, 'Fifth', 'Final', 'All', 386, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(217, 184, 'Fifth', 'Final', 'All', 379, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(218, 185, 'Fifth', 'Final', 'All', 369, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(219, 186, 'Fifth', 'Final', 'All', 367, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(220, 187, 'Fifth', 'Final', 'All', 378, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(221, 188, 'Fifth', 'Final', 'All', 383, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(222, 189, 'Fifth', 'Final', 'All', 403, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(223, 190, 'Fifth', 'Final', 'All', 370, 'BSCCSIT', 2072, 'VINOD DANGI'),
(224, 191, 'Fifth', 'Final', 'All', 382, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(225, 192, 'Fifth', 'Final', 'All', 348, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(226, 148, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(227, 149, 'Sixth', 'Final', 'All', 340, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(228, 150, 'Sixth', 'Final', 'All', 375, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(229, 151, 'Sixth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(230, 152, 'Sixth', 'Final', 'All', 330, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(231, 153, 'Sixth', 'Final', 'All', 383, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(232, 154, 'Sixth', 'Final', 'All', 371, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(233, 155, 'Sixth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(234, 156, 'Sixth', 'Final', 'All', 330, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(235, 157, 'Sixth', 'Final', 'All', 346, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(236, 158, 'Sixth', 'Final', 'All', 341, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(237, 159, 'Sixth', 'Final', 'All', 349, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(238, 160, 'Sixth', 'Final', 'All', 360, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(239, 161, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(240, 162, 'Sixth', 'Final', 'All', 364, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(241, 163, 'Sixth', 'Final', 'All', 345, 'BSCCSIT', 2072, 'MANOJ SARU'),
(242, 164, 'Sixth', 'Final', 'All', 385, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(243, 165, 'Sixth', 'Final', 'All', 394, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(244, 166, 'Sixth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'NIMA K.C'),
(245, 167, 'Sixth', 'Final', 'All', 357, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(246, 168, 'Sixth', 'Final', 'All', 397, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(247, 169, 'Sixth', 'Final', 'All', 362, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(248, 170, 'Sixth', 'Final', 'All', 377, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(249, 171, 'Sixth', 'Final', 'All', 315, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(250, 172, 'Sixth', 'Final', 'All', 367, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(251, 173, 'Sixth', 'Final', 'All', 350, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(252, 174, 'Sixth', 'Final', 'All', 332, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(253, 175, 'Sixth', 'Final', 'All', 339, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(254, 176, 'Sixth', 'Final', 'All', 352, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(255, 177, 'Sixth', 'Final', 'All', 360, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(256, 178, 'Sixth', 'Final', 'All', 362, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(257, 179, 'Sixth', 'Final', 'All', 369, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(258, 180, 'Sixth', 'Final', 'All', 303, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(259, 181, 'Sixth', 'Final', 'All', 344, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(260, 182, 'Sixth', 'Final', 'All', 350, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(261, 183, 'Sixth', 'Final', 'All', 364, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(262, 184, 'Sixth', 'Final', 'All', 361, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(263, 185, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(264, 186, 'Sixth', 'Final', 'All', 348, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(265, 187, 'Sixth', 'Final', 'All', 354, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(266, 188, 'Sixth', 'Final', 'All', 374, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(267, 189, 'Sixth', 'Final', 'All', 403, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(268, 190, 'Sixth', 'Final', 'All', 356, 'BSCCSIT', 2072, 'VINOD DANGI'),
(269, 191, 'Sixth', 'Final', 'All', 380, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(270, 192, 'Sixth', 'Final', 'All', 352, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(271, 148, 'seventh', 'Mid Term', 'ADBMS', 47, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(272, 148, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(273, 148, 'seventh', 'Mid Term', 'IT', 37, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(274, 148, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(275, 149, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(276, 149, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(277, 149, 'seventh', 'Mid Term', 'IT', 38, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(278, 149, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(279, 150, 'seventh', 'Mid Term', 'ADBMS', 43, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(280, 150, 'seventh', 'Mid Term', 'JAVA', 42, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(281, 150, 'seventh', 'Mid Term', 'IT', 41, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(282, 150, 'seventh', 'Mid Term', 'DBA', 37, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(283, 151, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(284, 151, 'seventh', 'Mid Term', 'JAVA', 38, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(285, 151, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(286, 151, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(287, 152, 'seventh', 'Mid Term', 'ADBMS', 37, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(288, 152, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(289, 152, 'seventh', 'Mid Term', 'IT', 33, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(290, 152, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(291, 153, 'seventh', 'Mid Term', 'ADBMS', 33, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(292, 153, 'seventh', 'Mid Term', 'JAVA', 33, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(293, 153, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(294, 153, 'seventh', 'Mid Term', 'DBA', 25, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(295, 154, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(296, 154, 'seventh', 'Mid Term', 'JAVA', 43, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(297, 154, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(298, 154, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(299, 155, 'seventh', 'Mid Term', 'ADBMS', 51, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(300, 155, 'seventh', 'Mid Term', 'JAVA', 52, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(301, 155, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(302, 155, 'seventh', 'Mid Term', 'DBA', 33, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(303, 156, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(304, 156, 'seventh', 'Mid Term', 'JAVA', 29, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(305, 156, 'seventh', 'Mid Term', 'IT', 21, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(306, 156, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(307, 157, 'seventh', 'Mid Term', 'ADBMS', 36, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(308, 157, 'seventh', 'Mid Term', 'JAVA', 30, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(309, 157, 'seventh', 'Mid Term', 'IT', 34, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(310, 157, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(311, 158, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(312, 158, 'seventh', 'Mid Term', 'JAVA', 24, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(313, 158, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(314, 158, 'seventh', 'Mid Term', 'DBA', 36, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(315, 158, 'seventh', 'Mid Term', 'ADBMS', 43, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(316, 159, 'seventh', 'Mid Term', 'JAVA', 30, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(317, 159, 'seventh', 'Mid Term', 'IT', 27, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(318, 159, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(319, 160, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(320, 160, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(321, 160, 'seventh', 'Mid Term', 'IT', 34, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(322, 160, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(323, 161, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(324, 161, 'seventh', 'Mid Term', 'JAVA', 31, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(325, 161, 'seventh', 'Mid Term', 'IT', 30, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(326, 161, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(327, 162, 'seventh', 'Mid Term', 'ADBMS', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(328, 162, 'seventh', 'Mid Term', 'JAVA', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(329, 162, 'seventh', 'Mid Term', 'IT', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(330, 162, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(331, 163, 'seventh', 'Mid Term', 'ADBMS', 35, 'BSCCSIT', 2072, 'MANOJ SARU'),
(332, 163, 'seventh', 'Mid Term', 'JAVA', 36, 'BSCCSIT', 2072, 'MANOJ SARU'),
(333, 163, 'seventh', 'Mid Term', 'IT', 33, 'BSCCSIT', 2072, 'MANOJ SARU'),
(334, 163, 'seventh', 'Mid Term', 'DBA', 25, 'BSCCSIT', 2072, 'MANOJ SARU'),
(335, 164, 'seventh', 'Mid Term', 'ADBMS', 49, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(336, 164, 'seventh', 'Mid Term', 'JAVA', 52, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(337, 164, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(338, 164, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(339, 165, 'seventh', 'Mid Term', 'ADBMS', 48, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(340, 165, 'seventh', 'Mid Term', 'JAVA', 46, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(341, 165, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(342, 165, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(343, 166, 'seventh', 'Mid Term', 'ADBMS', 34, 'BSCCSIT', 2072, 'NIMA K.C'),
(344, 166, 'seventh', 'Mid Term', 'JAVA', 31, 'BSCCSIT', 2072, 'NIMA K.C'),
(345, 166, 'seventh', 'Mid Term', 'IT', 37, 'BSCCSIT', 2072, 'NIMA K.C'),
(346, 166, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'NIMA K.C'),
(347, 167, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(348, 167, 'seventh', 'Mid Term', 'JAVA', 40, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(349, 167, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(350, 167, 'seventh', 'Mid Term', 'DBA', 34, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(351, 168, 'seventh', 'Mid Term', 'ADBMS', 50, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(352, 168, 'seventh', 'Mid Term', 'JAVA', 43, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(353, 168, 'seventh', 'Mid Term', 'IT', 32, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(354, 168, 'seventh', 'Mid Term', 'DBA', 42, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(355, 169, 'seventh', 'Mid Term', 'ADBMS', 28, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(356, 169, 'seventh', 'Mid Term', 'JAVA', 32, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(357, 169, 'seventh', 'Mid Term', 'IT', 33, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(358, 169, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(359, 170, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(360, 170, 'seventh', 'Mid Term', 'JAVA', 41, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(361, 170, 'seventh', 'Mid Term', 'IT', 36, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(362, 170, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(363, 171, 'seventh', 'Mid Term', 'ADBMS', 38, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(364, 171, 'seventh', 'Mid Term', 'JAVA', 31, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(365, 171, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(366, 171, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(367, 172, 'seventh', 'Mid Term', 'ADBMS', 49, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(368, 172, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(369, 172, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(370, 172, 'seventh', 'Mid Term', 'DBA', 45, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(371, 173, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(372, 173, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(373, 173, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(374, 173, 'seventh', 'Mid Term', 'DBA', 33, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(375, 174, 'seventh', 'Mid Term', 'ADBMS', 39, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(376, 174, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(377, 174, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(378, 174, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(379, 175, 'seventh', 'Mid Term', 'ADBMS', 36, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(380, 175, 'seventh', 'Mid Term', 'JAVA', 41, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(381, 175, 'seventh', 'Mid Term', 'IT', 24, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(382, 175, 'seventh', 'Mid Term', 'DBA', 30, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(383, 176, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(384, 176, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(385, 176, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(386, 176, 'seventh', 'Mid Term', 'DBA', 39, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(387, 177, 'seventh', 'Mid Term', 'ADBMS', 44, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(388, 177, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(389, 177, 'seventh', 'Mid Term', 'IT', 41, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(390, 177, 'seventh', 'Mid Term', 'DBA', 37, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(391, 178, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(392, 178, 'seventh', 'Mid Term', 'JAVA', 50, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(393, 178, 'seventh', 'Mid Term', 'IT', 34, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(394, 178, 'seventh', 'Mid Term', 'DBA', 25, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(395, 179, 'seventh', 'Mid Term', 'ADBMS', 53, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(396, 179, 'seventh', 'Mid Term', 'JAVA', 55, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(397, 179, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(398, 179, 'seventh', 'Mid Term', 'DBA', 44, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(399, 180, 'seventh', 'Mid Term', 'ADBMS', 33, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(400, 180, 'seventh', 'Mid Term', 'JAVA', 32, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(401, 180, 'seventh', 'Mid Term', 'IT', 26, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(402, 180, 'seventh', 'Mid Term', 'DBA', 27, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(403, 181, 'seventh', 'Mid Term', 'ADBMS', 41, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(404, 181, 'seventh', 'Mid Term', 'JAVA', 43, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(405, 181, 'seventh', 'Mid Term', 'IT', 44, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(406, 181, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(407, 182, 'seventh', 'Mid Term', 'ADBMS', 33, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(408, 182, 'seventh', 'Mid Term', 'JAVA', 37, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(409, 182, 'seventh', 'Mid Term', 'IT', 0, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(410, 182, 'seventh', 'Mid Term', 'DBA', 24, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(411, 183, 'seventh', 'Mid Term', 'ADBMS', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(412, 183, 'seventh', 'Mid Term', 'JAVA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(413, 183, 'seventh', 'Mid Term', 'IT', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(414, 183, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(415, 184, 'seventh', 'Mid Term', 'ADBMS', 44, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(416, 184, 'seventh', 'Mid Term', 'JAVA', 49, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(417, 184, 'seventh', 'Mid Term', 'IT', 42, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(418, 184, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(419, 185, 'seventh', 'Mid Term', 'ADBMS', 47, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(420, 185, 'seventh', 'Mid Term', 'JAVA', 25, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(421, 185, 'seventh', 'Mid Term', 'IT', 31, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(422, 185, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(423, 186, 'seventh', 'Mid Term', 'ADBMS', 41, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(424, 186, 'seventh', 'Mid Term', 'JAVA', 35, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(425, 186, 'seventh', 'Mid Term', 'IT', 40, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(426, 186, 'seventh', 'Mid Term', 'DBA', 0, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(427, 187, 'seventh', 'Mid Term', 'ADBMS', 46, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(428, 187, 'seventh', 'Mid Term', 'JAVA', 48, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(429, 187, 'seventh', 'Mid Term', 'IT', 48, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(430, 187, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(431, 188, 'seventh', 'Mid Term', 'ADBMS', 42, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(432, 188, 'seventh', 'Mid Term', 'JAVA', 37, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(433, 188, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(434, 188, 'seventh', 'Mid Term', 'DBA', 32, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(435, 189, 'seventh', 'Mid Term', 'ADBMS', 50, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(436, 189, 'seventh', 'Mid Term', 'JAVA', 55, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(437, 189, 'seventh', 'Mid Term', 'IT', 57, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(438, 189, 'seventh', 'Mid Term', 'DBA', 51, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(439, 190, 'seventh', 'Mid Term', 'ADBMS', 47, 'BSCCSIT', 2072, 'VINOD DANGI'),
(440, 190, 'seventh', 'Mid Term', 'JAVA', 48, 'BSCCSIT', 2072, 'VINOD DANGI'),
(441, 190, 'seventh', 'Mid Term', 'IT', 46, 'BSCCSIT', 2072, 'VINOD DANGI'),
(442, 190, 'seventh', 'Mid Term', 'DBA', 41, 'BSCCSIT', 2072, 'VINOD DANGI'),
(443, 191, 'seventh', 'Mid Term', 'ADBMS', 45, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(444, 191, 'seventh', 'Mid Term', 'JAVA', 41, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(445, 191, 'seventh', 'Mid Term', 'IT', 45, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(446, 191, 'seventh', 'Mid Term', 'DBA', 40, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(447, 192, 'seventh', 'Mid Term', 'ADBMS', 40, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(448, 192, 'seventh', 'Mid Term', 'JAVA', 39, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(449, 192, 'seventh', 'Mid Term', 'IT', 43, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(450, 192, 'seventh', 'Mid Term', 'DBA', 35, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(451, 148, 'seventh', 'Pre Board', 'ADBMS', 25, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(452, 148, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(453, 148, 'seventh', 'Pre Board', 'IT', 53, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(454, 148, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'AASHISH MALLA'),
(455, 149, 'seventh', 'Pre Board', 'ADBMS', 31, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(456, 149, 'seventh', 'Pre Board', 'JAVA', 36, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(457, 149, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(458, 149, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'ADARSHA SUBEDI'),
(459, 150, 'seventh', 'Pre Board', 'ADBMS', 52, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(460, 150, 'seventh', 'Pre Board', 'JAVA', 45, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(461, 150, 'seventh', 'Pre Board', 'IT', 53, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(462, 150, 'seventh', 'Pre Board', 'DBA', 27, 'BSCCSIT', 2072, 'ANIL POUDEL'),
(463, 151, 'seventh', 'Pre Board', 'ADBMS', 27, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(464, 151, 'seventh', 'Pre Board', 'JAVA', 29, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(465, 151, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(466, 151, 'seventh', 'Pre Board', 'DBA', 19, 'BSCCSIT', 2072, 'ANISH GHIMIRE'),
(467, 152, 'seventh', 'Pre Board', 'ADBMS', 19, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(468, 152, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(469, 152, 'seventh', 'Pre Board', 'IT', 15, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(470, 152, 'seventh', 'Pre Board', 'DBA', 19, 'BSCCSIT', 2072, 'ASHISH MAHARJAN'),
(471, 153, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(472, 153, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(473, 153, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(474, 153, 'seventh', 'Pre Board', 'DBA', 20, 'BSCCSIT', 2072, 'AVINAYA  ACHARYA'),
(475, 154, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(476, 154, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(477, 154, 'seventh', 'Pre Board', 'IT', 45, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(478, 154, 'seventh', 'Pre Board', 'DBA', 0, 'BSCCSIT', 2072, 'BINA MAHARJAN'),
(479, 155, 'seventh', 'Pre Board', 'ADBMS', 48, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(480, 155, 'seventh', 'Pre Board', 'JAVA', 47, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(481, 155, 'seventh', 'Pre Board', 'IT', 58, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(482, 155, 'seventh', 'Pre Board', 'DBA', 44, 'BSCCSIT', 2072, 'BINISH MANANDHAR'),
(483, 156, 'seventh', 'Pre Board', 'ADBMS', 35, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(484, 156, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(485, 156, 'seventh', 'Pre Board', 'IT', 43, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(486, 156, 'seventh', 'Pre Board', 'DBA', 21, 'BSCCSIT', 2072, 'BINOD SUBEDI'),
(487, 157, 'seventh', 'Pre Board', 'ADBMS', 44, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(488, 157, 'seventh', 'Pre Board', 'JAVA', 38, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(489, 157, 'seventh', 'Pre Board', 'IT', 51, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(490, 157, 'seventh', 'Pre Board', 'DBA', 44, 'BSCCSIT', 2072, 'BINU GHIMIRE'),
(491, 158, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(492, 158, 'seventh', 'Pre Board', 'JAVA', 24, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(493, 158, 'seventh', 'Pre Board', 'IT', 26, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(494, 158, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'BISHOW SHRESTHA'),
(495, 158, 'seventh', 'Pre Board', 'ADBMS', 35, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(496, 159, 'seventh', 'Pre Board', 'JAVA', 44, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(497, 159, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(498, 159, 'seventh', 'Pre Board', 'DBA', 30, 'BSCCSIT', 2072, 'HARI PRASAD CHAUDHARY'),
(499, 160, 'seventh', 'Pre Board', 'ADBMS', 26, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(500, 160, 'seventh', 'Pre Board', 'JAVA', 40, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(501, 160, 'seventh', 'Pre Board', 'IT', 47, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(502, 160, 'seventh', 'Pre Board', 'DBA', 25, 'BSCCSIT', 2072, 'ISHWOR UPRETI'),
(503, 161, 'seventh', 'Pre Board', 'ADBMS', 32, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(504, 161, 'seventh', 'Pre Board', 'JAVA', 40, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(505, 161, 'seventh', 'Pre Board', 'IT', 40, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(506, 161, 'seventh', 'Pre Board', 'DBA', 21, 'BSCCSIT', 2072, 'KIRAN KUMAR THARU'),
(507, 162, 'seventh', 'Pre Board', 'ADBMS', 34, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(508, 162, 'seventh', 'Pre Board', 'JAVA', 54, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(509, 162, 'seventh', 'Pre Board', 'IT', 35, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(510, 162, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'LALIT  UPADHAYAY'),
(511, 163, 'seventh', 'Pre Board', 'ADBMS', 41, 'BSCCSIT', 2072, 'MANOJ SARU'),
(512, 163, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'MANOJ SARU'),
(513, 163, 'seventh', 'Pre Board', 'IT', 40, 'BSCCSIT', 2072, 'MANOJ SARU'),
(514, 163, 'seventh', 'Pre Board', 'DBA', 22, 'BSCCSIT', 2072, 'MANOJ SARU'),
(515, 164, 'seventh', 'Pre Board', 'ADBMS', 42, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(516, 164, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(517, 164, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(518, 164, 'seventh', 'Pre Board', 'DBA', 35, 'BSCCSIT', 2072, 'NABIN KUMAR TIMALSINA'),
(519, 165, 'seventh', 'Pre Board', 'ADBMS', 47, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(520, 165, 'seventh', 'Pre Board', 'JAVA', 48, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(521, 165, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(522, 165, 'seventh', 'Pre Board', 'DBA', 25, 'BSCCSIT', 2072, 'NIBA TANDUKAR'),
(523, 166, 'seventh', 'Pre Board', 'ADBMS', 34, 'BSCCSIT', 2072, 'NIMA K.C'),
(524, 166, 'seventh', 'Pre Board', 'JAVA', 31, 'BSCCSIT', 2072, 'NIMA K.C'),
(525, 166, 'seventh', 'Pre Board', 'IT', 37, 'BSCCSIT', 2072, 'NIMA K.C'),
(526, 166, 'seventh', 'Pre Board', 'DBA', 27, 'BSCCSIT', 2072, 'NIMA K.C'),
(527, 167, 'seventh', 'Pre Board', 'ADBMS', 43, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(528, 167, 'seventh', 'Pre Board', 'JAVA', 37, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(529, 167, 'seventh', 'Pre Board', 'IT', 52, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(530, 167, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'NOOTAN BHATTARAI'),
(531, 168, 'seventh', 'Pre Board', 'ADBMS', 52, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(532, 168, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(533, 168, 'seventh', 'Pre Board', 'IT', 51, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(534, 168, 'seventh', 'Pre Board', 'DBA', 47, 'BSCCSIT', 2072, 'PRABHAKAR THAPA'),
(535, 169, 'seventh', 'Pre Board', 'ADBMS', 28, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(536, 169, 'seventh', 'Pre Board', 'JAVA', 29, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(537, 169, 'seventh', 'Pre Board', 'IT', 48, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(538, 169, 'seventh', 'Pre Board', 'DBA', 32, 'BSCCSIT', 2072, 'PRABIN  CHAUDHARY'),
(539, 170, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(540, 170, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(541, 170, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(542, 170, 'seventh', 'Pre Board', 'DBA', 47, 'BSCCSIT', 2072, 'PRAGATI KANDEL'),
(543, 171, 'seventh', 'Pre Board', 'ADBMS', 22, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(544, 171, 'seventh', 'Pre Board', 'JAVA', 19, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(545, 171, 'seventh', 'Pre Board', 'IT', 24, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(546, 171, 'seventh', 'Pre Board', 'DBA', 4, 'BSCCSIT', 2072, 'PRAJW0L MAN SHAKYA'),
(547, 172, 'seventh', 'Pre Board', 'ADBMS', 46, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(548, 172, 'seventh', 'Pre Board', 'JAVA', 38, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(549, 172, 'seventh', 'Pre Board', 'IT', 49, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(550, 172, 'seventh', 'Pre Board', 'DBA', 35, 'BSCCSIT', 2072, 'PRIYANKA SHRESTHA'),
(551, 173, 'seventh', 'Pre Board', 'ADBMS', 41, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(552, 173, 'seventh', 'Pre Board', 'JAVA', 19, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(553, 173, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(554, 173, 'seventh', 'Pre Board', 'DBA', 15, 'BSCCSIT', 2072, 'PUSHPA KARKI'),
(555, 174, 'seventh', 'Pre Board', 'ADBMS', 40, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(556, 174, 'seventh', 'Pre Board', 'JAVA', 34, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(557, 174, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(558, 174, 'seventh', 'Pre Board', 'DBA', 28, 'BSCCSIT', 2072, 'RABIN MAHARJAN'),
(559, 175, 'seventh', 'Pre Board', 'ADBMS', 31, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(560, 175, 'seventh', 'Pre Board', 'JAVA', 28, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(561, 175, 'seventh', 'Pre Board', 'IT', 50, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(562, 175, 'seventh', 'Pre Board', 'DBA', 16, 'BSCCSIT', 2072, 'RAJESH  BHATTARAI'),
(563, 176, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(564, 176, 'seventh', 'Pre Board', 'JAVA', 27, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(565, 176, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(566, 176, 'seventh', 'Pre Board', 'DBA', 18, 'BSCCSIT', 2072, 'RAJIB DANGOL'),
(567, 177, 'seventh', 'Pre Board', 'ADBMS', 37, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(568, 177, 'seventh', 'Pre Board', 'JAVA', 37, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(569, 177, 'seventh', 'Pre Board', 'IT', 36, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(570, 177, 'seventh', 'Pre Board', 'DBA', 28, 'BSCCSIT', 2072, 'RANJIT SHRESTHA'),
(571, 178, 'seventh', 'Pre Board', 'ADBMS', 47, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(572, 178, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(573, 178, 'seventh', 'Pre Board', 'IT', 48, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(574, 178, 'seventh', 'Pre Board', 'DBA', 31, 'BSCCSIT', 2072, 'ROJAN SEDHAI'),
(575, 179, 'seventh', 'Pre Board', 'ADBMS', 50, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(576, 179, 'seventh', 'Pre Board', 'JAVA', 41, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(577, 179, 'seventh', 'Pre Board', 'IT', 39, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(578, 179, 'seventh', 'Pre Board', 'DBA', 39, 'BSCCSIT', 2072, 'SABIN MAHAT'),
(579, 180, 'seventh', 'Pre Board', 'ADBMS', 18, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(580, 180, 'seventh', 'Pre Board', 'JAVA', 28, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(581, 180, 'seventh', 'Pre Board', 'IT', 21, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(582, 180, 'seventh', 'Pre Board', 'DBA', 12, 'BSCCSIT', 2072, 'SACHIN  SHRESTHA'),
(583, 181, 'seventh', 'Pre Board', 'ADBMS', 36, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(584, 181, 'seventh', 'Pre Board', 'JAVA', 33, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(585, 181, 'seventh', 'Pre Board', 'IT', 42, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(586, 181, 'seventh', 'Pre Board', 'DBA', 22, 'BSCCSIT', 2072, 'SAGAR SHRESTHA'),
(587, 182, 'seventh', 'Pre Board', 'ADBMS', 27, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(588, 182, 'seventh', 'Pre Board', 'JAVA', 19, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(589, 182, 'seventh', 'Pre Board', 'IT', 33, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(590, 182, 'seventh', 'Pre Board', 'DBA', 6, 'BSCCSIT', 2072, 'SAMVRANT SINGH THAPA'),
(591, 183, 'seventh', 'Pre Board', 'ADBMS', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(592, 183, 'seventh', 'Pre Board', 'JAVA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(593, 183, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(594, 183, 'seventh', 'Pre Board', 'DBA', 0, 'BSCCSIT', 2072, 'SHIRISHA MAHARJAN'),
(595, 184, 'seventh', 'Pre Board', 'ADBMS', 32, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(596, 184, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(597, 184, 'seventh', 'Pre Board', 'IT', 34, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(598, 184, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'SHRISTI SHRESTHA'),
(599, 185, 'seventh', 'Pre Board', 'ADBMS', 31, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(600, 185, 'seventh', 'Pre Board', 'JAVA', 36, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(601, 185, 'seventh', 'Pre Board', 'IT', 36, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(602, 185, 'seventh', 'Pre Board', 'DBA', 26, 'BSCCSIT', 2072, 'SOMIT NAKARMI'),
(603, 186, 'seventh', 'Pre Board', 'ADBMS', 42, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(604, 186, 'seventh', 'Pre Board', 'JAVA', 29, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(605, 186, 'seventh', 'Pre Board', 'IT', 39, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(606, 186, 'seventh', 'Pre Board', 'DBA', 24, 'BSCCSIT', 2072, 'SUBASH  NAGARKOTI'),
(607, 187, 'seventh', 'Pre Board', 'ADBMS', 43, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(608, 187, 'seventh', 'Pre Board', 'JAVA', 26, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(609, 187, 'seventh', 'Pre Board', 'IT', 32, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(610, 187, 'seventh', 'Pre Board', 'DBA', 25, 'BSCCSIT', 2072, 'SUBHA LAXMI MAHARJAN'),
(611, 188, 'seventh', 'Pre Board', 'ADBMS', 49, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(612, 188, 'seventh', 'Pre Board', 'JAVA', 42, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(613, 188, 'seventh', 'Pre Board', 'IT', 48, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(614, 188, 'seventh', 'Pre Board', 'DBA', 40, 'BSCCSIT', 2072, 'SUMIT BASNET'),
(615, 189, 'seventh', 'Pre Board', 'ADBMS', 49, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(616, 189, 'seventh', 'Pre Board', 'JAVA', 50, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(617, 189, 'seventh', 'Pre Board', 'IT', 51, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(618, 189, 'seventh', 'Pre Board', 'DBA', 39, 'BSCCSIT', 2072, 'UTPREKSHYA GAUTAM'),
(619, 190, 'seventh', 'Pre Board', 'ADBMS', 41, 'BSCCSIT', 2072, 'VINOD DANGI'),
(620, 190, 'seventh', 'Pre Board', 'JAVA', 44, 'BSCCSIT', 2072, 'VINOD DANGI'),
(621, 190, 'seventh', 'Pre Board', 'IT', 54, 'BSCCSIT', 2072, 'VINOD DANGI'),
(622, 190, 'seventh', 'Pre Board', 'DBA', 39, 'BSCCSIT', 2072, 'VINOD DANGI'),
(623, 191, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(624, 191, 'seventh', 'Pre Board', 'JAVA', 46, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(625, 191, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(626, 191, 'seventh', 'Pre Board', 'DBA', 18, 'BSCCSIT', 2072, 'YOGENDRA  BHATTARAI'),
(627, 192, 'seventh', 'Pre Board', 'ADBMS', 38, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(628, 192, 'seventh', 'Pre Board', 'JAVA', 25, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(629, 192, 'seventh', 'Pre Board', 'IT', 0, 'BSCCSIT', 2072, 'RAMESH BAYAK'),
(630, 192, 'seventh', 'Pre Board', 'DBA', 41, 'BSCCSIT', 2072, 'RAMESH BAYAK');

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
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(11) NOT NULL,
  `rfaculty` varchar(50) NOT NULL,
  `rbatch` int(11) NOT NULL,
  `rsemester` varchar(50) NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `uploaded_at` date NOT NULL,
  `display` date NOT NULL,
  `rtitle` varchar(50) NOT NULL,
  `routine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `rfaculty`, `rbatch`, `rsemester`, `uploaded_by`, `uploaded_at`, `display`, `rtitle`, `routine`) VALUES
(3, 'BSCCSIT', 2072, 'Seventh', 1, '2019-08-03', '2019-08-30', 'Class Routine', 'download.png');

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
(13, 13, 'ISHWOR UPRETI', 'kathmandu', 986675854, 'demo72@gmail.com14', 2072, 1, 'ISH123'),
(14, 14, 'KIRAN KUMAR THARU', 'kathmandu', 986675854, 'demo72@gmail.com15', 2072, 1, 'KI123'),
(15, 15, 'LALIT  UPADHAYAY', 'kathmandu', 986675854, 'demo72@gmail.com16', 2072, 1, 'LALIT 123'),
(16, 16, 'MANOJ SARU', 'kathmandu', 986675854, 'demo72@gmail.com17', 2072, 1, 'MANOJ123'),
(17, 17, 'NABIN KUMAR TIMALSINA', 'kathmandu', 986675854, 'demo72@gmail.com18', 2072, 1, 'NABIN123'),
(18, 18, 'NIBA TANDUKAR', 'kathmandu', 986675854, 'demo72@gmail.com19', 2072, 1, 'NIB123'),
(19, 19, 'NIMA K.C', 'kathmandu', 986675854, 'demo72@gmail.com20', 2072, 1, 'NIM123'),
(20, 20, 'NOOTAN BHATTARAI', 'kathmandu', 986675854, 'demo72@gmail.com21', 2072, 1, 'NOOTAN123'),
(21, 21, 'PRABHAKAR THAPA', 'kathmandu', 986675854, 'demo72@gmail.com22', 2072, 1, 'PRABH123'),
(22, 22, 'PRAKASH B.K', 'kathmandu', 986675854, 'demo72@gmail.com23', 2072, 1, 'PRAB123'),
(23, 23, 'PRAGATI KANDEL', 'kathmandu', 986675854, 'demo72@gmail.com24', 2072, 1, 'PRAG123'),
(24, 24, 'PRAJW0L MAN SHAKYA', 'kathmandu', 986675854, 'demo72@gmail.com25', 2072, 1, 'PRAJ123'),
(25, 25, 'PRIYANKA SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com26', 2072, 1, 'PRIYANK123'),
(26, 26, 'PUSHPA KARKI', 'kathmandu', 986675854, 'demo72@gmail.com27', 2072, 1, 'PU123'),
(27, 27, 'RABIN MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com28', 2072, 1, 'RABI123'),
(28, 28, 'ASWIN ARYAL', 'kathmandu', 986675854, 'demo72@gmail.com29', 2072, 1, 'RAJ123'),
(29, 29, 'RAJIB DANGOL', 'kathmandu', 986675854, 'demo72@gmail.com30', 2072, 1, 'RA123'),
(30, 30, 'RANJIT SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com31', 2072, 1, 'RANJI123'),
(31, 31, 'ROJAN SEDHAI', 'kathmandu', 986675854, 'demo72@gmail.com32', 2072, 1, 'RO123'),
(32, 32, 'SABIN MAHAT', 'kathmandu', 986675854, 'demo72@gmail.com33', 2072, 1, 'S123'),
(33, 33, 'SUSHIL D.C.', 'kathmandu', 986675854, 'demo72@gmail.com34', 2072, 1, 'SACHIN123'),
(34, 34, 'SAGAR SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com35', 2072, 1, 'SAGA123'),
(35, 35, 'SAMVRANT SINGH THAPA', 'kathmandu', 986675854, 'demo72@gmail.com36', 2072, 1, 'SAMVRAN123'),
(36, 36, 'SHIRISHA MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com37', 2072, 1, 'SHIRISH123'),
(37, 37, 'SHRISTI SHRESTHA', 'kathmandu', 986675854, 'demo72@gmail.com38', 2072, 1, 'SHRIST123'),
(38, 38, 'SOMIT NAKARMI', 'kathmandu', 986675854, 'demo72@gmail.com39', 2072, 1, 'SOM123'),
(39, 39, 'SUBASH  NAGARKOTI', 'kathmandu', 986675854, 'demo72@gmail.com40', 2072, 1, 'SU123'),
(40, 40, 'SUBHA LAXMI MAHARJAN', 'kathmandu', 986675854, 'demo72@gmail.com41', 2072, 1, 'SU123'),
(41, 41, 'SUMIT BASNET', 'kathmandu', 986675854, 'demo72@gmail.com42', 2072, 1, 'SU123'),
(42, 42, 'UTPREKSHYA GAUTAM', 'kathmandu', 986675854, 'demo72@gmail.com43', 2072, 1, 'UTPREKS123'),
(43, 43, 'VINOD DANGI', 'kathmandu', 986675854, 'demo72@gmail.com44', 2072, 1, 'V123'),
(44, 44, 'YOGENDRA  BHATTARAI', 'kathmandu', 986675854, 'demo72@gmail.com45', 2072, 1, 'Y123'),
(45, 45, 'RAMESH BAYAK', 'kathmandu', 986675854, 'demo72@gmail.com46', 2072, 1, 'RA123'),
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
(1, 1, 'Dabbal Singh Mahara', 'Kalanki', '9808765645', 'dabbal@gmail.com', '123456', 'HOD', 1),
(2, 2, 'admin', 'admin', '987451223', 'admin@admin.com', 'admin', 'Admin', 3),
(3, 3, 'Kumar Prasun', 'Kalanki', '9851045612', 'kumar@gmail.com', 'kumar', 'Teacher', 1);

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
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `attendance_daily`
--
ALTER TABLE `attendance_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
