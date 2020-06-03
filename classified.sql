-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 12:34 PM
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
  `city` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `business_telephone` bigint(12) NOT NULL,
  `business_email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category` int(11) NOT NULL,
  `price` int(255) NOT NULL,
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
  `ref_telephone` int(12) DEFAULT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classified`
--

INSERT INTO `classified` (`id`, `business_name`, `city`, `address`, `business_telephone`, `business_email`, `website`, `description`, `category`, `price`, `days`, `languages`, `logo`, `picture1`, `picture2`, `full_name`, `telephone`, `email`, `ref_business`, `ref_name`, `ref_telephone`, `verify`) VALUES
(1, 'S.K.Apparels', '', '211,gheekanta', 917990775917, 'daiyayash1218@gmail.com', 'www.skapparels.com', 'We believe in beauty with a conscience. We have created a shop that offers the highest quality beauty services in a setting that is healthier for the environment, our guests and our staff. It is our goal to exceed your expectations. Come experience a family atmosphere where you come as guests and leave as friends. Our staff is highly trained with diversity in all aspects of Hair, Waxing, and Massage.', 1, 0, 6, '\"French\"', '74921664b7c699e3bdc86f7862d2ac6d.jpg', 'f5cc2bcf0fb37eeb83d79a08d5790b44.jpg', '286c737d7f94489d3e87f4797daa20aa.jpg', 'Yash Sureshkumar daiya', 2147483647, 'daiyayash1218@gmail.com', '', '', 0, 0),
(2, 'Kivon ', '', 'mahalaxmi complex', 7990775917, 'daiyayash1218@gmail.com', 'www.kivonshirts.com', 'High-end fabrics with best comforts.', 1, 0, 6, '[\"Arabic\",\"French\"]', 'd73fff68f141cade4840fa2f70407316.jpg', '165f96f014b018c2824e615f02a6862d.jpg', 'fabb454a7f321eadeb4e170a0f4e369e.jpg', 'Yash Sureshkumar daiya', 2147483647, 'daiyayash1218@gmail.com', 'S.k.apprales', 'Yash Sureshkumar daiya', 2147483647, 1),
(3, 'S.K.Apparels', '', '52, PART-2, SHREENATH BANGLOWS, CHANDKHEDA', 917990775917, 'daiyayash1218@gmail.com', 'ww.clothingiseverything.com', 'esffes', 9, 0, 6, '[\"1\",\"1\"]', 'thumbnail.png', 'thumbnail.png', 'thumbnail.png', 'Yash Sureshkumar daiya', 2147483647, 'daiyayash1218@gmail.com', 'S.k.apprales', 'Yash Sureshkumar daiya', 2147483647, 0),
(4, 'NM FABRICS', '', '211, 2nd floor, Mahalaxmi complex\r\ngheekanta road', 7990775917, 'daiyayash1218@gmail.com', 'vendors.com', 'frg', 9, 0, 6, '[\"Russian\",\"Hebrew\"]', 'b6565234e1368ac026a0701d8decfa51.jpg', '3f4d2dcb9d10c31e7f904acf8a462314.jpg', '24399598bbdbde56cb1ac59cf8e43a17.jpg', 'Yash Sureshkumar daiya', 2147483647, 'daiyayash1218@gmail.com', 'S.k.apprales', 'Yash Sureshkumar daiya', 2147483647, 2);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
