-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2023 at 08:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `NIC` varchar(50) NOT NULL,
  `DateOfBirth` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `name`, `NIC`, `DateOfBirth`, `address`, `email`, `password`, `answer`) VALUES
('uname', 'name', 'myNIC', '123456', 'addresss', 'email@', 'as', 'school');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` varchar(50) NOT NULL,
  `bookName` varchar(50) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `authour` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `pages` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `bookName`, `edition`, `authour`, `price`, `pages`) VALUES
('id', 'name', 'edition', 'authour', 1000, 123);

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `BookID` varchar(50) NOT NULL,
  `MemberID` varchar(50) NOT NULL,
  `BookName` varchar(50) NOT NULL,
  `IssueDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`BookID`, `MemberID`, `BookName`, `IssueDate`) VALUES
('id', 'id', 'name', '123');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` varchar(50) NOT NULL,
  `memberName` varchar(50) NOT NULL,
  `NIC` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `DateOfReg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `memberName`, `NIC`, `address`, `DateOfReg`) VALUES
('id', 'name', 'NIC', 'address', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `BookID` varchar(50) NOT NULL,
  `MemberID` varchar(50) NOT NULL,
  `BookName` varchar(50) NOT NULL,
  `ReturnDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`BookID`, `MemberID`, `BookName`, `ReturnDate`) VALUES
('id', 'id', 'name', '987');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
