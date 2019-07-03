-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 07:48 AM
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
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
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

INSERT INTO `assignment` (`id`, `aid`, `atid`, `afname`, `asbatch`, `aname`, `asubject`, `adeadline`, `document`) VALUES
(9, 2, 2, 'BSCCSIT', 2072, 'Second Assignment', 'CProgramming', '2019-06-25', ''),
(10, 3, 2, 'BSCSIT', 2072, 'assign 3', 'ADBMS', '2019-06-19', 'network.pdf'),
(11, 4, 1, 'BSCSIT', 2072, 'assign 4', 'CprogrM', '2019-06-28', '4.5-software-reengineering.pdf'),
(12, 5, 1, 'BSCSIT', 2072, 'assign 5', 'ADBMS', '2019-06-27', '38955112_2261644994111298_5935071893089419264_n.jpg'),
(13, 1, 2, 'BSCSIT', 2072, 'assign 6', 'aeur', '2019-06-25', '04-1-Electronic-Payment-Systems.docx'),
(14, 5, 1, 'BSCSIT', 2072, 'asjuhgf', 'ewsnj', '2019-06-20', 'ComparisonofK-MeansandFuzzyC-MeansAlgorithmsonDifferentClusterStructures1.pdf'),
(15, 5, 1, 'BSCSIT', 2072, 'uhqw', 'jea', '2019-06-25', 'Assignment-No.-1.docx');

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
(856, 1, 1, 'AASHISH MALLA', 'ADBMS', 3, '2019-05-30'),
(857, 1, 2, 'ADARSHA SUBEDI', 'ADBMS', 3, '2019-05-30'),
(858, 1, 3, 'ANIL POUDEL', 'ADBMS', 1, '2019-05-30'),
(859, 1, 4, 'ANISH GHIMIRE', 'ADBMS', 1, '2019-05-30'),
(860, 1, 5, 'ASHISH MAHARJAN', 'ADBMS', 0, '2019-05-30'),
(861, 1, 6, 'AVINAYA  ACHARYA', 'ADBMS', 0, '2019-05-30'),
(862, 1, 7, 'BINA MAHARJAN', 'ADBMS', 0, '2019-05-30'),
(863, 1, 8, 'BINISH MANANDHAR', 'ADBMS', 0, '2019-05-30'),
(864, 1, 9, 'BINOD SUBEDI', 'ADBMS', 0, '2019-05-30'),
(865, 1, 10, 'BINU GHIMIRE', 'ADBMS', 0, '2019-05-30'),
(866, 1, 11, 'BISHOW SHRESTHA', 'ADBMS', 0, '2019-05-30'),
(867, 1, 12, 'HARI PRASAD CHAUDHARY', 'ADBMS', 0, '2019-05-30'),
(868, 1, 13, 'ISHWOR UPRETI', 'ADBMS', 0, '2019-05-30'),
(869, 1, 14, 'KIRAN KUMAR THARU', 'ADBMS', 0, '2019-05-30'),
(870, 1, 15, 'LALIT  UPADHAYAY', 'ADBMS', 0, '2019-05-30'),
(871, 1, 16, 'MANOJ SARU', 'ADBMS', 0, '2019-05-30'),
(872, 1, 17, 'NABIN KUMAR TIMALSINA', 'ADBMS', 0, '2019-05-30'),
(873, 1, 18, 'NIBA TANDUKAR', 'ADBMS', 0, '2019-05-30'),
(874, 1, 19, 'NIMA K.C', 'ADBMS', 0, '2019-05-30'),
(875, 1, 20, 'NOOTAN BHATTARAI', 'ADBMS', 0, '2019-05-30'),
(876, 1, 21, 'PRABHAKAR THAPA', 'ADBMS', 0, '2019-05-30'),
(877, 1, 22, 'PRABIN  CHAUDHARY', 'ADBMS', 0, '2019-05-30'),
(878, 1, 23, 'PRAGATI KANDEL', 'ADBMS', 0, '2019-05-30'),
(879, 1, 24, 'PRAJW0L MAN SHAKYA', 'ADBMS', 0, '2019-05-30'),
(880, 1, 25, 'PRIYANKA SHRESTHA', 'ADBMS', 5, '2019-05-30'),
(881, 1, 26, 'PUSHPA KARKI', 'ADBMS', 5, '2019-05-30'),
(882, 1, 27, 'RABIN MAHARJAN', 'ADBMS', 0, '2019-05-30'),
(883, 1, 28, 'RAJESH  BHATTARAI', 'ADBMS', 0, '2019-05-30'),
(884, 1, 29, 'RAJIB DANGOL', 'ADBMS', 0, '2019-05-30'),
(885, 1, 30, 'RANJIT SHRESTHA', 'ADBMS', 0, '2019-05-30'),
(886, 1, 31, 'ROJAN SEDHAI', 'ADBMS', 0, '2019-05-30'),
(887, 1, 32, 'SABIN MAHAT', 'ADBMS', 0, '2019-05-30'),
(888, 1, 33, 'SACHIN  SHRESTHA', 'ADBMS', 0, '2019-05-30'),
(889, 1, 34, 'SAGAR SHRESTHA', 'ADBMS', 0, '2019-05-30'),
(890, 1, 35, 'SAMVRANT SINGH THAPA', 'ADBMS', 0, '2019-05-30'),
(891, 1, 36, 'SHIRISHA MAHARJAN', 'ADBMS', 0, '2019-05-30'),
(892, 1, 37, 'SHRISTI SHRESTHA', 'ADBMS', 5, '2019-05-30'),
(893, 1, 38, 'SOMIT NAKARMI', 'ADBMS', 0, '2019-05-30'),
(894, 1, 39, 'SUBASH  NAGARKOTI', 'ADBMS', 0, '2019-05-30'),
(895, 1, 40, 'SUBHA LAXMI MAHARJAN', 'ADBMS', 0, '2019-05-30'),
(896, 1, 41, 'SUMIT BASNET', 'ADBMS', 0, '2019-05-30'),
(897, 1, 42, 'UTPREKSHYA GAUTAM', 'ADBMS', 0, '2019-05-30'),
(898, 1, 43, 'VINOD DANGI', 'ADBMS', 1, '2019-05-30'),
(899, 1, 44, 'YOGENDRA  BHATTARAI', 'ADBMS', 2, '2019-05-30'),
(900, 1, 45, 'RAMESH BAYAK', 'ADBMS', 5, '2019-05-30'),
(901, 9, 1, 'AASHISH MALLA', 'CProgramming', 0, '2019-05-30'),
(902, 9, 2, 'ADARSHA SUBEDI', 'CProgramming', 0, '2019-05-30'),
(903, 9, 3, 'ANIL POUDEL', 'CProgramming', 0, '2019-05-30'),
(904, 9, 4, 'ANISH GHIMIRE', 'CProgramming', 0, '2019-05-30'),
(905, 9, 5, 'ASHISH MAHARJAN', 'CProgramming', 0, '2019-05-30'),
(906, 9, 6, 'AVINAYA  ACHARYA', 'CProgramming', 0, '2019-05-30'),
(907, 9, 7, 'BINA MAHARJAN', 'CProgramming', 0, '2019-05-30'),
(908, 9, 8, 'BINISH MANANDHAR', 'CProgramming', 4, '2019-05-30'),
(909, 9, 9, 'BINOD SUBEDI', 'CProgramming', 0, '2019-05-30'),
(910, 9, 10, 'BINU GHIMIRE', 'CProgramming', 0, '2019-05-30'),
(911, 9, 11, 'BISHOW SHRESTHA', 'CProgramming', 0, '2019-05-30'),
(912, 9, 12, 'HARI PRASAD CHAUDHARY', 'CProgramming', 0, '2019-05-30'),
(913, 9, 13, 'ISHWOR UPRETI', 'CProgramming', 0, '2019-05-30'),
(914, 9, 14, 'KIRAN KUMAR THARU', 'CProgramming', 0, '2019-05-30'),
(915, 9, 15, 'LALIT  UPADHAYAY', 'CProgramming', 0, '2019-05-30'),
(916, 9, 16, 'MANOJ SARU', 'CProgramming', 0, '2019-05-30'),
(917, 9, 17, 'NABIN KUMAR TIMALSINA', 'CProgramming', 0, '2019-05-30'),
(918, 9, 18, 'NIBA TANDUKAR', 'CProgramming', 0, '2019-05-30'),
(919, 9, 19, 'NIMA K.C', 'CProgramming', 0, '2019-05-30'),
(920, 9, 20, 'NOOTAN BHATTARAI', 'CProgramming', 0, '2019-05-30'),
(921, 9, 21, 'PRABHAKAR THAPA', 'CProgramming', 0, '2019-05-30'),
(922, 9, 22, 'PRABIN  CHAUDHARY', 'CProgramming', 0, '2019-05-30'),
(923, 9, 23, 'PRAGATI KANDEL', 'CProgramming', 0, '2019-05-30'),
(924, 9, 24, 'PRAJW0L MAN SHAKYA', 'CProgramming', 0, '2019-05-30'),
(925, 9, 25, 'PRIYANKA SHRESTHA', 'CProgramming', 0, '2019-05-30'),
(926, 9, 26, 'PUSHPA KARKI', 'CProgramming', 0, '2019-05-30'),
(927, 9, 27, 'RABIN MAHARJAN', 'CProgramming', 0, '2019-05-30'),
(928, 9, 28, 'RAJESH  BHATTARAI', 'CProgramming', 0, '2019-05-30'),
(929, 9, 29, 'RAJIB DANGOL', 'CProgramming', 0, '2019-05-30'),
(930, 9, 30, 'RANJIT SHRESTHA', 'CProgramming', 0, '2019-05-30'),
(931, 9, 31, 'ROJAN SEDHAI', 'CProgramming', 0, '2019-05-30'),
(932, 9, 32, 'SABIN MAHAT', 'CProgramming', 0, '2019-05-30'),
(933, 9, 33, 'SACHIN  SHRESTHA', 'CProgramming', 0, '2019-05-30'),
(934, 9, 34, 'SAGAR SHRESTHA', 'CProgramming', 0, '2019-05-30'),
(935, 9, 35, 'SAMVRANT SINGH THAPA', 'CProgramming', 0, '2019-05-30'),
(936, 9, 36, 'SHIRISHA MAHARJAN', 'CProgramming', 0, '2019-05-30'),
(937, 9, 37, 'SHRISTI SHRESTHA', 'CProgramming', 0, '2019-05-30'),
(938, 9, 38, 'SOMIT NAKARMI', 'CProgramming', 0, '2019-05-30'),
(939, 9, 39, 'SUBASH  NAGARKOTI', 'CProgramming', 0, '2019-05-30'),
(940, 9, 40, 'SUBHA LAXMI MAHARJAN', 'CProgramming', 0, '2019-05-30'),
(941, 9, 41, 'SUMIT BASNET', 'CProgramming', 0, '2019-05-30'),
(942, 9, 42, 'UTPREKSHYA GAUTAM', 'CProgramming', 0, '2019-05-30'),
(943, 9, 43, 'VINOD DANGI', 'CProgramming', 0, '2019-05-30'),
(944, 9, 44, 'YOGENDRA  BHATTARAI', 'CProgramming', 1, '2019-05-30'),
(945, 9, 45, 'RAMESH BAYAK', 'CProgramming', 3, '2019-05-30');

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
(180, 45, 'RAMESH BAYAK', '2019-06-13', 1, 'csit faculty', 2072);

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
(42, 'student', '0002_student_spassword', '2019-06-16 04:47:52.064495');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 1, 'BSCCSIT', 'Dabbal Singh Mahara');

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
  `mmarks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `sid`, `msemester`, `mexam`, `msubject`, `mmarks`) VALUES
(1, 1, 'First', 'Final', 'All', 372),
(2, 2, 'First', 'Final', 'All', 367),
(3, 3, 'First', 'Final', 'All', 407),
(4, 4, 'First', 'Final', 'All', 372),
(5, 5, 'First', 'Final', 'All', 376),
(6, 6, 'First', 'Final', 'All', 353),
(7, 7, 'First', 'Final', 'All', 386),
(8, 8, 'First', 'Final', 'All', 382),
(9, 9, 'First', 'Final', 'All', 367),
(10, 10, 'First', 'Final', 'All', 380),
(11, 11, 'First', 'Final', 'All', 370),
(12, 12, 'First', 'Final', 'All', 360),
(13, 13, 'First', 'Final', 'All', 375),
(14, 14, 'First', 'Final', 'All', 378),
(15, 15, 'First', 'Final', 'All', 407),
(16, 16, 'First', 'Final', 'All', 367),
(17, 17, 'First', 'Final', 'All', 405),
(18, 18, 'First', 'Final', 'All', 404),
(19, 19, 'First', 'Final', 'All', 369),
(20, 20, 'First', 'Final', 'All', 362),
(21, 21, 'First', 'Final', 'All', 383),
(22, 22, 'First', 'Final', 'All', 338),
(23, 23, 'First', 'Final', 'All', 401),
(24, 24, 'First', 'Final', 'All', 358),
(25, 25, 'First', 'Final', 'All', 360),
(26, 26, 'First', 'Final', 'All', 354),
(27, 27, 'First', 'Final', 'All', 253),
(28, 28, 'First', 'Final', 'All', 347),
(29, 29, 'First', 'Final', 'All', 380),
(30, 30, 'First', 'Final', 'All', 414),
(31, 31, 'First', 'Final', 'All', 386),
(32, 32, 'First', 'Final', 'All', 379),
(33, 33, 'First', 'Final', 'All', 254),
(34, 34, 'First', 'Final', 'All', 396),
(35, 35, 'First', 'Final', 'All', 361),
(36, 36, 'First', 'Final', 'All', 392),
(37, 37, 'First', 'Final', 'All', 413),
(38, 38, 'First', 'Final', 'All', 388),
(39, 39, 'First', 'Final', 'All', 390),
(40, 40, 'First', 'Final', 'All', 396),
(41, 41, 'First', 'Final', 'All', 394),
(42, 42, 'First', 'Final', 'All', 418),
(43, 43, 'First', 'Final', 'All', 397),
(44, 44, 'First', 'Final', 'All', 404),
(45, 45, 'First', 'Final', 'All', 375);

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
  `nbatch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notics`
--

CREATE TABLE `notics` (
  `id` int(11) NOT NULL,
  `nfaculty` varchar(50) NOT NULL,
  `nbatch` int(11) NOT NULL,
  `nsemester` int(11) NOT NULL,
  `nnotice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 1, 'AASHISH MALLA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(2, 2, 'ADARSHA SUBEDI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(3, 3, 'ANIL POUDEL', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(4, 4, 'ANISH GHIMIRE', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(5, 5, 'ASHISH MAHARJAN', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(6, 6, 'AVINAYA  ACHARYA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(7, 7, 'BINA MAHARJAN', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(8, 8, 'BINISH MANANDHAR', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(9, 9, 'BINOD SUBEDI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(10, 10, 'BINU GHIMIRE', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(11, 11, 'BISHOW SHRESTHA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(12, 12, 'HARI PRASAD CHAUDHARY', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(13, 13, 'ISHWOR UPRETI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(14, 14, 'KIRAN KUMAR THARU', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(15, 15, 'LALIT  UPADHAYAY', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(16, 16, 'MANOJ SARU', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(17, 17, 'NABIN KUMAR TIMALSINA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(18, 18, 'NIBA TANDUKAR', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(19, 19, 'NIMA K.C', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(20, 20, 'NOOTAN BHATTARAI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(21, 21, 'PRABHAKAR THAPA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(22, 22, 'PRABIN  CHAUDHARY', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(23, 23, 'PRAGATI KANDEL', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(24, 24, 'PRAJW0L MAN SHAKYA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(25, 25, 'PRIYANKA SHRESTHA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(26, 26, 'PUSHPA KARKI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(27, 27, 'RABIN MAHARJAN', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(28, 28, 'RAJESH  BHATTARAI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(29, 29, 'RAJIB DANGOL', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(30, 30, 'RANJIT SHRESTHA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(31, 31, 'ROJAN SEDHAI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(32, 32, 'SABIN MAHAT', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(33, 33, 'SACHIN  SHRESTHA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(34, 34, 'SAGAR SHRESTHA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(35, 35, 'SAMVRANT SINGH THAPA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(36, 36, 'SHIRISHA MAHARJAN', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(37, 37, 'SHRISTI SHRESTHA', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(38, 38, 'SOMIT NAKARMI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(39, 39, 'SUBASH  NAGARKOTI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(40, 40, 'SUBHA LAXMI MAHARJAN', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(41, 41, 'SUMIT BASNET', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(42, 42, 'UTPREKSHYA GAUTAM', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(43, 43, 'VINOD DANGI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(44, 44, 'YOGENDRA  BHATTARAI', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00'),
(45, 45, 'RAMESH BAYAK', 'Kalanki', 2147483647, 'abc@gmail.com', 2072, 1, '2019-06-16 04:47:51.131808+00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `assignment_submit`
--
ALTER TABLE `assignment_submit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=946;
--
-- AUTO_INCREMENT for table `attendance_daily`
--
ALTER TABLE `attendance_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notics`
--
ALTER TABLE `notics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
