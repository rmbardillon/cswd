-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 09:42 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `ADDRESS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `ADDRESS` varchar(128) NOT NULL,
  `BARANGAY` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ADDRESS_ID`, `PERSON_ID`, `ADDRESS`, `BARANGAY`) VALUES
('565cb1cefa9b11ed', '646eb98b629e9609', 'BLOCK 7 LOT 2 OAK STREET ROSE POINTE SUBDIVISION', 'Tagapo'),
('565d80e7fa9b11ed', '646eb98b66362601', 'OAK ST. RP SUBD. BRGY TAGAPO', 'Tagapo'),
('565e7fc6fa9b11ed', '646eb98b672e5640', 'OAK ST. RP SUBD. BRGY TAGAPO', 'Tagapo');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `APPLICATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `APPPLICATION_TYPE` varchar(16) NOT NULL,
  `APPLICATION_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `APPLICATION_STATUS` varchar(16) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `APPOINTMENT_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `CONTACT_DETAILS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `MOBILE_NUMBER` varchar(16) DEFAULT NULL,
  `TELEPHONE_NUMBER` varchar(16) DEFAULT NULL,
  `EMAIL` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`CONTACT_DETAILS_ID`, `PERSON_ID`, `MOBILE_NUMBER`, `TELEPHONE_NUMBER`, `EMAIL`) VALUES
('565cc064fa9b11ed', '646eb98b629e9609', NULL, NULL, 'asuncionmontealegre@gmail.com'),
('565d734bfa9b11ed', '646eb98b629e9609', '09550171148', NULL, 'a'),
('565e06f7fa9b11ed', '646eb98b629e9609', '09760657071', NULL, 's');

-- --------------------------------------------------------

--
-- Table structure for table `employment_details`
--

CREATE TABLE `employment_details` (
  `EMPLOYMENT_DETAILS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `EMPLOYMENT_STATUS` varchar(64) DEFAULT NULL,
  `CATEGORY_OF_EMPLOYMENT` varchar(64) DEFAULT NULL,
  `NATURE_OF_EMPLOYMENT` varchar(64) DEFAULT NULL,
  `COMPANY` varchar(64) DEFAULT NULL,
  `JOB` varchar(64) DEFAULT NULL,
  `OTHER_JOB` varchar(64) DEFAULT NULL,
  `INCOME` varchar(64) DEFAULT NULL,
  `HAS_PENSION` varchar(8) DEFAULT NULL,
  `PENSION` decimal(12,2) DEFAULT NULL,
  `PENSION_AMOUNT` decimal(12,2) DEFAULT NULL,
  `SSS_NUMBER` varchar(32) DEFAULT NULL,
  `GSIS_NUMBER` varchar(32) DEFAULT NULL,
  `PSN_NUMBER` varchar(32) DEFAULT NULL,
  `IS_PHILHEALTH_MEMBER` varchar(8) DEFAULT NULL,
  `PHILHEALTH_NUMBER` varchar(32) DEFAULT NULL,
  `IS_ACTIVE_VOTER` varchar(8) DEFAULT NULL,
  `IS_4PS_MEMBER` varchar(8) DEFAULT NULL,
  `TOTAL_FAMILY_INCOME` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employment_details`
--

INSERT INTO `employment_details` (`EMPLOYMENT_DETAILS_ID`, `PERSON_ID`, `EMPLOYMENT_STATUS`, `CATEGORY_OF_EMPLOYMENT`, `NATURE_OF_EMPLOYMENT`, `COMPANY`, `JOB`, `OTHER_JOB`, `INCOME`, `HAS_PENSION`, `PENSION`, `PENSION_AMOUNT`, `SSS_NUMBER`, `GSIS_NUMBER`, `PSN_NUMBER`, `IS_PHILHEALTH_MEMBER`, `PHILHEALTH_NUMBER`, `IS_ACTIVE_VOTER`, `IS_4PS_MEMBER`, `TOTAL_FAMILY_INCOME`) VALUES
('565cdbb2fa9b11ed', '646eb98b629e9609', NULL, NULL, NULL, NULL, 'NONE', NULL, NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `ORGANIZATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `ORGANIZATION` varchar(64) NOT NULL,
  `ORGANIZATION_CONTACT_PERSON` varchar(64) NOT NULL,
  `ORGANIZATION_OFFICE_ADDRESS` varchar(64) NOT NULL,
  `ORGANIZATION_CONTACT_NUMBER` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `PERSON_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `FIRST_NAME` varchar(64) NOT NULL,
  `MIDDLE_NAME` varchar(64) DEFAULT NULL,
  `LAST_NAME` varchar(64) NOT NULL,
  `SUFFIX` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`PERSON_ID`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `SUFFIX`) VALUES
('646eb98b629e9609', 'ASUNCION', 'SABANDAL', 'MONTEALEGRE', NULL),
('646eb98b629fb902', 'VERGILIO', 'SAPODIQUIA', 'MONTEALEGRE', ''),
('646eb98b66362601', 'MONTEALEGRE', NULL, 'MILAROSA', NULL),
('646eb98b672e5640', 'PENARANDA', NULL, 'LANI', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `PERSONAL_INFORMATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `BIRTHDAY` date NOT NULL,
  `BIRTH_PLACE` varchar(128) DEFAULT NULL,
  `GENDER` varchar(16) DEFAULT NULL,
  `EDUCATIONAL_ATTAINMENT` varchar(64) DEFAULT NULL,
  `BLOOD_TYPE` varchar(8) DEFAULT NULL,
  `RELIGION` varchar(64) DEFAULT NULL,
  `MARITAL_STATUS` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`PERSONAL_INFORMATION_ID`, `PERSON_ID`, `BIRTHDAY`, `BIRTH_PLACE`, `GENDER`, `EDUCATIONAL_ATTAINMENT`, `BLOOD_TYPE`, `RELIGION`, `MARITAL_STATUS`) VALUES
('565ccf68fa9b11ed', '646eb98b629e9609', '1942-01-12', NULL, 'Female', NULL, NULL, 'CATHOLIC', 'Widowed');

-- --------------------------------------------------------

--
-- Table structure for table `pwd_data`
--

CREATE TABLE `pwd_data` (
  `PWD_DATA_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `PHYSICIAN_NAME` varchar(128) NOT NULL,
  `PHYSICIAN_LICENSE_NUMBER` varchar(64) NOT NULL,
  `TYPE_OF_DISABILITY` varchar(1024) NOT NULL,
  `MEDICAL_CONDITION` varchar(64) DEFAULT NULL,
  `CAUSE_OF_DISABILITY` varchar(64) DEFAULT NULL,
  `CONGENITAL_INBORN` varchar(1024) DEFAULT NULL,
  `ACQUIRED` varchar(1024) DEFAULT NULL,
  `STATUS_OF_DISABILITY` varchar(64) NOT NULL,
  `ACCOMPLISHED_BY` varchar(64) NOT NULL,
  `ACCOMPLISHER_NAME` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `relatives`
--

CREATE TABLE `relatives` (
  `RELATIVE_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `RELATIVE_PERSON_ID` varchar(16) NOT NULL,
  `RELATIONSHIP_TYPE` varchar(32) NOT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `GUARDIAN_CONTACT_NUMBER` varchar(16) DEFAULT NULL,
  `INCOME` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relatives`
--

INSERT INTO `relatives` (`RELATIVE_ID`, `PERSON_ID`, `RELATIVE_PERSON_ID`, `RELATIONSHIP_TYPE`, `BIRTHDAY`, `GUARDIAN_CONTACT_NUMBER`, `INCOME`) VALUES
('565cef19fa9b11ed', '646eb98b629e9609', '646eb98b629fb902', 'Spouse', '1942-08-07', NULL, NULL),
('565df12efa9b11ed', '646eb98b629e9609', '646eb98b66362601', 'Child', '1965-07-20', NULL, NULL),
('565e8ffffa9b11ed', '646eb98b629e9609', '646eb98b672e5640', 'Child', '2008-04-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `solo_parent_data`
--

CREATE TABLE `solo_parent_data` (
  `SOLO_PARENT_DATA_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `CLASSIFICATION_CIRCUMSTANCES` varchar(512) NOT NULL,
  `NEEDS_PROBLEMS` varchar(512) NOT NULL,
  `FAMILY_RESOURCES` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_documents`
--

CREATE TABLE `uploaded_documents` (
  `UPLOADED_DOCUMENT_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `DOCUMENT_NAME` varchar(256) NOT NULL,
  `DOCUMENT_TYPE` varchar(256) NOT NULL,
  `FILE_PATH` varchar(256) NOT NULL,
  `UPLOAD_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_authentication`
--

CREATE TABLE `user_authentication` (
  `USER_AUTHENTICATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `USERNAME` varchar(32) NOT NULL,
  `PASSWORD` varchar(64) NOT NULL,
  `ROLE` int(8) NOT NULL,
  `IS_LOCKED` int(8) NOT NULL DEFAULT 0,
  `ACCOUNT_STATUS` int(8) NOT NULL DEFAULT 1,
  `LOGIN_ATTEMPTS` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`ADDRESS_ID`),
  ADD KEY `FK_PERSON_ADDRESS` (`PERSON_ID`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`APPLICATION_ID`),
  ADD KEY `FK_PERSON_APPLICATION` (`PERSON_ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`APPOINTMENT_ID`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`CONTACT_DETAILS_ID`),
  ADD KEY `FK_PERSON_CONTACT_DETAILS` (`PERSON_ID`);

--
-- Indexes for table `employment_details`
--
ALTER TABLE `employment_details`
  ADD PRIMARY KEY (`EMPLOYMENT_DETAILS_ID`),
  ADD KEY `FK_PERSON_EMPLOYMENT_DETAILS` (`PERSON_ID`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`ORGANIZATION_ID`),
  ADD KEY `FK_PERSON_ORGANIZATION` (`PERSON_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PERSON_ID`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`PERSONAL_INFORMATION_ID`),
  ADD KEY `FK_PERSON_PERSONAL_INFORMATION` (`PERSON_ID`);

--
-- Indexes for table `pwd_data`
--
ALTER TABLE `pwd_data`
  ADD PRIMARY KEY (`PWD_DATA_ID`),
  ADD KEY `FK_PERSON_PWD_DATA` (`PERSON_ID`);

--
-- Indexes for table `relatives`
--
ALTER TABLE `relatives`
  ADD PRIMARY KEY (`RELATIVE_ID`),
  ADD KEY `FK_RELATIVE_PERSON_ID` (`RELATIVE_PERSON_ID`),
  ADD KEY `FK_PERSON_RELATIVE_ID` (`PERSON_ID`);

--
-- Indexes for table `solo_parent_data`
--
ALTER TABLE `solo_parent_data`
  ADD PRIMARY KEY (`SOLO_PARENT_DATA_ID`),
  ADD KEY `FK_PERSON_SOLO_PARENT_DATA` (`PERSON_ID`);

--
-- Indexes for table `uploaded_documents`
--
ALTER TABLE `uploaded_documents`
  ADD PRIMARY KEY (`UPLOADED_DOCUMENT_ID`),
  ADD KEY `FK_PERSON_UPLOADED_DOCUMENT` (`PERSON_ID`);

--
-- Indexes for table `user_authentication`
--
ALTER TABLE `user_authentication`
  ADD PRIMARY KEY (`USER_AUTHENTICATION_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_PERSON_ADDRESS` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK_PERSON_APPLICATION` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD CONSTRAINT `FK_PERSON_CONTACT_DETAILS` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `employment_details`
--
ALTER TABLE `employment_details`
  ADD CONSTRAINT `FK_PERSON_EMPLOYMENT_DETAILS` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `FK_PERSON_ORGANIZATION` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD CONSTRAINT `FK_PERSON_PERSONAL_INFORMATION` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `pwd_data`
--
ALTER TABLE `pwd_data`
  ADD CONSTRAINT `FK_PERSON_PWD_DATA` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `relatives`
--
ALTER TABLE `relatives`
  ADD CONSTRAINT `FK_PERSON_RELATIVE_ID` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`),
  ADD CONSTRAINT `FK_RELATIVE_PERSON_ID` FOREIGN KEY (`RELATIVE_PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `solo_parent_data`
--
ALTER TABLE `solo_parent_data`
  ADD CONSTRAINT `FK_PERSON_SOLO_PARENT_DATA` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `uploaded_documents`
--
ALTER TABLE `uploaded_documents`
  ADD CONSTRAINT `FK_PERSON_UPLOADED_DOCUMENT` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
