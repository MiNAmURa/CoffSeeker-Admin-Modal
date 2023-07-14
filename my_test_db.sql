-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-07-14 19:11:15
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `my_test_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'DC Comics'),
(2, 'Marval');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int(5) NOT NULL,
  `category_id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(6) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `price`, `img`) VALUES
(1, 1, 'batman', 1111, 'batman.webp'),
(2, 2, 'blackwidow', 2222, 'blackwidow.jpg'),
(3, 2, 'captain-america', 3333, 'captain-america.png'),
(4, 1, 'flash', 4444, 'flash.jpg'),
(5, 2, 'ironman', 5555, 'ironman.png'),
(6, 1, 'shazam', 6666, 'shazam.jpg'),
(7, 2, 'spiderman', 7777, 'spiderman.jpg'),
(8, 1, 'superman', 8888, 'superman.png'),
(9, 2, 'thor', 9999, 'thor.jpg'),
(10, 1, 'wonderwoman', 1010, 'wonderwoman.webp');

-- --------------------------------------------------------

--
-- 資料表結構 `product_images`
--

CREATE TABLE `product_images` (
  `id` int(5) UNSIGNED NOT NULL,
  `product_id` int(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`) VALUES
(1, 1, 'batflat.png'),
(2, 2, 'batflat.png'),
(3, 1, 'batflat-reverse.png');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(26) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `valid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `phone`, `email`, `created_at`, `valid`) VALUES
(1, 'Aoyz', '', '09aa123456', 'aoyz@test.com', '2023-06-26 15:16:31', 1),
(2, 'Boyz', '', '09bb123456', 'boyz@test.com', '2023-06-26 15:17:57', 1),
(3, 'Coyz', '', '09cc123456', 'coyz@test.com', '2023-06-26 15:30:04', 1),
(4, 'Doyz', '', '09dd123456', 'doyz@test.com', '2023-06-26 16:11:44', 1),
(5, 'Eoyz', '', '09ee123456', 'Eoyz@test.com', '2023-06-26 16:11:44', 1),
(6, 'Foyz', '', '09ff123456', 'foyz@test.com', '2023-06-26 16:11:44', 1),
(7, 'Goyz', '', '09gg123456', 'goyz@test.com', '2023-06-28 09:27:15', 1),
(8, 'Hoyz', '123456', '09hh123456', 'hoyz@test.com', '2023-06-28 12:02:36', 1),
(9, 'Ioyz', 'e10adc3949ba59abbe56e057f20f883e', '09II123456', 'ioyz@test.com', '2023-06-28 13:47:49', 0),
(10, 'Joyz', '', '09JJ123456', 'joyz@test.com', '2023-06-28 14:23:16', 1),
(11, 'Koyz', '', '09kk123456', 'koyz@test.com', '2023-06-28 14:24:38', 1),
(12, 'Loyz', '', '09ll123456', 'loyz@test.com', '2023-06-28 14:25:08', 1),
(13, 'Moyz', '', '09mm123456', 'moyz@test.com', '2023-06-28 14:26:06', 1),
(14, 'Noyz', '', '09nn123456', 'noyz@test.com', '2023-06-28 14:26:30', 1),
(15, 'Ooyz', '', '09oo123456', 'ooyz@test.com', '2023-06-28 14:27:23', 0),
(16, 'Ahoyz', 'e10adc3949ba59abbe56e057f20f883e', '09Ahoy1234', 'ahoyz@test.com', '2023-06-28 15:16:53', 1),
(17, 'Zoyz', '', '09zz123456', 'zoyz@test.com', '2023-06-28 15:56:12', 0),
(18, 'Yoyz', '', '09zz920392', 'yoyz@test.com', '2023-06-28 15:59:23', 1),
(19, 'Xoyz', '', '09xx921231', 'xoyz@test.com', '2023-06-28 16:52:35', 1),
(20, 'Toyz', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2023-07-06 12:07:25', 1),
(21, 'Qoyz', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2023-07-07 09:30:51', 1),
(22, 'Uoyz', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2023-07-07 09:54:36', 1),
(23, 'Poyz', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '2023-07-07 11:16:01', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `users_test`
--

CREATE TABLE `users_test` (
  `id` int(4) UNSIGNED NOT NULL,
  `account` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `introduction` text NOT NULL,
  `creat_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users_test`
--

INSERT INTO `users_test` (`id`, `account`, `email`, `introduction`, `creat_at`) VALUES
(1, 'joe', 'joe@test.com', 'hello im joe', '2023-06-26 09:42:27'),
(2, 'may', 'may@test.com', 'hello May', '2023-06-26 09:43:10');

-- --------------------------------------------------------

--
-- 資料表結構 `user_like`
--

CREATE TABLE `user_like` (
  `id` int(6) NOT NULL,
  `product_id` int(4) NOT NULL,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user_like`
--

INSERT INTO `user_like` (`id`, `product_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 1, 11),
(12, 2, 12),
(13, 3, 2),
(14, 4, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `user_order`
--

CREATE TABLE `user_order` (
  `id` int(6) UNSIGNED NOT NULL,
  `product_id` int(4) UNSIGNED NOT NULL,
  `amount` int(3) NOT NULL,
  `user_id` int(6) UNSIGNED NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user_order`
--

INSERT INTO `user_order` (`id`, `product_id`, `amount`, `user_id`, `order_date`) VALUES
(1, 1, 1, 1, '2023-06-01'),
(2, 2, 2, 2, '2023-06-02'),
(3, 3, 3, 3, '2023-06-03'),
(4, 4, 4, 4, '2023-06-04'),
(5, 5, 5, 5, '2023-06-05'),
(6, 6, 6, 6, '2023-06-06'),
(7, 7, 7, 7, '2023-06-07'),
(8, 8, 8, 15, '2023-06-08'),
(9, 9, 9, 16, '2023-06-09'),
(10, 10, 10, 17, '2023-06-10'),
(11, 1, 11, 18, '2023-06-11'),
(12, 2, 12, 19, '2023-06-12');

-- --------------------------------------------------------

--
-- 資料表結構 `user_order_product`
--

CREATE TABLE `user_order_product` (
  `id` int(5) NOT NULL,
  `user_id` int(6) NOT NULL,
  `order_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_order_product_detail`
--

CREATE TABLE `user_order_product_detail` (
  `id` int(5) UNSIGNED NOT NULL,
  `order_id` int(5) UNSIGNED NOT NULL,
  `product_id` int(5) UNSIGNED NOT NULL,
  `amount` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- 資料表索引 `users_test`
--
ALTER TABLE `users_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`account`);

--
-- 資料表索引 `user_like`
--
ALTER TABLE `user_like`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_order_product`
--
ALTER TABLE `user_order_product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_order_product_detail`
--
ALTER TABLE `user_order_product_detail`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users_test`
--
ALTER TABLE `users_test`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_like`
--
ALTER TABLE `user_like`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order_product`
--
ALTER TABLE `user_order_product`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order_product_detail`
--
ALTER TABLE `user_order_product_detail`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
