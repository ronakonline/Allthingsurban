-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2020 at 04:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atlas`
--

-- --------------------------------------------------------

--
-- Table structure for table `classified`
--

CREATE TABLE `classified` (
  `id` int(255) NOT NULL,
  `business_name` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `business_telephone` bigint(12) NOT NULL,
  `business_email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category` int(11) NOT NULL,
  `days` int(7) NOT NULL,
  `languages` longtext NOT NULL,
  `logo` longtext NOT NULL,
  `picture1` longtext NOT NULL,
  `picture2` longtext NOT NULL,
  `full_name` mediumtext NOT NULL,
  `telephone` int(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `ref_business` longtext DEFAULT NULL,
  `ref_name` longtext DEFAULT NULL,
  `ref_telephone` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classified`
--

INSERT INTO `classified` (`id`, `business_name`, `address`, `business_telephone`, `business_email`, `website`, `description`, `category`, `days`, `languages`, `logo`, `picture1`, `picture2`, `full_name`, `telephone`, `email`, `ref_business`, `ref_name`, `ref_telephone`) VALUES
(1, 'S.K.Apparels', '211,gheekanta', 917990775917, 'daiyayash1218@gmail.com', 'www.skapparels.com', 'best ever ready made clothing.', 1, 6, '\"French\"', '74921664b7c699e3bdc86f7862d2ac6d.jpg', 'f5cc2bcf0fb37eeb83d79a08d5790b44.jpg', '286c737d7f94489d3e87f4797daa20aa.jpg', 'Yash Sureshkumar daiya', 2147483647, 'daiyayash1218@gmail.com', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classified`
--
ALTER TABLE `classified`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_fk` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classified`
--
ALTER TABLE `classified`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classified`
--
ALTER TABLE `classified`
  ADD CONSTRAINT `category_fk` FOREIGN KEY (`category`) REFERENCES `classified_categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
