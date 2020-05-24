-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 11:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `icon`, `name`, `slug`) VALUES
(1, 'fas fa-male', 'Good for kids', 'good-for-kids'),
(2, 'fas fa-tree', 'Outdoor seating', 'outdoor-seating'),
(3, 'fas fa-tv', 'Television', 'television'),
(4, 'fas fa-wheelchair', 'Wheelchair accessible', 'wheelchair-accessible'),
(5, 'fas fa-wifi', 'Free WiFi', 'free-wifi'),
(6, 'fas fa-car', 'Parking', 'parking'),
(7, 'fas fa-paw', 'Pet allowed', 'pet-allowed'),
(8, 'far fa-gem', 'Spa and fitness center', 'spa-and-fitness-center'),
(9, 'fas fa-bath', 'Swimming pool', 'swimming-pool'),
(10, 'fas fa-utensils', 'BBQ facilities', 'bbq-facilities'),
(11, 'fas fa-fire', 'Smoke allowed', 'smoke-allowed');

-- --------------------------------------------------------

--
-- Table structure for table `beauty_service`
--

CREATE TABLE `beauty_service` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_times` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beauty_service`
--

INSERT INTO `beauty_service` (`id`, `listing_id`, `name`, `price`, `service_times`, `photo`) VALUES
(1, 1, 'Razor Fade', '50', '11:30,19:00,40', NULL),
(2, 2, 'Manicure', '50', '11:30,17:00,30', '061e44717ee6e40cd0fe5da6cef60cd4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `booking_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional_information` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `listing_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT 0,
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent`, `icon_class`, `name`, `slug`, `thumbnail`) VALUES
(2, 0, 'fas fa-utensils', 'Restaurant', 'restaurant', 'e4bb4a944c63ac29d2d6770b9b55ae55.jpg'),
(3, 2, 'fas fa-glass-martini', ' Barbecue ', 'barbecue', NULL),
(4, 2, 'fas fa-coffee', 'Cafe bistro ', 'cafe-bistro', NULL),
(5, 2, 'fas fa-dot-circle', 'Doughnut shops', 'doughnut-shops', NULL),
(6, 2, 'fas fa-male', 'Family style', 'family-style', NULL),
(7, 2, 'fas fa-birthday-cake', 'Fast food', 'fast-food', NULL),
(8, 2, 'fas fa-utensil-spoon', 'Fine dining', 'fine-dining', NULL),
(9, 2, 'fas fa-beer', 'Juice bars', 'juice-bars', NULL),
(10, 2, 'fas fa-utensils', 'Restaurant buffet', 'restaurant-buffet', NULL),
(11, 0, 'fas fa-h-square', 'Hotel', 'hotel', 'a6535c12f9c017c531d09bfbd47c2219.jpg'),
(12, 11, 'far fa-building', 'Apartment hote', 'apartment-hote', NULL),
(13, 11, 'fas fa-bed', 'Bed and breakfast', 'bed-and-breakfast', NULL),
(14, 11, 'fab fa-fort-awesome-alt', 'Casino hotel ', 'casino-hotel', NULL),
(15, 11, 'fas fa-home', ' Guesthouse', 'guesthouse', NULL),
(16, 0, 'fas fa-shopping-bag', 'Shopping', 'shopping', 'fbd1ec496dfb0179b7e73dec9d06ef5d.jpg'),
(17, 16, 'fas fa-car', ' Automobile ', 'automobile', NULL),
(18, 16, 'fas fa-shopping-bag', 'Bags', 'bags', NULL),
(19, 0, 'fas fa-gem', 'Fitness', 'fitness', '56eafdc7b0726d36db11044768048653.jpg'),
(20, 19, 'fas fa-exchange-alt', 'Boxing ', 'boxing', NULL),
(21, 19, 'fas fa-bicycle', 'Cycling', 'cycling', NULL),
(22, 19, 'fab fa-strava', 'Yoga', 'yoga', NULL),
(23, 0, 'fas fa-cut', ' Beauty', 'beauty', 'eb983af97eaa0195f55cd73fc4bdb55b.jpg'),
(24, 23, 'fas fa-eye', ' Eye color ', 'eye-color', NULL),
(25, 23, 'far fa-smile', 'Facial ', 'facial', NULL),
(26, 23, 'fas fa-cut', 'Hair salon', 'hair-salon', NULL),
(27, 16, 'fas fa-laptop', ' Computer', 'computer', NULL),
(28, 16, 'fab fa-black-tie', 'Fashion ', 'fashion', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbeauty_service`
--

CREATE TABLE `cbeauty_service` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_times` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cchotel_room_specification`
--

CREATE TABLE `cchotel_room_specification` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cfood_menu`
--

CREATE TABLE `cfood_menu` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chotel_room_specification`
--

CREATE TABLE `chotel_room_specification` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ef18cnvpdikqhvb5vj4j86dtg5i5uvtt', '::1', 1589302528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330323532383b),
('tgotp5qee47chq46lq6qh5e8khe221nl', '::1', 1589303017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330333031373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('33buh0jmvm5gm17fffsnrtmtgraim9ka', '::1', 1589303800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330333830303b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('s6j8vedt8d5vjevq83uu9eq3heqc82gk', '::1', 1589304132, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330343133323b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('hv6vql3kcr4h0jb9o9j2jflb0sug4uq8', '::1', 1589304487, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330343438373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('16namnvi6caqpd3oaa5uh5os441ghb5u', '::1', 1589304844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330343834343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('h1om99b47ulhnfrujjgtl9s4c6cpssfq', '::1', 1589305156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330353135363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('oo7usjg0ldjml305nslee8uldlr3frji', '::1', 1589305480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330353438303b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('380htc1ba75s2pbovon4oo6uivqteagf', '::1', 1589305784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330353738343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a22677269645f76696577223b),
('hebekpphiun07r3o2bcdb58emuho727f', '::1', 1589306085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330363038353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a22677269645f76696577223b),
('0b8ccd1251ua870eqtt3maj9dqqb0r6p', '::1', 1589306557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330363535373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a22677269645f76696577223b),
('32j6b13ar0qemla749lpi53brbts5vht', '::1', 1589306871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330363837313b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a22677269645f76696577223b),
('b4i9l2spsog0giajasla41cqu65p6va5', '::1', 1589307322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330373332323b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a22677269645f76696577223b),
('sv33pmgqq230ftn2a05pqv93glpoapda', '::1', 1589307624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393330373632343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b6c697374696e67735f766965777c733a393a22677269645f76696577223b),
('oajc293t1kurmiq61teg6a94dh5l45oc', '::1', 1589313023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393331333032333b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('8mp2vite8206h9pdld1j43ajuesqfmm7', '::1', 1589313818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393331333831383b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('btgv1at7dpvu4rgjm88ja0njcilutdgt', '::1', 1589315583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393331353538333b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('8el08830ooo3274ai23jl4r6ab55gjt4', '::1', 1589316193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393331363139333b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('5o8km51586eptkg8ovka1fdqir2172u2', '::1', 1589316669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393331363636393b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('02rj77gnauci4u9nbbtimg2eusqvtsqv', '::1', 1589316821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393331363636393b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('sgjifi5f05jkagrieiktoap2gvbecilg', '::1', 1589352711, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393335323731313b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('g1h5hmoqb5g8vuv50k1pur2d1lqtgnob', '::1', 1589352215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393335323231353b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('h90gh0nf5buml9e27nn0snllj95vd7n6', '::1', 1589353017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393335333031373b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('road58j7bb6d5do2mtc3ed1747qb0094', '::1', 1589356354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393335363335343b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('7gnejee7ernd3gloasem3vmke5hrim64', '::1', 1589361719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393336313731393b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('9chr867q1bfj69aojuokq9p8amgj1vtl', '127.0.0.1', 1589358705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393335383730313b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('vk6t0uv45qb3mkcmemrm00dd9n4ms73u', '127.0.0.1', 1589359192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393335393139313b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('nqiknl75sbieh4jfes1u0p82cnaa0rbt', '127.0.0.1', 1589362356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393336323335363b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('3cd40rrhmvj7ujk4t37st60d18q3gcbc', '127.0.0.1', 1589362050, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393336323035303b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('hf7img7v0ase9euclfii5rerfsuhb93l', '127.0.0.1', 1589362757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393336323730303b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('n61kjos6qj734jk2acqfq0mnm0jau1fm', '127.0.0.1', 1589362700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538393336323730303b69735f6c6f676765645f696e7c693a313b757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `claimed_listing`
--

CREATE TABLE `claimed_listing` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_information` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classifieds`
--

CREATE TABLE `classifieds` (
  `id` int(11) NOT NULL,
  `code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photos` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `social` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `listing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_meta_tags` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classifieds`
--

INSERT INTO `classifieds` (`id`, `code`, `name`, `description`, `categories`, `amenities`, `photos`, `video_url`, `video_provider`, `tags`, `address`, `email`, `phone`, `website`, `social`, `user_id`, `latitude`, `longitude`, `google_analytics_id`, `country_id`, `city_id`, `status`, `is_featured`, `listing_type`, `listing_thumbnail`, `listing_cover`, `seo_meta_tags`, `date_added`, `date_modified`) VALUES
(1, 'bf533aad82a7fb6e6eb088d0b079dd5b', 'Le local_barbershop', 'We believe in beauty with a conscience. We have created a shop that offers the highest quality beauty services in a setting that is healthier for the environment, our guests and our staff. It is our goal to exceed your expectations. Come experience a family atmosphere where you come as guests and leave as friends. Our staff is highly trained with diversity in all aspects of Hair, Waxing, and Massage.', '[\"23\",\"26\"]', '[\"5\",\"7\",\"11\"]', '[\"1ea99c215c07be57fb0af87867040077.jpg\",\"038defb49c10b93c7c2d4190252fa6bb.jpg\",\"25c544a878a33e2e12e0edd177e20020.jpg\"]', 'https://vimeo.com/181714626', 'vimeo', '', 'Nice, France', 'yourbusiness@example.com', '+48929485960', ' http://yourcompany.com', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, '43.702070', '7.272992', '', 73, NULL, 'active', 1, 'beauty', '5ef43e911ce4a706ed1c2aba2880aef7.jpg', '064a1d7591aec7fdb11547383857e138.jpg', '', '1587751200', NULL),
(2, '5cf86c8cc502141626f4ac470d7cb824', 'The Beauty Shop', 'The Beauty Shop was created on October 2, 2011 by Gaëlle. The concept is simple, as indicated by its slogan &quot;Esthetics and tasteful music&quot;.\r\n\r\nIt is a beauty salon where we find all the classic services, but in a totally different atmosphere. Here we are pampered, we talk, we get acquainted by listening to good music, mainly rock&#039;n&#039;roll and all this in a frame straight out of the 50s! Why? Because Gaëlle likes it and wants to share it with her clients! She will relax, take care of your body, your hands, your feet, your face and comfort you with your heartaches! Joana accompanies him in this beautiful adventure! ', '[\"23\",\"28\",\"26\",\"24\"]', '[\"1\",\"3\",\"5\",\"6\",\"7\",\"8\",\"11\"]', '[\"20a6e12faf9cf8fa3a380ae83716a239.jpg\",\"67e99d2c84aad1965113ea3130069bd9.jpg\",\"c6cadd667363a3af80cb6962e64e4636.jpg\"]', 'https://vimeo.com/32195486', 'vimeo', '', 'Lyon, France', 'yourbusiness@example.com', '+48929485960', 'http://yourcompany.com', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, '45.773751', '4.856175', '', 73, NULL, 'active', 1, 'beauty', 'fd45eb065edf52ec94f8aef20ce5e0eb.jpg', '42b913704f8b2d2de8d1118b5f2941f2.jpg', '', '1587751200', NULL),
(4, '596d6a18484d86d9bf64b553e785c901', 'sbads', 'asbxzb', '[\"10\"]', '[\"1\",\"4\",\"7\"]', '[]', '', 'youtube', '', '', '', '', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, 'sav', 'savasv', 'sabzx', 2, NULL, 'active', 1, 'general', '7efc8f336ae1f409165ebcab65c33efc.jpg', '6d10db78e5d008512ea316d5aaf6a955.jpg', '', '1589220000', NULL),
(5, '74b785aeb2f677cd4bdc7ce6fae887e6', 'savasvaa', 'savsavsavav', '[\"11\"]', '[\"1\",\"4\",\"7\"]', '[]', '', 'youtube', '', 'asvavxvqavsavxvqasvavxavsvxvzv\r\n\r\n\r\n\r\nvasvavav', '', '', 'asvsav', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, 'asva', 'savav', 'asva', 6, NULL, 'active', 1, 'general', '11b3e4d67e7c93a85e5c59e225b2242e.jpg', '23f1e7c57ecdf64c2beedff3bb486a60.jpg', '', '1589306400', 1589306400),
(6, 'b2679069b3f5747e6b3e7af1ef723356', 'abcdad', 'asvihasiovnosavnlznvisavlianva', '[\"2\"]', '[\"1\",\"5\",\"7\"]', '[]', '', 'youtube', '', 'savxva', '', '', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, 'savsav', 'savsavx', 'sava', 4, NULL, 'active', 1, 'general', '6a2a07ad96c8c1a2ff2fcd069267cd92.jpg', 'c93dd338080cb6c686366a24dc8aecc4.jpg', '', '1589306400', 1589306400),
(7, '636bcbd35659787217eeeec73acc877d', 'abc', 'sabvxzbv', '[\"3\"]', '[\"1\",\"4\",\"7\"]', '[]', '', 'youtube', '', 'abxzbqa', '', '', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, 'asba', 'sabxz', 'asbxz', 1, NULL, 'active', 1, 'general', '0fb7dd3381cc2afb576d5fedc56af496.jpg', '525ffde1fece9ad4695bc6b037336fa5.jpg', '', '1589306400', NULL),
(8, 'f079ec71fa2fd542386948e1b6acb564', '123', 'asvav', '[\"8\"]', '[\"1\",\"4\",\"7\"]', '[]', '', 'youtube', '', 'asv', '', '', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, 'asv', 'savasv', '', 1, NULL, 'active', 1, 'general', 'cf0a4cceae2f14dbbc69cea49967461b.jpg', 'e568572a822ea66403660cbc2214c227.jpg', '', '1589306400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `reply_to` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(5) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dial_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN'),
(2, 'Aland Islands', 'AX', '+358', '', '', ''),
(3, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL'),
(4, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD'),
(5, 'AmericanSamoa', 'AS', '+1684', '', '', ''),
(6, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR'),
(7, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA'),
(8, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD'),
(9, 'Antarctica', 'AQ', '+672', '', '', ''),
(10, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD'),
(11, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS'),
(12, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD'),
(13, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG'),
(14, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD'),
(15, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR'),
(16, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN'),
(17, 'Bahamas', 'BS', '+1242', '', '', ''),
(18, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD'),
(19, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT'),
(20, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD'),
(21, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR'),
(22, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR'),
(23, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD'),
(24, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF'),
(25, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD'),
(26, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(27, 'Bolivia, Plurination', 'BO', '+591', '', '', ''),
(28, 'Bosnia and Herzegovi', 'BA', '+387', '', '', ''),
(29, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP'),
(30, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL'),
(31, 'British Indian Ocean', 'IO', '+246', '', '', ''),
(32, 'Brunei Darussalam', 'BN', '+673', '', '', ''),
(33, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN'),
(34, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF'),
(35, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF'),
(36, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR'),
(37, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF'),
(38, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD'),
(39, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(40, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD'),
(41, 'Central African Repu', 'CF', '+236', '', '', ''),
(42, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF'),
(43, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP'),
(44, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY'),
(45, 'Christmas Island', 'CX', '+61', '', '', ''),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', '', '', ''),
(47, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP'),
(48, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF'),
(49, 'Congo', 'CG', '+242', '', '', ''),
(50, 'Congo, The Democrati', 'CD', '+243', '', '', ''),
(51, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD'),
(52, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC'),
(53, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF'),
(54, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK'),
(55, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC'),
(56, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR'),
(57, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK'),
(58, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK'),
(59, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF'),
(60, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD'),
(61, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP'),
(62, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD'),
(63, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP'),
(64, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD'),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF'),
(66, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN'),
(67, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR'),
(68, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB'),
(69, 'Falkland Islands (Ma', 'FK', '+500', '', '', ''),
(70, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK'),
(71, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD'),
(72, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR'),
(73, 'France', 'FR', '+33', 'Euro', '€', 'EUR'),
(74, 'French Guiana', 'GF', '+594', '', '', ''),
(75, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF'),
(76, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF'),
(77, 'Gambia', 'GM', '+220', '', '', ''),
(78, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL'),
(79, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR'),
(80, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS'),
(81, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP'),
(82, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR'),
(83, 'Greenland', 'GL', '+299', '', '', ''),
(84, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD'),
(85, 'Guadeloupe', 'GP', '+590', '', '', ''),
(86, 'Guam', 'GU', '+1671', '', '', ''),
(87, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ'),
(88, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP'),
(89, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF'),
(90, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF'),
(91, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD'),
(92, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG'),
(93, 'Holy See (Vatican Ci', 'VA', '+379', '', '', ''),
(94, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL'),
(95, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD'),
(96, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF'),
(97, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK'),
(98, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR'),
(99, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR'),
(100, 'Iran, Islamic Republ', 'IR', '+98', '', '', ''),
(101, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD'),
(102, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR'),
(103, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP'),
(104, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS'),
(105, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR'),
(106, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD'),
(107, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY'),
(108, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP'),
(109, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD'),
(110, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '', 'KZT'),
(111, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES'),
(112, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD'),
(113, 'Korea, Democratic Pe', 'KP', '+850', '', '', ''),
(114, 'Korea, Republic of S', 'KR', '+82', '', '', ''),
(115, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD'),
(116, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS'),
(117, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK'),
(118, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR'),
(119, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP'),
(120, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL'),
(121, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD'),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', '', '', ''),
(123, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF'),
(124, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR'),
(125, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR'),
(126, 'Macao', 'MO', '+853', '', '', ''),
(127, 'Macedonia', 'MK', '+389', '', '', ''),
(128, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA'),
(129, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK'),
(130, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR'),
(131, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR'),
(132, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF'),
(133, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR'),
(134, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD'),
(135, 'Martinique', 'MQ', '+596', '', '', ''),
(136, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO'),
(137, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR'),
(138, 'Mayotte', 'YT', '+262', '', '', ''),
(139, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN'),
(140, 'Micronesia, Federate', 'FM', '+691', '', '', ''),
(141, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL'),
(142, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR'),
(143, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT'),
(144, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR'),
(145, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD'),
(146, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD'),
(147, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN'),
(148, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK'),
(149, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD'),
(150, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD'),
(151, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR'),
(152, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR'),
(153, 'Netherlands Antilles', 'AN', '+599', '', '', ''),
(154, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF'),
(155, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD'),
(156, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO'),
(157, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF'),
(158, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN'),
(159, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD'),
(160, 'Norfolk Island', 'NF', '+672', '', '', ''),
(161, 'Northern Mariana Isl', 'MP', '+1670', '', '', ''),
(162, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK'),
(163, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR'),
(164, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR'),
(165, 'Palau', 'PW', '+680', 'Palauan dollar', '$', ''),
(166, 'Palestinian Territor', 'PS', '+970', '', '', ''),
(167, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB'),
(168, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK'),
(169, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG'),
(170, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN'),
(171, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP'),
(172, 'Pitcairn', 'PN', '+872', '', '', ''),
(173, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN'),
(174, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR'),
(175, 'Puerto Rico', 'PR', '+1939', '', '', ''),
(176, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR'),
(177, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON'),
(178, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB'),
(179, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF'),
(180, 'Reunion', 'RE', '+262', '', '', ''),
(181, 'Saint Barthelemy', 'BL', '+590', '', '', ''),
(182, 'Saint Helena, Ascens', 'SH', '+290', '', '', ''),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', '', '', ''),
(184, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD'),
(185, 'Saint Martin', 'MF', '+590', '', '', ''),
(186, 'Saint Pierre and Miq', 'PM', '+508', '', '', ''),
(187, 'Saint Vincent and th', 'VC', '+1784', '', '', ''),
(188, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST'),
(189, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR'),
(190, 'Sao Tome and Princip', 'ST', '+239', '', '', ''),
(191, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR'),
(192, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF'),
(193, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD'),
(194, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR'),
(195, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL'),
(196, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND'),
(197, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR'),
(198, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR'),
(199, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD'),
(200, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS'),
(201, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR'),
(202, 'South Georgia and th', 'GS', '+500', '', '', ''),
(203, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR'),
(204, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR'),
(205, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG'),
(206, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD'),
(207, 'Svalbard and Jan May', 'SJ', '+47', '', '', ''),
(208, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL'),
(209, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK'),
(210, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF'),
(211, 'Syrian Arab Republic', 'SY', '+963', '', '', ''),
(212, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD'),
(213, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', 'ЅМ', 'TJS'),
(214, 'Tanzania, United Rep', 'TZ', '+255', '', '', ''),
(215, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB'),
(216, 'Timor-Leste', 'TL', '+670', '', '', ''),
(217, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF'),
(218, 'Tokelau', 'TK', '+690', '', '', ''),
(219, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP'),
(220, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD'),
(221, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND'),
(222, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY'),
(223, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT'),
(224, 'Turks and Caicos Isl', 'TC', '+1649', '', '', ''),
(225, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD'),
(226, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX'),
(227, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH'),
(228, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED'),
(229, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP'),
(230, 'United States', 'US', '+1', 'United States dollar', '$', 'USD'),
(231, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU'),
(232, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS'),
(233, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV'),
(234, 'Venezuela, Bolivaria', 'VE', '+58', '', '', ''),
(235, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND'),
(236, 'Virgin Islands, Brit', 'VG', '+1284', '', '', ''),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', '', '', ''),
(238, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF'),
(239, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER'),
(240, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW'),
(241, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `cproduct_details`
--

CREATE TABLE `cproduct_details` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctime_configuration`
--

CREATE TABLE `ctime_configuration` (
  `id` int(11) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `saturday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sunday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wednesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thursday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ctime_configuration`
--

INSERT INTO `ctime_configuration` (`id`, `class_id`, `saturday`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
(7, 8, '0-18', '4-8', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_supported` int(11) NOT NULL DEFAULT 0,
  `stripe_supported` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `type`, `description`) VALUES
(1, 'banner_title', 'Dallas Armenian Business Ditectory'),
(2, 'banner_sub_title', 'Subtitle Of Atlas Directory Listing'),
(3, 'about_us', '<p><strong>About us</strong></p>\r\n'),
(4, 'terms_and_condition', '<p>﻿<strong>Terms and conditions</strong></p>\r\n'),
(5, 'privacy_policy', '<p><strong>Privacy Poilicy</strong></p>\r\n'),
(6, 'social_links', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\",\"google\":\"\",\"instagram\":\"\",\"pinterest\":\"\"}'),
(7, 'slogan', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
(8, 'faq', '<p><strong>Faq</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room_specification`
--

CREATE TABLE `hotel_room_specification` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `id` int(11) NOT NULL,
  `code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `photos` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `social` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_analytics_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `listing_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_meta_tags` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`id`, `code`, `name`, `description`, `categories`, `amenities`, `photos`, `video_url`, `video_provider`, `tags`, `address`, `email`, `phone`, `website`, `social`, `user_id`, `latitude`, `longitude`, `google_analytics_id`, `country_id`, `city_id`, `status`, `is_featured`, `listing_type`, `listing_thumbnail`, `listing_cover`, `seo_meta_tags`, `date_added`, `date_modified`) VALUES
(1, 'bf533aad82a7fb6e6eb088d0b079dd5b', 'Le local_barbershop', 'We believe in beauty with a conscience. We have created a shop that offers the highest quality beauty services in a setting that is healthier for the environment, our guests and our staff. It is our goal to exceed your expectations. Come experience a family atmosphere where you come as guests and leave as friends. Our staff is highly trained with diversity in all aspects of Hair, Waxing, and Massage.', '[\"23\",\"26\"]', '[\"5\",\"7\",\"11\"]', '[\"1ea99c215c07be57fb0af87867040077.jpg\",\"038defb49c10b93c7c2d4190252fa6bb.jpg\",\"25c544a878a33e2e12e0edd177e20020.jpg\"]', 'https://vimeo.com/181714626', 'vimeo', '', 'Nice, France', 'yourbusiness@example.com', '+48929485960', ' http://yourcompany.com', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, '43.702070', '7.272992', '', 73, NULL, 'active', 1, 'beauty', '5ef43e911ce4a706ed1c2aba2880aef7.jpg', '064a1d7591aec7fdb11547383857e138.jpg', '', '1587751200', NULL),
(2, '5cf86c8cc502141626f4ac470d7cb824', 'The Beauty Shop', 'The Beauty Shop was created on October 2, 2011 by Gaëlle. The concept is simple, as indicated by its slogan &quot;Esthetics and tasteful music&quot;.\r\n\r\nIt is a beauty salon where we find all the classic services, but in a totally different atmosphere. Here we are pampered, we talk, we get acquainted by listening to good music, mainly rock&#039;n&#039;roll and all this in a frame straight out of the 50s! Why? Because Gaëlle likes it and wants to share it with her clients! She will relax, take care of your body, your hands, your feet, your face and comfort you with your heartaches! Joana accompanies him in this beautiful adventure! ', '[\"23\",\"28\",\"26\",\"24\"]', '[\"1\",\"3\",\"5\",\"6\",\"7\",\"8\",\"11\"]', '[\"20a6e12faf9cf8fa3a380ae83716a239.jpg\",\"67e99d2c84aad1965113ea3130069bd9.jpg\",\"c6cadd667363a3af80cb6962e64e4636.jpg\"]', 'https://vimeo.com/32195486', 'vimeo', '', 'Lyon, France', 'yourbusiness@example.com', '+48929485960', 'http://yourcompany.com', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', 1, '45.773751', '4.856175', '', 73, NULL, 'active', 1, 'beauty', 'fd45eb065edf52ec94f8aef20ce5e0eb.jpg', '42b913704f8b2d2de8d1118b5f2941f2.jpg', '', '1587751200', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `package_type` int(11) DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `validity` int(11) NOT NULL DEFAULT 0 COMMENT 'validity should be in days',
  `number_of_listings` int(11) DEFAULT NULL,
  `ability_to_add_video` int(11) NOT NULL DEFAULT 0,
  `ability_to_add_contact_form` int(11) NOT NULL DEFAULT 0,
  `number_of_photos` int(11) NOT NULL DEFAULT 0,
  `number_of_tags` int(11) NOT NULL DEFAULT 0,
  `number_of_categories` int(11) NOT NULL DEFAULT 0,
  `is_recommended` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_purchased_history`
--

CREATE TABLE `package_purchased_history` (
  `id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` int(11) DEFAULT NULL,
  `amount_paid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_date` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reported_listing`
--

CREATE TABLE `reported_listing` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL DEFAULT 0,
  `reporter_id` int(11) NOT NULL DEFAULT 0,
  `report` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_added` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `review_comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `review_rating` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_wise_quality`
--

CREATE TABLE `review_wise_quality` (
  `id` int(11) NOT NULL,
  `rating_from` float DEFAULT NULL,
  `rating_to` float DEFAULT NULL,
  `quality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review_wise_quality`
--

INSERT INTO `review_wise_quality` (`id`, `rating_from`, `rating_to`, `quality`) VALUES
(1, 1, 1.5, 'Bad!!'),
(2, 1.6, 2.8, 'Not Bad'),
(3, 2.9, 3.4, 'So So'),
(4, 3.5, 4.5, 'Good'),
(5, 4.6, 5, 'Awesome');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`) VALUES
(1, 'website_title', 'atlas'),
(2, 'system_title', 'ATLAS Directory Listing CMS'),
(4, 'system_email', 'company@example.com'),
(5, 'address', 'New York'),
(6, 'phone', '1234567890'),
(7, 'vat_percentage', ''),
(8, 'country_id', '5'),
(9, 'text_align', ''),
(10, 'currency_position', 'left'),
(11, 'language', 'english'),
(12, 'purchase_code', 'your-purchase-code'),
(13, 'timezone', 'Asia/Dhaka'),
(14, 'paypal', '[{\"active\":\"0\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"1234\"}]'),
(15, 'stripe', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(16, 'recaptcha_site_key', '6LfV-p4UAAAAANQN9JwL1vDTH7D1FFEpqOkCr3HU'),
(17, 'recapthca_secret_key', '6LfV-p4UAAAAALgG78gd9FeeNoFr4i2n4km86lyc'),
(18, 'system_currency', 'USD'),
(19, 'paypal_currency', 'USD'),
(20, 'stripe_currency', 'USD'),
(21, 'youtube_api_key', ''),
(22, 'vimeo_api_key', ''),
(23, 'protocol', 'smtp'),
(24, 'smtp_host', 'ssl://smtp.googlemail.com'),
(25, 'smtp_port', '465'),
(26, 'smtp_user', ''),
(27, 'smtp_pass', ''),
(28, 'social_links', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}'),
(29, 'about', ''),
(30, 'term_and_condition', ''),
(31, 'privacy_policy', ''),
(32, 'faq', ''),
(35, 'version', '1.4');

-- --------------------------------------------------------

--
-- Table structure for table `time_configuration`
--

CREATE TABLE `time_configuration` (
  `id` int(11) UNSIGNED NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `saturday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sunday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wednesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thursday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time_configuration`
--

INSERT INTO `time_configuration` (`id`, `listing_id`, `saturday`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
(1, 1, 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed'),
(2, 2, 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed'),
(3, 3, 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed'),
(4, 3, 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed'),
(5, 4, 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed'),
(6, 5, 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed', 'closed-closed');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `social` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `wishlists` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `address`, `phone`, `website`, `social`, `about`, `password`, `role_id`, `wishlists`, `verification_code`, `is_verified`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '', '', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, '[]', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beauty_service`
--
ALTER TABLE `beauty_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cbeauty_service`
--
ALTER TABLE `cbeauty_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cfood_menu`
--
ALTER TABLE `cfood_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chotel_room_specification`
--
ALTER TABLE `chotel_room_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimed_listing`
--
ALTER TABLE `claimed_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classifieds`
--
ALTER TABLE `classifieds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `cproduct_details`
--
ALTER TABLE `cproduct_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ctime_configuration`
--
ALTER TABLE `ctime_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_room_specification`
--
ALTER TABLE `hotel_room_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_purchased_history`
--
ALTER TABLE `package_purchased_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reported_listing`
--
ALTER TABLE `reported_listing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `review_wise_quality`
--
ALTER TABLE `review_wise_quality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_configuration`
--
ALTER TABLE `time_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `beauty_service`
--
ALTER TABLE `beauty_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cbeauty_service`
--
ALTER TABLE `cbeauty_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cfood_menu`
--
ALTER TABLE `cfood_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chotel_room_specification`
--
ALTER TABLE `chotel_room_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `claimed_listing`
--
ALTER TABLE `claimed_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classifieds`
--
ALTER TABLE `classifieds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `cproduct_details`
--
ALTER TABLE `cproduct_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ctime_configuration`
--
ALTER TABLE `ctime_configuration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hotel_room_specification`
--
ALTER TABLE `hotel_room_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_purchased_history`
--
ALTER TABLE `package_purchased_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reported_listing`
--
ALTER TABLE `reported_listing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_wise_quality`
--
ALTER TABLE `review_wise_quality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `time_configuration`
--
ALTER TABLE `time_configuration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
