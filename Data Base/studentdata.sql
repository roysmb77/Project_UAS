-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 09:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`, `description`, `degree`) VALUES
(1, 'BCSC', 'Computer Science', 'Bachelor of Science in Computer Science'),
(2, 'BSCE', 'Computer Engineering', 'Bachelor of Science in Computer Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `studentNum` int(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `birth` date DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentNum`, `year`, `course`, `firstName`, `lastName`, `gender`, `birth`, `status`, `image`, `date`) VALUES
(8, 20240001, 'First Year', 'BCSC', 'Kim', 'Jisoo', 'Female', '1995-01-03', 'Enrolled', 'C:\\\\Users\\\\User\\\\Documents\\\\NetBeansProjects\\\\StudentManagementSystem\\\\studentManagementSystem\\\\src\\\\image\\\\KimJisoo.jpg', '2024-02-05'),
(9, 20240002, 'First Year', 'BSCE', 'Ahn', 'hyo Seop', 'Male', '1994-02-11', 'Enrolled', 'C:\\\\Users\\\\User\\\\Documents\\\\NetBeansProjects\\\\StudentManagementSystem\\\\studentManagementSystem\\\\src\\\\image\\\\AhnHyoSeop.jpg', '2024-02-05'),
(10, 20230001, 'Second Year', 'BSCE', 'Hyun', 'Bin', 'Male', '1991-04-10', 'Not Enrolled', 'C:\\\\Users\\\\User\\\\Documents\\\\NetBeansProjects\\\\StudentManagementSystem\\\\studentManagementSystem\\\\src\\\\image\\\\HyunBin.jpg', '2024-02-05'),
(12, 20220001, 'Second Year', 'BCSC', 'Jung', 'Hae In', 'Male', '1992-05-13', 'Enrolled', 'C:\\\\Users\\\\User\\\\Documents\\\\NetBeansProjects\\\\StudentManagementSystem\\\\studentManagementSystem\\\\src\\\\image\\\\JungHeeIn.jpg', '2024-02-05'),
(13, 20230002, 'Second Year', 'BCSC', 'Rose', 'Park', 'Female', '2002-08-07', 'Not Enrolled', 'C:\\\\Users\\\\User\\\\Documents\\\\NetBeansProjects\\\\StudentManagementSystem\\\\studentManagementSystem\\\\src\\\\image\\\\Rose.jpg', '2024-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `studentNum` int(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `first_sem` double NOT NULL,
  `second_sem` double NOT NULL,
  `final` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`id`, `studentNum`, `year`, `course`, `first_sem`, `second_sem`, `final`) VALUES
(4, 20240001, 'First Year', 'BCSC', 9, 9, 13.5),
(5, 20240002, 'First Year', 'BSCE', 9, 8, 13),
(6, 20230001, 'Second Year', 'BSCE', 9, 8, 13),
(7, 20220001, 'Second Year', 'BCSC', 0, 0, 0),
(8, 20230002, 'Second Year', 'BCSC', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
