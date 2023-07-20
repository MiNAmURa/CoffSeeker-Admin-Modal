-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-07-20 10:10:52
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
-- 資料庫： `coffseeker_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_products` varchar(300) NOT NULL,
  `order_amount` varchar(50) NOT NULL,
  `order_price` int(10) NOT NULL,
  `order_user` varchar(30) NOT NULL,
  `order_created_at` datetime NOT NULL,
  `order_state` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`order_id`, `order_products`, `order_amount`, `order_price`, `order_user`, `order_created_at`, `order_state`) VALUES
(1, '【SATUR】 農神之禮 結實紺藍 熟豆組 ,\n想望咖啡【獨家風味】想望禮盒 精品咖啡掛耳20入 早晨&午後', '2,1', 1780, 'John Doe', '2023-07-15 11:27:54', 2),
(2, '想望咖啡【免運禮盒】珍稀藝伎 精品咖啡掛耳18入/濾掛/生日禮物', '1', 2560, 'Jane Smith', '2023-07-15 11:27:54', 2),
(3, '想望咖啡【90+頂級藝伎濾掛】咖啡掛耳禮盒18入', '1', 3960, 'David Johnson', '2023-07-15 11:27:54', 3),
(4, '想望咖啡【北歐之道】卡蘿玫瑰精品咖啡豆200g/水洗/淺焙', '3', 1800, 'Sarah Williams', '2023-07-15 11:27:54', 4),
(5, '【期間限定組合】獨家配方 + 世界風味 | 掛耳咖啡組合', '1', 745, 'Michael Brown', '2023-07-15 11:27:54', 0),
(6, '【禮盒/伴手禮】莊園濾掛咖啡│福到-哥倫比亞 萊姆酒桶日曬10g/', '1', 1000, 'Emily Davis', '2023-07-15 11:27:54', -1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
