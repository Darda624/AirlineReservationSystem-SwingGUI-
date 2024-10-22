-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2024 at 07:54 PM
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
-- Database: `ars`
--
CREATE DATABASE IF NOT EXISTS `ars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ars`;

-- --------------------------------------------------------

--
-- Table structure for table `admindb`
--

CREATE TABLE `admindb` (
  `username` varchar(60) NOT NULL,
  `password` varchar(70) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admindb`
--

INSERT INTO `admindb` (`username`, `password`, `Name`, `id`) VALUES
('Mehrub', 'password', 'Mehrub Khan', 2),
('Darda', '123456', 'Darda Khan', 4),
('admin', 'admin', 'Administrator', 5);

-- --------------------------------------------------------

--
-- Table structure for table `flightr`
--

CREATE TABLE `flightr` (
  `User` varchar(50) NOT NULL,
  `Fid` varchar(50) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `ffrom` varchar(30) NOT NULL,
  `fto` varchar(30) NOT NULL,
  `dtime` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL,
  `cabin` varchar(20) NOT NULL,
  `cost` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flightr`
--

INSERT INTO `flightr` (`User`, `Fid`, `Fname`, `ffrom`, `fto`, `dtime`, `date`, `cabin`, `cost`, `id`, `status`) VALUES
('darda@dipti.com.bd', 'ANF05', 'Aero Nave F1', 'Bangladesh', 'Malaysia', '05:30 PM', '', 'Economy', '25000', 2, 'Active'),
('darda@dipti.com.bd', 'ANF05', 'Aero Nave F1', 'Bangladesh', 'Malaysia', '05:30 PM', '19/10/2024', 'Premium Economy', '25000', 4, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `fid` varchar(20) NOT NULL,
  `Flight Name` varchar(20) NOT NULL,
  `From / Source` varchar(20) NOT NULL,
  `To / Destination` varchar(20) NOT NULL,
  `Dep Time` varchar(15) NOT NULL,
  `Arrival Time` varchar(15) NOT NULL,
  `Flight Charge` varchar(30) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`fid`, `Flight Name`, `From / Source`, `To / Destination`, `Dep Time`, `Arrival Time`, `Flight Charge`, `id`) VALUES
('ANF04', 'Aero Nave F1', 'Bangladesh', 'United states', '09:00AM', '07:30AM', '30000', 4),
('ANF05', 'Aero Nave F1', 'Bangladesh', 'Malaysia', '05:30 PM', '03:00 PM', '25000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `userdb`
--

CREATE TABLE `userdb` (
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `username` varchar(40) NOT NULL,
  `gander` varchar(10) NOT NULL,
  `nation` varchar(20) NOT NULL,
  `birthdate` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `age` varchar(3) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdb`
--

INSERT INTO `userdb` (`name`, `phone`, `username`, `gander`, `nation`, `birthdate`, `address`, `age`, `password`) VALUES
('Darda Khan', '01533224455', 'darda@dipti.com.bd', 'Male', 'Bangladeshi', '03/04/2003', '624,A/3, Shorai road dhaka', '21', 'pass'),
('teemon hossain', '01518943208', 'timon.bd2019@gmail.com', 'male', 'bangladeshi', '10/3/2005', 'shonir akhra, dhaka', '19', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindb`
--
ALTER TABLE `admindb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightr`
--
ALTER TABLE `flightr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindb`
--
ALTER TABLE `admindb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flightr`
--
ALTER TABLE `flightr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
