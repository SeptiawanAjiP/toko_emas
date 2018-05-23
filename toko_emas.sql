-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 03:13 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_emas`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(50) NOT NULL,
  `password` varchar(70) DEFAULT NULL,
  `level` int(2) NOT NULL,
  `activation_id` varchar(64) DEFAULT NULL,
  `remember_token` varchar(200) DEFAULT NULL,
  `recover_id` varchar(64) DEFAULT NULL,
  `recover_key` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `password`, `level`, `activation_id`, `remember_token`, `recover_id`, `recover_key`) VALUES
('1111@1.com', '$2y$10$peDES6RupCHMfXXT/a3K1u0q./6BobH8N9UGj0g/4axpUEw1RANha', 98, NULL, NULL, NULL, NULL),
('14.8261@stis.ac.id', '$2y$10$xhMgm0YjfQf/Ut.Tzhf0HOqowsP9e51fFElhGQBFDWnt9wlnjXB.6', 98, NULL, NULL, NULL, NULL),
('2313123@ad.com', '$2y$10$V38Xi2bQuQZXH/QAfIL4L.VS/b5eAlaZtkuo4SHd4SlQzjZ.DZYwS', 98, NULL, NULL, NULL, NULL),
('afdahkjf@gmai.com', NULL, 98, '200c425978f7270cbee01cdd759032de738ae78975bbe46c431c5d4b437b3b30', NULL, NULL, NULL),
('cashier.emasbahagia@gmail.com', '$2y$10$VS8bCqTxGHcl9.7mBuS/XeDBdtUnmsm4d.g/1X.dJ36i4rLl0o2H.', 2, NULL, NULL, NULL, NULL),
('ddd@smadfa.com', NULL, 98, 'e96cc0f6f671553fe96fef1666723f695dae9be3b29153bc0b1f5b68d1ae67bf', NULL, NULL, NULL),
('goodgame.is.me@gmail.com', '$2y$10$balZOQcYXrQWB05AGTAJceEYDqVhFuCL0SGzo5VGaO25vQA0FmwHa', 2, NULL, NULL, NULL, NULL),
('manager.emasbahagia@gmail.com', '$2y$10$qwixEEwWZjnlrK0rfClogun8R.78wRIQOpPhymJevaj8TTVWUI7fy', 98, NULL, NULL, NULL, NULL),
('owner.emasbahagia@gmail.com', '$2y$10$0tJ4wogYvFodJYFiK9ZFCOQUgOWQf/4bAI3Dhm2vyY1/yKCl0Hnn2', 99, NULL, NULL, '39a4f04e07e4cc1da3e6d79ce0ec32baa46989e40a7eb1ebf16f13a2ae84ef11', 'M7OGK'),
('sad@mfasd.com', NULL, 98, '424436d2c4bf9bdaec1e325297be6ade1c2d8cae4e78069b5788e6810eed3c8d', NULL, NULL, NULL),
('SDadjjalfa@gmail.com', NULL, 98, 'b55551f802ffe4742e99430c22643693ef988c3bbfb29ca143c9be3e98f47abe', NULL, NULL, NULL),
('spg.emasbahagia@gmail.com', '$2y$10$qwixEEwWZjnlrK0rfClogun8R.78wRIQOpPhymJevaj8TTVWUI7fy', 1, NULL, NULL, NULL, NULL);

--
-- Triggers `account`
--
DELIMITER $$
CREATE TRIGGER `after_insert_account_to_shop` AFTER INSERT ON `account` FOR EACH ROW BEGIN

	IF NEW.level = 99 THEN
   INSERT INTO shop
   (owner)
   VALUES
   ( NEW.username
     );
     END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(2) NOT NULL,
  `description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `description`) VALUES
(1, 'Sales Promotion'),
(2, 'Kasir'),
(98, 'Manajer'),
(99, 'Pemilik');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id` int(5) NOT NULL,
  `total` double DEFAULT NULL,
  `total_trade_in` double DEFAULT NULL,
  `total_sale` double DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `shop_id` varchar(5) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id`, `total`, `total_trade_in`, `total_sale`, `payment`, `shop_id`, `time`) VALUES
(22, 1112171, 233133, 879038, NULL, 'DS', '2017-09-14 23:35:49'),
(79, NULL, NULL, NULL, NULL, 'DS', '2017-09-15 00:05:19'),
(112, 9444, NULL, NULL, NULL, 'DS', '2017-09-15 00:07:14'),
(222, 186, 0, 186, NULL, 'DS', '2017-09-15 00:09:02'),
(332, NULL, NULL, NULL, NULL, 'DS', '2017-09-16 01:21:25'),
(1223, NULL, NULL, NULL, NULL, 'DS', '2017-09-15 00:04:17'),
(7989, NULL, NULL, NULL, NULL, 'DS', '2017-09-15 00:05:55'),
(12345, 25030000, 0, 25030000, NULL, 'DS', '2017-09-18 08:52:39'),
(12346, NULL, NULL, NULL, NULL, 'DS', '2017-09-18 08:52:55'),
(12348, 120015000, NULL, NULL, NULL, 'DS', '2017-09-18 08:58:03'),
(23353, 62525000, 0, 62525000, NULL, 'DS', '2017-09-15 06:19:31'),
(44654, NULL, NULL, NULL, NULL, 'DS', '2017-09-15 06:19:38'),
(98765, 459000, NULL, NULL, NULL, 'DS', '2018-02-16 06:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` enum('F','M') NOT NULL,
  `phone` varchar(14) NOT NULL,
  `profile_image` varchar(250) NOT NULL DEFAULT 'res/images/default_user.png',
  `address` varchar(250) NOT NULL,
  `username` varchar(50) NOT NULL,
  `shop_id` varchar(5) NOT NULL,
  `first_login` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `sex`, `phone`, `profile_image`, `address`, `username`, `shop_id`, `first_login`) VALUES
(1, 'Manager Baru', 'M', '0809899991', 'res/images/profile_image/d587383f40b92b1a45cbbde467df9f2bd6a2abc45b10da74837bb675f2439787.jpg', 'Alamat manager', 'manager.emasbahagia@gmail.com', 'DS', '0'),
(2, 'Dummy Chasier', 'F', '081247899776', 'res/images/default_user.png', 'Jl Kebon Sayur', 'cashier.emasbahagia@gmail.com', 'DS', '1'),
(3, 'Dummy SPG', 'F', '081247899776', 'res/images/default_user.png', 'Jalan Kebon Mangga', 'spg.emasbahagia@gmail.com', 'DS', '1'),
(5, 'afaf', 'M', '2329312932', 'res/images/default_user.png', 'asfa', 'owner.emasbahagia@gmail.com', 'DS', '0'),
(32, 'Muhammad Luqman', 'M', '2830429347234', 'res/images/profile_image/a38f889206bf6e4cc11ac0ffd4763813e540491269a1dc592e4c60d5c1d16276.jpg', 'asdfadfafasdf', 'goodgame.is.me@gmail.com', 'DS', '0'),
(37, '', 'F', '', 'res/images/default_user.png', '', '1111@1.com', 'DS', '1'),
(38, '', 'F', '', 'res/images/default_user.png', '', '2313123@ad.com', 'DS', '1'),
(39, '', 'F', '', 'res/images/default_user.png', '', 'afdahkjf@gmai.com', 'DS', '1'),
(40, '', 'F', '', 'res/images/default_user.png', '', 'sad@mfasd.com', 'DS', '1'),
(41, '', 'F', '', 'res/images/default_user.png', '', 'SDadjjalfa@gmail.com', 'DS', '1'),
(42, '', 'F', '', 'res/images/default_user.png', '', '14.8261@stis.ac.id', 'DS', '1'),
(43, '', 'F', '', 'res/images/default_user.png', '', 'ddd@smadfa.com', 'DS', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(23) NOT NULL,
  `weight` double NOT NULL,
  `pcs_in_set` int(2) DEFAULT NULL,
  `amount` int(8) NOT NULL,
  `product_category_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `weight`, `pcs_in_set`, `amount`, `product_category_id`) VALUES
('DS-A-100', 100, NULL, 70, 'DS-A'),
('DS-A-150', 150, NULL, 73, 'DS-A'),
('DS-A-200', 200, NULL, 74, 'DS-A'),
('DS-A-250', 250, NULL, 0, 'DS-A'),
('DS-A-300', 300, NULL, 1, 'DS-A'),
('DS-A-34', 34, NULL, 4, 'DS-A'),
('DS-A-350', 350, NULL, 5, 'DS-A'),
('DS-A-400', 400, NULL, 5, 'DS-A'),
('DS-A-450', 450, NULL, 5, 'DS-A'),
('DS-A-991', 991, NULL, 69, 'DS-A'),
('DS-BR-222', 222, NULL, 32, 'DS-BR'),
('DS-BR-3', 3, NULL, 4, 'DS-BR'),
('DS-C-100', 100, NULL, 76, 'DS-C'),
('DS-C-150', 150, NULL, 77, 'DS-C'),
('DS-C-200', 200, NULL, 1, 'DS-C'),
('DS-C-250', 250, NULL, 5, 'DS-C'),
('DS-C-300', 300, NULL, 5, 'DS-C'),
('DS-C-350', 350, NULL, 5, 'DS-C'),
('DS-C-400', 400, NULL, 5, 'DS-C'),
('DS-C-450', 450, NULL, 5, 'DS-C'),
('DS-G-250', 250, NULL, 5, 'DS-G'),
('DS-G-300', 300, NULL, 5, 'DS-G'),
('DS-G-350', 350, NULL, 3, 'DS-G'),
('DS-G-400', 400, NULL, 5, 'DS-G'),
('DS-G-450', 450, NULL, 5, 'DS-G'),
('DS-GK-100', 100, NULL, 80, 'DS-GK'),
('DS-GK-150', 150, NULL, 81, 'DS-GK'),
('DS-GK-250', 250, NULL, 5, 'DS-GK'),
('DS-GK-300', 300, NULL, 6, 'DS-GK'),
('DS-GK-350', 350, NULL, 5, 'DS-GK'),
('DS-GK-400', 400, NULL, 5, 'DS-GK'),
('DS-GK-450', 450, NULL, 3, 'DS-GK'),
('DS-GK-991', 991, NULL, 68, 'DS-GK'),
('DS-GKS-200', 200, 4, 84, 'DS-GKS'),
('DS-GKS-250-2', 250, 2, 4, 'DS-GKS'),
('DS-GKS-300-3', 300, 3, 3, 'DS-GKS'),
('DS-GKS-350-5', 350, 5, 5, 'DS-GKS'),
('DS-GKS-400-4', 400, 4, 4, 'DS-GKS'),
('DS-GKS-450-2', 450, 2, 5, 'DS-GKS'),
('DS-GKS-991', 991, 2, 69, 'DS-GKS'),
('DS-GKS-999-11', 999, 11, 2, 'DS-GKS'),
('DS-GR-250', 250, NULL, 3, 'DS-GR'),
('DS-GR-300', 300, NULL, 4, 'DS-GR'),
('DS-GR-350', 350, NULL, 5, 'DS-GR'),
('DS-GR-400', 400, NULL, 5, 'DS-GR'),
('DS-GR-450', 450, NULL, 5, 'DS-GR'),
('DS-K-250', 250, NULL, 6, 'DS-K'),
('DS-K-300', 300, NULL, 8, 'DS-K'),
('DS-K-350', 350, NULL, 8, 'DS-K'),
('DS-K-400', 400, NULL, 8, 'DS-K'),
('DS-K-450', 450, NULL, 4, 'DS-K'),
('DS-L-250', 250, NULL, 4, 'DS-L'),
('DS-L-300', 300, NULL, 5, 'DS-L'),
('DS-L-350', 350, NULL, 5, 'DS-L'),
('DS-L-400', 400, NULL, 5, 'DS-L'),
('DS-L-450', 450, NULL, 6, 'DS-L');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` varchar(11) NOT NULL COMMENT 'category_id + shop_id',
  `category_id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `set_or_no` enum('0','1') NOT NULL DEFAULT '0',
  `price_per_gram` double DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `shop_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_id`, `name`, `set_or_no`, `price_per_gram`, `description`, `shop_id`) VALUES
('DS-A', 'A', 'Anting', '0', 888, NULL, 'DS'),
('DS-BR', 'BR', 'Kategori Baru', '0', 22, '2', 'DS'),
('DS-C', 'C', 'Cincin', '0', 777, NULL, 'DS'),
('DS-G', 'G', 'Giwang', '0', 666, NULL, 'DS'),
('DS-GK', 'GK', 'Gelang Keroncong', '0', 333, NULL, 'DS'),
('DS-GKS', 'GKS', 'Gelang Keroncong Set', '1', 444, NULL, 'DS'),
('DS-GR', 'GR', 'Gelang Rantai', '0', NULL, NULL, 'DS'),
('DS-K', 'K', 'Kalung', '0', 111, NULL, 'DS'),
('DS-L', 'L', 'Liontin', '0', 555, NULL, 'DS');

-- --------------------------------------------------------

--
-- Table structure for table `product_history`
--

CREATE TABLE `product_history` (
  `id` int(11) NOT NULL,
  `amount` int(8) NOT NULL,
  `date` date NOT NULL,
  `product_id` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT 'Toko PertamaKu',
  `owner` varchar(50) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `name`, `owner`, `address`, `city`, `phone`) VALUES
('DS', 'Dummy Shop', 'owner.emasbahagia@gmail.com', '', '', NULL),
('DS1', 'Dummy Shop', 'owner.emasbahagia@gmail.com', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` varchar(2) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
('b', 'Bon'),
('r', 'Return'),
('rp', 'Repair'),
('s', 'Sale'),
('t', 'Trade In'),
('x', 'preparation data');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_buy`
--

CREATE TABLE `transaction_buy` (
  `id` int(11) NOT NULL,
  `status` varchar(2) NOT NULL DEFAULT 'x',
  `pcs_in_set` int(4) DEFAULT NULL,
  `price_per_gram` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `nota_id` int(5) NOT NULL,
  `product_id` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_buy`
--

INSERT INTO `transaction_buy` (`id`, `status`, `pcs_in_set`, `price_per_gram`, `fee`, `subtotal`, `nota_id`, `product_id`) VALUES
(0, 's', NULL, 887, 21, 879038, 22, 'DS-A-991'),
(0, 's', NULL, 22, 120, 186, 222, 'DS-BR-3'),
(0, 's', NULL, 250000, 30000, 25030000, 12345, 'DS-A-100'),
(0, 'x', NULL, NULL, NULL, NULL, 12346, 'DS-A-150'),
(0, 's', NULL, 250000, 25000, 62525000, 23353, 'DS-GR-250'),
(0, 'x', NULL, NULL, NULL, NULL, 44654, 'DS-A-100'),
(1, 't', NULL, 666, 33, 233133, 22, 'DS-G-350'),
(1, 'x', NULL, NULL, NULL, NULL, 12346, 'DS-A-200');

--
-- Triggers `transaction_buy`
--
DELIMITER $$
CREATE TRIGGER `after_insert_transaction_buy_to_product` AFTER INSERT ON `transaction_buy` FOR EACH ROW BEGIN
IF NEW.status = 's' OR NEW.status = 't' THEN
UPDATE product SET amount = amount-1 WHERE product.id = NEW.product_id;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_sell`
--

CREATE TABLE `transaction_sell` (
  `id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `status` varchar(2) NOT NULL DEFAULT 'r',
  `pcs_in_set` int(4) DEFAULT NULL,
  `amount` int(8) NOT NULL,
  `price_per_gram` double NOT NULL,
  `fee` double NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `subtotal` double NOT NULL,
  `nota_id` int(5) NOT NULL,
  `product_category_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `lastname`, `firstname`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$V4T0lubS6Vy2afUS3zMPkOOBWfMlN03.KEoi/JwRzBu.KO/m2CtWa', 'Mr', 'admin', 'II7MqQelp9q6Wczy7iPAtSA6TKmxOkcODUhqMf832ziJpVLXqYl0GQkwnsWn', NULL, '2017-03-25 18:43:48', '2017-03-25 18:43:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id`,`shop_id`),
  ADD KEY `shop_id_2` (`shop_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id_2` (`product_category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`,`shop_id`),
  ADD KEY `shop_id_2` (`shop_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_history`
--
ALTER TABLE `product_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_buy`
--
ALTER TABLE `transaction_buy`
  ADD PRIMARY KEY (`id`,`nota_id`),
  ADD KEY `status` (`status`(1)),
  ADD KEY `status_2` (`status`),
  ADD KEY `nota_id` (`nota_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transaction_sell`
--
ALTER TABLE `transaction_sell`
  ADD PRIMARY KEY (`id`,`nota_id`),
  ADD KEY `status` (`status`(1)),
  ADD KEY `status_2` (`status`),
  ADD KEY `nota_id` (`nota_id`),
  ADD KEY `category_id` (`product_category_id`);

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
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product_history`
--
ALTER TABLE `product_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account_level` FOREIGN KEY (`level`) REFERENCES `level` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `fk_nota_shop` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `fk_person_account` FOREIGN KEY (`username`) REFERENCES `account` (`username`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_person_shop` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_product_category` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `fk_product_category_shop` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `fk_shop_owner` FOREIGN KEY (`owner`) REFERENCES `account` (`username`) ON UPDATE CASCADE;

--
-- Constraints for table `transaction_buy`
--
ALTER TABLE `transaction_buy`
  ADD CONSTRAINT `fk_transaction_buy_nota` FOREIGN KEY (`nota_id`) REFERENCES `nota` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaction_buy_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `fk_transaction_buy_status` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `transaction_sell`
--
ALTER TABLE `transaction_sell`
  ADD CONSTRAINT `fk_transaction_sell_nota` FOREIGN KEY (`nota_id`) REFERENCES `nota` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaction_sell_product_category` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaction_sell_status` FOREIGN KEY (`status`) REFERENCES `status` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
