-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for chdtdatabase
CREATE DATABASE IF NOT EXISTS `chdtdatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `chdtdatabase`;

-- Dumping structure for table chdtdatabase.chitietgiamgia
CREATE TABLE IF NOT EXISTS `chitietgiamgia` (
  `MAGIAMGIA` varchar(5) NOT NULL,
  `MASANPHAM` varchar(5) NOT NULL,
  `CHIETKHAU` int(11) NOT NULL,
  PRIMARY KEY (`MAGIAMGIA`,`MASANPHAM`),
  KEY `FK_MASP` (`MASANPHAM`),
  CONSTRAINT `FK_MASP` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`),
  CONSTRAINT `FK_MGG` FOREIGN KEY (`MAGIAMGIA`) REFERENCES `chuongtrinhgiamgia` (`MAGIAMGIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.chitietgiamgia: ~10 rows (approximately)
INSERT INTO `chitietgiamgia` (`MAGIAMGIA`, `MASANPHAM`, `CHIETKHAU`) VALUES
	('GG0', 'SP11', 0),
	('GG1', 'SP14', 1000000),
	('GG1', 'SP27', 300000),
	('GG2', 'SP21', 300000),
	('GG2', 'SP7', 500000),
	('GG3', 'SP21', 500000),
	('GG4', 'SP19', 900000),
	('GG5', 'SP11', 50000),
	('GG5', 'SP12', 150000),
	('GG5', 'SP21', 500000);

-- Dumping structure for table chdtdatabase.chitiethoadon
CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `MAHOADON` varchar(10) NOT NULL,
  `MASANPHAM` varchar(5) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `THANHTIEN` int(11) NOT NULL,
  `CHIETKHAU` int(11) NOT NULL,
  PRIMARY KEY (`MAHOADON`,`MASANPHAM`),
  KEY `FK_MASPHD` (`MASANPHAM`),
  CONSTRAINT `FK_MAHOADON` FOREIGN KEY (`MAHOADON`) REFERENCES `hoadon` (`MAHOADON`),
  CONSTRAINT `FK_MASPHD` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.chitiethoadon: ~19 rows (approximately)
INSERT INTO `chitiethoadon` (`MAHOADON`, `MASANPHAM`, `SOLUONG`, `THANHTIEN`, `CHIETKHAU`) VALUES
	('HD1', 'SP11', 1, 25000000, 0),
	('HD1', 'SP26', 1, 990000, 0),
	('HD1', 'SP3', 2, 2000000, 0),
	('HD10', 'SP2', 2, 1580000, 0),
	('HD11', 'SP2', 2, 1580000, 0),
	('HD11', 'SP5', 2, 1176000, 0),
	('HD2', 'SP14', 1, 10990000, 1000000),
	('HD3', 'SP15', 1, 3490000, 200000),
	('HD3', 'SP3', 5, 5000000, 0),
	('HD4', 'SP27', 1, 5490000, 300000),
	('HD4', 'SP7', 1, 8000000, 500000),
	('HD5', 'SP3', 2, 2000000, 200000),
	('HD6', 'SP25', 1, 30000000, 2000000),
	('HD7', 'SP19', 1, 7790000, 900000),
	('HD7', 'SP20', 2, 41980000, 0),
	('HD7', 'SP26', 1, 990000, 300000),
	('HD7', 'SP7', 2, 16000000, 0),
	('HD8', 'SP21', 1, 4690000, 300000),
	('HD9', 'SP24', 1, 18990000, 1500000);

-- Dumping structure for table chdtdatabase.chitietphieunhap
CREATE TABLE IF NOT EXISTS `chitietphieunhap` (
  `MAPHIEUNHAP` varchar(6) NOT NULL,
  `MASANPHAM` varchar(5) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `DONGIA` int(11) NOT NULL,
  PRIMARY KEY (`MAPHIEUNHAP`,`MASANPHAM`),
  KEY `FK_MASPPN` (`MASANPHAM`),
  CONSTRAINT `FK_MAPN` FOREIGN KEY (`MAPHIEUNHAP`) REFERENCES `phieunhap` (`MAPHIEUNHAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.chitietphieunhap: ~6 rows (approximately)
INSERT INTO `chitietphieunhap` (`MAPHIEUNHAP`, `MASANPHAM`, `SOLUONG`, `DONGIA`) VALUES
	('PN3', 'SP5', 2, 588000),
	('PN3', 'SP7', 5, 8000000),
	('PN4', 'SP26', 10, 990000),
	('PN4', 'SP27', 5, 5490000),
	('PN5', 'SP21', 6, 4690000),
	('PN9', 'SP1', 10, 2000000);

-- Dumping structure for table chdtdatabase.chuongtrinhgiamgia
CREATE TABLE IF NOT EXISTS `chuongtrinhgiamgia` (
  `MAGIAMGIA` varchar(5) NOT NULL,
  `TENCHUONGTRINH` varchar(20) NOT NULL,
  `NGAYBATDAU` date NOT NULL,
  `NGAYKETTHUC` date NOT NULL,
  PRIMARY KEY (`MAGIAMGIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.chuongtrinhgiamgia: ~6 rows (approximately)
INSERT INTO `chuongtrinhgiamgia` (`MAGIAMGIA`, `TENCHUONGTRINH`, `NGAYBATDAU`, `NGAYKETTHUC`) VALUES
	('GG0', 'Không giảm giá', '2021-05-01', '2021-05-31'),
	('GG1', 'Giảm giá mùa hè', '2021-06-01', '2021-06-30'),
	('GG2', 'Giảm giá 50%', '2021-07-01', '2021-07-31'),
	('GG3', 'Giảm giá 30%', '2021-08-01', '2021-08-31'),
	('GG4', 'Giảm giá nhập học', '2021-09-01', '2021-09-30'),
	('GG5', 'Vui khỏe đến trường', '2021-05-01', '2021-05-24');

-- Dumping structure for table chdtdatabase.hoadon
CREATE TABLE IF NOT EXISTS `hoadon` (
  `MAHOADON` varchar(10) NOT NULL,
  `MAKHACHHANG` varchar(5) NOT NULL,
  `MANHANVIEN` varchar(5) NOT NULL,
  `MAGIAMGIA` varchar(5) NOT NULL,
  `NGAYLAP` date NOT NULL,
  `TONGTIEN` int(11) NOT NULL,
  `TONGCHIETKHAU` int(11) NOT NULL,
  PRIMARY KEY (`MAHOADON`),
  KEY `FK_MAKH` (`MAKHACHHANG`),
  KEY `FK_MAGG` (`MAGIAMGIA`),
  KEY `FK_MANVHD` (`MANHANVIEN`),
  CONSTRAINT `FK_MAGG` FOREIGN KEY (`MAGIAMGIA`) REFERENCES `chuongtrinhgiamgia` (`MAGIAMGIA`),
  CONSTRAINT `FK_MAKH` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.hoadon: ~11 rows (approximately)
INSERT INTO `hoadon` (`MAHOADON`, `MAKHACHHANG`, `MANHANVIEN`, `MAGIAMGIA`, `NGAYLAP`, `TONGTIEN`, `TONGCHIETKHAU`) VALUES
	('HD1', 'KH1', 'NV2', 'GG0', '2021-04-23', 25990000, 0),
	('HD10', 'KH1', 'NV11', 'GG1', '2021-05-17', 1580000, 0),
	('HD11', 'KH7', 'NV2', 'GG1', '2021-05-18', 2756000, 0),
	('HD2', 'KH2', 'NV2', 'GG1', '2021-04-16', 10990000, 1000000),
	('HD3', 'KH6', 'NV14', 'GG1', '2021-04-19', 3490000, 200000),
	('HD4', 'KH9', 'NV14', 'GG2', '2021-04-18', 13490000, 800000),
	('HD5', 'KH7', 'NV2', 'GG3', '2021-04-17', 2000000, 200000),
	('HD6', 'KH3', 'NV2', 'GG3', '2021-03-27', 30000000, 2000000),
	('HD7', 'KH4', 'NV14', 'GG4', '2021-05-10', 8789000, 1200000),
	('HD8', 'KH8', 'NV2', 'GG4', '2021-05-21', 4690000, 300000),
	('HD9', 'KH5', 'NV14', 'GG4', '2021-05-11', 18990000, 1500000);

-- Dumping structure for table chdtdatabase.khachhang
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MAKH` varchar(5) NOT NULL,
  `TENKH` varchar(20) NOT NULL,
  `HOKH` varchar(20) NOT NULL,
  `GIOITINH` varchar(5) NOT NULL,
  `DIACHI` varchar(255) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `TONGCHITIEU` int(11) NOT NULL,
  PRIMARY KEY (`MAKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.khachhang: ~9 rows (approximately)
INSERT INTO `khachhang` (`MAKH`, `TENKH`, `HOKH`, `GIOITINH`, `DIACHI`, `SDT`, `EMAIL`, `TONGCHITIEU`) VALUES
	('KH1', 'Dũng', 'Đặng Khải', 'Nữ', 'Ha Noi', '1234567890', 'dung@gmail.com', 100000000),
	('KH2', 'Tiên', 'Đặng Thị Kiều', 'Nữ', 'Phú Yên\r\n', '0987654321', 'tien@gmail.com', 90000000),
	('KH3', 'Trâm', 'Ngô Thị Bảo ', 'Nữ', 'Long An', '0246813579', 'tram@gmail.com', 80000000),
	('KH4', 'Hùng', 'Nguyễn Minh', 'Nam', 'Lâm Đồng', '0135792468', 'hung@gmail.com', 70000000),
	('KH5', 'Tuấn', 'Trần Khắc', 'Nam', 'TP.HCM', '0132457689', 'tuan@gmail.com', 60000000),
	('KH6', 'Thắm', 'Dương Thị', 'Nữ', 'Phú Yên', '0978653421', 'tham@gmail.com', 50000000),
	('KH7', 'Hạnh', 'Bùi Lương Bích ', 'Nữ', 'TP.HCM', '0918273645', 'hanh@gmail.com', 40000000),
	('KH8', 'Đông', 'Nguyễn Duy', 'Nam', 'Long An', '0954637281', 'dong@gmail.com', 30000000),
	('KH9', 'Phạm Thị Kim', 'Anh', 'Nữ', 'Long An', '0945362718', 'anh@gmail.com', 20000000);

-- Dumping structure for table chdtdatabase.loaisanpham
CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `MALOAI` varchar(5) NOT NULL,
  `TENLOAI` varchar(30) NOT NULL,
  PRIMARY KEY (`MALOAI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.loaisanpham: ~4 rows (approximately)
INSERT INTO `loaisanpham` (`MALOAI`, `TENLOAI`) VALUES
	('LSP1', 'Điện thoại phổ thông'),
	('LSP2', 'Điện thoại thông minh'),
	('LSP3', 'Máy tính bảng'),
	('LSP4', 'Phụ kiện điện thoại');

-- Dumping structure for table chdtdatabase.nhacungcap
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `MANCC` varchar(5) NOT NULL,
  `TENNCC` varchar(30) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `DIACHI` varchar(255) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  PRIMARY KEY (`MANCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.nhacungcap: ~8 rows (approximately)
INSERT INTO `nhacungcap` (`MANCC`, `TENNCC`, `EMAIL`, `DIACHI`, `SDT`) VALUES
	('NCC1', 'CTy Samsung', 'ctysamsung@gmail.com', 'TP.HCM', '0123456789'),
	('NCC2', 'CTy Thương Mại Điện Tử', 'ctytmdt@gmail.com', 'Hà Nội', '0987654321'),
	('NCC3', 'CTy Di Động Trường Sơn', 'ctyddts@gmail.com', 'TP.HCM', '0253273759'),
	('NCC4', 'CTy Viễn Thông Thành Đạt', 'ctyvttd@gmail.com', 'TP.HCM', '0265826559'),
	('NCC5', 'Thế Giới Công Nghệ', 'tgcn@gmail.com', 'Bình Dương', '0375931586'),
	('NCC6', 'CTy TNHH Hoàng Bá', 'ctytnhhhb@gmail.com', 'Long An', '0723429458'),
	('NCC7', 'CTy Di Động Thành Tiến ', 'ctyddtt@gmail.com', 'Hà Nội ', '0354894518'),
	('NCC8', 'CTy Toàn Thắng', 'ctytt@gmail.com', 'TP.HCM', '0649245293');

-- Dumping structure for table chdtdatabase.nhanvien
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MANHANVIEN` varchar(5) NOT NULL,
  `HONV` varchar(20) NOT NULL,
  `TENNV` varchar(10) NOT NULL,
  `GIOITINH` varchar(3) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `DIACHI` varchar(255) NOT NULL,
  `CHUCVU` varchar(25) NOT NULL,
  `LUONG` int(11) NOT NULL,
  `SDT` varchar(15) NOT NULL,
  `HINHANH` text NOT NULL,
  `CHUTHICH` varchar(255) NOT NULL,
  PRIMARY KEY (`MANHANVIEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.nhanvien: ~13 rows (approximately)
INSERT INTO `nhanvien` (`MANHANVIEN`, `HONV`, `TENNV`, `GIOITINH`, `EMAIL`, `DIACHI`, `CHUCVU`, `LUONG`, `SDT`, `HINHANH`, `CHUTHICH`) VALUES
	('NV1', 'Phan Trí', 'Dũng', 'Nam', 'tridung@gmail.com', 'TP.HCM', 'Admin ', 10000000, '0523658325', '', ''),
	('NV11', 'Nguyễn Hùng', 'Bá', 'Nam', 'ba@gmail.com', 'Hải Phòng', 'Nhân viên nhập hàng', 7000000, '0262273658', '', ''),
	('NV14', 'Nguyễn Hải', 'Âu', 'Nam', 'au@gmail.com', 'Huế', 'Quản lý bán hàng', 7000000, '0256287354', '', ''),
	('NV15', 'Quản trị', 'Admin', 'Nam', 'admin@gmail.com', 'TP.HCM', 'Admin', 20000000, '1234567890', '', 'Chú thích'),
	('NV2', 'Nguyễn Thị Hồng', 'Hạnh', 'Nữ', 'hhanh@gmail.com', 'Bến Tre', 'Quản lý bán hàng', 7000000, '0265379232', '', ''),
	('NV3', 'Phan Văn', 'Tài', 'Nam', 'tai@gmail.com', 'Kiên Giang', 'Quản lý bán hàng', 7000000, '0562659257', '', ''),
	('NV4', 'Lê Công', 'Huynh', 'Nam', 'huynh@gmail.com', 'Sóc Trăng', 'Quản lý bán hàng', 7000000, '0952185625', '', ''),
	('NV5', 'Lê Hồng ', 'Hoa', 'Nữ', 'hoa@gmail.com', 'TP.HCM', 'Quản lý bán hàng', 7000000, '0256282882', '', ''),
	('NV6', 'Nguyễn Thành', 'Trung', 'Nam', 'trung@gmail.com', 'Thanh Hóa', 'Quản lý bán hàng', 7000000, '0252675281', '', ''),
	('NV7', 'Trương Thị Hồng ', 'Huệ', 'Nữ', 'hue@gmail.com', 'TP.HCM', 'Quản lý kho', 7000000, '0257337457', '', ''),
	('NV8', 'Lê Thanh', 'Quang', 'Nam', 'quang@gmail.com', 'Huế', 'Quản lý kho', 7000000, '0528876528', '', ''),
	('NV9', 'Nguyễn Thị Cẩm', 'Duyên', 'Nam', 'duyen@gmail.com', 'TP.HCM', 'Quản lý bán hàng', 7000000, '0258263255', '', '');

-- Dumping structure for table chdtdatabase.nhasanxuat
CREATE TABLE IF NOT EXISTS `nhasanxuat` (
  `MANSX` varchar(5) NOT NULL,
  `TENNSX` varchar(25) NOT NULL,
  PRIMARY KEY (`MANSX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.nhasanxuat: ~9 rows (approximately)
INSERT INTO `nhasanxuat` (`MANSX`, `TENNSX`) VALUES
	('NSX1', 'Apple'),
	('NSX2', 'Samsung'),
	('NSX3', 'Nokia'),
	('NSX4', 'Oppo'),
	('NSX5', 'Philips'),
	('NSX6', 'Blackberry'),
	('NSX7', 'Huawei'),
	('NSX8', 'Vivo'),
	('NSX9', 'Xiaomi');

-- Dumping structure for table chdtdatabase.phieunhap
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `MAPHIEUNHAP` varchar(6) NOT NULL,
  `MANHANVIEN` varchar(5) NOT NULL,
  `MANCC` varchar(5) NOT NULL,
  `NGAYNHAP` date NOT NULL,
  `TONGTIEN` int(11) NOT NULL,
  PRIMARY KEY (`MAPHIEUNHAP`),
  KEY `FK_MANV` (`MANHANVIEN`),
  KEY `FK_MANCC` (`MANCC`),
  CONSTRAINT `FK_MANCC` FOREIGN KEY (`MANCC`) REFERENCES `nhacungcap` (`MANCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.phieunhap: ~4 rows (approximately)
INSERT INTO `phieunhap` (`MAPHIEUNHAP`, `MANHANVIEN`, `MANCC`, `NGAYNHAP`, `TONGTIEN`) VALUES
	('PN3', 'NV11', 'NCC5', '2021-04-15', 0),
	('PN4', 'NV11', 'NCC7', '2021-04-22', 0),
	('PN5', 'NV11', 'NCC2', '2021-05-06', 0),
	('PN9', 'NV1', 'NCC1', '2024-12-01', 20000000);

-- Dumping structure for table chdtdatabase.sanpham
CREATE TABLE IF NOT EXISTS `sanpham` (
  `MASANPHAM` varchar(5) NOT NULL,
  `TENSANPHAM` varchar(30) NOT NULL,
  `MALOAI` varchar(5) NOT NULL,
  `MANSX` varchar(5) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `GIATIEN` int(11) NOT NULL,
  PRIMARY KEY (`MASANPHAM`),
  KEY `FK_MANSX` (`MANSX`),
  KEY `FK_MALOAI` (`MALOAI`),
  CONSTRAINT `FK_MALOAI` FOREIGN KEY (`MALOAI`) REFERENCES `loaisanpham` (`MALOAI`),
  CONSTRAINT `FK_MANSX` FOREIGN KEY (`MANSX`) REFERENCES `nhasanxuat` (`MANSX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Dumping data for table chdtdatabase.sanpham: ~31 rows (approximately)
INSERT INTO `sanpham` (`MASANPHAM`, `TENSANPHAM`, `MALOAI`, `MANSX`, `SOLUONG`, `GIATIEN`) VALUES
	('SP10', 'IPhone 11 Pro Max', 'LSP2', 'NSX1', 4, 18000000),
	('SP11', 'IPhone 12 Pro Max', 'LSP2', 'NSX1', 30, 25000000),
	('SP12', 'Samsung Galaxy A32', 'LSP2', 'NSX2', 10, 6690000),
	('SP13', 'Samsung Galaxy Note 20 Ultra', 'LSP2', 'NSX2', 15, 26990000),
	('SP14', 'Samsung Galaxy Note 10', 'LSP2', 'NSX2', 8, 10990000),
	('SP15', 'Oppo A15', 'LSP2', 'NSX4', 3, 3490000),
	('SP16', 'Oppo Reno5', 'LSP2', 'NSX4', 6, 8690000),
	('SP17', 'Oppo A74', 'LSP2', 'NSX4', 8, 6390000),
	('SP18', 'Vivo Y51', 'LSP2', 'NSX8', 3, 5990000),
	('SP19', 'Vivo V20', 'LSP2', 'NSX8', 5, 7790000),
	('SP2', 'Nokia 210', 'LSP1', 'NSX3', 1, 790000),
	('SP20', 'Xiaomi Mi 11', 'LSP2', 'NSX9', 7, 20990000),
	('SP21', 'Xiaomi Redmi Note 10 ', 'LSP2', 'NSX9', 10, 4690000),
	('SP22', 'Blackberry Leap ', 'LSP2', 'NSX6', 2, 990000),
	('SP23', 'Huawei Y6p', 'LSP2', 'NSX7', 3, 2790000),
	('SP24', 'Samsung Galaxy Tab S7', 'LSP3', 'NSX2', 3, 18990000),
	('SP25', 'IPad Pro ', 'LSP3', 'NSX1', 5, 30000000),
	('SP26', 'Sạc dự phòng Samsung EB-P3300', 'LSP4', 'NSX2', 10, 990000),
	('SP27', 'Tai nghe AirPods Pro', 'LSP4', 'NSX1', 10, 5490000),
	('SP3', 'Ipod Touch', 'LSP2', 'NSX4', 5, 13490000),
	('SP4', 'Philips E105', 'LSP1', 'NSX5', 3, 280000),
	('SP5', 'Philips E220', 'LSP1', 'NSX5', 3, 588000),
	('SP7', 'IPhone X ', 'LSP2', 'NSX1', 10, 8000000),
	('SP8', 'IPhone XR', 'LSP2', 'NSX1', 15, 9000000),
	('SP9', 'IPhone Xs Max', 'LSP2', 'NSX1', 23, 11000000);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
