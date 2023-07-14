-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-07-13 20:51:01
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
(1, '午後咖啡館', 'Ad56dkoQa5', 0, '', '10%', '2023-07-11', '2023-07-11', '2023-07-12', 5, 0, '限定商店使用', 0),
(2, '春暖花開', 'fsdfaa', 0, '', '10000111', '2023-07-11', '2023-07-28', '2023-07-13', 1, 0, '限定商店使用', 0),
(3, '現金折價卷', 'fsdfaa', 1, '百分比', '10%', '2023-07-11', '2023-08-24', '2023-07-13', 1, 0, '資策會限定', 0),
(4, '買一送一卷', 'VKARK445a', 1, '百分比', '50%', '2023-07-11', '2023-07-20', '2023-07-11', 3, 0, '不限', 0),
(5, '外送免運卷', 'rjofkjo816', 1, '金額', '50', '2023-07-11', '2023-07-27', '2023-07-11', 5, 0, '炎炎夏日', 0),
(6, '外送免運卷-2', 'rjofkja816', 1, '金額', '30', '2023-07-11', '2023-07-27', '2023-07-11', 15, 0, '炎炎夏日', 0),
(7, '外送免運卷-2', 'rjofkja816', 1, '金額', '600', '2023-07-11', '2023-07-27', '2023-07-11', 1, 0, '不限', 0),
(8, '春光佐茶', 'Ed875daA95', 1, '百分比', '100%', '2023-07-11', '2023-07-28', '2023-07-11', 1, 0, '不限', 0),
(9, '春暖花開', 'EAFASF5412', -1, '百分比', '100%', '2023-07-11', '2023-08-04', '2023-07-11', 1, 0, '不限', 0),
(10, '測試優惠卷', 'hGLeLikv8a', 1, '百分比', '50', '2023-07-12', '2023-07-13', '2023-07-12', 5, 0, '不限', 0),
(11, '品睿做測試', 'U7GzBSWA4t', 0, '百分比', '99%', '2023-07-13', '2023-07-13', '2023-07-13', 999, 0, '全館可使用', 0),
(12, '品睿做測試2', 'Ug3OYG5B6j', 0, '金額', '999', '2023-07-13', '2029-07-20', '2023-07-13', 2147483647, 0, '宇宙爆了都能用', 0),
(13, '品睿做測試3', 'lu7jz7Kmd2', -1, '百分比', '10%', '2023-07-13', '2023-07-13', '2023-07-13', 9, 0, '全館可使用', 0),
(14, '品睿做測試4', '9cWt0Qbbx8', 0, '百分比', '100%', '2023-07-13', '2023-07-20', '2023-07-13', 9999, 0, '全館可使用', 0),
(15, '品睿做測試5', 'YJDmCpVZ1H', 1, '百分比', '100%', '2023-07-13', '2023-07-13', '2023-07-13', 999, 0, '宇宙爆了可能不能用', 0),
(16, '現金', 'tAPkFVlyYb', -1, '金額', '100', '2023-07-13', '2023-08-04', '2023-07-13', 5, 0, '現金', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(7) UNSIGNED NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_birthday` date NOT NULL,
  `user_icon` varchar(50) DEFAULT NULL,
  `user_created_at` datetime NOT NULL,
  `user_grade_id` int(1) NOT NULL,
  `user_valid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_password`, `user_gender`, `user_phone`, `user_email`, `user_birthday`, `user_icon`, `user_created_at`, `user_grade_id`, `user_valid`) VALUES
(1, 'Aoyz', '123456', 'Male', '0911111111', 'Aoyz@test.com', '1983-10-13', 'User1.png', '2023-07-06 15:35:58', 1, 1),
(2, 'Boyz', '123456', 'LGBTQIA+', '0922222222', '0909@test.com', '2040-01-01', 'preset-icon.png', '2023-07-11 10:04:32', 2, 1),
(3, 'Coyz', '123456', 'Female', '0933333333', 'coyz@test.com', '1992-10-12', 'mob-tab.jpg', '2023-07-11 10:04:32', 1, 1),
(4, 'Doyz', '123456', 'Female', '0944444444', 'Doyz@test.com', '1990-01-01', 'mob-tab.jpg', '2023-07-11 11:05:05', 1, 1),
(5, 'Eoyz', '123456', 'Female', '095555555', 'Eoyz@test.com', '2040-01-01', 'preset-icon.png', '2023-07-11 11:30:21', 1, 1),
(10, 'Foyz', '123', 'Female', '0966666666', 'foyz@test.com', '2023-07-22', 'preset-icon.png', '2023-07-13 17:07:31', 2, 1),
(11, 'Goyz', '123', 'Private', '0977777777', 'goyz@test.com', '1998-08-08', 'preset-icon.png', '2023-07-13 17:26:12', 3, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_grade`
--

CREATE TABLE `user_grade` (
  `grade_id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `user_grade`
--

INSERT INTO `user_grade` (`grade_id`, `grade`) VALUES
(1, '一般會員'),
(2, 'VIP'),
(3, '未認證');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_grade`
--
ALTER TABLE `user_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_grade`
--
ALTER TABLE `user_grade`
  MODIFY `grade_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
