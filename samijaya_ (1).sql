-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 04:44 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samijaya_`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(8) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(64) NOT NULL,
  `shop_id` int(8) NOT NULL,
  `set_or_no` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `shop_id`, `set_or_no`, `created_at`, `deleted_at`) VALUES
(1, 'Cincin', 'samijaya - cincin', 1, 0, '2018-05-19 14:31:49', NULL),
(2, 'Anting', 'samijaya - anting', 1, 0, '2018-05-19 14:32:43', NULL),
(3, 'Giwang', 'samijaya - giwang', 1, 0, '2018-05-19 14:36:05', NULL),
(4, 'Gelang Keroncong', 'samijaya - gelang keroncong', 1, 0, '2018-05-19 14:36:05', NULL),
(5, 'Gelang Keroncong Set', 'samijaya - gelang keroncong set', 1, 1, '2018-05-19 14:36:06', NULL),
(6, 'Gelang Rantai', 'samijaya - gelang rantai', 1, 0, '2018-05-19 14:36:06', NULL),
(7, 'Kalung', 'samijaya - kalung', 1, 0, '2018-05-19 14:36:06', NULL),
(8, 'Liontin', 'samijaya - liontin', 1, 0, '2018-05-19 14:36:06', NULL),
(9, 'Cincin Kawin', 'samijaya - cincin kawin', 1, 0, '2018-05-20 02:20:17', NULL),
(10, 'Paladium', 'samijaya - paladium', 1, 0, '2018-05-20 02:35:03', NULL),
(11, 'Giwang', 'samijaya - Giwang', 1, 1, '2018-05-20 02:55:38', '2018-05-20 03:45:27'),
(12, 'Cincin', 'samijaya - Cincin', 1, 0, '2018-05-20 03:17:30', '2018-05-20 03:45:11'),
(13, 'Cincin', 'samijaya - Cincin', 1, 1, '2018-05-20 03:18:25', '2018-05-20 03:44:25'),
(14, 'Anu', 'samijaya - Anu', 1, 1, '2018-05-20 03:57:36', NULL),
(15, '50', 'samijaya - 50', 1, 0, '2018-05-20 05:41:12', '2018-05-20 05:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(8) NOT NULL,
  `percent` float NOT NULL,
  `shop_id` int(8) NOT NULL,
  `description` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `jewelry_price_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `percent`, `shop_id`, `description`, `created_at`, `deleted_at`, `jewelry_price_id`) VALUES
(1, 42, 1, 'samijaya - 42', '2018-05-19 14:43:09', '2018-05-20 05:40:16', 1),
(2, 70, 1, 'samijaya - 70%', '2018-05-20 05:43:33', NULL, 1),
(3, 90, 1, 'samijaya - 90%', '2018-05-20 05:43:42', NULL, 1),
(4, 45, 1, 'samijaya - 45%', '2018-05-20 05:43:52', '2018-05-20 05:43:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `glider`
--

CREATE TABLE `glider` (
  `id` int(8) NOT NULL,
  `name` varchar(128) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jewelry_price`
--

CREATE TABLE `jewelry_price` (
  `id` int(8) NOT NULL,
  `type` varchar(32) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jewelry_price`
--

INSERT INTO `jewelry_price` (`id`, `type`, `price`, `created_at`, `deleted_at`) VALUES
(1, 'Gold', 500000, '2018-05-19 14:41:40', '0000-00-00 00:00:00'),
(2, 'Silver', 450000, '2018-05-19 14:41:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `level_user`
--

CREATE TABLE `level_user` (
  `id` int(8) NOT NULL,
  `name` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(8) NOT NULL,
  `name` varchar(128) NOT NULL,
  `category_id` int(8) NOT NULL,
  `content_id` int(8) NOT NULL,
  `shop_id` int(8) NOT NULL,
  `weight` int(8) NOT NULL,
  `description` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `content_id`, `shop_id`, `weight`, `description`, `created_at`, `deleted_at`) VALUES
(1, 'Anting - 4', 2, 1, 1, 4, '', '2018-05-19 14:49:33', NULL),
(2, 'Gelang Keroncong - 12', 4, 3, 1, 12, '', '2018-05-20 09:58:20', NULL),
(3, 'Gelang Rantai - 34', 6, 2, 1, 34, 'db', '2018-05-22 06:52:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(8) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `username`, `email`, `password`, `name`, `address`, `phone`, `created_at`, `deleted_at`) VALUES
(1, 'samijaya', 'samijaya@gmail.com', '$2y$10$7gjknT0BhEVlljZk.B6TAO0UkhcASt8LGgz5CU2nklp32u5AOQ7EO', 'Sami Jaya', 'Jl. Gatot Subroto depan Ruko Pasar Wage, Purwokerto', '0281-6846850', '2018-05-19 03:42:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(8) NOT NULL,
  `name` varchar(64) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_bon`
--

CREATE TABLE `transaction_bon` (
  `id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `customer_id` int(8) NOT NULL,
  `total_product` int(8) NOT NULL,
  `price_before` int(16) NOT NULL,
  `tax` int(16) NOT NULL,
  `discount` int(16) NOT NULL,
  `price_after` int(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_buy`
--

CREATE TABLE `transaction_buy` (
  `id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `total_product` int(8) NOT NULL,
  `supplier_id` int(8) NOT NULL,
  `price_before` int(16) NOT NULL,
  `tax` int(16) NOT NULL,
  `discount` int(16) NOT NULL,
  `price_after` int(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_repair`
--

CREATE TABLE `transaction_repair` (
  `id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `glider_id` int(8) NOT NULL,
  `total_product` int(8) NOT NULL,
  `price_before` int(16) NOT NULL,
  `tax` int(16) NOT NULL,
  `discount` int(16) NOT NULL,
  `price_after` int(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_sell`
--

CREATE TABLE `transaction_sell` (
  `id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `total_product` int(8) NOT NULL,
  `customer_id` int(8) NOT NULL,
  `price_before` int(16) NOT NULL,
  `tax` int(16) NOT NULL,
  `discount` int(16) NOT NULL,
  `price_after` int(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_user_id` int(8) NOT NULL,
  `shop_id` int(8) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `level_user_id`, `shop_id`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$V4T0lubS6Vy2afUS3zMPkOOBWfMlN03.KEoi/JwRzBu.KO/m2CtWa', 'Mr', 0, 0, 'gJ6F5DuQZQQbRgVAHLx6FkfGWSY9ki8UK5le9NsGkp0kNMZhdmL2KF2rAMpD', NULL, '2017-03-25 18:43:48', '2017-03-25 18:43:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_category` (`shop_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_content` (`shop_id`),
  ADD KEY `jewelry_price_content` (`jewelry_price_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glider`
--
ALTER TABLE `glider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jewelry_price`
--
ALTER TABLE `jewelry_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_user`
--
ALTER TABLE `level_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product` (`category_id`),
  ADD KEY `content_product` (`content_id`),
  ADD KEY `shop_product` (`shop_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_bon`
--
ALTER TABLE `transaction_bon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_transaction_bon` (`customer_id`),
  ADD KEY `product_transaction_bon` (`product_id`);

--
-- Indexes for table `transaction_buy`
--
ALTER TABLE `transaction_buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_transaction_buy` (`supplier_id`),
  ADD KEY `product_transaction_buy` (`product_id`);

--
-- Indexes for table `transaction_repair`
--
ALTER TABLE `transaction_repair`
  ADD PRIMARY KEY (`id`),
  ADD KEY `glider_transaction_repair` (`glider_id`),
  ADD KEY `product_transaction_repair` (`product_id`);

--
-- Indexes for table `transaction_sell`
--
ALTER TABLE `transaction_sell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_transaction_id` (`product_id`),
  ADD KEY `customer_transaction_id` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `glider`
--
ALTER TABLE `glider`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jewelry_price`
--
ALTER TABLE `jewelry_price`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level_user`
--
ALTER TABLE `level_user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_bon`
--
ALTER TABLE `transaction_bon`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_buy`
--
ALTER TABLE `transaction_buy`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_repair`
--
ALTER TABLE `transaction_repair`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_sell`
--
ALTER TABLE `transaction_sell`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `shop_category` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `jewelry_price_content` FOREIGN KEY (`jewelry_price_id`) REFERENCES `jewelry_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shop_content` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `category_product` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `content_product` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shop_product` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_bon`
--
ALTER TABLE `transaction_bon`
  ADD CONSTRAINT `customer_transaction_bon` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_transaction_bon` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_buy`
--
ALTER TABLE `transaction_buy`
  ADD CONSTRAINT `product_transaction_buy` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplier_transaction_buy` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_repair`
--
ALTER TABLE `transaction_repair`
  ADD CONSTRAINT `glider_transaction_repair` FOREIGN KEY (`glider_id`) REFERENCES `glider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_transaction_repair` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction_sell`
--
ALTER TABLE `transaction_sell`
  ADD CONSTRAINT `customer_transaction_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_transaction_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
