-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2023 lúc 04:55 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopbanxe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `cus_id` int(20) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total` int(11) NOT NULL,
  `note` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`cus_id`, `date_order`, `total`, `note`, `updated_at`, `created_at`) VALUES
(16, '2023-11-25 02:30:32', 516925000, NULL, '2023-11-25 02:30:32', '2023-11-25 02:30:32'),
(17, '2023-11-25 02:32:27', 516925000, NULL, '2023-11-25 02:32:27', '2023-11-25 02:32:27'),
(18, '2023-12-01 23:29:11', 34776000, NULL, '2023-12-01 23:29:11', '2023-12-01 23:29:11'),
(19, '2023-12-01 23:29:29', 34776000, 'hhsh', '2023-12-01 23:29:29', '2023-12-01 23:29:29'),
(20, '2023-12-01 23:39:18', 72252785, NULL, '2023-12-01 23:39:18', '2023-12-01 23:39:18'),
(21, '2023-12-01 23:41:25', 72252785, NULL, '2023-12-01 23:41:25', '2023-12-01 23:41:25'),
(22, '2023-12-01 23:44:26', 72252785, NULL, '2023-12-01 23:44:26', '2023-12-01 23:44:26'),
(23, '2023-12-01 23:44:58', 72252785, 'haha', '2023-12-01 23:44:58', '2023-12-01 23:44:58'),
(24, '2023-12-01 23:45:49', 72252785, 'haha', '2023-12-01 23:45:49', '2023-12-01 23:45:49'),
(25, '2023-12-01 23:45:56', 72252785, 'haha', '2023-12-01 23:45:56', '2023-12-01 23:45:56'),
(26, '2023-12-01 23:46:10', 72252785, 'haha', '2023-12-01 23:46:10', '2023-12-01 23:46:10'),
(27, '2023-12-01 23:46:22', 72252785, 'abc', '2023-12-01 23:46:22', '2023-12-01 23:46:22'),
(28, '2023-12-01 23:46:45', 72252785, 'abc', '2023-12-01 23:46:45', '2023-12-01 23:46:45'),
(29, '2023-12-01 23:47:16', 72252785, NULL, '2023-12-01 23:47:16', '2023-12-01 23:47:16'),
(30, '2023-12-01 23:48:56', 37476785, NULL, '2023-12-01 23:48:56', '2023-12-01 23:48:56'),
(31, '2023-12-01 23:51:11', 37476785, NULL, '2023-12-01 23:51:11', '2023-12-01 23:51:11'),
(32, '2023-12-01 23:51:42', 17433080, NULL, '2023-12-01 23:51:42', '2023-12-01 23:51:42'),
(33, '2023-12-01 23:57:21', 788992585, NULL, '2023-12-01 23:57:21', '2023-12-01 23:57:21'),
(34, '2023-12-01 23:57:36', 788992585, NULL, '2023-12-01 23:57:36', '2023-12-01 23:57:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantily` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_details`
--

INSERT INTO `bill_details` (`bill_id`, `product_id`, `quantily`, `price`, `updated_at`, `created_at`) VALUES
(0, 34, 1, 30240000, '2023-12-01 23:47:16', '2023-12-01 23:47:16'),
(31, 8, 1, 32588509, '2023-12-01 23:51:11', '2023-12-01 23:51:11'),
(32, 36, 1, 15159200, '2023-12-01 23:51:42', '2023-12-01 23:51:42'),
(33, 30, 1, 203992000, '2023-12-01 23:57:21', '2023-12-01 23:57:21'),
(34, 30, 1, 203992000, '2023-12-01 23:57:36', '2023-12-01 23:57:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nhật Nguyễn Đức', 'ndnhat711@gmail.com', 'hello', '2023-11-25 01:19:01', '2023-11-25 01:19:01'),
(2, 'Nhật Nguyễn Đức', 'ndnhat711@gmail.com', 'q', '2023-12-03 23:34:50', '2023-12-03 23:34:50'),
(3, 'Nhật Nguyễn Đức', 'ndnhat711@gmail.com', 'q', '2023-12-03 23:34:51', '2023-12-03 23:34:51'),
(4, 'Nhật Nguyễn Đức', 'ndnhat711@gmail.com', 'q', '2023-12-03 23:35:08', '2023-12-03 23:35:08'),
(5, 'Nhật Nguyễn Đức', 'ndnhat711@gmail.com', 'q', '2023-12-03 23:35:26', '2023-12-03 23:35:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  `cus_address` varchar(100) NOT NULL,
  `cus_phone` int(11) NOT NULL,
  `cus_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `cus_name`, `cus_email`, `cus_address`, `cus_phone`, `cus_note`, `created_at`, `updated_at`) VALUES
(31, 'hello', 'hello@gmail.com', 'Ha Noi', 869178608, NULL, '2023-12-01 23:51:10', '2023-12-01 23:51:10'),
(32, 'Nhật Nguyễn Đức', 'ndnhat711@gmail.com', 'Ha Noi', 869178608, NULL, '2023-12-01 23:51:42', '2023-12-01 23:51:42'),
(33, 'hello', 'hello@gmail.com', 'Ha Noi', 869178608, NULL, '2023-12-01 23:57:21', '2023-12-01 23:57:21'),
(34, 'he', 'hello@gmail.com', 'Ha Noi', 869178608, NULL, '2023-12-01 23:57:36', '2023-12-01 23:57:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `catalogue` varchar(50) NOT NULL,
  `msp` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_img` varchar(2550) NOT NULL,
  `price` int(10) NOT NULL,
  `sale` varchar(1) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `catalogue`, `msp`, `type`, `product_name`, `product_img`, `price`, `sale`, `product_price`, `product_description`) VALUES
(1, 'Honda', 'HDS001', 'HXS', 'Ware Alpha phiên bản cổ điển', 'https://cdn.honda.com.vn/motorbike-versions/October2023/Wce6M2vl0AXtwrp8cXCX.png', 18939273, '0', 18939273, 'Khối lượng bản thân\r\n96 kg\r\n\r\nDài x Rộng x Cao\r\n1.913 mm x 689 mm x 1.076 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.224 mm\r\n\r\nĐộ cao yên\r\n770 mm\r\n\r\nKhoảng sáng gầm xe\r\n134 mm\r\n\r\nDung tích bình xăng\r\n3,7 L\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước 70/90-17M/C 38P\r\nLốp sau 80/90-17M/C 50P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\n4 kỳ, 1 xilanh, làm mát bằng không khí\r\n\r\nCông suất tối đa\r\n6,12 kW/ 7.500 vòng/ phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả 0,8 L\r\nSau khi rã máy 1,0 L\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,72 l/100km\r\n\r\nLoại truyền động\r\nCơ khí, 4 số tròn\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n8,44 Nm/ 5.500 vòng/ phút\r\n\r\nDung tích xy-lanh\r\n109,2 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n50,0 x 55,6 mm\r\n\r\nTỷ số nén\r\n9,0 : 1'),
(2, 'Honda', 'HDS002', 'HXS', 'Wave Alpha 110cc', 'https://cdn.honda.com.vn/motorbike-versions/July2023/V1JxzlIUxWuk5RLW8fYF.jpg', 18742909, '0', 18742909, 'Khối lượng bản thân\r\n96 kg\r\n\r\nDài x Rộng x Cao\r\n1.913 mm x 689 mm x 1.076 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.224 mm\r\n\r\nĐộ cao yên\r\n770 mm\r\n\r\nKhoảng sáng gầm xe\r\n134 mm\r\n\r\nDung tích bình xăng\r\n3,7 L\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước 70/90-17M/C 38P\r\nLốp sau 80/90-17M/C 50P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\n4 kỳ, 1 xilanh, làm mát bằng không khí\r\n\r\nCông suất tối đa\r\n6,12 kW/ 7.500 vòng/ phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả 0,8 L\r\nSau khi rã máy 1,0 L\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,72 l/100km\r\n\r\nLoại truyền động\r\nCơ khí, 4 số tròn\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n8,44 Nm/ 5.500 vòng/ phút\r\n\r\nDung tích xy-lanh\r\n109,2 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n50,0 x 55,6 mm\r\n\r\nTỷ số nén\r\n9,0 : 1'),
(3, 'Honda', 'HDS003', 'HXS', 'Blade 2023', 'https://cdn.honda.com.vn/motorbike-versions/March2023/j37sLOXkDQsdX7nnBTOj.png', 20470909, '0', 20470909, 'Khối lượng bản thân\r\n99 kg (vành đúc)\r\n98 kg (vành nan hoa, phanh cơ)\r\n99 kg (vành nan hoa, phanh đĩa)\r\n\r\nDài x Rộng x Cao\r\n1.920 x 702 x 1.075 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.217 mm\r\n\r\nĐộ cao yên\r\n769mm\r\n\r\nKhoảng sáng gầm xe\r\n141mm\r\n\r\nDung tích bình xăng\r\n3,7 L\r\n\r\nKích cỡ lớp trước/ sau\r\nTrước: 70/90 -17 M/C 38P\r\nSau: 80/90 - 17 M/C 50P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\nXăng, 4 kỳ, 1 xilanh, làm mát bằng không khí\r\n\r\nCông suất tối đa\r\n6,18 kW/7.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\n0,8 lít khi thay nhớt\r\n1,0 lít khi rã máy\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,85l/100 km\r\n\r\nHộp số\r\nCơ khí, 4 số tròn\r\n\r\nHệ thống khởi động\r\nĐạp chân/Điện\r\n\r\nMoment cực đại\r\n8,65 Nm/5.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n109,1 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n50,0 x 55,6 mm\r\n\r\nTỷ số nén\r\n9,0 : 1'),
(4, 'Honda', 'HDS004', 'HXS', 'Future 125 FI', 'https://cdn.honda.com.vn/motorbike-versions/October2021/mTuI6iTbdYCOkHBMnsNw.png', 31702909, '0', 31702909, 'Khối lượng bản thân\r\n104 kg\r\n105 kg (Thông số kỹ thuật của phiên bản vành đúc)\r\n\r\nDài x Rộng x Cao\r\n1.931 mm x 711 mm x 1.083 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.258 mm\r\n\r\nĐộ cao yên\r\n756 mm\r\n\r\nKhoảng sáng gầm xe\r\n133 mm\r\n\r\nDung tích bình xăng\r\n4,6 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nTrước: 70/90 - 17 M/C 38P\r\nSau: 80/90 - 17 M/C 50P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\nXăng, làm mát bằng không khí, 4 kỳ, 1 xy-lanh\r\n\r\nCông suất tối đa\r\n6,83 kW/7.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\n0,9 lít (rã máy); 0,7 lít (thay nhớt)\r\n\r\nMức tiêu thụ nhiên liệu\r\n1.54 L\r\n\r\nLoại truyền động\r\n4 số tròn\r\n\r\nHệ thống khởi động\r\nĐiện & Đạp chân\r\n\r\nMoment cực đại\r\n10,2 Nm/5.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n124,9 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n52,4 mm x 57,9 mm\r\n\r\nTỷ số nén\r\n9,3 : 1'),
(5, 'Honda', 'HDS005', 'HXS', 'Wave RSX FI 110', 'https://cdn.honda.com.vn/motorbikes/December2022/kIs5EUI938YVxyeVrpeA.png', 21737455, '1', 17389964, 'Khối lượng bản thân\r\n99 kg (vành đúc) 98 kg (vành nan hoa/phanh cơ) 99 kg (vành nan hoa/phanh đĩa)\r\n\r\nDài x Rộng x Cao\r\n1.921 mm x 709 mm x 1.081 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.227mm\r\n\r\nĐộ cao yên\r\n760mm\r\n\r\nKhoảng sáng gầm xe\r\n135mm\r\n\r\nDung tích bình xăng\r\n4,0 L\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 70/90 - 17 M/C 38P\r\nLốp sau: 80/90 - 17 M/C 50P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\nXăng, 4 kỳ, 1 xilanh, làm mát bằng không khí\r\n\r\nCông suất tối đa\r\n6,46 kW / 7.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\n0,8 lít khi thay nhớt\r\n1,0 lít khi rã máy\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,7l/100 km\r\n\r\nHộp số\r\nCơ khí, 4 số tròn\r\n\r\nHệ thống khởi động\r\nĐạp chân/Điện\r\n\r\nMoment cực đại\r\n8,7 Nm/6.000 vòng/phút\r\n\r\nDung tích xy-lanh\r\n109,2 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n50,0 x 55,6 mm\r\n\r\nTỷ số nén\r\n9,3 : 1'),
(6, 'Honda', 'HDS006', 'HXS', 'Super Cub C125', 'https://cdn.honda.com.vn/motorbikes/October2021/qdGgJvma2sfdCVaSKhaQ.png', 86292000, '0', 86292000, 'Khối lượng bản thân\r\n109kg\r\n\r\nDài x Rộng x Cao\r\n1.910 x 718 x 1.002mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.243mm\r\n\r\nĐộ cao yên\r\n780mm\r\n\r\nKhoảng sáng gầm xe\r\n136mm\r\n\r\nDung tích bình xăng\r\n3,7 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 70/90-17M/C 38P\r\nLốp sau: 80/90-17M/C 50P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ đơn\r\n\r\nLoại động cơ\r\nPGM-FI, 4 kỳ, xy-lanh đơn, làm mát bằng không khí\r\n\r\nCông suất tối đa\r\n6,87kW/7.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\n\"0,8 lít khi thay nhớt\r\n1,0 lít khi rã máy\"\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,50l/100km\r\n\r\nLoại truyền động\r\nCơ khí\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n10,15Nm/5.000 vòng/phút\r\n\r\nDung tích xy-lanh\r\n123,94 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n50,0 mm x 63,1 mm\r\n\r\nTỷ số nén\r\n10,0:1'),
(7, 'Honda', 'HDG001', 'HXG', 'Vision Phiên Bản Cổ Điển', 'https://cdn.honda.com.vn/motorbikes/September2023/OLfrtqrQ13j7XpusGRl4.png', 36612000, '0', 36612000, 'Khối lượng bản thân\r\n98 kg\r\n\r\nDài x Rộng x Cao\r\n1.925mm x 686mm x 1.126mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.277 mm\r\n\r\nĐộ cao yên\r\n785 mm\r\n\r\nKhoảng sáng gầm xe\r\n130 mm\r\n\r\nDung tích bình xăng\r\n4,9 L\r\n\r\nKích cỡ lớp trước/ sau\r\n80/90-16M/C 43P\r\n90/90-14M/C 46P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\n4 kỳ, 1 xi lanh, làm mát bằng không khí\r\n\r\nCông suất tối đa\r\n6,59kW/7.500rpm\r\n\r\nDung tích nhớt máy\r\nSau khi xả 0,65 L\r\nSau khi rã máy 0,8 L\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,85L/100km\r\n\r\nLoại truyền động\r\nDây đai, biến thiên vô cấp\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n9,29 N.m/6.000 rpm\r\n\r\nDung tích xy-lanh\r\n109,5 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n47,0 x 63,1 mm\r\n\r\nTỷ số nén\r\n10,0 : 1'),
(8, 'Honda', 'HDG002', 'HXG', 'Vario 125', 'https://cdn.honda.com.vn/motorbike-versions/November2023/OXbW3Fw1ZdwkbC3Avfzj.png', 40735637, '1', 32588509, 'Khối lượng bản thân\r\n113 kg\r\n\r\nDài x Rộng x Cao\r\n1918 mm x 679 mm x 1066 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1280 mm\r\n\r\nĐộ cao yên\r\n769 mm\r\n\r\nKhoảng sáng gầm xe\r\n131 mm\r\n\r\nDung tích bình xăng\r\n5,5 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nTrước: 90/80 - 14M/C 43P\r\nSau: 100/80 - 14M/C 48P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\n4 kỳ, 1 xi lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n8,19kW/8500 vòng/phút\r\n\r\nDung tích nhớt máy\r\nXả: 0,8 lít\r\nTháo rã: 0,9 lít\r\nThay lọc dầu: 0,8 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n2,16l/100km\r\n\r\nLoại truyền động\r\nVô cấp, điều khiển tự động\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n10,79Nm/5000 vòng/phút\r\n\r\nDung tích xy-lanh\r\n125 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n52,400 x 57,907 mm\r\n\r\nTỷ số nén\r\n11,0 : 01'),
(9, 'Honda', 'HDG003', 'HXG', 'SH160i/125i', 'https://cdn.honda.com.vn/motorbike-versions/August2023/dRxlGKvDbVFbdEyfzYVc.png', 81775637, '0', 81775637, 'Khối lượng bản thân\r\nSH125i/160i CBS: 133kg SH125i/160i ABS: 133kg\r\n\r\nDài x Rộng x Cao\r\n2.090mm x 739mm x 1.129mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.353mm\r\n\r\nĐộ cao yên\r\n799mm\r\n\r\nKhoảng sáng gầm xe\r\n146mm\r\n\r\nDung tích bình xăng\r\n7 lít\r\n\r\nKích cỡ lớp trước/ sau\r\n100/80-16M/C50P 120/80-16M/C60P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\nPGM-FI, xăng, 4 kỳ, 1 xy-lanh, làm mát bằng dung dịch\r\n\r\nCông suất tối đa\r\n9,6kW/8.250 vòng/phút (SH125i) 12,4kW/8.500 vòng/phút (SH160i)\r\n\r\nDung tích nhớt máy\r\n0,9 lít khi rã máy\r\n\r\nMức tiêu thụ nhiên liệu\r\nSH125i: 2,52 lít/100km SH160i: 2,37 lít/100km\r\n\r\nLoại truyền động\r\nVô cấp, điều khiển tự động\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n11.9N.m/6.500 vòng/phút (SH125i) 14,8N.m/6.500 vòng/phút (SH160i)\r\n\r\nDung tích xy-lanh\r\n124,8cm³ (SH125i) 156,9cm³ (SH160i)\r\n\r\nĐường kính x Hành trình pít tông\r\n53,5mm x 55,5mm (SH125i) 60,0mm x 55,5mm (SH160i)\r\n\r\nTỷ số nén\r\n11,5:1 (SH125i) 12,0:1 (SH160i)'),
(10, 'Honda', 'HDG004', 'HXG', 'Air Blade 125/160', 'https://cdn.honda.com.vn/motorbikes/May2022/yXVDCgQDZJcYqcCZPzyQ.png', 42012000, '0', 42012000, 'Khối lượng bản thân\r\nAir Blade 125: 113 kg\r\nAir Blade 160: 114 kg\r\n\r\nDài x Rộng x Cao\r\nAir Blade 125: 1.887 x 687 x 1.092 mm\r\nAir Blade 160: 1.890 x 686 x 1.116 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.286 mm\r\n\r\nĐộ cao yên\r\n775 mm\r\n\r\nKhoảng sáng gầm xe\r\nAir Blade 125: 141 mm\r\nAir Blade 160: 142 mm\r\n\r\nDung tích bình xăng\r\n4,4 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nAir Blade 125: Lốp trước 80/90 - Lốp sau 90/90\r\nAir Blade 160: Lốp trước 90/80 - Lốp sau 100/80\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\nXăng, 4 kỳ, 1 xy-lanh, làm mát bằng dung dịch\r\n\r\nCông suất tối đa\r\nAir Blade 125: 8,75kW/8.500 vòng/phút\r\nAir Blade 160: 11,2kW/8.000 vòng/phút\r\n\r\nDung tích nhớt máy\r\n0,8 lít khi thay nhớt\r\n0,9 lít khi rã máy\r\n\r\nMức tiêu thụ nhiên liệu\r\nAir Blade 125: 2,26l/100km\r\nAir Blade 160: 2,3l/100km\r\n\r\nHộp số\r\nVô cấp\r\n\r\nLoại truyền động\r\nDây đai, biến thiên vô cấp\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\nAir Blade 125: 11,3Nm/6.500 vòng/phút\r\nAir Blade 160: 14,6Nm/6.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\nAir Blade 125: 124,8 cc\r\nAir Blade 160: 156,9 cc\r\n\r\nĐường kính x Hành trình pít tông\r\nAir Blade 125: 53,5 x 55,5 mm\r\nAir Blade 160: 60 x 55,5 mm\r\n\r\nTỷ số nén\r\nAir Blade 125: 11,5:1\r\nAir Blade 160: 12:1'),
(12, 'Honda', 'HDG006', 'HXG', 'Vision', 'https://cdn.honda.com.vn/motorbike-versions/November2022/PVv5bAR0a69T7Y2GTvQ9.jpg', 32782909, '0', 32782909, 'Khối lượng bản thân\r\nPhiên bản Tiêu chuẩn: 94 kg\r\nPhiên bản Cao cấp, Phiên bản Đặc biệt: 95 kg\r\nPhiên bản Thể thao: 98 kg\r\n\r\nDài x Rộng x Cao\r\nPhiên bản Thể thao: 1.925 mm x 686 mm x 1.126 mm\r\nCác phiên bản khác: 1.871 mm x 686 mm x 1.101 mm\r\n\r\nKhoảng cách trục bánh xe\r\nPhiên bản Thể thao: 1.277 mm\r\nCác phiên bản khác: 1.255 mm\r\n\r\nĐộ cao yên\r\nPhiên bản Thể thao: 785 mm\r\nCác phiên bản khác: 761 mm\r\n\r\nKhoảng sáng gầm xe\r\nPhiên bản Thể thao: 130 mm\r\nCác phiên bản khác: 120 mm\r\n\r\nDung tích bình xăng\r\n4,9 L\r\n\r\nKích cỡ lớp trước/ sau\r\nPhiên bản Thể thao:\r\n80/90-16M/C43P\r\n90/90-14M/C46P\r\nPhiên bản khác:\r\n80/90-14M/C40P\r\n90/90-14M/C46P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\n4 kỳ, 1 xi lanh, làm mát bằng không khí\r\n\r\nCông suất tối đa\r\n6,59 kW/7.500 rpm\r\n\r\nDung tích nhớt máy\r\nSau khi xả 0,65 L\r\nSau khi rã máy 0,8 L\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,85 l/100km\r\n\r\nLoại truyền động\r\nDây đai, biến thiên vô cấp\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n9,29 N.m/6.000 rpm\r\n\r\nDung tích xy-lanh\r\n109,5 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n47,0x63,1 mm\r\n\r\nTỷ số nén\r\n10,0:1'),
(13, 'Honda', 'HDG007', 'HXG', 'Honda VARIO 160', 'https://cdn.honda.com.vn/motorbike-versions/December2022/9zVYrkyMgtcTsdthXVpi.png', 51990000, '0', 51990000, 'Khối lượng bản thân\r\nTiêu chuẩn/ Cao cấp: 117 kg\r\nĐặc biệt/ Thể thao: 118 kg\r\n\r\nDài x Rộng x Cao\r\nTiêu chuẩn/ Cao cấp:1929 mmx678 mmx 1088 mm\r\nĐặc biệt/ Thể thao:1929 mmx695 mm x 1088 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.278 mm\r\n\r\nĐộ cao yên\r\n778 mm\r\n\r\nKhoảng sáng gầm xe\r\n138 mm\r\n\r\nDung tích bình xăng\r\n5,5 L\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước:100/80-14 M/C48P\r\nLốp sau:120/70-14 M/C61P\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\nXăng, 4 kỳ, 1 xy - lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n11,3kW/8.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\nKhi thay dầu: 0.8 lít\r\nKhi tháo lọc dầu: 0.85 lít\r\nKhi tháo rã: 0.9 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n2,20 lít/100km\r\n\r\nLoại truyền động\r\nTự động, vô cấp\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n14,1 N・m/6.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n156,9 cm³\r\n\r\nĐường kính x Hành trình pít tông\r\n60,0 x 55,5 mm\r\n\r\nTỷ số nén\r\n12,0 : 1'),
(14, 'Honda', 'HDG008', 'HXG', 'LEAD 125cc', 'https://cdn.honda.com.vn/motorbikes/December2021/PxbOtPG619Vte84CQHPg.png', 39557445, '0', 39557445, 'Khối lượng bản thân\r\n113 kg\r\n\r\nDài x Rộng x Cao\r\n1.844 mm x 680 mm x 1.130 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.273 mm\r\n\r\nĐộ cao yên\r\n760 mm\r\n\r\nKhoảng sáng gầm xe\r\n120 mm\r\n\r\nDung tích bình xăng\r\n6,0 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nTrước: 90/90-12 44JJ\r\nSau: 100/90-10 56J\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ, giảm chấn thủy lực\r\n\r\nLoại động cơ\r\nXăng, 4 kỳ, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n8,22 kw / 8.500 rpm\r\n\r\nDung tích nhớt máy\r\nSau khi xả 0,8 lít\r\nSau khi rã máy 0,9 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n2,16 lít/100km\r\n\r\nHộp số\r\nTự động, vô cấp\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nDung tích xy-lanh\r\n124,8 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n53,5 x 55,5 mm\r\n\r\nTỷ số nén\r\n11,5:1'),
(16, 'Honda', 'HDC001', 'HXC', 'CBR150R', 'https://cdn.honda.com.vn/motorbike-versions/April2023/2pSqu65qdei9HLkHfOtJ.png', 73290000, '0', 73290000, 'Khối lượng bản thân\r\n139kg\r\n\r\nDài x Rộng x Cao\r\n1.983 x 700 x 1.090 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.312 mm\r\n\r\nĐộ cao yên\r\n788 mm\r\n\r\nKhoảng sáng gầm xe\r\n151 mm\r\n\r\nDung tích bình xăng\r\n12 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nTrước: 100/80-17M/C\r\nSau: 130/70-17M/C\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực, hành trình ngược\r\n\r\nPhuộc sau\r\nLò xo trụ đơn sử dụng liên kết Pro-Link\r\n\r\nLoại động cơ\r\n4 kỳ, 1 xi lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n12,6kW/9.000 vòng/phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả 1,1 lít\r\nSau khi rã máy 1,3 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n2,91l/100km**\r\n\r\nHộp số\r\nCơ khí\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n14,4Nm/7.000 vòng/phút\r\n\r\nDung tích xy-lanh\r\n149,2 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n57,3 mm x 57,8 mm\r\n\r\nTỷ số nén\r\n11,3:1'),
(17, 'Honda', 'HDC002', 'HXC', 'Winner X', 'https://cdn.honda.com.vn/motorbike-versions/December2021/AjAslqMuYpko2d6wmuEs.png', 50060000, '0', 50060000, 'Khối lượng bản thân\r\n122kg\r\n\r\nDài x Rộng x Cao\r\n2.019 x 727 x 1.104 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.278 mm\r\n\r\nĐộ cao yên\r\n795 mm\r\n\r\nKhoảng sáng gầm xe\r\n151 mm\r\n\r\nDung tích bình xăng\r\n4,5 lít\r\n\r\nKích cỡ lớp trước/ sau\r\n\"Trước: 90/80-17M/C 46P\r\nSau: 120/70-17M/C 58P\"\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ đơn\r\n\r\nLoại động cơ\r\nPGM-FI, 4 kỳ, DOHC, xy-lanh đơn, côn 6 số, làm mát bằng dung dịch\r\n\r\nCông suất tối đa\r\n11,5kW/9.000 vòng/phút\r\n\r\nDung tích nhớt máy\r\n\"1,1 lít khi thay nhớt\r\n1,3 lít khi rã máy\"\r\n\r\nMức tiêu thụ nhiên liệu\r\n1,99l/100km\r\n\r\nLoại truyền động\r\nCơ khí\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\nĐiện\r\n\r\nDung tích xy-lanh\r\n149,1 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n57,3 mm x 57,8 mm\r\n\r\nTỷ số nén\r\n11,3:1'),
(18, 'Honda', 'HDC003', 'HXC', 'CB150R The Streetster', 'https://cdn.honda.com.vn/motorbike-versions/May2022/x8ZCNtM5g2QRGQl4udo8.png', 105500000, '0', 105500000, 'Khối lượng bản thân\r\n126 kg\r\n\r\nDài x Rộng x Cao\r\n1.973 x 822 x 1.053 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.295 mm\r\n\r\nĐộ cao yên\r\n802 mm\r\n\r\nKhoảng sáng gầm xe\r\n139 mm\r\n\r\nDung tích bình xăng\r\n8,5 L\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 110/70R17\r\nLốp sau: 150/60R17\r\n\r\nPhuộc trước\r\nỐng lồng, giảm chấn thủy lực\r\n\r\nPhuộc sau\r\nLò xo trụ đơn\r\n\r\nLoại động cơ\r\n4 kỳ, xi lanh đơn, làm mát bằng dung dịch\r\n\r\nCông suất tối đa\r\n12,0kW/9.500rpm\r\n\r\nDung tích nhớt máy\r\nSau khi xả 1,3L\r\nSau khi rã máy 1,5L\r\n\r\nMức tiêu thụ nhiên liệu\r\n2,79 l/100km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCôn tay 6 số, truyền động bằng xích tải\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n13,6 Nm\r\n\r\nDung tích xy-lanh\r\n149,2 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n57,3 x 57,8 mm\r\n\r\nTỷ số nén\r\n11,3 :1'),
(19, 'Honda', 'HDP001', 'HPKL', 'CB500X 2022', 'https://cdn.honda.com.vn/motorbikes/October2023/quGT1XtIfQj2PBxrpX2T.png', 194290000, '0', 194290000, 'Khối lượng bản thân\r\n199 kg\r\n\r\nDài x Rộng x Cao\r\n2.155 mm x 830 mm x 1.410 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.445 mm\r\n\r\nĐộ cao yên\r\n830 mm\r\n\r\nKhoảng sáng gầm xe\r\n180 mm\r\n\r\nDung tích bình xăng\r\n17,5 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 110/80R19\r\nLốp sau: 160/60R17\r\n\r\nPhuộc trước\r\nHành trình ngược Showa SFF-BP 41mm\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, giảm chấn thủy lực, 5 cấp độ điều chỉnh tải trước lò xo\r\n\r\nLoại động cơ\r\n4 kỳ, 2 xy-lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n35 kW tại 8.600 vòng/phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 2,4 lít\r\nSau khi xả và thay lọc nhớt động cơ: 2,6 lít\r\nSau khi rã máy: 3,1 lí\r\n\r\nMức tiêu thụ nhiên liệu\r\n3,59 lít/100 km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n43 Nm tại 6.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n471 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n67,0 mm x 66,8 mm\r\n\r\nTỷ số nén\r\n10,7:1'),
(20, 'Honda', 'HDP002', 'HPKL', 'Africa Twin 2023 Phiên Bản Tiêu Chuẩn', 'https://cdn.honda.com.vn/motorbikes/October2023/6ooA02eOUeAWtPvE9Zt1.png', 590990000, '0', 590990000, 'Khối lượng bản thân\r\n229 kg\r\n\r\nDài x Rộng x Cao\r\n2.330 mm x 960 mm x 1.395 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.575 mm\r\n\r\nĐộ cao yên\r\n850-870 mm\r\n\r\nKhoảng sáng gầm xe\r\n250 mm\r\n\r\nDung tích bình xăng\r\n18,8 Lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 90/90-21\r\nLốp sau: 150/70R18\r\n\r\nPhuộc trước\r\nGiảm xóc hành trình ngược Showa EERA đường kính 45mm, có khả năng điều chỉnh điện tử tải trước lò xo, độ nén và độ hồi\r\n\r\nPhuộc sau\r\nLò xo trụ đơn Showa EERA sử dụng liên kết Pro-link, có khả năng điều chỉnh điện tử tải trước lò xo, độ nén và độ hồi\r\n\r\nLoại động cơ\r\n4 kỳ, 2 xi-lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n75kW/ 7.500 vòng/ phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 3,9 lít\r\nSau khi xả và thay lọc dầu động cơ: 4,0 lít\r\nSau khi rã máy: 4,8 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n4,9 lít/100 km\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n105Nm/ 6.250 vòng/ phút\r\n\r\nDung tích xy-lanh\r\n1.084 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n92 x 81,5 mm\r\n\r\nTỷ số nén\r\n10,1:1'),
(21, 'Honda', 'HDP003', 'HPKL', 'Rebel 1100 2023', 'https://cdn.honda.com.vn/motorbikes/October2023/n73zke4swCzcIbAMaXGR.png', 449500000, '0', 449500000, 'Khối lượng bản thân\r\nTiêu chuẩn: 223 Kg\r\nDCT: 233 Kg\r\n\r\nDài x Rộng x Cao\r\nTiêu chuẩn: 2.240 x 853 x 1.115 mm\r\nDCT: 2.240 x 834 x 1.115 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.520 mm\r\n\r\nĐộ cao yên\r\n700 mm\r\n\r\nKhoảng sáng gầm xe\r\n120 mm\r\n\r\nDung tích bình xăng\r\n13,6 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 130/70B18\r\nLốp sau: 180/65B16\r\n\r\nPhuộc trước\r\nỐng lồng giảm chấn thủy lực đường kính 43mm, có thể điều chỉnh tải trước lò xo\r\n\r\nPhuộc sau\r\nLò xo trụ đôi, giảm chấn thủy lực với bình chứa khí nén ngoài, có thể điều chỉnh tải trước lò xo\r\n\r\nLoại động cơ\r\n4 kỳ, 2 xi lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n64 kW tại 7.000 vòng/phút\r\n\r\nDung tích nhớt máy\r\nTiêu chuẩn:\r\nSau khi xả: 3,9 lít\r\nSau khi xả và thay bộ lọc: 4,0 lít\r\nSau khi rã máy: 4,8 lít\r\n\r\nDCT:\r\nSau khi xả: 4,0 lít\r\nSau khi xả và thay bộ lọc: 4,2 lít\r\nSau khi rã máy: 5,2 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\nTiêu chuẩn: 5,22 lít/100 km\r\nDCT: 5,45 lít/100 km\r\n\r\nHộp số\r\nTiêu chuẩn: Côn tay 6 số\r\nDCT: Ly hợp kép 6 cấp DCT\r\n\r\nLoại truyền động\r\nTiêu chuẩn: Côn tay 6 số\r\nDCT: Hộp số ly hợp kép 6 cấp DCT\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n98 Nm tại 4.750 vòng/phút\r\n\r\nDung tích xy-lanh\r\n1.084 cm3\r\n\r\nĐường kính x Hành trình pít tông\r\n92,0 x 81,5 mm\r\n\r\nTỷ số nén\r\n10,1:1'),
(22, 'Honda', 'HDP004', 'HPKL', 'CB500F 2022', 'https://cdn.honda.com.vn/motorbikes/October2023/KoVcgsXj0BkN1fqJM5rK.png', 184990000, '0', 184990000, 'Khối lượng bản thân\r\n189 kg\r\n\r\nDài x Rộng x Cao\r\n2.080 mm x 800 mm x 1.060 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.410 mm\r\n\r\nĐộ cao yên\r\n785 mm\r\n\r\nKhoảng sáng gầm xe\r\n145 mm\r\n\r\nDung tích bình xăng\r\n17,1 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 120/70ZR17\r\nLốp sau: 160/60ZR17\r\n\r\nPhuộc trước\r\nHành trình ngược Showa SFF-BP 41mm\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, giảm chấn thủy lực, 5 cấp độ điều chỉnh tải trước lò xo\r\n\r\nLoại động cơ\r\n4 kỳ, 2 xy-lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n35 kW tại 8.600 vòng/phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 2,5 lít\r\nSau khi xả và thay lọc nhớt động cơ: 2,7 lít\r\nSau khi rã máy: 3,2 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n3,59 lít/100 km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n43 Nm tại 6.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n471 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n67,0 mm x 66,8 mm\r\n\r\nTỷ số nén\r\n10,7:1'),
(23, 'Honda', 'HDP005', 'HPLK', '', 'https://cdn.honda.com.vn/motorbikes/October2023/7rOlMfg1nces2UVvpdYz.png', 720990000, '', 720990000, 'Khối lượng bản thân\r\n250 kg\r\n\r\nDài x Rộng x Cao\r\n2.330 mm x 960 mm x 1.545 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.575 mm\r\n\r\nĐộ cao yên\r\n850-870 mm\r\n\r\nKhoảng sáng gầm xe\r\n250 mm\r\n\r\nDung tích bình xăng\r\n24,8 Lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 90/90-21\r\nLốp sau: 150/70R18\r\n\r\nPhuộc trước\r\nGiảm xóc hành trình ngược Showa EERA đường kính 45mm, có khả năng điều chỉnh điện tử tải trước lò xo, độ nén và độ hồi\r\n\r\nPhuộc sau\r\nLò xo trụ đơn Showa EERA sử dụng liên kết Pro-link, có khả năng điều chỉnh điện tử tải trước lò xo, độ nén và độ hồi\r\n\r\nLoại động cơ\r\n4 kỳ, 2 xi-lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n75kW/ 7.500 vòng/ phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 4 lít\r\nSau khi xả và thay lọc dầu động cơ: 4,2 lít\r\nSau khi xả, thay lọc dầu động cơ và lọc dầu ly hợp: 4,2 lít\r\nSau khi rã máy: 5,2 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n4,8 lít/100 km\r\n\r\nLoại truyền động\r\nHộp số tự động ly hợp kép 6 cấp DCT\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n105Nm/ 6.250 vòng/ phút\r\n\r\nDung tích xy-lanh\r\n1.084 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n92 x 81,5 mm\r\n\r\nTỷ số nén\r\n10,1:1'),
(24, 'Honda', 'HDP006', 'PKL', 'CBR1000RR-R Fireblade SP', 'https://cdn.honda.com.vn/motorbikes/October2023/3rUd85ujREsR7cF6cA2g.png', 1050500000, '', 1050500000, 'Khối lượng bản thân\r\n201kg\r\n\r\nDài x Rộng x Cao\r\n2.100mm x 745mm x 1.140mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.455mm\r\n\r\nĐộ cao yên\r\n830mm\r\n\r\nKhoảng sáng gầm xe\r\n115mm\r\n\r\nDung tích bình xăng\r\n16,1 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 120/70-ZR17\r\nLốp sau: 200/55-ZR17\r\n\r\nPhuộc trước\r\nGiảm xóc ống lồng ngược điều khiển điện tử Ohlins NPX Smart-EC, đường kính 43mm\r\n\r\nPhuộc sau\r\nGiảm xóc trụ đơn điều khiển điện tử Ohlins TTX36 Smart-EC, với liên kết Pro-Link\r\n\r\nLoại động cơ\r\n4 xy lanh thẳng hàng, PGM-FI, 4 kỳ, làm mát bằng chất lỏng, DOHC 16 van\r\n\r\nCông suất tối đa\r\n160Kw/14.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\n2,8 lít (sau khi xả nhớt)\r\n3,0 lít (sau khi xả nhớt và thay lọc dầu)\r\n\r\nMức tiêu thụ nhiên liệu\r\n6,3 lít / 100km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCơ khí\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n113Nm/12.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n1.000 cm³\r\n\r\nĐường kính x Hành trình pít tông\r\n81 x 48,5mm\r\n\r\nTỷ số nén\r\n13,2:1'),
(25, 'Honda', 'HDP007', 'PKL', 'CBR1000RR-R Fireblade', 'https://cdn.honda.com.vn/motorbikes/October2023/sPpArs7t8H0bmhfmIGin.png', 950500000, '', 950500000, 'Khối lượng bản thân\r\n201kg\r\n\r\nDài x Rộng x Cao\r\n2.100mm x 745mm x 1.140mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.455mm\r\n\r\nĐộ cao yên\r\n830mm\r\n\r\nKhoảng sáng gầm xe\r\n115mm\r\n\r\nDung tích bình xăng\r\n16,1 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 120/70-ZR17\r\nLốp sau: 200/55-ZR17\r\n\r\nPhuộc trước\r\nGiảm xóc ống lồng ngược Showa BPF, đường kính 43mm\r\n\r\nPhuộc sau\r\nGiảm xóc trụ đơn Showa BFRC-L, với liên kết Unit Pro-Link.\r\n\r\nLoại động cơ\r\n4 xy lanh thẳng hàng, PGM-FI, 4 kỳ, làm mát bằng chất lỏng, DOHC 16 van\r\n\r\nCông suất tối đa\r\n160Kw/14.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\n2,8 lít (sau khi xả nhớt)\r\n3,0 lít (sau khi xả nhớt và thay lọc dầu)\r\n\r\nMức tiêu thụ nhiên liệu\r\n6,3 lít / 100km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCơ khí\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n113Nm/12.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n1.000 cm³\r\n\r\nĐường kính x Hành trình pít tông\r\n81 x 48,5mm\r\n\r\nTỷ số nén\r\n13,2:1'),
(26, 'Honda', 'HDP008', 'HPKL', 'Transalp', 'https://cdn.honda.com.vn/motorbikes/September2023/wTXKIEbB7tsMBSfYmYTU.jpg', 309000000, '0', 309000000, 'Khối lượng bản thân\r\n208 kg\r\n\r\nDài x Rộng x Cao\r\n2.325 x 838 x 1.450 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.560 mm\r\n\r\nĐộ cao yên\r\n850 mm\r\n\r\nKhoảng sáng gầm xe\r\n210mm\r\n\r\nDung tích bình xăng\r\n16,9 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 90/90-21\r\nLốp sau: 150/70R18\r\n\r\nPhuộc trước\r\nGiảm xóc hành trình ngược Showa SFF-CA đường kính 43mm, hành trình 200 mm\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, liên kết Pro-Link, hành trình 190 mm\r\n\r\nLoại động cơ\r\n4 kỳ, 2 xi lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n67 kW tại 9.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 3,4 lít\r\nSau khi xả & thay bộ lọc dầu động cơ: 3,6 lít\r\nSau khi rã máy: 3,9 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n4,7 lít/100 km\r\n\r\nHộp số\r\nCôn tay 6 số\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n75 Nm tại 7.250 vòng/phút\r\n\r\nDung tích xy-lanh\r\n755 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n87,0 x 63,5 mm\r\n\r\nTỷ số nén\r\n11,0:1'),
(27, 'Honda', 'HDP009', 'HPKL', 'Gold Wing 2023', 'https://cdn.honda.com.vn/motorbikes/May2023/ZzWCbL9SRuvbN0TQj5we.jpg', 1231500000, '0', 1231500000, 'Khối lượng bản thân\r\n390 kg\r\n\r\nDài x Rộng x Cao\r\n2.615 x 905 x 1.555 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.695 mm\r\n\r\nĐộ cao yên\r\n745 mm\r\n\r\nKhoảng sáng gầm xe\r\n130 mm\r\n\r\nDung tích bình xăng\r\n21 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 130/70R18\r\nLốp sau: 200/55R16\r\n\r\nPhuộc trước\r\nLò xo trụ đơn, thanh giằng kép\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, liên kết Pro-Link\r\n\r\nLoại động cơ\r\n4 kỳ, 6 xi lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n93 kW tại 5.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 4,4 lít\r\nSau khi xả & thay bộ lọc dầu động cơ: 4,6 lít\r\nSau khi xả, thay bộ lọc dầu động cơ & dầu ly hợp: 4,6 lít\r\nSau khi rã máy: 5,6 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n5,73 lít/100 km\r\n\r\nHộp số\r\nLy hợp kép 7 cấp DCT\r\n\r\nLoại truyền động\r\nHộp số ly hợp kép 7 cấp DCT\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n170 Nm tại 4.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n1.833 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n73,0 x 73,0 mm\r\n\r\nTỷ số nén\r\n10,5:1'),
(28, 'Honda', 'HDP010', 'HPKL', 'Rebel 500 2023', 'https://cdn.honda.com.vn/motorbikes/January2023/S3Ysdrau5PWShFsDmMyX.jpg', 181300000, '0', 181300000, 'Khối lượng bản thân\r\n190 kg\r\n\r\nDài x Rộng x Cao\r\n2.206 x 822 x 1.093 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.490 mm\r\n\r\nĐộ cao yên\r\n690 mm\r\n\r\nKhoảng sáng gầm xe\r\n136 mm\r\n\r\nDung tích bình xăng\r\n11,2 Lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 130/90-16M/C 67H\r\nLốp sau: 150/80-16M/C 71H\r\n\r\nPhuộc trước\r\nỐng lồng giảm chấn thủy lực đường kính 41 mm\r\n\r\nPhuộc sau\r\nLò xo trụ đôi, giảm chấn thủy lực, nén khí ni-tơ\r\n\r\nLoại động cơ\r\nDOHC, 4 kỳ, 2 xy-lanh, PGM-FI, làm mát bằng chất lỏng.\r\n\r\nCông suất tối đa\r\n33,5 kW tại 8500 vòng/phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 2,5 lít\r\nSau khi xả và thay lọc dầu động cơ: 2,7 lít\r\nSau khi rã máy: 3,2 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n3,85 lít/100km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n43,3 Nm tại 6000 vòng/phút\r\n\r\nDung tích xy-lanh\r\n471 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n67 x 66,8 mm\r\n\r\nTỷ số nén\r\n10,7:1'),
(29, 'Honda', 'HDP011', 'HPKL', 'CB1000R 2023', 'https://cdn.honda.com.vn/motorbikes/January2023/ufm1UvQnev4dkXoPMhHh.jpg', 510500000, '0', 510500000, 'Khối lượng bản thân\r\n213 kg\r\n\r\nDài x Rộng x Cao\r\n2.120 x 789 x 1.090 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.455 mm\r\n\r\nĐộ cao yên\r\n830 mm\r\n\r\nKhoảng sáng gầm xe\r\n135 mm\r\n\r\nDung tích bình xăng\r\n16,2 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 120/70ZR17\r\nLốp sau: 190/55ZR17\r\n\r\nPhuộc trước\r\nGiảm xóc hành trình ngược USD Showa SFF-BP\r\n\r\nPhuộc sau\r\nGiảm xóc đơn Showa\r\n\r\nLoại động cơ\r\n4 kỳ, 4 xy-lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n107 kW tại 10.500 vòng/phút\r\n\r\nDung tích nhớt máy\r\nKhi xả nhớt: 2,6 lít\r\nKhi xả nhớt và thay lọc nhớt động cơ: 2,9 lít\r\nKhi rã máy: 3,5 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n5,95 lít/100km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCôn tay, 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n104 Nm tại 8.250 vòng/phút\r\n\r\nDung tích xy-lanh\r\n998 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n75,0 x 56,5 mm\r\n\r\nTỷ số nén\r\n11,6:1'),
(30, 'Honda', 'HDP012', 'HPKL', 'CBR650R Phiên Bản 2023', 'https://cdn.honda.com.vn/motorbikes/March2023/Ym5pnW4Rl3b3YQ9H2o0O.jpg', 254990000, '1', 203992000, 'Khối lượng bản thân\r\n207 kg\r\n\r\nDài x Rộng x Cao\r\n2.128 mm x 749 mm x 1.149 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.449 mm\r\n\r\nĐộ cao yên\r\n810 mm\r\n\r\nKhoảng sáng gầm xe\r\n130 mm\r\n\r\nDung tích bình xăng\r\n15 Lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 120/70ZR17\r\nLốp sau: 180/55ZR17\r\n\r\nPhuộc trước\r\nGiảm xóc hành trình ngược Showa SFF-BP, 41mm\r\n\r\nPhuộc sau\r\nLò trụ đơn với tải trước lò xo 10 cấp điều chỉnh\r\n\r\nLoại động cơ\r\n4 kỳ, 4 xy lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n61,7 kW/ 10.000 vòng/ phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 2,3 lít\r\nSau khi xả và thay lọc dầu động cơ: 2,6 lít\r\nSa khi rã máy: 3,0 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n5,17 lít/ 100km\r\n\r\nHộp số\r\n6 số\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n63 Nm/ 9.500 vòng/ phút\r\n\r\nDung tích xy-lanh\r\n649 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n67,0 x 46,0 mm\r\n\r\nTỷ số nén\r\n11,6:1'),
(31, 'Honda', 'HDP013', 'HPKL', 'CB650R Phiên Bản 2023', 'https://cdn.honda.com.vn/motorbikes/March2023/NnsT5Mn6MTfrZassCFYd.jpg', 246990000, '0', 246990000, 'Khối lượng bản thân\r\n202 kg\r\n\r\nDài x Rộng x Cao\r\n2.128 mm x 784 mm x 1.076 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.449 mm\r\n\r\nĐộ cao yên\r\n810 mm\r\n\r\nKhoảng sáng gầm xe\r\n150 mm\r\n\r\nDung tích bình xăng\r\n15 Lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 120/70ZR17\r\nLốp sau: 180/55ZR17\r\n\r\nPhuộc trước\r\nGiảm xóc hành trình ngược Showa SFF-BP, 41mm\r\n\r\nPhuộc sau\r\nLò xo trụ đơn với tải trước lò xo 10 cấp điều chỉnh\r\n\r\nLoại động cơ\r\n4 kỳ, 4 xy lanh, làm máy bằng chất lỏng\r\n\r\nCông suất tối đa\r\n61,7 kW/ 10.000 vòng/ phút\r\n\r\nDung tích nhớt máy\r\nSau khi xả: 2,3 lít\r\nSau khi xả và thay lọc dầu động cơ: 2,6 lít\r\nSa khi rã máy: 3,0 lít\r\n\r\nMức tiêu thụ nhiên liệu\r\n4,99 lít/100km\r\n\r\nHộp số\r\n6 số\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n63 Nm/ 9.500 vòng/ phút\r\n\r\nDung tích xy-lanh\r\n649 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n67,0 x 46,0 mm\r\n\r\nTỷ số nén\r\n11,6:1'),
(32, 'Honda', 'HDP014', 'HPKL', 'CBR500R 2022', 'https://cdn.honda.com.vn/motorbikes/September2022/wv6DBlyu0DLd4DeEFQVU.jpg', 192990000, '0', 192990000, 'Khối lượng bản thân\r\n192 kg\r\n\r\nDài x Rộng x Cao\r\n2.080 mm x 760 mm x 1.145 mm\r\n\r\nKhoảng cách trục bánh xe\r\n1.410 mm\r\n\r\nĐộ cao yên\r\n785 mm\r\n\r\nKhoảng sáng gầm xe\r\n130 mm\r\n\r\nDung tích bình xăng\r\n17,1 lít\r\n\r\nKích cỡ lớp trước/ sau\r\nLốp trước: 120/70ZR17\r\nLốp sau: 160/60ZR17\r\n\r\nPhuộc trước\r\nHành trình ngược Showa SFF-BP 41mm\r\n\r\nPhuộc sau\r\nLò xo trụ đơn, giảm chấn thủy lực, 5 cấp độ điều chỉnh tải trước lò xo\r\n\r\nLoại động cơ\r\n4 kỳ, 2 xy-lanh, làm mát bằng chất lỏng\r\n\r\nCông suất tối đa\r\n35 kW tại 8.600 vòng/phút\r\n\r\nDung tích nhớt máy\r\n43 Nm tại 6.500 vòng/phút\r\n\r\nMức tiêu thụ nhiên liệu\r\n3,59 lít/100 km\r\n\r\nHộp số\r\n6 cấp\r\n\r\nLoại truyền động\r\nCôn tay 6 số\r\n\r\nHệ thống khởi động\r\nĐiện\r\n\r\nMoment cực đại\r\n43 Nm tại 6.500 vòng/phút\r\n\r\nDung tích xy-lanh\r\n471 cc\r\n\r\nĐường kính x Hành trình pít tông\r\n67,0 mm x 66,8 mm\r\n\r\nTỷ số nén\r\n10,7:1'),
(34, 'Yamaha', 'YS002', 'YXS', 'JUPITER FI', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/11/Jupiter-Mat-Red-004-300x240.png', 30240000, '0', 30240000, 'Loại	\r\n4 kỳ, 2 van, SOHC, làm mát bằng không khí tự nhiên\r\n\r\nBố trí xi lanh	\r\nXy lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n113.7\r\n\r\nĐường kính và hành trình piston	\r\n50,0mm x 57,9mm\r\n\r\nTỷ số nén	\r\n9,3:1\r\n\r\nCông suất tối đa	\r\n7,4/7.750 kW/rpm\r\n\r\nMô men xoắn cực đại	\r\n9,9 N.m (0,99kgf.m) / 6.500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện / Cần khởi động\r\n\r\nHệ thống bôi trơn	\r\nCác-te ướt\r\n\r\nDung tích dầu máy	\r\n1,0 lít\r\n\r\nDung tích bình xăng	\r\n4,1 lít\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	1,643\r\n\r\nHệ thống đánh lửa	\r\nT.C.I (kỹ thuật số)\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	\r\n2,900 (58/20) / 3,154 (41/13)\r\n\r\nHệ thống ly hợp	\r\nĐa đĩa, ly tâm loại ướt\r\n\r\nTỷ số truyền động	\r\n1: 2,833 2: 1,875 3: 1,353 4: 1,045\r\n\r\nKiểu hệ thống truyền lực	\r\n4 số tròn'),
(35, 'Yamaha', 'YS003', 'YXS', 'JUPITER FINN', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/07/Jupiter-Finn-Urban-Blue-004-300x240.png', 27687000, '0', 27687000, 'Loại	\r\n4 thì, 2 van, SOHC, làm mát bằng không khí\r\n\r\nBố trí xi lanh	\r\nXi lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n113.7 cm3\r\n\r\nĐường kính và hành trình piston	\r\n50.0 x 57.9 mm\r\n\r\nTỷ số nén	\r\n9.3 : 1\r\n\r\nCông suất tối đa	\r\n6.6 kW (9.0 PS)/7000 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n9.2 Nm (0.9 kgf/m)/5500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện và cần đạp\r\n\r\nHệ thống bôi trơn	\r\nCác-te ướt, áp suất\r\n\r\nDung tích dầu máy	\r\n1.0 L\r\n\r\nDung tích bình xăng	\r\n4.0 L\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	1,64\r\n\r\nHệ thống đánh lửa	\r\nTCI (Transistor controlled ignition)\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	\r\n2900 (58/20)/2.857 (40/14)\r\n\r\nHệ thống ly hợp	\r\nĐa đĩa, ly tâm loại ướt\r\n\r\nKiểu hệ thống truyền lực\r\n4 số dạng quay vòng'),
(36, 'Yamaha', 'YS004', 'YXS', 'SIRIUS', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2023/05/Si-Red-Black-004-300x240.png', 18949000, '1', 15159200, 'Loại	\r\n4 thì, 2 van SOHC, làm mát bằng không khí\r\n\r\nBố trí xi lanh	\r\nXi lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n110.3\r\n\r\nĐường kính và hành trình piston	\r\n50.0×57.9 mm\r\n\r\nTỷ số nén	\r\n9,3:1\r\n\r\nCông suất tối đa	\r\n5.9/8,000 kW/rpm\r\n\r\nMô men xoắn cực đại	\r\n9.5 N.m (0.97kgf/m)/5,500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện / Cần khởi động\r\n\r\nHệ thống bôi trơn	\r\nCác te ướt\r\n\r\nDung tích dầu máy	\r\n1 L\r\n\r\nDung tích bình xăng	\r\n4,2 lít\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	2,08\r\n\r\nHệ thống đánh lửa	\r\nT.C.I (kỹ thuật số)\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	\r\n3,722 (67/18) / 2,333 (35/15)\r\n\r\nHệ thống ly hợp	\r\nĐa đĩa, Ly tâm loại ướt\r\n\r\nTỷ số truyền động	\r\n1: 3,167 2: 1,941 3: 1,381 4: 1,095\r\n\r\nKiểu hệ thống truyền lực	\r\n4 số tròn'),
(37, 'Yamaha', 'YS005', 'YXS', 'SIRIUS FI', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/09/RC-Black-Metallic-Y-004-copy-300x240.png', 23957000, '0', 23957000, 'Loại	\r\n4 thì, 2 van, SOHC, làm mát bằng không khí\r\n\r\nBố trí xi lanh	\r\nXy-lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n113.7 cm3\r\n\r\nĐường kính và hành trình piston	\r\n50.0 × 57.9 mm\r\n\r\nTỷ số nén	\r\n9.3:1\r\n\r\nCông suất tối đa	\r\n6,4 kW (8.7 PS) / 7,000 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n9,5 N.m (0.97 kgf/m) / 5,500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện và Cần đạp\r\n\r\nHệ thống bôi trơn	\r\nCác-te ướt, áp suất\r\n\r\nDung tích dầu máy	\r\n1.0L\r\n\r\nDung tích bình xăng	\r\n4.0L\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	1,65\r\n\r\nHệ thống đánh lửa	\r\nT.C.I\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	\r\n2.900 (58/20) / 2.857 (40/14)\r\n\r\nHệ thống ly hợp	\r\nĐa đĩa, ly tâm loại ướt\r\n\r\nTỷ số truyền động	\r\n1st: 2.833 (34/12) 2nd: 1.875 (30/16) 3rd: 1.353 (23/17) 4th: 1.045 (23/22)\r\n\r\nKiểu hệ thống truyền lực	\r\n4 số dạng quay vòng'),
(38, 'Yamaha', 'YG001', 'YXG', 'FREEGO', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/FreeGo-Mat-Red-SMK-004-300x240.png', 34069000, '0', 34069000, 'Loại	\r\nBlue Core, 4 kỳ, 2 van, SOHC, Làm mát bằng không khí cưỡng bức\r\n\r\nBố trí xi lanh	\r\nXy - lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n124.9\r\n\r\nĐường kính và hành trình piston	\r\n52,4 × 57,9 mm\r\n\r\nTỷ số nén	\r\n9,5:1\r\n\r\nCông suất tối đa	\r\n7,0 kW (9,5 PS) / 8.000 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n9,5 N·m (1,0 kgf·m) / 5.500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện\r\n\r\nHệ thống bôi trơn	\r\nCác te ướt\r\n\r\nDung tích dầu máy	\r\n0,84 L\r\n\r\nDung tích bình xăng	\r\n4,2 L\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	2,03\r\n\r\nHệ thống đánh lửa	\r\nT.C.I (kỹ thuật số)\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	1,000/10,156 (50/16 x 39/12)\r\n\r\nHệ thống ly hợp	\r\nKhô, ly tâm tự động\r\n\r\nTỷ số truyền động	\r\n2,420 - 0,810 : 1\r\n\r\nKiểu hệ thống truyền lực	\r\nCVT'),
(39, 'Yamaha', 'YG002', 'YXG', 'GRANDE', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/09/New-Grande-Premium-Cyan-004-300x225.png', 51546000, '0', 51546000, 'Loại	\r\nBlue Core Hybrid, làm mát bằng không khí, 4 thì, 2 van, xy-lanh đơn\r\n\r\nBố trí xi lanh	\r\nXy lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n124.9 cc\r\n\r\nĐường kính và hành trình piston	\r\n52.4 x 57.9 mm\r\n\r\nTỷ số nén	\r\n11.0 : 1\r\n\r\nCông suất tối đa	\r\n6.05/6.500 kW/rpm\r\n\r\nMô men xoắn cực đại	\r\n10.4 Nm (1.1 kgf.m)/5000 vòng/phút\r\n\r\nHệ thống khởi động	\r\nKhởi động điện\r\n\r\nHệ thống bôi trơn	\r\nDầu bôi trơn\r\n\r\nDung tích dầu máy	\r\n0,84 L\r\n\r\nDung tích bình xăng	\r\n4.0 L\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	1.66\r\n\r\nHệ thống đánh lửa	\r\nT.C.I (kỹ thuật số)\r\n\r\nHệ thống ly hợp	\r\nKhô\r\n\r\nTỷ số truyền động	\r\n2.216-0.748 :1'),
(40, 'Yamaha', 'YG003', 'YXG', 'LATTE', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2020/05/Latte-Yamaha-300x240.png', 38095000, '0', 38095000, 'Loại	\r\nBlue Core, 2 van, 4 kỳ, SOHC, Làm mát bằng không khí cưỡng bức\r\n\r\nBố trí xi lanh	\r\nXi lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n124.9 cc\r\n\r\nĐường kính và hành trình piston	\r\n52.4 x 57.9\r\n\r\nTỷ số nén	\r\n11 : 1\r\n\r\nCông suất tối đa	\r\n6.05/6.500 kW/rpm\r\n\r\nMô men xoắn cực đại	\r\n9,7 N.m (0,97 kgf·m) / 5.000 vòng/phút\r\n\r\nHệ thống khởi động	\r\nKhởi động điện\r\n\r\nHệ thống bôi trơn	\r\nCác te ướt\r\n\r\nDung tích dầu máy	\r\n0,84 L\r\n\r\nDung tích bình xăng	\r\n5,5 L\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	1,80\r\n\r\nHệ thống đánh lửa	\r\nT.C.I (kỹ thuật số)\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	1,000/7,500 (50/16 x 36/15)\r\n\r\nHệ thống ly hợp	\r\nKhô, ly tâm tự động\r\n\r\nTỷ số truyền động	\r\n2,286 - 0,770 : 1\r\n\r\nKiểu hệ thống truyền lực	\r\nCVT'),
(41, 'Yamaha', 'YG004', 'YXG', 'JANUS', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/New-Janus-Light-Blue-Metallic-SMK-004-300x240.png', 29751000, '0', 29751000, 'Loại	\r\nBlue Core, 4 thì, 2 van, SOHC, Làm mát bằng không khí cưỡng bức\r\n\r\nBố trí xi lanh	\r\nXy lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n124.9 cc\r\n\r\nĐường kính và hành trình piston	\r\n52,4 mm x 57,9 mm\r\n\r\nTỷ số nén	\r\n9,5 : 1\r\n\r\nCông suất tối đa	\r\n7,0 kW (9,5 ps)/8.000 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n9.6 Nm (1.0 kgf-m)/5500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện\r\n\r\nHệ thống bôi trơn	\r\nCác te ướt\r\n\r\nDung tích dầu máy	\r\n0,84 L\r\n\r\nDung tích bình xăng	\r\n4,2 L\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	1,87\r\n\r\nHệ thống đánh lửa	\r\nT.C.I (kỹ thuật số)\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	1,000/10,156 (50/16 x 39/12)\r\n\r\nHệ thống ly hợp	\r\nKhô, ly tâm tự động\r\n\r\nTỷ số truyền động	\r\n2,294 - 0,804 : 1\r\n\r\nKiểu hệ thống truyền lực	\r\nDây đai V tự động\r\n\r\nHệ thống làm mát	\r\nLàm mát bằng không khí'),
(42, 'Yamaha', 'YG005', 'YXG', 'NVX 155 VVA', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/09/NVX-155VVA-Mat-Black-004-300x225.png', 56000000, '1', 44800000, 'Loại	\r\nBlue Core, 4 thì, 4 van, SOHC, làm mát bằng dung dịch\r\n\r\nBố trí xi lanh	\r\nXy lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n155,1 cc\r\n\r\nĐường kính và hành trình piston	\r\n58 x 58,7mm\r\n\r\nTỷ số nén	\r\n11,6:1\r\n\r\nCông suất tối đa	\r\n11,3kW (15,4 PS)/8.000 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n13,9 N.m (1,4kgf.m)/6.500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện\r\n\r\nDung tích bình xăng	\r\n5,5 lít\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	2,19\r\n\r\nTỷ số truyền động	\r\n2,300-0,724:1\r\n\r\nKiểu hệ thống truyền lực	\r\nCVT'),
(43, 'Yamaha', 'YP001', 'YPKL', 'XS155R', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/12/XSR-155-Silver-Mat-004-300x225.png', 77000000, '0', 77000000, 'Loại	\r\nĐộng cơ 4 thì, làm mát bằng dung dịch, SOHC, xy-lanh đơn 4 van\r\n\r\nBố trí xi lanh	\r\nXi lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n155.1\r\n\r\nTỷ số nén	\r\n11.6:1\r\n\r\nCông suất tối đa	\r\n14.2 kW (19.3 PS)/10,000 r/min\r\n\r\nMô men xoắn cực đại	\r\n14.7 N・m (1.5 kgf・m) / 8,500 r/min\r\n\r\nHệ thống khởi động	\r\nKhởi động bằng điện\r\n\r\nHệ thống bôi trơn	\r\nLoại cát te ướt\r\n\r\nDung tích bình xăng	\r\n10 L (2.6 US gal./2.2 Imp. Gal)\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	\r\n2\r\n\r\nBộ chế hòa khí	\r\nPhun xăng điện tử (FI)\r\n\r\nHệ thống đánh lửa	\r\nTCI (Hệ thống đánh lửa bán dẫn)\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	\r\n3.042 (73/24) / 3.429 (48/14)\r\n\r\nĐường kính xy lanh	\r\n58.0×58.7 mm\r\n\r\nTổng lượng dầu (khi tháo rã)	\r\n1.05 L (1.10 US qt./0.92 Imp. qt)\r\n\r\nĐiện áp ắc quy	\r\n12V,3.0Ah (10 HR)\r\n\r\nBộ ly hợp	\r\nƯớt, đa đĩa\r\n\r\nTỉ lệ chuyển động (thứ 1 – thứ 6)	1st: 2.833, 2nd: 1.875, 3rd: 1.364, 4th: 1.143, 5th: 0.957, 6th: 0.840'),
(44, 'Yamaha', 'YP002', 'YPKL', 'MT-03', 'https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/03/2021_MTN320-A_PGD_USA_MT-03_Storm-Fluo_360_029-2-300x240.png', 129000000, '0', 129000000, 'Loại	\r\n4 thì, 8 van, 2 xy lanh, làm mát bằng dung dịch, DOHC\r\n\r\nBố trí xi lanh	\r\n2 xy lanh thẳng hàng\r\n\r\nDung tích xy lanh (CC)	\r\n321\r\n\r\nĐường kính và hành trình piston	\r\n68 mm x 44,1 mm\r\n\r\nTỷ số nén	\r\n11,2:1\r\n\r\nCông suất tối đa	\r\n30,9 kW (42,0PS)/ 10.750 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n29,6 Nm (3,0 kgf.m)/ 9.000 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện\r\n\r\nHệ thống bôi trơn	\r\nCác te ướt\r\n\r\nDung tích dầu máy	\r\n2,4 lít\r\n\r\nDung tích bình xăng	\r\n14 lít\r\n\r\nBộ chế hòa khí	\r\nHệ thống phun xăng điện tử\r\n\r\nHệ thống đánh lửa	\r\nTCI\r\n\r\nHệ thống ly hợp	\r\nĐa đĩa, ly tâm loại ướt\r\n\r\nTỷ số truyền động	\r\n2,50 - 0,78\r\n\r\nKiểu hệ thống truyền lực	\r\nBánh răng ăn khớp, 6 số'),
(45, 'Yamaha', 'YP003', 'YPKL', 'MT-15', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2023/06/MT-15-B8D9-xanh-den-goc-1.png.webp', 69000000, '0', 69000000, 'Loại	\r\n4 thì, 1 xylanh, SOHC, làm mát bằng chất lỏng\r\n\r\nBố trí xi lanh	\r\nxy lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n155,2cc\r\n\r\nĐường kính và hành trình piston	\r\n58 x 58,7 mm\r\n\r\nTỷ số nén	\r\n11,6 : 1\r\n\r\nCông suất tối đa	\r\n14,2 kW (19,3 PS)/10.000 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n14,7 N.m (1,5kgf.m)/8.500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện\r\n\r\nDung tích dầu máy	\r\n1,05 lít\r\n\r\nDung tích bình xăng	\r\n10 lít\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	1,94\r\n\r\nBộ chế hòa khí	\r\nHệ thống phun xăng điện tử\r\n\r\nHệ thống đánh lửa	\r\nTCI\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	\r\n3,042 - 3,714\r\n\r\nHệ thống ly hợp	\r\nLy hợp ướt, đa đĩa\r\n\r\nKiểu hệ thống truyền lực	\r\nBánh răng ăn khớp, 6 số'),
(46, 'Yamaha', 'YP004', 'YPKL', 'YZF-R15', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2022/09/R15-GP-004.png.webp', 78000000, '0', 78000000, 'Loại	\r\n4 thì, 4 van, SOHC, 1 xy-lanh, làm mát bằng dung dịch, van biến thiên VVA\r\n\r\nBố trí xi lanh	\r\nXy-lanh đơn\r\n\r\nDung tích xy lanh (CC)	\r\n155.1\r\n\r\nĐường kính và hành trình piston	\r\n58.0 x 58.7 mm\r\n\r\nTỷ số nén	\r\n11.6:1\r\n\r\nCông suất tối đa	\r\n14.2 kW (19.3 PS)/10000 vòng/phút\r\n\r\nMô men xoắn cực đại	\r\n14.7 N.m (1.5 kgf.m)/8500 vòng/phút\r\n\r\nHệ thống khởi động	\r\nĐiện\r\n\r\nHệ thống bôi trơn	\r\nCácte ướt\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	2.29\r\n\r\nBộ chế hòa khí	\r\nHệ thống phun xăng điện tử\r\n\r\nHệ thống đánh lửa	\r\nTCI\r\n\r\nTỷ số truyền sơ cấp và thứ cấp	\r\n3.042 (73/24) / 3.429 (48/14)\r\n\r\nHệ thống ly hợp	\r\nLy hợp ướt đa đĩa\r\n\r\nTỷ số truyền động theo cấp số \r\n1: 2.833 (34/12) / 2: 1.875 (30/16) / 3: 1.364 (30/22) / 4: 1.143 (24/21) / 5: 0.957 (22/23) / 6: 0.840 (21/25)\r\n\r\nKiểu hệ thống truyền lực	\r\nBánh răng ăn khớp, 6 số'),
(47, 'Yamaha', 'YP005', 'YPKL', 'YZF-R3', 'https://yamaha-motor.com.vn/wp/wp-content/webp-express/webp-images/doc-root/wp/wp-content/uploads/2023/03/R3_GP-240-1.png.webp', 132000000, '0', 132000000, 'Loại	\r\n4 thì, 2 xy lanh, 8 van, làm mát bằng dung dịch, DOHC\r\n\r\nBố trí xi lanh	\r\n2 xy lanh thẳng hàng\r\n\r\nDung tích xy lanh (CC)	\r\n321\r\n\r\nĐường kính và hành trình piston	\r\n68,0 mm x 44,1 mm\r\n\r\nTỷ số nén	\r\n11,2:1\r\n\r\nCông suất tối đa	\r\n30.9 kW/ 10.750 vòng/ phút\r\n\r\nMô men xoắn cực đại	\r\n29.6 Nm/ 9.000 vòng/ phút\r\n\r\nHệ thống khởi động	\r\nĐiện\r\n\r\nHệ thống bôi trơn	\r\nCác-te ướt\r\n\r\nMức tiêu thụ nhiên liệu (l/100km)	3,62\r\n\r\nBộ chế hòa khí	\r\nHệ thống phun xăng điện tử\r\n\r\nHệ thống đánh lửa	\r\nTCI\r\n\r\nHệ thống ly hợp	\r\nĐa đĩa, ly tâm loại ướt\r\n\r\nTỷ số truyền động	\r\n2,50 – 0,78\r\n\r\nKiểu hệ thống truyền lực	\r\nBánh răng ăn khớp, 6 số'),
(48, 'Kawasaki', 'KP001', 'KYPKL', '', 'https://content2.kawasaki.com/ContentStorage/KMV/ProductTrimGroup/63/144fc3e3-a254-46a8-9575-1aa60dde5c7f.png?w=300', 171600000, '', 171600000, 'Kích thước	\r\n1.990 x 710 x 1.120 mm\r\n\r\nĐộ cao gầm xe	\r\n140 mm\r\n\r\nChiều cao yên	\r\n785 mm\r\n\r\nTrọng lượng	\r\n168 kg\r\n\r\nDung tích bình xăng	\r\n14 litres\r\n\r\nMức tiêu hao nhiên liệu	\r\n4,1 L/100km\r\n\r\nBảo hành	\r\n24 tháng\r\n\r\nHT Nhiên liệu	\r\nPhun xăng');
INSERT INTO `products` (`id`, `catalogue`, `msp`, `type`, `product_name`, `product_img`, `price`, `sale`, `product_price`, `product_description`) VALUES
(49, 'Kawasaki', 'KP002', 'PKL', 'NINJA H2', 'https://content2.kawasaki.com/ContentStorage/KMV/ProductTrimGroup/31/142705f7-2361-4b20-9fd8-08b11e8092fa.png?w=300', 1372000000, '', 1372000000, 'Kích thước	\r\n2.085 x 770 x 1.125 mm\r\n\r\nĐộ cao gầm xe	\r\n130 mm\r\n\r\nChiều cao yên	\r\n825 mm\r\n\r\nTrọng lượng	\r\n238 kg\r\n\r\nDung tích bình xăng	\r\n17 lít\r\n\r\nMức tiêu hao nhiên liệu	\r\n12,1 L/100km\r\n\r\nBảo hành	\r\n24 tháng'),
(50, 'Kawasaki', 'KP003', 'PKL', 'Z1000 ABS', 'https://content2.kawasaki.com/ContentStorage/KMV/ProductTrimGroup/1006/04c4e959-1a52-4469-b8ed-4bcef4bdc7e6.png?w=300', 436400000, '', 436400000, 'Kích thước	\r\n2.045 x 790 x 1.055 mm\r\n\r\nChiều dài cơ sở	\r\n1.435 mm\r\n\r\nĐộ cao gầm xe	\r\n125 mm\r\n\r\nChiều cao yên	\r\n815 mm\r\n\r\nTrọng lượng	\r\n221 kg\r\n\r\nDung tích bình xăng	\r\n17 lít\r\n\r\nMức tiêu hao nhiên liệu	\r\n6,0 L/100km\r\n\r\nBảo hành	\r\n24 tháng'),
(51, 'Kawasaki', 'KP004', 'KPKL', 'Z650RS', 'https://content2.kawasaki.com/ContentStorage/KMV/ProductTrimGroup/1023/a8c6f5cf-ba9a-4288-b2cb-2c4d344fbacc.png?w=300', 233000000, '0', 233000000, 'Kích thước	\r\n2.065 x 800 x 1.115 mm\r\n\r\nChiều dài cơ sở	\r\n1.405 mm\r\n\r\nĐộ cao gầm xe	\r\n125 mm\r\n\r\nChiều cao yên	\r\n820 mm\r\n\r\nTrọng lượng	\r\n187 kg\r\n\r\nDung tích bình xăng	\r\n12 lít\r\n\r\nMức tiêu hao nhiên liệu	\r\n5.5 L/100km\r\n\r\nBảo hành	\r\n24 tháng'),
(52, 'Kawasaki', 'KP005', 'KPKL', 'W800', 'https://content2.kawasaki.com/ContentStorage/KMV/ProductTrimGroup/70/0a1e7d0f-954e-45ac-8a23-6fc4e27db608.png?w=300', 379000000, '0', 379000000, 'Kích thước	\r\n2.190 x 790 x 1.075 mm\r\n\r\nChiều dài cơ sở	\r\n1.465 mm\r\n\r\nĐộ cao gầm xe	\r\n125 mm\r\n\r\nChiều cao yên	\r\n790 mm\r\n\r\nTrọng lượng	\r\n226 kg\r\n\r\nMức tiêu hao nhiên liệu	\r\n5,4 L/100km\r\n\r\nBảo hành	\r\n24 tháng'),
(53, 'Kawasaki', 'KP006', 'KPKL', 'VULCAN S', 'https://content2.kawasaki.com/ContentStorage/KMV/ProductTrimGroup/69/3e68ccf3-4c14-4cd0-badd-0f5bf28cab95.png?w=300', 241000000, '0', 241000000, 'Kích thước	\r\n2,310 x 885 x 1,090 mm\r\n\r\nĐộ cao gầm xe	\r\n130 mm\r\n\r\nChiều cao yên	\r\n705 mm\r\n\r\nTrọng lượng	\r\n229 kg\r\n\r\nDung tích bình xăng	\r\n14 lít\r\n\r\nMức tiêu hao nhiên liệu	\r\n5,5 L/100km\r\n\r\nBảo hành	\r\n24 tháng\r\n\r\nHT Nhiên liệu	\r\nPhun xăng'),
(54, 'Kawasaki', 'KP007', 'KPKL', 'KLX230S', 'https://content2.kawasaki.com/ContentStorage/KMV/ProductTrimGroup/1026/84229a06-e114-4bfc-845b-aea11aaaf837.png?w=300', 151000000, '0', 151000000, 'Kích thước	\r\n2.080 x 835 x 1.110 mm\r\n\r\nChiều dài cơ sở	\r\n1.360 mm\r\n\r\nĐộ cao gầm xe	\r\n210 mm\r\n\r\nChiều cao yên	\r\n830 mm\r\n\r\nTrọng lượng	\r\n135 kg\r\n\r\nDung tích bình xăng	\r\n7,5 lít\r\n\r\nMức tiêu hao nhiên liệu	\r\n3,6 L/100km\r\n\r\nBảo hành	\r\n24 tháng'),
(55, 'Suzuki', 'SC001', 'SXC', 'V-Strom 250SX', 'https://suzuki.com.vn/images/2023/Resize/1.png', 132900000, '1', 106320000, 'Dài x Rộng x Cao\r\n2,180 x 880 x 1,355 mm\r\n\r\nChiều dài trục cơ sở\r\n1,440 mm\r\n\r\nChiều cao yên\r\n835 mm\r\nTrọng lượng thân xe	\r\n165 kg\r\nKhoảng sáng gầm xe\r\n205 mm\r\n\r\nKích thước vỏ xe	 	\r\nTrước: 100/90 - 19 M/C 57S\r\nSau: 140/70 - 17 M/C 66S\r\n\r\nDung tích bình xăng	\r\n12 lít'),
(56, 'Suzuli', 'SC002', 'SXC', 'Satria F150', 'https://suzuki.com.vn/images/2w-layout/SATRIA/HomePage_CataloguePage_Satria_2023_1.png', 48490000, '0', 48490000, 'Chiều dài tổng thể	\r\n1,960mm\r\nChiều rộng tổng thể	\r\n675mm\r\nChiều cao tổng thể\r\n980mm\r\nĐộ cao yên\r\n764mm\r\nKhoảng cách gầm xe với mặt đất\r\n150mm\r\nTrọng lượng khô\r\n110kg'),
(57, 'Suzuki', 'SC003', 'SXC', 'Raider R150', 'https://suzuki.com.vn/images/thu-vien-xe-may/raider-r150/home_pagecataloguepage_raider2023.png', 45990000, '0', 45990000, 'Chiều dài tổng thể\r\n1.960 mm\r\n\r\nChiều rộng tổng thể\r\n675mm\r\n\r\nChiều cao tổng thể\r\n980mm\r\n\r\nĐộ cao yên\r\n765mm\r\n\r\nKhoảng sáng gầm xe\r\n150mm\r\n\r\nTrọng lượng khô\r\n109kg'),
(58, 'Suzuki', 'ZC004', 'SXC', 'GSX-R150', 'https://suzuki.com.vn/images/homepage/gsx-r150-homepage-thumbnail.jpg', 55990000, '0', 55990000, 'Hệ thống van	\r\nDOHC 4 - van\r\n\r\nSố Xy - lanh	\r\n1 xy - lanh\r\n\r\nLoại động cơ	\r\n4-thì, làm mát bằng dung dich\r\n\r\nĐường kính X hành trình piston	\r\n62.0 mm x 48.8 mm\r\n\r\nDung tích xy-lanh	\r\n147,3 cm3\r\n\r\nTỉ số nén	\r\n11,5 :1\r\n\r\nCông suất cực đại	\r\n14,1 kW / 10,500 vòng / phút\r\n\r\nMô-men cực đại	\r\n14,0 Nm / 9,000 vòng / phút\r\n\r\nHệ thống bơm xăng	\r\nFI\r\n\r\nMức tiêu hao nhiên liệu	\r\n2.43l/100km\r\n\r\nHệ thống khởi động	\r\nĐiện/Đạp chân'),
(59, 'Suzuki', 'ZG001', 'SXG', 'Burgman Street', 'https://suzuki.com.vn/images/homepage/burgman-homepage-thumbnail.jpg', 48600000, '0', 48600000, 'Dài x Rộng x Cao\r\n1.880 x 715 x 1.140 mm\r\n\r\nChiều dài trục cơ sở\r\n1.265 mm\r\n\r\nĐộ cao yên\r\n780mm\r\n\r\nTrọng lượng thân xe\r\n110kg\r\n\r\nDung tích ngăn chứa đồ dưới yên\r\n21,5 lít'),
(60, 'Suzuki', 'SG002', 'SXG', 'Impulse 125 FI', 'https://suzuki.com.vn/images/homepage/impulse-homepage-thumbnail.jpg', 50600000, '1', 40480000, 'Chiều dài tổng thể\r\n1,920mm\r\n\r\nChiều rộng tổng thể\r\n680 mm\r\n\r\nChiều cao tổng thể\r\n1,065mm\r\n\r\nĐộ cao yên	\r\n770mm\r\n\r\nKhoảng cách giữa 2 trục bánh xe\r\n1,285mm\r\n\r\nKhoảng cách gầm xe với mặt đất	\r\n135mm\r\n\r\nTrọng lượng khô	\r\n114kg'),
(61, 'BMW', 'BP001', 'BPKL', 'M 1000 RR', 'https://giaxe.2banh.vn/cache/dataupload/products/thumbs/400_307_1644639028-86024cad1e83101d97359d7351051156-494-1.png', 1600000000, '0', 1600000000, 'ỡ lốp trước/sau : 120/70 ZR 17 - 200/55 ZR 17	\r\n\r\nDung tích xy-lanh : 999cc\r\n\r\nCông suất tối đa : 209.2bhp / 156kW @ 14,500rpm	\r\n\r\nDài x Rộng x Cao : 2073mm x 848mm x1197mm\r\n\r\nHộp số : 6 cấp	Loại động cơ : Water/oil-cooled, 4-stroke, four titanium valves per cylinder and BMW ShiftCam\r\n\r\nĐộ cao yên : 832mm	\r\n\r\nĐường kính x hành trình pít tông : 80 x 49.7mm\r\n\r\nTrọng lượng bản thân : 192kg	Mô men cực đại : 83.35ft-lbs / 113Nm @ 11,000rpm'),
(62, 'BMW', 'BP002', 'BPKL', 'R 1250 RT', 'https://giaxe.2banh.vn/cache/dataupload/products/thumbs/400_307_1673514965-86024cad1e83101d97359d7351051156-548-1.jpg', 1099000000, '0', 1099000000, 'Loại động cơ : boxer 4 thì 2 xi lanh, làm mát bằng gió/chất lỏng. Công nghệ BMW ShiftCam	\r\n\r\nDài x Rộng x Cao : 2.222mm x 985 mm x 1.570 mm\r\n\r\nĐộ cao yên : 805 mm / 825 mm	\r\n\r\nCông suất tối đa : 136 hp (100 kW) tại 7,750 rpm\r\n\r\nCỡ lốp trước/sau : 120/70 ZR 17 - 180/55 ZR 16	\r\n\r\nDung tích xy-lanh : 1,254 cc\r\n\r\nPhanh trước/sau: Đĩa phanh đôi, đường kính 320 mm, bộ kẹp phanh 4 piston;Đĩa phanh đơn, đường kính 276 mm, bộ kẹp phanh 2 piston	\r\n\r\nMô men cực đại : 143 Nm tại 6,250 rpm\r\n\r\nĐường kính x hành trình pít tông : 102.5 mm x 76 mm	\r\n\r\nTrọng lượng bản thân : 279 kg'),
(63, 'BMW', 'BP003', 'BPKL', 'BMW F850 GS', 'https://giaxe.2banh.vn/cache/dataupload/products/thumbs/400_307_1568345262-86024cad1e83101d97359d7351051156-436-1.jpg', 659000000, '0', 659000000, 'Công suất tối đa : 95 mã lực tại 8.250 vòng/phút	\r\n\r\nHộp số : 6 Cấp\r\nLoại động cơ : 2 xi-lanh, được làm mát bằng nước, 4 thì, 4 van mỗi xi-lanh, hộp số 6 cấp	\r\n\r\nDài x Rộng x Cao : 2.305 mm\r\nĐộ cao yên : 860mm	\r\n\r\nCỡ lốp trước/sau : 90/90-21 - 150/70-17\r\nDung tích xy-lanh : 853 cc	\r\n\r\nPhanh trước/sau: đĩa kép, đĩa phanh 305 mm, phanh 2 piston (ABS);đĩa đơn\r\n\r\nDung tích bình xăng : 15 Lít - 23 Lít	'),
(64, 'BMW', 'BP004', 'BPKL', 'S1000XR 2023', 'https://giaxe.2banh.vn/cache/dataupload/products/thumbs/400_307_1571039569-86024cad1e83101d97359d7351051156-442-1.jpg', 579000000, '0', 579000000, 'Dung tích xy-lanh : 999cc	\r\n\r\nDài x Rộng x Cao : 2.183 x 940 x 1.408 (mm)\r\n\r\nLoại động cơ : 4 xi-lanh thẳng hàng, làm mát dung dịch	\r\n\r\nĐộ cao yên : 820 mm\r\nCông suất tối đa : 165hp tại 11.000 vòng/phút	\r\n\r\nCỡ lốp trước/sau : Vỏ Pirelli Diablo Rosso 120/70 R17 - 190/55 R17\r\n\r\nHộp số : 6 Cấp	\r\n\r\nPhanh trước/sau: Phanh trước đĩa kép 320mm, phanh Brembo 4pis;Phanh sau đĩa đơn 265mm, phanh 1pis\r\n\r\nPhuộc sau : Monosock	\r\n\r\nKhoảng cách trục bánh xe : 1.548 mm'),
(65, 'BMW', 'BP005', 'BPKL', 'F 900 XR', 'https://giaxe.2banh.vn/cache/dataupload/products/slides/520_368_b4a6fb465388e34950fa85c84bf520a1.jpg', 549000000, '1', 439200000, 'Cỡ lốp trước/sau : 120/70 ZR 17 - 180/55 ZR 17	\r\n\r\nDung tích xy-lanh : 895 cc\r\n\r\nCông suất tối đa : 105 Hp (77kW) tại 8.500 vòng/phút (rpm)	\r\n\r\nDài x Rộng x Cao : 2.160 x 1.320 x 860 mm\r\n\r\nHộp số : 6 Cấp	\r\n\r\nLoại động cơ : Động cơ 4 thì 2 xi lanh, làm mát dung dịch\r\n\r\nĐộ cao yên : 825 mm	\r\n\r\nPhanh trước/sau: Đĩa đôi 320mm, cùm phanh thủy lực 4 piston;Đĩa đơn 265mm, cùm phanh thủy lực piston đơn\r\n\r\nTỷ số nén : 13,1 : 1	\r\n\r\nTrọng lượng bản thân : 219 Kg'),
(66, 'BMW', 'BP006', 'BPKL', 'BMW R18 2023', 'https://giaxe.2banh.vn/cache/dataupload/products/thumbs/400_307_1612321048-86024cad1e83101d97359d7351051156-468-1.jpg', 929000000, '0', 929000000, 'Cỡ lốp trước/sau : 120/70 R 19 - 180/65 B16	\r\n\r\nDung tích xy-lanh : 1.802 cc\r\n\r\nCông suất tối đa : 91 hp at 4,750 rpm	\r\n\r\nDài x Rộng x Cao : 2.441 x 965 x 1.125 (mm)\r\n\r\nLoại động cơ : Boxer 2 xy-lanh	Độ cao yên : 690 mm\r\n\r\nTỷ số nén : 9.6 :1	\r\n\r\nTrọng lượng bản thân : 761 lbs\r\n\r\nMô men cực đại : 116 lbs-ft at 3,000 rpm	\r\n\r\nPhuộc sau : Steel swingarm with central shock strut\r\n'),
(67, 'BMW', 'BP007', 'BPKL', 'BMW R1200RS', 'https://giaxe.2banh.vn/cache/dataupload/products/thumbs/400_307_1509942248-86024cad1e83101d97359d7351051156-318-1.png', 688000000, '0', 688000000, 'Dung tích xy-lanh : 1.170cc	\r\n\r\nDài x Rộng x Cao : 2 .202 x 925 x 1.250 mm\r\n\r\nLoại động cơ : Boxer 2 xy lanh DOHC, làm mát bằng chất lỏng	\r\n\r\nĐộ cao yên : 820 mm\r\n\r\nCông suất tối đa : 125 mã lực tại 7.750 vòng/phút	\r\n\r\nCỡ lốp trước/sau : 120/70/17 - 180/55/17\r\n\r\nHộp số : 6 cấp	Dung tích bình xăng : 18 l\r\n\r\nMô men cực đại : 125 Nm tại 6.500 vòng/phút'),
(68, 'SYM', 'SYG001', 'SYXG', '', 'https://www.sym-global.com/storage/system/products/SCOOTER/15-HD300-E5/Colors/HD300E5.png', 120000000, '0', 120000000, 'Length x Width x Height (mm)\r\n2220 X 785 X 1220 mm\r\n\r\nWheel Base (mm)\r\n1505 mm\r\n\r\nCurb Weight\r\n175 kg\r\n\r\nFront Suspension\r\nTelescopic Fork\r\n\r\nRear Suspension\r\nDual Shock\r\n\r\nFront/Rear Rim Material\r\nAluminum/ Aluminum\r\n\r\nFront Tire Dimensions\r\n110/70-16\r\n\r\nRear Tire Dimensions\r\n140/70-16\r\n\r\nFront Brakes Type/Diameter\r\nDisk Ø 287mm + ABS\r\n\r\nRear Brakes Type/Diameter\r\nDisk Ø 260mm + ABS\r\n\r\nFuel Capacity\r\n10L\r\n\r\nSeat Height (mm)\r\n805 mm'),
(69, 'SYM', 'SYG002', 'SYXG', 'SYMPHONY', 'https://www.sym-global.com/storage/system/products/SCOOTER/20-SYMPHONY/color/left45E5.png', 102000000, '0', 102000000, 'Length x Width x Height (mm)\r\n1970 x 685 x 1145\r\n\r\nWheel Base (mm)\r\n1330\r\n\r\nFront Suspension\r\nTelescopic Fork\r\n\r\nRear Suspension\r\nSingle Shock\r\n\r\nFront/Rear Rim Material\r\nAluminum/ Aluminum\r\n\r\nFront Tire Dimensions\r\n110/70-16\r\n\r\nRear Tire Dimensions\r\n110/70-16\r\n\r\nFront Brakes Type/Diameter\r\nDisk Ø 260mm\r\n\r\nRear Brakes Type/Diameter\r\nDisk Ø 240mm\r\n\r\nFuel Capacity\r\n5.4 L'),
(70, 'SYM', 'SYG003', 'SYXG', 'JET 14', 'https://www.sym-global.com/storage/system/products/SCOOTER/01-2-JET-14-E5/360/LEFT45E5.png', 120000000, '0', 120000000, 'Length x Width x Height (mm)\r\n1990 x 730 x 1,075/1115(with visor) mm\r\n\r\nWheel Base (mm)\r\n1330\r\n\r\nFront Suspension\r\nTelescopic Fork\r\n\r\nRear Suspension\r\nSingle Shock\r\n\r\nFront/Rear Rim Material\r\nAluminum/ Aluminum\r\n\r\nFront Tire Dimensions\r\n100/90-14\r\n\r\nRear Tire Dimensions\r\n110/80-14\r\n\r\nFront Brakes Type/Diameter\r\nDisk Ø 260mm\r\n\r\nRear Brakes Type/Diameter\r\nDrum Ø 130 mm\r\n\r\nFuel Capacity\r\n7.5 L'),
(71, 'SYM', 'SYG004', 'SYXG', 'FNX 125', 'https://www.sym-global.com/storage/system/products/SCOOTER/10-FNX-125-E5/colors/FNXE5.png', 86000000, '1', 68800000, 'Length x Width x Height (mm)\r\n1895 x 685 x 1105 mm\r\n\r\nWheel Base (mm)\r\n1,305\r\n\r\nCurb Weight\r\n125 kg\r\n\r\nFront Suspension\r\nTelescopic Fork\r\n\r\nRear Suspension\r\nDual Shock\r\n\r\nFront/Rear Rim Material\r\nAluminum/ Aluminum\r\n\r\nFront Tire Dimensions\r\n110/70-12\r\n\r\nRear Tire Dimensions\r\n120/70-12\r\n\r\nFront Brakes Type/Diameter\r\nDisc Ø 226 mm ＋ CBS\r\n\r\nRear Brakes Type/Diameter\r\nDisc Ø 220 mm ＋ CBS\r\n\r\nFuel Capacity\r\n6.2 L'),
(72, 'Ducati', 'DP001', 'DPKL', 'XDiavel', 'https://images.ctfassets.net/x7j9qwvpvr5s/50ROz2HdOdYEKElMawlOLN/c75b0e2913143608033fb2360890f2d8/XDiavel-Nera-SM-MY22-Model-Preview-1050x650.png', 714000000, '0', 714000000, 'CẤU TẠO\r\nTestastretta DVT 1262, V2 - 90 °, 4 van trên mỗi xi lanh, Định thời gian biến thiên Desmodromic, Bugi kép, làm mát bằng chất lỏng\r\n\r\nDUNG TÍCH\r\n1,262 cc (77.0 cu in)\r\n\r\nCÔNG SUẤT\r\n160 hp (118 kW) @ 9,500 rpm*\r\n152 hp (112 kW) @ 9,500 rpm\r\n\r\nMÔ-MEN XOẮN\r\n13.0 kgm (127 Nm, 93.7 lb ft) @ 5,000 rpm*\r\n12.8 kgm (126 Nm, 92.9 lb ft) @ 5,000 rpm\r\n\r\nTRỌNG LƯỢNG\r\n221 kg (487 lb)\r\n\r\nĐỘ CAO YÊN XE\r\n755 mm (29.7 in)'),
(73, 'Ducati', 'DP002', 'DPKL', '', 'https://images.ctfassets.net/x7j9qwvpvr5s/12gMafWqoHvZsoVUJZnAIv/354f93242d8682115e0bb4a73f8ebce8/Hypermotard-950-SP-MY22-Model-Preview-1050x650-v06.png', 417660000, '', 417660000, 'DUNG TÍCH\r\n937 cc\r\n\r\nCÔNG SUẤT\r\n114 hp (84 kW) @ 9.000 rpm\r\n\r\nMÔ-MEN XOẮN\r\n71 lb-ft (96 Nm) @ 7.250 rpm\r\n\r\nTRỌNG LƯỢNG\r\n176 kg (388 lb)\r\n\r\nĐỘ CAO YÊN XE\r\n890 mm (35.0 in)\r\n\r\nCHU KỲ BẢO DƯỠNG\r\n15,000 km (9,000 mi)/12 months'),
(74, 'Ducati', 'DP003', 'PKL', 'MONSTER', 'https://images.ctfassets.net/x7j9qwvpvr5s/6pN73T6u1I1qaq8cizP7qV/c280ecd8edcc6ce785440352f302475e/Monster-937-Red-MY21-Model-Preview-1050x650-v02.png', 969000000, '', 969000000, 'DUNG TÍCH\r\n937 cc (57 cu in)\r\n\r\nCÔNG SUẤT\r\n111 hp (82 kW) @ 9,250 rpm\r\n\r\nMÔ-MEN XOẮN\r\n9.5 kgm (93 Nm, 69 lb ft) @ 6,500 rpm\r\n\r\nTRỌNG LƯỢNG KHÔ\r\n166 kg (366 lb)\r\n\r\nĐỘ CAO YÊN XE\r\n820 mm (32.3 in)\r\n800 mm (31.5 in) (phụ kiện yên thấp)\r\n775 mm (30.5 in) (phụ kiện yên thấp + bộ treo thấp)\r\n\r\nTRANG BỊ TIÊU CHUẨN\r\nDucati Quick Shift, Ducati Power Launch, màn hình màu TFT 4.3 \", hệ thống đèn pha và đèn LED hoàn toàn, ổ cắm điện USB.\r\n\r\nCHU KỲ BẢO DƯỠNG\r\n30,000 km (18,000 miles)'),
(75, 'Ducati', 'DP004', 'PKL', 'Streetfighter V4', 'https://www.ducativietnam.com/upload/files/Panigale%20v4/SFV4-Rd-01-Book-testride_630x390-v02.png', 450000000, '', 450000000, 'DUNG TÍCH\r\n1,103 cc\r\n\r\nCÔNG SUẤT\r\n153 kW\r\n\r\nMÔ-MEN XOẮN\r\n123 Nm\r\n\r\nTRỌNG LƯỢNG\r\n845 mm\r\n\r\nĐỘ CAO YÊN XE\r\n180 kg'),
(76, 'Ducati', 'DP005', 'DPKL', 'Panigale V2', 'https://ducativietnam.com/upload/files/Panigale%20V2/Panigale-V2-WH-01-grid-people-414x434.jpg', 1234000000, '0', 1234000000, 'DUNG TÍCH\r\n955 cc\r\n\r\nCÔNG SUẤT\r\n114 kW (155 hp) @ 10.750 rpm\r\n\r\nMÔ-MEN XOẮN\r\n104 Nm (76,7 lb-ft) @ 9.000 rpm\r\n\r\nTRỌNG LƯỢNG\r\n176 kg (388 lb)\r\n\r\nĐỘ CAO YÊN XE\r\n840 mm (33,1 in)'),
(77, 'Ducati', 'DP006', 'DPKL', 'SUPERSPOST', 'https://ducativietnam.com/upload/files/SUPERSPORT/4/1.png', 1714000000, '1', 1371200000, 'DUNG TÍCH\r\n937 cc\r\n\r\nCÔNG SUẤT\r\n110 hp @ 9.000 rpm\r\n\r\nMÔ-MEN XOẮN*\r\n93 Nm @ 6.500 rpm\r\n\r\nTRỌNG LƯỢNG\r\n183 kg\r\n\r\nĐỘ CAO YÊN XE\r\n810 mm\r\n\r\nTRANG BỊ AN TOÀN\r\nBosch ABS, Ducati Traction Control (DTC), Riding Modes\r\n\r\nCHU KỲ BẢO DƯỠNG\r\n30.000 km');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(13) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `address`, `name`) VALUES
(21, 'hello', '$2y$10$4SmUHNNnWH8V51k.Z2Lcqe8xtsmUelYHfQCPuVwbU0osMAn/RXn/a', 'ndnhat711@gmail.com', 869178608, 'Ha Noi', 'Nhật Nguyễn Đức'),
(22, 'a a a', '$2y$10$ytPCZL5/epNkKcjyuXgTg.YtEXd5sam3AAoyAZox/x04zCXHWhLJe', 'admin@gmail.com', 869178608, 'Ha Noi', 'q ư e'),
(23, 'a', '$2y$10$8OffmpQkmOFs1vAc.w4Fv.xdqMoQXDhasV0Tqf4zd0dMGFfFtFCI.', 'ha@gmail.com', 869178609, 'Ha Noi', 'aaa'),
(24, 'quyen', '$2y$10$M2zMs4A5pEMXQZI2Pi.ryOZ2IKUEpwIJfn0RAzvHLXvn1PXMSf1qO', 'quyen@gmail.com', 982329844, 'Hung Yen', 'quyen');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`cus_id`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
