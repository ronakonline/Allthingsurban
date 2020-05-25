-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2020 at 11:19 AM
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
-- Table structure for table `classified_categorie`
--

CREATE TABLE `classified_categorie` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `sub_name` text NOT NULL,
  `banner` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classified_categorie`
--

INSERT INTO `classified_categorie` (`id`, `parent`, `sub_name`, `banner`) VALUES
(1, 1, 'fabrics', 'GamingLogo.png'),
(2, 1, 'MFG', 'GamingLogo.png'),
(4, 3, 'Mafia', ''),
(5, 1, 'Hair', ''),
(6, 1, 'Hair salon', ''),
(7, 1, 'Asia', ''),
(8, 3, 'kcjhs', 'Gaming_logo.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classified_categorie`
--
ALTER TABLE `classified_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_fk` (`parent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classified_categorie`
--
ALTER TABLE `classified_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classified_categorie`
--
ALTER TABLE `classified_categorie`
  ADD CONSTRAINT `parent_fk` FOREIGN KEY (`parent`) REFERENCES `classified_parent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
