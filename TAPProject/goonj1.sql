-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2020 at 07:08 AM
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
-- Database: `goonj1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('gulu@gmail.com', 'gg');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `dname` varchar(20) NOT NULL,
  `question1` text NOT NULL,
  `question2` text NOT NULL,
  `question3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`dname`, `question1`, `question2`, `question3`) VALUES
('coding', 'Tell Us about your past achievements in coding?', 'Explain about your past project that you have worked on them?', 'Tell us about your teaching experience in coding ?'),
('dance', 'Tell us about your past achievements in dancing?', 'Have you won any competitions?', 'why do you want to join us?');

-- --------------------------------------------------------

--
-- Table structure for table `satreg`
--

CREATE TABLE `satreg` (
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `club` varchar(20) DEFAULT NULL,
  `reason` varchar(400) DEFAULT NULL,
  `date1` varchar(40) DEFAULT NULL,
  `sustitute` varchar(20) DEFAULT NULL,
  `subsidetails` varchar(400) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satreg`
--

INSERT INTO `satreg` (`email`, `name`, `club`, `reason`, `date1`, `sustitute`, `subsidetails`, `city`) VALUES
('gulu@gmail.com', 'trryreu', 'dance', 'sfghtiuo', NULL, 'yes', 'safaergtertyty', 'mumbai'),
('2017.chirag.nagpal@ves.ac.in', 'aftut', 'dance', 'geyurtyi87', NULL, 'yes', 'areruigyuiy', 'mumbai'),
('gulshankataria4102@gmail.com', 'gulshan kataria ', 'dance', 'ff', NULL, 'yes', 'fff', 'mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `schoolid` int(11) NOT NULL,
  `suburb` text NOT NULL,
  `domains` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `substitutes`
--

CREATE TABLE `substitutes` (
  `id` int(40) NOT NULL,
  `name` varchar(60) NOT NULL,
  `Domain` varchar(20) NOT NULL,
  `Branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `substitutes`
--

INSERT INTO `substitutes` (`id`, `name`, `Domain`, `Branch`) VALUES
(1, 'raju', 'coding', 'Bandra'),
(2, 'kisan', 'coding', 'Bandra'),
(3, 'sahil', 'publicspeaking', 'Bandra'),
(4, 'aadrsh', 'publicspeaking', 'Bandra'),
(5, 'pawan', 'dance', 'Bandra');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers1`
--

CREATE TABLE `volunteers1` (
  `name` varchar(40) NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `age` int(11) NOT NULL,
  `phn` int(11) NOT NULL,
  `aadhar` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `field1` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `isselected` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteers1`
--

INSERT INTO `volunteers1` (`name`, `id`, `email`, `age`, `phn`, `aadhar`, `address`, `field1`, `city`, `password`, `isselected`) VALUES
('gulshan kataria ', 1, 'gulshankataria4102@gmail.com', 12, 2147483647, '44442111', 'kurla camp', 'dance', 'mumbai', '', 'yes'),
('fafu', 3, '2017.chirag.nagpalves.ac.in', 12, 2147483647, '2212144', '5 no ulhas', 'coding', 'others', 'b', 'no'),
('mkQ', 5, 'gulu@com', 67, 1234567890, '43211222', 'bandra road', 'dance', 'mumbai', 'gulu@com', 'yes'),
('gulsha', 7, 'gulu.com', 67, 2147483647, '4461232121', 'fdssss dss', 'coding', 'mumbai', 'gulu.com', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers2`
--

CREATE TABLE `volunteers2` (
  `v2_id` int(11) NOT NULL,
  `experience` varchar(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `er_rating` int(11) DEFAULT NULL,
  `pr_rating` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `suburb_pref1` varchar(30) DEFAULT NULL,
  `suburb_pref2` varchar(30) DEFAULT NULL,
  `suburb_pref3` varchar(30) DEFAULT NULL,
  `answer1` text DEFAULT NULL,
  `answer2` text DEFAULT NULL,
  `answer3` text DEFAULT NULL,
  `field1` varchar(30) DEFAULT NULL,
  `time1` varchar(40) NOT NULL,
  `file` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteers2`
--

INSERT INTO `volunteers2` (`v2_id`, `experience`, `description`, `er_rating`, `pr_rating`, `id`, `suburb_pref1`, `suburb_pref2`, `suburb_pref3`, `answer1`, `answer2`, `answer3`, `field1`, `time1`, `file`) VALUES
(1, '0', NULL, NULL, NULL, NULL, 'dance', 'dance', 'dance', 'ff', 'ww', 'ww', NULL, '', ''),
(2, '5', NULL, NULL, NULL, NULL, 'public speaking', 'drama', 'public speaking', 'fghhjsadfrtfg yh', 'sfdgfh', 'sdfgh', NULL, '', ''),
(3, '25', NULL, NULL, NULL, NULL, 'dance', 'dance', 'dance', 'ddd', 'dddd', 'dddd', NULL, '1-2', ''),
(4, '25', NULL, NULL, NULL, NULL, 'dance', 'dance', 'dance', 'ddd', 'ddd', 'ddd', NULL, '1-2', 0x31202832292e6a7067),
(5, '25', NULL, NULL, NULL, NULL, 'dance', 'dance', 'dance', 'ddd', 'ddd', 'ddd', NULL, '1-2', 0x31202832292e6a7067),
(6, '25', NULL, NULL, NULL, NULL, 'dance', 'dance', 'dance', 'ddd', 'ddd', 'ddd', NULL, '1-2', 0x31202832292e6a7067),
(7, '25', NULL, NULL, NULL, NULL, 'dance', 'dance', 'dance', 'ddd', 'ddd', 'ddd', NULL, '1-2', 0x31202832292e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`dname`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`schoolid`);

--
-- Indexes for table `volunteers1`
--
ALTER TABLE `volunteers1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `volunteers2`
--
ALTER TABLE `volunteers2`
  ADD PRIMARY KEY (`v2_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `schoolid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteers1`
--
ALTER TABLE `volunteers1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `volunteers2`
--
ALTER TABLE `volunteers2`
  MODIFY `v2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `volunteers2`
--
ALTER TABLE `volunteers2`
  ADD CONSTRAINT `volunteers2_ibfk_1` FOREIGN KEY (`id`) REFERENCES `volunteers1` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
