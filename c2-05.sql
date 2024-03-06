-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-06 01:49:21
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `c2-05`
--

-- --------------------------------------------------------

--
-- 資料表結構 `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `news` int(5) NOT NULL,
  `acc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `type` int(5) NOT NULL,
  `sh` int(1) NOT NULL DEFAULT 1,
  `good` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `text`, `type`, `sh`, `good`) VALUES
(1, '缺乏運動已成為影響全球死亡率的第四大危險因子-國人無規律運動之比率高達72.2%(一)', 1, 1, 0),
(2, '缺乏運動已成為影響全球死亡率的第四大危險因子-國人無規律運動之比率高達72.2%(二)', 1, 1, 0),
(3, '菸害防治法規(一)', 2, 1, 0),
(4, '菸害防治法規(二)', 2, 1, 0),
(5, '降低罹癌風險 建構健康生活型態(一)', 3, 1, 0),
(6, '降低罹癌風險 建構健康生活型態(二)', 3, 1, 0),
(7, '長期憋尿 泌尿系統問題多 (一)', 4, 1, 0),
(8, '長期憋尿 泌尿系統問題多 (二)', 4, 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `que`
--

CREATE TABLE `que` (
  `id` int(11) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `sh` int(1) NOT NULL DEFAULT 1,
  `subject_id` int(11) NOT NULL,
  `vote` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `que`
--

INSERT INTO `que` (`id`, `text`, `sh`, `subject_id`, `vote`) VALUES
(1, '問題一：你最常做什麼運動來促進健康體能呢?', 1, 0, 0),
(2, '1.健走或爬樓梯、慢跑等較不受時間、場地限制的運動。', 1, 1, 0),
(3, '2.仰臥起坐、抬腿及伏地挺身、伸展操、瑜珈等室內運動。', 1, 1, 0),
(4, '3.球類運動、游泳、跳舞、騎腳踏車等加強心肺功能的運動。', 1, 1, 0),
(5, '4.舉重鍛鍊、彈力帶、啞鈴等運用輔助器材鍛鍊肌耐力的運動。', 1, 1, 0),
(6, '\r\n問題二：二手菸沒有安全劑量，只要有暴露，就會有危險，請問它會造成身體上哪些危害?', 1, 0, 0),
(7, '1.增加罹患冠狀動脈心臟病及罹病死亡之風險。', 1, 6, 0),
(8, '2.對孩子的的健康會產生許多影響，例如容易咳嗽或打噴嚏、罹患氣喘或讓症狀更嚴重、會因刺激耳咽管，感染中耳炎、肺功能較差、容易罹患呼吸道疾病等。', 1, 6, 0),
(9, '3.孕婦吸入二手菸易造成流產、早產、胎盤早期剝離、子宮感染等疾病。', 1, 6, 0),
(10, '4.長期的暴露會造成更嚴重的胸腔問題和過敏症，還會增加心臟病和肺癌的罹患率。', 1, 6, 0),
(11, '5.以上皆是。', 1, 6, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `total`
--

CREATE TABLE `total` (
  `id` int(10) UNSIGNED NOT NULL,
  `total` int(5) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `acc` text NOT NULL,
  `user` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `acc`, `user`, `email`) VALUES
(1, 'admin', '1234', 'admin@labor.gov.tw'),
(2, 'test', '5678', 'test@labor.gov.tw'),
(3, 'mem01', 'mem01', 'mem01@labor.gov.tw'),
(4, 'mem02', 'mem02', 'mem02@labor.gov.tw');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `que`
--
ALTER TABLE `que`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `que`
--
ALTER TABLE `que`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `total`
--
ALTER TABLE `total`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
