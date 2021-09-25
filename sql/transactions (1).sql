-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 25, 2021 lúc 03:05 PM
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
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions`
(
    `id`         int(10) UNSIGNED NOT NULL,
    `tr_user_id` int(10)        NOT NULL               DEFAULT 0,
    `tr_total`   int(10)        NOT NULL               DEFAULT 0,
    `tr_note`    varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `tr_address` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `tr_phone`   varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `tr_status`  tinyint(4)       NOT NULL               DEFAULT 0,
    `tr_payment` tinyint(4)       NOT NULL               DEFAULT 0,
    `created_at` timestamp        NULL                   DEFAULT NULL,
    `updated_at` timestamp        NULL                   DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tr_user_id`, `tr_total`, `tr_note`, `tr_address`, `tr_phone`, `tr_status`,
                            `created_at`, `updated_at`, `tr_payment`)
VALUES (74, 5, 3600500, NULL, '47 đường 783 tạ quang bửu p4', '0981805990', 1, '2021-06-13 09:31:28',
        '2021-08-03 06:08:27', 1),
       (122, 5, 3600500, NULL, '47 đường 783 tạ quang bửu p4a', '0981805990', 1, '2021-08-03 06:01:17',
        '2021-08-03 06:13:03', 1),
       (123, 5, 3600500, NULL, '47 đường 783 tạ quang bửu p4', '0981805990', 1, '2021-08-04 19:21:20',
        '2021-08-04 19:25:23', 1),
       (126, 5, 3996100, NULL, '47 đường 783 tạ quang bửu p4', '0981805990', 1, '2021-08-05 05:52:40',
        '2021-08-05 05:53:05', 1),
       (127, 5, 1690000, NULL, '47 đường 783 tạ quang bửu p4', '0981805990', 2, '2021-08-05 18:46:30',
        '2021-08-05 18:46:30', 1),
       (128, 5, 24980000, NULL, '47 đường 783 tạ quang bửu p4', '0981805990', 1, '2021-08-05 19:32:42',
        '2021-08-05 19:34:59', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
    ADD PRIMARY KEY (`id`),
    ADD KEY `transactions_tr_user_id_index` (`tr_user_id`),
    ADD KEY `transactions_tr_status_index` (`tr_status`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
