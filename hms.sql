-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 24, 2023 at 10:17 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accaunt`
--

DROP TABLE IF EXISTS `accaunt`;
CREATE TABLE IF NOT EXISTS `accaunt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Total_amaunt` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accaunt`
--

INSERT INTO `accaunt` (`id`, `Total_amaunt`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `phone_number`, `email`, `profile`) VALUES
(1, 'peter', 'password.', '1234567', 'peter@gmail.com', 'WhatsApp Image 2023-01-27 at 14.47.39.jpg'),
(2, 'jane', 'password.', ' ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `id_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `username`, `email`, `phone`, `password`, `status`, `salary`, `date`, `profile`, `id_number`) VALUES
(1, 'peter', 'john@gmail.com', '987654321', 'password.', 'pedding', '50,000', '2022-12-15 15:27:04', 'b4fa2e37-db7a-4bd4-ab6e-2be29d44af9f.jpg', ''),
(2, 'jane', 'jane@gmail.com', '123456', 'password.', 'pedding', '1000', '2022-12-15 15:28:49', '', ''),
(4, 'john', '', '0787654321', 'password.', 'pedding', '100,000', '2022-12-17 10:42:18', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

DROP TABLE IF EXISTS `finance`;
CREATE TABLE IF NOT EXISTS `finance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `id_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `username`, `email`, `phone`, `password`, `status`, `salary`, `date`, `profile`, `id_number`) VALUES
(1, 'john', 'john@gmail.com', '12345', 'password.', 'pedding', '65,0000', '2022-12-17 21:42:41', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
CREATE TABLE IF NOT EXISTS `lab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `id_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `username`, `email`, `phone`, `password`, `status`, `salary`, `date`, `profile`, `id_number`) VALUES
(1, 'peter', 'peter@gmail.com', '12345', 'password.', 'pedding', '55,000', '2022-12-15 15:29:48', '', ''),
(2, 'jane', 'jane@gmail.com', '1234', 'password.', 'pedding', '', '2022-12-15 15:30:36', '', ''),
(3, 'stive', '', '', '123', 'pedding', '098', '2023-01-28 16:43:49', '', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(100) NOT NULL,
  `generic_name` varchar(100) NOT NULL,
  `batch_number` varchar(100) NOT NULL,
  `medicine_expiery` varchar(100) NOT NULL,
  `medicine_price` varchar(100) NOT NULL,
  `pharmacist_id` varchar(100) NOT NULL,
  `pharmacist_updater_id` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_name`, `generic_name`, `batch_number`, `medicine_expiery`, `medicine_price`, `pharmacist_id`, `pharmacist_updater_id`, `quantity`) VALUES
(141, 'panadol', 'panadol', '001', '2023-01-17', '5', '1', '', 100),
(143, 'amozil', 'amozil', '002', '2023-02-07', '4', '1', '', 120),
(144, 'pilton', 'pilton', '003', '2023-01-29', '6', '1', '', 345);

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

DROP TABLE IF EXISTS `nurses`;
CREATE TABLE IF NOT EXISTS `nurses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `id_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `username`, `email`, `phone`, `password`, `status`, `salary`, `date`, `profile`, `id_number`) VALUES
(4, 'jane', 'jane@gmail.com', '0787654321', 'password.', 'pedding', '70,000', '2022-12-23 14:42:55', 'IMG_20220707_094507_691[1].jpg', '12345678'),
(7, 'margaret', 'margaret@gmail.com', '0745437104', '7104', 'pedding', '200,000', '2023-01-02 13:34:54', 'IMG_20220707_094507_691[1].jpg', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_number` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `third_name` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `maratial` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `nurse_id` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `systolic` varchar(100) NOT NULL,
  `diastolic` varchar(100) NOT NULL,
  `pulse_rate` varchar(100) NOT NULL,
  `temperature` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `alergies` varchar(100) NOT NULL,
  `BMI` varchar(100) NOT NULL,
  `nurse_report` varchar(100) NOT NULL,
  `nurse_service` varchar(100) NOT NULL,
  `doctor_id` varchar(100) NOT NULL,
  `doctor_service` varchar(100) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `provision_diagnosis` varchar(100) NOT NULL,
  `prescription` varchar(100) NOT NULL,
  `usaged` varchar(100) NOT NULL,
  `test` varchar(100) NOT NULL,
  `radiology` varchar(100) NOT NULL,
  `radiology_id` varchar(100) NOT NULL,
  `lab_id` varchar(100) NOT NULL,
  `patient_report` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `medication_illness` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `social_history` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `family_history` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `physical_examination` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lab_service` varchar(100) NOT NULL,
  `lab_results` varchar(100) NOT NULL,
  `doctor_lab_service` varchar(100) NOT NULL,
  `recomendation` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_number`, `first_name`, `surname`, `third_name`, `age`, `date_of_birth`, `gender`, `phone_number`, `id_number`, `email`, `occupation`, `maratial`, `payment`, `purpose`, `nurse_id`, `status`, `date`, `systolic`, `diastolic`, `pulse_rate`, `temperature`, `weight`, `height`, `alergies`, `BMI`, `nurse_report`, `nurse_service`, `doctor_id`, `doctor_service`, `diagnosis`, `provision_diagnosis`, `prescription`, `usaged`, `test`, `radiology`, `radiology_id`, `lab_id`, `patient_report`, `medication_illness`, `social_history`, `family_history`, `physical_examination`, `lab_service`, `lab_results`, `doctor_lab_service`, `recomendation`, `action`) VALUES
(1, 'THL/1/2023', 'peter', 'mberere', 'mbio', '21 years', '2001-09-11', 'Male', '0759595268', '', '', '', '', 'Cash', 'Pharmacy', '4', 'registered', '2023-01-11 16:24:02', '71', '71', '71', '71', '71', '71', 'none', '140.84507042254', 'none', 'Nursing', ' 1', 'Consoltation', 'Malaria', 'malaria', 'panadol,amozil', '', 'Blood', '', '', '1', 'none', 'none', 'none', 'none', 'none', 'Lab services', 'none', 'Consoltation', 'none', 'Reffer for pharmacy'),
(2, 'THL/2/2023', 'james', 'mberere', 'maina', '26 years', '1996-09-07', 'Male', '0787654321', '', '', '', '', 'Cash', 'Pharmacy', '4', 'registered', '2023-01-11 16:24:51', '71', '71', '71', '71', '71', '71', 'none', '140.84507042254', 'none', 'Nursing', ' 1', 'Consoltation', 'Anamia', 'malaria', 'panadol,pilton', '', 'Blood', '', '', '1', 'none', 'none', 'none', 'none', 'none', 'Lab services', 'none', 'Consoltation', 'none', 'Reffer for pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `phamacy`
--

DROP TABLE IF EXISTS `phamacy`;
CREATE TABLE IF NOT EXISTS `phamacy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `id_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `phamacy`
--

INSERT INTO `phamacy` (`id`, `username`, `email`, `phone`, `password`, `status`, `salary`, `date`, `profile`, `id_number`) VALUES
(1, 'peter', 'peter@gmail.com', '1234', 'password.', 'pedding', '110,000', '2022-12-15 15:31:29', '', ''),
(2, 'jane', 'jane@gmail.com', '12', 'password.', 'pedding', '100,000', '2022-12-15 15:31:45', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_number` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `generic_name` varchar(100) NOT NULL,
  `dosage` varchar(100) NOT NULL,
  `frequecy` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `sale_price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `patient_number`, `first_name`, `surname`, `medicine_name`, `generic_name`, `dosage`, `frequecy`, `duration`, `sale_price`) VALUES
(125, 'THL/1/2023', 'peter', 'mberere', 'panadol', '', '2', '3', '4', 0),
(126, 'THL/1/2023', 'peter', 'mberere', 'amozil', '', '2', '1', '5', 0),
(127, 'THL/2/2023', 'james', 'mberere', 'panadol', '', '1', '2', '4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

DROP TABLE IF EXISTS `price_list`;
CREATE TABLE IF NOT EXISTS `price_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ser_id` int NOT NULL,
  `Treatment_Group` varchar(100) NOT NULL,
  `Services` varchar(100) NOT NULL,
  `Cash_rate` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `price_list`
--

INSERT INTO `price_list` (`id`, `ser_id`, `Treatment_Group`, `Services`, `Cash_rate`) VALUES
(1, 1, 'consultation', 'GYNECOLOGIST CONSULTATION', 1000),
(2, 2, 'consultation', 'INJECTION FEE', 200),
(3, 3, 'consultation', 'ONCOLOGY CONSULTATION', 500),
(4, 4, 'consultation', 'PEDIATRICIAN CONSULTATION', 2000),
(5, 5, 'consultation', 'GENERAL CONSULTATION', 200),
(6, 6, 'consultation', 'SPECULUM EXAMINATION', 500),
(7, 7, 'consultation', 'SURGEONS CONSULTATION', 1000),
(8, 8, 'consultation', 'IMMUNAIZATION BABY', 500),
(9, 9, 'other services', 'JADELLE INSERTION', 200),
(10, 10, 'other services', 'JADELLE REMOVAL', 800),
(11, 11, 'other services', 'NURSING PROCEDURE', 500),
(12, 12, 'other services', 'DEPO INJECTION', 150),
(13, 13, 'PROCEDURE', 'BABY WEIGHING', 300),
(14, 14, 'PROCEDURE', 'EAR SYRINGING/IRRIGATION', 500),
(15, 15, 'PROCEDURE', 'MAJOR WOUND DRESSING', 500),
(16, 16, 'PROCEDURE', 'FNA PROCEDURE ONLY', 1500),
(17, 17, 'PROCEDURE', 'FLOW SPIROMETRY COMPLETE AND REPORTING ', 1000),
(18, 18, 'PROCEDURE', 'PAP SMEAR', 2000),
(19, 19, 'PROCEDURE', 'MINOR WOUND DRESSING/SIMPLE WOUND DRESSING', 300),
(20, 20, 'PROCEDURE', 'NEBULIZATION', 500),
(21, 21, 'PROCEDURE', 'IUCD INSERTION(GYN)', 300),
(22, 22, 'PROCEDURE', 'IUCD REMOVAL', 1800),
(23, 23, 'PROCEDURE', 'HVS PROCEDURE ONLY', 1300),
(24, 24, 'PROCEDURE', 'WEEL BABY CLINIC', 300),
(25, 25, 'PROCEDURE', 'SPECULUM EXAMINATION', 300),
(26, 26, 'PROCEDURE', 'WOUND DRESSING/STRUCTURE REMOVAL', 300),
(27, 27, 'PROCEDURE', 'IV CANNULA INSERTION300', 300),
(28, 28, 'PROCEDURE ', 'OPD OBSERVATION FEE PER HOUR', 100),
(29, 29, 'PROCEDURE ', 'INJECTION FEES(EXTERNALLY PERCHASED DRUGS)', 800),
(30, 30, 'PROCEDURE', 'INTRA-ARTICULAR INJ', 100),
(31, 31, 'PROCEDURE', 'INTRA-DERMAL INJ', 1000),
(32, 32, 'PROCEDURE', 'BMA & TREPHINE BIOPSY PROCUDURE ONLY100100', 1000),
(33, 33, 'PROCEDURE', 'INCISION AND DRAINAGE', 5000),
(34, 34, 'OPD SURGERY', 'EXCISION', 1200),
(35, 35, 'OPD SURGERY', 'CIRCUMCISION', 5000),
(36, 36, 'OPD SURGERY', 'DETAILED REPEIRE/ STITCHING/SUTURING WOUNDS', 3500),
(37, 37, 'OPD SURGERY', 'SIMPLE REPAIR/ STITCHING/ SUTURING', 3000),
(38, 38, 'OPD SURGERY', 'CASTING & SERIAL CASTING', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `radiology`
--

DROP TABLE IF EXISTS `radiology`;
CREATE TABLE IF NOT EXISTS `radiology` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `radiology`
--

INSERT INTO `radiology` (`id`, `username`, `email`, `phone`, `password`, `status`, `salary`, `date`, `profile`, `id_number`) VALUES
(1, 'peter', '', '', 'password.', 'pedding', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

DROP TABLE IF EXISTS `reception`;
CREATE TABLE IF NOT EXISTS `reception` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `id_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reception`
--

INSERT INTO `reception` (`id`, `username`, `email`, `phone`, `password`, `status`, `salary`, `date`, `profile`, `id_number`) VALUES
(3, 'peter', 'peter@gmail.com', '0759595268', 'password.', 'pedding', '60,000', '2022-12-17 10:13:25', 'IMG_20221217_094331_083.jpg', '39665135');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ser_id` int NOT NULL,
  `patient_number` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `services` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `ser_id`, `patient_number`, `first_name`, `surname`, `services`, `payment_status`) VALUES
(115, 8, 'THL/1/2023', 'peter', 'mberere', ' ', 'pedding'),
(116, 14, 'THL/1/2023', 'peter', 'mberere', ' ', 'pedding'),
(117, 18, 'THL/1/2023', 'peter', 'mberere', ' ', 'pedding'),
(118, 1, 'THL/2/2023', 'james', 'mberere', ' ', 'pedding'),
(119, 2, 'THL/2/2023', 'james', 'mberere', ' ', 'pedding'),
(120, 3, 'THL/2/2023', 'james', 'mberere', ' ', 'pedding');

-- --------------------------------------------------------

--
-- Table structure for table `services_list`
--

DROP TABLE IF EXISTS `services_list`;
CREATE TABLE IF NOT EXISTS `services_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_number` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `services` varchar(100) NOT NULL,
  `Total_amaunt` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services_list`
--

INSERT INTO `services_list` (`id`, `patient_number`, `first_name`, `surname`, `services`, `Total_amaunt`) VALUES
(16, 'THL/1/2023', 'peter', 'mberere', ' 8, 14, 18', 0),
(17, 'THL/2/2023', 'james', 'mberere', ' 1, 2, 3', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
