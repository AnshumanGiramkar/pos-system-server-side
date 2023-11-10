-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2023 at 02:46 PM
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
-- Database: `pos-system-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `is_ban` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not_ban,1=ban',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `is_ban`, `created_at`) VALUES
(1, 'Anshuman G', 'anshugiramkar2003@gmail.com', '$2y$10$qbldPclZAc1oq5X6/TtRIeFGJjNlQbzwMar0I9TrOim/yJUDsDThW', '8788226886', 0, '2023-10-06 19:05:33'),
(2, 'Prathamesh Gongle', 'prathameshgongle@gmail.com', 'rhythmicchaos@2k', '9763258303', 0, '2023-10-06 19:09:14'),
(4, 'Admin', 'admin@gmail.com', 'admin123', '8788226886', 0, '2023-10-07 17:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=visible, 1=hidden',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`) VALUES
(1, 'Devices', 'Dish Washers', 0),
(2, 'Medicine', 'Section for Medicines.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=visible, 1=hidden',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `status`, `created_at`) VALUES
(1, 'Maya Abhimanyu Giramkar', 'magiramkar75@gmail.com', '9850084101', 0, '2023-10-08 20:01:22'),
(3, 'Abhimanyu Giramkar', 'agiramkar73@gmail.com', '9881745395', 0, '2023-10-10 20:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=visible, 1=hidden',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `quantity`, `image`, `status`, `created_at`) VALUES
(1, 1, 'iPhone 15 Pro Max', 'The iPhone 15 Pro MX is Apple\'s flagship smartphone, featuring a stunning design with a 6.7-inch Super Retina XDR Pro display, a powerful A16 Bionic chip, and an advanced camera system with a 108-megapixel primary lens. It supports 5G connectivity, offers fast and secure Face ID authentication, and boasts excellent battery life with various charging options. Running on the latest iOS, it ensures a seamless user experience. With storage options ranging from 128GB to 1TB, the iPhone 15 Pro MX caters to tech enthusiasts and professionals seeking top-tier performance and cutting-edge features in a sleek and elegant package.', 90000, 30, 'assets/uploads/products/1696792726.jpg', 0, '2023-10-08 03:09:36'),
(3, 1, 'Redmi Note 12 Pro', 'The Redmi Note 12 Pro, a stellar addition to Xiaomi\'s smartphone lineup, offers an impressive blend of performance, style, and affordability. With a striking design, it boasts a sleek and modern appearance. The device features a vibrant and large display, ensuring an immersive viewing experience for multimedia and gaming enthusiasts.\r\n\r\nUnder the hood, the Redmi Note 12 Pro is powered by a robust processor, ensuring snappy performance for multitasking and demanding applications. Its camera system is another highlight, capturing stunning photos and videos in various lighting conditions. Long-lasting battery life and fast charging capabilities ensure you stay connected throughout the day.\r\n\r\nRunning on Xiaomi\'s MIUI, the Redmi Note 12 Pro provides a user-friendly and customizable experience. With its competitive pricing, this smartphone delivers exceptional value for budget-conscious consumers seeking a feature-packed device.', 19499, 25, 'assets/uploads/products/1696790586.png', 0, '2023-10-09 00:13:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
