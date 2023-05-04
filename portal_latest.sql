-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 08:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `college_list`
--

CREATE TABLE `college_list` (
  `id` int(11) NOT NULL,
  `institute_code` int(11) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `autonomous` tinyint(1) NOT NULL,
  `vac_open` int(11) NOT NULL,
  `vac_obc` int(11) NOT NULL,
  `vac_sc` int(11) NOT NULL,
  `vac_nt` int(11) NOT NULL,
  `vac_ews` int(11) NOT NULL,
  `merit_open` int(11) NOT NULL,
  `merit_ews` int(11) NOT NULL,
  `merit_obc` int(11) NOT NULL,
  `merit_sc` int(11) NOT NULL,
  `merit_nt` int(11) NOT NULL,
  `fees` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college_list`
--

INSERT INTO `college_list` (`id`, `institute_code`, `college_name`, `dept`, `city`, `autonomous`, `vac_open`, `vac_obc`, `vac_sc`, `vac_nt`, `vac_ews`, `merit_open`, `merit_ews`, `merit_obc`, `merit_sc`, `merit_nt`, `fees`) VALUES
(1, 6006, 'COEP', 'CE', 'Pune', 1, 4, 3, 2, 2, 2, 67, 76, 107, 204, 0, 90850),
(2, 3012, 'VJTI', 'CE', 'Mumbai', 1, 3, 2, 1, 0, 1, 21, 388, 129, 307, 0, 84051),
(3, 3012, 'VJTI', 'IT', 'Mumbai', 1, 3, 2, 1, 1, 1, 47, 0, 48, 1057, 0, 84051),
(4, 6271, 'PICT', 'CE', 'Pune', 0, 9, 5, 3, 3, 3, 186, 292, 252, 1250, 2702, 96000),
(5, 6271, 'PICT', 'CE', 'Pune', 0, 3, 2, 1, 0, 1, 250, 300, 253, 1874, 3048, 96000),
(6, 6271, 'PICT', 'IT', 'Pune', 0, 8, 4, 3, 3, 2, 528, 452, 623, 2437, 2261, 96000),
(7, 6273, 'VIT,Bibwewadi', 'CE1', 'Pune', 1, 9, 5, 3, 2, 8, 567, 800, 30295, 1392, 939, 179865),
(8, 6273, 'VIT,Bibwewadi', 'CE2', 'Pune', 1, 3, 1, 1, 1, 1, 699, 1063, 945, 2812, 1997, 179865),
(9, 6273, 'VIT,Bibwewadi', 'IT', 'Pune', 1, 4, 1, 2, 0, 3, 738, 1072, 1208, 3217, 0, 179865),
(10, 6007, 'WCE, Sangli', 'CSE', 'Sangli', 1, 4, 2, 1, 0, 1, 527, 435, 746, 1092, 2646, 84935),
(11, 6007, 'WCE, Sangli', 'IT', 'Sangli', 1, 3, 1, 1, 2, 1, 609, 821, 833, 3095, 0, 84935),
(12, 3181, 'K. J. Somaiya', 'CE', 'Mumbai', 0, 6, 0, 0, 0, 0, 169, 0, 0, 709, 0, 286000),
(13, 3181, 'K. J. Somaiya', 'IT', 'Mumbai', 0, 5, 0, 0, 0, 0, 245, 0, 0, 790, 0, 286000),
(14, 3215, 'SPIT', 'CE', 'Mumbai', 1, 3, 2, 1, 0, 1, 93, 762, 108, 391, 0, 161104),
(15, 3215, 'SPIT', 'IT', 'Mumbai', 1, 3, 2, 1, 0, 2, 43, 0, 152, 505, 3281, 161104),
(16, 6175, 'PCCOE', 'CE1', 'Pune', 1, 9, 5, 3, 2, 3, 1079, 705, 1294, 3335, 12647, 128812),
(17, 6175, 'PCCOE', 'CE2', 'Pune', 1, 4, 2, 1, 0, 2, 1188, 1626, 0, 3701, 17490, 128812),
(18, 6175, 'PCCOE', 'IT', 'Pune', 1, 4, 3, 1, 0, 3, 1290, 0, 1435, 4657, 0, 128812),
(19, 6276, 'Cummins(women)', 'CE1', 'Pune', 1, 4, 3, 2, 1, 2, 824, 2840, 1133, 3278, 0, 180589),
(20, 6276, 'Cummins(women)', 'CE2', 'Pune', 1, 3, 1, 1, 1, 2, 926, 3430, 1239, 5812, 3336, 180589),
(21, 6276, 'Cummins(women)', 'IT', 'Pune', 1, 3, 2, 1, 1, 1, 1122, 0, 1390, 5977, 0, 180589),
(22, 6289, 'VIIT', 'CE1', 'Pune', 1, 9, 5, 3, 3, 4, 937, 2611, 1588, 4662, 3283, 164200),
(23, 6289, 'VIIT', 'CE2', 'Pune', 1, 4, 2, 1, 1, 1, 1501, 3348, 1701, 7876, 0, 164200),
(24, 6289, 'VIIT', 'IT', 'Pune', 1, 11, 5, 4, 2, 6, 1920, 3896, 2219, 8440, 4012, 164200),
(25, 6274, 'PVG', 'CE', 'Pune', 0, 4, 1, 1, 1, 2, 980, 2380, 19453, 6665, 0, 115397),
(26, 6274, 'PVG', 'IT', 'Pune', 0, 3, 2, 1, 0, 1, 2146, 4598, 2490, 6849, 14707, 115397),
(27, 6146, 'MIT, Alandi', 'CE', 'Pune', 1, 5, 3, 2, 1, 3, 1820, 1462, 2245, 6971, 0, 175737),
(28, 6146, 'MIT, Alandi', 'IT', 'Pune', 1, 3, 2, 2, 1, 3, 2585, 0, 3255, 10236, 0, 175737),
(29, 6177, 'Sinhgad Vadgao', 'CE1', 'Pune', 0, 4, 3, 2, 1, 3, 2034, 4361, 2701, 10555, 0, 125102),
(30, 6177, 'Sinhgad Vadgao', 'CE2', 'Pune', 0, 4, 1, 2, 1, 1, 1276, 6069, 3337, 10556, 0, 125102),
(31, 6177, 'Sinhgad Vadgao', 'IT', 'Pune', 0, 4, 3, 2, 1, 2, 3853, 8969, 4600, 13372, 0, 125102),
(32, 2008, 'Govt Clg, Aurangabad', 'CSE', 'Aurangabad', 1, 0, 0, 0, 0, 0, 655, 1350, 1596, 5065, 0, 74104),
(33, 2008, 'Govt Clg, Aurangabad', 'IT', 'Aurangabad', 1, 4, 2, 1, 1, 1, 993, 1639, 1677, 6561, 4997, 74104),
(34, 2020, 'SGGS', 'CSE', 'Nanded', 1, 0, 0, 0, 0, 0, 1570, 1433, 2205, 4871, 0, 85942),
(35, 2020, 'SGGS', 'IT', 'Nanded', 1, 4, 2, 1, 0, 2, 2336, 0, 2713, 5344, 0, 85942),
(36, 6005, 'Govt, Karad', 'IT', 'Karad', 1, 3, 2, 1, 0, 1, 1379, 160, 1889, 3488, 3687, 85361),
(37, 3182, 'Thadomal', 'CE', 'Mumbai', 0, 9, 0, 0, 0, 0, 438, 0, 0, 1926, 0, 146410),
(38, 3182, 'Thadomal', 'IT', 'Mumbai', 0, 5, 0, 0, 0, 0, 675, 0, 0, 5195, 0, 146410),
(39, 3184, 'Fr Conceica Rodrigues', 'CE', 'Mumbai', 0, 6, 0, 0, 0, 0, 336, 0, 0, 5218, 0, 151814),
(40, 3184, 'Fr Conceica Rodrigues', 'IT', 'Mumbai', 0, 6, 0, 0, 0, 0, 913, 0, 0, 7700, 0, 151814),
(41, 3199, 'DJ Sanghvi', 'CE', 'Mumbai', 0, 6, 0, 0, 0, 0, 239, 0, 0, 224, 0, 159194),
(42, 3199, 'DJ Sanghvi', 'IT', 'Mumbai', 0, 2, 0, 0, 0, 0, 271, 0, 0, 346, 0, 159194),
(43, 3135, 'MCT\'s Rajiv Gandhi', 'CE', 'Mumbai', 0, 5, 2, 2, 1, 2, 951, 18264, 2478, 4612, 0, 96896),
(44, 3135, 'MCT\'s Rajiv Gandhi', 'IT', 'Mumbai', 0, 3, 2, 1, 0, 1, 932, 0, 3284, 7089, 0, 96896),
(45, 3139, 'Vidyalankar,Wadala', 'CE', 'Mumbai', 0, 4, 3, 2, 1, 2, 570, 14636, 1761, 2057, 8084, 138590),
(46, 3139, 'Vidyalankar,Wadala', 'IT', 'Mumbai', 0, 5, 3, 2, 2, 3, 574, 26293, 2906, 5954, 1249, 138590),
(47, 3174, 'Ramrao Adik,Navi Mumbai', 'CE1', 'Mumbai', 0, 6, 3, 2, 2, 2, 788, 5406, 1679, 2633, 0, 32500),
(48, 3174, 'Ramrao Adik,Navi Mumbai', 'CE2', 'Mumbai', 0, 3, 2, 1, 0, 1, 941, 0, 2495, 5597, 0, 32500),
(49, 3174, 'Ramrao Adik,Navi Mumbai', 'IT', 'Mumbai', 0, 3, 3, 2, 2, 2, 1245, 20726, 3703, 8333, 0, 32500),
(50, 4167, 'YCCOE', 'CT', 'Nagpur', 1, 0, 0, 0, 0, 0, 4751, 8022, 5959, 6750, 25453, 151554),
(51, 4167, 'YCCOE', 'IT', 'Nagpur', 1, 2, 2, 1, 0, 1, 5012, 0, 5350, 3424, 5131, 151554),
(52, 4115, 'Ramdeobaba', 'CSE1', 'Nagpur', 1, 0, 0, 0, 0, 0, 87, 0, 0, 3332, 0, 154900),
(54, 4115, 'Ramdeobaba', 'IT', 'Nagpur', 1, 2, 0, 0, 0, 0, 1376, 0, 0, 7105, 0, 154900),
(55, 1002, 'Govt Clg, Amravati', 'CSE', 'Amravati', 1, 0, 0, 0, 0, 0, 1116, 0, 2069, 6250, 0, 84445),
(56, 1002, 'Govt Clg, Amravati', 'IT', 'Amravati', 1, 2, 2, 2, 0, 1, 1921, 0, 2340, 6250, 0, 84445),
(57, 6156, 'Marathwada Mitra Mandal', 'CE', 'Pune', 0, 4, 3, 2, 1, 2, 3101, 8513, 5025, 12447, 0, 100000),
(58, 6156, 'Marathwada Mitra Mandal', 'IT', 'Pune', 0, 3, 1, 2, 2, 3, 4074, 8402, 6503, 13052, 0, 100000),
(59, 6141, 'Rajarshi Shau tathewade', 'CM', 'Pune', 0, 3, 2, 1, 1, 1, 1240, 5763, 1935, 4999, 0, 112000),
(60, 6141, 'Rajarshi Shau tathewade', 'IT', 'Pune', 0, 4, 2, 2, 1, 3, 4065, 10302, 4831, 11357, 22599, 112000),
(61, 6281, 'Modern', 'CE', 'pune', 0, 4, 3, 2, 2, 3, 2000, 5757, 4010, 10234, 5956, 104739),
(62, 6281, 'Modern', 'CE', 'pune', 0, 3, 1, 1, 2, 2, 2559, 7241, 18407, 11563, 0, 104739),
(63, 6178, 'Kashibai Navale, Vadgaon', 'CE1', 'Pune', 0, 11, 5, 4, 3, 4, 4651, 10626, 6033, 17015, 17755, 276000),
(64, 6178, 'Kashibai Navale, Vadgaon', 'CE2', 'Pune', 0, 3, 2, 1, 0, 2, 4801, 13164, 62111, 17423, 0, 276000),
(65, 6178, 'Kashibai Navale, Vadgaon', 'IT', 'Pune', 0, 5, 3, 2, 2, 4, 6558, 15071, 6481, 23179, 14130, 276000),
(66, 6272, 'DY Patil Akurdi', 'CE', 'pune', 0, 4, 2, 2, 1, 4, 1829, 3978, 2893, 5330, 3429, 123292),
(67, 6272, 'DY Patil Akurdi', 'IT', 'pune', 0, 4, 3, 2, 1, 2, 2788, 4993, 3252, 11495, 4417, 123292),
(68, 6802, 'DY Patil Akurdi', 'CE', 'Pune', 0, 4, 3, 2, 1, 2, 3178, 4929, 3898, 8897, 11773, 100000),
(69, 6754, 'IIIT', 'CE', 'pune', 0, 3, 2, 1, 0, 1, 2572, 5953, 3372, 11512, 0, 243500),
(70, 6754, 'IIIT', 'IT', 'pune', 0, 4, 2, 1, 1, 3, 4398, 7415, 5197, 15045, 32910, 243500),
(71, 6822, 'PCCOE, Ravet', 'CE', 'Pune', 0, 4, 1, 1, 1, 2, 2292, 3845, 2692, 9994, 0, 106894),
(72, 6278, 'AISSM,Pune', 'CE', 'Pune', 0, 3, 2, 1, 1, 1, 1791, 4827, 2832, 4820, 0, 136000),
(73, 6278, 'AISSM,Pune', 'CE', 'Pune', 0, 4, 2, 1, 0, 1, 2564, 0, 3055, 9481, 7566, 136000),
(74, 6285, 'Bharti Vidyapeeth(women)', 'CE', 'Pune', 0, 5, 3, 2, 2, 1, 2488, 7435, 4504, 6690, 0, 82002),
(75, 6285, 'Bharti Vidyapeeth(women)', 'IT', 'Pune', 0, 10, 5, 3, 2, 2, 6617, 10706, 8946, 21073, 23600, 82002),
(76, 5121, 'K.K Wagh', 'CE', 'Nashik', 0, 5, 4, 3, 0, 5, 1999, 796, 2194, 7016, 8172, 80850),
(77, 5121, 'K.K Wagh', 'IT', 'Nashik', 0, 3, 1, 1, 1, 1, 3083, 3166, 3179, 7612, 0, 80850),
(78, 6214, 'Rit walva Sangali', 'CE', 'Sangli', 1, 4, 2, 1, 0, 1, 1522, 9629, 2849, 5886, 0, 135905),
(79, 6214, 'Rit walva Sangali', 'IT', 'Sangli', 1, 4, 3, 3, 0, 3, 3748, 0, 10325, 6684, 9263, 135905),
(80, 3033, 'Batu', 'CE', 'Lonere', 0, 4, 2, 2, 1, 2, 3952, 0, 4241, 18418, 0, 83280),
(81, 3033, 'Batu', 'IT', 'Lonere', 0, 5, 2, 2, 2, 3, 6833, 13102, 8753, 15115, 53313, 83280),
(82, 3176, 'Thakur', 'CE', 'Mumbai', 0, 9, 0, 0, 0, 0, 906, 0, 0, 2035, 0, 146326),
(83, 3176, 'Thakur', 'IT', 'Mumbai', 0, 6, 0, 0, 0, 0, 834, 0, 0, 4139, 0, 146326),
(84, 3209, 'KJ somaiya, sion', 'CE', 'Mumbai', 0, 5, 0, 0, 0, 0, 700, 0, 0, 1159, 0, 150000),
(86, 4025, 'Govt Nagpur', 'CE', 'Nagpur', 1, 3, 1, 1, 2, 2, 1258, 0, 3347, 16437, 13865, 100000),
(87, 6222, 'DKTE ,Ichalkarnji', 'CSE', 'Ichalkaranji', 1, 4, 3, 2, 1, 2, 2561, 7877, 7744, 8527, 17890, 161000),
(88, 6250, 'DY Patil Kolhapur', 'CSE', 'Kolhapur', 0, 10, 5, 4, 2, 20, 5352, 14933, 12440, 8014, 22977, 114085),
(89, 6267, 'KIT ,Kolhapur', 'CSE', 'Kolhapur', 1, 9, 5, 3, 2, 3, 2995, 6426, 3534, 25072, 45938, 104996),
(90, 6268, 'TKIT,Warnanagar', 'CSE', 'Warnanagr', 0, 15, 7, 5, 3, 19, 9715, 25927, 18301, 12360, 0, 98400),
(91, 6283, 'Annasaheb Danghe,Ashta', 'CSE', 'Sangli', 1, 7, 4, 3, 2, 10, 3592, 17746, 7818, 20932, 0, 101000),
(92, 6284, 'Vidya pratishtan Baramati', 'CE', 'pune', 0, 4, 2, 1, 0, 1, 4230, 5844, 4033, 43575, 9589, 97519),
(93, 6284, 'Vidya pratishtan Baramati', 'IT', 'pune', 0, 3, 2, 1, 1, 7, 9193, 6217, 12639, 9988, 0, 97519),
(94, 6265, 'WIT, Solapur', 'CSE1', 'Solapur', 0, 6, 0, 0, 0, 0, 1819, 0, 0, 15532, 0, 106507),
(95, 6265, 'WIT, Solapur', 'CSE2', 'Solapur', 0, 2, 0, 0, 0, 0, 2830, 0, 0, 16378, 0, 106507),
(96, 6265, 'WIT, Solapur', 'IT', 'Solapur', 0, 2, 0, 0, 0, 0, 2661, 0, 0, 7416, 0, 106507),
(97, 6223, 'Orchid', 'CSE', 'Solapur', 0, 6, 3, 2, 2, 10, 2121, 5454, 2696, 3531, 0, 95954),
(98, 6004, 'Govt Avasari', 'CM', 'Avasari', 0, 3, 1, 1, 2, 4, 981, 2989, 2569, 10516, 35624, 100000),
(99, 6220, 'SVERI pandharpur', 'CSE', 'pandhupur', 0, 4, 3, 2, 0, 6, 4137, 5093, 8906, 22447, 10512, 92000),
(100, 6182, 'sinhgad Narhe', 'CE1', 'Ambegaon', 0, 3, 1, 0, 2, 6, 8986, 0, 14564, 29773, 33633, 112602),
(101, 6182, 'sinhgad Narhe', 'CE2', 'Ambegaon', 0, 4, 1, 0, 1, 6, 14633, 0, 18176, 37102, 24128, 112602),
(102, 6182, 'sinhgad Narhe', 'IT', 'Ambegaon', 0, 4, 1, 1, 1, 7, 19248, 31604, 23024, 11427, 0, 112602),
(103, 1101, 'Gajanan', 'CSE', 'Shegaon', 0, 3, 1, 1, 1, 2, 2309, 6633, 4511, 9059, 0, 113110),
(104, 1101, 'Gajanan', 'IT', 'Shegaon', 0, 4, 2, 2, 0, 1, 5761, 10002, 5760, 11364, 9053, 113110),
(105, 6207, 'DY Patil pimpri', 'CE1', 'pune', 0, 8, 4, 2, 3, 5, 3681, 5303, 4338, 13440, 0, 123292),
(106, 6207, 'DY Patil pimpri', 'CE2', 'pune', 0, 3, 1, 1, 1, 1, 3692, 6959, 4914, 13679, 0, 123292),
(107, 6207, 'DY Patil pimpri', 'IT', 'pune', 0, 3, 2, 1, 0, 2, 4400, 11779, 5133, 8189, 0, 123292),
(108, 6640, 'Sinhgad,Solapur', 'CSE', 'Solapur', 0, 7, 3, 2, 1, 6, 5099, 7094, 5773, 36967, 22574, 75240),
(109, 6643, 'Sinhgad,Pandharpur', 'CSE', 'pandhupur', 0, 5, 3, 2, 1, 4, 11984, 14065, 16827, 8161, 0, 75601),
(110, 6139, 'Modern', 'CE1', 'Pune', 0, 4, 1, 1, 1, 3, 2272, 5906, 3325, 11790, 16532, 99000),
(111, 6139, 'Modern', 'CE2', 'Pune', 0, 4, 1, 1, 2, 1, 3381, 0, 3858, 12623, 11269, 99000),
(112, 6139, 'Modern', 'IT1', 'Pune', 0, 3, 2, 1, 1, 2, 3804, 0, 5216, 16574, 9192, 99000),
(113, 6139, 'Modern', 'IT2', 'Pune', 0, 4, 2, 1, 0, 1, 4610, 6723, 5831, 30313, 0, 99000),
(114, 6155, 'Raisoni,Wagholi', 'CE', 'Pune', 1, 8, 0, 0, 0, 0, 7418, 0, 0, 40763, 0, 118294),
(115, 6155, 'Raisoni,Wagholi', 'CE', 'Pune', 1, 3, 0, 0, 0, 0, 8776, 0, 0, 0, 0, 118294),
(117, 6160, 'JSPM,Wagholi', 'CE', 'Pune', 0, 4, 2, 1, 1, 5, 3045, 9648, 7561, 14840, 107000, 118294),
(118, 6308, 'AG Patil', 'CE', 'Solapur', 0, 17, 8, 5, 3, 7, 2706, 8379, 5883, 21163, 0, 62000),
(119, 6308, 'AG Patil', 'IT', 'Solapur', 0, 0, 5, 3, 3, 3, 3944, 14946, 5895, 35180, 17680, 62000),
(120, 6293, 'BMIT,Solapur', 'CSE', 'Solapur', 0, 14, 7, 5, 1, 7, 14385, 12939, 19669, 23992, 26568, 98000),
(121, 6321, 'VVP,Solapur', 'CSE', 'Solapur', 0, 12, 5, 4, 2, 3, 9627, 0, 13433, 0, 0, 76500),
(123, 6145, 'JSPM,Wagholi', 'CE', 'Pune', 0, 6, 4, 3, 1, 4, 2614, 13955, 5703, 14232, 0, 100735),
(124, 6145, 'JSPM,Wagholi', 'IT', 'Pune', 0, 3, 3, 1, 1, 6, 7120, 17098, 9105, 0, 0, 100735),
(125, 6176, 'Raisoni,Wagholi', 'CE', 'Pune', 0, 3, 0, 0, 0, 0, 13095, 0, 0, 0, 0, 118294),
(126, 6176, 'Raisoni,Wagholi', 'IT', 'Pune', 0, 10, 0, 0, 0, 0, 18529, 0, 0, 17015, 6498, 118294),
(127, 6178, 'Sinhgad kshibai, vadgaon', 'CE1', 'Pune', 0, 11, 5, 4, 3, 4, 4651, 10626, 6033, 17423, 0, 107652),
(128, 6178, 'Sinhgad kshibai, vadgaon', 'CE2', 'Pune', 0, 3, 2, 1, 0, 2, 4801, 13164, 6111, 23179, 14130, 107652),
(129, 6178, 'Sinhgad kshibai, vadgaon', 'IT', 'Pune', 0, 5, 3, 2, 2, 4, 6558, 15071, 8250, 37648, 25224, 107652),
(130, 6179, 'Indira college', 'CE', 'Pune', 0, 10, 6, 4, 1, 11, 17476, 16392, 25591, 16147, 26366, 104000),
(131, 6187, 'Sinhgad, konwa-saswad', 'CE1', 'Pune', 0, 9, 5, 4, 1, 10, 9979, 18504, 12730, 24125, 19554, 99102),
(132, 6187, 'Sinhgad, konwa-saswad', 'CE2', 'Pune', 0, 5, 3, 2, 1, 7, 14064, 21016, 17013, 28056, 25312, 99102),
(133, 6187, 'Sinhgad, konwa-saswad', 'IT', 'Pune', 0, 5, 3, 2, 2, 4, 19505, 22589, 22062, 22199, 30296, 99102),
(134, 6203, 'Marathwada Mitra Mandal lohgaon', 'CE', 'Pune', 0, 9, 4, 4, 3, 11, 8803, 13101, 11484, 33511, 33034, 100000),
(135, 6206, 'Pune District Education Association\'s College', 'CE', 'Pune', 0, 10, 6, 3, 2, 7, 11687, 20181, 18317, 42655, 48423, 90000),
(136, 6206, 'Pune District Education Association\'s College', 'IT', 'Pune', 0, 8, 4, 2, 1, 3, 17765, 0, 21978, 11350, 0, 90000),
(137, 6282, 'All India Shri Shivaji Memorial Society\'s Institute of Information Technology', 'CE1', 'Pune', 0, 4, 1, 1, 0, 1, 2370, 3530, 3098, 12166, 0, 0),
(138, 6282, 'All India Shri Shivaji Memorial Society\'s Institute of Information Technology', 'CE2', 'Pune', 0, 4, 2, 1, 0, 2, 2704, 6148, 3321, 14298, 7289, 0),
(139, 6282, 'All India Shri Shivaji Memorial Society\'s Institute of Information Technology', 'IT', 'Pune', 0, 3, 1, 1, 1, 1, 3308, 7479, 3867, 8840, 0, 0),
(140, 6298, 'Zeal Education Society\'s Zeal College of Engineering & Reserch,', 'CE1', 'Narhe, Pune', 0, 5, 3, 3, 1, 13, 5534, 13873, 11482, 16260, 18409, 95000),
(141, 6298, 'Zeal Education Society\'s Zeal College of Engineering & Reserch,', 'CE2', 'Narhe, Pune', 0, 3, 1, 1, 1, 7, 10974, 19117, 11223, 26196, 28536, 95000),
(142, 6298, 'Zeal Education Society\'s Zeal College of Engineering & Reserch,', 'IT', 'Narhe, Pune', 0, 5, 3, 2, 2, 14, 12945, 22988, 19591, 19018, 17715, 95000),
(143, 6732, 'Dr. D. Y. Patil School OF Engineering, Lohegaon', 'CE', 'Pune', 0, 4, 3, 1, 1, 13, 7155, 17212, 9270, 43637, 42910, 95068),
(144, 6758, 'Sahyadri Valley College of Engineering & Technology, Rajuri', 'CE', 'pune', 0, 15, 6, 5, 3, 3, 32185, 0, 39387, 47596, 0, 61000),
(145, 6794, 'Anantrao Pawar College of Engineering & Research,', 'CE', 'Pune', 0, 7, 4, 2, 1, 7, 16236, 0, 26308, 0, 37947, 67000),
(146, 6794, 'Anantrao Pawar College of Engineering & Research,', 'IT', 'Pune', 0, 17, 7, 6, 4, 7, 29035, 46460, 36527, 14677, 8336, 67000),
(147, 6796, 'Bharati Vidyapeeth\'s College of Engineering,Lavale,', 'CE', 'Pune', 0, 4, 1, 2, 2, 2, 5571, 17094, 8154, 0, 0, 86719),
(148, 0, 'Collage Name', 'Dept', 'City', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `subject`, `email`, `message`) VALUES
(1, 'siddhesh', 'test', 'shindesiddhesh@gmail.com', 'helo world'),
(2, 'Somesh', 'Great', 'someshsomani457@gmail.com', 'Great'),
(3, 'Prathamesh', 'Compliment', 'prathamesh@gmail.com', 'Good one man'),
(4, 'Ajinkya', 'Compliment', '2000ajinkya@gmail.com', 'Noiceee app'),
(5, 'garud mam', 'imporve', 'garudmam@gmail.com', 'hello word'),
(6, 'Prathamesh', 'Compliment', 'pthakare72003@camiler.com', 'Noiceeee!!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_list`
--
ALTER TABLE `college_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college_list`
--
ALTER TABLE `college_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
