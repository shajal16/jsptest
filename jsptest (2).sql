-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2016 at 06:43 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `student_id` varchar(30) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `dept_name` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contact_no` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_id`, `student_name`, `dept_name`, `address`, `contact_no`) VALUES
('1', 'shajal', 'cse', 'dhaka', '012345'),
('2', 'bulbul', 'cse', 'dhaka', '012354'),
('3', 'susam', 'cse', 'naogaon', '023456'),
('4', 'sohan', 'cse', 'jaypurhat', '0321456'),
('5', 'ratul', 'cse', 'faridpur', '0432165'),
('6', 'azad', 'cse', 'dhaka', '012765'),
('7', 'shaown', 'bba', 'chittagong', '0000001'),
('8', 'ananna', 'bioinformatics', 'canada', '03567725');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
