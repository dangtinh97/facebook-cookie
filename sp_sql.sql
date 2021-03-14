-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 07:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cookie`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(300) NOT NULL,
  `VND` varchar(10) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `time_reg` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `VND`, `ip`, `time_reg`) VALUES
(8, 'adminhaku', '245d2428043f23c0572f03f4a6138f80', '0', '42.113.119.128', '08:12 03-03-2021'),
(12, 'admin.haku', '245d2428043f23c0572f03f4a6138f80', '0', '42.113.119.125', '09:49 06-03-2021');

-- --------------------------------------------------------

--
-- Table structure for table `botcmt`
--

CREATE TABLE `botcmt` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `cookie` varchar(455) NOT NULL,
  `idfb` varchar(32) NOT NULL,
  `name` varchar(55) NOT NULL,
  `noidung` text NOT NULL,
  `limitpost` varchar(11) NOT NULL DEFAULT '0',
  `time_start` varchar(2) NOT NULL,
  `time_end` varchar(2) NOT NULL,
  `date` varchar(30) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `trangthai` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `botcmt`
--

INSERT INTO `botcmt` (`id`, `username`, `cookie`, `idfb`, `name`, `noidung`, `limitpost`, `time_start`, `time_end`, `date`, `ghichu`, `trangthai`) VALUES
(9, 'adminhaku', 'sb=bWc6YET1MnRxGz9WKl6QswlL; datr=KzpAYE41htR7AW67N4yKJSft; c_user=100044805396033; xs=25%3AxhkAbjNLdA6s9w%3A2%3A1615446227%3A7524%3A6216; fr=1QKSWDwHeqY4x68c1.AWXAig-4fyTGsiCq1czbleCvHTI.BgOmdt.7h.AAA.0.0.BgScDT.AWXYnwrbcSU; spin=r.1003430797_b.trunk_t.1615446229_s.1_v.2_; wd=1365x979', '100044805396033', 'Trần Thanh Tuấnꪜ', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc [showname] một ngày thật nhiều niềm vui\nBayh là: [showtime] | Câu chào đi trước, rước lộc lá theo sau.\nMình chúc[showname] một ngày may mắn ạ :)\nBây giờ là: [showtime] | Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: [showtime] |Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: [showtime] |Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: [showtime] |Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: [showtime] |Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé [showname]\nBây gio là: [showtime] |Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha [showname]\nBayh la [showtime] |Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: [showtime] |Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n[showname] ơi ghé fb e tương tác lại nhé\nBây giờ la: [showtime] |Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: [showtime] |Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi [showname] ghé fb e tương tác lại nha\nBayh là: [showtime] |Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha [showname]\nBay h là: [showtime] |Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: [showtime] |Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc [showname] luôn luôn vui vẻ\nRảnh qua fb em tương tác nha [showname]\nBây giờ la: [showtime] |Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: [showtime] |Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: [showtime] |Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n[showname] ơi ghé fb e tương tác lại nha\nBayh la [showtime] |Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: [showtime] |Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha [showname]', '100', '1', '23', '1617418528', 'ko có gì', 'bat');

-- --------------------------------------------------------

--
-- Table structure for table `botlike`
--

CREATE TABLE `botlike` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `cookie` varchar(455) NOT NULL,
  `idfb` varchar(32) NOT NULL,
  `name` varchar(55) NOT NULL,
  `camxuc` varchar(10) NOT NULL,
  `limitpost` varchar(11) NOT NULL DEFAULT '0',
  `time_start` varchar(2) NOT NULL,
  `time_end` varchar(2) NOT NULL,
  `date` varchar(30) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `trangthai` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cookie`
--

CREATE TABLE `cookie` (
  `id` int(11) NOT NULL,
  `cookie` text NOT NULL,
  `fb_dtsg` varchar(100) NOT NULL,
  `idfb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cookie`
--

INSERT INTO `cookie` (`id`, `cookie`, `fb_dtsg`, `idfb`) VALUES
(1, 'fr=16xIC1kxgCM2A3AXT.AWVarwqC8ZbKdY2jKr6uLrrF70Y.Bf7xpR.fb.AAA.0.0.BgCs2Q.AWU5xmJObc8;xs=41%3A70uIWroLtvRKfw%3A2%3A1610974875%3A19808%3A6265%3A%3AAcVaY5az9LoDJVSWhVTOgBU3LD6NtPtv7zSAm6uy3-0;c_user=100007077545377;datr=1d3lX04YY1Em7CAwXXAoLkSp', 'AQEW_n0SvIs8:AQFU-o5eRZtM', '100007077545377'),
(2, 'fr=16xIC1kxgCM2A3AXT.AWUQVuTCA-VVN29aavlxSMpT0Uo.Bf7xpR.fb.AAA.0.0.BgCufD.AWX-DU219Ak;xs=41%3A70uIWroLtvRKfw%3A2%3A1610974875%3A19808%3A6265%3A%3AAcXmkXtU_O_GBm1g3O7tBNYcfVX8GwMz90khhO3e4SM;c_user=100007077545377;datr=1d3lX04YY1Em7CAwXXAoLkSp', 'AQHzO3-n4pn4:AQE0LacHPetm', '100007077545377'),
(3, 'c_user=100062204388514; xs=33%3ArlT7DDoiazke-w%3A2%3A1610973122%3A-1%3A-1%3A%3AAcXn489IWENQsg0o6vsph3ix06adAlZ3B_h6N7k8kg;', 'AQEd8lFpRYeE:AQEQADF9AkVW', '100062204388514'),
(4, 'c_user=100062554652872; xs=37%3Axum0UezxUIe5aA%3A2%3A1610973121%3A-1%3A-1%3A%3AAcXxvTHyACcnSCFsO21uipiRXVsHGyWa_OTHr1U4LA;', 'AQH3gaIRGseZ:AQFPpR9iuvzb', '100062554652872'),
(5, 'c_user=100062497865658; xs=9%3Ar3EDFa-ojl7RdA%3A2%3A1610973413%3A-1%3A-1%3A%3AAcXZAnmiKb4yIud33hYytHdocNUzZYV8fHfVM6Cy4Q;', 'AQECUisEBDgz:AQGqplbbOwRU', '100062497865658');

-- --------------------------------------------------------

--
-- Table structure for table `log_cmt`
--

CREATE TABLE `log_cmt` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `time` varchar(30) NOT NULL,
  `post` varchar(100) NOT NULL,
  `noidung` text NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_cmt`
--

INSERT INTO `log_cmt` (`id`, `username`, `uid`, `time`, `post`, `noidung`, `date`) VALUES
(6, 'kunlocs', '100007077545377', '1611927337', '274882417397988', '23234234', ''),
(7, 'kunlocs', '100007077545377', '1611927337', '2121240018013789', '23234234', ''),
(8, 'kunlocs', '100007077545377', '1611927337', '1225068771224096', '23234234', ''),
(9, 'kunlocs', '100007077545377', '1611927459', '854109508757481', '23234234', ''),
(10, 'kunlocs', '100007077545377', '1611927459', '274886390730924', '23234234', ''),
(11, 'kunlocs', '100007077545377', '1611927459', '393580928627203', '23234234', ''),
(12, 'kunloc', '100007077545377', '1614774178', '259803005617408', 'tt', '03-03-2021'),
(13, 'kunloc', '100007077545377', '1614777626', '242775093930323', 'tt', '03-03-2021'),
(14, 'adminhaku', '100044805396033', '1614777749', '1894568504040420', ':)', '03-03-2021'),
(15, 'adminhaku', '100044805396033', '1614778281', '1701843173319717', ':)', '03-03-2021'),
(16, 'adminhaku', '100044805396033', '1614778324', '1701395423364492', '<3', '03-03-2021'),
(17, 'adminhaku', '100044805396033', '1614778669', '275635050757562', '<3, @[100049332067608:0] ', '03-03-2021'),
(18, 'adminhaku', '100044805396033', '1614781586', '1657580221101672', '; , 21:26:26 03/03/21', '03-03-2021'),
(19, 'adminhaku', '100044805396033', '1614781671', '1515605505295770', '<3 , 21:27:51 03/03/21', '03-03-2021'),
(20, 'kunloc', '100044805396033', '1614783160', '2827509884188640', ' hihi', '03-03-2021'),
(21, 'kunloc', '100044805396033', '1614783387', '832319867626830', '[name] Tt nè [time] \r\nXuống dòng nè | , 21:56:27 03/03/21', '03-03-2021'),
(22, 'kunloc', '100044805396033', '1614784354', '832331364292347', '[name] Tt nè [time] Xuống dòng nè  , 22:12:34 03/03/21', '03-03-2021'),
(23, 'kunloc', '100044805396033', '1614785805', '1702211209949580', '   asasdasd , @[100004821519610:0] , 22:36:45 03/03/21', '03-03-2021'),
(24, 'kunloc', '100044805396033', '1614785896', '2918831385063827', '  asasdasd , 22:38:16 03/03/21', '03-03-2021'),
(25, 'kunloc', '100044805396033', '1614785912', '1242915829443728', '  asasdasd , 22:38:32 03/03/21', '03-03-2021'),
(26, 'kunloc', '100044805396033', '1614785926', '1242916052777039', '  asasdasd , 22:38:46 03/03/21', '03-03-2021'),
(27, 'kunloc', '100044805396033', '1614785970', '832350977623719', '  asasdasd , 22:39:30 03/03/21', '03-03-2021'),
(28, 'kunloc', '100044805396033', '1614786115', '1657624794430548', '  \r\n   Ttql  , 22:41:55 03/03/21', '03-03-2021'),
(29, 'kunloc', '100044805396033', '1614786138', '2785509321671595', '  \r\n   Ttql  , 22:42:18 03/03/21', '03-03-2021'),
(30, 'kunloc', '100044805396033', '1614786157', '1242918432776801', '\r\n   Tt <3  , 22:42:37 03/03/21', '03-03-2021'),
(31, 'kunloc', '100044805396033', '1614786211', '2785515275004333', '   asasdasd  , 22:43:31 03/03/21', '03-03-2021'),
(32, 'kunloc', '100044805396033', '1614786254', '2827538727519089', ' \r\n   Ttql  , 22:44:14 03/03/21', '03-03-2021'),
(33, 'kunloc', '100044805396033', '1614786284', '241141690820265', '\r\n   Tt <3  , 22:44:44 03/03/21', '03-03-2021'),
(34, 'kunloc', '100044805396033', '1614786441', '2960598080894763', ' \r\n   Ttql  , 22:47:21 03/03/21', '03-03-2021'),
(35, 'kunloc', '100044805396033', '1614786495', '2827541247518837', '\r\n   Tt <3  , 22:48:15 03/03/21', '03-03-2021'),
(36, 'kunloc', '100044805396033', '1614786536', '832360544289429', '  \r\n Xin chao \r\nTT lai voi e nha\r\nBayh la  , 22:48:56 03/03/21', '03-03-2021'),
(37, 'kunloc', '100044805396033', '1614786611', '1515422701980717', ' Hello \r\n Bayh la:  asasdasd  , 22:50:11 03/03/21', '03-03-2021'),
(38, 'kunloc', '100044805396033', '1614786647', '1657633127763048', '  \r\n Xin chao \r\nTT lai voi e nha\r\nBayh la  , 22:50:47 03/03/21', '03-03-2021'),
(39, 'kunloc', '100044805396033', '1614786787', '352239412632534', ' Hello \r\n Bayh la:  asasdasd  22:53:07 03/03/21', '03-03-2021'),
(40, 'kunloc', '100044805396033', '1614787232', '275726570748410', ' Hello Ngọc Quyên\r\n Bayh la: 23:00:32 03/03/21 asasdasd ', '03-03-2021'),
(41, 'kunloc', '100044805396033', '1614787290', '832366664288817', ' Hello @[23:01:30 03/03/21:0]\r\n Bayh la: 23:01:30 03/03/21 asasdasd ', '03-03-2021'),
(42, 'kunloc', '100044805396033', '1614787318', '2785526645003196', ' Hello @[23:01:58 03/03/21:0]\r\n Bayh la: 23:01:58 03/03/21 asasdasd ', '03-03-2021'),
(43, 'kunloc', '100044805396033', '1614787360', '4037060276360843', '  \r\n Xin chao 23:02:40 03/03/21\r\nTT lai voi e nha\r\nBayh la 23:02:40 03/03/21', '03-03-2021'),
(44, 'kunloc', '100044805396033', '1614787432', '832367890955361', '  \r\n Xin chao \r\nTT lai voi e nha\r\nBayh la 23:03:52 03/03/21', '03-03-2021'),
(45, 'kunloc', '100044805396033', '1614787472', '3973072759419535', '  \r\n Xin chao \r\nTT lai voi e nha\r\nBayh la 23:04:32 03/03/21', '03-03-2021'),
(46, 'kunloc', '100044805396033', '1614787626', '2827552044184424', ' Hello \r\n Bayh la: 23:07:06 03/03/21 asasdasd ', '03-03-2021'),
(47, 'kunloc', '100044805396033', '1614788399', '566281830997454', ' Câu chào đi trước, rước lộc lá theo sau.\r\nMình chúc  một ngày may mắn ạ :)\r\nBây giờ là: 23:19:59 03/03/21', '03-03-2021'),
(48, 'kunloc', '100044805396033', '1614788508', '2827562804183348', 'Bao giờ cho chuối có cành\r\nCho sung có nụ cho hành có hoa\r\nBao giờ bạn lạ chào ta\r\nCho quen cho biết cho thành bạn thân\r\nQua tường fb e tương tác lại nha ', '03-03-2021'),
(49, 'kunloc', '100044805396033', '1614788549', '2918854285061537', 'Buôn có bạn, bán có phường.\r\nGặp nhau là cái duyên…\r\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\r\n ơi ghé fb e tương tác lại nhé\r\nBây giờ la: 23:22:29 03/03/21', '03-03-2021'),
(50, 'kunloc', '100044805396033', '1614788737', '885420172306191', 'Trăm năm đá núi cũng mòn.\r\nMình chăm tương tác vẫn còn thấy nhau.\r\nLời chào không mất tiền mua :3\r\nThả tim một cái thấy nhau cả ngày :P\r\nBâyh là: 23:25:37 03/03/21', '03-03-2021'),
(51, 'kunloc', '100044805396033', '1614788890', '2785540661668461', 'Hoa thơm ai nỡ bẻ cành\r\nĐã vào fb sao đành bỏ đi\r\nNgười ơi lỡ thấy nhau thì\r\nChào nhau 1 tiếng để gần nhau thêm\r\nBayh là: 23:28:10 03/03/21', '03-03-2021'),
(52, 'kunloc', '100044805396033', '1614789350', '267276764917022', 'Hôm này e gửi lời chào\r\nBuôn may bán đắt tiền vào như mưa\r\nCả nhà đã thấy em chưa\r\nHello một tiếng cùng đưa lộc về\r\nBây h là: 23:35:50 03/03/21', '03-03-2021'),
(53, 'kunloc', '100044805396033', '1614789638', '832386800953470', 'Sớm mai rót chén rươu đào\r\nĐổ đi thì tiếc uống vào thì say.\r\nBạn hiền chớ tiếc lời hay.\r\nChào nhau một tiếng lộc bay đầy nhà\r\nRảnh tương tác lại với e nha \r\nBay h là: 23:40:38 03/03/21', '03-03-2021'),
(54, 'kunloc', '100044805396033', '1614789938', '2918866571726975', 'Ngày xưa facebook để chơi\r\nNgày nay facebook là nơi kiếm tiền\r\nHello tất Cả bạn hiền\r\nCùng nhau tương tác để tiền nhân đôi\r\nBây giờ là: 23:45:38 03/03/21', '03-03-2021'),
(55, 'kunloc', '100044805396033', '1614790238', '4037147769685427', ' Câu chào đi trước, rước lộc lá theo sau.\r\nMình chúc  một ngày may mắn ạ :)\r\nBây giờ là: 23:50:38 03/03/21', '03-03-2021'),
(56, 'kunloc', '100044805396033', '1614790530', '4037160346350836', ' Có duyên sẽ gặp bạn hiền\r\nMở hàng may mắn đếm tiền liền tay\r\nBữa nay em gửi lời chào :)\r\nCùng nhau tương tác ta càng thêm thân.\r\nBayh la: 23:55:30 03/03/21', '03-03-2021'),
(57, 'kunloc', '100044805396033', '1614790872', '1242958156106162', 'Thân nhau cũng bởi câu chào\r\nGặp nhau cũng bởi hay vào FB.\r\nChúc  luôn luôn vui vẻ\r\nRảnh qua fb em tương tác nha \r\nBây giờ la: 00:01:12 04/03/21', '04-03-2021'),
(58, 'kunloc', '100044805396033', '1614791131', '1043863606104116', 'Hoa thơm ai nỡ bẻ cành\r\nĐã vào fb sao đành bỏ đi\r\nNgười ơi lỡ thấy nhau thì\r\nChào nhau 1 tiếng để gần nhau thêm\r\nBayh là: 00:05:31 04/03/21', '04-03-2021'),
(59, 'kunloc', '100044805396033', '1614791438', '2918879265059039', 'Bánh mì thì phải có bơ\r\nGặp nhau buôn bán làm ngơ sao đành\r\nEm đây bày tỏ lòng thành\r\nAE đọc được chớ đành làm ngơ\r\n ơi ghé fb e tương tác lại nha\r\nBayh la 00:10:38 04/03/21', '04-03-2021'),
(60, 'kunloc', '100044805396033', '1614791740', '1515580145298306', 'Sớm mai rót chén rươu đào\r\nĐổ đi thì tiếc uống vào thì say.\r\nBạn hiền chớ tiếc lời hay.\r\nChào nhau một tiếng lộc bay đầy nhà\r\nRảnh tương tác lại với e nha \r\nBay h là: 00:15:40 04/03/21', '04-03-2021'),
(61, 'kunloc', '100044805396033', '1614792039', '2832368546983827', 'Hoa thơm ai nỡ bẻ cành\r\nĐã vào fb sao đành bỏ đi\r\nNgười ơi lỡ thấy nhau thì\r\nChào nhau 1 tiếng để gần nhau thêm\r\nBayh là: 00:20:39 04/03/21', '04-03-2021'),
(62, 'kunloc', '100044805396033', '1614792330', '1083710518809373', ' Có duyên sẽ gặp bạn hiền\r\nMở hàng may mắn đếm tiền liền tay\r\nBữa nay em gửi lời chào :)\r\nCùng nhau tương tác ta càng thêm thân.\r\nBayh la: 00:25:30 04/03/21', '04-03-2021'),
(63, 'kunloc', '100044805396033', '1614792666', '1147259545723687', 'Hoa thơm ai nỡ bẻ cành\r\nĐã vào fb sao đành bỏ đi\r\nNgười ơi lỡ thấy nhau thì\r\nChào nhau 1 tiếng để gần nhau thêm\r\nBayh là: 00:31:06 04/03/21', '04-03-2021'),
(64, 'kunloc', '100044805396033', '1614822037', '2966177713624935', 'abc\nabc abc abc', '04-03-2021'),
(65, 'kunloc', '100044805396033', '1614822339', '1657900521069642', 'Trăm năm đá núi cũng mòn.\r\nMình chăm tương tác vẫn còn thấy nhau.\r\nLời chào không mất tiền mua :3\r\nThả tim một cái thấy nhau cả ngày :P\r\nBâyh là: 08:45:39 04/03/21 ', '04-03-2021'),
(66, 'kunloc', '100044805396033', '1614822637', '1657910804401947', 'Trăm năm đá núi cũng mòn.\r\nMình chăm tương tác vẫn còn thấy nhau.\r\nLời chào không mất tiền mua :3\r\nThả tim một cái thấy nhau cả ngày :P\r\nBâyh là: 08:50:37 04/03/21 ', '04-03-2021'),
(67, 'kunloc', '100044805396033', '1614822930', '1659505347564745', 'Thân nhau cũng bởi câu chào\r\nGặp nhau cũng bởi hay vào FB.\r\nChúc @[Phạm Như Ý:0] luôn luôn vui vẻ\r\nRảnh qua fb em tương tác nha @[Phạm Như Ý:0]\r\nBây giờ la: 08:55:30 04/03/21 ', '04-03-2021'),
(68, 'kunloc', '100044805396033', '1614823270', '491843545173368', 'Hôm này e gửi lời chào\r\nBuôn may bán đắt tiền vào như mưa\r\nCả nhà đã thấy em chưa\r\nHello một tiếng cùng đưa lộc về\r\nBây h là: 09:01:10 04/03/21 ', '04-03-2021'),
(69, 'kunloc', '100044805396033', '1614823530', '3088365601391032', 'Đã online xin đừng ngại tương tác\r\nCó duyên mai này mình hợp tác thì sao\r\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\r\nBay gio là: 09:05:30 04/03/21 ', '04-03-2021'),
(70, 'kunloc', '100044805396033', '1614823838', '1043877992769344', 'Thu đi để lại lá vàng\r\nNgười đi để lại cho mình vẫy tay\r\nVẫy tay để lấy cái may\r\nBuôn may bán đắt vui lây cả làng\r\nBay h la: 09:10:38 04/03/21 ', '04-03-2021'),
(71, 'kunloc', '100044805396033', '1614824437', '491849298506126', 'Thân nhau cũng bởi câu chào\r\nGặp nhau cũng bởi hay vào FB.\r\nChúc @[Hai Yen Nguyen:0] luôn luôn vui vẻ\r\nRảnh qua fb em tương tác nha @[Hai Yen Nguyen:0]\r\nBây giờ la: 09:20:37 04/03/21 ', '04-03-2021'),
(72, 'kunloc', '100044805396033', '1614824726', '443267496988564', 'Trên trời có triệu vì sao\r\nThấy nhau thì phải vẫy chào mới vui\r\nAi ơi nhìn thấy em rồi\r\nQua tường fb em chào 1 câu\r\nBâyh là: 09:25:26 04/03/21 ', '04-03-2021'),
(73, 'kunloc', '100044805396033', '1614824746', '443321000316547', 'Hoa thơm ai nỡ bẻ cành\r\nĐã vào fb sao đành bỏ đi\r\nNgười ơi lỡ thấy nhau thì\r\nChào nhau 1 tiếng để gần nhau thêm\r\nBayh là: 09:25:46 04/03/21 ', '04-03-2021'),
(74, 'kunloc', '100044805396033', '1614824784', '1657901941069500', 'Facebook như một mái nhà.\r\nKẻ qua người lại sẽ là chị em.\r\nChào nhau thấm đậm nghĩa tình \r\nĐể tăng tương tác để mình thêm thân.\r\nChúc  một ngày thật nhiều niềm vui\r\nBayh là: 09:26:24 04/03/21 ', '04-03-2021'),
(75, 'kunloc', '100005319458093', '1614824784', '3056753721275910', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 09:26:24 04/03/21 ', '04-03-2021'),
(76, 'kunloc', '100044805396033', '1614824840', '1515724281950559', 'Trăm năm đá núi cũng mòn.\r\nMình chăm tương tác vẫn còn thấy nhau.\r\nLời chào không mất tiền mua :3\r\nThả tim một cái thấy nhau cả ngày :P\r\nBâyh là: 09:27:20 04/03/21 ', '04-03-2021'),
(77, 'kunloc', '100044805396033', '1614824927', '443397263642254', 'Hôm này e gửi lời chào\r\nBuôn may bán đắt tiền vào như mưa\r\nCả nhà đã thấy em chưa\r\nHello một tiếng cùng đưa lộc về\r\nBây h là: 09:28:47 04/03/21 ', '04-03-2021'),
(78, 'kunloc', '100005319458093', '1614824974', '3914673065238161', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 09:29:34 04/03/21 ', '04-03-2021'),
(79, 'kunloc', '100044805396033', '1614824974', '2919129601700672', 'Miếng trầu dặm chút vôi nồng\r\nBạn bè tương tác thắm hồng làn môi :3\r\nAi ơi đừng để lướt trôi :) :) :)\r\nChào nhau một tiếng cho đời thêm xuân\r\nBayh la: 09:29:34 04/03/21 ', '04-03-2021'),
(80, 'kunloc', '100005319458093', '1614825047', '2834560370191970', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 09:30:47 04/03/21 ', '04-03-2021'),
(81, 'kunloc', '100044805396033', '1614825047', '473832140483050', 'Phận đời chẳng được cao sang,\r\nLại nhiều nghịch cảnh phủ phàng riêng tư.\r\nHôm nay gom chút thơ từ,\r\nĐể mong ai đó gửi lời động viên.\r\nHihi @[100035688030145:0] ghé fb e tương tác lại nha\r\nBayh là: 09:30:47 04/03/21 ', '04-03-2021'),
(82, 'kunloc', '100005319458093', '1614825066', '2776158516030011', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 09:31:06 04/03/21 ', '04-03-2021'),
(83, 'kunloc', '100044805396033', '1614825066', '1657932887733072', 'Đã online xin đừng ngại tương tác\r\nCó duyên mai này mình hợp tác thì sao\r\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\r\nBay gio là: 09:31:06 04/03/21 ', '04-03-2021'),
(84, 'kunloc', '100005319458093', '1614825171', '1573619072847354', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 09:32:51 04/03/21 ', '04-03-2021'),
(85, 'kunloc', '100044805396033', '1614825171', '2827856440820651', 'Hôm nay dậy sớm nhất làng\r\nVội vàng tương tác cho ngàn chị em\r\nGiờ ngồi háo hức thử xem\r\nBài mình được mấy tình yêu vẫy chào\r\nGhé tường fb em tương tác nhé \r\nBây gio là: 09:32:51 04/03/21 ', '04-03-2021'),
(86, 'kunloc', '100005319458093', '1614825212', '1573399266202668', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 09:33:32 04/03/21 ', '04-03-2021'),
(87, 'kunloc', '100044805396033', '1614825212', '2832638473623501', 'Miếng trầu dặm chút vôi nồng\r\nBạn bè tương tác thắm hồng làn môi :3\r\nAi ơi đừng để lướt trôi :) :) :)\r\nChào nhau một tiếng cho đời thêm xuân\r\nBayh la: 09:33:32 04/03/21 ', '04-03-2021'),
(88, 'kunloc', '100044805396033', '1614825312', '2919131885033777', 'Bánh mì thì phải có bơ\r\nGặp nhau buôn bán làm ngơ sao đành\r\nEm đây bày tỏ lòng thành\r\nAE đọc được chớ đành làm ngơ\r\n ơi ghé fb e tương tác lại nha\r\nBayh la 09:35:12 04/03/21 ', '04-03-2021'),
(89, 'kunloc', '100005319458093', '1614825312', '1573352296207365', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 09:35:12 04/03/21 ', '04-03-2021'),
(90, 'kunloc', '100044805396033', '1614825331', '2919131885033777', 'Thân nhau cũng bởi câu chào\r\nGặp nhau cũng bởi hay vào FB.\r\nChúc  luôn luôn vui vẻ\r\nRảnh qua fb em tương tác nha \r\nBây giờ la: 09:35:31 04/03/21 ', '04-03-2021'),
(91, 'kunloc', '100005319458093', '1614825331', '1573380819537846', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 09:35:31 04/03/21 ', '04-03-2021'),
(92, 'kunloc', '100044805396033', '1614825638', '1657945587731802', 'Đã online xin đừng ngại tương tác\r\nCó duyên mai này mình hợp tác thì sao\r\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\r\nBay gio là: 09:40:38 04/03/21 ', '04-03-2021'),
(93, 'kunloc', '100044805396033', '1614825940', '1659527687562511', 'Quý nhau cũng bởi câu chào\r\nGiúp nhau tương tác tiền vào như mưa\r\nDù là trời sáng hay trưa... ;) ;) ;)\r\nChào nhau 1 tiếng cùng đưa lộc về\r\nBayh là: 09:45:40 04/03/21 ', '04-03-2021'),
(94, 'kunloc', '100044805396033', '1614826238', '445697583330702', 'Sớm mai rót chén rươu đào\r\nĐổ đi thì tiếc uống vào thì say.\r\nBạn hiền chớ tiếc lời hay.\r\nChào nhau một tiếng lộc bay đầy nhà\r\nRảnh tương tác lại với e nha @[100036713924367:0]\r\nBay h là: 09:50:38 04/03/21 ', '04-03-2021'),
(95, 'adminhaku', '100044805396033', '1614826619', '2919140378366261', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 09:56:59 04/03/21 ', '04-03-2021'),
(96, 'adminhaku', '100044805396033', '1614827132', '1676183649235601', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 10:05:32 04/03/21 ', '04-03-2021'),
(97, 'adminhaku', '100044805396033', '1614827739', '1657962847730076', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 10:15:39 04/03/21 ', '04-03-2021'),
(98, 'adminhaku', '100044805396033', '1614828038', '2918782961735336', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 10:20:38 04/03/21 ', '04-03-2021'),
(99, 'adminhaku', '100044805396033', '1614828333', '1043785412778602', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 10:25:33 04/03/21 ', '04-03-2021'),
(100, 'adminhaku', '100044805396033', '1614828664', '2832666113620737', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 10:31:04 04/03/21 ', '04-03-2021'),
(101, 'adminhaku', '100044805396033', '1614828930', '1044135889410221', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 10:35:30 04/03/21 ', '04-03-2021'),
(102, 'adminhaku', '100044805396033', '1614829238', '2966249576951082', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100006982050733:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 10:40:38 04/03/21 ', '04-03-2021'),
(103, 'adminhaku', '100044805396033', '1614829538', '1659088907606389', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha @[100005158874632:0]\nBay h là: 10:45:38 04/03/21 ', '04-03-2021'),
(104, 'adminhaku', '100044805396033', '1614830129', '1044144192742724', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 10:55:29 04/03/21 ', '04-03-2021'),
(105, 'adminhaku', '100044805396033', '1614830468', '1657898997736461', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 11:01:08 04/03/21 ', '04-03-2021'),
(106, 'adminhaku', '100044805396033', '1614830731', '1657906304402397', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 11:05:31 04/03/21 ', '04-03-2021'),
(107, 'adminhaku', '100044805396033', '1614831037', '1657980407728320', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 11:10:37 04/03/21 ', '04-03-2021'),
(108, 'adminhaku', '100044805396033', '1614831339', '1657931111066583', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 11:15:39 04/03/21 ', '04-03-2021'),
(109, 'adminhaku', '100044805396033', '1614831639', '885786682269540', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 11:20:39 04/03/21 ', '04-03-2021'),
(110, 'adminhaku', '100044805396033', '1614831930', '450553393042577', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 11:25:30 04/03/21 ', '04-03-2021'),
(111, 'adminhaku', '100044805396033', '1614832264', '1658872380961375', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100005158874632:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 11:31:04 04/03/21 ', '04-03-2021'),
(112, 'adminhaku', '100044805396033', '1614832530', '184930786732289', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc@[100056461060580:0] một ngày may mắn ạ :)\nBây giờ là: 11:35:30 04/03/21 ', '04-03-2021'),
(113, 'adminhaku', '100044805396033', '1614832838', '2832699610284054', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 11:40:38 04/03/21 ', '04-03-2021'),
(114, 'adminhaku', '100044805396033', '1614833139', '885797015601840', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 11:45:39 04/03/21 ', '04-03-2021'),
(115, 'adminhaku', '100044805396033', '1614833438', '1658011227725238', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 11:50:38 04/03/21 ', '04-03-2021'),
(116, 'adminhaku', '100044805396033', '1614833728', '2919200718360227', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 11:55:28 04/03/21 ', '04-03-2021'),
(117, 'adminhaku', '100044805396033', '1614834073', '2919203331693299', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 12:01:13 04/03/21 ', '04-03-2021'),
(118, 'adminhaku', '100044805396033', '1614834330', '4038618856204985', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 12:05:30 04/03/21 ', '04-03-2021'),
(119, 'adminhaku', '100044805396033', '1614834939', '1658021737724187', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 12:15:39 04/03/21 ', '04-03-2021'),
(120, 'adminhaku', '100044805396033', '1614835240', '2919132268367072', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 12:20:40 04/03/21 ', '04-03-2021'),
(121, 'adminhaku', '100044805396033', '1614835530', '1658019801057714', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 12:25:30 04/03/21 ', '04-03-2021'),
(122, 'adminhaku', '100044805396033', '1614835865', '1658028501056844', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 12:31:05 04/03/21 ', '04-03-2021'),
(123, 'adminhaku', '100044805396033', '1614836127', '2919220201691612', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 12:35:27 04/03/21 ', '04-03-2021'),
(124, 'adminhaku', '100044805396033', '1614836439', '491922751832114', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 12:40:39 04/03/21 ', '04-03-2021'),
(125, 'adminhaku', '100044805396033', '1614836738', '1659603704221576', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 12:45:38 04/03/21 ', '04-03-2021'),
(126, 'adminhaku', '100044805396033', '1614837037', '491925198498536', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100030431798093:0]\nBây gio là: 12:50:37 04/03/21 ', '04-03-2021'),
(127, 'adminhaku', '100044805396033', '1614837330', '2832739306946751', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 12:55:30 04/03/21 ', '04-03-2021'),
(128, 'adminhaku', '100044805396033', '1614837668', '445788463321614', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi @[100036713924367:0] ghé fb e tương tác lại nha\nBayh là: 13:01:08 04/03/21 ', '04-03-2021'),
(129, 'adminhaku', '100044805396033', '1614837927', '885838098931065', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 13:05:27 04/03/21 ', '04-03-2021'),
(130, 'adminhaku', '100044805396033', '1614838239', '4038733779526826', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 13:10:39 04/03/21 ', '04-03-2021'),
(131, 'adminhaku', '100044805396033', '1614838540', '2919240551689577', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '04-03-2021'),
(132, 'adminhaku', '100044805396033', '1614838839', '1658054341054260', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 13:20:39 04/03/21 ', '04-03-2021'),
(133, 'adminhaku', '100044805396033', '1614839131', '1658056617720699', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 13:25:31 04/03/21 ', '04-03-2021'),
(134, 'adminhaku', '100044805396033', '1614839463', '1658055691054125', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 13:31:03 04/03/21 ', '04-03-2021'),
(135, 'adminhaku', '100044805396033', '1614839726', '4038775926189278', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 13:35:26 04/03/21 ', '04-03-2021'),
(136, 'adminhaku', '100044805396033', '1614840039', '2792301044417413', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc @[100009126348870:0] luôn luôn vui vẻ\nRảnh qua fb em tương tác nha @[100009126348870:0]\nBây giờ la: 13:40:39 04/03/21 ', '04-03-2021'),
(137, 'adminhaku', '100044805396033', '1614840340', '1658064644386563', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 13:45:40 04/03/21 ', '04-03-2021'),
(138, 'adminhaku', '100044805396033', '1614840638', '481103939933085', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha @[100041004497183:0]\nBayh la 13:50:38 04/03/21 ', '04-03-2021'),
(139, 'adminhaku', '100044805396033', '1614841273', '1658073084385719', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 14:01:13 04/03/21 ', '04-03-2021'),
(140, 'adminhaku', '100044805396033', '1614841838', '1658076994385328', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '04-03-2021'),
(141, 'adminhaku', '100044805396033', '1614843066', '1243393669395944', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 14:31:06 04/03/21 ', '04-03-2021'),
(142, 'adminhaku', '100044805396033', '1614843331', '1658089137717447', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 14:35:31 04/03/21 ', '04-03-2021'),
(143, 'adminhaku', '100044805396033', '1614843639', '4038889972844540', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 14:40:39 04/03/21 ', '04-03-2021'),
(144, 'adminhaku', '100044805396033', '1614843940', '885878688927006', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 14:45:40 04/03/21 ', '04-03-2021'),
(145, 'adminhaku', '100044805396033', '1614844238', '566629304296040', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 14:50:38 04/03/21 ', '04-03-2021'),
(146, 'adminhaku', '100044805396033', '1614844530', '2828009767471985', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 14:55:30 04/03/21 ', '04-03-2021'),
(147, 'adminhaku', '100044805396033', '1614845439', '1659680484213898', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 15:10:39 04/03/21 ', '04-03-2021'),
(148, 'adminhaku', '100044805396033', '1614845740', '1659683567546923', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100005158874632:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 15:15:40 04/03/21 ', '04-03-2021'),
(149, 'adminhaku', '100044805396033', '1614846039', '1658111001048594', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 15:20:39 04/03/21 ', '04-03-2021'),
(150, 'adminhaku', '100044805396033', '1614846332', '2919299885016977', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 15:25:32 04/03/21 ', '04-03-2021'),
(151, 'adminhaku', '100044805396033', '1614846932', '1658119284381099', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 15:35:32 04/03/21 ', '04-03-2021'),
(152, 'adminhaku', '100044805396033', '1614847241', '2961075640847007', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 15:40:41 04/03/21 ', '04-03-2021'),
(153, 'adminhaku', '100044805396033', '1614847539', '2919307968349502', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 15:45:39 04/03/21 ', '04-03-2021'),
(154, 'adminhaku', '100044805396033', '1614848130', '1658127617713599', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 15:55:30 04/03/21 ', '04-03-2021'),
(155, 'adminhaku', '100044805396033', '1614848472', '4038620109538193', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 16:01:12 04/03/21 ', '04-03-2021'),
(156, 'adminhaku', '100044805396033', '1614848731', '2918567728423526', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 16:05:31 04/03/21 ', '04-03-2021'),
(157, 'adminhaku', '100044805396033', '1614849039', '1659705987544681', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi @[100005158874632:0] ghé fb e tương tác lại nha\nBayh là: 16:10:39 04/03/21 ', '04-03-2021'),
(158, 'adminhaku', '100044805396033', '1614849339', '2918603158419983', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 16:15:39 04/03/21 ', '04-03-2021'),
(159, 'adminhaku', '100044805396033', '1614849929', '2918628398417459', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 16:25:29 04/03/21 ', '04-03-2021'),
(160, 'adminhaku', '100044805396033', '1614850267', '492006745157048', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi @[100030431798093:0] ghé fb e tương tác lại nha\nBayh là: 16:31:07 04/03/21 ', '04-03-2021'),
(161, 'adminhaku', '100044805396033', '1614850528', '277657530544635', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 16:35:28 04/03/21 ', '04-03-2021'),
(162, 'adminhaku', '100044805396033', '1614850840', '1658148744378153', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 16:40:40 04/03/21 ', '04-03-2021'),
(163, 'adminhaku', '100044805396033', '1614851731', '1658154587710902', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 16:55:31 04/03/21 ', '04-03-2021'),
(164, 'adminhaku', '100044805396033', '1614853239', '2919371838343115', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 17:20:39 04/03/21 ', '04-03-2021'),
(165, 'adminhaku', '100044805396033', '1614853531', '3886338084795569', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 17:25:31 04/03/21 ', '04-03-2021'),
(166, 'adminhaku', '100044805396033', '1614853867', '2919307048349594', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 17:31:07 04/03/21 ', '04-03-2021'),
(167, 'adminhaku', '100044805396033', '1614854132', '1243482272720417', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 17:35:32 04/03/21 ', '04-03-2021'),
(168, 'adminhaku', '100044805396033', '1614854741', '1658178087708552', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 17:45:41 04/03/21 ', '04-03-2021'),
(169, 'adminhaku', '100044805396033', '1614855037', '1658180464374981', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 17:50:37 04/03/21 ', '04-03-2021'),
(170, 'adminhaku', '100044805396033', '1614855675', '832874710904679', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 18:01:15 04/03/21 ', '04-03-2021'),
(171, 'adminhaku', '100044805396033', '1614855931', '1702751903228844', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 18:05:31 04/03/21 ', '04-03-2021'),
(172, 'adminhaku', '100044805396033', '1614856239', '2919066188373680', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 18:10:39 04/03/21 ', '04-03-2021'),
(173, 'adminhaku', '100044805396033', '1614856540', '2919198835027082', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 18:15:40 04/03/21 ', '04-03-2021'),
(174, 'adminhaku', '100044805396033', '1614856840', '443343480311997', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 18:20:40 04/03/21 ', '04-03-2021'),
(175, 'adminhaku', '100044805396033', '1614857132', '2919418418338457', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '04-03-2021'),
(176, 'adminhaku', '100044805396033', '1614858038', '1345754169136576', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 18:40:38 04/03/21 ', '04-03-2021'),
(177, 'adminhaku', '100044805396033', '1614858339', '2919433228336976', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 18:45:39 04/03/21 ', '04-03-2021'),
(178, 'adminhaku', '100044805396033', '1614858639', '1243517752716869', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 18:50:39 04/03/21 ', '04-03-2021'),
(179, 'adminhaku', '100044805396033', '1614860440', '2961184820836089', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 19:20:40 04/03/21 ', '04-03-2021'),
(180, 'adminhaku', '100044805396033', '1614861331', '1658238867702474', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 19:35:31 04/03/21 ', '04-03-2021'),
(181, 'adminhaku', '100044805396033', '1614862871', '1658252661034428', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 20:01:11 04/03/21 ', '04-03-2021'),
(182, 'adminhaku', '100044805396033', '1614863132', '2961209544166950', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '04-03-2021'),
(183, 'adminhaku', '100044805396033', '1614865241', '886045622243646', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 20:40:41 04/03/21 ', '04-03-2021'),
(184, 'adminhaku', '100044805396033', '1614866472', '2919511898329109', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 21:01:12 04/03/21 ', '04-03-2021'),
(185, 'adminhaku', '100044805396033', '1614867931', '836450140268063', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 21:25:31 04/03/21 ', '04-03-2021'),
(186, 'adminhaku', '100044805396033', '1614868268', '832989304226553', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 21:31:08 04/03/21 ', '04-03-2021'),
(187, 'adminhaku', '100044805396033', '1614868533', '2832670473620301', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 21:35:33 04/03/21 ', '04-03-2021'),
(188, 'adminhaku', '100044805396033', '1614869140', '4039733922760145', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 21:45:40 04/03/21 ', '04-03-2021'),
(189, 'adminhaku', '100044805396033', '1614869440', '4039746522758885', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 21:50:40 04/03/21 ', '04-03-2021'),
(190, 'adminhaku', '100044805396033', '1614870639', '2833058826914799', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 22:10:39 04/03/21 ', '04-03-2021'),
(191, 'adminhaku', '100044805396033', '1614870940', '1345863219125671', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 22:15:40 04/03/21 ', '04-03-2021'),
(192, 'adminhaku', '100044805396033', '1614871239', '1658344574358570', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 22:20:39 04/03/21 ', '04-03-2021'),
(193, 'adminhaku', '100044805396033', '1614871868', '2961301324157772', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 22:31:08 04/03/21 ', '04-03-2021'),
(194, 'adminhaku', '100044805396033', '1614872132', '1642909919250868', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '04-03-2021'),
(195, 'adminhaku', '100044805396033', '1614872439', '483568422658953', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 22:40:39 04/03/21 ', '04-03-2021'),
(196, 'adminhaku', '100044805396033', '1614872740', '1658359124357115', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 22:45:40 04/03/21 ', '04-03-2021'),
(197, 'adminhaku', '100044805396033', '1614873039', '4039885949411609', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 22:50:39 04/03/21 ', '04-03-2021'),
(198, 'adminhaku', '100044805396033', '1614873331', '2833090866911595', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 22:55:31 04/03/21 ', '04-03-2021'),
(199, 'adminhaku', '100044805396033', '1614873674', '4061531720565480', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 23:01:14 04/03/21 ', '04-03-2021'),
(200, 'adminhaku', '100044805396033', '1614873932', '566872920938345', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 23:05:32 04/03/21 ', '04-03-2021'),
(201, 'adminhaku', '100044805396033', '1614874241', '4039929102740627', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 23:10:41 04/03/21 ', '04-03-2021'),
(202, 'adminhaku', '100044805396033', '1614874539', '4039933129406891', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 23:15:39 04/03/21 ', '04-03-2021'),
(203, 'adminhaku', '100044805396033', '1614874840', '4039950012738536', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 23:20:40 04/03/21 ', '04-03-2021'),
(204, 'adminhaku', '100044805396033', '1614875131', '1243677069367604', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 23:25:31 04/03/21 ', '04-03-2021'),
(205, 'adminhaku', '100044805396033', '1614875464', '4039970772736460', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 23:31:04 04/03/21 ', '04-03-2021'),
(206, 'adminhaku', '100044805396033', '1614875732', '4039972292736308', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 23:35:32 04/03/21 ', '04-03-2021'),
(207, 'adminhaku', '100044805396033', '1614876040', '4039984322735105', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 23:40:40 04/03/21 ', '04-03-2021'),
(208, 'adminhaku', '100044805396033', '1614876342', '446127839954343', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha @[100036713924367:0]\nBayh la 23:45:42 04/03/21 ', '04-03-2021'),
(209, 'adminhaku', '100044805396033', '1614876639', '4039949742738563', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 23:50:39 04/03/21 ', '04-03-2021'),
(210, 'adminhaku', '100044805396033', '1614876930', '1658396464353381', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 23:55:30 04/03/21 ', '04-03-2021'),
(211, 'adminhaku', '100044805396033', '1614877273', '4040014656065405', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 00:01:13 05/03/21 ', '05-03-2021'),
(212, 'adminhaku', '100044805396033', '1614877533', '1658403791019315', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 00:05:33 05/03/21 ', '05-03-2021'),
(213, 'adminhaku', '100044805396033', '1614877841', '4040047816062089', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 00:10:41 05/03/21 ', '05-03-2021'),
(214, 'adminhaku', '100044805396033', '1614878139', '1658432061016488', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 00:15:39 05/03/21 ', '05-03-2021'),
(215, 'adminhaku', '100044805396033', '1614878441', '833086024216881', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 00:20:41 05/03/21 ', '05-03-2021'),
(216, 'adminhaku', '100044805396033', '1614878732', '2961368840817687', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 00:25:32 05/03/21 ', '05-03-2021'),
(217, 'adminhaku', '100044805396033', '1614879064', '2919657421647890', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 00:31:04 05/03/21 ', '05-03-2021'),
(218, 'adminhaku', '100044805396033', '1614879331', '4040098426057028', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 00:35:31 05/03/21 ', '05-03-2021'),
(219, 'adminhaku', '100044805396033', '1614879639', '2961376534150251', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 00:40:39 05/03/21 ', '05-03-2021'),
(220, 'adminhaku', '100044805396033', '1614879939', '1658446194348408', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 00:45:39 05/03/21 ', '05-03-2021'),
(221, 'adminhaku', '100044805396033', '1614880239', '2961382267483011', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 00:50:39 05/03/21 ', '05-03-2021'),
(222, 'adminhaku', '100044805396033', '1614880531', '1044508832706260', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 00:55:31 05/03/21 ', '05-03-2021'),
(223, 'adminhaku', '100044805396033', '1614880872', '4040141359386068', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 01:01:12 05/03/21 ', '05-03-2021'),
(224, 'adminhaku', '100044805396033', '1614881131', '4040155189384685', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 01:05:31 05/03/21 ', '05-03-2021'),
(225, 'adminhaku', '100044805396033', '1614881439', '1243727266029251', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 01:10:39 05/03/21 ', '05-03-2021');
INSERT INTO `log_cmt` (`id`, `username`, `uid`, `time`, `post`, `noidung`, `date`) VALUES
(226, 'adminhaku', '100044805396033', '1614881739', '1044336289390181', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 01:15:39 05/03/21 ', '05-03-2021'),
(227, 'adminhaku', '100044805396033', '1614882039', '1658462734346754', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 01:20:39 05/03/21 ', '05-03-2021'),
(228, 'adminhaku', '100044805396033', '1614882330', '4040186732714864', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 01:25:30 05/03/21 ', '05-03-2021'),
(229, 'adminhaku', '100044805396033', '1614882664', '2919487214998244', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 01:31:04 05/03/21 ', '05-03-2021'),
(230, 'adminhaku', '100044805396033', '1614882932', '4040209336045937', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 01:35:32 05/03/21 ', '05-03-2021'),
(231, 'adminhaku', '100044805396033', '1614883239', '2919569394990026', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 01:40:39 05/03/21 ', '05-03-2021'),
(232, 'adminhaku', '100044805396033', '1614883539', '4040225289377675', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 01:45:39 05/03/21 ', '05-03-2021'),
(233, 'adminhaku', '100044805396033', '1614883838', '833121270880023', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 01:50:38 05/03/21 ', '05-03-2021'),
(234, 'adminhaku', '100044805396033', '1614884131', '3088979311329661', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 01:55:31 05/03/21 ', '05-03-2021'),
(235, 'adminhaku', '100044805396033', '1614884470', '1044536076036869', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 02:01:10 05/03/21 ', '05-03-2021'),
(236, 'adminhaku', '100044805396033', '1614885039', '4040270569373147', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 02:10:39 05/03/21 ', '05-03-2021'),
(237, 'adminhaku', '100044805396033', '1614885339', '833131994212284', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 02:15:39 05/03/21 ', '05-03-2021'),
(238, 'adminhaku', '100044805396033', '1614885638', '4040283199371884', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 02:20:38 05/03/21 ', '05-03-2021'),
(239, 'adminhaku', '100044805396033', '1614885932', '1044276452729498', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 02:25:32 05/03/21 ', '05-03-2021'),
(240, 'adminhaku', '100044805396033', '1614886264', '4040298416037029', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 02:31:04 05/03/21 ', '05-03-2021'),
(241, 'adminhaku', '100044805396033', '1614886530', '833141144211369', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 02:35:30 05/03/21 ', '05-03-2021'),
(242, 'adminhaku', '100044805396033', '1614886839', '1044439886046488', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 02:40:39 05/03/21 ', '05-03-2021'),
(243, 'adminhaku', '100044805396033', '1614887139', '1044553529368457', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(244, 'adminhaku', '100044805396033', '1614887438', '2833221903565158', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 02:50:38 05/03/21 ', '05-03-2021'),
(245, 'adminhaku', '100044805396033', '1614887729', '833149240877226', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 02:55:29 05/03/21 ', '05-03-2021'),
(246, 'adminhaku', '100044805396033', '1614888071', '833150980877052', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 03:01:11 05/03/21 ', '05-03-2021'),
(247, 'adminhaku', '100044805396033', '1614888331', '1658521894340838', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 03:05:31 05/03/21 ', '05-03-2021'),
(248, 'adminhaku', '100044805396033', '1614888639', '4040373362696201', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 03:10:39 05/03/21 ', '05-03-2021'),
(249, 'adminhaku', '100044805396033', '1614888941', '2833233730230642', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 03:15:41 05/03/21 ', '05-03-2021'),
(250, 'adminhaku', '100044805396033', '1614889238', '833160037542813', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 03:20:38 05/03/21 ', '05-03-2021'),
(251, 'adminhaku', '100044805396033', '1614889531', '1243784149356896', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(252, 'adminhaku', '100044805396033', '1614889865', '833163850875765', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 03:31:05 05/03/21 ', '05-03-2021'),
(253, 'adminhaku', '100044805396033', '1614890131', '4040418926024978', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(254, 'adminhaku', '100044805396033', '1614890439', '430616078212992', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 03:40:39 05/03/21 ', '05-03-2021'),
(255, 'adminhaku', '100044805396033', '1614890739', '1658538177672543', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 03:45:39 05/03/21 ', '05-03-2021'),
(256, 'adminhaku', '100044805396033', '1614891039', '2961467640807807', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 03:50:39 05/03/21 ', '05-03-2021'),
(257, 'adminhaku', '100044805396033', '1614891331', '4040447459355458', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 03:55:31 05/03/21 ', '05-03-2021'),
(258, 'adminhaku', '100044805396033', '1614891669', '4040461646020706', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 04:01:09 05/03/21 ', '05-03-2021'),
(259, 'adminhaku', '100044805396033', '1614891933', '3976324029094408', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 04:05:33 05/03/21 ', '05-03-2021'),
(260, 'adminhaku', '100044805396033', '1614892239', '3976337395759738', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 04:10:39 05/03/21 ', '05-03-2021'),
(261, 'adminhaku', '100044805396033', '1614892538', '1658552791004415', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 04:15:38 05/03/21 ', '05-03-2021'),
(262, 'adminhaku', '100044805396033', '1614892839', '1658554827670878', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 04:20:39 05/03/21 ', '05-03-2021'),
(263, 'adminhaku', '100044805396033', '1614893130', '4040502266016644', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 04:25:30 05/03/21 ', '05-03-2021'),
(264, 'adminhaku', '100044805396033', '1614893465', '2961485157472722', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 04:31:05 05/03/21 ', '05-03-2021'),
(265, 'adminhaku', '100044805396033', '1614893731', '2832671436953538', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 04:35:31 05/03/21 ', '05-03-2021'),
(266, 'adminhaku', '100044805396033', '1614894039', '2832724766948205', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 04:40:39 05/03/21 ', '05-03-2021'),
(267, 'adminhaku', '100044805396033', '1614894339', '2832874053599943', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 04:45:39 05/03/21 ', '05-03-2021'),
(268, 'adminhaku', '100044805396033', '1614894640', '4040335359366668', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 04:50:40 05/03/21 ', '05-03-2021'),
(269, 'adminhaku', '100044805396033', '1614894928', '4040331169367087', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 04:55:28 05/03/21 ', '05-03-2021'),
(270, 'adminhaku', '100044805396033', '1614895270', '4040202669379937', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 05:01:10 05/03/21 ', '05-03-2021'),
(271, 'adminhaku', '100044805396033', '1614895530', '4040240579376146', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 05:05:30 05/03/21 ', '05-03-2021'),
(272, 'adminhaku', '100044805396033', '1614895838', '4040428909357313', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 05:10:38 05/03/21 ', '05-03-2021'),
(273, 'adminhaku', '100044805396033', '1614896141', '833211750870975', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 05:15:41 05/03/21 ', '05-03-2021'),
(274, 'adminhaku', '100044805396033', '1614896441', '2833298516890830', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 05:20:41 05/03/21 ', '05-03-2021'),
(275, 'adminhaku', '100044805396033', '1614896731', '2833301060223909', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 05:25:31 05/03/21 ', '05-03-2021'),
(276, 'adminhaku', '100044805396033', '1614897067', '4040607046006166', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 05:31:07 05/03/21 ', '05-03-2021'),
(277, 'adminhaku', '100044805396033', '1614897331', '430628564878410', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 05:35:31 05/03/21 ', '05-03-2021'),
(278, 'adminhaku', '100044805396033', '1614897640', '3976480685745409', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 05:40:40 05/03/21 ', '05-03-2021'),
(279, 'adminhaku', '100044805396033', '1614897939', '833221540869996', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 05:45:39 05/03/21 ', '05-03-2021'),
(280, 'adminhaku', '100044805396033', '1614898238', '3976494369077374', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 05:50:38 05/03/21 ', '05-03-2021'),
(281, 'adminhaku', '100044805396033', '1614898530', '1658595517666809', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 05:55:30 05/03/21 ', '05-03-2021'),
(282, 'adminhaku', '100044805396033', '1614898871', '3976516409075170', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 06:01:11 05/03/21 ', '05-03-2021'),
(283, 'adminhaku', '100044805396033', '1614899131', '1243847182683926', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 06:05:31 05/03/21 ', '05-03-2021'),
(284, 'adminhaku', '100044805396033', '1614899439', '1658605050999189', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 06:10:39 05/03/21 ', '05-03-2021'),
(285, 'adminhaku', '100044805396033', '1614899739', '278017223841999', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100049011712621:0]\nBây gio là: 06:15:39 05/03/21 ', '05-03-2021'),
(286, 'adminhaku', '100044805396033', '1614900039', '1658608904332137', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 06:20:39 05/03/21 ', '05-03-2021'),
(287, 'adminhaku', '100044805396033', '1614900332', '833236124201871', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 06:25:32 05/03/21 ', '05-03-2021'),
(288, 'adminhaku', '100044805396033', '1614900666', '3976558322404312', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 06:31:06 05/03/21 ', '05-03-2021'),
(289, 'adminhaku', '100044805396033', '1614900931', '1596504673871939', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 06:35:31 05/03/21 ', '05-03-2021'),
(290, 'adminhaku', '100044805396033', '1614901239', '1658618090997885', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 06:40:39 05/03/21 ', '05-03-2021'),
(291, 'adminhaku', '100044805396033', '1614901538', '2961542290800342', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 06:45:38 05/03/21 ', '05-03-2021'),
(292, 'adminhaku', '100044805396033', '1614901839', '1243864182682226', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 06:50:39 05/03/21 ', '05-03-2021'),
(293, 'adminhaku', '100044805396033', '1614902132', '2961546987466539', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 06:55:32 05/03/21 ', '05-03-2021'),
(294, 'adminhaku', '100044805396033', '1614902473', '1658627117663649', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 07:01:13 05/03/21 ', '05-03-2021'),
(295, 'adminhaku', '100044805396033', '1614902731', '2833354183551930', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 07:05:31 05/03/21 ', '05-03-2021'),
(296, 'adminhaku', '100044805396033', '1614903039', '3976626889064122', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 07:10:39 05/03/21 ', '05-03-2021'),
(297, 'adminhaku', '100044805396033', '1614903341', '4040779939322210', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 07:15:41 05/03/21 ', '05-03-2021'),
(298, 'adminhaku', '100044805396033', '1614903639', '1243877266014251', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 07:20:39 05/03/21 ', '05-03-2021'),
(299, 'adminhaku', '100044805396033', '1614903932', '2833361603551188', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 07:25:32 05/03/21 ', '05-03-2021'),
(300, 'adminhaku', '100044805396033', '1614904266', '2833364446884237', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 07:31:06 05/03/21 ', '05-03-2021'),
(301, 'adminhaku', '100044805396033', '1614904530', '1243882229347088', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 07:35:30 05/03/21 ', '05-03-2021'),
(302, 'adminhaku', '100044805396033', '1614904840', '567126504246320', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 07:40:40 05/03/21 ', '05-03-2021'),
(303, 'adminhaku', '100044805396033', '1614905139', '567138714245099', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 07:45:39 05/03/21 ', '05-03-2021'),
(304, 'adminhaku', '100044805396033', '1614905438', '3976687739058037', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 07:50:38 05/03/21 ', '05-03-2021'),
(305, 'adminhaku', '100044805396033', '1614905730', '1193998637682972', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 07:55:30 05/03/21 ', '05-03-2021'),
(306, 'adminhaku', '100044805396033', '1614906072', '3976705515722926', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 08:01:12 05/03/21 ', '05-03-2021'),
(307, 'adminhaku', '100044805396033', '1614906330', '1658658094327218', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 08:05:30 05/03/21 ', '05-03-2021'),
(308, 'adminhaku', '100044805396033', '1614906638', '1658659587660402', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 08:10:38 05/03/21 ', '05-03-2021'),
(309, 'adminhaku', '100044805396033', '1614906940', '3976038845789593', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 08:15:40 05/03/21 ', '05-03-2021'),
(310, 'adminhaku', '100044805396033', '1614907238', '2833392623548086', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 08:20:38 05/03/21 ', '05-03-2021'),
(311, 'adminhaku', '100044805396033', '1614907529', '5303644863040806', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha @[100001860331815:0]\nBayh la 08:25:29 05/03/21 ', '05-03-2021'),
(312, 'adminhaku', '100044805396033', '1614908132', '833289047529912', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 08:35:32 05/03/21 ', '05-03-2021'),
(313, 'adminhaku', '100044805396033', '1614908438', '1658676264325401', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 08:40:38 05/03/21 ', '05-03-2021'),
(314, 'adminhaku', '100044805396033', '1614908741', '4040965805970290', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(315, 'adminhaku', '100044805396033', '1614909039', '3976793965714081', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 08:50:39 05/03/21 ', '05-03-2021'),
(316, 'adminhaku', '100044805396033', '1614909332', '1658684480991246', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 08:55:32 05/03/21 ', '05-03-2021'),
(317, 'adminhaku', '100044805396033', '1614909672', '1658682517658109', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 09:01:12 05/03/21 ', '05-03-2021'),
(318, 'adminhaku', '100044805396033', '1614909932', '2833415446879137', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 09:05:32 05/03/21 ', '05-03-2021'),
(319, 'adminhaku', '100044805396033', '1614910239', '2832636173623731', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 09:10:39 05/03/21 ', '05-03-2021'),
(320, 'adminhaku', '100044805396033', '1614910539', '2832770896943592', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 09:15:39 05/03/21 ', '05-03-2021'),
(321, 'adminhaku', '100044805396033', '1614910839', '1658657257660635', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 09:20:39 05/03/21 ', '05-03-2021'),
(322, 'adminhaku', '100044805396033', '1614911129', '3976850065708471', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 09:25:29 05/03/21 ', '05-03-2021'),
(323, 'adminhaku', '100044805396033', '1614911732', '1658658517660509', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 09:35:32 05/03/21 ', '05-03-2021'),
(324, 'adminhaku', '100044805396033', '1614912340', '2833420280211987', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 09:45:40 05/03/21 ', '05-03-2021'),
(325, 'adminhaku', '100044805396033', '1614913839', '2961644460790125', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 10:10:39 05/03/21 ', '05-03-2021'),
(326, 'adminhaku', '100044805396033', '1614914439', '2833452993542049', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 10:20:39 05/03/21 ', '05-03-2021'),
(327, 'adminhaku', '100044805396033', '1614914730', '2833456100208405', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 10:25:30 05/03/21 ', '05-03-2021'),
(328, 'adminhaku', '100044805396033', '1614915065', '1658745447651816', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 10:31:05 05/03/21 ', '05-03-2021'),
(329, 'adminhaku', '100044805396033', '1614915331', '1658747670984927', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 10:35:31 05/03/21 ', '05-03-2021'),
(330, 'adminhaku', '100044805396033', '1614915639', '5304023079669651', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 10:40:39 05/03/21 ', '05-03-2021'),
(331, 'adminhaku', '100044805396033', '1614915940', '1658756394317388', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 10:45:40 05/03/21 ', '05-03-2021'),
(332, 'adminhaku', '100044805396033', '1614916238', '2833474003539948', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 10:50:38 05/03/21 ', '05-03-2021'),
(333, 'adminhaku', '100044805396033', '1614916530', '1658762534316774', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 10:55:30 05/03/21 ', '05-03-2021'),
(334, 'adminhaku', '100044805396033', '1614917131', '1244034509331860', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(335, 'adminhaku', '100044805396033', '1614917438', '2833484803538868', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 11:10:38 05/03/21 ', '05-03-2021'),
(336, 'adminhaku', '100044805396033', '1614917740', '1658775084315519', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 11:15:40 05/03/21 ', '05-03-2021'),
(337, 'adminhaku', '100044805396033', '1614918038', '3977052049021606', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 11:20:38 05/03/21 ', '05-03-2021'),
(338, 'adminhaku', '100044805396033', '1614918332', '3977051592354985', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 11:25:32 05/03/21 ', '05-03-2021'),
(339, 'adminhaku', '100044805396033', '1614918664', '444117883570192', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 11:31:04 05/03/21 ', '05-03-2021'),
(340, 'adminhaku', '100044805396033', '1614918930', '444108183571162', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 11:35:30 05/03/21 ', '05-03-2021'),
(341, 'adminhaku', '100044805396033', '1614919238', '3977089849017826', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 11:40:38 05/03/21 ', '05-03-2021'),
(342, 'adminhaku', '100044805396033', '1614919837', '3977062465687231', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 11:50:37 05/03/21 ', '05-03-2021'),
(343, 'adminhaku', '100044805396033', '1614920131', '3977102429016568', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 11:55:31 05/03/21 ', '05-03-2021'),
(344, 'adminhaku', '100044805396033', '1614920472', '446413039925823', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 12:01:12 05/03/21 ', '05-03-2021'),
(345, 'adminhaku', '100044805396033', '1614920731', '2833521106868571', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 12:05:31 05/03/21 ', '05-03-2021'),
(346, 'adminhaku', '100044805396033', '1614921040', '2961697827451455', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 12:10:40 05/03/21 ', '05-03-2021'),
(347, 'adminhaku', '100044805396033', '1614921340', '2961698610784710', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 12:15:40 05/03/21 ', '05-03-2021'),
(348, 'adminhaku', '100044805396033', '1614921640', '567238130901824', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 12:20:40 05/03/21 ', '05-03-2021'),
(349, 'adminhaku', '100044805396033', '1614921932', '567242550901382', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 12:25:32 05/03/21 ', '05-03-2021'),
(350, 'adminhaku', '100044805396033', '1614922530', '1658814344311593', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 12:35:30 05/03/21 ', '05-03-2021'),
(351, 'adminhaku', '100044805396033', '1614922840', '2832775686943113', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 12:40:40 05/03/21 ', '05-03-2021'),
(352, 'adminhaku', '100044805396033', '1614923440', '2833541393533209', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 12:50:40 05/03/21 ', '05-03-2021'),
(353, 'adminhaku', '100014861137901', '1614924073', '926409171500305', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 13:01:13 05/03/21 ', '05-03-2021'),
(354, 'adminhaku', '100044805396033', '1614924073', '3977214202338724', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 13:01:13 05/03/21 ', '05-03-2021'),
(355, 'adminhaku', '100044805396033', '1614924333', '446435466590247', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 13:05:33 05/03/21 ', '05-03-2021'),
(356, 'adminhaku', '100044805396033', '1614924640', '2833551960198819', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(357, 'adminhaku', '100044805396033', '1614924940', '2833552883532060', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 13:15:40 05/03/21 ', '05-03-2021'),
(358, 'adminhaku', '100044805396033', '1614925532', '3977250229001788', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 13:25:32 05/03/21 ', '05-03-2021'),
(359, 'adminhaku', '100044805396033', '1614925868', '2833559980198017', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 13:31:08 05/03/21 ', '05-03-2021'),
(360, 'adminhaku', '100044805396033', '1614926130', '567253327566971', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 13:35:30 05/03/21 ', '05-03-2021'),
(361, 'adminhaku', '100044805396033', '1614926439', '567250790900558', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 13:40:39 05/03/21 ', '05-03-2021'),
(362, 'adminhaku', '100044805396033', '1614926739', '1244110459324265', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 13:45:39 05/03/21 ', '05-03-2021'),
(363, 'adminhaku', '100044805396033', '1614927039', '5304532362952056', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc @[100001860331815:0] luôn luôn vui vẻ\nRảnh qua fb em tương tác nha @[100001860331815:0]\nBây giờ la: 13:50:39 05/03/21 ', '05-03-2021'),
(364, 'adminhaku', '100044805396033', '1614927330', '430797564861510', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 13:55:30 05/03/21 ', '05-03-2021'),
(365, 'adminhaku', '100044805396033', '1614927674', '3977308418995969', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 14:01:14 05/03/21 ', '05-03-2021'),
(366, 'adminhaku', '100044805396033', '1614927932', '2833577686862913', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 14:05:32 05/03/21 ', '05-03-2021'),
(367, 'adminhaku', '100044805396033', '1614928239', '2833578983529450', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 14:10:39 05/03/21 ', '05-03-2021'),
(368, 'adminhaku', '100044805396033', '1614928541', '1244121959323115', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 14:15:41 05/03/21 ', '05-03-2021'),
(369, 'adminhaku', '100044805396033', '1614928840', '2833584113528937', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 14:20:40 05/03/21 ', '05-03-2021'),
(370, 'adminhaku', '100044805396033', '1614929132', '2833586696862012', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 14:25:32 05/03/21 ', '05-03-2021'),
(371, 'adminhaku', '100044805396033', '1614929466', '3977354608991350', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 14:31:06 05/03/21 ', '05-03-2021'),
(372, 'adminhaku', '100044805396033', '1614929730', '2833591630194852', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 14:35:30 05/03/21 ', '05-03-2021'),
(373, 'adminhaku', '100044805396033', '1614930040', '444467840201863', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 14:40:40 05/03/21 ', '05-03-2021'),
(374, 'adminhaku', '100044805396033', '1614930639', '2833595526861129', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 14:50:39 05/03/21 ', '05-03-2021'),
(375, 'adminhaku', '100044805396033', '1614931274', '2833602506860431', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 15:01:14 05/03/21 ', '05-03-2021'),
(376, 'adminhaku', '100044805396033', '1614931531', '3977409008985910', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 15:05:31 05/03/21 ', '05-03-2021'),
(377, 'adminhaku', '100044805396033', '1614931841', '2961778920776679', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 15:10:41 05/03/21 ', '05-03-2021'),
(378, 'adminhaku', '100044805396033', '1614932440', '1658886244304403', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 15:20:40 05/03/21 ', '05-03-2021'),
(379, 'adminhaku', '100044805396033', '1614933331', '283155753205143', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 15:35:31 05/03/21 ', '05-03-2021'),
(380, 'adminhaku', '100044805396033', '1614933641', '2961792564108648', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(381, 'adminhaku', '100044805396033', '1614933940', '833490487509768', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 15:45:40 05/03/21 ', '05-03-2021'),
(382, 'adminhaku', '100044805396033', '1614934531', '3977486855644792', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 15:55:31 05/03/21 ', '05-03-2021'),
(383, 'adminhaku', '100044805396033', '1614934872', '2786925914863269', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 16:01:12 05/03/21 ', '05-03-2021'),
(384, 'adminhaku', '100044805396033', '1614935132', '1658874967638864', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 16:05:32 05/03/21 ', '05-03-2021'),
(385, 'adminhaku', '100044805396033', '1614935440', '2833636616857020', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(386, 'adminhaku', '100044805396033', '1614935740', '2887353741583687', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc @[100009272684927:0] luôn luôn vui vẻ\nRảnh qua fb em tương tác nha @[100009272684927:0]\nBây giờ la: 16:15:40 05/03/21 ', '05-03-2021'),
(387, 'adminhaku', '100044805396033', '1614936039', '567324134226557', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 16:20:39 05/03/21 ', '05-03-2021'),
(388, 'adminhaku', '100044805396033', '1614936331', '3977533088973502', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 16:25:31 05/03/21 ', '05-03-2021'),
(389, 'adminhaku', '100044805396033', '1614936666', '2961817524106152', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 16:31:06 05/03/21 ', '05-03-2021'),
(390, 'adminhaku', '100044805396033', '1614937241', '1044880119335798', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 16:40:41 05/03/21 ', '05-03-2021'),
(391, 'adminhaku', '100044805396033', '1614937539', '1658921340967560', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 16:45:39 05/03/21 ', '05-03-2021'),
(392, 'adminhaku', '100044805396033', '1614937840', '1658907464302281', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 16:50:40 05/03/21 ', '05-03-2021'),
(393, 'adminhaku', '100044805396033', '1614938132', '2833657486854933', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 16:55:32 05/03/21 ', '05-03-2021'),
(394, 'adminhaku', '100044805396033', '1614938472', '833524397506377', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 17:01:12 05/03/21 ', '05-03-2021'),
(395, 'adminhaku', '100044805396033', '1614938731', '833526597506157', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 17:05:31 05/03/21 ', '05-03-2021'),
(396, 'adminhaku', '100044805396033', '1614939040', '567349530890684', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 17:10:40 05/03/21 ', '05-03-2021'),
(397, 'adminhaku', '100044805396033', '1614939339', '2966963056856590', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 17:15:39 05/03/21 ', '05-03-2021'),
(398, 'adminhaku', '100044805396033', '1614939641', '276842153821694', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 17:20:41 05/03/21 ', '05-03-2021'),
(399, 'adminhaku', '100044805396033', '1614939932', '944831682991053', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc@[100023926894075:0] một ngày may mắn ạ :)\nBây giờ là: 17:25:32 05/03/21 ', '05-03-2021'),
(400, 'adminhaku', '100044805396033', '1614940266', '3977639005629577', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 17:31:06 05/03/21 ', '05-03-2021'),
(401, 'adminhaku', '100044805396033', '1614940531', '3977652385628239', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 17:35:31 05/03/21 ', '05-03-2021'),
(402, 'adminhaku', '100044805396033', '1614940839', '1658947110964983', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 17:40:39 05/03/21 ', '05-03-2021'),
(403, 'adminhaku', '100044805396033', '1614941439', '1658950897631271', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 17:50:39 05/03/21 ', '05-03-2021'),
(404, 'adminhaku', '100044805396033', '1614941731', '483986279283834', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc @[100030173991388:0] luôn luôn vui vẻ\nRảnh qua fb em tương tác nha @[100030173991388:0]\nBây giờ la: 17:55:31 05/03/21 ', '05-03-2021'),
(405, 'adminhaku', '100044805396033', '1614942074', '833555047503312', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 18:01:14 05/03/21 ', '05-03-2021'),
(406, 'adminhaku', '100044805396033', '1614942641', '1044923929331417', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 18:10:41 05/03/21 ', '05-03-2021'),
(407, 'adminhaku', '100044805396033', '1614942940', '1244226745979303', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 18:15:40 05/03/21 ', '05-03-2021'),
(408, 'adminhaku', '100044805396033', '1614943241', '833563994169084', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 18:20:41 05/03/21 ', '05-03-2021'),
(409, 'adminhaku', '100044805396033', '1614943531', '833565777502239', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 18:25:31 05/03/21 ', '05-03-2021'),
(410, 'adminhaku', '100044805396033', '1614943866', '3977762072283937', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 18:31:06 05/03/21 ', '05-03-2021'),
(411, 'adminhaku', '100044805396033', '1614944130', '3977778678948943', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 18:35:30 05/03/21 ', '05-03-2021'),
(412, 'adminhaku', '100044805396033', '1614944439', '833575430834607', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 18:40:39 05/03/21 ', '05-03-2021'),
(413, 'adminhaku', '100044805396033', '1614945672', '1677280489125917', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 19:01:12 05/03/21 ', '05-03-2021'),
(414, 'adminhaku', '100044805396033', '1614945932', '1658997854293242', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 19:05:32 05/03/21 ', '05-03-2021'),
(415, 'adminhaku', '100044805396033', '1614946540', '4042074462526091', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 19:15:40 05/03/21 ', '05-03-2021'),
(416, 'adminhaku', '100044805396033', '1614946840', '1244262275975750', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 19:20:40 05/03/21 ', '05-03-2021'),
(417, 'adminhaku', '100044805396033', '1614947133', '3977876045605873', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(418, 'adminhaku', '100044805396033', '1614947405', '1244264995975478', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 19:30:05 05/03/21 ', '05-03-2021'),
(419, 'adminhaku', '100044805396033', '1614947468', '3977765872283557', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 19:31:08 05/03/21 ', '05-03-2021'),
(420, 'adminhaku', '100044805396033', '1614947506', '484026359279826', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 19:31:46 05/03/21 ', '05-03-2021'),
(421, 'adminhaku', '100044805396033', '1614947731', '833610594164424', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 19:35:31 05/03/21 ', '05-03-2021');
INSERT INTO `log_cmt` (`id`, `username`, `uid`, `time`, `post`, `noidung`, `date`) VALUES
(422, 'adminhaku', '100044805396033', '1614947890', '833613020830848', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(423, 'adminhaku', '100044805396033', '1614948039', '484031235946005', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha @[100030173991388:0]\nBayh la 19:40:39 05/03/21 ', '05-03-2021'),
(424, 'adminhaku', '100044805396033', '1614948139', '484033035945825', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 19:42:19 05/03/21 ', '05-03-2021'),
(425, 'adminhaku', '100044805396033', '1614948341', '1244274165974561', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 19:45:41 05/03/21 ', '05-03-2021'),
(426, 'adminhaku', '100044805396033', '1614948931', '1659033200956374', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 19:55:31 05/03/21 ', '05-03-2021'),
(427, 'adminhaku', '100044805396033', '1614949274', '4042078789192325', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 20:01:14 05/03/21 ', '05-03-2021'),
(428, 'adminhaku', '100044805396033', '1614949839', '1659041187622242', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 20:10:39 05/03/21 ', '05-03-2021'),
(429, 'adminhaku', '100044805396033', '1614951068', '833645270827623', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 20:31:08 05/03/21 ', '05-03-2021'),
(430, 'adminhaku', '100044805396033', '1614951641', '2961950834092821', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 20:40:41 05/03/21 ', '05-03-2021'),
(431, 'adminhaku', '100044805396033', '1614951941', '3978111478915663', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 20:45:41 05/03/21 ', '05-03-2021'),
(432, 'adminhaku', '100044805396033', '1614952872', '1659077527618608', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 21:01:12 05/03/21 ', '05-03-2021'),
(433, 'adminhaku', '100044805396033', '1614953742', '260032552245977', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100047177023547:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 21:15:42 05/03/21 ', '05-03-2021'),
(434, 'adminhaku', '100053361920036', '1614953941', '1915171291983451', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 21:19:01 05/03/21 ', '05-03-2021'),
(435, 'adminhaku', '100044805396033', '1614953941', '2961976620756909', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 21:19:01 05/03/21 ', '05-03-2021'),
(436, 'adminhaku', '100053361920036', '1614954040', '3798836760231347', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 21:20:40 05/03/21 ', '05-03-2021'),
(437, 'adminhaku', '100044805396033', '1614954583', '3978237595569718', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 21:29:43 05/03/21 ', '05-03-2021'),
(438, 'adminhaku', '100053361920036', '1614954583', '3799975193450837', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 21:29:43 05/03/21 ', '05-03-2021'),
(439, 'adminhaku', '100053361920036', '1614954665', '2246733498793235', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 21:31:05 05/03/21 ', '05-03-2021'),
(440, 'adminhaku', '100053361920036', '1614954930', '1704919749691229', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 21:35:30 05/03/21 ', '05-03-2021'),
(441, 'adminhaku', '100044805396033', '1614955240', '1659103777615983', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 21:40:40 05/03/21 ', '05-03-2021'),
(442, 'adminhaku', '100053361920036', '1614955541', '2246573272142591', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 21:45:41 05/03/21 ', '05-03-2021'),
(443, 'adminhaku', '100044805396033', '1614955840', '1659104624282565', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 21:50:40 05/03/21 ', '05-03-2021'),
(444, 'adminhaku', '100044805396033', '1614956130', '1389364094748724', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 21:55:30 05/03/21 ', '05-03-2021'),
(445, 'adminhaku', '100053361920036', '1614956130', '1124993304640926', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 21:55:30 05/03/21 ', '05-03-2021'),
(446, 'adminhaku', '100044805396033', '1614956730', '1659115570948137', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 22:05:30 05/03/21 ', '05-03-2021'),
(447, 'adminhaku', '100044805396033', '1614957038', '283334533187265', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc @[100045321606528:0] luôn luôn vui vẻ\nRảnh qua fb em tương tác nha @[100045321606528:0]\nBây giờ la: 22:10:38 05/03/21 ', '05-03-2021'),
(448, 'adminhaku', '100053361920036', '1614957038', '3804186736337691', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(449, 'adminhaku', '100053361920036', '1614957341', '3805542462868785', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 22:15:41 05/03/21 ', '05-03-2021'),
(450, 'adminhaku', '100044805396033', '1614957341', '237846314670764', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 22:15:41 05/03/21 ', '05-03-2021'),
(451, 'adminhaku', '100053361920036', '1614957641', '3841016645974095', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 22:20:41 05/03/21 ', '05-03-2021'),
(452, 'adminhaku', '100053361920036', '1614957929', '4086834388001822', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 22:25:29 05/03/21 ', '05-03-2021'),
(453, 'adminhaku', '100044805396033', '1614957929', '4042504115816459', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 22:25:29 05/03/21 ', '05-03-2021'),
(454, 'adminhaku', '100044805396033', '1614958267', '4042513972482140', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 22:31:07 05/03/21 ', '05-03-2021'),
(455, 'adminhaku', '100053361920036', '1614958267', '273225400840104', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc@[100044579372904:0] một ngày may mắn ạ :)\nBây giờ là: 22:31:07 05/03/21 ', '05-03-2021'),
(456, 'adminhaku', '100044805396033', '1614958531', '3978390212221123', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 22:35:31 05/03/21 ', '05-03-2021'),
(457, 'adminhaku', '100053361920036', '1614958531', '4086314011387193', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 22:35:31 05/03/21 ', '05-03-2021'),
(458, 'adminhaku', '100044805396033', '1614958840', '1659147044278323', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 22:40:40 05/03/21 ', '05-03-2021'),
(459, 'adminhaku', '100053361920036', '1614958840', '3912201258826262', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 22:40:40 05/03/21 ', '05-03-2021'),
(460, 'adminhaku', '100044805396033', '1614959440', '260123372236895', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(461, 'adminhaku', '100053361920036', '1614959440', '1164388334019246', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 22:50:40 05/03/21 ', '05-03-2021'),
(462, 'adminhaku', '100053361920036', '1614959731', '252876883050903', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 22:55:31 05/03/21 ', '05-03-2021'),
(463, 'adminhaku', '100053361920036', '1614960072', '4085499361468658', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 23:01:12 05/03/21 ', '05-03-2021'),
(464, 'adminhaku', '100044805396033', '1614960072', '567519237540380', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '05-03-2021'),
(465, 'adminhaku', '100053361920036', '1614960331', '3841380765937683', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 23:05:31 05/03/21 ', '05-03-2021'),
(466, 'adminhaku', '100044805396033', '1614960331', '567477167544587', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 23:05:31 05/03/21 ', '05-03-2021'),
(467, 'adminhaku', '100053361920036', '1614960639', '3841332322609194', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 23:10:39 05/03/21 ', '05-03-2021'),
(468, 'adminhaku', '100044805396033', '1614960639', '492739915083731', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 23:10:39 05/03/21 ', '05-03-2021'),
(469, 'adminhaku', '100044805396033', '1614960940', '3978467655546712', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 23:15:40 05/03/21 ', '05-03-2021'),
(470, 'adminhaku', '100053361920036', '1614960940', '877800583032595', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 23:15:40 05/03/21 ', '05-03-2021'),
(471, 'adminhaku', '100044805396033', '1614961240', '259605915707222', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 23:20:40 05/03/21 ', '05-03-2021'),
(472, 'adminhaku', '100053361920036', '1614961240', '4085793764772551', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 23:20:40 05/03/21 ', '05-03-2021'),
(473, 'adminhaku', '100053361920036', '1614961530', '2704029759721481', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 23:25:30 05/03/21 ', '05-03-2021'),
(474, 'adminhaku', '100044805396033', '1614961530', '259602399040907', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 23:25:30 05/03/21 ', '05-03-2021'),
(475, 'adminhaku', '100044805396033', '1614961866', '833707290821421', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 23:31:06 05/03/21 ', '05-03-2021'),
(476, 'adminhaku', '100044805396033', '1614962130', '2962060297415208', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 23:35:30 05/03/21 ', '05-03-2021'),
(477, 'adminhaku', '100044805396033', '1614962440', '3978520645541413', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 23:40:40 05/03/21 ', '05-03-2021'),
(478, 'adminhaku', '100044805396033', '1614962739', '866023643972984', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 23:45:39 05/03/21 ', '05-03-2021'),
(479, 'adminhaku', '100044805396033', '1614963039', '4042684675798403', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 23:50:39 05/03/21 ', '05-03-2021'),
(480, 'adminhaku', '100044805396033', '1614963329', '4042696392463898', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 23:55:29 05/03/21 ', '05-03-2021'),
(481, 'adminhaku', '100044805396033', '1614963670', '2920088921604740', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 00:01:10 06/03/21 ', '06-03-2021'),
(482, 'adminhaku', '100044805396033', '1614963931', '1244479545954023', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 00:05:31 06/03/21 ', '06-03-2021'),
(483, 'adminhaku', '100044805396033', '1614964240', '1244483219286989', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 00:10:40 06/03/21 ', '06-03-2021'),
(484, 'adminhaku', '100053361920036', '1614964240', '4087068207978440', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(485, 'adminhaku', '100053361920036', '1614964540', '773167706944784', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 00:15:40 06/03/21 ', '06-03-2021'),
(486, 'adminhaku', '100044805396033', '1614964540', '4042739432459594', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 00:15:40 06/03/21 ', '06-03-2021'),
(487, 'adminhaku', '100044805396033', '1614964840', '1244498395952138', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 00:20:40 06/03/21 ', '06-03-2021'),
(488, 'adminhaku', '100053361920036', '1614964840', '3838715586204201', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 00:20:40 06/03/21 ', '06-03-2021'),
(489, 'adminhaku', '100044805396033', '1614965131', '1677472419106724', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n@[100005319458093:0] ơi ghé fb e tương tác lại nha\nBayh la 00:25:31 06/03/21 ', '06-03-2021'),
(490, 'adminhaku', '100053361920036', '1614965131', '4086074714744456', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 00:25:31 06/03/21 ', '06-03-2021'),
(491, 'adminhaku', '100053361920036', '1614965465', '3838857846189975', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 00:31:05 06/03/21 ', '06-03-2021'),
(492, 'adminhaku', '100044805396033', '1614965465', '283403353180383', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 00:31:05 06/03/21 ', '06-03-2021'),
(493, 'adminhaku', '100053361920036', '1614965730', '2703613076429816', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 00:35:30 06/03/21 ', '06-03-2021'),
(494, 'adminhaku', '100044805396033', '1614965730', '4042778745788996', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 00:35:30 06/03/21 ', '06-03-2021'),
(495, 'adminhaku', '100044805396033', '1614966038', '2920185814928384', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 00:40:38 06/03/21 ', '06-03-2021'),
(496, 'adminhaku', '100053361920036', '1614966038', '4085463461472248', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 00:40:38 06/03/21 ', '06-03-2021'),
(497, 'adminhaku', '100053361920036', '1614966339', '775896033351540', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 00:45:39 06/03/21 ', '06-03-2021'),
(498, 'adminhaku', '100044805396033', '1614966339', '3978648838861927', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 00:45:39 06/03/21 ', '06-03-2021'),
(499, 'adminhaku', '100053361920036', '1614966639', '3840981145977645', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(500, 'adminhaku', '100044805396033', '1614966639', '4042804545786416', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 00:50:39 06/03/21 ', '06-03-2021'),
(501, 'adminhaku', '100053361920036', '1614966932', '3840913999317693', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 00:55:32 06/03/21 ', '06-03-2021'),
(502, 'adminhaku', '100044805396033', '1614967271', '2833970073490341', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 01:01:11 06/03/21 ', '06-03-2021'),
(503, 'adminhaku', '100053361920036', '1614967271', '3123092327975107', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[1756687557948931:0] một ngày thật nhiều niềm vui\nBayh là: 01:01:11 06/03/21 ', '06-03-2021'),
(504, 'adminhaku', '100044805396033', '1614967531', '3978690148857796', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 01:05:31 06/03/21 ', '06-03-2021'),
(505, 'adminhaku', '100053361920036', '1614967531', '3840923459316747', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 01:05:31 06/03/21 ', '06-03-2021'),
(506, 'adminhaku', '100053361920036', '1614967839', '3841361539272939', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 01:10:39 06/03/21 ', '06-03-2021'),
(507, 'adminhaku', '100044805396033', '1614967839', '3978696312190513', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 01:10:39 06/03/21 ', '06-03-2021'),
(508, 'adminhaku', '100053361920036', '1614968140', '3840929162649510', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 01:15:40 06/03/21 ', '06-03-2021'),
(509, 'adminhaku', '100044805396033', '1614968140', '833823860809764', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 01:15:40 06/03/21 ', '06-03-2021'),
(510, 'adminhaku', '100044805396033', '1614968439', '2920266824920283', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 01:20:39 06/03/21 ', '06-03-2021'),
(511, 'adminhaku', '100053361920036', '1614968439', '1351137338584739', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100010654564811:0]\nBây gio là: 01:20:39 06/03/21 ', '06-03-2021'),
(512, 'adminhaku', '100044805396033', '1614968730', '1244525965949381', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 01:25:30 06/03/21 ', '06-03-2021'),
(513, 'adminhaku', '100053361920036', '1614968730', '2910885299236418', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 01:25:30 06/03/21 ', '06-03-2021'),
(514, 'adminhaku', '100044805396033', '1614969067', '4042888712444666', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 01:31:07 06/03/21 ', '06-03-2021'),
(515, 'adminhaku', '100053361920036', '1614969067', '2910885299236418', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 01:31:07 06/03/21 ', '06-03-2021'),
(516, 'adminhaku', '100044805396033', '1614969331', '1659240837602277', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 01:35:31 06/03/21 ', '06-03-2021'),
(517, 'adminhaku', '100053361920036', '1614969331', '2704271219697335', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 01:35:31 06/03/21 ', '06-03-2021'),
(518, 'adminhaku', '100053361920036', '1614969639', '2704271219697335', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 01:40:39 06/03/21 ', '06-03-2021'),
(519, 'adminhaku', '100044805396033', '1614969639', '1244533042615340', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 01:40:39 06/03/21 ', '06-03-2021'),
(520, 'adminhaku', '100053361920036', '1614969939', '1287428518306696', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 01:45:39 06/03/21 ', '06-03-2021'),
(521, 'adminhaku', '100044805396033', '1614969939', '2920008168279482', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 01:45:39 06/03/21 ', '06-03-2021'),
(522, 'adminhaku', '100044805396033', '1614970238', '2919882634958702', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 01:50:38 06/03/21 ', '06-03-2021'),
(523, 'adminhaku', '100053361920036', '1614970238', '1162868180837928', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100013442710164:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 01:50:38 06/03/21 ', '06-03-2021'),
(524, 'adminhaku', '100053361920036', '1614970530', '2519761861666190', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 01:55:30 06/03/21 ', '06-03-2021'),
(525, 'adminhaku', '100044805396033', '1614970530', '2962136097407628', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 01:55:30 06/03/21 ', '06-03-2021'),
(526, 'adminhaku', '100044805396033', '1614970869', '2834000103487338', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 02:01:09 06/03/21 ', '06-03-2021'),
(527, 'adminhaku', '100053361920036', '1614970869', '912068162671293', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 02:01:09 06/03/21 ', '06-03-2021'),
(528, 'adminhaku', '100044805396033', '1614971131', '4042944932439044', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 02:05:31 06/03/21 ', '06-03-2021'),
(529, 'adminhaku', '100053361920036', '1614971131', '453547346065736', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100042314220939:0]', '06-03-2021'),
(530, 'adminhaku', '100053361920036', '1614971439', '2703468256444298', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 02:10:39 06/03/21 ', '06-03-2021'),
(531, 'adminhaku', '100044805396033', '1614971439', '3978796892180455', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 02:10:39 06/03/21 ', '06-03-2021'),
(532, 'adminhaku', '100044805396033', '1614971740', '2920052134941752', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 02:15:40 06/03/21 ', '06-03-2021'),
(533, 'adminhaku', '100053361920036', '1614971740', '491706468869935', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 02:15:40 06/03/21 ', '06-03-2021'),
(534, 'adminhaku', '100053361920036', '1614972039', '2704147016376422', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 02:20:39 06/03/21 ', '06-03-2021'),
(535, 'adminhaku', '100044805396033', '1614972039', '3978818722178272', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 02:20:39 06/03/21 ', '06-03-2021'),
(536, 'adminhaku', '100044805396033', '1614972330', '2920442751569357', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 02:25:30 06/03/21 ', '06-03-2021'),
(537, 'adminhaku', '100053361920036', '1614972330', '299918918142777', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 02:25:30 06/03/21 ', '06-03-2021'),
(538, 'adminhaku', '100053361920036', '1614972663', '1089616851508058', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 02:31:03 06/03/21 ', '06-03-2021'),
(539, 'adminhaku', '100044805396033', '1614972663', '4042988739101330', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 02:31:03 06/03/21 ', '06-03-2021'),
(540, 'adminhaku', '100053361920036', '1614972931', '2520000284975681', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 02:35:31 06/03/21 ', '06-03-2021'),
(541, 'adminhaku', '100044805396033', '1614972931', '833855757473241', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 02:35:31 06/03/21 ', '06-03-2021'),
(542, 'adminhaku', '100053361920036', '1614973239', '3841426139266479', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 02:40:39 06/03/21 ', '06-03-2021'),
(543, 'adminhaku', '100044805396033', '1614973239', '2962158054072099', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 02:40:39 06/03/21 ', '06-03-2021'),
(544, 'adminhaku', '100044805396033', '1614973538', '4043012835765587', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 02:45:38 06/03/21 ', '06-03-2021'),
(545, 'adminhaku', '100044805396033', '1614973839', '833860580806092', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 02:50:39 06/03/21 ', '06-03-2021'),
(546, 'adminhaku', '100053361920036', '1614973839', '3840186232723803', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 02:50:39 06/03/21 ', '06-03-2021'),
(547, 'adminhaku', '100044805396033', '1614974130', '4043030352430502', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 02:55:30 06/03/21 ', '06-03-2021'),
(548, 'adminhaku', '100053361920036', '1614974130', '3841312579277835', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 02:55:30 06/03/21 ', '06-03-2021'),
(549, 'adminhaku', '100053361920036', '1614974469', '499025644816002', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 03:01:09 06/03/21 ', '06-03-2021'),
(550, 'adminhaku', '100044805396033', '1614974469', '4043037609096443', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 03:01:09 06/03/21 ', '06-03-2021'),
(551, 'adminhaku', '100044805396033', '1614974729', '4043050985761772', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 03:05:29 06/03/21 ', '06-03-2021'),
(552, 'adminhaku', '100053361920036', '1614974729', '3840306042711822', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 03:05:29 06/03/21 ', '06-03-2021'),
(553, 'adminhaku', '100044805396033', '1614975038', '4043056012427936', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 03:10:38 06/03/21 ', '06-03-2021'),
(554, 'adminhaku', '100053361920036', '1614975038', '2519915101650866', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 03:10:38 06/03/21 ', '06-03-2021'),
(555, 'adminhaku', '100053361920036', '1614975340', '435955257653067', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 03:15:40 06/03/21 ', '06-03-2021'),
(556, 'adminhaku', '100044805396033', '1614975340', '4043067919093412', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 03:15:40 06/03/21 ', '06-03-2021'),
(557, 'adminhaku', '100044805396033', '1614975638', '431239458150654', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 03:20:38 06/03/21 ', '06-03-2021'),
(558, 'adminhaku', '100053361920036', '1614975638', '2625593634398214', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi @[100008428096203:0] ghé fb e tương tác lại nha\nBayh là: 03:20:38 06/03/21 ', '06-03-2021'),
(559, 'adminhaku', '100053361920036', '1614975926', '2625593634398214', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100008428096203:0]', '06-03-2021'),
(560, 'adminhaku', '100044805396033', '1614975926', '2829245487348413', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 03:25:26 06/03/21 ', '06-03-2021'),
(561, 'adminhaku', '100053361920036', '1614976266', '2625593634398214', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100008428096203:0]', '06-03-2021'),
(562, 'adminhaku', '100044805396033', '1614976266', '2920204514926514', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 03:31:06 06/03/21 ', '06-03-2021'),
(563, 'adminhaku', '100044805396033', '1614976528', '2919877124959253', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 03:35:28 06/03/21 ', '06-03-2021'),
(564, 'adminhaku', '100053361920036', '1614976528', '2625593634398214', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 03:35:28 06/03/21 ', '06-03-2021'),
(565, 'adminhaku', '100044805396033', '1614976838', '2920080014938964', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 03:40:38 06/03/21 ', '06-03-2021'),
(566, 'adminhaku', '100053361920036', '1614976838', '2625593634398214', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 03:40:38 06/03/21 ', '06-03-2021'),
(567, 'adminhaku', '100044805396033', '1614977138', '833883550803795', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 03:45:38 06/03/21 ', '06-03-2021'),
(568, 'adminhaku', '100053361920036', '1614977138', '2625593634398214', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 03:45:38 06/03/21 ', '06-03-2021'),
(569, 'adminhaku', '100053361920036', '1614977438', '2625593634398214', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 03:50:38 06/03/21 ', '06-03-2021'),
(570, 'adminhaku', '100044805396033', '1614977438', '2962193680735203', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 03:50:38 06/03/21 ', '06-03-2021'),
(571, 'adminhaku', '100044805396033', '1614977727', '1244589779276333', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 03:55:27 06/03/21 ', '06-03-2021'),
(572, 'adminhaku', '100053361920036', '1614977727', '2625593634398214', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100008428096203:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 03:55:27 06/03/21 ', '06-03-2021'),
(573, 'adminhaku', '100044805396033', '1614978068', '4043131155753755', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 04:01:08 06/03/21 ', '06-03-2021'),
(574, 'adminhaku', '100053361920036', '1614978068', '2625593634398214', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 04:01:08 06/03/21 ', '06-03-2021'),
(575, 'adminhaku', '100053361920036', '1614978327', '2625593634398214', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 04:05:27 06/03/21 ', '06-03-2021'),
(576, 'adminhaku', '100044805396033', '1614978327', '4043141319086072', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 04:05:27 06/03/21 ', '06-03-2021'),
(577, 'adminhaku', '100044805396033', '1614978638', '2787351064820754', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 04:10:38 06/03/21 ', '06-03-2021'),
(578, 'adminhaku', '100053361920036', '1614978638', '245707650601568', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 04:10:38 06/03/21 ', '06-03-2021'),
(579, 'adminhaku', '100044805396033', '1614978939', '3979002722159872', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 04:15:39 06/03/21 ', '06-03-2021'),
(580, 'adminhaku', '100053361920036', '1614978939', '452818072805330', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc@[100042314220939:0] một ngày may mắn ạ :)\nBây giờ là: 04:15:39 06/03/21 ', '06-03-2021'),
(581, 'adminhaku', '100053361920036', '1614979238', '2895332294070844', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha @[100007823057833:0]\nBay h là: 04:20:38 06/03/21 ', '06-03-2021'),
(582, 'adminhaku', '100044805396033', '1614979238', '2829284250677870', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 04:20:38 06/03/21 ', '06-03-2021'),
(583, 'adminhaku', '100053361920036', '1614979530', '454942379259566', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n@[100042314220939:0] ơi ghé fb e tương tác lại nha\nBayh la 04:25:30 06/03/21 ', '06-03-2021'),
(584, 'adminhaku', '100044805396033', '1614979530', '2829290177343944', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 04:25:30 06/03/21 ', '06-03-2021'),
(585, 'adminhaku', '100053361920036', '1614979864', '1115251505614275', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100013883071994:0]', '06-03-2021'),
(586, 'adminhaku', '100044805396033', '1614979864', '4043179762415561', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 04:31:04 06/03/21 ', '06-03-2021'),
(587, 'adminhaku', '100044805396033', '1614980129', '2962215234066381', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 04:35:29 06/03/21 ', '06-03-2021'),
(588, 'adminhaku', '100053361920036', '1614980129', '1115251505614275', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100013883071994:0]', '06-03-2021'),
(589, 'adminhaku', '100053361920036', '1614980438', '2038769519598022', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 04:40:38 06/03/21 ', '06-03-2021'),
(590, 'adminhaku', '100044805396033', '1614980438', '1244608449274466', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 04:40:38 06/03/21 ', '06-03-2021'),
(591, 'adminhaku', '100044805396033', '1614980738', '4043210312412506', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 04:45:38 06/03/21 ', '06-03-2021'),
(592, 'adminhaku', '100053361920036', '1614980738', '2038769519598022', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 04:45:38 06/03/21 ', '06-03-2021'),
(593, 'adminhaku', '100053361920036', '1614981037', '220183093082031', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n@[100052710257225:0] ơi ghé fb e tương tác lại nha\nBayh la 04:50:37 06/03/21 ', '06-03-2021'),
(594, 'adminhaku', '100044805396033', '1614981037', '833905487468268', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 04:50:37 06/03/21 ', '06-03-2021'),
(595, 'adminhaku', '100044805396033', '1614981329', '4043219772411560', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 04:55:29 06/03/21 ', '06-03-2021'),
(596, 'adminhaku', '100053361920036', '1614981329', '220183093082031', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100052710257225:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 04:55:29 06/03/21 ', '06-03-2021'),
(597, 'adminhaku', '100053361920036', '1614981669', '878582400482522', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 05:01:09 06/03/21 ', '06-03-2021'),
(598, 'adminhaku', '100044805396033', '1614981669', '1659331134259914', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(599, 'adminhaku', '100044805396033', '1614981930', '4043237525743118', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 05:05:30 06/03/21 ', '06-03-2021'),
(600, 'adminhaku', '100053361920036', '1614981930', '220183093082031', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100052710257225:0] một ngày thật nhiều niềm vui\nBayh là: 05:05:30 06/03/21 ', '06-03-2021'),
(601, 'adminhaku', '100053361920036', '1614982238', '220183093082031', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 05:10:38 06/03/21 ', '06-03-2021'),
(602, 'adminhaku', '100044805396033', '1614982238', '567479060877731', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 05:10:38 06/03/21 ', '06-03-2021'),
(603, 'adminhaku', '100053361920036', '1614982538', '220183093082031', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 05:15:38 06/03/21 ', '06-03-2021'),
(604, 'adminhaku', '100044805396033', '1614982538', '1659337774259250', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 05:15:38 06/03/21 ', '06-03-2021'),
(605, 'adminhaku', '100053361920036', '1614982838', '292762172422682', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha @[100050667041344:0]\nBayh la 05:20:38 06/03/21 ', '06-03-2021'),
(606, 'adminhaku', '100044805396033', '1614982838', '4043261995740671', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 05:20:38 06/03/21 ', '06-03-2021'),
(607, 'adminhaku', '100053361920036', '1614983128', '2520000528308990', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 05:25:28 06/03/21 ', '06-03-2021'),
(608, 'adminhaku', '100044805396033', '1614983128', '1659341550925539', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 05:25:28 06/03/21 ', '06-03-2021'),
(609, 'adminhaku', '100044805396033', '1614983465', '1244624325939545', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 05:31:05 06/03/21 ', '06-03-2021'),
(610, 'adminhaku', '100053361920036', '1614983465', '2520000528308990', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 05:31:05 06/03/21 ', '06-03-2021'),
(611, 'adminhaku', '100053361920036', '1614983730', '1624593191253825', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n@[100011094798322:0] ơi ghé fb e tương tác lại nha\nBayh la 05:35:30 06/03/21 ', '06-03-2021'),
(612, 'adminhaku', '100044805396033', '1614983730', '833924284133055', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 05:35:30 06/03/21 ', '06-03-2021'),
(613, 'adminhaku', '100044805396033', '1614984038', '833924580799692', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 05:40:38 06/03/21 ', '06-03-2021'),
(614, 'adminhaku', '100053361920036', '1614984038', '1624593191253825', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n@[100011094798322:0] ơi ghé fb e tương tác lại nha\nBayh la 05:40:38 06/03/21 ', '06-03-2021');
INSERT INTO `log_cmt` (`id`, `username`, `uid`, `time`, `post`, `noidung`, `date`) VALUES
(615, 'adminhaku', '100044805396033', '1614984338', '4043298509070353', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 05:45:38 06/03/21 ', '06-03-2021'),
(616, 'adminhaku', '100053361920036', '1614984338', '1624593191253825', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 05:45:38 06/03/21 ', '06-03-2021'),
(617, 'adminhaku', '100044805396033', '1614984637', '4043303875736483', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 05:50:37 06/03/21 ', '06-03-2021'),
(618, 'adminhaku', '100053361920036', '1614984637', '1624593191253825', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100011094798322:0]', '06-03-2021'),
(619, 'adminhaku', '100044805396033', '1614984927', '1085140755333016', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 05:55:27 06/03/21 ', '06-03-2021'),
(620, 'adminhaku', '100053361920036', '1614984927', '1624593191253825', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 05:55:27 06/03/21 ', '06-03-2021'),
(621, 'adminhaku', '100053361920036', '1614985273', '1648152408721712', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 06:01:13 06/03/21 ', '06-03-2021'),
(622, 'adminhaku', '100044805396033', '1614985273', '2962254924062412', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(623, 'adminhaku', '100053361920036', '1614985531', '1648152408721712', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 06:05:31 06/03/21 ', '06-03-2021'),
(624, 'adminhaku', '100044805396033', '1614985531', '2962258484062056', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 06:05:31 06/03/21 ', '06-03-2021'),
(625, 'adminhaku', '100053361920036', '1614985838', '1648152408721712', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 06:10:38 06/03/21 ', '06-03-2021'),
(626, 'adminhaku', '100044805396033', '1614985838', '3979197765473701', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 06:10:38 06/03/21 ', '06-03-2021'),
(627, 'adminhaku', '100044805396033', '1614986139', '4043344059065798', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 06:15:39 06/03/21 ', '06-03-2021'),
(628, 'adminhaku', '100053361920036', '1614986139', '1648152408721712', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 06:15:39 06/03/21 ', '06-03-2021'),
(629, 'adminhaku', '100053361920036', '1614986438', '1648152408721712', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 06:20:38 06/03/21 ', '06-03-2021'),
(630, 'adminhaku', '100044805396033', '1614986438', '2919862468294052', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 06:20:38 06/03/21 ', '06-03-2021'),
(631, 'adminhaku', '100044805396033', '1614986727', '1597198827135857', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 06:25:27 06/03/21 ', '06-03-2021'),
(632, 'adminhaku', '100053361920036', '1614986727', '220183093082031', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 06:25:27 06/03/21 ', '06-03-2021'),
(633, 'adminhaku', '100053361920036', '1614987061', '525161568468250', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 06:31:01 06/03/21 ', '06-03-2021'),
(634, 'adminhaku', '100044805396033', '1614987061', '4043360762397461', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 06:31:01 06/03/21 ', '06-03-2021'),
(635, 'adminhaku', '100053361920036', '1614987326', '530486901283418', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha @[100029663375582:0]\nBay h là: 06:35:26 06/03/21 ', '06-03-2021'),
(636, 'adminhaku', '100044805396033', '1614987326', '833944947464322', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 06:35:26 06/03/21 ', '06-03-2021'),
(637, 'adminhaku', '100044805396033', '1614987638', '1244650219270289', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 06:40:38 06/03/21 ', '06-03-2021'),
(638, 'adminhaku', '100053361920036', '1614987638', '530486901283418', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 06:40:38 06/03/21 ', '06-03-2021'),
(639, 'adminhaku', '100053361920036', '1614987939', '757975468433839', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 06:45:39 06/03/21 ', '06-03-2021'),
(640, 'adminhaku', '100044805396033', '1614987939', '833947667464050', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 06:45:39 06/03/21 ', '06-03-2021'),
(641, 'adminhaku', '100044805396033', '1614988238', '2834129536807728', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 06:50:38 06/03/21 ', '06-03-2021'),
(642, 'adminhaku', '100053361920036', '1614988238', '2519820154993694', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 06:50:38 06/03/21 ', '06-03-2021'),
(643, 'adminhaku', '100044805396033', '1614988527', '4043404462393091', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 06:55:27 06/03/21 ', '06-03-2021'),
(644, 'adminhaku', '100053361920036', '1614988527', '2519820154993694', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 06:55:27 06/03/21 ', '06-03-2021'),
(645, 'adminhaku', '100044805396033', '1614988873', '2962287217392516', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 07:01:13 06/03/21 ', '06-03-2021'),
(646, 'adminhaku', '100053361920036', '1614988873', '3842322252510201', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 07:01:13 06/03/21 ', '06-03-2021'),
(647, 'adminhaku', '100044805396033', '1614989128', '1244658129269498', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 07:05:28 06/03/21 ', '06-03-2021'),
(648, 'adminhaku', '100053361920036', '1614989128', '2869273299955969', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100006199811844:0] một ngày thật nhiều niềm vui\nBayh là: 07:05:28 06/03/21 ', '06-03-2021'),
(649, 'adminhaku', '100053361920036', '1614989439', '275720520592405', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100044633769985:0] một ngày thật nhiều niềm vui\nBayh là: 07:10:39 06/03/21 ', '06-03-2021'),
(650, 'adminhaku', '100044805396033', '1614989439', '833928384132645', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 07:10:39 06/03/21 ', '06-03-2021'),
(651, 'adminhaku', '100053361920036', '1614989739', '452193476086064', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 07:15:39 06/03/21 ', '06-03-2021'),
(652, 'adminhaku', '100044805396033', '1614989739', '833958877462929', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 07:15:39 06/03/21 ', '06-03-2021'),
(653, 'adminhaku', '100053361920036', '1614990038', '1083811515435992', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 07:20:38 06/03/21 ', '06-03-2021'),
(654, 'adminhaku', '100044805396033', '1614990038', '567735107518793', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 07:20:38 06/03/21 ', '06-03-2021'),
(655, 'adminhaku', '100044805396033', '1614990329', '3979330925460385', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 07:25:29 06/03/21 ', '06-03-2021'),
(656, 'adminhaku', '100053361920036', '1614990329', '2896322287305178', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha @[100007823057833:0]\nBayh la 07:25:29 06/03/21 ', '06-03-2021'),
(657, 'adminhaku', '100044805396033', '1614990662', '1244673155934662', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 07:31:02 06/03/21 ', '06-03-2021'),
(658, 'adminhaku', '100053361920036', '1614990662', '842053700031102', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 07:31:02 06/03/21 ', '06-03-2021'),
(659, 'adminhaku', '100053361920036', '1614990926', '3840702756005484', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 07:35:26 06/03/21 ', '06-03-2021'),
(660, 'adminhaku', '100044805396033', '1614990926', '4043466632386874', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 07:35:26 06/03/21 ', '06-03-2021'),
(661, 'adminhaku', '100053361920036', '1614991237', '3802313266550363', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 07:40:37 06/03/21 ', '06-03-2021'),
(662, 'adminhaku', '100044805396033', '1614991237', '4043475609052643', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 07:40:37 06/03/21 ', '06-03-2021'),
(663, 'adminhaku', '100044805396033', '1614991538', '567744664184504', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 07:45:38 06/03/21 ', '06-03-2021'),
(664, 'adminhaku', '100053361920036', '1614991538', '275256057305518', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100044633769985:0]\nBây gio là: 07:45:38 06/03/21 ', '06-03-2021'),
(665, 'adminhaku', '100053361920036', '1614991837', '4203733466305903', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 07:50:37 06/03/21 ', '06-03-2021'),
(666, 'adminhaku', '100044805396033', '1614991837', '482240696486076', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 07:50:37 06/03/21 ', '06-03-2021'),
(667, 'adminhaku', '100044805396033', '1614992129', '1244684545933523', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 07:55:29 06/03/21 ', '06-03-2021'),
(668, 'adminhaku', '100053361920036', '1614992129', '275742427256881', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 07:55:29 06/03/21 ', '06-03-2021'),
(669, 'adminhaku', '100044805396033', '1614992467', '833976740794476', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 08:01:07 06/03/21 ', '06-03-2021'),
(670, 'adminhaku', '100053361920036', '1614992467', '253430182995573', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n@[100049857785962:0] ơi ghé fb e tương tác lại nha\nBayh la 08:01:07 06/03/21 ', '06-03-2021'),
(671, 'adminhaku', '100053361920036', '1614992729', '451877052934440', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100043364468291:0]\nBây gio là: 08:05:29 06/03/21 ', '06-03-2021'),
(672, 'adminhaku', '100044805396033', '1614992729', '2962320747389163', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 08:05:29 06/03/21 ', '06-03-2021'),
(673, 'adminhaku', '100044805396033', '1614993038', '1659421137584247', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 08:10:38 06/03/21 ', '06-03-2021'),
(674, 'adminhaku', '100044805396033', '1614993338', '268728091445018', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100049234876486:0] một ngày thật nhiều niềm vui\nBayh là: 08:15:38 06/03/21 ', '06-03-2021'),
(675, 'adminhaku', '100053361920036', '1614993338', '250270436758628', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 08:15:38 06/03/21 ', '06-03-2021'),
(676, 'adminhaku', '100044805396033', '1614993638', '2833426366878045', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 08:20:38 06/03/21 ', '06-03-2021'),
(677, 'adminhaku', '100053361920036', '1614993638', '3729185580510222', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 08:20:38 06/03/21 ', '06-03-2021'),
(678, 'adminhaku', '100044805396033', '1614993928', '268730521444775', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc@[100049234876486:0] một ngày may mắn ạ :)\nBây giờ là: 08:25:28 06/03/21 ', '06-03-2021'),
(679, 'adminhaku', '100053361920036', '1614993928', '250270436758628', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 08:25:28 06/03/21 ', '06-03-2021'),
(680, 'adminhaku', '100053361920036', '1614994262', '300930078041661', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 08:31:02 06/03/21 ', '06-03-2021'),
(681, 'adminhaku', '100044805396033', '1614994262', '2920596431553989', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 08:31:02 06/03/21 ', '06-03-2021'),
(682, 'adminhaku', '100044805396033', '1614994527', '2920599978220301', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 08:35:27 06/03/21 ', '06-03-2021'),
(683, 'adminhaku', '100044805396033', '1614994838', '433200074676524', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 08:40:38 06/03/21 ', '06-03-2021'),
(684, 'adminhaku', '100044805396033', '1614995138', '433201474676384', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 08:45:38 06/03/21 ', '06-03-2021'),
(685, 'adminhaku', '100044805396033', '1614995438', '447030903197370', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100036713924367:0]\nBây gio là: 08:50:38 06/03/21 ', '06-03-2021'),
(686, 'adminhaku', '100044805396033', '1614995724', '1659445137581847', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 08:55:24 06/03/21 ', '06-03-2021'),
(687, 'adminhaku', '100044805396033', '1614996068', '1244713815930596', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 09:01:08 06/03/21 ', '06-03-2021'),
(688, 'adminhaku', '100044805396033', '1614996330', '2920617581551874', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 09:05:30 06/03/21 ', '06-03-2021'),
(689, 'adminhaku', '100044805396033', '1614996939', '2967641120145261', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 09:15:39 06/03/21 ', '06-03-2021'),
(690, 'adminhaku', '100044805396033', '1614997239', '429236234812538', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 09:20:39 06/03/21 ', '06-03-2021'),
(691, 'adminhaku', '100044805396033', '1614997530', '1659417637584597', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 09:25:30 06/03/21 ', '06-03-2021'),
(692, 'adminhaku', '100044805396033', '1614998129', '472736480751906', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 09:35:29 06/03/21 ', '06-03-2021'),
(693, 'adminhaku', '100044805396033', '1614998438', '3890769694352408', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 09:40:38 06/03/21 ', '06-03-2021'),
(694, 'adminhaku', '100044805396033', '1614998738', '3979569185436559', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 09:45:38 06/03/21 ', '06-03-2021'),
(695, 'adminhaku', '100044805396033', '1614999038', '4043689305697940', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 09:50:38 06/03/21 ', '06-03-2021'),
(696, 'adminhaku', '100044805396033', '1614999669', '2834215803465768', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 10:01:09 06/03/21 ', '06-03-2021'),
(697, 'adminhaku', '100044805396033', '1614999930', '2829448090661486', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 10:05:30 06/03/21 ', '06-03-2021'),
(698, 'adminhaku', '100044805396033', '1615000539', '2887911548194573', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100009272684927:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 10:15:39 06/03/21 ', '06-03-2021'),
(699, 'adminhaku', '100044805396033', '1615000837', '567810404177930', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 10:20:37 06/03/21 ', '06-03-2021'),
(700, 'adminhaku', '100044805396033', '1615001129', '2787530321469495', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 10:25:29 06/03/21 ', '06-03-2021'),
(701, 'adminhaku', '100044805396033', '1615001463', '2787529621469565', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 10:31:03 06/03/21 ', '06-03-2021'),
(702, 'adminhaku', '100044805396033', '1615001728', '2787537538135440', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 10:35:28 06/03/21 ', '06-03-2021'),
(703, 'adminhaku', '100044805396033', '1615002038', '3979660688760742', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 10:40:38 06/03/21 ', '06-03-2021'),
(704, 'adminhaku', '100044805396033', '1615002339', '2962398190714752', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 10:45:39 06/03/21 ', '06-03-2021'),
(705, 'adminhaku', '100044805396033', '1615002638', '2887926781526383', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 10:50:38 06/03/21 ', '06-03-2021'),
(706, 'adminhaku', '100044805396033', '1615002926', '1194785977604238', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 10:55:26 06/03/21 ', '06-03-2021'),
(707, 'adminhaku', '100044805396033', '1615003268', '923159565096680', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 11:01:08 06/03/21 ', '06-03-2021'),
(708, 'adminhaku', '100044805396033', '1615003525', '2834251263462222', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 11:05:25 06/03/21 ', '06-03-2021'),
(709, 'adminhaku', '100044805396033', '1615003839', '1244774729257838', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 11:10:39 06/03/21 ', '06-03-2021'),
(710, 'adminhaku', '100044805396033', '1615004138', '493032198387836', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 11:15:38 06/03/21 ', '06-03-2021'),
(711, 'adminhaku', '100044805396033', '1615004437', '2787564561466071', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 11:20:37 06/03/21 ', '06-03-2021'),
(712, 'adminhaku', '100044805396033', '1615004729', '484429879239474', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc@[100030173991388:0] một ngày may mắn ạ :)\nBây giờ là: 11:25:29 06/03/21 ', '06-03-2021'),
(713, 'adminhaku', '100044805396033', '1615005065', '1659519394241088', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 11:31:05 06/03/21 ', '06-03-2021'),
(714, 'adminhaku', '100044805396033', '1615005638', '2967722193470487', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100006982050733:0] một ngày thật nhiều niềm vui\nBayh là: 11:40:38 06/03/21 ', '06-03-2021'),
(715, 'adminhaku', '100044805396033', '1615005939', '2787577588131435', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 11:45:39 06/03/21 ', '06-03-2021'),
(716, 'adminhaku', '100044805396033', '1615006240', '1659527720906922', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 11:50:40 06/03/21 ', '06-03-2021'),
(717, 'adminhaku', '100044805396033', '1615006526', '2834282333459115', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 11:55:26 06/03/21 ', '06-03-2021'),
(718, 'adminhaku', '100044805396033', '1615006868', '2834284340125581', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 12:01:08 06/03/21 ', '06-03-2021'),
(719, 'adminhaku', '100044805396033', '1615007129', '1659534840906210', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 12:05:29 06/03/21 ', '06-03-2021'),
(720, 'adminhaku', '100044805396033', '1615007439', '1659537487572612', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 12:10:39 06/03/21 ', '06-03-2021'),
(721, 'adminhaku', '100044805396033', '1615007739', '2962447087376529', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 12:15:39 06/03/21 ', '06-03-2021'),
(722, 'adminhaku', '100044805396033', '1615008041', '2834296650124350', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 12:20:41 06/03/21 ', '06-03-2021'),
(723, 'adminhaku', '100044805396033', '1615008330', '5308458349226124', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 12:25:30 06/03/21 ', '06-03-2021'),
(724, 'adminhaku', '100044805396033', '1615008664', '4043966942336843', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 12:31:04 06/03/21 ', '06-03-2021'),
(725, 'adminhaku', '100044805396033', '1615008926', '2834313066789375', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 12:35:26 06/03/21 ', '06-03-2021'),
(726, 'adminhaku', '100044805396033', '1615009239', '520431389360854', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100041819911673:0] một ngày thật nhiều niềm vui\nBayh là: 12:40:39 06/03/21 ', '06-03-2021'),
(727, 'adminhaku', '100044805396033', '1615009539', '2787606768128517', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(728, 'adminhaku', '100044805396033', '1615010130', '1659558530903841', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 12:55:30 06/03/21 ', '06-03-2021'),
(729, 'adminhaku', '100044805396033', '1615010471', '2962465990707972', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 13:01:11 06/03/21 ', '06-03-2021'),
(730, 'adminhaku', '100044805396033', '1615010744', '2834315763455772', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 13:05:44 06/03/21 ', '06-03-2021'),
(731, 'adminhaku', '100044805396033', '1615011892', '451799699584613', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc @[100042637613506:0] luôn luôn vui vẻ\nRảnh qua fb em tương tác nha @[100042637613506:0]\nBây giờ la: 13:24:52 06/03/21 ', '06-03-2021'),
(732, 'adminhaku', '100044805396033', '1615011929', '2920789151534717', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 13:25:29 06/03/21 ', '06-03-2021'),
(733, 'adminhaku', '100044805396033', '1615011926', '1659576814235346', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 13:25:26 06/03/21 ', '06-03-2021'),
(734, 'adminhaku', '100044805396033', '1615011961', '1194146337668202', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 13:26:01 06/03/21 ', '06-03-2021'),
(735, 'adminhaku', '100044805396033', '1615012265', '283695856484466', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 13:31:05 06/03/21 ', '06-03-2021'),
(736, 'adminhaku', '100044805396033', '1615012525', '1194812990934870', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 13:35:25 06/03/21 ', '06-03-2021'),
(737, 'adminhaku', '100044805396033', '1615012806', '405754232945222', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 13:40:06 06/03/21 ', '06-03-2021'),
(738, 'adminhaku', '100044805396033', '1615012838', '2787636934792167', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 13:40:38 06/03/21 ', '06-03-2021'),
(739, 'adminhaku', '100044805396033', '1615012846', '1516908981832089', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 13:40:46 06/03/21 ', '06-03-2021'),
(740, 'adminhaku', '100044805396033', '1615013140', '2787637238125470', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 13:45:40 06/03/21 ', '06-03-2021'),
(741, 'adminhaku', '100044805396033', '1615013438', '567876100838027', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(742, 'adminhaku', '100044805396033', '1615013730', '1244850719250239', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 13:55:30 06/03/21 ', '06-03-2021'),
(743, 'adminhaku', '100044805396033', '1615014069', '1661077357407544', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100005158874632:0]', '06-03-2021'),
(744, 'adminhaku', '100044805396033', '1615014637', '4044121945654676', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 14:10:37 06/03/21 ', '06-03-2021'),
(745, 'adminhaku', '100044805396033', '1615014938', '4044130782320459', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 14:15:38 06/03/21 ', '06-03-2021'),
(746, 'adminhaku', '100044805396033', '1615015239', '1659606920899002', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 14:20:39 06/03/21 ', '06-03-2021'),
(747, 'adminhaku', '100044805396033', '1615015526', '834158367442980', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 14:25:26 06/03/21 ', '06-03-2021'),
(748, 'adminhaku', '100044805396033', '1615015864', '2787660798123114', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 14:31:04 06/03/21 ', '06-03-2021'),
(749, 'adminhaku', '100044805396033', '1615016127', '567906907501613', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 14:35:27 06/03/21 ', '06-03-2021'),
(750, 'adminhaku', '100044805396033', '1615016438', '1659616250898069', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 14:40:38 06/03/21 ', '06-03-2021'),
(751, 'adminhaku', '100044805396033', '1615016741', '834167400775410', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 14:45:41 06/03/21 ', '06-03-2021'),
(752, 'adminhaku', '100044805396033', '1615017038', '1659622574230770', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 14:50:38 06/03/21 ', '06-03-2021'),
(753, 'adminhaku', '100044805396033', '1615017671', '1661102060738407', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 15:01:11 06/03/21 ', '06-03-2021'),
(754, 'adminhaku', '100044805396033', '1615017930', '2834381906782491', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 15:05:30 06/03/21 ', '06-03-2021'),
(755, 'adminhaku', '100044805396033', '1615018238', '2834384180115597', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 15:10:38 06/03/21 ', '06-03-2021'),
(756, 'adminhaku', '100044805396033', '1615018539', '1659573430902351', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 15:15:39 06/03/21 ', '06-03-2021'),
(757, 'adminhaku', '100044805396033', '1615018839', '2966139916938904', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 15:20:39 06/03/21 ', '06-03-2021'),
(758, 'adminhaku', '100044805396033', '1615019126', '1659608920898802', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 15:25:26 06/03/21 ', '06-03-2021'),
(759, 'adminhaku', '100044805396033', '1615019465', '2834392000114815', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 15:31:05 06/03/21 ', '06-03-2021'),
(760, 'adminhaku', '100044805396033', '1615019727', '2834395273447821', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 15:35:27 06/03/21 ', '06-03-2021'),
(761, 'adminhaku', '100044805396033', '1615020039', '2739748136241903', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 15:40:39 06/03/21 ', '06-03-2021'),
(762, 'adminhaku', '100044805396033', '1615020339', '2834398553447493', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 15:45:39 06/03/21 ', '06-03-2021'),
(763, 'adminhaku', '100044805396033', '1615020639', '834195077439309', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 15:50:39 06/03/21 ', '06-03-2021'),
(764, 'adminhaku', '100044805396033', '1615020928', '2834402290113786', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc  một ngày thật nhiều niềm vui\nBayh là: 15:55:28 06/03/21 ', '06-03-2021'),
(765, 'adminhaku', '100044805396033', '1615021270', '2834405923446756', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 16:01:10 06/03/21 ', '06-03-2021'),
(766, 'adminhaku', '100044805396033', '1615021530', '493141215043601', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100030431798093:0] một ngày thật nhiều niềm vui\nBayh là: 16:05:30 06/03/21 ', '06-03-2021'),
(767, 'adminhaku', '100044805396033', '1615021839', '431830601424873', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 16:10:39 06/03/21 ', '06-03-2021'),
(768, 'adminhaku', '100044805396033', '1615022139', '2834413576779324', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 16:15:39 06/03/21 ', '06-03-2021'),
(769, 'adminhaku', '100044805396033', '1615022440', '4044342238965980', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(770, 'adminhaku', '100044805396033', '1615022728', '837522363494174', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100017092532734:0]\nBây gio là: 16:25:28 06/03/21 ', '06-03-2021'),
(771, 'adminhaku', '100044805396033', '1615023067', '4044359785630892', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(772, 'adminhaku', '100044805396033', '1615023330', '3980230325370445', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 16:35:30 06/03/21 ', '06-03-2021'),
(773, 'adminhaku', '100044805396033', '1615023640', '837527360160341', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100017092532734:0]', '06-03-2021'),
(774, 'adminhaku', '100044805396033', '1615023940', '567946657497638', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 16:45:40 06/03/21 ', '06-03-2021'),
(775, 'adminhaku', '100044805396033', '1615024237', '1244932482575396', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 16:50:37 06/03/21 ', '06-03-2021'),
(776, 'adminhaku', '100044805396033', '1615024531', '2787736464782214', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(777, 'adminhaku', '100044805396033', '1615025130', '442952453609190', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n@[100036833168835:0] ơi ghé fb e tương tác lại nhé\nBây giờ la: 17:05:30 06/03/21 ', '06-03-2021'),
(778, 'adminhaku', '100044805396033', '1615025439', '2787714248117769', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 17:10:39 06/03/21 ', '06-03-2021'),
(779, 'adminhaku', '100044805396033', '1615025741', '268784261427473', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 17:15:41 06/03/21 ', '06-03-2021'),
(780, 'adminhaku', '100044805396033', '1615026039', '3980303708696440', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 17:20:39 06/03/21 ', '06-03-2021'),
(781, 'adminhaku', '100044805396033', '1615026328', '442960240275078', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 17:25:28 06/03/21 ', '06-03-2021'),
(782, 'adminhaku', '100044805396033', '1615026667', '1677904199063546', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 17:31:07 06/03/21 ', '06-03-2021'),
(783, 'adminhaku', '100044805396033', '1615026938', '2834476773439671', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 17:35:38 06/03/21 ', '06-03-2021'),
(784, 'adminhaku', '100044805396033', '1615027238', '925334811621554', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 17:40:38 06/03/21 ', '06-03-2021'),
(785, 'adminhaku', '100044805396033', '1615027540', '484561569226305', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 17:45:40 06/03/21 ', '06-03-2021'),
(786, 'adminhaku', '100044805396033', '1615027838', '2834485313438817', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 17:50:38 06/03/21 ', '06-03-2021'),
(787, 'adminhaku', '100044805396033', '1615028128', '2834486656772016', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 17:55:28 06/03/21 ', '06-03-2021'),
(788, 'adminhaku', '100044805396033', '1615028471', '2920974714849494', 'Bánh chưng tám góc chọn bề\nMen tình ủ chín lời thề chứa chan\nBạn bè trải khắp bắc nam\nDùg chug fây búc vẫn làm bạn nhau\nGhé fb em tương tác qua lại nha \nBayh la 18:01:11 06/03/21 ', '06-03-2021'),
(789, 'adminhaku', '100044805396033', '1615028728', '834274760764674', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 18:05:28 06/03/21 ', '06-03-2021'),
(790, 'adminhaku', '100044805396033', '1615029039', '447312636502530', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 18:10:39 06/03/21 ', '06-03-2021'),
(791, 'adminhaku', '100044805396033', '1615029340', '1244972069238104', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 18:15:40 06/03/21 ', '06-03-2021'),
(792, 'adminhaku', '100044805396033', '1615029638', '834297820762368', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 18:20:38 06/03/21 ', '06-03-2021'),
(793, 'adminhaku', '100044805396033', '1615029930', '2920984731515159', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 18:25:30 06/03/21 ', '06-03-2021'),
(794, 'adminhaku', '100044805396033', '1615030263', '1244979309237380', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 18:31:03 06/03/21 ', '06-03-2021'),
(795, 'adminhaku', '100044805396033', '1615030529', '2834505460103469', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 18:35:29 06/03/21 ', '06-03-2021'),
(796, 'adminhaku', '100044805396033', '1615030840', '441693593550056', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 18:40:40 06/03/21 ', '06-03-2021'),
(797, 'adminhaku', '100044805396033', '1615031139', '3891640997598611', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 18:45:39 06/03/21 ', '06-03-2021'),
(798, 'adminhaku', '100044805396033', '1615031439', '2834513826769299', 'Buôn có bạn, bán có phường.\nGặp nhau là cái duyên…\nChào nhau qua lại biết đâu ta là khách hàng của nhau…\n ơi ghé fb e tương tác lại nhé\nBây giờ la: 18:50:39 06/03/21 ', '06-03-2021'),
(799, 'adminhaku', '100044805396033', '1615031728', '2834516400102375', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 18:55:28 06/03/21 ', '06-03-2021'),
(800, 'adminhaku', '100044805396033', '1615032070', '2834519766768705', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 19:01:10 06/03/21 ', '06-03-2021'),
(801, 'adminhaku', '100044805396033', '1615032331', '441302210255861', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 19:05:31 06/03/21 ', '06-03-2021'),
(802, 'adminhaku', '100044805396033', '1615032639', '1245001325901845', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 19:10:39 06/03/21 ', '06-03-2021'),
(803, 'adminhaku', '100044805396033', '1615032941', '265633165015404', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha @[100047061669752:0]\nBay h là: 19:15:41 06/03/21 ', '06-03-2021'),
(804, 'adminhaku', '100044805396033', '1615033239', '2834531193434229', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 19:20:39 06/03/21 ', '06-03-2021'),
(805, 'adminhaku', '100044805396033', '1615033531', '2962683030686268', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 19:25:31 06/03/21 ', '06-03-2021'),
(806, 'adminhaku', '100044805396033', '1615033866', '442234193495996', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 19:31:06 06/03/21 ', '06-03-2021'),
(807, 'adminhaku', '100044805396033', '1615034131', '2834540703433278', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 19:35:31 06/03/21 ', '06-03-2021');
INSERT INTO `log_cmt` (`id`, `username`, `uid`, `time`, `post`, `noidung`, `date`) VALUES
(808, 'adminhaku', '100044805396033', '1615034439', '1659758264217201', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 19:40:39 06/03/21 ', '06-03-2021'),
(809, 'adminhaku', '100044805396033', '1615034739', '2834544856766196', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 19:45:39 06/03/21 ', '06-03-2021'),
(810, 'adminhaku', '100044805396033', '1615035038', '3891773910918653', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 19:50:38 06/03/21 ', '06-03-2021'),
(811, 'adminhaku', '100044805396033', '1615035328', '2834540276766654', ' Có duyên sẽ gặp bạn hiền\nMở hàng may mắn đếm tiền liền tay\nBữa nay em gửi lời chào :)\nCùng nhau tương tác ta càng thêm thân.\nBayh la: 19:55:28 06/03/21 ', '06-03-2021'),
(812, 'adminhaku', '100044805396033', '1615035671', '484612529221209', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha @[100030173991388:0]', '06-03-2021'),
(813, 'adminhaku', '100044805396033', '1615035931', '2787847671437760', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 20:05:31 06/03/21 ', '06-03-2021'),
(814, 'adminhaku', '100044805396033', '1615036240', '484617012554094', 'Facebook như một mái nhà.\nKẻ qua người lại sẽ là chị em.\nChào nhau thấm đậm nghĩa tình \nĐể tăng tương tác để mình thêm thân.\nChúc @[100030173991388:0] một ngày thật nhiều niềm vui\nBayh là: 20:10:40 06/03/21 ', '06-03-2021'),
(815, 'adminhaku', '100044805396033', '1615036540', '337270214372500', ' Câu chào đi trước, rước lộc lá theo sau.\nMình chúc một ngày may mắn ạ :)\nBây giờ là: 20:15:40 06/03/21 ', '06-03-2021'),
(816, 'adminhaku', '100044805396033', '1615036839', '484621232553672', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi @[100030173991388:0] ghé fb e tương tác lại nha\nBayh là: 20:20:39 06/03/21 ', '06-03-2021'),
(817, 'adminhaku', '100044805396033', '1615037465', '568038157488488', 'Phận đời chẳng được cao sang,\nLại nhiều nghịch cảnh phủ phàng riêng tư.\nHôm nay gom chút thơ từ,\nĐể mong ai đó gửi lời động viên.\nHihi  ghé fb e tương tác lại nha\nBayh là: 20:31:05 06/03/21 ', '06-03-2021'),
(818, 'adminhaku', '100044805396033', '1615037729', '337272214372300', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 20:35:29 06/03/21 ', '06-03-2021'),
(819, 'adminhaku', '100044805396033', '1615038039', '2967966976779342', 'Thu đi để lại lá vàng\nNgười đi để lại cho mình vẫy tay\nVẫy tay để lấy cái may\nBuôn may bán đắt vui lây cả làng\nBay h la: 20:40:39 06/03/21 ', '06-03-2021'),
(820, 'adminhaku', '100044805396033', '1615038339', '484633092552486', 'Trăm năm đá núi cũng mòn.\nMình chăm tương tác vẫn còn thấy nhau.\nLời chào không mất tiền mua :3\nThả tim một cái thấy nhau cả ngày :P\nBâyh là: 20:45:39 06/03/21 ', '06-03-2021'),
(821, 'adminhaku', '100044805396033', '1615038639', '1659806077545753', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 20:50:39 06/03/21 ', '06-03-2021'),
(822, 'adminhaku', '100044805396033', '1615038931', '269132458064786', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 20:55:31 06/03/21 ', '06-03-2021'),
(823, 'adminhaku', '100044805396033', '1615039269', '2834592736761408', 'Hôm này e gửi lời chào\nBuôn may bán đắt tiền vào như mưa\nCả nhà đã thấy em chưa\nHello một tiếng cùng đưa lộc về\nBây h là: 21:01:09 06/03/21 ', '06-03-2021'),
(824, 'adminhaku', '100044805396033', '1615039531', '2973375696318046', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé \nBây gio là: 21:05:31 06/03/21 ', '06-03-2021'),
(825, 'adminhaku', '100044805396033', '1615039838', '2962747684013136', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 21:10:38 06/03/21 ', '06-03-2021'),
(826, 'adminhaku', '100044805396033', '1615040141', '2834597373427611', 'Thân nhau cũng bởi câu chào\nGặp nhau cũng bởi hay vào FB.\nChúc  luôn luôn vui vẻ\nRảnh qua fb em tương tác nha \nBây giờ la: 21:15:41 06/03/21 ', '06-03-2021'),
(827, 'adminhaku', '100044805396033', '1615040440', '447392163161244', 'Hôm nay dậy sớm nhất làng\nVội vàng tương tác cho ngàn chị em\nGiờ ngồi háo hức thử xem\nBài mình được mấy tình yêu vẫy chào\nGhé tường fb em tương tác nhé @[100036713924367:0]\nBây gio là: 21:20:40 06/03/21 ', '06-03-2021'),
(828, 'adminhaku', '100044805396033', '1615040726', '834434684082015', 'Ngày xưa facebook để chơi\nNgày nay facebook là nơi kiếm tiền\nHello tất Cả bạn hiền\nCùng nhau tương tác để tiền nhân đôi\nBây giờ là: 21:25:26 06/03/21 ', '06-03-2021'),
(829, 'adminhaku', '100044805396033', '1615041066', '1245078125894165', 'Hoa thơm ai nỡ bẻ cành\nĐã vào fb sao đành bỏ đi\nNgười ơi lỡ thấy nhau thì\nChào nhau 1 tiếng để gần nhau thêm\nBayh là: 21:31:06 06/03/21 ', '06-03-2021'),
(830, 'adminhaku', '100044805396033', '1615041327', '2834615110092504', 'Sớm mai rót chén rươu đào\nĐổ đi thì tiếc uống vào thì say.\nBạn hiền chớ tiếc lời hay.\nChào nhau một tiếng lộc bay đầy nhà\nRảnh tương tác lại với e nha \nBay h là: 21:35:27 06/03/21 ', '06-03-2021'),
(831, 'adminhaku', '100044805396033', '1615041640', '2787918241430703', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 21:40:40 06/03/21 ', '06-03-2021'),
(832, 'adminhaku', '100044805396033', '1615041939', '447405033159957', 'Đã online xin đừng ngại tương tác\nCó duyên mai này mình hợp tác thì sao\nNgười lạ ơi! Nắm tay cùng chào nhau 1 tiếng nhé!\nBay gio là: 21:45:39 06/03/21 ', '06-03-2021'),
(833, 'adminhaku', '100044805396033', '1615042238', '2787924354763425', 'Bánh mì thì phải có bơ\nGặp nhau buôn bán làm ngơ sao đành\nEm đây bày tỏ lòng thành\nAE đọc được chớ đành làm ngơ\n ơi ghé fb e tương tác lại nha\nBayh la 21:50:38 06/03/21 ', '06-03-2021'),
(834, 'adminhaku', '100044805396033', '1615042528', '2834625910091424', 'Quý nhau cũng bởi câu chào\nGiúp nhau tương tác tiền vào như mưa\nDù là trời sáng hay trưa... ;) ;) ;)\nChào nhau 1 tiếng cùng đưa lộc về\nBayh là: 21:55:28 06/03/21 ', '06-03-2021'),
(835, 'adminhaku', '100044805396033', '1615042870', '431992661408667', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 22:01:10 06/03/21 ', '06-03-2021'),
(836, 'adminhaku', '100044805396033', '1615044811', '2921167028163596', 'Bao giờ cho chuối có cành\nCho sung có nụ cho hành có hoa\nBao giờ bạn lạ chào ta\nCho quen cho biết cho thành bạn thân\nQua tường fb e tương tác lại nha ', '06-03-2021'),
(837, 'adminhaku', '100044805396033', '1615448715', '447335399915107', 'Miếng trầu dặm chút vôi nồng\nBạn bè tương tác thắm hồng làn môi :3\nAi ơi đừng để lướt trôi :) :) :)\nChào nhau một tiếng cho đời thêm xuân\nBayh la: 14:45:15 11/03/21 ', '11-03-2021'),
(838, 'adminhaku', '100044805396033', '1615449596', '1664823167032963', 'Trên trời có triệu vì sao\nThấy nhau thì phải vẫy chào mới vui\nAi ơi nhìn thấy em rồi\nQua tường fb em chào 1 câu\nBâyh là: 14:59:56 11/03/21 ', '11-03-2021');

-- --------------------------------------------------------

--
-- Table structure for table `log_like`
--

CREATE TABLE `log_like` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `time` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_like`
--

INSERT INTO `log_like` (`id`, `username`, `uid`, `post`, `time`, `type`, `date`) VALUES
(9, 'kunlocs', '100007077545377', '411689090104381', '1611926440', 'LIKE', ''),
(10, 'kunlocs', '100007077545377', '411689090104381', '1611926440', 'LIKE', ''),
(11, 'kunlocs', '100007077545377', '411689090104381', '1611926440', 'LIKE', ''),
(12, 'kunlocs', '100007077545377', '1225461757851464', '1611926440', 'LIKE', ''),
(13, 'kunlocs', '100007077545377', '205813541281462', '1611926440', 'LIKE', ''),
(14, 'kunlocs', '100007077545377', '239510144332855', '1611926440', 'LIKE', ''),
(15, 'kunlocs', '100007077545377', '126550385990787', '1611926440', 'LIKE', ''),
(16, 'kunloc', '100007077545377', '259803718950670', '1614774221', 'LOVE', '03-03-2021');

-- --------------------------------------------------------

--
-- Table structure for table `sp_account`
--

CREATE TABLE `sp_account` (
  `id` int(11) NOT NULL,
  `cookie` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `status_cookie` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_account`
--

INSERT INTO `sp_account` (`id`, `cookie`, `name`, `uid`, `status_cookie`, `created_at`, `updated_at`) VALUES
(12, '2121212121', 'Vũ Đăng Tính', '100003973725211', 'DIE', '2021-03-13 17:00:00', '2021-03-13 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sp_data_account`
--

CREATE TABLE `sp_data_account` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_data_account`
--

INSERT INTO `sp_data_account` (`id`, `account_id`, `data`, `created_at`, `updated_at`, `type`) VALUES
(10, 12, '{\"list_uid\":\"824989697604053\",\"content\":\"YsOieSBnacahIGzDoFt0aW1lXQ==\"}', '2021-03-13 17:00:00', '2021-03-13 17:00:00', 'COMMENT_GROUP');

-- --------------------------------------------------------

--
-- Table structure for table `sp_logs_comment`
--

CREATE TABLE `sp_logs_comment` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sp_logs_comment`
--

INSERT INTO `sp_logs_comment` (`id`, `account_id`, `post_id`, `type`) VALUES
(19, 12, '2799214543514882', 'COMMENT_GROUP'),
(20, 12, '3081073418662325', 'COMMENT_GROUP'),
(21, 12, '3080970222005978', 'COMMENT_GROUP'),
(22, 12, '3080999995336334', 'COMMENT_GROUP'),
(23, 12, '3080986762004324', 'COMMENT_GROUP'),
(24, 12, '3080978245338509', 'COMMENT_GROUP'),
(25, 12, '3080976922005308', 'COMMENT_GROUP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `botcmt`
--
ALTER TABLE `botcmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `botlike`
--
ALTER TABLE `botlike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie`
--
ALTER TABLE `cookie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_cmt`
--
ALTER TABLE `log_cmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_like`
--
ALTER TABLE `log_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_account`
--
ALTER TABLE `sp_account`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sp_data_account`
--
ALTER TABLE `sp_data_account`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sp_logs_comment`
--
ALTER TABLE `sp_logs_comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `botcmt`
--
ALTER TABLE `botcmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `botlike`
--
ALTER TABLE `botlike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cookie`
--
ALTER TABLE `cookie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log_cmt`
--
ALTER TABLE `log_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=839;

--
-- AUTO_INCREMENT for table `log_like`
--
ALTER TABLE `log_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sp_account`
--
ALTER TABLE `sp_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sp_data_account`
--
ALTER TABLE `sp_data_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sp_logs_comment`
--
ALTER TABLE `sp_logs_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
