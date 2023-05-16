-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 04:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `FName` varchar(20) NOT NULL,
  `MName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `AccountType` varchar(25) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`FName`, `MName`, `LName`, `UserName`, `Password`, `AccountType`, `UserID`) VALUES
('Suman', '', 'Mandal', 'suman@mandal', 'suman1234', 'HR', 1),
('Sayon', '', 'Haldar', 'sayon@haldar', '1234', 'Library', 2),
('chayan', '', 'b', 'chayan@b', '1234', 'Teacher', 3),
('kunal', '', 'ata', 'kunal@ata', '1234', 'Student', 4),
('ajay', '', 'ajay', 'ajay@ajay', '1234', 'Account', 5),
('123', '123', '123', 'asdf@asdf', '1234', 'Teacher', 9),
('ab', '', 'ab', 'ab@ab', '1234', 'Teacher', 10),
('kk', '', 'kk', 'kk@kk', '1234', 'Teacher', 11);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Name` text NOT NULL,
  `Author` text NOT NULL,
  `Status` text NOT NULL DEFAULT 'Available',
  `BookId` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `IssueDate` date NOT NULL DEFAULT current_timestamp(),
  `ReturnDate` date NOT NULL DEFAULT current_timestamp(),
  `Fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Name`, `Author`, `Status`, `BookId`, `UserName`, `IssueDate`, `ReturnDate`, `Fine`) VALUES
('dld', 'dld', 'Unavailable', 1, 'chayan@b', '2023-04-01', '2023-04-20', 380);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `UserName` varchar(20) NOT NULL,
  `1stYear` int(11) NOT NULL,
  `2ndYear` int(11) NOT NULL,
  `3rdYear` int(11) NOT NULL,
  `4thYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`UserName`, `1stYear`, `2ndYear`, `3rdYear`, `4thYear`) VALUES
('kunal@ata', 52000, 52000, 54000, 54000);

-- --------------------------------------------------------

--
-- Table structure for table `lib`
--

CREATE TABLE `lib` (
  `id` int(6) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `gender` text NOT NULL,
  `PhoneNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `Latitude` text NOT NULL,
  `Longtitude` text NOT NULL,
  `starttime` text NOT NULL,
  `endtime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`Latitude`, `Longtitude`, `starttime`, `endtime`) VALUES
('22.55', '55.55', '7:12:00', '7:13:00'),
('22.499', '88.3168', '22:30:00', '22:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `UserName` varchar(25) NOT NULL,
  `CA1` int(11) NOT NULL,
  `CA2` int(11) NOT NULL,
  `CA3` int(11) NOT NULL,
  `CA4` int(11) NOT NULL,
  `Semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`UserName`, `CA1`, `CA2`, `CA3`, `CA4`, `Semester`) VALUES
('Shaankha@134', 0, 0, 0, 0, 0),
('suman@123', 0, 0, 0, 0, 0),
('suman@123', 0, 0, 0, 0, 0),
('Samima@123', 0, 0, 0, 0, 0),
('Sourish123', 0, 0, 0, 0, 0),
('abc@134', 0, 0, 0, 0, 0),
('kunal@ata', 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Fname` varchar(25) NOT NULL,
  `Mname` varchar(25) NOT NULL,
  `Lname` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `10thSchoolName` varchar(50) NOT NULL,
  `10thSchoolMarks` int(11) NOT NULL,
  `10thSchoolPassingYear` date NOT NULL DEFAULT current_timestamp(),
  `12thSchoolName` varchar(50) NOT NULL,
  `12thSchoolMarks` int(11) NOT NULL,
  `12thSchoolPassingYear` date NOT NULL DEFAULT current_timestamp(),
  `VillageOrCity` varchar(50) NOT NULL,
  `PO` varchar(50) NOT NULL,
  `PS` varchar(50) NOT NULL,
  `Pin` int(6) NOT NULL,
  `Dist` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` int(50) NOT NULL,
  `Brunch` varchar(20) NOT NULL,
  `Roll` int(10) NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `BloodGroup` varchar(10) NOT NULL,
  `AadharNo` varchar(20) NOT NULL,
  `Hosteller` varchar(5) NOT NULL DEFAULT 'NO',
  `AdmissionDate` date NOT NULL DEFAULT current_timestamp(),
  `ParestsName` varchar(50) NOT NULL,
  `ParentsPhoneNumber` bigint(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BankName` varchar(50) NOT NULL,
  `AccountNo` varchar(15) NOT NULL,
  `IFSC` varchar(15) NOT NULL,
  `BrunchCode` varchar(10) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Semester` int(11) NOT NULL DEFAULT 1,
  `Year` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Fname`, `Mname`, `Lname`, `DOB`, `10thSchoolName`, `10thSchoolMarks`, `10thSchoolPassingYear`, `12thSchoolName`, `12thSchoolMarks`, `12thSchoolPassingYear`, `VillageOrCity`, `PO`, `PS`, `Pin`, `Dist`, `State`, `Country`, `PhoneNo`, `Email`, `UserName`, `Password`, `Brunch`, `Roll`, `Height`, `Weight`, `BloodGroup`, `AadharNo`, `Hosteller`, `AdmissionDate`, `ParestsName`, `ParentsPhoneNumber`, `Gender`, `BankName`, `AccountNo`, `IFSC`, `BrunchCode`, `StudentID`, `Semester`, `Year`) VALUES
('kunal', '', 'ata', '2023-04-28', 'asdf', 45, '2023-04-12', 'asdf', 45, '2023-04-14', 'asdf', 'asdf', 'asdf', 0, 'asdf', 'sdfg', 'India', 2147483647, 'kunal@ata', 'kunal@ata', 1234, 'ECE', 45, 4.5, 55, 'AB+', '123456789123', 'YES', '2023-04-28', 'lanuk ata', 9564004609, 'Male', 'CANARA', '123456', '456789', '46578979', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `UserName` varchar(20) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Mname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Brunch` varchar(25) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `branch` text NOT NULL,
  `department` text NOT NULL,
  `PhoneNo` int(10) NOT NULL,
  `Fname` varchar(25) NOT NULL,
  `Mname` varchar(25) NOT NULL DEFAULT '',
  `Lname` varchar(25) NOT NULL,
  `DOJ` date NOT NULL DEFAULT current_timestamp(),
  `10thSchoolName` varchar(50) NOT NULL,
  `10thSchoolMarks` int(11) NOT NULL,
  `10thPasingYear` date NOT NULL DEFAULT current_timestamp(),
  `12thSchoolName` varchar(50) NOT NULL,
  `12thSchoolMarks` int(11) NOT NULL,
  `12thPassingYear` date NOT NULL DEFAULT current_timestamp(),
  `BachelorCollegeName` varchar(50) NOT NULL,
  `BachelorCollegeMarks` int(11) NOT NULL,
  `BachelorPassingYear` date NOT NULL DEFAULT current_timestamp(),
  `MastersCollegesName` varchar(50) NOT NULL,
  `MastersCollegesMarks` int(11) NOT NULL,
  `MastersPassingYear` date NOT NULL DEFAULT current_timestamp(),
  `DOB` date NOT NULL DEFAULT current_timestamp(),
  `VillageOrCity` varchar(50) NOT NULL,
  `PO` varchar(50) NOT NULL,
  `PS` varchar(50) NOT NULL,
  `Pin` int(6) NOT NULL,
  `Dist` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BankName` varchar(50) NOT NULL,
  `AccountNo` int(15) NOT NULL,
  `IFSC` varchar(15) NOT NULL,
  `BrunchCode` varchar(6) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `BloodGroup` varchar(5) NOT NULL,
  `AadharNo` varchar(16) NOT NULL,
  `Senior` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`username`, `password`, `branch`, `department`, `PhoneNo`, `Fname`, `Mname`, `Lname`, `DOJ`, `10thSchoolName`, `10thSchoolMarks`, `10thPasingYear`, `12thSchoolName`, `12thSchoolMarks`, `12thPassingYear`, `BachelorCollegeName`, `BachelorCollegeMarks`, `BachelorPassingYear`, `MastersCollegesName`, `MastersCollegesMarks`, `MastersPassingYear`, `DOB`, `VillageOrCity`, `PO`, `PS`, `Pin`, `Dist`, `State`, `Country`, `Gender`, `BankName`, `AccountNo`, `IFSC`, `BrunchCode`, `Email`, `Height`, `Weight`, `BloodGroup`, `AadharNo`, `Senior`) VALUES
('chayan@b', '1234', 'CSE', 'CSE', 2147483647, 'chayan', '', 'b', '2023-04-06', 'asdf', 456, '2023-04-12', 'asdf', 456, '2023-05-03', 'asdf', 456, '2023-04-19', 'asdf', 456, '2023-04-08', '2023-04-01', 'gar', 'dfgsd', 'sdfg', 0, 'sdfg', 'sdfg', 'India', 'Other', 'CANARA', 123456, '456789', '465789', 'chayan@b', 5.8, 99, 'O-', '123456789123', NULL),
('sm@sm', '1234', 'CSE', 'CSE', 2147483647, 'sm', '', 'sm', '2023-05-19', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '0000-00-00', 'gara', '123', '123', 0, '123', 'sdfg', 'India', 'Select Gen', 'CANARA', 123456, '456789', '465789', 'sm@sm', 12, 12, 'A-', '123456789123', 'chayan@b'),
('asdf@asdf', '1234', 'CSE', 'CSE', 2147483647, '123', '123', '123', '2023-05-04', 'asdf', 45, '2023-05-02', 'asdf', 45, '2023-05-03', 'asdf', 12, '2023-05-04', 'asdf', 12, '2023-05-05', '2023-05-11', 'gar', 'asd', 'asdf', 0, 'asdf', 'WEST BENGAL', 'India', 'Female', 'CANARA', 123456, '456789', '465789', 'newsumanm@gmail.com', 12, 12, 'O-', '123456789123', ''),
('ab@ab', '1234', 'CSE', 'CSE', 2147483647, 'ab', '', 'ab', '2023-05-11', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '2023-05-11', 'garasdf', 'asdf', 'asdf', 0, 'asdf', 'WEST BENGAL', 'India', 'Male', 'CANARA', 123456, '456789', '465789', 'newsumanm@gmail.com', 12, 12, 'A-', '123456789456', 'chayan@b'),
('kk@kk', '1234', 'CSE', 'CSE', 2147483647, 'kk', '', 'kk', '2023-05-12', 'asdf1', 45, '2023-05-02', 'asdf2', 456, '2023-05-03', 'asdf3', 457, '2023-05-04', 'asdf4', 458, '2023-05-06', '2023-05-04', 'gara', 'asdf', 'asdf', 0, '123', 'sdfg', 'India', 'Female', 'CANARA', 123456, '456789', '465789', 'kk@kk', 12, 12, 'AB+', '123456789456', 'chayan@b');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `Fname` varchar(15) NOT NULL,
  `Mname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Time` text NOT NULL,
  `Day` text NOT NULL,
  `Month` text NOT NULL,
  `Year` text NOT NULL,
  `Latitude` text NOT NULL,
  `Longitude` text NOT NULL,
  `UserName` text NOT NULL,
  `Status` text NOT NULL,
  `Senior` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`Fname`, `Mname`, `Lname`, `Time`, `Day`, `Month`, `Year`, `Latitude`, `Longitude`, `UserName`, `Status`, `Senior`) VALUES
('ab', '', 'ab', '0:58:7', '9', '5', '2023', '22.499', '88.3168', 'ab@ab', 'EL', 'chayan@b'),
('kk', '', 'kk', '22:21:57', '12', '5', '2023', '22.499', '88.3168', 'kk@kk', 'P', 'chayan@b'),
('kk', '', 'kk', '22:32:11', '12', '5', '2023', '22.499', '88.3168', 'kk@kk', 'P', 'chayan@b');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance_temp`
--

CREATE TABLE `teacher_attendance_temp` (
  `Fname` varchar(15) NOT NULL,
  `Mname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Time` text NOT NULL,
  `Day` int(11) NOT NULL,
  `Month` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Latitude` text NOT NULL,
  `Longitude` text NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Senior` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary`
--

CREATE TABLE `teacher_salary` (
  `UserName` varchar(20) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Mname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `BankName` varchar(50) NOT NULL,
  `AccountNumber` varchar(20) NOT NULL,
  `Month` varchar(4) NOT NULL,
  `Basic` int(11) NOT NULL,
  `DearnessAllowance` int(11) NOT NULL,
  `HouseRentAllowance` int(11) NOT NULL,
  `CityCompensatoryAllowance` int(11) NOT NULL,
  `Bonus` int(11) NOT NULL,
  `TotalEarning` int(11) NOT NULL,
  `ProvidentFund` int(11) NOT NULL,
  `EmployeesStateInsurance` int(11) NOT NULL,
  `TaxDeductedatSource` int(11) NOT NULL,
  `LossOfPayLeave` int(11) NOT NULL,
  `EmployeesWelfareFund` int(11) NOT NULL,
  `TotalDeduction` int(11) NOT NULL,
  `NetPay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_salary`
--

INSERT INTO `teacher_salary` (`UserName`, `Fname`, `Mname`, `Lname`, `BankName`, `AccountNumber`, `Month`, `Basic`, `DearnessAllowance`, `HouseRentAllowance`, `CityCompensatoryAllowance`, `Bonus`, `TotalEarning`, `ProvidentFund`, `EmployeesStateInsurance`, `TaxDeductedatSource`, `LossOfPayLeave`, `EmployeesWelfareFund`, `TotalDeduction`, `NetPay`) VALUES
('chayan@b', 'chayan', '', '1', 'CANARA', '123456', '04', 120000, 100, 100, 100, 100, 120400, 0, 0, 0, 0, 0, 0, 119980),
('sm@sm', 'sm', '', 'sm', 'CANARA', '123456', '05', 120000, 100, 100, 100, 100, 120400, 100, 100, 100, 0, 20, 320, 119980),
('asdf@asdf', '123', '123', '123', 'CANARA', '123456', '05', 120000, 50400, 119000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ab@ab', 'ab', '', 'ab', 'CANARA', '123456', '05', 120000, 50400, 48000, 6000, 24000, 248400, 14400, 960, 49680, 0, 4800, 69840, 178560),
('kk@kk', 'kk', '', 'kk', 'CANARA', '123456', '05', 120000, 50400, 48000, 6000, 24000, 248400, 14400, 960, 49680, 0, 4800, 69840, 178560);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `lib`
--
ALTER TABLE `lib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
