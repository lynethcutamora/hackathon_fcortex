-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2016 at 05:46 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fcortex_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense_tbl`
--

CREATE TABLE IF NOT EXISTS `expense_tbl` (
  `expns_id` int(8) NOT NULL,
  `mom_id` int(8) NOT NULL,
  `expns_amt` double NOT NULL,
  `expns_date` date NOT NULL,
  `expns_desc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mom_monthly_salary`
--

CREATE TABLE IF NOT EXISTS `mom_monthly_salary` (
  `salary_id` int(8) NOT NULL,
  `mom_id` int(8) NOT NULL,
  `salary_amt` double NOT NULL,
  `salary_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mom_tbl`
--

CREATE TABLE IF NOT EXISTS `mom_tbl` (
  `mom_id` int(8) NOT NULL,
  `mom_fname` varchar(50) NOT NULL,
  `mom_mi` char(1) NOT NULL,
  `mom_lname` varchar(50) NOT NULL,
  `mom_bdate` date NOT NULL,
  `mom_address` varchar(200) NOT NULL,
  `num_of_child` int(2) NOT NULL,
  `mom_username` varchar(20) NOT NULL,
  `mom_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `savings_tbl`
--

CREATE TABLE IF NOT EXISTS `savings_tbl` (
  `savings_id` int(8) NOT NULL,
  `mom_id` int(8) NOT NULL,
  `savings_amt` double NOT NULL,
  `savings_for` varchar(20) NOT NULL,
  `savings_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expense_tbl`
--
ALTER TABLE `expense_tbl`
  ADD PRIMARY KEY (`expns_id`);

--
-- Indexes for table `mom_monthly_salary`
--
ALTER TABLE `mom_monthly_salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `mom_tbl`
--
ALTER TABLE `mom_tbl`
  ADD PRIMARY KEY (`mom_id`);

--
-- Indexes for table `savings_tbl`
--
ALTER TABLE `savings_tbl`
  ADD PRIMARY KEY (`savings_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expense_tbl`
--
ALTER TABLE `expense_tbl`
  MODIFY `expns_id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mom_monthly_salary`
--
ALTER TABLE `mom_monthly_salary`
  MODIFY `salary_id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mom_tbl`
--
ALTER TABLE `mom_tbl`
  MODIFY `mom_id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `savings_tbl`
--
ALTER TABLE `savings_tbl`
  MODIFY `savings_id` int(8) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
