-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 09:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hallyu_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`) VALUES
(5, 2, 5, 2500, 1, '2024-06-19 21:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(5, 'Albums', '', 1, '2024-06-19 20:40:23'),
(6, 'Lightsticks', '', 1, '2024-06-19 20:40:32'),
(7, 'Accessories', '', 1, '2024-06-19 20:42:22'),
(8, 'Apparel', '', 1, '2024-06-19 20:42:42'),
(9, 'Others', '', 1, '2024-06-19 20:48:48'),
(10, 'K-Drama', '', 1, '2024-06-21 23:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'Dexter', 'Pangilinan', 'Male', '123456789', 'd.pangilinan@gmail.com', '7c6a180b36896a0a8c02787eeafb0e4c', 'bato bato sa langit matamaan pangit', '2024-06-19 21:51:19'),
(3, 'sample', 'sample', 'Male', '12346798', 'sample1@gmail.com', '7c6a180b36896a0a8c02787eeafb0e4c', 'sample', '2024-06-20 13:54:18'),
(4, 'rdfghj', 'asda', 'Male', '44754', 'sample2@gmail.com', '6964f527f011df8756f87c3e8a76884f', 'asdasdasdasd', '2024-06-22 15:00:07'),
(5, 'zy', 'dela cruz', 'Male', '1234567', 'sample3@gmail.com', '0cef1fb10f60529028a71f58e54ed07b', 'qc', '2024-06-22 15:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(5, 5, 10, 2500, '2024-06-19 21:09:57', NULL),
(6, 6, 10, 2000, '2024-06-19 21:42:26', NULL),
(7, 7, 10, 200, '2024-06-22 00:18:44', NULL),
(8, 8, 10, 1500, '2024-06-22 00:19:19', NULL),
(9, 9, 3, 500, '2024-06-22 00:19:29', NULL),
(10, 10, 5, 500, '2024-06-22 00:19:42', NULL),
(11, 11, 3, 2500, '2024-06-22 00:20:05', NULL),
(12, 12, 3, 2000, '2024-06-22 00:20:29', NULL),
(13, 13, 3, 500, '2024-06-22 00:20:41', NULL),
(14, 14, 3, 1800, '2024-06-22 00:21:28', NULL),
(15, 15, 5, 200, '2024-06-22 00:21:51', NULL),
(16, 16, 7, 1000, '2024-06-22 00:22:07', NULL),
(17, 17, 3, 2500, '2024-06-22 00:22:18', NULL),
(18, 18, 3, 800, '2024-06-22 00:22:55', NULL),
(19, 19, 3, 250, '2024-06-22 00:23:15', NULL),
(20, 20, 3, 800, '2024-06-22 00:23:47', NULL),
(21, 21, 3, 200, '2024-06-22 00:23:56', NULL),
(22, 22, 3, 550, '2024-06-22 00:24:11', NULL),
(23, 23, 3, 3000, '2024-06-22 00:24:22', NULL),
(24, 24, 3, 800, '2024-06-22 00:24:34', NULL),
(25, 25, 10, 2500, '2024-06-22 00:24:49', NULL),
(26, 26, 3, 250, '2024-06-22 00:25:09', NULL),
(27, 28, 3, 2500, '2024-06-22 00:26:03', NULL),
(28, 27, 3, 600, '2024-06-22 00:26:22', NULL),
(29, 29, 3, 2500, '2024-06-22 00:26:33', NULL),
(30, 30, 10, 400, '2024-06-22 00:26:57', NULL),
(31, 32, 3, 1600, '2024-06-22 00:27:18', NULL),
(32, 31, 5, 800, '2024-06-22 00:27:39', NULL),
(33, 33, 6, 450, '2024-06-22 00:27:55', NULL),
(34, 34, 6, 2800, '2024-06-22 00:28:12', NULL),
(35, 35, 5, 350, '2024-06-22 00:28:51', NULL),
(36, 36, 2, 500, '2024-06-22 00:29:02', NULL),
(37, 37, 5, 3000, '2024-06-22 00:29:18', NULL),
(38, 38, 5, 800, '2024-06-22 00:29:34', NULL),
(39, 40, 9, 900, '2024-06-22 00:29:47', NULL),
(40, 39, 5, 3000, '2024-06-22 00:30:33', NULL),
(41, 41, 5, 250, '2024-06-22 00:45:02', NULL),
(42, 42, 9, 800, '2024-06-22 00:46:07', NULL),
(43, 43, 5, 700, '2024-06-22 00:46:25', NULL),
(44, 44, 6, 900, '2024-06-22 00:47:03', NULL),
(45, 45, 10, 1200, '2024-06-22 00:52:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(5, 1, 'bato bato sa langit matamaan pangit', 'cod', 2, 2000, 0, 0, '2024-06-19 23:20:11', NULL),
(6, 3, 'sample', 'cod', 2, 3250, 0, 0, '2024-06-22 01:22:39', NULL),
(7, 3, 'sample', 'cod', 2, 6850, 0, 0, '2024-06-22 14:27:29', NULL),
(8, 3, 'sample', 'cod', 2, 600, 0, 0, '2024-06-22 14:29:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(4, 5, 6, 1, 2000, 2000),
(5, 6, 26, 1, 250, 250),
(6, 6, 39, 1, 3000, 3000),
(7, 7, 19, 1, 250, 250),
(8, 7, 27, 1, 600, 600),
(9, 7, 8, 1, 1500, 1500),
(10, 7, 30, 1, 400, 400),
(11, 7, 38, 1, 800, 800),
(12, 7, 34, 1, 2800, 2800),
(13, 7, 13, 1, 500, 500),
(14, 8, 27, 1, 600, 600);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `author`, `description`, `status`, `date_created`) VALUES
(5, 5, 10, 'Twice: Season\\\'s Greeting \\\"The Moment Forever\\\"', '', '&lt;p&gt;Twice&lt;/p&gt;', 1, '2024-06-19 21:09:38'),
(6, 5, 10, 'Stayc: Season\\\'s Greetings 2023', '', '', 1, '2024-06-19 21:40:58'),
(7, 7, 12, 'Aespa Keyring', '', '', 1, '2024-06-21 23:48:42'),
(8, 5, 8, 'Ateez 10th Mini Album: Golden Hour', '', '', 1, '2024-06-21 23:49:13'),
(9, 8, 16, 'Blackpink Jennie You & Me: TShirt', '', '', 1, '2024-06-21 23:49:49'),
(10, 8, 18, 'BoyNextDoor: Ball Cap', '', '', 1, '2024-06-21 23:50:30'),
(11, 6, 19, 'BoyNextDoor: Lightstick', '', '', 1, '2024-06-21 23:51:03'),
(12, 10, 23, 'Business Proposal', '', '', 1, '2024-06-21 23:51:25'),
(13, 8, 16, 'Dreamcatcher: Dream Kiss TShirt', '', '', 1, '2024-06-21 23:51:53'),
(14, 6, 19, 'Evenne: Lightstick', '', '', 1, '2024-06-21 23:52:20'),
(15, 5, 9, 'Everglow 5th Single Album: Zombie', '', '&lt;p&gt;Complete inclusion exempt photocard&lt;/p&gt;', 1, '2024-06-21 23:53:59'),
(16, 10, 23, 'Extraordinary Attorney Woo Kit', '', '', 1, '2024-06-21 23:55:49'),
(17, 5, 8, 'GFriend 2nd Full Album: Time For Us', '', '', 1, '2024-06-21 23:56:42'),
(18, 9, 21, 'IVE Plushie', '', '', 1, '2024-06-21 23:57:14'),
(19, 5, 9, 'Kep1er 1st Full Album: Kep1going On', '', '', 1, '2024-06-21 23:58:09'),
(20, 5, 8, 'Kiss Of Life 1st Single Album: Midas Touch', '', '', 1, '2024-06-21 23:58:42'),
(21, 7, 14, 'Le Sserafim Bracelet', '', '', 1, '2024-06-21 23:59:09'),
(22, 8, 18, 'Le Sserafim Bucket Hat', '', '', 1, '2024-06-22 00:04:45'),
(23, 6, 19, 'Monsta X: Lightstick version 3', '', '', 1, '2024-06-22 00:05:15'),
(24, 8, 17, 'NCT 127: Hoodie Jacket', '', '', 1, '2024-06-22 00:08:07'),
(25, 6, 19, 'NCT Dream: Lightstick', '', '', 1, '2024-06-22 00:08:47'),
(26, 7, 12, 'New Jeans Keyring', '', '', 1, '2024-06-22 00:09:16'),
(27, 9, 22, 'New Jeans Supernatural Cross Bag version', '', '&lt;p&gt;&amp;nbsp;NJ X MURAKAMI&lt;br&gt;&lt;/p&gt;', 1, '2024-06-22 00:10:12'),
(28, 5, 8, 'New Jeans Supernatural Weverse version', '', '', 1, '2024-06-22 00:10:46'),
(29, 6, 19, 'Riize: Lightstick', '', '', 1, '2024-06-22 00:11:23'),
(30, 5, 9, 'Seventeen: 17 is Right Here', '', '', 1, '2024-06-22 00:11:58'),
(31, 5, 8, 'Stray Kids 3rd Full Album: S-Class', '', '', 1, '2024-06-22 00:12:26'),
(32, 6, 20, 'Stayc: Lightstick', '', '', 1, '2024-06-22 00:12:59'),
(33, 9, 21, 'Stray Kids Plushie', '', '', 1, '2024-06-22 00:13:51'),
(34, 6, 20, 'Twice: Candybong version 3', '', '', 1, '2024-06-22 00:14:16'),
(35, 5, 9, 'TWS 2nd Mini Album: Summer Beat!', '', '', 1, '2024-06-22 00:14:50'),
(36, 8, 18, 'TXT: Ball Cap', '', '', 1, '2024-06-22 00:15:13'),
(37, 6, 19, 'TXT: Lightstick version 3', '', '', 1, '2024-06-22 00:15:36'),
(38, 5, 8, 'Unis 1st Mini Album: We Unis', '', '', 1, '2024-06-22 00:16:57'),
(39, 6, 20, 'WJSN (Cosmic Girls): Lightstick version 2', '', '', 1, '2024-06-22 00:17:39'),
(40, 9, 21, 'Zerobaseone (ZB1) Plushie', '', '', 1, '2024-06-22 00:18:11'),
(41, 7, 15, 'Enhypen: Two Way Necklace', '', '', 1, '2024-06-22 00:44:30'),
(42, 7, 15, 'Fromis_9: Necklace', '', '', 1, '2024-06-22 00:45:28'),
(43, 7, 13, 'New Jeans: Acrylic Ring', '', '', 1, '2024-06-22 00:45:51'),
(44, 7, 13, 'P1Harmony: Ring', '', '', 1, '2024-06-22 00:46:49'),
(45, 5, 11, 'Viviz 3rd Mini Album: Versus Plave version', '', '', 1, '2024-06-22 00:52:10'),
(46, 5, 11, 'Taemin 4th Mini Album: Good & Great SMini version', '', '', 1, '2024-06-22 00:53:23'),
(47, 5, 11, 'Aespa 4th Mini Album: Drama SMini version', '', '', 1, '2024-06-22 00:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 3, 8500, '2021-07-16 11:18:12'),
(3, 5, 2000, '2024-06-19 23:20:11'),
(4, 6, 3250, '2024-06-22 01:22:39'),
(5, 7, 6850, '2024-06-22 14:27:29'),
(6, 8, 600, '2024-06-22 14:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(8, 5, 'Sealed Albums', '', 1, '2024-06-19 20:49:03'),
(9, 5, 'Unsealed Albums', '', 1, '2024-06-19 20:49:22'),
(10, 5, 'Season Greeting', '', 1, '2024-06-19 20:50:09'),
(11, 5, 'Smart Album', '', 1, '2024-06-19 20:50:26'),
(12, 7, 'Key Ring', '', 1, '2024-06-19 20:50:34'),
(13, 7, 'Ring', '', 1, '2024-06-19 20:50:44'),
(14, 7, 'Bracelet', '', 1, '2024-06-19 20:50:53'),
(15, 7, 'Necklace', '', 1, '2024-06-19 20:51:05'),
(16, 8, 'T-Shirt', '', 1, '2024-06-19 20:51:13'),
(17, 8, 'Hoodie', '', 1, '2024-06-19 20:51:22'),
(18, 8, 'Hats', '', 1, '2024-06-19 20:51:50'),
(19, 6, 'Boy Group', '', 1, '2024-06-19 20:52:05'),
(20, 6, 'Girl Group', '', 1, '2024-06-19 20:52:16'),
(21, 9, 'Plushies', '', 1, '2024-06-19 20:52:33'),
(22, 9, 'Tote Bag', '', 1, '2024-06-19 20:52:42'),
(23, 10, 'K-Drama Kit', '', 1, '2024-06-21 23:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Hallyu Hub'),
(6, 'short_name', 'Hallyu Hub'),
(11, 'logo', 'uploads/1718875260_1718874900_hallyuhub-removebg-preview.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1718875260_hallyuhub (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
