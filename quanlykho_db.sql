-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 06, 2024 lúc 06:18 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlykho_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietban`
--

CREATE TABLE `chitietban` (
  `Id` int NOT NULL,
  `IdDonBan` int DEFAULT NULL,
  `IdSP` int DEFAULT NULL,
  `GiaMua` int DEFAULT NULL,
  `GiaBan` int DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  `ThanhTien` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietban`
--

INSERT INTO `chitietban` (`Id`, `IdDonBan`, `IdSP`, `GiaMua`, `GiaBan`, `SoLuong`, `ThanhTien`) VALUES
(6, 6, 1, 0, 20000, 10, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietmua`
--

CREATE TABLE `chitietmua` (
  `Id` int NOT NULL,
  `IdDonMua` int DEFAULT NULL,
  `TenSP` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdDVT` int DEFAULT NULL,
  `GiaMua` int DEFAULT NULL,
  `SoLuong` int DEFAULT NULL,
  `ThanhTien` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietmua`
--

INSERT INTO `chitietmua` (`Id`, `IdDonMua`, `TenSP`, `IdDVT`, `GiaMua`, `SoLuong`, `ThanhTien`) VALUES
(9, 7, 'Sản phẩm 1', 1, 50000, 10, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachquyen`
--

CREATE TABLE `danhsachquyen` (
  `Id` int NOT NULL,
  `IdNV` int DEFAULT NULL,
  `IdQuyen` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhsachquyen`
--

INSERT INTO `danhsachquyen` (`Id`, `IdNV`, `IdQuyen`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donban`
--

CREATE TABLE `donban` (
  `Id` int NOT NULL,
  `NgayBan` datetime DEFAULT NULL,
  `IdNV` int DEFAULT NULL,
  `IdKH` int DEFAULT NULL,
  `Tong` int DEFAULT NULL,
  `TrangThai` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donban`
--

INSERT INTO `donban` (`Id`, `NgayBan`, `IdNV`, `IdKH`, `Tong`, `TrangThai`) VALUES
(6, '2024-03-26 01:20:00', 1, 1, 200000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donmua`
--

CREATE TABLE `donmua` (
  `Id` int NOT NULL,
  `NgayMua` datetime DEFAULT NULL,
  `IdNV` int DEFAULT NULL,
  `IdNCC` int DEFAULT NULL,
  `ThanhTien` int DEFAULT NULL,
  `TrangThai` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donmua`
--

INSERT INTO `donmua` (`Id`, `NgayMua`, `IdNV`, `IdNCC`, `ThanhTien`, `TrangThai`) VALUES
(7, '2024-03-26 01:19:00', 1, 1, 500000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvitinh`
--

CREATE TABLE `donvitinh` (
  `Id` int NOT NULL,
  `DonVi` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donvitinh`
--

INSERT INTO `donvitinh` (`Id`, `DonVi`) VALUES
(1, 'Chai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `Id` int NOT NULL,
  `TenKH` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DienThoai` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`Id`, `TenKH`, `DienThoai`, `Email`, `DiaChi`) VALUES
(1, 'Khách hàng 1', '0395342134 ', 'khachhang1@gmail.com', '33 xô viết nghệ tĩnh ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `Id` int NOT NULL,
  `TenNCC` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DienThoai` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`Id`, `TenNCC`, `DienThoai`, `Email`, `DiaChi`) VALUES
(1, 'Nhà cung cấp 1', '0999888777', 'nhacungcap1@gmail.com', 'Địa chỉ 1'),
(3, 'Nhà cung cấp 2', '0999888777', 'nhacungcap2@gmail.com', 'Địa chỉ 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `Id` int NOT NULL,
  `TenNV` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DienThoai` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TaiKhoan` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IsActive` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`Id`, `TenNV`, `DienThoai`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `IsActive`) VALUES
(1, 'Quản trị ', '0395342134   ', 'admin@gmail.com', 'Địa chỉ ', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(3, 'Nhân viên 2', '0999888777   ', 'nhanvien2@gmail.com', 'Địa chỉ 2   ', 'nhanvien2@gmail.com', 'df88847550ee279705c6d17ce56c61d2', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `Id` int NOT NULL,
  `TenQuyen` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`Id`, `TenQuyen`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `Id` int NOT NULL,
  `TenSP` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdDVT` int DEFAULT NULL,
  `IdNCC` int DEFAULT NULL,
  `GiaMua` int DEFAULT NULL,
  `GiaBan` int DEFAULT NULL,
  `SoLuong` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`Id`, `TenSP`, `IdDVT`, `IdNCC`, `GiaMua`, `GiaBan`, `SoLuong`) VALUES
(1, 'Tôn', 1, 1, 15000, 20000, -3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietban`
--
ALTER TABLE `chitietban`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdDonBan` (`IdDonBan`),
  ADD KEY `IdSP` (`IdSP`);

--
-- Chỉ mục cho bảng `chitietmua`
--
ALTER TABLE `chitietmua`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdDonMua` (`IdDonMua`),
  ADD KEY `IdDVT` (`IdDVT`);

--
-- Chỉ mục cho bảng `danhsachquyen`
--
ALTER TABLE `danhsachquyen`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdNV` (`IdNV`),
  ADD KEY `IdQuyen` (`IdQuyen`);

--
-- Chỉ mục cho bảng `donban`
--
ALTER TABLE `donban`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdNV` (`IdNV`),
  ADD KEY `IdKH` (`IdKH`);

--
-- Chỉ mục cho bảng `donmua`
--
ALTER TABLE `donmua`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdNV` (`IdNV`),
  ADD KEY `IdNCC` (`IdNCC`);

--
-- Chỉ mục cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdDVT` (`IdDVT`),
  ADD KEY `IdNCC` (`IdNCC`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietban`
--
ALTER TABLE `chitietban`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chitietmua`
--
ALTER TABLE `chitietmua`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danhsachquyen`
--
ALTER TABLE `danhsachquyen`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `donban`
--
ALTER TABLE `donban`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donmua`
--
ALTER TABLE `donmua`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `quyen`
--
ALTER TABLE `quyen`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietban`
--
ALTER TABLE `chitietban`
  ADD CONSTRAINT `chitietban_ibfk_1` FOREIGN KEY (`IdDonBan`) REFERENCES `donban` (`Id`),
  ADD CONSTRAINT `chitietban_ibfk_2` FOREIGN KEY (`IdSP`) REFERENCES `sanpham` (`Id`);

--
-- Các ràng buộc cho bảng `chitietmua`
--
ALTER TABLE `chitietmua`
  ADD CONSTRAINT `chitietmua_ibfk_1` FOREIGN KEY (`IdDonMua`) REFERENCES `donmua` (`Id`),
  ADD CONSTRAINT `chitietmua_ibfk_2` FOREIGN KEY (`IdDVT`) REFERENCES `donvitinh` (`Id`);

--
-- Các ràng buộc cho bảng `danhsachquyen`
--
ALTER TABLE `danhsachquyen`
  ADD CONSTRAINT `danhsachquyen_ibfk_1` FOREIGN KEY (`IdNV`) REFERENCES `nhanvien` (`Id`),
  ADD CONSTRAINT `danhsachquyen_ibfk_2` FOREIGN KEY (`IdQuyen`) REFERENCES `quyen` (`Id`);

--
-- Các ràng buộc cho bảng `donban`
--
ALTER TABLE `donban`
  ADD CONSTRAINT `donban_ibfk_1` FOREIGN KEY (`IdNV`) REFERENCES `nhanvien` (`Id`),
  ADD CONSTRAINT `donban_ibfk_2` FOREIGN KEY (`IdKH`) REFERENCES `khachhang` (`Id`);

--
-- Các ràng buộc cho bảng `donmua`
--
ALTER TABLE `donmua`
  ADD CONSTRAINT `donmua_ibfk_1` FOREIGN KEY (`IdNV`) REFERENCES `nhanvien` (`Id`),
  ADD CONSTRAINT `donmua_ibfk_2` FOREIGN KEY (`IdNCC`) REFERENCES `nhacungcap` (`Id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`IdDVT`) REFERENCES `donvitinh` (`Id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`IdNCC`) REFERENCES `nhacungcap` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
