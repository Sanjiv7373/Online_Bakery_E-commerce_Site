-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 18, 2023 at 05:56 AM
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
-- Database: `newbakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `product_id`, `quantity`) VALUES
(78, 4, 139, 4),
(77, 3, 139, 19);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon` varchar(255) NOT NULL,
  `discount_percentage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon`, `discount_percentage`) VALUES
(1, 'SUMMER25', 25);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','cancelled') DEFAULT 'pending',
  `gst` float DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `total_amount`, `status`, `gst`) VALUES
(52, 3, '2023-08-01 09:22:55', '2167.50', 'pending', 0.1),
(50, 3, '2023-08-01 09:03:29', '52.50', 'pending', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `page_visit`
--

DROP TABLE IF EXISTS `page_visit`;
CREATE TABLE IF NOT EXISTS `page_visit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `page_visit`
--

INSERT INTO `page_visit` (`id`, `user_id`, `page`, `in_time`, `out_time`, `duration`, `date`) VALUES
(16, 5, '/category/Cakes', '2023-08-03 09:44:48', '2023-08-03 09:44:55', 7, '2023-08-03'),
(14, 5, '/menu-and-pricing', '2023-08-03 09:44:44', '2023-08-03 09:44:46', 2, '2023-08-03'),
(13, 5, '/', '2023-08-03 09:44:09', '2023-08-03 09:44:43', 35, '2023-08-03'),
(12, 0, '/', '2023-08-03 09:43:52', '2023-08-03 09:44:03', 11, '2023-08-03'),
(11, 0, '/', '2023-08-03 09:42:43', '2023-08-03 09:43:51', 68, '2023-08-03'),
(17, 5, '/', '2023-08-03 09:44:55', '2023-08-03 09:45:46', 50, '2023-08-03'),
(18, 5, '/menu-and-pricing', '2023-08-03 09:45:46', '2023-08-03 09:46:40', 53, '2023-08-03'),
(24, 5, '/myorders', '2023-08-03 10:02:36', '2023-08-03 10:03:19', 1, '2023-08-03'),
(23, 5, '/menu-and-pricing', '2023-08-03 09:57:43', '2023-08-03 10:02:35', 5, '2023-08-03'),
(22, 5, '/', '2023-08-03 09:51:37', '2023-08-03 09:57:42', 6, '2023-08-03'),
(29, 3, 'home', '2023-08-03 10:03:37', '2023-08-03 10:04:22', 1, '2023-08-03'),
(30, 3, '/menu-and-pricing', '2023-08-03 10:04:23', '2023-08-03 10:05:32', 1, '2023-08-03'),
(31, 3, '/category/Cakes', '2023-08-03 10:05:33', '2023-08-03 10:08:16', 3, '2023-08-03'),
(32, 0, 'home', '2023-08-03 10:08:17', '2023-08-03 10:08:52', 1, '2023-08-03'),
(34, 0, 'home', '2023-08-03 10:08:54', '2023-08-03 10:43:33', 35, '2023-08-03'),
(35, 4, 'home', '2023-08-03 10:43:39', '2023-08-03 10:44:48', 1, '2023-08-03'),
(37, 4, 'home', '2023-08-03 10:45:09', '2023-08-03 10:46:47', 2, '2023-08-03'),
(40, 1, 'home', '2023-08-03 10:47:07', '2023-08-03 10:47:48', 1, '2023-08-03'),
(41, 1, 'home', '2023-08-03 10:47:49', '2023-08-03 10:48:43', 1, '2023-08-03'),
(45, 5, 'home', '2023-08-03 10:50:44', '2023-08-03 10:53:06', 2, '2023-08-03'),
(47, 5, '/menu-and-pricing', '2023-08-03 10:53:10', '2023-08-03 11:02:14', 9, '2023-08-03'),
(48, 5, 'home', '2023-08-03 11:02:15', '2023-08-03 11:07:09', 5, '2023-08-03'),
(49, 0, 'home', '2023-08-03 11:07:10', '2023-08-03 11:08:44', 2, '2023-08-03'),
(54, 0, 'home', '2023-08-04 04:34:55', '2023-08-04 04:37:01', 2, '2023-08-04'),
(55, 3, 'home', '2023-08-04 04:37:12', '2023-08-04 04:37:47', 1, '2023-08-04'),
(59, 1, 'home', '2023-08-04 05:21:14', '2023-08-04 05:27:28', 6, '2023-08-04'),
(61, 1, 'home', '2023-08-04 05:27:42', '2023-08-04 05:28:28', 1, '2023-08-04'),
(64, 1, 'home', '2023-08-04 05:28:34', '2023-08-04 05:29:35', 1, '2023-08-04'),
(68, 1, 'home', '2023-08-04 05:30:10', '2023-08-04 05:30:41', 1, '2023-08-04'),
(69, 1, 'home', '2023-08-04 05:30:42', '2023-08-04 05:31:18', 1, '2023-08-04'),
(70, 1, 'home', '2023-08-04 05:31:19', '2023-08-04 05:31:58', 1, '2023-08-04'),
(72, 1, 'home', '2023-08-04 05:32:13', '2023-08-04 05:33:22', 1, '2023-08-04'),
(73, 1, 'home', '2023-08-04 05:33:23', '2023-08-04 05:34:18', 1, '2023-08-04'),
(74, 1, 'home', '2023-08-04 05:34:18', '2023-08-04 05:34:56', 1, '2023-08-04'),
(80, 1, 'home', '2023-08-04 05:35:32', '2023-08-04 05:37:42', 2, '2023-08-04'),
(82, 1, 'home', '2023-08-04 05:37:45', '2023-08-04 05:40:23', 3, '2023-08-04'),
(95, 1, 'home', '2023-08-04 05:41:51', '2023-08-04 05:42:25', 1, '2023-08-04'),
(105, 1, 'home', '2023-08-04 05:43:46', '2023-08-04 05:44:44', 1, '2023-08-04'),
(110, 1, 'home', '2023-08-04 05:45:22', '2023-08-04 05:46:16', 1, '2023-08-04'),
(113, 1, 'home', '2023-08-04 05:46:26', '2023-08-04 05:47:07', 1, '2023-08-04'),
(114, 1, 'home', '2023-08-04 05:47:08', '2023-08-04 05:48:14', 1, '2023-08-04'),
(116, 1, 'home', '2023-08-04 05:48:17', '2023-08-04 05:50:57', 3, '2023-08-04'),
(117, 1, 'home', '2023-08-04 05:50:58', '2023-08-04 05:52:02', 1, '2023-08-04'),
(119, 1, 'home', '2023-08-04 05:52:05', '2023-08-04 05:52:56', 1, '2023-08-04'),
(121, 1, 'home', '2023-08-04 05:54:08', '2023-08-04 05:54:50', 1, '2023-08-04'),
(122, 1, 'home', '2023-08-04 05:55:22', '2023-08-04 05:56:03', 1, '2023-08-04'),
(123, 1, 'home', '2023-08-04 05:56:04', '2023-08-04 05:56:34', 1, '2023-08-04'),
(128, 1, 'home', '2023-08-04 05:57:32', '2023-08-04 05:58:46', 1, '2023-08-04'),
(131, 1, 'home', '2023-08-04 06:00:24', '2023-08-04 06:01:48', 1, '2023-08-04'),
(133, 1, 'home', '2023-08-04 06:03:10', '2023-08-04 06:03:49', 1, '2023-08-04'),
(207, 3, '/menu-and-pricing', '2023-08-18 04:40:04', '2023-08-18 04:40:06', 0, '2023-08-18'),
(141, 1, 'home', '2023-08-04 06:05:36', '2023-08-04 06:06:07', 1, '2023-08-04'),
(206, 3, '/category/Cakes', '2023-08-18 04:39:56', '2023-08-18 04:40:04', 0, '2023-08-18'),
(143, 1, 'home', '2023-08-04 06:06:19', '2023-08-04 06:13:53', 8, '2023-08-04'),
(205, 3, '/menu-and-pricing', '2023-08-18 04:39:55', '2023-08-18 04:39:56', 0, '2023-08-18'),
(204, 3, '/myorders', '2023-08-18 04:39:48', '2023-08-18 04:39:54', 0, '2023-08-18'),
(203, 3, 'home', '2023-08-18 04:39:45', '2023-08-18 04:39:48', 0, '2023-08-18'),
(202, 0, 'home', '2023-08-18 04:39:34', '2023-08-18 04:39:36', 0, '2023-08-18'),
(150, 1, 'home', '2023-08-04 06:14:56', '2023-08-04 06:16:41', 2, '2023-08-04'),
(151, 1, 'home', '2023-08-04 06:16:42', '2023-08-04 06:17:16', 1, '2023-08-04'),
(153, 1, 'home', '2023-08-04 06:17:33', '2023-08-04 06:18:15', 1, '2023-08-04'),
(154, 1, 'home', '2023-08-04 06:18:16', '2023-08-04 06:20:15', 2, '2023-08-04'),
(201, 5, '/myorders', '2023-08-18 04:39:29', '2023-08-18 04:39:33', 0, '2023-08-18'),
(200, 5, '/myorders', '2023-08-18 04:39:12', '2023-08-18 04:39:19', 0, '2023-08-18'),
(159, 1, 'home', '2023-08-04 06:21:49', '2023-08-04 06:27:46', 6, '2023-08-04'),
(160, 1, 'home', '2023-08-04 06:27:47', '2023-08-04 06:28:51', 1, '2023-08-04'),
(161, 1, 'home', '2023-08-04 06:28:52', '2023-08-04 06:29:35', 1, '2023-08-04'),
(162, 1, 'home', '2023-08-04 06:29:36', '2023-08-04 06:31:07', 2, '2023-08-04'),
(199, 5, '/category/Cakes', '2023-08-18 04:39:07', '2023-08-18 04:39:12', 0, '2023-08-18'),
(198, 5, '/category/Toast', '2023-08-18 04:39:06', '2023-08-18 04:39:07', 0, '2023-08-18'),
(166, 1, 'home', '2023-08-04 06:31:48', '2023-08-04 06:32:43', 1, '2023-08-04'),
(168, 1, 'home', '2023-08-04 06:33:12', '2023-08-04 06:34:17', 1, '2023-08-04'),
(197, 5, '/menu-and-pricing', '2023-08-18 04:39:01', '2023-08-18 04:39:05', 0, '2023-08-18'),
(170, 1, 'home', '2023-08-04 06:34:28', '2023-08-04 06:35:56', 1, '2023-08-04'),
(171, 1, 'home', '2023-08-04 06:35:58', '2023-08-04 06:39:02', 3, '2023-08-04'),
(196, 5, 'home', '2023-08-18 04:38:45', '2023-08-18 04:39:01', 0, '2023-08-18'),
(195, 0, 'home', '2023-08-18 04:38:13', '2023-08-18 04:38:17', 0, '2023-08-18'),
(174, 1, 'home', '2023-08-04 06:39:57', '2023-08-04 06:41:30', 2, '2023-08-04'),
(175, 1, 'home', '2023-08-04 06:41:30', '2023-08-04 06:49:02', 8, '2023-08-04'),
(176, 1, 'home', '2023-08-04 06:41:30', '2023-08-04 06:49:02', 8, '2023-08-04'),
(177, 1, 'home', '2023-08-04 06:49:03', '2023-08-04 06:49:52', 1, '2023-08-04'),
(178, 1, 'home', '2023-08-04 06:49:52', '2023-08-04 06:52:31', 3, '2023-08-04'),
(179, 1, 'home', '2023-08-04 06:52:32', '2023-08-04 06:55:11', 3, '2023-08-04'),
(180, 1, 'home', '2023-08-04 06:59:39', '2023-08-04 07:00:21', 1, '2023-08-04'),
(194, 1, 'home', '2023-08-18 04:37:43', '2023-08-18 04:37:44', 0, '2023-08-18'),
(182, 1, 'home', '2023-08-04 07:00:33', '2023-08-04 07:02:36', 2, '2023-08-04'),
(193, 1, 'home', '2023-08-18 04:37:16', '2023-08-18 04:37:42', 0, '2023-08-18'),
(184, 1, 'home', '2023-08-04 07:02:49', '2023-08-04 07:04:18', 1, '2023-08-04'),
(192, 0, 'home', '2023-08-18 04:30:50', '2023-08-18 04:35:17', 4, '2023-08-18'),
(191, 0, 'home', '2023-08-18 04:28:43', '2023-08-18 04:30:35', 2, '2023-08-18'),
(190, 0, 'home', '2023-08-18 04:28:16', '2023-08-18 04:28:35', 0, '2023-08-18'),
(189, 0, 'home', '2023-08-04 11:10:47', '2023-08-04 11:11:01', 0, '2023-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `image` text,
  `before_price` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `description`, `price`, `category_name`, `image`, `before_price`) VALUES
(140, 'Britannia Cakes Chocolate Brownie Pouch, 40 g', '100% natural and healthy ingredients: Tempting Truffle chocolate cake is made from a pure and wholesome blend of organic ingredients. This makes it suitable especially for those who are intolerant or allergic to specific ingredients. Delicious in taste and scrumptious looking, this cake will be the attraction of any celebration.', '20.00', 'Cakes', 'https://m.media-amazon.com/images/I/41juJ46DbAL.jpg', 40),
(139, 'two little birds | Banana Flavor Walnut Dry Cake | Eggless, Fresh & Fluffy ', 'All our Cakes are made using high quality ingredients only.\nOur Cakes are handcrafted by our trained & experienced bakers. We have put endless hours of trials behind each of our Cakes to ensure it is delicious, full of flavour and blissful for our dear customers.', '290.00', 'Cakes', 'https://m.media-amazon.com/images/I/61KZ9BUzuNL._SX679_.jpg', 300),
(137, 'Ship in the Mouth\'s Rich Chocolate Plum Cake with dry fruits and nuts', 'Homemade Premium Chocolate Plum Cake baked fresh as order received\nMade with premium quality flour and abundance of nuts and dry fruits\nThere is no preservatives or artificial flavors or age enhancers added to our cakes\nOur cakes are made with butter, and no oil added\nComes packed within a tin container', '699.00', 'Cakes', 'https://m.media-amazon.com/images/I/71MLBabTfPL._SX679_.jpg', 800),
(136, 'Bethel Kerala Elite Plum Surprise Cake 330 Gm.', 'A delightful fruity and nutty plum cake adorned with the goodness of cashew nuts and richness of yummy chocolate flavor.\nElite Plum Delight is just the plum cake you need to sweeten up any occasion.\nGreat for breakfast or teatime.\nClassic, soft and fluffy plum cake.\nMade from quality ingredients.', '310.00', 'Cakes', 'https://m.media-amazon.com/images/I/51ubUQb9ruL._SX679_.jpg', 410),
(135, 'AMFIN® Twinkle Twinkle Little Star Gold Cake Topper', 'This is an essential cake decoration for babies\'s birthday party. Lovely and interesting! Make your party more perfect surprise !\nUnique Design,Perfect for baby shower party,birthday party,home decoration,n', '99.00', 'Cakes', 'https://m.media-amazon.com/images/I/614+im-HzdL._SY450_.jpg', 130),
(134, 'FlowerAura The Black Chocolateria Delicious Cake Gift\'s ', 'Storing this chocolicious cake is pretty easy - All you need to do is take the leftovers and keep them in an air-tight box. Keep that box in the refrigerator and consume it within 3-4 days.', '599.00', 'Cakes', 'https://m.media-amazon.com/images/I/61kXUfGtMmL._SX679_.jpg', 670),
(133, 'FlowerAura Black Forest Delicious Cake', '100% natural and healthy ingredients: Black Forest cake is made from a pure and wholesome blend of organic ingredients. This makes it suitable especially for those who are intolerant or allergic to specific ingredients. Delicious in taste and scrumptious looking, this cake will be the attraction of any celebration.', '499.00', 'Cakes', 'https://m.media-amazon.com/images/I/61tpf1U551L._SX679_.jpg', 550),
(131, 'Nutribee 100% Whole Wheat Atta Rusk - Curry Leaf', '400g bundle pack. Nutribee presents Whole Wheat Rusk – Curry Leaf. Your pakoda cravings have a healthy answer with our curry leaf rusk that is baked to perfection and has the earthy taste of fresh roasted curry leaf, chillies, organic whole wheat flou', '230.00', 'Toast', 'https://m.media-amazon.com/images/I/81mrc3f6iLL._SX569_.jpg', 300),
(130, 'Parle Rusk Premium Elaichi Flavour, 400g', 'Parle rusk comes with the goodness of wheat & a crunchy texture\nInfused with elaichi essence that releases a sweet & delicious aroma in every bite\nEnjoy Parle rusk with a hot cup of tea to relish every moment of it\nA perfect companion to your hot cup of tea\nIt is 100% Vegetarian product\nCountry of origin: India', '26.00', 'Toast', 'https://m.media-amazon.com/images/I/61oXa-EhW-L._SX679_.jpg', 40),
(129, 'Diet Foods 4 in 1 Combo- Sugar Free Bread', 'Nutritious toast: When you crave something savoury and crunchy, try a piece of delicious Sugar Free Toasted Bread by Baker Street. Our NEW toasted taste is delightful on its own.', '132.00', 'Toast', 'https://m.media-amazon.com/images/I/71u3tJSduGL._SX679_PIbundle-4,TopRight,0,0_AA679SH20_.jpg', 290),
(128, 'Baker Street Sugar Free Rusk Toast 200g Healthy Crispy Diet Quality Fibre ', 'Nutritious toast: When you crave something savoury and crunchy, try a piece of delicious Sugar Free Toasted Bread by Baker Street. Our NEW toasted taste is delightful on its own.\nZero trans fat, no artificial color: enjoy premium zero trans fat bread, sugar-free toast no longer means buying cheap sliced & diced white bread that tastes dry and stale.', '123.00', 'Toast', 'https://m.media-amazon.com/images/I/41sjye+pc+L.jpg', 170),
(127, 'Pran Family Toast Rusk, 250g', 'Combination of taste and health\nPrepared with the best of ingredients\nPerfect evening snack with friends and family\nSpread a dollop of butter, jam or cheese to turn it into a perfect mid meal snack\nNo added preservatives', '200.00', 'Toast', 'https://m.media-amazon.com/images/I/61vjEKsOE5L._SX679_.jpg', 278),
(126, 'Britannia Toastea Milk Rusk Toast', 'Britannia Milk Rusk Toast is been a traditional tea companion and is loved by many.\nBritannia rusk toast is as crispy as your traditional one, but with a hint of elaichi and right amount of sweetness, its taste will leave you amazed.', '182.00', 'Toast', 'https://m.media-amazon.com/images/I/712Zj8OIH4L._SX679_.jpg', 156),
(125, 'Nutribee 100% Multi-Grain Millet Rusk | Refined Sugar Free ', 'Nutribee presents Multi-Millet Rusk – Sweet, which is mildly sweetened with jaggery and made with organic whole wheat flour, a combination of 4 different millets – foxtail millet, ragi, kodo millet and small millet and rice bran oil.', '440.00', 'Toast', 'https://m.media-amazon.com/images/I/91CtMn6E11S._SX679_PIbundle-4,TopRight,0,0_SX679SY760SH20_.jpg', 660),
(124, 'Nutribee 100% Multigrain Millet Rusk - Curry Leaf', '✔ Nutribee presents Multi-Millet Rusk – Curry Leaf. Your pakoda cravings have a healthy answer with our curry leaf rusk that is baked to perfection and has the earthy taste of fresh roasted curry leaf, chillies, organic whole wheat flour, a combination of 4 different millets – foxtail millet, ragi, kodo millet and small millet and rice bran oil.', '237.00', 'Toast', 'https://m.media-amazon.com/images/I/819FmoM9q8L._SX569_.jpg', 350),
(123, 'GOLDEN MAJESTIC BAKERY Makkhan Toast', 'In Maharashtra, India, Majestic Makkhan Toast are the most popular product. Appreciated by almost everyone because of its ideal freshness, taste, and flavour\nMade Using Healthy fat\n0% Trans\nGreat source of Energy\nNo added Chemicals or Preservatives\n40pc', '199.00', 'Toast', 'https://m.media-amazon.com/images/I/71HAP5FxAlL._SX679_.jpg', 269),
(122, 'Prime Time Premium Homemade Suji Toast (Rusk) 250gm', 'Introducing a specially curated Snacks Gift Hamper, perfect for surprising your loved once Healthy Snacks Hamper: 12 Assorted Cookies Biscuits + Dark Chocolate Bars + Caramel Chocolate Bars + Coconut Chocolate Bars + Choco Almond Brownie (Pack of 6) (x2) + Chips - Choco Crunch + Fancy Lights + Card', '151.00', 'Toast', 'https://m.media-amazon.com/images/I/51cj87LK-1L.jpg', 263),
(121, 'Pran Delight Toast Rusk, 200g', 'Crispy and crunchy\nZero trans fat\nNo cholesterol\nPerfect to be served along with evening tea\nNo added preservatives', '25.00', 'Toast', 'https://m.media-amazon.com/images/I/81x2ZLB9b0L._SX679_.jpg', 59),
(120, 'Midbreak - Sugar Free Rusk | Sugar Free Toast ', 'Sugar Free Rusks marketed by MidBreak are prepaired from 100% sugar free alternatives. They are filled with Khas Khas.\nRusk is a famous Indian snack which is a dry and hard snack that is crispy and crunchy, it has softness of cake but the crunch of biscuits.', '499.00', 'Toast', 'https://m.media-amazon.com/images/I/51qDCv--cEL._SX679_PIbundle-4,TopRight,0,0_AA679SH20_.jpg', 550),
(119, 'POLKA Pack of 6 , Crispy Toast , Suji RUSK , 400X6=2400 GM', 'Description: CRISPY TOAST - Handmade rusks inspired from the old streets of Delhi Ingredients:- Refined Wheat Flour , Sugar, Semolina, Edible vegetable oil[ (Palm Oil), Anti oxidant (INS 319), Vitamin A, Vitamin D], Aniseed, Poppy seed, Yeast, Salt Product Weight:- 400gm', '80.00', 'Toast', 'https://m.media-amazon.com/images/I/41WAlcicuXL._SY300_SX300_QL70_FMwebp_.jpg', 110),
(118, 'UNIQUE BRITANNIA TOASTEA PREMIUM BAKE RUSK 63G UNIQUE PACK OF 4', 'Britannia Toastea Premium Bake Rusk with the goodness of wheat has been a traditional tea companion and is loved by many. It is as crispy as your traditional rusk, but with a hint of elaichi and the right amount of sweetness: its taste will leave you amazed. Britannia Toastea Premium Bake Rusk for long has been a part of every home, sharing those moments of joy.', '65.00', 'Toast', 'https://m.media-amazon.com/images/I/51FJpYuCTsL.jpg', 89),
(117, 'The Baker\'s Dozen 100% Wholewheat Mexican Chilli Toast ', 'Ingredients: We start with wholesome wholewheat bread slices that provide a nutty and nutritious base. On top, we spread a flavorful and vibrant Mexican chili paste. The paste is made from a combination of red chilies, garlic, tomatoes, onions, and a blend of aromatic spices, creating a harmonious medley of flavors.', '95.00', 'Toast', 'https://m.media-amazon.com/images/I/418PUGBNTRL._SX300_SY300_QL70_FMwebp_.jpg', 110),
(116, 'POLKA BUTTER GARLIC TOAST I PACK OF 1 200 GM', 'BUTTER GARLIC TOAST DETAIL: These are crispy and crunchy toasties layered with Amul Butter, oregano and chilli flakes. These are the best bakery snacks out there. You can enjoy them with soup, dips, cheese, pasta, plain as a snack. You can serve them at any party or get together and be proud of your choice.', '30.00', 'Toast', 'https://m.media-amazon.com/images/I/815ju5dfiqL._SX679_.jpg', 67),
(114, 'Cadbury Chocobakes ChocLayered Cakes, 114 g', 'Experience the new exciting Chocobakes chocolate layered cakes – Your loved Cadbury, now inside a chocolate cake.\nMake moments with your loved ones sweeter – with Chocobakes cakes.\nIt is suitable for vegeterians.', '48.00', 'Cookies', 'https://m.media-amazon.com/images/I/61t0Nqvms+L._SX679_.jpg', 54),
(113, 'Cadbury Chocobakes ChocFilled Cookies, 150 g', 'Experience the new exciting Chocobakes centre-filled cookies – Your loved Cadbury, now inside a chocolate biscuit.\nMake moments with your loved ones sweeter – with Chocobakes centre-filled cookies.\nIt is suitable for vegeterians.', '70.00', 'Cookies', 'https://m.media-amazon.com/images/I/41L3KT0OB8L._SX300_SY300_QL70_FMwebp_.jpg', 89),
(112, 'Lotus Biscoff Cookies - Caramelized Biscuit Cookie - ', 'Contains 10 Family Packs. Family pack contains roughly 32 cookies per pack. Cookies are packaged by weight, so keep in mind that counts may vary slightly.\nLotus Biscoff is a unique cookie with a surprisingly crunchy bite and distinctive flavor. Its unique caramelized taste is loved all over the world.\nThe best companion for your coffee. Toss them in a your lunchbox for a mid-day treat or have them as a gourment snack any time of day.', '2392.00', 'Cookies', 'https://m.media-amazon.com/images/I/51oqw86x0KL._SX300_SY300_QL70_FMwebp_.jpg', 3000),
(111, 'Open Secret Snacks Hamper Gift Combo Box', 'Introducing a specially curated Snacks Gift Hamper, perfect for surprising your loved once\nHealthy Snacks Hamper: 12 Assorted Cookies Biscuits + Dark Chocolate Bars + Caramel Chocolate Bars + Coconut Chocolate Bars + Choco Almond Brownie (Pack of 6) (x2) + Chips - Choco Crunch + Fancy Lights + Card', '300.00', 'Cookies', 'https://m.media-amazon.com/images/I/71mN2I7ORSL._AC_UL640_QL65_.jpg', 389),
(141, 'Malpani\'s Bakelite Finger Cake, 720g', ' This makes it suitable especially for those who are intolerant or allergic to specific ingredients. Delicious in taste and scrumptious looking, this cake will be the attraction of any celebration', '360.00', 'Cakes', 'https://m.media-amazon.com/images/I/61PL3t9fv-L._SX679_.jpg', 400),
(142, 'Britannia Gobbles Bar Cake Orange Bites, 30 g\n', 'Soft and spongy texture filled with the goodness of milk, fruit and eggs, making it as healthy as it is tasty.\nOrange flavour gives your senses a refreshing exciting taste in every bite.', '30.00', 'Cakes', 'https://m.media-amazon.com/images/I/61gtbTF2RTL._SX679_.jpg', 56),
(143, 'Cadbury Chocobakes Chocolate Cakes-60g', 'Experience new exciting Cadbury ChocoBakes Choc Layered Cake that is sure to amaze you.\nIndulge in the delightfully light sponge cake enrobed in a chocolatey coating outside and layered with chocolatey cream inside.', '21.00', 'Cakes', 'https://m.media-amazon.com/images/I/61VNaWYyRKL._SX679_.jpg', 30),
(144, 'Pintola Organic Wholegrain Brown Rice Cakes Combo Pack (All Natural) ', 'Indulge in the delightfully light sponge cake enrobed in a chocolatey coating outside and layered with chocolatey cream inside.', '288.00', 'Cakes', 'https://m.media-amazon.com/images/I/61hIS37t6-S._SX679_.jpg', 300),
(145, 'Amazon Brand - Vedaka Premium Inshell Walnuts, 500g', 'Store in a cool, dry place in an airtight container and preferably refrigerate after opening\nNo artificial colours and preservatives\nAllergy caution: contains tree nuts\nConsistency in quality across the year\nPacked in an integrated nuts and dried fruits unit and may contain occasional traces of other nuts and dried fruits\nmaterial_features:Vegetarian', '409.00', 'Nuts', 'https://m.media-amazon.com/images/I/51zDF2KVRuL._SX300_SY300_QL70_FMwebp_.jpg', 500),
(146, 'HILLS ORGANICS Kashmiri Walnut Kernels (Akhrot) | 450 gm ', 'Nutrient-rich: Walnut kernels are a great source of nutrients, including protein, fiber, vitamins, and minerals such as magnesium, phosphorus, and copper. Eating walnuts as part of a balanced diet can help ensure you get the nutrients your body needs to function properly.Rich Source of Natural Nutrients. Healthy and Smart Cholesterol Free Snack Choice.', '743.00', 'Nuts', 'https://m.media-amazon.com/images/I/71+K4IrqL1L._SX679_.jpg', 897);

-- --------------------------------------------------------

--
-- Table structure for table `used_coupons`
--

DROP TABLE IF EXISTS `used_coupons`;
CREATE TABLE IF NOT EXISTS `used_coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `coupon_code` (`coupon_code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `used_coupons`
--

INSERT INTO `used_coupons` (`id`, `user_id`, `coupon_code`) VALUES
(1, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('customer','admin') DEFAULT 'customer',
  `profile_pic` varchar(100) DEFAULT 'static/profile/default.jpg',
  `address` varchar(100) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `role`, `profile_pic`, `address`, `phone`) VALUES
(1, 'Admin', 'admin@gmail.com', '123', 'admin', '/static/profile/default.jpg', NULL, NULL),
(4, 'Nandha Kumar', 'nandha@gmail.com', '123', 'customer', '/static/profile/default.jpg', NULL, NULL),
(3, 'Murugan', 'murugan@gmail.com', '123', 'customer', '/static/profile/default.jpg', NULL, NULL),
(5, 'Sanjiv', 'sanjiv@gmail.com', '123', 'customer', '/static\\profile\\burgerr.png', NULL, NULL),
(6, 'vinoth', 'nandhank2002@gmail.com', '123', 'customer', 'static\\profile\\download.png', NULL, NULL),
(8, 'dad', 'qew234@gmail.com', '12', 'customer', 'static\\profile\\download.png', '123dfsad', 234234),
(9, 'Kishore', 'kishore@k.com', '234', 'customer', 'static\\profile\\download.png', '123dfsad', 9977);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
