-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-07-12 16:57:01
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.0.28

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
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(5) NOT NULL,
  `coupon_name` text NOT NULL,
  `coupon_code` varchar(10) NOT NULL,
  `coupon_valid` tinyint(4) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` varchar(10) NOT NULL,
  `created_at` date NOT NULL,
  `expries_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `max_usage` int(5) NOT NULL,
  `used_times` int(5) NOT NULL,
  `usage_restriction` varchar(50) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_code`, `coupon_valid`, `discount_type`, `discount_value`, `created_at`, `expries_at`, `updated_at`, `max_usage`, `used_times`, `usage_restriction`, `user_id`) VALUES
(1, '午後咖啡館', 'Ad56dkoQa5', 1, '百分比', '10%', '2023-07-11', '2023-07-11', '2023-07-11', 5, 0, '限定商店使用', 0),
(2, '春暖花開', 'fsdfaa', 1, '金額', '30', '2023-07-11', '2023-07-28', '2023-07-11', 10, 0, '限定商店使用', 0),
(3, '現金折價卷', 'fsdfaa', 1, '金額', '30', '2023-07-11', '2023-08-24', '2023-07-11', 1, 0, '資策會限定', 0),
(4, '買一送一卷', 'VKARK445a', 1, '百分比', '50%', '2023-07-11', '2023-07-20', '2023-07-11', 3, 0, '不限', 0),
(5, '外送免運卷', 'rjofkjo816', 1, '金額', '50', '2023-07-11', '2023-07-27', '2023-07-11', 5, 0, '炎炎夏日', 0),
(6, '外送免運卷-2', 'rjofkja816', 1, '金額', '30', '2023-07-11', '2023-07-27', '2023-07-11', 15, 0, '炎炎夏日', 0),
(7, '外送免運卷-2', 'rjofkja816', 1, '金額', '600', '2023-07-11', '2023-07-27', '2023-07-11', 1, 0, '不限', 0),
(8, '春光佐茶', 'Ed875daA95', 1, '百分比', '100%', '2023-07-11', '2023-07-28', '2023-07-11', 1, 0, '不限', 0),
(9, '春暖花開', 'EAFASF5412', -1, '百分比', '100%', '2023-07-11', '2023-08-04', '2023-07-11', 1, 0, '不限', 0),
(10, '測試優惠卷', 'hGLeLikv8a', 1, '百分比', '50', '2023-07-12', '2023-07-13', '2023-07-12', 5, 0, '不限', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
