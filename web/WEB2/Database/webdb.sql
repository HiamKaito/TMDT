-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2021 lúc 09:20 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblchitiethd`
--

CREATE TABLE `tblchitiethd` (
  `MaHD` varchar(30) NOT NULL,
  `idSach` varchar(30) NOT NULL,
  `SoLuong` varchar(30) NOT NULL,
  `GiaBan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblchitiethd`
--

INSERT INTO `tblchitiethd` (`MaHD`, `idSach`, `SoLuong`, `GiaBan`) VALUES
('HD1', '194', '1', '123'),
('HD1', '52', '1', '1000'),
('HD1', 'id7', '1', '800'),
('HD2', '224', '10', '123'),
('HD2', 'id2', '4', '500'),
('HD3', 'id8', '1', '900'),
('HD4', 'id8', '1', '900'),
('HD5', '110', '1', '33333'),
('HD5', '194', '2', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldangkytaikhoan`
--

CREATE TABLE `tbldangkytaikhoan` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbldangkytaikhoan`
--

INSERT INTO `tbldangkytaikhoan` (`email`) VALUES
(''),
('a@gmail.com'),
('aasd@gmail.com'),
('abcdef@gmail.com'),
('boardgame@gmail.com'),
('helloban@gmail.com'),
('tangchichung@gmail.com'),
('tester@gmail.com'),
('tmdt@gmail.com'),
('xinchaoban@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoadon`
--

CREATE TABLE `tblhoadon` (
  `MaHD` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `TongTien` varchar(30) NOT NULL,
  `TinhTrang` varchar(30) NOT NULL,
  `NgayThang` date NOT NULL,
  `Email_NhanVien` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblhoadon`
--

INSERT INTO `tblhoadon` (`MaHD`, `Email`, `TongTien`, `TinhTrang`, `NgayThang`, `Email_NhanVien`) VALUES
('HD1', 'tangchichung@gmail.com', '123', 'Đã hoàn thành', '2020-06-19', 'nhanvien@gmail.com'),
('HD2', 'tangchichung@gmail.com', '3230', 'Đã hoàn thành', '2020-06-19', 'nhanvien@gmail.com'),
('HD3', 'nhanvien@gmail.com', '900', 'Đã hoàn thành', '2020-06-19', 'nhanvien@gmail.com'),
('HD4', 'nhanvien@gmail.com', '900', 'Đang thanh toán', '2020-06-19', 'nhanvien@gmail.com'),
('HD5', 'nhanvien@gmail.com', '33579', 'Đang xử lý', '2021-12-21', 'tangchichung@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphanhoi`
--

CREATE TABLE `tblphanhoi` (
  `hoten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phanhoi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblphanhoi`
--

INSERT INTO `tblphanhoi` (`hoten`, `email`, `phanhoi`) VALUES
('tăng chí chung', 'tangchichung@gmail.com', 'website đẹp quá, cho 10 điểm nè <3'),
('Nguyễn Tuấn Anh', 'prohzgod@gmail.com', 'web site tốt thế, cho t xin nhé'),
('Nguyễn Văn A', 'test@gmail.com', 'cho mình xin con rubik được không'),
('lê long', 'lelong@gmail.com', 'web site vip pro max\r\nadasdasdas sad asd asd asd as'),
('haker', 'haker@gmail.haker', 'mình cáo dữ liệu r, có thông tin r, cho t xin 5 tỉ ko pay web\r\nmình cáo dữ liệu r, có thông tin r, cho t xin 5 tỉ ko pay web\r\nmình cáo dữ liệu r, có thông tin r, cho t xin 5 tỉ ko pay web\r\nmình cáo dữ liệu r, có thông tin r, cho t xin 5 tỉ ko pay web');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsach`
--

CREATE TABLE `tblsach` (
  `idSach` varchar(30) NOT NULL,
  `tensach` varchar(30) NOT NULL,
  `idTheLoai` varchar(30) NOT NULL,
  `GiaBan` varchar(30) NOT NULL,
  `urlHinh` varchar(255) NOT NULL,
  `ThongTin` varchar(200) NOT NULL,
  `HienThi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblsach`
--

INSERT INTO `tblsach` (`idSach`, `tensach`, `idTheLoai`, `GiaBan`, `urlHinh`, `ThongTin`, `HienThi`) VALUES
('110', 'Rubik ảo', '5', '33333', '42aaec65ce21ad9a15dd310f8c219fcf.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('123', 'DUEL POWER COLLECTOR YUGIOH - ', '17', '3652', 'DUPO-Poster-EN.jpg', '', 0),
('130', 'GHOSTS FROM THE PAST YUGIOH CO', '17', '32131', '20200403_072115000_iOS Copy.jpg', '', 0),
('132', 'Monster Box', '1', '99999999', 'Totem.png', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('137', 'Cờ Vua Nam Châm Chất Lượng Cao', '6', '250', 'sp24.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('146', '7 Wonders Duel (US)', '15', '3321', '7_w1495451926.jpg', '', 0),
('149', 'Catan', '9', '241', 'Catan.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('154', 'Can’t Stop01', '13', '63', 'Can’t Stop01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('159', 'UNO', '12', '333', 'Uno01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('165', 'Hero Quest', '10', '900', 'Hero Quest.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('178', 'Cờ Shogi', '6', '111', 'sp27.JPG', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('18', 'Ma sói normal', '7', '300', 'MaSoi.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('184', 'Cờ Tỷ Phú Việt Nam', '1', '9999999', 'sp28.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('190', 'Root', '1', '1600', '', 'Star Wars: The Card Game - Edge Of Darkness Expansion', 1),
('194', 'AllahuAkBa', '3', '123', 'mum.jfif', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('202', 'Pylos Mini (US) - Cuộc Thi Đặt', '15', '311', 'pic1599717077.jpg', '', 0),
('210', 'Zombicide', '14', '666', 'Zombicide.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('217', 'Pandemic', '14', '33333', 'Pandemic01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('224', 'adfdasf', '2', '123', 'q4.jpeg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('233', 'DUEL OVERLOAD COLLECTION BOX -', '17', '9999', '20200403_072115000_iOS Copy.jpg', '', 0),
('237', 'Star Wars: The Card Game - Edg', '15', '3333', '6741530845859.png', 'Star Wars: The Card Game - Edge Of Darkness ExpansionStar Wars: The Card Game - Edge Of Darkness Expansion', 0),
('244', 'GHOSTS FROM THE PAST YUGIOH CO', '17', '4500', '_DSC2605 Copy.jfif', '', 0),
('256', 'MeoNo ojae', '12', '3213213', 'MeoNo02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('260', 'Cờ Checkers Nam Châm (Cờ Đam)', '6', '240', 'sp22.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('261', 'Cờ Domino đen cao cấp', '6', '57', 'sp25.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('271', 'Ma sói Gold', '7', '9999', 'MaSoi01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('272', 'Yahtzee erro', '13', '300', 'Yahtzee03.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('277', 'Liar’s Dice', '13', '999', 'Liar’s Dice.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('284', 'Rubik trụ', '1', '3000', '2c96beaab6cacffd6d2db144b3800fa2.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('290', 'Yahtzee noramal', '13', '600', 'Yahtzee01.jpeg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('298', 'Spot it', '11', '3222', 'Spot_it.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('316', 'Bai Tay Den', '12', '200', 'BaiTay02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('320', 'Qwirkle', '8', '999', 'Qwirkle.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('331', 'Arkham Horor', '10', '600', 'Arkham Horor.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('345', 'Geistes', '11', '20', 'Geistes.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('356', 'HỘP BÀI YUGIOH MAXIMUM GOLD YU', '17', '321312', '20201209_153009000_iOS Copy.jpg', 'HỘP BÀI YUGIOH MAXIMUM GOLD YUGIOH - NHẬP KHẨU HOA KỲ USA', 0),
('365', 'Geistes ver 2 edition 3', '11', '600', 'Geistes02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('367', 'Bai Tay', '12', '10', 'BaiTay01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('369', 'ALBUM SƯU TẬP YUGIOH DARK MAGI', '17', '3333', '_DSC7040 Copy.jfif', '', 0),
('371', 'Dungeons & Dragons', '10', '700', 'Dungeons _ Dragons.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('372', 'Rubik tam giac', '5', '300', 'sp19.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('376', 'Liar’s Dice GOLD', '13', '989', 'Liar’s Dice01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('377', 'Clank! (US)', '15', '333', 'cla1499245755.jpg', 'Clank! (US)', 0),
('389', 'GÓI THẺ BÀI YUGIOH MEGA PACK -', '17', '300', '_DSC4327 Copy.jfif', '', 0),
('395', 'Geistes ver 2 edtion 1', '11', '333', 'Geistes01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('396', 'Carcassonne', '8', '400', 'Carcassonne.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('414', 'Rubik 3x3', '5', '1000', 'sp12.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('416', 'Tam Quốc Sát - Vương Triều Chi', '15', '9999', 'heu1620196650.png', '', 0),
('419', 'Halli Galli GOLD', '11', '9999', 'Halli_Galli02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('420', 'Warhammer', '10', '1000', 'Warhammer.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('429', 'MeoNo', '12', '3231', 'MeoNo.png', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('431', 'Liar’s Dice DIAMOND', '13', '99999', 'Liar’s Dice02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('435', 'UNO', '12', '221', 'Uno02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('439', 'Bai Tay roi rac', '12', '900', 'BaiTay03.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('441', 'Connect 4 - Cờ Thả', '6', '180', 'sp26.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('451', 'Quarto Mini (US) - Chọn Cờ Cho', '15', '3333', '', 'Quarto Mini (US) - Chọn Cờ Cho Đối Thủ', 1),
('455', 'Halli Galli', '11', '900', 'Halli_Galli.jpg.crdownload.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('464', 'Spot it 2', '1', '3232', 'Spot_it01.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('465', 'Ma sói edition', '7', '600', 'MaSoi02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('476', 'Forbidden Island', '14', '222', 'Forbidden Island.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('477', 'Wingspan (US)', '15', '1700', 'win1557995495.jpg', 'Wingspan (US)', 0),
('486', 'Rubik 2x2', '5', '200', 'sp13.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('490', 'Scythe (US)', '15', '4321', 'art1547801129.png', '', 0),
('493', 'Can’t Stop02', '13', '80', 'Can’t Stop02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('52', 'Kỹ Thuật Nâng Cao', '1', '1000', 'tokill.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('60', 'Monopoly', '9', '999', 'Monopoly.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('74', 'HỘP BÀI YUGIOH MAXIMUM GOLD YU', '17', '99999', 'MAGO-BoxNA.jpg', '', 0),
('83', 'Yahtzee begin', '13', '321', 'Yahtzee02.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('89', 'Yahtzee', '13', '99', 'Yahtzee.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 0),
('id1', 'Lập trình C và C++', '1', '200', 'sach1.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id10', 'The Great Convergence', '3', '800', 'hp.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id2', 'Lập trình Java', '1', '500', 'sach2.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id3', 'Lập trình C#', '1', '400', 'sach3.png', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id4', 'Lập trình PyThon', '1', '450', 'sach4.jfif', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id5', 'Cấu trúc dữ liệu và giải thuật', '2', '600', 'sach5.jfif', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id6', 'Các bài toán Quy Hoạch Động', '2', '600', 'sach6.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id7', 'Clean Code', '3', '800', 'sach7.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id8', 'Java Core 1st Edition', '3', '900', 'sach8.jpg', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1),
('id9', 'Fundamentals of IT', '3', '700', 'sach9.png', 'Nhóm 20 TMDT, Thứ 5 Tiết 6 7 8 9\r\nLập trình C và C++ sẽ giúp bạn hiểu rõ hơn về vấn đề lập trình\r\nC là một ngôn ngữ thủ tục, trong khi C++ là hướng đối tượng. Tính năng này đề cập đến phong cách lập t', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltaikhoan`
--

CREATE TABLE `tbltaikhoan` (
  `email` varchar(30) NOT NULL,
  `matkhau` varchar(30) NOT NULL,
  `capbac` varchar(30) NOT NULL,
  `Del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbltaikhoan`
--

INSERT INTO `tbltaikhoan` (`email`, `matkhau`, `capbac`, `Del`) VALUES
('adjj@gmail.com', '123', 'nhanvien', 1),
('admin@gmail.com', 'admin', 'admin', 0),
('hacker@gmail.com', '123', 'khachhang', 1),
('khachhang@gmail.com', 'khachhang', 'khachhang', 0),
('nhanvien@gmail.com', '123', 'nhanvien', 0),
('prohz@gmail.com', '123', 'khachhang', 0),
('tangchichung@gmail.com', '123', 'khachhang', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltheloai`
--

CREATE TABLE `tbltheloai` (
  `idTheLoai` varchar(30) NOT NULL,
  `tenTheLoai` varchar(30) NOT NULL,
  `HienThi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbltheloai`
--

INSERT INTO `tbltheloai` (`idTheLoai`, `tenTheLoai`, `HienThi`) VALUES
('1', 'Sách Kỹ Thuật Lập Trình', 1),
('10', 'Nhập vai', 0),
('11', 'Nhanh nhẹn', 0),
('12', 'Thẻ bài', 0),
('13', 'Xúc xắc ', 0),
('14', 'Đồng đội', 0),
('15', 'Chiến thuật', 0),
('17', 'Yugioh', 0),
('2', 'Sách Thuật Toán Và Giải Thuật', 1),
('3', 'Sách Tiếng Anh Chuyên Ngành', 1),
('4', 'Sách AI', 1),
('5', 'Rubik', 0),
('6', 'Cờ', 0),
('7', ' Ẩn vai trò', 0),
('8', 'Đặt thẻ', 0),
('9', 'Kinh tế', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthongtin`
--

CREATE TABLE `tblthongtin` (
  `hovaten` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `goitinh` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tblthongtin`
--

INSERT INTO `tblthongtin` (`hovaten`, `email`, `goitinh`) VALUES
('ashdjas', 'adjj@gmail.com', 'nam'),
('admin', 'admin@gmail.com', 'nam'),
('hacker', 'hacker@gmail.com', 'nam'),
('khachhang', 'khachhang@gmail.com', 'nữ'),
('nhanvien', 'nhanvien@gmail.com', 'nam'),
('prohz', 'prohz@gmail.com', 'nam'),
('admin', 'tangchichung@gmail.com', 'nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblchitiethd`
--
ALTER TABLE `tblchitiethd`
  ADD PRIMARY KEY (`MaHD`,`idSach`),
  ADD KEY `FKCTHDISSACH` (`idSach`),
  ADD KEY `FKCTHDMAHD` (`MaHD`);

--
-- Chỉ mục cho bảng `tbldangkytaikhoan`
--
ALTER TABLE `tbldangkytaikhoan`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FKEmail_HD` (`Email`),
  ADD KEY `FKNAHAsd` (`Email_NhanVien`);

--
-- Chỉ mục cho bảng `tblsach`
--
ALTER TABLE `tblsach`
  ADD PRIMARY KEY (`idSach`),
  ADD KEY `FKTL` (`idTheLoai`);

--
-- Chỉ mục cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `tbltheloai`
--
ALTER TABLE `tbltheloai`
  ADD PRIMARY KEY (`idTheLoai`);

--
-- Chỉ mục cho bảng `tblthongtin`
--
ALTER TABLE `tblthongtin`
  ADD PRIMARY KEY (`email`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblchitiethd`
--
ALTER TABLE `tblchitiethd`
  ADD CONSTRAINT `FKCTHDISSACH` FOREIGN KEY (`idSach`) REFERENCES `tblsach` (`idSach`),
  ADD CONSTRAINT `FKCTHDMAHD` FOREIGN KEY (`MaHD`) REFERENCES `tblhoadon` (`MaHD`);

--
-- Các ràng buộc cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD CONSTRAINT `FKEmail_HD` FOREIGN KEY (`Email`) REFERENCES `tblthongtin` (`email`),
  ADD CONSTRAINT `FKNAHAsd` FOREIGN KEY (`Email_NhanVien`) REFERENCES `tbltaikhoan` (`email`);

--
-- Các ràng buộc cho bảng `tblsach`
--
ALTER TABLE `tblsach`
  ADD CONSTRAINT `FKTL` FOREIGN KEY (`idTheLoai`) REFERENCES `tbltheloai` (`idTheLoai`);

--
-- Các ràng buộc cho bảng `tbltaikhoan`
--
ALTER TABLE `tbltaikhoan`
  ADD CONSTRAINT `FK` FOREIGN KEY (`email`) REFERENCES `tblthongtin` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
