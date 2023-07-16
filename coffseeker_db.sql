-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-07-16 15:31:52
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
(1, '拉斯布魯哈斯 瑰夏水洗 2022 COFFEE HUNTERS ,\r\n聖米格爾農園 自然處理 (San Miguel Natural),\r\n伊凡的回憶(Recuerdo de Ivan),', '1,2,3', 3000, 'John Doe', '2023-07-15 11:27:54', 2),
(2, '拉斯布魯哈斯 瑰夏水洗 2022 COFFEE HUNTERS ,\r\n聖米格爾農園 自然處理 (San Miguel Natural),\r\n伊凡的回憶(Recuerdo de Ivan),', '1,2,3', 3000, 'Jane Smith', '2023-07-15 11:27:54', 2),
(3, '拉斯布魯哈斯 瑰夏水洗 2022 COFFEE HUNTERS ,\r\n聖米格爾農園 自然處理 (San Miguel Natural),\r\n伊凡的回憶(Recuerdo de Ivan),', '1,2,3', 3000, 'David Johnson', '2023-07-15 11:27:54', 3),
(4, '拉斯布魯哈斯 瑰夏水洗 2022 COFFEE HUNTERS ,\r\n聖米格爾農園 自然處理 (San Miguel Natural),\r\n伊凡的回憶(Recuerdo de Ivan),', '1,2,3', 3000, 'Sarah Williams', '2023-07-15 11:27:54', 4),
(5, '拉斯布魯哈斯 瑰夏水洗 2022 COFFEE HUNTERS ,\r\n聖米格爾農園 自然處理 (San Miguel Natural),\r\n伊凡的回憶(Recuerdo de Ivan),', '1,2,3', 3000, 'Michael Brown', '2023-07-15 11:27:54', 0),
(6, '拉斯布魯哈斯 瑰夏水洗 2022 COFFEE HUNTERS ,\r\n聖米格爾農園 自然處理 (San Miguel Natural),\r\n伊凡的回憶(Recuerdo de Ivan),', '1,2,3', 3000, 'Emily Davis', '2023-07-15 11:27:54', -1);

-- --------------------------------------------------------

--
-- 資料表結構 `order_states`
--

CREATE TABLE `order_states` (
  `states_id` int(11) NOT NULL,
  `states_valid` tinyint(4) NOT NULL,
  `states` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order_states`
--

INSERT INTO `order_states` (`states_id`, `states_valid`, `states`) VALUES
(1, -1, '訂單完成'),
(2, 0, '訂單取消'),
(3, 1, '下訂完成'),
(4, 2, '訂單確認'),
(5, 3, '整貨中'),
(6, 4, '已出貨');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `product_id` int(4) UNSIGNED NOT NULL,
  `product_category` varchar(20) NOT NULL,
  `product_brand` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_amount` int(10) UNSIGNED NOT NULL,
  `product_price` int(10) UNSIGNED NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `product_valid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`product_id`, `product_category`, `product_brand`, `product_name`, `product_amount`, `product_price`, `product_description`, `product_image`, `created_at`, `updated_at`, `product_valid`) VALUES
(1, '淺焙, 花香, 酒香, 手沖', 'JC咖啡', '職人尋味濾掛咖啡-酒香/花香/甜果/可可│淺焙 精品手沖', 20, 500, '莊園配方 職人尋味系列', 'images/10001.jpg', '2023-07-11 10:02:05', '2023-07-11 10:02:05', 1),
(2, '深焙, 水洗, 日曬', 'JC咖啡', '濃縮烘焙咖啡豆 義式配方│中深焙 / 專為義式咖啡、拿鐵調配', 100, 800, '濃縮烘焙咖啡豆 義式配方\n', 'images/10006.jpg', '2023-07-11 10:04:20', '2023-07-11 10:04:20', 1),
(3, '淺焙, 日曬, 禮盒', 'JC咖啡', '【禮盒/伴手禮】莊園濾掛咖啡│福到-哥倫比亞 萊姆酒桶日曬10g/', 30, 1000, '哥倫比亞 金迪奧省 安娜小農 萊姆酒桶日曬\n \n', 'images/100010.jpg', '2023-07-11 10:06:39', '2023-07-11 10:06:39', 1),
(4, '禮盒', 'Sit Down Plz Coffee ', '日常禮盒 x 日日好日 x 濾掛咖啡12入', 50, 500, '\n\n材質｜350 磅象牙卡印刷\n尺寸｜25 x 18 x 7 cm\n容量｜12 包濾掛咖啡\n\n', 'images/日常禮盒 x 日日好日 x 濾掛咖啡12入.jpg', '2023-07-11 10:34:33', '2023-07-11 10:34:33', 1),
(5, '濾掛', 'Sit Down Plz Coffee', '鑽石山水洗 / 巴拿馬翡翠莊園 / 經典 / 咖啡豆 / 濾掛 /', 73, 100, '西當短評｜輕輕鬆鬆，酸甜好入喉～', 'images/鑽石山水洗.jpg', '2023-07-11 10:37:00', '2023-07-11 10:37:00', 1),
(6, '中焙', 'Sit Down Plz Coffee', '【六週年單品級配方】救國者一號 / 配方豆 / 濾掛咖啡 / 咖啡豆', 60, 900, '風味描述｜茶花、牛奶糖、榛果、紅茶\n', 'images/【六週年單品級配方】救國者一號.jpg', '2023-07-11 10:39:54', '2023-07-11 10:39:54', 1),
(7, '酒香, 禮盒', 'Sit Down Plz Coffee', '【快速出貨-加印版】小兔戰隊【濾掛咖啡】禮盒', 20, 700, '禮盒內容物\n酒香、荔枝、藝伎香、柑橘、經典、香草薰香！\n每款口味各二，一共 12包 + 紙製提袋', 'images/【快速出貨-加印版】小兔戰隊【濾掛咖啡】禮盒.jpg', '2023-07-11 10:41:59', '2023-07-11 10:41:59', 1),
(8, '深焙, 水洗', '香馥咖啡豆專賣店', '墨西哥 皮納塔 彩虹小馬 水洗 中深焙', 10, 360, '風味特色： 堅果、巧克力、榛果醬、乳脂感、酸甜平衡、圓潤滑順、甜感佳\n', 'images/墨西哥 皮納塔 彩虹小馬 水洗 中深焙.jpg', '2023-07-11 10:44:10', '2023-07-11 10:44:10', 1),
(9, '中焙, 日曬', '香馥咖啡豆專賣店', '巴西 喜拉朵 日曬 中焙', 15, 220, '風味特色：堅果可可風味、甜香中略帶點柑橘果酸\n', 'images/巴西 喜拉朵 日曬 中焙.jpg', '2023-07-11 10:46:08', '2023-07-11 10:46:08', 1),
(10, '中焙, 日曬', '香馥咖啡豆專賣店', '巴西 摩吉安娜 COE冠軍莊園 皇后莊園 去果皮日曬 中焙', 60, 390, '風味特色： 入口為堅果、柑橘香，餘韻為巧克力、榛果、黑糖、奶油風味，口感札實、平衡滑順。\n', 'images/巴西 摩吉安娜 COE冠軍莊園 皇后莊園 去果皮日曬 中焙.jpg', '2023-07-11 10:48:05', '2023-07-11 10:48:05', 1),
(11, '淺焙, 日曬', '黑浮咖啡', '黑浮咖啡-衣索比亞 瑰秘藝妓(日曬淺培)', 40, 500, '風味 : 黑莓、紅石榴、柑橘', 'images/黑浮咖啡-衣索比亞 瑰秘藝妓(日曬淺培).jpg', '2023-07-11 10:49:57', '2023-07-11 10:49:57', 1),
(12, '深焙, 水洗', '奎克咖啡', '奎克咖啡-美國夏威夷/香草堅果(深培水洗)', 60, 270, '風味：獨特香草與堅果風味，喉韻回甘渾厚圓滿', 'images/奎克咖啡-美國夏威夷 香草堅果(深培水洗).jpg', '2023-07-11 10:51:08', '2023-07-11 10:51:08', 1),
(13, '淺焙', '奎克咖啡', '奎克咖啡-哥倫比亞薇拉省/百果盛宴(特殊處理淺培)', 111, 270, '風味：青蘋果、百香果、接骨木花', 'images/奎克咖啡-哥倫比亞薇拉省 百果盛宴(特殊處理淺培).jpg', '2023-07-11 10:53:11', '2023-07-11 10:53:11', 1),
(14, '深焙', '黑浮咖啡', '黑浮咖啡-獨家配方豆', 50, 600, '風味：明顯巧克力堅果及紅酒香氣，口感濃厚，尾韻回甘。', 'images/黑浮咖啡-獨家配方豆(綜合中深培).jpg', '2023-07-11 10:54:33', '2023-07-11 10:54:33', 1),
(15, '中焙, 濾掛', '哈本咖啡 Happen Coffee', '【新品上市】蜂蜜酒酒漬咖啡掛耳10入 | 中焙 | 自用款', 40, 680, '咖啡產區 ：巴拿馬、衣索比亞\n', 'images/【新品上市】蜂蜜酒酒漬咖啡掛耳10入  中焙  自用款.jpg', '2023-07-11 11:49:59', '2023-07-11 11:49:59', 1),
(16, '淺焙, 中焙, 深焙', '哈本咖啡 Happen Coffee', '【期間限定組合】獨家配方 + 世界風味 | 掛耳咖啡組合', 20, 745, '| 內容物\n(1) 獨家配方掛耳包 10g x 10入\n(2) 世界風味綜合精選掛耳包 10g x 10入', 'images/【期間限定組合】獨家配方 + 世界風味  掛耳咖啡組合.jpg', '2023-07-11 11:52:11', '2023-07-11 11:52:11', 1),
(17, '深焙', '哈本咖啡 Happen Coffee', '獨家配方 小黑貓 | 深焙 | 甘甜平衡 | 咖啡豆 200g', 56, 400, '風味筆記 : 可可、堅果、莓果微酸。', 'images/獨家配方 小黑貓  中深焙  甘甜平衡  咖啡豆 200g.jpg', '2023-07-11 15:22:45', '2023-07-11 15:22:45', 1),
(18, '中焙, 花香', '哈本咖啡 Happen Coffee', '獨家配方 黑皮野驢 | 中焙 | 野性花香 | 咖啡豆 200g', 89, 450, '風味筆記 ： 紅茶、柑橘、帶點野性的花香和麥芽糖甜感', 'images/獨家配方 黑皮野驢  中焙  野性花香  咖啡豆 200g.jpg', '2023-07-11 15:24:12', '2023-07-11 15:24:12', 1),
(19, '深焙', '哈本咖啡 Happen Coffee', '獨家配方 鐵道司令 | 深焙 | 醇厚香濃 | 咖啡豆 200g', 4, 400, '風味筆記 : 苦甜香濃、飽滿厚重、香料味。', 'images/獨家配方 鐵道司令  深焙  醇厚香濃  咖啡豆 200g.jpg', '2023-07-11 15:25:50', '2023-07-11 15:25:50', 1),
(20, '淺焙', '哈本咖啡 Happen Coffee', '哥斯大黎加 寶藏莊園 | 淺焙 | 黑蜜處理 | 咖啡豆 200g', 11, 550, '豐富酸甜感，糖蜜、香草、葡萄乾氣息，尾韻帶雪莉酒香', 'images/哥斯大黎加 寶藏莊園  淺焙  黑蜜處理  咖啡豆 200g.jpg', '2023-07-11 15:28:09', '2023-07-11 15:28:09', 1),
(21, '中焙, 水洗', '哈本咖啡 Happen Coffee', '宏都拉斯 瓜拉拉佩 | 中焙 | 水洗 | 掛耳10入', 32, 400, '沉穩的木質香氣、甘蔗甜感、堅果香氣，低酸度並帶著黑巧克力的優質苦感，非常適合製成義式咖啡或加入牛奶', 'images/宏都拉斯 瓜拉拉佩  中深焙  水洗  掛耳10入.jpg', '2023-07-11 15:30:10', '2023-07-11 15:30:10', 1),
(22, '淺焙, 水洗, 濾掛', 'CoFeel凱飛', 'CoFeel凱飛 我的貓BOSS │耶加雪菲│單品濾掛咖啡│10g', 23, 400, '【參考風味】\r\n柑橘、橘子皮、花香、甜度高', 'images/CoFeel凱飛 我的貓BOSS 耶加雪菲單品濾掛咖啡10g.jpg', '2023-07-11 15:40:32', '2023-07-11 15:40:32', 1),
(23, '水洗, 濾掛', 'CoFeel凱飛', 'CoFeel凱飛 我的貓BOSS │黃金曼特寧│單品濾掛咖啡│10g', 9, 500, '【參考風味】\r\n松木、焦糖奶油，尾韻甘甜', 'images/CoFeel凱飛 我的貓BOSS 黃金曼特寧 單品濾掛咖啡10g.jpg', '2023-07-11 15:41:45', '2023-07-11 15:41:45', 1),
(24, '深焙, 花香, 濾掛', 'CoFeel凱飛', 'CoFeel凱飛 我的貓BOSS │瓜地馬拉花神│單品濾掛咖啡│10g', 30, 600, '【參考風味】\r\n香草香氣、烤焦糖香、白柚、龍眼乾、苦甜巧克力', 'images/CoFeel凱飛 我的貓BOSS 瓜地馬拉花神 單品濾掛咖啡10g.jpg', '2023-07-11 15:43:25', '2023-07-11 15:43:25', 1),
(25, '中焙, 水洗', '想望咖啡', '想望咖啡【獨家】翡翠 低因咖啡豆200g/水洗/中焙', 20, 520, '風味：無花果、杏桃、焦糖布丁', 'images/想望咖啡【獨家】翡翠 低因咖啡豆100g 200g 水洗 中焙.jpg', '2023-07-11 16:11:50', '2023-07-11 16:11:50', 1),
(26, '淺焙, 水洗, 花香', '想望咖啡', '想望咖啡【北歐之道】卡蘿玫瑰精品咖啡豆200g/水洗/淺焙', 15, 600, '風味筆記：玫瑰、白葡萄、橙花、白茶', 'images/想望咖啡【北歐之道】卡蘿玫瑰精品咖啡豆200g 水洗 淺焙.jpg', '2023-07-11 16:13:18', '2023-07-11 16:13:18', 1),
(27, '淺焙, 花香', '想望咖啡', '想望咖啡【頂級90+】野薑花藝伎/乾發酵水洗/淺焙/咖啡豆', 80, 900, '風味筆記：野薑花、荔枝、人參、茉莉花茶', 'images/想望咖啡【頂級90+】野薑花藝伎 乾發酵水洗 淺焙 咖啡豆.jpg', '2023-07-11 16:16:17', '2023-07-11 16:16:17', 1),
(28, '酒香', '想望咖啡', '想望咖啡【獨家風味】蒙馬特的午後咖啡豆 200g/莓果/酒感', 2, 320, '風味筆記：莓果、橙皮、白酒香', 'images/想望咖啡【獨家風味】蒙馬特的午後咖啡豆 200g 莓果 酒感.jpg', '2023-07-11 16:18:01', '2023-07-11 16:18:01', 1),
(29, '中焙, 日曬', '想望咖啡', '想望咖啡-頂級藍 咖啡豆200g/日曬/中焙/伊帕內瑪莊園頂級', 5, 800, '風味筆記：堅果、蔗糖、奶油餅乾、可可蛋糕', 'images/想望咖啡-頂級藍 咖啡豆200g 日曬 中焙 伊帕內瑪莊園頂級.jpg', '2023-07-11 16:19:28', '2023-07-11 16:19:28', 1),
(30, '淺焙, 水洗', '想望咖啡', '寶格麗午茶園咖啡豆100g/200g/延長發酵水洗/淺焙', 7, 500, '風味筆記：金盞花，白柚，糖漬檸檬，鐵觀音茶', 'images/寶格麗午茶園咖啡豆200g 延長發酵水洗 淺焙.jpg', '2023-07-11 16:21:02', '2023-07-11 16:21:02', 1),
(31, '中焙, 日曬', '想望咖啡', '想望咖啡【頂級金】黃金年代 精品咖啡豆200g/日曬/中焙', 56, 750, '風味筆記：杏仁、 焦糖、 蜜棗', 'images/想望咖啡【頂級金】黃金年代 精品咖啡豆200g 日曬 中焙.jpg', '2023-07-11 16:22:00', '2023-07-11 16:22:00', 1),
(32, '禮盒', '想望咖啡', '想望咖啡【90+頂級藝伎濾掛】咖啡掛耳禮盒18入', 5, 3960, '✶ 組合內容：以下咖啡品項各9包 ✶\r\n\r\n．茱麗葉藝伎（淺焙．乾發酵/半日曬）巴拿馬 - 風味：橙皮、香草、白桃\r\n．野薑花藝伎（淺焙．乾發酵/水洗）巴拿馬 - 風味：野薑花、荔枝、人參、茉莉花茶', 'images/想望咖啡【90+頂級藝伎濾掛】咖啡掛耳禮盒18入.jpg', '2023-07-11 16:24:04', '2023-07-11 16:24:04', 1),
(33, '禮盒', '想望咖啡', '想望咖啡【免運禮盒】珍稀藝伎 精品咖啡掛耳18入/濾掛/生日禮物', 10, 2560, '✶ 組合內容：以下咖啡品項各 6 包 ✶\r\n\r\n．翡翠莊園．綠標藝伎（淺焙．水洗）巴拿馬 - 風味：佛手柑、茉莉花、柳橙、荔枝、綠茶**\r\n．亞歷山大藝伎（淺焙．水洗）哥倫比亞 - 風味：小白菊、佛手柑、水蜜桃、檸檬茶**\r\n．莫拉藝伎（淺焙．水洗）哥倫比亞 - 風味：白花、水蜜桃、烏龍茶**', 'images/想望咖啡【免運禮盒】珍稀藝伎 精品咖啡掛耳18入 濾掛 生日禮物.jpg', '2023-07-11 16:25:14', '2023-07-11 16:25:14', 1),
(34, '禮盒', '想望咖啡', '想望咖啡【獨家風味】想望禮盒 精品咖啡掛耳20入 早晨&午後', 12, 920, '✶ 組合內容 ✶\r\n\r\n．波西塔諾的早晨（中深焙．蜜處理）薩爾瓦多、瓜地馬拉 - 風味：焦糖、肉桂蘋果、黑巧克力\r\n．蒙馬特的午後（淺焙．厭氧日曬）薩爾瓦多、巴拿馬 - 風味：莓果、橙皮、白酒\r\n', 'images/想望咖啡【獨家風味】想望禮盒 精品咖啡掛耳20入 早晨&午後.jpg', '2023-07-11 16:26:27', '2023-07-11 16:26:27', 1),
(35, '禮盒', 'Simple Kaffa 興波咖啡', 'Simple Kaffa 興波咖啡 | 世界冠軍濾掛式咖啡禮盒', 18, 860, ' 阿寶綜合 / 深焙配方，榛果、焦糖、巧克力調性，甜感十足\r\n 衣索比亞日曬 / 淺焙單品，鳳梨、芒果乾、洋甘菊、紅茶\r\n 衣索比亞水洗 / 淺焙單品，佛手柑，白花，萊姆，紅茶', 'images/Simple Kaffa 興波咖啡  世界冠軍濾掛式咖啡禮盒.jpg', '2023-07-11 16:28:02', '2023-07-11 16:28:02', 1),
(36, '禮盒', '薩圖爾精品咖啡', '【SATUR】 農神之禮 結實紺藍 熟豆組', 1, 980, '● 經典系列\r\n【產地】[ 哥倫比亞 ] 哥倫比亞；[ 迦佑曼特寧 ] 印尼；[ 耶加雪菲 ] 衣索比亞；[ 安提瓜 ] 瓜地馬拉\r\n\r\n● 神系列\r\n【產地】 [ 馬廄 ] 台灣東山；[ 中央山谷 ] 哥斯大黎加；[ 翡翠莊園鑽石山] 巴拿馬', 'images/【SATUR】 農神之禮 結實紺藍 熟豆組.jpg', '2023-07-11 16:30:56', '2023-07-11 16:30:56', 1);

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
(1, 'John Doe', 'pass123', 'Male', '1234567890', 'johndoe@example.com', '1990-01-01', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(2, 'Jane Smith', 'secret456', 'Female', '9876543210', 'janesmith@example.com', '1992-05-15', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(3, 'David Johnson', 'password789', 'Male', '5555555555', 'davidjohnson@example.com', '1988-11-30', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(4, 'Sarah Williams', 'pass789', 'Female', '6666666666', 'sarahwilliams@example.com', '1995-08-22', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(5, 'Michael Brown', 'abc123', 'Male', '7777777777', 'michaelbrown@example.com', '1993-04-10', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(6, 'Emily Davis', 'def456', 'Female', '8888888888', 'emilydavis@example.com', '1991-09-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(7, 'Christopher Martinez', 'qwerty', 'Male', '9999999999', 'christophermartinez@example.co', '1989-03-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(8, 'Sophia Anderson', 'pass789', 'Female', '1111111111', 'sophiaanderson@example.com', '1994-06-12', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(9, 'Matthew Taylor', '123456', 'Male', '2222222222', 'matthewtaylor@example.com', '1996-02-28', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(10, 'Olivia Thomas', 'abc789', 'Female', '3333333333', 'oliviathomas@example.com', '1992-07-25', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(11, 'James Hernandez', 'password123', 'Male', '4444444444', 'jameshernandez@example.com', '1987-12-10', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(13, 'Joseph Gonzalez', 'xyz789', 'Male', '6666666666', 'josephgonzalez@example.com', '1993-08-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(14, 'Mia Moore', 'secret123', 'Female', '7777777777', 'miamoore@example.com', '1989-01-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(15, 'William Lee', 'pass456', 'Male', '8888888888', 'williamlee@example.com', '1991-05-17', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(16, 'Isabella Harris', 'qwerty123', 'Female', '9999999999', 'isabellaharris@example.com', '1988-10-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(17, 'Daniel Clark', 'abc456', 'Male', '1111111111', 'danielclark@example.com', '1995-02-27', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(18, 'Emma Lewis', 'pass123', 'Female', '2222222222', 'emmalewis@example.com', '1994-07-24', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(19, 'Benjamin Young', 'xyz456', 'Male', '3333333333', 'benjaminyoung@example.com', '1991-12-09', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(20, 'Sofia Rodriguez', 'secret789', 'Female', '4444444444', 'sofiarodriguez@example.com', '1993-05-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(21, 'Elijah Walker', 'pass789', 'Male', '5555555555', 'elijahwalker@example.com', '1992-10-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(22, 'Avery Hall', 'abc123', 'Female', '6666666666', 'averyhall@example.com', '1990-03-04', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(23, 'Grace Allen', 'qwerty456', 'Female', '7777777777', 'graceallen@example.com', '1987-07-29', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(24, 'Samuel Hernandez', 'pass456', 'Male', '8888888888', 'samuelhernandez@example.com', '1995-01-14', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(25, 'Chloe Turner', 'xyz123', 'Female', '9999999999', 'chloeturner@example.com', '1993-06-28', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(26, 'Henry Parker', 'abc789', 'Male', '1111111111', 'henryparker@example.com', '1992-11-12', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(27, 'Victoria Coleman', 'password123', 'Female', '2222222222', 'victoriacoleman@example.com', '1990-04-29', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(28, 'Andrew Cook', 'pass789', 'Male', '3333333333', 'andrewcook@example.com', '1988-09-13', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(29, 'Scarlett Cooper', 'xyz789', 'Female', '4444444444', 'scarlettcooper@example.com', '1995-02-28', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(30, 'Josephine Hill', 'secret123', 'Female', '5555555555', 'josephinehill@example.com', '1991-07-15', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(31, 'Jack Wright', 'pass123', 'Male', '6666666666', 'jackwright@example.com', '1993-11-30', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(32, 'Penelope Ward', 'abc456', 'Female', '7777777777', 'penelopeward@example.com', '1989-04-16', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(33, 'Lucas Mitchell', 'pass789', 'Male', '8888888888', 'lucasmitchell@example.com', '1994-08-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(34, 'Aria Bell', 'xyz456', 'Female', '9999999999', 'ariabell@example.com', '1990-12-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(35, 'Gabriel Turner', 'secret789', 'Male', '1111111111', 'gabrielturner@example.com', '1992-05-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(36, 'Mila Scott', 'pass123', 'Female', '2222222222', 'milascott@example.com', '1995-09-17', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(37, 'Carter Morgan', 'abc123', 'Male', '3333333333', 'cartermorgan@example.com', '1987-02-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(38, 'Abigail Murphy', 'qwerty123', 'Female', '4444444444', 'abigailmurphy@example.com', '1993-07-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(39, 'Dylan Allen', 'pass456', 'Male', '5555555555', 'dylanallen@example.com', '1991-12-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(40, 'Sophie Adams', 'xyz789', 'Female', '6666666666', 'sophieadams@example.com', '1990-05-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(41, 'Owen Lewis', 'secret123', 'Male', '7777777777', 'owenlewis@example.com', '1988-10-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(42, 'Elizabeth Young', 'pass123', 'Female', '8888888888', 'elizabethyoung@example.com', '1993-02-16', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(43, 'Luke Hall', 'abc789', 'Male', '9999999999', 'lukehall@example.com', '1992-07-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(44, 'Scarlett Hill', 'qwerty456', 'Female', '1111111111', 'scarletthill@example.com', '1989-11-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(45, 'Julian Hernandez', 'pass456', 'Male', '2222222222', 'julianhernandez@example.com', '1994-04-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(46, 'Avery Rodriguez', 'xyz123', 'Female', '3333333333', 'averyrodriguez@example.com', '1991-08-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(47, 'Sofia Walker', 'secret789', 'Female', '4444444444', 'sofiawalker@example.com', '1993-01-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(48, 'Sebastian Turner', 'pass789', 'Male', '5555555555', 'sebastianturner@example.com', '1992-06-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(49, 'Lucy Foster', 'abc123', 'Female', '6666666666', 'lucyfoster@example.com', '1990-11-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(50, 'Connor Powell', 'qwerty789', 'Male', '7777777777', 'connorpowell@example.com', '1988-04-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(52, 'Jane Smith', 'secret456', 'Female', '9876543210', 'janesmith@example.com', '1992-05-15', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(53, 'David Johnson', 'password789', 'Male', '5555555555', 'davidjohnson@example.com', '1988-11-30', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(54, 'Sarah Williams', 'pass789', 'Female', '6666666666', 'sarahwilliams@example.com', '1995-08-22', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(55, 'Michael Brown', 'abc123', 'Male', '7777777777', 'michaelbrown@example.com', '1993-04-10', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(56, 'Emily Davis', 'def456', 'Female', '8888888888', 'emilydavis@example.com', '1991-09-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(57, 'Christopher Martinez', 'qwerty', 'Male', '9999999999', 'christophermartinez@example.co', '1989-03-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(58, 'Sophia Anderson', 'pass789', 'Female', '1111111111', 'sophiaanderson@example.com', '1994-06-12', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(59, 'Matthew Taylor', '123456', 'Male', '2222222222', 'matthewtaylor@example.com', '1996-02-28', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(60, 'Olivia Thomas', 'abc789', 'Female', '3333333333', 'oliviathomas@example.com', '1992-07-25', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(61, 'James Hernandez', 'password123', 'Male', '4444444444', 'jameshernandez@example.com', '1987-12-10', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(62, 'Ava Wilson', 'pass123', 'Female', '5555555555', 'avawilson@example.com', '1990-04-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(63, 'Joseph Gonzalez', 'xyz789', 'Male', '6666666666', 'josephgonzalez@example.com', '1993-08-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(64, 'Mia Moore', 'secret123', 'Female', '7777777777', 'miamoore@example.com', '1989-01-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(65, 'William Lee', 'pass456', 'Male', '8888888888', 'williamlee@example.com', '1991-05-17', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(66, 'Isabella Harris', 'qwerty123', 'Female', '9999999999', 'isabellaharris@example.com', '1988-10-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(67, 'Daniel Clark', 'abc456', 'Male', '1111111111', 'danielclark@example.com', '1995-02-27', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(68, 'Emma Lewis', 'pass123', 'Female', '2222222222', 'emmalewis@example.com', '1994-07-24', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(69, 'Benjamin Young', 'xyz456', 'Male', '3333333333', 'benjaminyoung@example.com', '1991-12-09', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(70, 'Sofia Rodriguez', 'secret789', 'Female', '4444444444', 'sofiarodriguez@example.com', '1993-05-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(71, 'Elijah Walker', 'pass789', 'Male', '5555555555', 'elijahwalker@example.com', '1992-10-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(72, 'Avery Hall', 'abc123', 'Female', '6666666666', 'averyhall@example.com', '1990-03-04', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(73, 'Grace Allen', 'qwerty456', 'Female', '7777777777', 'graceallen@example.com', '1987-07-29', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(74, 'Samuel Hernandez', 'pass456', 'Male', '8888888888', 'samuelhernandez@example.com', '1995-01-14', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(75, 'Chloe Turner', 'xyz123', 'Female', '9999999999', 'chloeturner@example.com', '1993-06-28', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(76, 'Henry Parker', 'abc789', 'Male', '1111111111', 'henryparker@example.com', '1992-11-12', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(77, 'Victoria Coleman', 'password123', 'Female', '2222222222', 'victoriacoleman@example.com', '1990-04-29', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(78, 'Andrew Cook', 'pass789', 'Male', '3333333333', 'andrewcook@example.com', '1988-09-13', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(79, 'Scarlett Cooper', 'xyz789', 'Female', '4444444444', 'scarlettcooper@example.com', '1995-02-28', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(80, 'Josephine Hill', 'secret123', 'Female', '5555555555', 'josephinehill@example.com', '1991-07-15', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(81, 'Jack Wright', 'pass123', 'Male', '6666666666', 'jackwright@example.com', '1993-11-30', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(82, 'Penelope Ward', 'abc456', 'Female', '7777777777', 'penelopeward@example.com', '1990-04-16', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(83, 'Lucas Mitchell', 'pass789', 'Male', '8888888888', 'lucasmitchell@example.com', '1994-08-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(84, 'Aria Bell', 'xyz456', 'Female', '9999999999', 'ariabell@example.com', '1990-12-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(85, 'Gabriel Turner', 'secret789', 'Male', '1111111111', 'gabrielturner@example.com', '1992-05-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(86, 'Mila Scott', 'pass123', 'Female', '2222222222', 'milascott@example.com', '1995-09-17', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(87, 'Carter Morgan', 'abc123', 'Male', '3333333333', 'cartermorgan@example.com', '1987-02-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(88, 'Abigail Murphy', 'qwerty123', 'Female', '4444444444', 'abigailmurphy@example.com', '1993-07-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(89, 'Dylan Allen', 'pass456', 'Male', '5555555555', 'dylanallen@example.com', '1991-12-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(90, 'Sophie Adams', 'xyz789', 'Female', '6666666666', 'sophieadams@example.com', '1990-05-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(91, 'Owen Lewis', 'secret123', 'Male', '7777777777', 'owenlewis@example.com', '1988-10-02', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(92, 'Elizabeth Young', 'pass123', 'Female', '8888888888', 'elizabethyoung@example.com', '1993-02-16', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(93, 'Luke Hall', 'abc789', 'Male', '9999999999', 'lukehall@example.com', '1992-07-03', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(94, 'Scarlett Hill', 'qwerty456', 'Female', '1111111111', 'scarletthill@example.com', '1989-11-18', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(95, 'Julian Hernandez', 'pass456', 'Male', '2222222222', 'julianhernandez@example.com', '1994-04-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(96, 'Avery Rodriguez', 'xyz123', 'Female', '3333333333', 'averyrodriguez@example.com', '1991-08-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(97, 'Sofia Walker', 'secret789', 'Female', '4444444444', 'sofiawalker@example.com', '1993-01-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(98, 'Sebastian Turner', 'pass789', 'Male', '5555555555', 'sebastianturner@example.com', '1992-06-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(99, 'Lucy Foster', 'abc123', 'Female', '6666666666', 'lucyfoster@example.com', '1990-11-05', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1),
(100, 'Connor Powell', 'qwerty789', 'Male', '7777777777', 'connorpowell@example.com', '1988-04-20', 'preset-icon.png', '2023-07-13 12:00:00', 1, 1);

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
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- 資料表索引 `order_states`
--
ALTER TABLE `order_states`
  ADD PRIMARY KEY (`states_id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

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
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_states`
--
ALTER TABLE `order_states`
  MODIFY `states_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_grade`
--
ALTER TABLE `user_grade`
  MODIFY `grade_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
