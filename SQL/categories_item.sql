-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2023 年 07 月 19 日 22:26
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
-- 資料表結構 `categories_item`
--

CREATE TABLE `categories_item` (
  `items_id` int(3) NOT NULL,
  `items_name` varchar(20) NOT NULL,
  `valid` tinyint(4) NOT NULL DEFAULT 1,
  `categories_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `categories_item`
--

INSERT INTO `categories_item` (`items_id`, `items_name`, `valid`, `categories_id`) VALUES
(1, '咖啡豆', 1, 1),
(2, '咖啡粉', 1, 1),
(3, '濾掛式咖啡包', 1, 1),
(4, '即溶式咖啡', 1, 1),
(5, '咖啡豆禮盒', 1, 2),
(6, '咖啡粉禮盒', 1, 2),
(7, '濾掛式禮盒', 1, 2),
(8, '綜合大禮盒', 1, 2),
(9, '盎司杯', 1, 3),
(10, '濾杯', 1, 3),
(11, '濾紙', 1, 3),
(12, '咖啡豆/粉專用勺', 1, 3),
(13, '拉花杯', 1, 3),
(14, '電子溫度計', 1, 3),
(15, '電子定時器', 1, 3),
(16, '電子磅秤', 1, 3),
(17, '咖啡壺', 1, 4),
(18, '咖啡杯', 1, 4),
(19, '滴漏式咖啡機', 1, 5),
(20, '半自動義式咖啡機', 1, 5),
(21, '全自動義式咖啡機', 1, 5),
(22, '膠囊咖啡機', 1, 5),
(23, '手動磨豆機', 1, 6),
(24, '烘豆機', 1, 6),
(26, '奶泡機', 1, 6),
(27, '虹吸機', 1, 6),
(33, '咖啡膠囊', 1, 1),
(34, '冷萃咖啡', 1, 1),
(35, '咖啡碟', 1, 4),
(36, '拿鐵杯', 1, 4),
(37, '雙層玻璃杯', 1, 4),
(38, '陶瓷杯', 1, 4),
(39, '不鏽鋼杯', 1, 4),
(40, '馬克杯', 1, 4),
(41, '冰咖啡杯', 1, 4),
(42, '咖啡瓶', 1, 4),
(43, '手動磨豆機', 1, 3),
(44, '電動磨豆機', 1, 6),
(45, '咖啡壓縮器', 1, 6),
(46, '咖啡杯稱重器', 1, 3),
(47, '冷萃器', 1, 3),
(48, '咖啡水壺', 1, 3),
(49, '咖啡工具禮盒', 1, 2);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `categories_item`
--
ALTER TABLE `categories_item`
  ADD PRIMARY KEY (`items_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `categories_item`
--
ALTER TABLE `categories_item`
  MODIFY `items_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
