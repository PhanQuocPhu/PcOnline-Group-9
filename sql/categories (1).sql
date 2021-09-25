-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 25, 2021 lúc 02:59 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pconline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories`
(
    `id`                int(10) UNSIGNED                        NOT NULL,
    `c_name`            varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
    `c_slug`            varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
    `c_icon`            char(191) COLLATE utf8mb4_unicode_ci             DEFAULT NULL,
    `c_avatar`          varchar(225) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `c_active`          tinyint(4)                              NOT NULL DEFAULT 1,
    `c_total_product`   int(10)                               NOT NULL DEFAULT 0,
    `c_title_seo`       varchar(225) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `c_description_seo` varchar(225) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `c_keyword_seo`     varchar(225) COLLATE utf8mb4_unicode_ci          DEFAULT NULL,
    `c_home`            tinyint(4)                              NOT NULL DEFAULT 0 COMMENT 'Hiện trên trang chủ',
    `created_at`        timestamp                               NULL     DEFAULT NULL,
    `updated_at`        timestamp                               NULL     DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_icon`, `c_avatar`, `c_active`, `c_total_product`, `c_title_seo`,
                          `c_description_seo`, `c_keyword_seo`, `created_at`, `updated_at`, `c_home`)
VALUES (10, 'MainBoard - Bo mạch chủ', 'mainboard-bo-mach-chu', '2021-06-07__020-motherboard.png', NULL, 1, 0,
        'MainBoard', NULL, NULL, '2021-04-07 20:17:29', '2021-06-13 08:35:47', 1),
       (11, 'CPU - Vi xử lý', 'cpu-vi-xu-ly', '2021-06-07__013-processor.png', NULL, 1, 0, 'CPU', NULL, NULL,
        '2021-04-07 20:18:06', '2021-06-13 08:35:49', 1),
       (13, 'SSD - Ổ cứng thể rắn', 'ssd-o-cung-the-ran', '2021-06-07__006-ssd.png', NULL, 1, 0, 'SSD - Ổ cứng thể rắn',
        NULL, NULL, '2021-05-09 21:27:31', '2021-06-07 05:00:46', 0),
       (14, 'HDD - Ổ cứng', 'hdd-o-cung', '2021-06-07__026-hard-drive.png', NULL, 1, 0, 'HDD - Ổ cứng', NULL, NULL,
        '2021-05-09 21:28:17', '2021-06-07 05:00:27', 0),
       (15, 'PSU - Nguồn máy tính', 'psu-nguon-may-tinh', '2021-06-07__018-nas.png', NULL, 1, 0, 'PSU - Nguồn máy tính',
        NULL, NULL, '2021-05-09 21:29:12', '2021-06-07 05:01:38', 0),
       (16, 'Case - Vỏ máy tính', 'case-vo-may-tinh', '2021-06-07__031-cpu-tower.png', NULL, 1, 0, 'Case - Vỏ máy tính',
        NULL, NULL, '2021-05-09 21:29:24', '2021-06-07 05:01:52', 0),
       (18, 'Chuột', 'chuot', '2021-06-07__019-mouse.png', NULL, 1, 0, 'Chuột', NULL, NULL, '2021-05-09 21:30:25',
        '2021-06-07 05:02:08', 0),
       (19, 'Bàn phím', 'ban-phim', '2021-06-07__025-keyboard.png', NULL, 1, 0, 'Bàn phím', NULL, NULL,
        '2021-05-09 21:30:31', '2021-06-07 05:02:23', 0),
       (20, 'Màn hình', 'man-hinh', '2021-06-07__021-monitor.png', NULL, 1, 0, 'Màn hình', NULL, NULL,
        '2021-05-11 19:19:31', '2021-06-07 05:02:42', 0),
       (22, 'Ram - Bộ nhớ phụ', 'ram-bo-nho-phu', '2021-06-07__memory.png', NULL, 1, 0, 'Ram - Bộ nhớ phụ', NULL, NULL,
        '2021-06-07 04:41:16', '2021-06-07 04:41:16', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `categories_c_name_unique` (`c_name`),
    ADD KEY `categories_c_slug_index` (`c_slug`),
    ADD KEY `categories_c_active_index` (`c_active`),
    ADD KEY `categories_c_home_index` (`c_home`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
