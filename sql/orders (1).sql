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
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders`
(
    `id`                int(10) UNSIGNED NOT NULL,
    `or_transaction_id` int(10) UNSIGNED NOT NULL,
    `or_product_id`     int(10) UNSIGNED NOT NULL DEFAULT 0,
    `or_qty`            tinyint(4)       NOT NULL DEFAULT 0,
    `or_price`          int(10)        NOT NULL DEFAULT 0,
    `or_sale`           tinyint(4)       NOT NULL DEFAULT 0,
    `created_at`        timestamp        NULL     DEFAULT NULL,
    `updated_at`        timestamp        NULL     DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `or_transaction_id`, `or_product_id`, `or_qty`, `or_price`, `or_sale`, `created_at`,
                      `updated_at`)
VALUES (76, 74, 9, 1, 3790000, 5, NULL, NULL),
       (81, 122, 9, 1, 3790000, 5, NULL, NULL),
       (100, 123, 9, 1, 3790000, 5, NULL, NULL),
       (103, 126, 10, 1, 4490000, 11, NULL, NULL),
       (104, 127, 8, 1, 1690000, 0, NULL, NULL),
       (105, 128, 17, 2, 12490000, 0, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
    ADD PRIMARY KEY (`id`),
    ADD KEY `orders_or_transaction_id_index` (`or_transaction_id`),
    ADD KEY `orders_or_product_id_index` (`or_product_id`),
    ADD KEY `or_transaction_id` (`or_transaction_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 106;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
    ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`or_transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`or_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
