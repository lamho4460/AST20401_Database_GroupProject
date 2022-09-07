-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 03:31 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group30`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_inventory`
--

CREATE TABLE `blood_inventory` (
  `DorID` char(12) NOT NULL,
  `Haemoglobin` char(10) NOT NULL,
  `bloodType` char(4) NOT NULL,
  `EntryDate` date NOT NULL,
  `ExpiryDate` date NOT NULL,
  `StorageLoc` char(30) NOT NULL,
  `staffID` char(10) NOT NULL,
  `bStatus` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_inventory`
--

INSERT INTO `blood_inventory` (`DorID`, `Haemoglobin`, `bloodType`, `EntryDate`, `ExpiryDate`, `StorageLoc`, `staffID`, `bStatus`) VALUES
('G123456789', '13.56', 'B-', '2019-07-21', '2019-08-31', 'Queen Elizabeth Hospital', 'D89646984', 'Bad'),
('G123987456', '14.84', 'O-', '2019-11-07', '2019-12-07', 'Queen Elizabeth Hospital', 'D89646984', 'Good'),
('G134679852', '17.74', 'AB+', '2019-08-09', '2019-10-09', 'Queen Elizabeth Hospital', 'D89646984', 'Bad'),
('G987123456', '16.23', 'B+', '2019-10-01', '2019-12-01', 'Queen Elizabeth Hospital', 'D89646984', 'Bad'),
('G987654321', '12.70', 'A-', '2019-08-31', '2019-10-10', 'Queen Elizabeth Hospital', 'D89646984', 'Bad');

-- --------------------------------------------------------

--
-- Table structure for table `donor_registration`
--

CREATE TABLE `donor_registration` (
  `DorID` char(12) NOT NULL,
  `DorName` char(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` char(1) NOT NULL,
  `PreID` char(11) NOT NULL,
  `heiwei` char(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phoneNo` int(20) NOT NULL,
  `bloodType` char(4) NOT NULL,
  `prevDate` char(11) NOT NULL,
  `Disease` varchar(100) NOT NULL,
  `staffID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor_registration`
--

INSERT INTO `donor_registration` (`DorID`, `DorName`, `age`, `gender`, `PreID`, `heiwei`, `address`, `phoneNo`, `bloodType`, `prevDate`, `Disease`, `staffID`) VALUES
('G123456789', 'Ho Kwan Yiu', 50, 'M', 'M613783(3)', '161cm55.32kg', 'House 3, Loffey Avenue, Vineyard, Ngau Tam On Road, Yuen Long, New Territories', 91951786, 'B-', '21-07-2019', 'NULL', 'D76894874'),
('G123987456', 'Chan Yat Long', 24, 'M', 'P753213(7)', '181cm60.31kg', 'Flat25,12/F,Acacia Building,105 Kennedy Road,Wan Chai,Hong Kong', 64323197, 'O-', '11-07-2019', 'NULL', 'D96345258'),
('G134679852', 'Li Hui Qing', 45, 'F', 'X487999(7)', '170cm72.86kg', '25/F, Block 25, Phase 1, One Mid Level, 80 Sheung Shing Street, Ho Man Tin, Kowloon', 23303130, 'AB+', '09-08-2019', 'NULL', 'D76312546'),
('G987123456', 'Yau Tse Yiu', 19, 'M', 'E364289(4)', '181cm80.86kg', 'Unit 1804,Tamson Plaza161,Wai Yip Street,Kwun Tong,Hong Kong', 21113780, 'B+', '01-10-2019', 'NULL', 'D22487994'),
('G987654321', 'Lai Chun Kit', 44, 'M', 'P534958(9)', '181cm72.86kg', '38 Cheung Fat Street, Sham Shui Po, Kowloon', 23862988, 'A-', '31-08-2019', 'NULL', 'D89646984');

-- --------------------------------------------------------

--
-- Table structure for table `donrecord`
--

CREATE TABLE `donrecord` (
  `DorID` char(12) NOT NULL,
  `Ddate` date NOT NULL,
  `DorVenue` varchar(100) NOT NULL,
  `staffID` char(10) NOT NULL,
  `Status` varchar(40) NOT NULL,
  `bldPressure` char(13) NOT NULL,
  `Volume` char(7) NOT NULL,
  `PackID` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donrecord`
--

INSERT INTO `donrecord` (`DorID`, `Ddate`, `DorVenue`, `staffID`, `Status`, `bldPressure`, `Volume`, `PackID`) VALUES
('G123456789', '2019-07-21', 'Sham Shui Po', 'D89646984', 'Good', '135/85', '600cc', 'BN01'),
('G123987456', '2019-11-07', 'Sham Shui Po', 'D89646984', 'Good', '140/85', '300cc', 'ON01'),
('G134679852', '2019-08-09', 'Sham Shui Po', 'D89646984', 'Good', '140/90', '300cc', 'ABP01'),
('G987123456', '2019-10-01', 'Sham Shui Po', 'D89646984', 'Good', '135/80', '300cc', 'BP01'),
('G987654321', '2019-08-31', 'Sham Shui Po', 'D89646984', 'Good', '135/85', '300cc', 'AN01');

-- --------------------------------------------------------

--
-- Table structure for table `emergencycontact`
--

CREATE TABLE `emergencycontact` (
  `DorID` char(12) NOT NULL,
  `emName` char(50) NOT NULL,
  `emContact` int(8) NOT NULL,
  `relationship` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergencycontact`
--

INSERT INTO `emergencycontact` (`DorID`, `emName`, `emContact`, `relationship`) VALUES
('G123456789', 'Mrs.Chan', 91351285, 'mother'),
('G123987456', 'Mr.Chan', 51308675, 'brother'),
('G134679852', 'Mr.Lee', 59763242, 'father'),
('G987123456', 'Mrs.Yau', 54315675, 'father'),
('G987654321', 'Mrs.Lai', 96135751, 'wife');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `StorageLoc` char(40) NOT NULL,
  `Address` char(200) DEFAULT NULL,
  `district` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`StorageLoc`, `Address`, `district`) VALUES
('Caritas Medical Centre', '111 Wing Hong Street, Sham Shui Po, Kowloon, Hong Kong, Cheung Sha Wan, Hong Kong', 'Kowloon'),
('Kwong Wah Hospital', '25 Waterloo Road, Yau Ma Tei, Hong Kong', 'kowloon'),
('Princess Margaret Hospital', '2-10 Princess Margaret Hospital Road, Kwai Chung, Hong Kong', 'New Territories'),
('Queen Ekizabeth Hospital', '30 Gascoigne Road, Kings Park, Kowloon, Hong Kong', 'kowloon'),
('Yan Chai Hospital', '7-11, Yan Chai St, Tsuen Wan Hong Kong', 'New Territories');

-- --------------------------------------------------------

--
-- Table structure for table `medicsurrecord`
--

CREATE TABLE `medicsurrecord` (
  `DorID` char(12) NOT NULL,
  `Medic` char(50) NOT NULL,
  `staffID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicsurrecord`
--

INSERT INTO `medicsurrecord` (`DorID`, `Medic`, `staffID`) VALUES
('G987654321', 'NULL', 'D89646984'),
('G123456789', 'NULL', 'D89646984'),
('G987123456', 'NULL', 'D89646984'),
('G123987456', 'NULL', 'D89646984'),
('G134679852', 'NULL', 'D89646984');

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `staffID` char(10) NOT NULL,
  `staffName` char(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `post` char(50) NOT NULL,
  `registrationNum` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`staffID`, `staffName`, `gender`, `post`, `registrationNum`) VALUES
('D96345258', 'ALAMDIN QUEENA', 'M', 'Nurse', 'RNG0002448'),
('D76312546', 'ALLIERI ALMA', 'F', 'Senior nurse', 'RNGF013396'),
('D22487994', 'AKITA HIROKO', 'F', 'Head nurse', 'RNGF025553'),
('D76894874', 'AIXINGERO PANSY', 'M', 'Senior nurse', 'RNGF036098'),
('D89646984', 'AI GEN KUN', 'F', 'Nurse', 'RNGM004130');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  ADD PRIMARY KEY (`DorID`);

--
-- Indexes for table `donor_registration`
--
ALTER TABLE `donor_registration`
  ADD PRIMARY KEY (`DorID`);

--
-- Indexes for table `donrecord`
--
ALTER TABLE `donrecord`
  ADD PRIMARY KEY (`DorID`);

--
-- Indexes for table `emergencycontact`
--
ALTER TABLE `emergencycontact`
  ADD PRIMARY KEY (`DorID`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`StorageLoc`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`registrationNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
