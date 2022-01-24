-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2020 at 05:12 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ck104`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_ID` varchar(10) NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `dept_name` varchar(30) NOT NULL,
  `credits` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_ID`, `course_name`, `dept_name`, `credits`) VALUES
('BIO003', 'Biology in Society', 'Biology', 3),
('BIO004', 'Human Biology', 'Biology', 4),
('CSC014', 'Discrete Structures 1', 'Computer Science', 3),
('CSC015', 'Fundamentals of CS 1', 'Computer Science', 4),
('CSC016', 'Fundamentals of CS 2', 'Computer Science', 4),
('CSC024', 'Discrete Structures 2', 'Computer Science', 3),
('CSC110', 'Intro to Computer Architecture', 'Computer Science', 3),
('CSC110A', 'Computer Architecture Lab', 'Computer Science', 1),
('CSC112', 'Computer Operating Systems', 'Computer Science', 3),
('CSC120', 'Algorithms and Data Structures', 'Computer Science', 3),
('CSC161', 'Intro to Automata Theory', 'Computer Science', 3),
('ECO001', 'Principles of Economics 1', 'Economics', 3),
('ECO125', 'Monetary Economics', 'Economics', 3),
('ECO171', 'Law and Economics', 'Economics', 3),
('MATH050', 'Precalculus', 'Mathematics', 4),
('MATH071', 'Analytic Geometry & Calculus 1', 'Mathematics', 4),
('MATH072', 'Analytic Geometry & Calculus 2', 'Mathematics', 4),
('PHYS001A', 'Elementary Physics', 'Physics', 3),
('PHYS011A', 'General Physics', 'Physics', 4),
('PHYS011B', 'General Physics Lab', 'Physics', 1),
('RHET001', 'Oral Communication', 'Writing Studies and Rhetoric', 3),
('WSC001', 'Composition 1', 'Writing Studies and Rhetoric', 3),
('WSC002', 'Composition 2', 'Writing Studies and Rhetoric', 3);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` varchar(30) NOT NULL,
  `building` varchar(30) NOT NULL,
  `budget` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `building`, `budget`) VALUES
('Biology', 'Gittleson', 80000),
('Computer Science', 'Adams', 100000),
('Economics', 'Barnard', 70000),
('Mathematics', 'Rosevelt', 70000),
('Physics', 'Berliner', 80000),
('Writing Studies and Rhetoric', 'Mason', 40000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report1`
-- (See below for the actual view)
--
CREATE TABLE `report1` (
`building` varchar(30)
,`dept_name` varchar(30)
,`budget` float
,`course_ID` varchar(15)
,`sec_ID` varchar(10)
,`semester` varchar(10)
,`year` int(4)
,`room_number` int(3)
,`days` varchar(7)
,`start_time` time
,`end_time` time
,`instructor` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report2`
-- (See below for the actual view)
--
CREATE TABLE `report2` (
`instructor` varchar(40)
,`dept_name` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report3`
-- (See below for the actual view)
--
CREATE TABLE `report3` (
`course_ID` varchar(15)
,`sec_ID` varchar(10)
,`days` varchar(7)
,`start_time` time
,`end_time` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report4`
-- (See below for the actual view)
--
CREATE TABLE `report4` (
`course_ID` varchar(15)
,`sec_ID` varchar(10)
,`semester` varchar(10)
,`year` int(4)
,`building` varchar(30)
,`room_number` int(3)
,`days` varchar(7)
,`start_time` time
,`end_time` time
,`instructor` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report5InnerJoin`
-- (See below for the actual view)
--
CREATE TABLE `report5InnerJoin` (
`course_ID` varchar(10)
,`sec_ID` varchar(10)
,`semester` varchar(10)
,`year` int(4)
,`building` varchar(30)
,`room_number` int(3)
,`days` varchar(7)
,`start_time` time
,`end_time` time
,`instructor` varchar(40)
,`course_name` varchar(40)
,`dept_name` varchar(30)
,`credits` float
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `report5OuterJoin`
-- (See below for the actual view)
--
CREATE TABLE `report5OuterJoin` (
`course_ID` varchar(15)
,`sec_ID` varchar(10)
,`semester` varchar(10)
,`year` int(11)
,`building` varchar(30)
,`room_number` int(11)
,`days` varchar(7)
,`start_time` time
,`end_time` time
,`instructor` varchar(40)
,`course_name` varchar(40)
,`dept_name` varchar(30)
,`credits` float
);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `course_ID` varchar(15) NOT NULL,
  `sec_ID` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `year` int(4) NOT NULL,
  `building` varchar(30) NOT NULL,
  `room_number` int(3) NOT NULL,
  `days` varchar(7) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `instructor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`course_ID`, `sec_ID`, `semester`, `year`, `building`, `room_number`, `days`, `start_time`, `end_time`, `instructor`) VALUES
('BIO003', '02', 'Spring', 2022, 'Gittleson', 201, 'TR', '12:45:00', '14:15:00', 'Pepitone'),
('BIO004', '01', 'Spring', 2022, 'Gittleson', 201, 'MW', '11:25:00', '13:15:00', 'Pepitone'),
('BIO004', '02', 'Spring', 2022, 'Gittleson', 202, 'TR', '11:05:00', '12:20:00', 'Burke'),
('CSC014', '01', 'Spring', 2022, 'Adams', 109, 'TR', '13:45:00', '15:30:00', 'Jeffreys'),
('CSC014', '02', 'Spring', 2022, 'Adams', 109, 'TR', '10:00:00', '11:25:00', 'Pillaipakkamnatt'),
('CSC015', '01', 'Spring', 2022, 'Adams', 103, 'MW', '13:45:00', '15:30:00', 'Jeffreys'),
('CSC015', '02', 'Spring', 2022, 'Adams', 204, 'MW', '16:30:00', '18:00:00', 'Liang'),
('CSC016', '01', 'Spring', 2022, 'Adams', 208, 'TR', '19:10:00', '20:40:00', 'Segal'),
('CSC016', '02', 'Spring', 2022, 'Adams', 206, 'MW', '16:05:00', '17:35:00', 'Doboli'),
('CSC024', '01', 'Spring', 2022, 'Adams', 103, 'TR', '16:10:00', '17:40:00', 'Jeffreys'),
('CSC110A', '01', 'Spring', 2022, 'Adams', 101, 'MW', '11:30:00', '12:10:00', 'Ben-Avi'),
('CSC112', '01', 'Spring', 2022, 'Adams', 203, 'TR', '11:35:00', '13:05:00', 'Zavou'),
('CSC120', '01', 'Spring', 2022, 'Adams', 103, 'TR', '18:45:00', '20:15:00', 'Jeffreys'),
('ECO001', '01', 'Spring', 2022, 'Barnard', 210, 'TR', '08:00:00', '09:30:00', 'Fazeli'),
('ECO125', '01', 'Spring', 2022, 'Barnard', 110, 'TR', '12:35:00', '14:05:00', 'Guttmann'),
('MATH050', '01', 'Spring', 2022, 'Rosevelt', 102, 'MWF', '09:30:00', '11:00:00', 'Ostrick'),
('MATH050', '02', 'Spring', 2022, 'Rosevelt', 103, 'MWF', '09:35:00', '11:05:00', 'Silberger'),
('MATH071', '01', 'Spring', 2022, 'Rosevelt', 201, 'MWF', '11:10:00', '12:40:00', 'Silberger'),
('MATH071', '02', 'Spring', 2022, 'Rosevelt', 105, 'MWF', '11:30:00', '13:00:00', 'Ismailescu'),
('MATH072', '01', 'Spring', 2022, 'Rosevelt', 105, 'MWF', '14:30:00', '16:00:00', 'Ismailescu'),
('MATH072', '02', 'Spring', 2022, 'Rosevelt', 103, 'MWF', '12:50:00', '14:20:00', 'Silberger'),
('PHYS001A', '01', 'Spring', 2022, 'Berliner', 103, 'TR', '09:35:00', '11:05:00', 'Hayon'),
('PHYS001A', '02', 'Spring', 2022, 'Berliner', 102, 'TR', '10:00:00', '11:30:00', 'Smylie'),
('PHYS011A', '01', 'Spring', 2022, 'Berliner', 102, 'MW', '16:30:00', '18:20:00', 'Hayon'),
('PHYS011A', '02', 'Spring', 2022, 'Berliner', 102, 'MW', '09:30:00', '11:20:00', 'Smylie'),
('PHYS011B', '01', 'Spring', 2022, 'Berliner', 204, 'TR', '11:40:00', '15:10:00', 'Smylie'),
('PHYS011B', '02', 'Spring', 2022, 'Berliner', 204, 'MW', '11:00:00', '14:25:00', 'Edwards'),
('WSC002', '02', 'Spring', 2022, 'Mason', 108, 'TR', '08:00:00', '09:30:00', 'McDonough');

-- --------------------------------------------------------

--
-- Structure for view `report1`
--
DROP TABLE IF EXISTS `report1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ck104`@`%` SQL SECURITY DEFINER VIEW `report1`  AS  select `department`.`building` AS `building`,`department`.`dept_name` AS `dept_name`,`department`.`budget` AS `budget`,`section`.`course_ID` AS `course_ID`,`section`.`sec_ID` AS `sec_ID`,`section`.`semester` AS `semester`,`section`.`year` AS `year`,`section`.`room_number` AS `room_number`,`section`.`days` AS `days`,`section`.`start_time` AS `start_time`,`section`.`end_time` AS `end_time`,`section`.`instructor` AS `instructor` from (`department` join `section` on((`department`.`building` = `section`.`building`))) order by `section`.`instructor` ;

-- --------------------------------------------------------

--
-- Structure for view `report2`
--
DROP TABLE IF EXISTS `report2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ck104`@`%` SQL SECURITY DEFINER VIEW `report2`  AS  select distinct `section`.`instructor` AS `instructor`,`department`.`dept_name` AS `dept_name` from (`department` join `section` on((`department`.`building` = `section`.`building`))) ;

-- --------------------------------------------------------

--
-- Structure for view `report3`
--
DROP TABLE IF EXISTS `report3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ck104`@`%` SQL SECURITY DEFINER VIEW `report3`  AS  select `section`.`course_ID` AS `course_ID`,`section`.`sec_ID` AS `sec_ID`,`section`.`days` AS `days`,`section`.`start_time` AS `start_time`,`section`.`end_time` AS `end_time` from `section` where (`section`.`course_ID` like '%CSC%') ;

-- --------------------------------------------------------

--
-- Structure for view `report4`
--
DROP TABLE IF EXISTS `report4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ck104`@`%` SQL SECURITY DEFINER VIEW `report4`  AS  select `section`.`course_ID` AS `course_ID`,`section`.`sec_ID` AS `sec_ID`,`section`.`semester` AS `semester`,`section`.`year` AS `year`,`section`.`building` AS `building`,`section`.`room_number` AS `room_number`,`section`.`days` AS `days`,`section`.`start_time` AS `start_time`,`section`.`end_time` AS `end_time`,`section`.`instructor` AS `instructor` from `section` ;

-- --------------------------------------------------------

--
-- Structure for view `report5InnerJoin`
--
DROP TABLE IF EXISTS `report5InnerJoin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ck104`@`%` SQL SECURITY DEFINER VIEW `report5InnerJoin`  AS  select `course`.`course_ID` AS `course_ID`,`section`.`sec_ID` AS `sec_ID`,`section`.`semester` AS `semester`,`section`.`year` AS `year`,`section`.`building` AS `building`,`section`.`room_number` AS `room_number`,`section`.`days` AS `days`,`section`.`start_time` AS `start_time`,`section`.`end_time` AS `end_time`,`section`.`instructor` AS `instructor`,`course`.`course_name` AS `course_name`,`course`.`dept_name` AS `dept_name`,`course`.`credits` AS `credits` from (`section` join `course` on((`course`.`course_ID` = `section`.`course_ID`))) where ((`section`.`course_ID` like '%CSC%') or (`section`.`course_ID` like '%MATH%')) ;

-- --------------------------------------------------------

--
-- Structure for view `report5OuterJoin`
--
DROP TABLE IF EXISTS `report5OuterJoin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`ck104`@`%` SQL SECURITY DEFINER VIEW `report5OuterJoin`  AS  select `section`.`course_ID` AS `course_ID`,`section`.`sec_ID` AS `sec_ID`,`section`.`semester` AS `semester`,`section`.`year` AS `year`,`section`.`building` AS `building`,`section`.`room_number` AS `room_number`,`section`.`days` AS `days`,`section`.`start_time` AS `start_time`,`section`.`end_time` AS `end_time`,`section`.`instructor` AS `instructor`,`course`.`course_name` AS `course_name`,`course`.`dept_name` AS `dept_name`,`course`.`credits` AS `credits` from (`section` left join `course` on((`course`.`course_ID` = `section`.`course_ID`))) where ((`section`.`course_ID` like '%CSC%') or (`section`.`course_ID` like '%MATH%')) union select `section`.`course_ID` AS `course_ID`,`section`.`sec_ID` AS `sec_ID`,`section`.`semester` AS `semester`,`section`.`year` AS `year`,`section`.`building` AS `building`,`section`.`room_number` AS `room_number`,`section`.`days` AS `days`,`section`.`start_time` AS `start_time`,`section`.`end_time` AS `end_time`,`section`.`instructor` AS `instructor`,`course`.`course_name` AS `course_name`,`course`.`dept_name` AS `dept_name`,`course`.`credits` AS `credits` from (`course` left join `section` on((`course`.`course_ID` = `section`.`course_ID`))) where ((`section`.`course_ID` like '%CSC%') or (`section`.`course_ID` like '%MATH%')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`course_ID`,`sec_ID`,`semester`,`year`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
