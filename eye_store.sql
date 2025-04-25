-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2025 lúc 12:09 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eye_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_cart`
--

CREATE TABLE `c_cart` (
  `id` varchar(36) NOT NULL,
  `num_of_product` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_cart`
--

INSERT INTO `c_cart` (`id`, `num_of_product`, `total`) VALUES
('370845db-471f-49b2-bd59-af8e7d741c00', 0, 0.00),
('373ea37f-b22d-4512-a3f7-0d9cf700c668', 0, 0.00),
('774095b3-f94f-475f-855a-bed9e40b97ca', 3, 995000.00),
('bf5739d7-1fa3-4a28-aef4-d420b6544b85', 0, 0.00),
('cfcfc2b1-d8ea-4a85-88d6-99fe3aacb6a5', 2, 620000.00),
('d097eda2-7896-4f6d-87b3-94cf73949488', 0, 0.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_cart_item`
--

CREATE TABLE `c_cart_item` (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(36) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `color_id` varchar(36) DEFAULT NULL,
  `size_id` varchar(36) DEFAULT NULL,
  `product_id` varchar(36) NOT NULL,
  `cart_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_cart_item`
--

INSERT INTO `c_cart_item` (`id`, `created_at`, `created_by`, `last_modified_at`, `last_modified_by`, `version`, `quantity`, `color_id`, `size_id`, `product_id`, `cart_id`) VALUES
('6c81b64a-1d82-4906-9192-8cf831fffbec', '2023-12-12 09:58:18', 'devhuunhan', '2023-12-12 09:58:18', 'devhuunhan', 0, 1, '607de454-50c1-4140-96c9-180ad02452ba', '68531e5d-41e4-4d10-9111-24f682411881', '095694a2-ab6c-4213-992b-b622cd0416e4', 'cfcfc2b1-d8ea-4a85-88d6-99fe3aacb6a5'),
('34ff663d-923b-43bb-9e9d-d55b9fb5b9b5', '2023-12-12 09:58:25', 'devhuunhan', '2023-12-12 10:00:05', 'devhuunhan', 11, 1, '5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8', 'cfcfc2b1-d8ea-4a85-88d6-99fe3aacb6a5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_category`
--

CREATE TABLE `c_category` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tag` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_category`
--

INSERT INTO `c_category` (`id`, `name`, `description`, `tag`) VALUES
('4b885833-be95-4771-8778-444a5a75ee19', 'Hoodie', 'Hoodie T-shirt', 'hoodie'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', 'Sweater', 'Sweater T-shirt', 'sweater');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_category_product`
--

CREATE TABLE `c_category_product` (
  `category_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_category_product`
--

INSERT INTO `c_category_product` (`category_id`, `product_id`) VALUES
('4b885833-be95-4771-8778-444a5a75ee19', '002a218f-11c9-4792-8cc9-f730aedd6e10'),
('4b885833-be95-4771-8778-444a5a75ee19', '095694a2-ab6c-4213-992b-b622cd0416e4'),
('4b885833-be95-4771-8778-444a5a75ee19', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8'),
('4b885833-be95-4771-8778-444a5a75ee19', '3423283f-2154-4dff-826a-d8e6d8a32a9c'),
('4b885833-be95-4771-8778-444a5a75ee19', '344d18f8-9963-4cac-ab14-e65822e47406'),
('4b885833-be95-4771-8778-444a5a75ee19', '5ca60c31-cb43-4972-94e7-ffbb9cafabc4'),
('4b885833-be95-4771-8778-444a5a75ee19', '68a6957f-bbd7-487e-91b1-a40aafea3f9a'),
('4b885833-be95-4771-8778-444a5a75ee19', 'a465e851-3e49-47ae-b61b-2c305ef8554c'),
('4b885833-be95-4771-8778-444a5a75ee19', 'a8f2c72e-21a9-4f97-a62c-eda13feff6f9'),
('4b885833-be95-4771-8778-444a5a75ee19', 'aa86d9ad-1228-4dde-b872-cee5dead2aea'),
('4b885833-be95-4771-8778-444a5a75ee19', 'ee2d0e15-ba13-4620-afeb-370d966b2b98'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', '3997ad1d-dc64-4c45-af58-2d4a935f5a98'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', '459489c1-4989-4398-9918-8120123d7a0c'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', '5c6c622e-4060-4a74-97f1-2940c8d71124'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', '616c611a-dc44-41d6-9b2f-8f45b5f4f244'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', '6b533a0c-7141-4f36-9261-fc5b97c95733'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', '7d53bf09-b954-488b-8eda-3eefe9e3f0f6'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', 'a9444bfb-573f-4046-ad0d-223b75f0d681'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', 'c62d587c-88d4-4d16-867a-804b5c1f5574'),
('b9c19dd0-ad54-4535-8c21-4d5859e85232', 'feedb0d5-ca01-4690-88d4-e2287e1dacff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_color`
--

CREATE TABLE `c_color` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_color`
--

INSERT INTO `c_color` (`id`, `name`, `color`) VALUES
('1ecf1d27-1ad0-4185-aa6f-1516d7e950ca', 'Red', '#e74c3c'),
('209ba45c-c2b3-4117-a735-ea6c9af2b98a', 'Light Green', '#2ecc71'),
('25651135-7a4f-46ac-b361-75051b848221', 'White', '#fff'),
('4d21ab0a-3635-43db-8232-08b4eb044252', 'Grey', '#333'),
('50b27f95-ae87-4298-b5a1-a01b26584b27', 'Moss Green', '#6ab04c'),
('5fa048d4-5713-4b77-97bf-15554766956b', 'Pink', '#FDA7DF'),
('607de454-50c1-4140-96c9-180ad02452ba', 'blue', '#3498db'),
('67a5ead8-52b4-4728-8f8d-72859e24f77b', 'Dark Green', '#27ae60'),
('80ae1781-2b37-45a2-9e44-a3eef5ced05a', 'Yellow', '#f1c40f'),
('8c3e12cd-3901-4f4e-8475-c0218137a546', 'Black', '#000'),
('a8642612-c10c-47ab-b760-43786eb4a611', 'Orange', '#e67e22'),
('cd2fbedd-ba51-4a39-b69f-e303dc775b9c', 'Light Orange', '#ffbe76'),
('ec5fc7ad-c10a-442e-9200-fe2c36df3a47', 'Green', '#16a085'),
('fffd4b22-778d-403c-9a91-914313e04ef6', 'Dark Red', '#c0392b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_order`
--

CREATE TABLE `c_order` (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(36) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `order_details_id` varchar(36) NOT NULL,
  `status` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_order`
--

INSERT INTO `c_order` (`id`, `created_at`, `created_by`, `last_modified_at`, `last_modified_by`, `version`, `user_id`, `order_details_id`, `status`) VALUES
('7d7f0fd3-0cc7-430e-b38f-77a44a831b8c', '2024-01-08 00:44:27', 'devhuunhan', '2024-01-08 00:44:27', 'devhuunhan', 0, '436f7600-6b84-4736-b2fe-15f2185e094f', 'defa29b3-29a4-4e67-804f-2a3d8b6b2043', 'AWAITING'),
('b4f58ea0-61ec-442b-b6af-ede5511d6359', '2023-12-12 10:00:15', 'devhuunhan', '2023-12-12 10:04:37', 'admin1', 3, '436f7600-6b84-4736-b2fe-15f2185e094f', '44448844-0fc7-47d2-93ad-adc6c164ee17', 'PENDING');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_order_details`
--

CREATE TABLE `c_order_details` (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(36) DEFAULT NULL,
  `VERSION` int(11) NOT NULL,
  `num_of_product` int(11) NOT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `status` varchar(36) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `shipping_cost` decimal(10,2) DEFAULT 0.00,
  `surcharge` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `final_total` decimal(10,2) NOT NULL,
  `payment_method` varchar(36) NOT NULL,
  `payment_status` varchar(36) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_order_details`
--

INSERT INTO `c_order_details` (`id`, `created_at`, `created_by`, `last_modified_at`, `last_modified_by`, `VERSION`, `num_of_product`, `order_date`, `status`, `address`, `shipping_cost`, `surcharge`, `total`, `final_total`, `payment_method`, `payment_status`, `phone`) VALUES
('44448844-0fc7-47d2-93ad-adc6c164ee17', '2023-12-12 10:00:15', 'devhuunhan', '2023-12-12 10:04:07', 'admin1', 1, 2, '2023-12-12 10:00:15', 'PREPARING_ORDER', '133/14 hà huy giap , Phường 13, Quận Gò Vấp, Thành phố Hồ Chí Minh', 0.00, 0.00, 750000.00, 620000.00, 'PAY_ON_DELIVERY', 'UNPAID', '0376571233'),
('defa29b3-29a4-4e67-804f-2a3d8b6b2043', '2024-01-08 00:44:27', 'devhuunhan', '2024-01-08 00:44:27', 'devhuunhan', 0, 1, '2024-01-08 00:44:27', 'NOT_READY', '111/111 Bẩy Chuồng , Phường Vĩnh Phúc, Quận Ba Đình, Thành phố Hà Nội', 0.00, 0.00, 400000.00, 340000.00, 'PAY_ON_DELIVERY', 'UNPAID', '0376571235');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_order_details_item`
--

CREATE TABLE `c_order_details_item` (
  `id` varchar(36) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` varchar(36) NOT NULL,
  `color` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `order_detail_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_order_details_item`
--

INSERT INTO `c_order_details_item` (`id`, `quantity`, `product_id`, `color`, `size`, `total`, `order_detail_id`) VALUES
('0f804232-7c51-43eb-ae2f-44a64a39df05', 1, '095694a2-ab6c-4213-992b-b622cd0416e4', 'blue', 'L', 340000.00, 'defa29b3-29a4-4e67-804f-2a3d8b6b2043'),
('c4ba1532-9e5e-4316-a016-a088323e90a3', 1, '095694a2-ab6c-4213-992b-b622cd0416e4', 'blue', 'L', 340000.00, '44448844-0fc7-47d2-93ad-adc6c164ee17'),
('e5d0889e-c448-47a0-9fa2-9c298419ee99', 1, '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8', NULL, 'M', 280000.00, '44448844-0fc7-47d2-93ad-adc6c164ee17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_product`
--

CREATE TABLE `c_product` (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(36) DEFAULT NULL,
  `VERSION` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rate` float DEFAULT 0,
  `likes` int(11) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_product`
--

INSERT INTO `c_product` (`id`, `created_at`, `created_by`, `last_modified_at`, `last_modified_by`, `VERSION`, `name`, `price`, `quantity`, `sold`, `description`, `rate`, `likes`, `discount`) VALUES
('002a218f-11c9-4792-8cc9-f730aedd6e10', '2023-11-24 13:23:43', 'admin1', '2023-11-24 13:23:43', 'admin1', 0, 'Áo hoodie màu bơ new', 350000.00, 120, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!.', 0, 0, 20.00),
('095694a2-ab6c-4213-992b-b622cd0416e4', '2023-11-24 13:27:16', 'admin1', '2023-11-24 13:27:16', 'admin1', 0, 'Áo hoodie xanh dương new', 400000.00, 200, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!.', 0, 0, 15.00),
('1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8', '2023-11-24 13:32:51', 'admin1', '2023-11-24 13:32:51', 'admin1', 0, 'Áo hoodie cam họa tiết new', 350000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 20.00),
('3423283f-2154-4dff-826a-d8e6d8a32a9c', '2023-11-24 13:35:43', 'admin1', '2023-11-24 13:35:43', 'admin1', 0, 'Hoodie jacket Red', 350000.00, 100, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!', 0, 0, 10.00),
('344d18f8-9963-4cac-ab14-e65822e47406', '2023-11-24 13:39:02', 'admin1', '2023-11-24 13:39:02', 'admin1', 0, 'Hoodie jacket Black', 350000.00, 100, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!', 0, 0, 10.00),
('3997ad1d-dc64-4c45-af58-2d4a935f5a98', '2023-11-24 13:28:49', 'admin1', '2023-11-24 13:28:49', 'admin1', 0, 'Sweater Front Yellow Mockup', 450000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 0.00),
('459489c1-4989-4398-9918-8120123d7a0c', '2023-11-24 13:30:32', 'admin1', '2023-11-24 13:30:32', 'admin1', 0, 'Sweater Front Black', 400000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 10.00),
('5c6c622e-4060-4a74-97f1-2940c8d71124', '2023-11-24 13:25:54', 'admin1', '2023-11-24 13:25:54', 'admin1', 0, 'Sweater Front Blue', 400000.00, 123, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!.', 0, 0, 15.00),
('5ca60c31-cb43-4972-94e7-ffbb9cafabc4', '2023-11-24 13:27:56', 'admin1', '2023-11-24 13:27:56', 'admin1', 0, 'Áo hoodie đen họa tiết new', 350000.00, 200, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!.', 0, 0, 0.00),
('616c611a-dc44-41d6-9b2f-8f45b5f4f244', '2023-11-24 13:29:56', 'admin1', '2023-11-24 13:29:56', 'admin1', 0, 'Sweater Front Light Pink', 450000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 10.00),
('68a6957f-bbd7-487e-91b1-a40aafea3f9a', '2023-11-24 13:26:32', 'admin1', '2023-11-24 13:26:32', 'admin1', 0, 'Áo hoodie đen trơn', 350000.00, 123, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!.', 0, 0, 15.00),
('6b533a0c-7141-4f36-9261-fc5b97c95733', '2023-11-24 13:36:24', 'admin1', '2023-11-24 13:36:24', 'admin1', 0, 'Sweater Front Dark Green', 400000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 10.00),
('7d53bf09-b954-488b-8eda-3eefe9e3f0f6', '2023-11-24 13:17:54', 'admin1', '2023-11-24 13:17:54', 'admin1', 0, 'Sweater Front White', 400000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 10.00),
('a465e851-3e49-47ae-b61b-2c305ef8554c', '2023-11-24 13:40:36', 'admin1', '2023-11-24 13:40:36', 'admin1', 0, 'Áo hoodie da cam họa tiết new', 350000.00, 100, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!', 0, 0, 10.00),
('a8f2c72e-21a9-4f97-a62c-eda13feff6f9', '2023-11-24 13:41:48', 'admin1', '2023-12-12 07:55:32', 'admin1', 3, 'Áo hoodie xanh rêu NEW', 400000.00, 100, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!', 0, 0, 9.00),
('a9444bfb-573f-4046-ad0d-223b75f0d681', '2023-11-24 13:34:58', 'admin1', '2023-11-24 13:34:58', 'admin1', 0, 'Sweater Front Dark Red', 400000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 10.00),
('aa86d9ad-1228-4dde-b872-cee5dead2aea', '2023-11-24 13:20:29', 'admin1', '2023-11-24 13:20:29', 'admin1', 0, 'Hoodie jacket Orange', 350000.00, 100, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!.', 0, 0, 0.00),
('c62d587c-88d4-4d16-867a-804b5c1f5574', '2023-11-24 13:33:59', 'admin1', '2023-11-24 13:33:59', 'admin1', 0, 'Sweater Front Yellow', 400000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 20.00),
('ee2d0e15-ba13-4620-afeb-370d966b2b98', '2023-11-24 13:25:00', 'admin1', '2023-11-24 13:25:00', 'admin1', 0, 'Hoodie jacket Rainbow Night', 350000.00, 123, 0, 'Chào mừng bạn đến với bộ sưu tập áo hoodie của chúng tôi! Áo hoodie được chế tác từ chất liệu cao cấp, mang đến sự thoải mái và phong cách. Với thiết kế cổ tròn và tay dài, áo hoodie này giữ ấm áp và tạo nên vẻ ngoài trẻ trung, lịch lãm. Màu đen tối giản dễ dàng phối hợp với nhiều trang phục khác nhau, thích hợp cho cả nam và nữ. Sở hữu ngay món đồ thời trang này để thêm điểm nhấn cho phong cách cá nhân độc đáo của bạn!.', 0, 0, 15.00),
('feedb0d5-ca01-4690-88d4-e2287e1dacff', '2023-11-24 13:31:44', 'admin1', '2023-11-24 13:31:44', 'admin1', 0, 'Sweater Front Light Green', 400000.00, 100, 0, 'Áo sweater - Sự lựa chọn tuyệt vời cho phong cách ấm áp và thời thượng. Chất liệu cao cấp, êm ái và thoải mái, giúp bạn tự tin khoe sự phong độ trong mọi dịp. Thiết kế tối giản, trẻ trung và dễ dàng phối cùng nhiều trang phục. Với áo sweater này, bạn sẽ luôn nổi bật và tỏa sáng trong cảm giác thoải mái và ấm áp suốt cả ngày dài.', 0, 0, 10.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_product_color`
--

CREATE TABLE `c_product_color` (
  `color_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_product_color`
--

INSERT INTO `c_product_color` (`color_id`, `product_id`) VALUES
('1ecf1d27-1ad0-4185-aa6f-1516d7e950ca', '3423283f-2154-4dff-826a-d8e6d8a32a9c'),
('209ba45c-c2b3-4117-a735-ea6c9af2b98a', 'feedb0d5-ca01-4690-88d4-e2287e1dacff'),
('25651135-7a4f-46ac-b361-75051b848221', '7d53bf09-b954-488b-8eda-3eefe9e3f0f6'),
('50b27f95-ae87-4298-b5a1-a01b26584b27', 'a8f2c72e-21a9-4f97-a62c-eda13feff6f9'),
('5fa048d4-5713-4b77-97bf-15554766956b', '616c611a-dc44-41d6-9b2f-8f45b5f4f244'),
('607de454-50c1-4140-96c9-180ad02452ba', '095694a2-ab6c-4213-992b-b622cd0416e4'),
('607de454-50c1-4140-96c9-180ad02452ba', '5c6c622e-4060-4a74-97f1-2940c8d71124'),
('67a5ead8-52b4-4728-8f8d-72859e24f77b', '6b533a0c-7141-4f36-9261-fc5b97c95733'),
('80ae1781-2b37-45a2-9e44-a3eef5ced05a', '3997ad1d-dc64-4c45-af58-2d4a935f5a98'),
('80ae1781-2b37-45a2-9e44-a3eef5ced05a', 'c62d587c-88d4-4d16-867a-804b5c1f5574'),
('8c3e12cd-3901-4f4e-8475-c0218137a546', '344d18f8-9963-4cac-ab14-e65822e47406'),
('8c3e12cd-3901-4f4e-8475-c0218137a546', '459489c1-4989-4398-9918-8120123d7a0c'),
('8c3e12cd-3901-4f4e-8475-c0218137a546', '5ca60c31-cb43-4972-94e7-ffbb9cafabc4'),
('8c3e12cd-3901-4f4e-8475-c0218137a546', '68a6957f-bbd7-487e-91b1-a40aafea3f9a'),
('8c3e12cd-3901-4f4e-8475-c0218137a546', 'ee2d0e15-ba13-4620-afeb-370d966b2b98'),
('a8642612-c10c-47ab-b760-43786eb4a611', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8'),
('a8642612-c10c-47ab-b760-43786eb4a611', 'aa86d9ad-1228-4dde-b872-cee5dead2aea'),
('cd2fbedd-ba51-4a39-b69f-e303dc775b9c', 'a465e851-3e49-47ae-b61b-2c305ef8554c'),
('ec5fc7ad-c10a-442e-9200-fe2c36df3a47', '002a218f-11c9-4792-8cc9-f730aedd6e10'),
('fffd4b22-778d-403c-9a91-914313e04ef6', 'a9444bfb-573f-4046-ad0d-223b75f0d681');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_product_images`
--

CREATE TABLE `c_product_images` (
  `id` varchar(36) NOT NULL,
  `url` varchar(255) NOT NULL,
  `product_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_product_images`
--

INSERT INTO `c_product_images` (`id`, `url`, `product_id`) VALUES
('0849d29a-04a3-4186-b0f5-b59df543e8ff', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/sweater/dark-red-sweater_uiccku.jpg', 'a9444bfb-573f-4046-ad0d-223b75f0d681'),
('0d475399-d87e-42d5-9253-4dfe12fcbcfa', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/sweater/yellow-sweater_doy2xr.jpg', 'c62d587c-88d4-4d16-867a-804b5c1f5574'),
('1a95f24d-4648-4795-900f-5787081d6b3f', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748671/devshop/product/sweater/pink-sweater_jke2sk.jpg', '616c611a-dc44-41d6-9b2f-8f45b5f4f244'),
('216cb628-c1ae-4ad5-974a-d8366d956974', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748670/devshop/product/sweater/green-sweater_lrfhwl.jpg', 'feedb0d5-ca01-4690-88d4-e2287e1dacff'),
('2c1eb6cb-dba5-42b6-a364-7cf20e09cb74', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/hoodie/orange-hoodie_u8bggi.jpg', 'aa86d9ad-1228-4dde-b872-cee5dead2aea'),
('2c7d3dd9-cb78-421d-8f40-f43203d159ed', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748674/devshop/product/hoodie/red-hoodie_z2bx9u.jpg', '3423283f-2154-4dff-826a-d8e6d8a32a9c'),
('594519ac-e151-47e4-84c4-119de980e6d0', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/sweater/yellow-sweater-mockup_vrq34j.jpg', '3997ad1d-dc64-4c45-af58-2d4a935f5a98'),
('5aba36de-1f76-4930-8023-7fb9cc0e77fc', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748671/devshop/product/sweater/white-front-sweater_tnpg0g.jpg', '7d53bf09-b954-488b-8eda-3eefe9e3f0f6'),
('6d70ded4-0591-4eb3-80d6-c32726ef4f10', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748668/devshop/product/hoodie/hoodie-den-hoa-tiet_j7pfvd.jpg', '5ca60c31-cb43-4972-94e7-ffbb9cafabc4'),
('6db22659-bcaf-42b7-9f93-dd99cf2e2bb3', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/sweater/blue-sweater_zqes1t.jpg', '5c6c622e-4060-4a74-97f1-2940c8d71124'),
('79e33830-4216-4492-9ea8-ecd694fe4185', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748670/devshop/product/sweater/black-sweater_vbdsyi.jpg', '459489c1-4989-4398-9918-8120123d7a0c'),
('93e815d5-906a-4d2f-a842-b87b56ac6099', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/hoodie/hoodie-xam-xanh_kzanpz.jpg', '002a218f-11c9-4792-8cc9-f730aedd6e10'),
('956ef6a1-0a01-4855-96d6-14469b7b9dfc', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748667/devshop/product/hoodie/hoodie-xanh-duong_r4l2du.jpg', '095694a2-ab6c-4213-992b-b622cd0416e4'),
('956f08b6-cfac-4832-b4b5-92bbcd4232d3', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/hoodie/hoodie-cam_gqdgvb.jpg', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8'),
('a31de679-325d-4152-943a-5612d08e7eec', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/hoodie/night-hoodie_nmmu8o.jpg', 'ee2d0e15-ba13-4620-afeb-370d966b2b98'),
('a64e7474-e64e-4d8a-aba5-5d850b3bcb3a', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748668/devshop/product/hoodie/hoodie-da-cam_eq7nj6.jpg', 'a465e851-3e49-47ae-b61b-2c305ef8554c'),
('af01e760-d3c4-48bb-9a1b-c60352c522c3', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748667/devshop/product/sweater/dark-green_aehgbu.webp', '6b533a0c-7141-4f36-9261-fc5b97c95733'),
('b9fb3308-1928-4a94-b106-deb7170171e3', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748668/devshop/product/hoodie/black-hoodie_y1wydo.jpg', '344d18f8-9963-4cac-ab14-e65822e47406'),
('efcbb5be-adeb-4a58-b5f0-6f3d9270881f', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748669/devshop/product/hoodie/hoodie-xanh-reu_yjkgwf.jpg', 'a8f2c72e-21a9-4f97-a62c-eda13feff6f9'),
('f20528e1-330c-4799-b748-31e6cb1dcbb5', 'https://res.cloudinary.com/devshopcloud/image/upload/v1692748667/devshop/product/hoodie/hoodie-den-tron_m9o9l2.jpg', '68a6957f-bbd7-487e-91b1-a40aafea3f9a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_product_size`
--

CREATE TABLE `c_product_size` (
  `size_id` varchar(36) NOT NULL,
  `product_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_product_size`
--

INSERT INTO `c_product_size` (`size_id`, `product_id`) VALUES
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '002a218f-11c9-4792-8cc9-f730aedd6e10'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '095694a2-ab6c-4213-992b-b622cd0416e4'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '3423283f-2154-4dff-826a-d8e6d8a32a9c'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '344d18f8-9963-4cac-ab14-e65822e47406'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '3997ad1d-dc64-4c45-af58-2d4a935f5a98'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '459489c1-4989-4398-9918-8120123d7a0c'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '5c6c622e-4060-4a74-97f1-2940c8d71124'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '5ca60c31-cb43-4972-94e7-ffbb9cafabc4'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '616c611a-dc44-41d6-9b2f-8f45b5f4f244'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '68a6957f-bbd7-487e-91b1-a40aafea3f9a'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '6b533a0c-7141-4f36-9261-fc5b97c95733'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', '7d53bf09-b954-488b-8eda-3eefe9e3f0f6'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'a465e851-3e49-47ae-b61b-2c305ef8554c'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'a8f2c72e-21a9-4f97-a62c-eda13feff6f9'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'a9444bfb-573f-4046-ad0d-223b75f0d681'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'aa86d9ad-1228-4dde-b872-cee5dead2aea'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'c62d587c-88d4-4d16-867a-804b5c1f5574'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'ee2d0e15-ba13-4620-afeb-370d966b2b98'),
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'feedb0d5-ca01-4690-88d4-e2287e1dacff'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '002a218f-11c9-4792-8cc9-f730aedd6e10'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '095694a2-ab6c-4213-992b-b622cd0416e4'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '3423283f-2154-4dff-826a-d8e6d8a32a9c'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '344d18f8-9963-4cac-ab14-e65822e47406'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '3997ad1d-dc64-4c45-af58-2d4a935f5a98'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '459489c1-4989-4398-9918-8120123d7a0c'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '5c6c622e-4060-4a74-97f1-2940c8d71124'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '5ca60c31-cb43-4972-94e7-ffbb9cafabc4'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '616c611a-dc44-41d6-9b2f-8f45b5f4f244'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '68a6957f-bbd7-487e-91b1-a40aafea3f9a'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '6b533a0c-7141-4f36-9261-fc5b97c95733'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', '7d53bf09-b954-488b-8eda-3eefe9e3f0f6'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'a465e851-3e49-47ae-b61b-2c305ef8554c'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'a8f2c72e-21a9-4f97-a62c-eda13feff6f9'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'a9444bfb-573f-4046-ad0d-223b75f0d681'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'aa86d9ad-1228-4dde-b872-cee5dead2aea'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'c62d587c-88d4-4d16-867a-804b5c1f5574'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'ee2d0e15-ba13-4620-afeb-370d966b2b98'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'feedb0d5-ca01-4690-88d4-e2287e1dacff'),
('68531e5d-41e4-4d10-9111-24f682411881', '002a218f-11c9-4792-8cc9-f730aedd6e10'),
('68531e5d-41e4-4d10-9111-24f682411881', '095694a2-ab6c-4213-992b-b622cd0416e4'),
('68531e5d-41e4-4d10-9111-24f682411881', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8'),
('68531e5d-41e4-4d10-9111-24f682411881', '3423283f-2154-4dff-826a-d8e6d8a32a9c'),
('68531e5d-41e4-4d10-9111-24f682411881', '344d18f8-9963-4cac-ab14-e65822e47406'),
('68531e5d-41e4-4d10-9111-24f682411881', '3997ad1d-dc64-4c45-af58-2d4a935f5a98'),
('68531e5d-41e4-4d10-9111-24f682411881', '459489c1-4989-4398-9918-8120123d7a0c'),
('68531e5d-41e4-4d10-9111-24f682411881', '5c6c622e-4060-4a74-97f1-2940c8d71124'),
('68531e5d-41e4-4d10-9111-24f682411881', '5ca60c31-cb43-4972-94e7-ffbb9cafabc4'),
('68531e5d-41e4-4d10-9111-24f682411881', '616c611a-dc44-41d6-9b2f-8f45b5f4f244'),
('68531e5d-41e4-4d10-9111-24f682411881', '68a6957f-bbd7-487e-91b1-a40aafea3f9a'),
('68531e5d-41e4-4d10-9111-24f682411881', '6b533a0c-7141-4f36-9261-fc5b97c95733'),
('68531e5d-41e4-4d10-9111-24f682411881', '7d53bf09-b954-488b-8eda-3eefe9e3f0f6'),
('68531e5d-41e4-4d10-9111-24f682411881', 'a465e851-3e49-47ae-b61b-2c305ef8554c'),
('68531e5d-41e4-4d10-9111-24f682411881', 'a8f2c72e-21a9-4f97-a62c-eda13feff6f9'),
('68531e5d-41e4-4d10-9111-24f682411881', 'a9444bfb-573f-4046-ad0d-223b75f0d681'),
('68531e5d-41e4-4d10-9111-24f682411881', 'aa86d9ad-1228-4dde-b872-cee5dead2aea'),
('68531e5d-41e4-4d10-9111-24f682411881', 'c62d587c-88d4-4d16-867a-804b5c1f5574'),
('68531e5d-41e4-4d10-9111-24f682411881', 'ee2d0e15-ba13-4620-afeb-370d966b2b98'),
('68531e5d-41e4-4d10-9111-24f682411881', 'feedb0d5-ca01-4690-88d4-e2287e1dacff'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '002a218f-11c9-4792-8cc9-f730aedd6e10'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '095694a2-ab6c-4213-992b-b622cd0416e4'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '1c2f9ba5-38c6-4f42-a6dc-e1af5f846bb8'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '3423283f-2154-4dff-826a-d8e6d8a32a9c'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '344d18f8-9963-4cac-ab14-e65822e47406'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '3997ad1d-dc64-4c45-af58-2d4a935f5a98'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '459489c1-4989-4398-9918-8120123d7a0c'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '5c6c622e-4060-4a74-97f1-2940c8d71124'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '5ca60c31-cb43-4972-94e7-ffbb9cafabc4'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '616c611a-dc44-41d6-9b2f-8f45b5f4f244'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '68a6957f-bbd7-487e-91b1-a40aafea3f9a'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '6b533a0c-7141-4f36-9261-fc5b97c95733'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', '7d53bf09-b954-488b-8eda-3eefe9e3f0f6'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'a465e851-3e49-47ae-b61b-2c305ef8554c'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'a8f2c72e-21a9-4f97-a62c-eda13feff6f9'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'a9444bfb-573f-4046-ad0d-223b75f0d681'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'aa86d9ad-1228-4dde-b872-cee5dead2aea'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'c62d587c-88d4-4d16-867a-804b5c1f5574'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'ee2d0e15-ba13-4620-afeb-370d966b2b98'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'feedb0d5-ca01-4690-88d4-e2287e1dacff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_refresh_token`
--

CREATE TABLE `c_refresh_token` (
  `id` varchar(36) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  `user_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_refresh_token`
--

INSERT INTO `c_refresh_token` (`id`, `refresh_token`, `user_id`) VALUES
('4b84df0f-e3d3-40e2-8ea9-84cbe776c999', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkZXZodXVuaGFuIiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIl0sImlhdCI6MTcwMjM3NTA3OCwiZXhwIjoxNzAyNDgzMDc4fQ.u90vjHwBvW-kDerE-Rkp4pkf8XAMnmK9aoPMF5mmPpgfu9B34S6BawVMRBbIEGFRnQLIsipLKWiHfOmmfx-UJw', '436f7600-6b84-4736-b2fe-15f2185e094f'),
('84dc1b94-839f-4c74-9644-856f2f9f4292', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJkZXZodXVuaGFuIiwiYXV0aG9yaXRpZXMiOlsiUk9MRV9BRE1JTiIsIlJPTEVfVVNFUiJdLCJpYXQiOjE3MDQ2NzQwNTgsImV4cCI6MTcwNDc4MjA1OH0.jXrUeOTJCHzZyOafC4ufcnLD4tFIHL7LZp2ELThG3RTZ7hBE5RQS4qmWL1W-ffi4CD5T0x_Cp-EpEgEWWxru7Q', '436f7600-6b84-4736-b2fe-15f2185e094f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_role`
--

CREATE TABLE `c_role` (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(36) DEFAULT NULL,
  `VERSION` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_role`
--

INSERT INTO `c_role` (`id`, `created_at`, `created_by`, `last_modified_at`, `last_modified_by`, `VERSION`, `code`, `description`) VALUES
('027f82e4-a564-d19b-f257-94bed336d833', '2022-08-19 00:52:49', 'N6loHKZcRA', '2023-10-31 13:16:22', 'buivantuan', 1, 'ROLE_ADMIN', 'role admin'),
('3c3e8b49-33c0-97bb-952f-5380b26eb173', '2017-10-11 18:04:41', '5U8UOD5ZM4', '2011-12-29 15:24:42', 'zdeTlax2Rf', 0, 'ROLE_USER', 'T13nIH2wDH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_size`
--

CREATE TABLE `c_size` (
  `id` varchar(36) NOT NULL,
  `size` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_size`
--

INSERT INTO `c_size` (`id`, `size`) VALUES
('1b2c1632-7963-42d7-9ce5-57ac7470522e', 'XL'),
('5a31cae4-f710-4a8c-90ce-7c1840c23f9e', 'M'),
('68531e5d-41e4-4d10-9111-24f682411881', 'L'),
('d95e59c5-8dfb-414f-8b2a-554a373af593', 'S');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_user`
--

CREATE TABLE `c_user` (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(36) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `cart_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_user`
--

INSERT INTO `c_user` (`id`, `created_at`, `created_by`, `last_modified_at`, `last_modified_by`, `version`, `username`, `password`, `display_name`, `first_name`, `last_name`, `phone`, `email`, `avatar`, `status`, `cart_id`) VALUES
('436f7600-6b84-4736-b2fe-15f2185e094f', '2023-12-12 09:57:37', 'anonymousUser', '2023-12-12 10:07:25', 'devhuunhan', 2, 'devhuunhan', '$2a$10$Jh0r3rnG7kpO/MYFIctuQu9ytPfkMFLE33mWPrsKrGo8rQkt.ZLLW', 'Huu Nhan', NULL, NULL, '0376571235', 'devhuunhan@gmail.com', NULL, 'ACTIVE', 'cfcfc2b1-d8ea-4a85-88d6-99fe3aacb6a5'),
('5f337d2e-2d6e-4fcd-9e85-dd8bb5746796', '2023-11-18 12:44:37', 'anonymousUser', '2023-12-08 15:22:20', 'admin1', 1, 'admin1', '$2a$10$NKPzln.5YxXVxbFIYg1Ofe/4Cm1p4uBCL7pI0osscviDsRgJkSZzi', 'Admin 1', NULL, NULL, '09213213421', 'admin1@gmail.com', NULL, 'ACTIVE', 'bf5739d7-1fa3-4a28-aef4-d420b6544b85'),
('e628639f-289b-450c-baa0-cde2b90b8b7a', '2023-11-24 11:08:13', 'anonymousUser', '2023-12-10 06:18:00', 'tranhuunhan', 15, 'tranhuunhan', '$2a$10$QVAhXQlFk9uSxXu6kfZiwO8.NEf33yprhm/d6a1uZKnKB35ZP8FpK', 'Tran Huu Nhan', NULL, NULL, '0376578609', 'nhandeptrai137@gmail.com', NULL, 'ACTIVE', '370845db-471f-49b2-bd59-af8e7d741c00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_user_address`
--

CREATE TABLE `c_user_address` (
  `id` varchar(36) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `district` varchar(50) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `is_default` bit(1) DEFAULT b'0',
  `user_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_user_address`
--

INSERT INTO `c_user_address` (`id`, `address`, `district`, `ward`, `city`, `is_default`, `user_id`) VALUES
('33c2ff66-2f19-40a9-aabd-912a4effa6e4', 'HA huy giap 2', 'phuong thanh loc', 'quan 12', 'Ho Chi Minh', b'1', '5f337d2e-2d6e-4fcd-9e85-dd8bb5746796'),
('fb3d1086-faff-4e2e-b2ab-bda03d8d6618', '133/14 hà huy giap', 'Quận Ba Đình', 'Phường Phúc Xá', 'Thành phố Hà Nội', b'1', 'e628639f-289b-450c-baa0-cde2b90b8b7a'),
('6d4f882e-b783-49ea-8f8b-858314c941ff', '12 Bình Dương', 'Huyện Pác Nặm', 'Xã Giáo Hiệu', 'Tỉnh Bắc Kạn', b'0', '436f7600-6b84-4736-b2fe-15f2185e094f'),
('ecde7b37-e6c3-4ac8-b647-76865e0f45fe', '111/111 Bẩy Chuồng', 'Quận Ba Đình', 'Phường Vĩnh Phúc', 'Thành phố Hà Nội', b'1', '436f7600-6b84-4736-b2fe-15f2185e094f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_user_role`
--

CREATE TABLE `c_user_role` (
  `role_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `c_user_role`
--

INSERT INTO `c_user_role` (`role_id`, `user_id`) VALUES
('027f82e4-a564-d19b-f257-94bed336d833', '436f7600-6b84-4736-b2fe-15f2185e094f'),
('027f82e4-a564-d19b-f257-94bed336d833', '5f337d2e-2d6e-4fcd-9e85-dd8bb5746796'),
('3c3e8b49-33c0-97bb-952f-5380b26eb173', '436f7600-6b84-4736-b2fe-15f2185e094f'),
('3c3e8b49-33c0-97bb-952f-5380b26eb173', 'e628639f-289b-450c-baa0-cde2b90b8b7a');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `c_cart`
--
ALTER TABLE `c_cart`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_cart_item`
--
ALTER TABLE `c_cart_item`
  ADD KEY `fk_cart_item_product` (`product_id`) USING BTREE,
  ADD KEY `fk_cart_item_cart` (`cart_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_category`
--
ALTER TABLE `c_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_category_product`
--
ALTER TABLE `c_category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_color`
--
ALTER TABLE `c_color`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_order`
--
ALTER TABLE `c_order`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `fk_order_to_details` (`order_details_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_order_details`
--
ALTER TABLE `c_order_details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_order_details_item`
--
ALTER TABLE `c_order_details_item`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE,
  ADD KEY `fk_item_to_details` (`order_detail_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_product`
--
ALTER TABLE `c_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_product_color`
--
ALTER TABLE `c_product_color`
  ADD PRIMARY KEY (`color_id`,`product_id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_product_images`
--
ALTER TABLE `c_product_images`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_product_size`
--
ALTER TABLE `c_product_size`
  ADD PRIMARY KEY (`size_id`,`product_id`) USING BTREE,
  ADD KEY `product_id` (`product_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_refresh_token`
--
ALTER TABLE `c_refresh_token`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `refresh_token` (`refresh_token`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_role`
--
ALTER TABLE `c_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_size`
--
ALTER TABLE `c_size`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_user`
--
ALTER TABLE `c_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `FK_user_cart` (`cart_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_user_address`
--
ALTER TABLE `c_user_address`
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Chỉ mục cho bảng `c_user_role`
--
ALTER TABLE `c_user_role`
  ADD PRIMARY KEY (`role_id`,`user_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `c_cart_item`
--
ALTER TABLE `c_cart_item`
  ADD CONSTRAINT `fk_cart_item_cart` FOREIGN KEY (`cart_id`) REFERENCES `c_cart` (`id`),
  ADD CONSTRAINT `fk_cart_item_product` FOREIGN KEY (`product_id`) REFERENCES `c_product` (`id`);

--
-- Các ràng buộc cho bảng `c_category_product`
--
ALTER TABLE `c_category_product`
  ADD CONSTRAINT `c_category_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `c_category` (`id`),
  ADD CONSTRAINT `c_category_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `c_product` (`id`);

--
-- Các ràng buộc cho bảng `c_order`
--
ALTER TABLE `c_order`
  ADD CONSTRAINT `c_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `c_user` (`id`),
  ADD CONSTRAINT `fk_order_to_details` FOREIGN KEY (`order_details_id`) REFERENCES `c_order_details` (`id`);

--
-- Các ràng buộc cho bảng `c_order_details_item`
--
ALTER TABLE `c_order_details_item`
  ADD CONSTRAINT `c_order_details_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `c_product` (`id`),
  ADD CONSTRAINT `fk_item_to_details` FOREIGN KEY (`order_detail_id`) REFERENCES `c_order_details` (`id`);

--
-- Các ràng buộc cho bảng `c_product_color`
--
ALTER TABLE `c_product_color`
  ADD CONSTRAINT `c_product_color_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `c_color` (`id`),
  ADD CONSTRAINT `c_product_color_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `c_product` (`id`);

--
-- Các ràng buộc cho bảng `c_product_images`
--
ALTER TABLE `c_product_images`
  ADD CONSTRAINT `c_product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `c_product` (`id`);

--
-- Các ràng buộc cho bảng `c_product_size`
--
ALTER TABLE `c_product_size`
  ADD CONSTRAINT `c_product_size_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `c_size` (`id`),
  ADD CONSTRAINT `c_product_size_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `c_product` (`id`);

--
-- Các ràng buộc cho bảng `c_refresh_token`
--
ALTER TABLE `c_refresh_token`
  ADD CONSTRAINT `c_refresh_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `c_user` (`id`);

--
-- Các ràng buộc cho bảng `c_user`
--
ALTER TABLE `c_user`
  ADD CONSTRAINT `FK_user_cart` FOREIGN KEY (`cart_id`) REFERENCES `c_cart` (`id`);

--
-- Các ràng buộc cho bảng `c_user_address`
--
ALTER TABLE `c_user_address`
  ADD CONSTRAINT `c_user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `c_user` (`id`);

--
-- Các ràng buộc cho bảng `c_user_role`
--
ALTER TABLE `c_user_role`
  ADD CONSTRAINT `c_user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `c_role` (`id`),
  ADD CONSTRAINT `c_user_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `c_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
