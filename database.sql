-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 11:20 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `u_id` varchar(200) DEFAULT NULL,
  `p_id` varchar(200) DEFAULT NULL,
  `qty` varchar(200) DEFAULT '1',
  `size` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `discount` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `max_use` int(200) DEFAULT NULL,
  `used_yet` int(200) DEFAULT NULL,
  `expired` varchar(200) DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `des` text,
  `cond` varchar(200) DEFAULT NULL,
  `max_cart` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `discount`, `type`, `max_use`, `used_yet`, `expired`, `date`, `des`, `cond`, `max_cart`) VALUES
(1, 'LUCK', '20', 'PERCENT', 50, 10, '0', '2024-02-05 16:02:26', 'Lucky', '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `ban` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`id`, `email`, `name`, `lname`, `company`, `phone`, `state`, `city`, `address1`, `address2`, `pincode`, `landmark`, `ban`) VALUES
(1, 'onkarjha2003@gmail.com', 'Onkar', 'Jha', '', '9876543212', 'West Bengal', ' Durgapur ', '--', '--', '12345', '--', '0');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `p_id`, `u_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `stock` varchar(200) DEFAULT '1',
  `num` varchar(200) DEFAULT '0',
  `price` varchar(200) DEFAULT NULL,
  `cat` varchar(200) DEFAULT NULL,
  `subcat` varchar(200) DEFAULT NULL,
  `shop` varchar(200) DEFAULT NULL,
  `img1` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT '0',
  `star` varchar(200) DEFAULT '0',
  `discount` varchar(200) DEFAULT NULL,
  `shop_id` varchar(200) DEFAULT NULL,
  `des_short` text,
  `img2` varchar(200) DEFAULT NULL,
  `img3` varchar(200) DEFAULT NULL,
  `img4` varchar(200) DEFAULT NULL,
  `max_price` varchar(200) DEFAULT NULL,
  `disable` varchar(200) DEFAULT '0',
  `size` varchar(200) DEFAULT NULL,
  `specs` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `stock`, `num`, `price`, `cat`, `subcat`, `shop`, `img1`, `reviews`, `star`, `discount`, `shop_id`, `des_short`, `img2`, `img3`, `img4`, `max_price`, `disable`, `size`, `specs`) VALUES
(2, ' Laptop', '1', '0', '572', '0', '1', 'Electron', '1705564194p1-768x715.jpg', '0', '0', '12', '1', 'Laptop', '1705564194p1-768x715.jpg', '1705564194p1-768x715.jpg', '1705564194p1-768x715.jpg', '650', '0', NULL, 'Ram:3Gb,Wifi:2.1,Country:India'),
(3, 'Bluetooth Speaker', '1', '88', '1425', '7', '1', 'Electron', '1705564364p02.png', '0', '0', '5', '1', 'Bluetooth Speaker', '1705564364p02.png', '1705564364p02.png', '1705564364p02.png', '1500', '0', NULL, NULL),
(4, 'Laptop', '1', '93', '1548', '2', '1', 'Electron', '1705564477p2.jpg', '0', '0', '14', '1', 'Laptop', '1705564477p2.jpg', '1705564477p2.jpg', '1705564477p2.jpg', '1800', '0', NULL, NULL),
(5, 'Mobiles', '1', '100', '8199', '2', '1', 'Electron', '1705564569p03.png', '0', '0', '18', '1', 'Mobiles', '1705564569p03.png', '1705564569p03.png', '1705564569p03.png', '9999', '0', '', 'Country:India'),
(6, 'Led TV ', '1', '95', '600', '6', '1', 'Electron', '1705564706p3.jpg', '0', '0', '0', '1', 'Led TV ', '1705564706p3.jpg', '1705564706p3.jpg', '1705564706p3.jpg', '600', '0', NULL, NULL),
(7, 'Smart Watches', '1', '86', '446', '7', '1', 'Electron', '1705632700p04.png', '0', '0', '2', '1', 'HD voice', '1705632700p04.png', '1705632700p04.png', '1705632700p04.png', '456', '0', NULL, NULL),
(8, 'Led TV ', '1', '100', '150', '5', '1', 'Electron', '1705632748p4.jpg', '0', '0', '0', '1', 'Led TV ', '1705632748p4.jpg', '1705632748p4.jpg', '1705632748p4.jpg', '150', '0', NULL, NULL),
(9, 'Laptop', '1', '100', '1800', '0', '1', 'Electron', '1705632791p05.png', '0', '0', '0', '1', 'laptop', '1705632791p05.png', '1705632791p05.png', '1705632791p05.png', '1800', '0', NULL, NULL),
(10, 'Headphone ', '1', '100', '230', '4', '1', 'Electron', '1705632833p5.jpg', '0', '0', '0', '1', 'Headphone ', '1705632833p5.jpg', '1705632833p5.jpg', '1705632833p5.jpg', '230', '0', NULL, NULL),
(11, 'Video Game', '1', '100', '1599', '3', '1', 'Electron', '1705632880p06-768x715.png', '0', '0', '0', '1', 'Video Game', '1705632880p06-768x715.png', '1705632880p06-768x715.png', '1705632880p06-768x715.png', '1599', '0', NULL, NULL),
(12, 'Alexa', '1', '100', '8272', '4', '1', 'Electron', '1705633350p10.jpg', '0', '0', '0', '1', 'Alexa', '1705633350p10.jpg', '1705633350p10.jpg', '1705633350p10.jpg', '8272', '0', '', NULL),
(13, 'Camera', '1', '100', '280', '4', '1', 'Electron', '1705724683p8-768x715.jpg', '0', '0', '1', '1', 'Camera', '1705724683p8-768x715.jpg', '1705724683p8-768x715.jpg', '1705724683p8-768x715.jpg', '283', '0', 'XL,ML,CL,BL,FULL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `shop_id` varchar(200) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` varchar(200) DEFAULT '0',
  `order_id` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'ordered',
  `order_time` varchar(200) DEFAULT NULL,
  `pickup_time` varchar(200) DEFAULT NULL,
  `del_time` varchar(200) DEFAULT NULL,
  `t_id` varchar(200) DEFAULT NULL,
  `coupon` varchar(200) DEFAULT NULL,
  `discount` varchar(200) DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `u_id`, `p_id`, `shop_id`, `qty`, `price`, `order_id`, `status`, `order_time`, `pickup_time`, `del_time`, `t_id`, `coupon`, `discount`, `size`) VALUES
(1, 1, 3, '1', 1, '1425', 'ID1707148817', 'delivered', '05-02-2024', '05-02-2024', '05-02-2024', '123', '', '', '-'),
(2, 1, 4, '1', 1, '1548', 'ID1707148817', 'delivered', '05-02-2024', '05-02-2024', '05-02-2024', '123', '', '', '-'),
(3, 2, 4, '1', 1, '1548', 'ID1707148946', 'delivered', '05-02-2024', '05-02-2024', '05-02-2024', '432', 'LUCK', '594.6', '-'),
(4, 2, 3, '1', 1, '1425', 'ID1707148946', 'delivered', '05-02-2024', '05-02-2024', '05-02-2024', '432', 'LUCK', '594.6', '-');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `u_id` varchar(200) DEFAULT NULL,
  `review` varchar(2000) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `star` varchar(200) DEFAULT NULL,
  `short_rev` varchar(50) DEFAULT NULL,
  `p_id` varchar(200) DEFAULT NULL,
  `abuse` varchar(200) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` text,
  `password` varchar(200) DEFAULT NULL,
  `pending` varchar(200) DEFAULT '1',
  `lat` varchar(200) DEFAULT NULL,
  `lon` varchar(200) DEFAULT NULL,
  `ban` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `name`, `email`, `phone`, `address`, `password`, `pending`, `lat`, `lon`, `ban`) VALUES
(1, 'Electron', 'shop@gmail.com', '9876543210', 'India', '123', '0', '1', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `u_id` varchar(200) DEFAULT NULL,
  `p_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cust`
--
ALTER TABLE `cust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
