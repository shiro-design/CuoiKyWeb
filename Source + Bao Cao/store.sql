-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2021 lúc 08:33 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'demo', 'demoHCMUE@gmail.com', 'demoHcmue', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `binhluan` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`binhluan_id`, `tenbinhluan`, `binhluan`, `product_id`) VALUES
(7, 'Tets', 'Tai nghe ok', 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsung'),
(7, 'Apple'),
(8, 'Realme'),
(9, 'Oppo'),
(16, 'Xiaomi'),
(17, 'Asus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Laptop'),
(4, 'PC'),
(5, 'Smartphone'),
(6, 'Tai nghe'),
(16, 'Đồng hồ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timeCre` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`, `timeCre`) VALUES
(7, 'demo', 'chmue', 'demo', 'hcm', '70000', '101020304', 'demo1@gmail.com', 'fe01ce2a7fbac8fafaed7c982a04e229', '2021-06-20 02:40:32'),
(8, 'khachhang', 'hcmue', 'hcmue', 'hcmue', '70000', '50505505', 'khachhang@gmail.com', 'khachhang', '2021-06-20 02:39:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(75, 33, 'Airpod Pro ', 7, 1, '6000000', 'daee0f4c12.jpg', 0, '2021-06-08 14:14:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(29, 'Iphone 12 Pro Max', '', '', '0', '', 5, 7, '<p>Iphone 12 Pro Max l&agrave; mẫu mới xịn x&ograve; nhất.</p>', 0, '36000000', '222a9ca8c0.jpg'),
(30, 'Ip 12 Pro', '', '', '0', '', 5, 7, '<p>Iphone 12 Pro cũng l&agrave; mẫu mới nhất....</p>', 0, '30000000', '945398c10c.jpg'),
(31, 'Iphone 11 Pro Max', '', '', '0', '', 5, 7, '<p>Iphone 11 Pro Max tuy cũ nhưng vẫn l&agrave; một lựa chọn đ&aacute;ng gi&aacute;</p>', 0, '27000000', 'c517045248.jpg'),
(32, 'Airpod 2 ', '', '', '0', '', 6, 7, '<p>L&agrave; mẫu cũng rất xịn x&ograve; đến từ Apple</p>', 0, '3000000', 'b4b7a4270c.jpg'),
(33, 'Airpod Pro ', '', '', '0', '', 6, 7, '<p>Tai nghe Airpod Pro si&ecirc;u xịn</p>', 0, '6000000', 'daee0f4c12.jpg'),
(34, 'Xiaomi 11 ', '', '', '0', '', 5, 16, '<p>Đ&acirc;y l&agrave; một thiết kế mới v&agrave; c&oacute; t&iacute;nh đột ph&aacute;&nbsp;</p>', 0, '13000000', 'b05068e22f.jpg'),
(35, 'Xiaomi Mi Note ', '', '', '0', '', 5, 16, '<p>Đ&acirc;y l&agrave; một&nbsp; mẫu thiết kế tinh giản...</p>', 0, '20000000', '12a0e9668d.jpg'),
(36, 'Samsung M51', '', '', '0', '', 5, 6, '<p>Đ&acirc;y l&agrave; một d&ograve;ng điện thoại xịn x&ograve;</p>', 1, '15000000', 'f70d97f566.jpg'),
(37, 'Samsung Note 20 Ultra', '', '', '0', '', 5, 6, '<p>Đ&acirc;y l&agrave; mẫu điện thoại cao cấp nhất của samsung</p>', 0, '29000000', '740b6d8efc.jpg'),
(38, 'Oppo Reno 4', '', '', '0', '', 5, 9, '<p>Đ&acirc;y l&agrave; một d&ograve;ng điện thoại chuy&ecirc;n chụp ảnh của oppo</p>', 0, '19000000', '88f20ef257.jpg'),
(39, 'Oppo A73', '', '', '0', '', 5, 9, '<p>Oppo A73 l&agrave; d&ograve;ng điện thoại tầm trung c&oacute; hiệu năng xịn x&ograve;</p>', 1, '9000000', 'c086de06e7.jpg'),
(40, 'Realme 7 Pro ', '', '', '0', '', 5, 8, '<p>Realme 7 Pro l&agrave; mẫu điện thoại c&oacute; chất lượng cao trong tầm gi&aacute;</p>', 1, '9990000', '9cc26c3259.jpg'),
(41, 'Realme Series', '', '', '0', '', 5, 8, '<p>Đ&acirc;y l&agrave; d&ograve;ng cơ bản dễ tiếp cận với mọi người&nbsp;</p>', 1, '4000000', '4b8f516ff0.png'),
(42, 'PC GAMING HACOM 003 (i7 11700/Z590/32GB RAM/500GB SSD/RTX 3070/750W/TẢN AIO CORSAIR)', '', '', '0', '', 4, 17, '<p>CPU : I7 11700&nbsp;</p>\r\n<p>Main : Z590</p>', 1, '60000000', 'b77270581a.jpg'),
(43, 'PC HACOM ENTHUSIAST WATERCOOLING-GAMING LIMITED E1', '', '', '0', '', 4, 17, '<p>CPU : i7 8700k</p>\r\n<p>Ram : 16gb</p>\r\n<p>Ssd : 512gb</p>\r\n<p>Vga : Rtx 2070 ti</p>', 0, '39000000', 'f0224d78c8.jpg'),
(44, 'Laptop Apple MacBook Pro M1 16GB/256GB/Silver (Z11D000E5) ', '', '', '0', '', 3, 7, '<p>CPU : Apple M1 mới nhất&nbsp;</p>\r\n<p>SSD : 256gb</p>\r\n<p>M&agrave;u : Bạc&nbsp;</p>\r\n<p>Pin : 19 giờ</p>', 1, '40000000', 'b1b9ab7dc5.jpg'),
(45, 'Laptop Apple MacBook Air M1 8GB/512GB/Space Grey (MGN73SA/A)', '', '', '0', '', 3, 7, '<p>Cpu : Apple m1&nbsp;</p>\r\n<p>SSD: 512 gb</p>\r\n<p>M&agrave;u : X&aacute;m</p>\r\n<p>Pin : 19 giờ</p>', 0, '35000000', 'd8993bba69.jpg'),
(46, 'Apple Watch Series 6 40mm (GPS) viền nhôm bạc - Dây cao su chính hãng (Full VAT)', '', '', '0', '', 16, 7, 'Apple Watch SE 40mm (GPS) viền nh&ocirc;m x&aacute;m - D&acirc;y cao su ch&iacute;nh h&atilde;ng (Full VAT)\" href=\"https://didongviet.vn/apple-watch-se-40-mm-gps-vien-xam-day-cao-su\" target=\"_blank\">Apple Watch SE 44mm (GPS)</a>&nbsp;viền nh&ocirc;m x&aacute;m - d&acirc;y cao su ch&iacute;nh h&atilde;ng l&agrave; phi&ecirc;n bản smartwatch gi&aacute; rẻ, t&iacute;ch hợp nhiều t&iacute;nh năng, ph&ugrave; hợp với c&aacute;c bạn trẻ năng động, y&ecirc;u th&iacute;ch phong c&aacute;ch thể thao.</h2>', 0, '10190000', 'f48a5840e7.jpg'),
(47, 'Apple Watch Series 6 40mm (GPS) viền nhôm xám - Dây cao su chính hãng (Full VAT)', '', '', '0', '', 16, 7, '<p>Apple Watch Series 6 40mm (GPS) với sự n&acirc;ng cấp về chất lượng phần cứng v&agrave; cả&nbsp; hệ sinh th&aacute;i phần mềm mang nhiều t&iacute;nh năng đ&aacute;ng gi&aacute; v&agrave; v&ocirc; c&ugrave;ng tiện lợi. Đ&acirc;y l&agrave; thiết bị tối ưu cho cuộc sống l&agrave;nh mạnh, năng động hơn, kết nối hơn.</p>', 0, '9990000', '11293b5b38.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(7, 7, 30, 'Ip 12 Pro', '30000000', '945398c10c.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`binhluan_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `binhluan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
