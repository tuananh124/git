-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 27, 2019 lúc 07:41 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlishop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmsanpham`
--

CREATE TABLE `dmsanpham` (
  `id_dm` int(10) NOT NULL,
  `ten_dm` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dmsanpham`
--

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`) VALUES
(2, 'Samsung'),
(3, 'Sony Ericson'),
(4, 'LG'),
(5, 'HTC'),
(6, 'Nokia'),
(7, 'Blackberry'),
(8, 'Xiaomi'),
(9, 'Phụ Kiện- Đồ chơi công nghệ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id_qc` int(1) NOT NULL,
  `tennqc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh_qc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id_qc`, `tennqc`, `anh_qc`) VALUES
(2, 'kurumi', 'qc2.jpg'),
(3, 'Mezu', 'img1.jpg'),
(4, 'Kính Vr', 'img2.jpg'),
(5, 'samsung', 'qc5.jpg'),
(6, 'iphone', 'qc4.jpg'),
(7, 'quảng cáo 6', 'qc6.gif');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(10) NOT NULL,
  `id_dm` int(10) NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia_sp` int(10) NOT NULL,
  `bao_hanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phu_kien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khuyen_mai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `bao_hanh`, `phu_kien`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(1, 1, 'IPhone 3GS 32G Màu Đen', 'IPhone-3GS-32G-Mau-Den.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(2, 1, 'iPhone 4 16G Quốc Tế Trắng', 'iPhone-4-16G-Quoc-Te-Trang.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(3, 1, 'iPhone 5 16GB Quốc Tế Đen', 'iPhone-5-16GB-Quoc-Te-Den.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(4, 1, 'iPhone 5C 16GB Blue', 'iPhone-5C-16GB-Blue.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(5, 1, 'iPhone 5S 32GB Quốc tế Màu Trắng', 'iPhone-5S-32GB-Quoc-te-Mau-Trang.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(6, 2, 'Samsung Galaxy Note N7000 pink', 'Sam-Galaxy-Note-N7000-pink.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(7, 2, 'Samsung Galaxy Note 2 đen', 'samsung-galaxy-note-2-den.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(8, 2, 'Samsung Galaxy Note 3', 'samsung-galaxy-note-3.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(9, 2, 'Samsung Galaxy S2', 'samsung-galaxy-s2.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(10, 2, 'Samsung Galaxy S3', 'samsung-galaxy-s3.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(11, 2, 'Samsung Galaxy S4', 'samsung-galaxy-s4-galaxy.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(12, 3, 'Sony Arc S (LT18i) Trắng', 'Sony-arc-S-LT18i-Trang.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(13, 3, 'Sony Arc S', 'Sony-Arc-S.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(14, 3, 'Sony X10', 'sony-x10.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(15, 3, 'Sony Xperia TX (LT29i) Đen', 'Sony-Xperia-TX-LT29i-Den.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(16, 3, 'Sony Xperia Z Màu Đen', 'Sony-Xperia-Z-Mau-Den.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(17, 4, 'LG F160 Optimus LTE 2', 'LG-F160-Optimus-LTE-2.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(18, 4, 'LG LTE 3 (LG F260)', 'LG-LTE-3-LG F260.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(19, 4, 'LG Optimus 2X SU660', 'LG-optimus-2x-SU660.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(20, 4, 'LG Optimus 3D SU760', 'LG-Optimus-3D-SU760.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(21, 4, 'LG Optimus G', 'LG-Optimus-G.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(22, 4, 'LG Optimus L7(LG P705)', 'LG-Optimus-L7LG P705.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(23, 5, 'HTC EVO 3D', 'HTC-EVO-3D.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(24, 5, 'HTC One Đen 16GB công ty FPT', 'HTC-One-Den-16GB-cong-ty-FPT.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(25, 5, 'HTC One Trắng 16GB công ty FPT', 'HTC-One-Trang-16GB-cong-ty-FPT.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(26, 5, 'HTC one x white', 'htc-one-x-white.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(27, 5, 'HTC Windows Phone 8S', 'HTC-Windows-Phone-8S.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(29, 6, 'Lumia 900 trắng', 'lumia-900-trang.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(30, 6, 'Lumia 920 hồng', 'lumia-920-hong.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(31, 6, 'Lumia 800 mau trắng', 'lumia-800-mau-trang.jpeg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(33, 7, 'Blackberry 8820', 'Blackberry-8820.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(34, 7, 'Blackberry 8830', 'Blackberry-8830.jpeg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(35, 7, 'Blackberry Bold 9000', 'Blackberry-Bold-9000.jpg', 8600000, '12 tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn Hình 3 lớp', 'Còn hàng', 1, 'Tất cả các sản phẩm Điện thoại của Vietpro Mobile Shop đều là các sản phẩm chính hãng, được bảo hành 12 tháng trên toàn quốc.'),
(38, 8, 'Xiaomi Mix 3', 'xiaomi-mi-mix-3-xanh-l_c-b_o.png', 1299000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn hình 3 lớp', 'Còn hàng', 0, '<p>Mix 3</p>\r\n'),
(39, 6, 'Nokia 8.1', 'nokia-8-1-featured.png', 7990000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', ' Quà tặng Nokia 8.1 Ốp lưng trong, Tặng Loa Anker Soundcore Mini 2 ,PIN DỰ PHÒNG ENERGIZER 10000 MAH UE10012 ĐEN', 'Còn hàng', 0, '<p>Điện thoại Nokia 8.1 - Ch&iacute;nh h&atilde;ng, cấu h&igrave;nh v&agrave; gi&aacute; b&aacute;n</p>\r\n'),
(40, 2, 'Samsung Galaxy A7 (2018)', 'a7_xanh.jpg', 6390000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Bảo Hành Mở rộng', 'Còn hàng', 0, 'Điện thoại Samsung Galaxy A7 2018 Chính hãng là mẫu smartphone tầm trung mới nhất của Samsung. Là bản nâng cấp của Samsung Galaxy A7 2017 nền Samsung Galaxy A7 (2018) mang thiết kế khá giống với người tiền nhiệm, đặc biệt lần này, Samsung đã mạnh tay trang bị camera kép cho thiết bị tầm trung của họ.'),
(41, 2, ' Samsung Galaxy J8 ', 'j8-purple.jpg', 4350000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Ưu đãi Tại High Land coffe', 'Còn hàng', 0, '<p>Samsung đang ng&agrave;y c&agrave;ng củng cố thế lực của h&atilde;ng tại thị trường Việt Nam n&oacute;i ri&ecirc;ng v&agrave; quốc tế n&oacute;i chung. Với d&ograve;ng Galaxy J, h&atilde;ng c&ocirc;ng nghệ H&agrave;n Quốc mang đến cho người d&ugrave;ng th&ecirc;m một sự lựa chọn chất lượng ở ph&acirc;n kh&uacute;c smartphone tầm trung.</p>\r\n'),
(42, 8, 'Xiaomi Mi 8 Lite 64GB', 'xiaomi-mi-8-lite-6-26-inch-4gb-64gb-smartphone-gray-736293-.jpg', 5690000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Trả góp 0% với thẻ tín dụng ngân hàng (tối thiểu 3 triệu) * Miễn phí cà thẻ (ngoại trừ AMEX, UnionPay & JCB)', 'Còn hàng', 0, 'Với Mi 8 Lite sở hữu cấu hình mạnh mà giá bán lại rất phải chăng, Xiaomi tiếp tục mang đến cho người dùng một sự lựa chọn chất lượng ở phân khúc tầm trung.'),
(43, 2, 'Samsung Galaxy Note 9', 'galaxy-note-9-bronze.jpg', 22990000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn hình 3 lớp', 'Còn hàng', 0, 'Galaxy Note 9 là dòng smartphone cao cấp nhất của Samsung hiện nay. Nó sở hữu mọi điểm mạnh về thiết kế, màn hình, camera… trên dòng Galaxy S nhưng được bổ sung thêm cây bút S-Pen “thần thánh”. Chính vì vậy, Galaxy Note 9 Chính hãng phiên bản 2018 rất được người dùng quan tâm.'),
(44, 8, 'Xiaomi Redmi S2 64GB', 'redmi-s2-gold_2.jpg', 2990000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn hình 3 lớp', 'Còn hàng', 0, 'Kể từ khi thành lập, hãng điện thoại Xiaomi luôn bán smartphone sở hữu những tính năng hiện đại nhưng giá bán lại rất phải chăng điển hình như Redmi 5, Redmi 5 Plus, Redmi 5A... Xiaomi Redmi S2 64GB chính là sản phẩm tiếp theo khẳng định rất rõ triết lý kinh doanh của hãng.'),
(45, 2, 'Samsung Galaxy A9 (2018)', 'iqhmp.jpg', 12490000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Máy Mới 100%', 'Dán Màn hình 3 lớp', 'Còn hàng', 0, 'Cuộc đua trên thị trường công nghệ đang diễn ra vô cùng khốc liệt khi các nhà sản xuất thay phiên nhau thiết lập nên những cột mốc mới, chẳng hạn như cách mà hãng điện thoại Samsung trang bị đến 4 camera sau cho Samsung Galaxy A9 2018');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `tai_khoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL,
  `Name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `tai_khoan`, `mat_khau`, `quyen_truy_cap`, `Name`) VALUES
(1, 'nhomprovn@gmail.com', 'nhomprovn', 2, 'nhompro'),
(2, 'sirtuanhoang@gmail.com', 'sirtuanhoang', 1, 'Sir Tuấn Hoàng'),
(3, 'tuanhoang@gmail.com', 'tuanhoang', 1, 'Tuấn Hoàng'),
(4, 'hoangtuan@gmail.com', 'hoangtuan', 1, 'Hoàng Tuấn'),
(5, 'nhompro@gmail.com', 'nhompro', 1, 'nhomPro');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dmsanpham`
--
ALTER TABLE `dmsanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dmsanpham`
--
ALTER TABLE `dmsanpham`
  MODIFY `id_dm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
