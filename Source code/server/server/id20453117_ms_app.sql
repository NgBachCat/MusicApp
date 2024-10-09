-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 04, 2024 lúc 07:38 PM
-- Phiên bản máy phục vụ: 10.5.20-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id20453117_ms_app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BIG_CONTENT`
--

CREATE TABLE `BIG_CONTENT` (
  `ID` int(11) NOT NULL,
  `NAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `BIG_CONTENT`
--

INSERT INTO `BIG_CONTENT` (`ID`, `NAME`) VALUES
(2, 'Gợi ý cho bạn'),
(3, 'Cho một ngày làm việc năng động'),
(4, 'Thịnh hành'),
(5, 'Thư giãn'),
(6, 'Hoài niệm'),
(7, 'Tập luyện'),
(8, 'Nhạc không lời'),
(9, 'Cùng Thư Giãn Với Những Bản Nhạc Jazz Không Lời'),
(10, 'Playlist Nhạc Trữ Tình Việt Nam Cho Những Buổi Sáng Mát Mẻ'),
(11, 'Tận Hưởng Khoảnh Khắc Thư Giãn Với Những Bài Hát Acoustic'),
(12, 'Khám Phá Thế Giới Âm Nhạc Với Những Ca Khúc Cổ Điển Nổi Tiếng'),
(13, 'Khám Phá Thế Giới Nhạc Hàn Quốc Với Những Ca Khúc Hay Nhất Mọi Thời Đại'),
(14, 'Cùng Nhau Hát Theo Những Ca Khúc Karaoke Sôi Động'),
(15, 'Thưởng Thức Những Bản Nhạc Ballad Tình Yêu Hay Nhất'),
(16, 'Những Bản Nhạc EDM Đỉnh Cao'),
(17, 'Playlist Nhạc Nhẹ Nhàng Cho Các Buổi Sáng'),
(18, 'Những Ca Khúc Nhạc Phim Hay Nhất Mọi Thời Đạ'),
(19, 'Playlist Nhạc Hip Hop Mỹ Cực Chất'),
(20, 'Hòa Mình Với Thiên Nhiên Với Những Bản Nhạc New Age'),
(21, 'Playlist Nhạc Country Âu Mỹ Cho Những Buổi Tiệc Ngoài Trời'),
(22, 'Những Bản Nhạc Rap Việt Hay Nhất Mọi Thời Đại'),
(23, 'Thưởng Thức Những Bản Nhạc Cổ Điển Tây Ban Nha Tuyệt Vời'),
(24, 'Ngày đáng yêu'),
(25, 'Thiên hạ đang nghe gì'),
(26, 'Top Hit vượt thời gian');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DETAIL_BIG_CONTENT`
--

CREATE TABLE `DETAIL_BIG_CONTENT` (
  `ID` int(11) NOT NULL,
  `ID_BIG_CONTENT` int(11) NOT NULL,
  `ID_PLAY_LIST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `DETAIL_BIG_CONTENT`
--

INSERT INTO `DETAIL_BIG_CONTENT` (`ID`, `ID_BIG_CONTENT`, `ID_PLAY_LIST`) VALUES
(4, 2, 13),
(5, 2, 14),
(11, 5, 13),
(14, 6, 13),
(15, 6, 15),
(16, 7, 13),
(17, 8, 14),
(19, 7, 14),
(20, 7, 15),
(21, 7, 16),
(22, 9, 18),
(23, 9, 19),
(24, 9, 23),
(25, 9, 24),
(26, 9, 27),
(27, 9, 28),
(28, 9, 29),
(31, 10, 13),
(32, 10, 14),
(33, 10, 15),
(34, 10, 16),
(35, 10, 17),
(36, 10, 18),
(37, 10, 19),
(38, 10, 20),
(39, 10, 23),
(40, 10, 24),
(41, 10, 27),
(42, 10, 28),
(43, 10, 29),
(46, 11, 13),
(47, 11, 14),
(48, 11, 15),
(49, 11, 16),
(50, 11, 17),
(51, 11, 18),
(52, 11, 19),
(53, 11, 20),
(54, 11, 23),
(55, 11, 24),
(56, 11, 25),
(57, 11, 26),
(58, 11, 27),
(59, 11, 28),
(60, 11, 29),
(61, 11, 30),
(64, 12, 13),
(65, 12, 14),
(66, 12, 15),
(67, 12, 16),
(68, 12, 17),
(69, 12, 18),
(70, 12, 19),
(71, 12, 26),
(72, 12, 27),
(73, 12, 28),
(74, 12, 29),
(75, 12, 30),
(76, 13, 14),
(77, 13, 15),
(78, 13, 16),
(79, 13, 17),
(80, 13, 18),
(81, 13, 19),
(82, 13, 26),
(83, 13, 27),
(84, 13, 28),
(85, 13, 29),
(86, 13, 30),
(87, 13, 14),
(88, 13, 15),
(89, 13, 19),
(90, 13, 26),
(91, 13, 27),
(92, 13, 28),
(93, 13, 29),
(94, 13, 30),
(95, 13, 14),
(96, 13, 15),
(97, 13, 19),
(98, 13, 22),
(99, 13, 23),
(100, 13, 24),
(101, 13, 25),
(102, 13, 26),
(103, 13, 27),
(104, 13, 28),
(105, 13, 29),
(106, 13, 30),
(110, 14, 13),
(111, 14, 14),
(112, 14, 15),
(113, 14, 19),
(114, 14, 22),
(115, 14, 23),
(116, 14, 24),
(117, 14, 25),
(118, 14, 26),
(119, 14, 27),
(120, 14, 28),
(121, 14, 29),
(122, 14, 30),
(124, 15, 19),
(125, 15, 22),
(126, 15, 23),
(127, 15, 24),
(128, 15, 25),
(129, 15, 26),
(130, 15, 27),
(131, 15, 28),
(132, 15, 29),
(133, 15, 30),
(135, 16, 19),
(136, 16, 22),
(137, 16, 23),
(138, 16, 24),
(139, 16, 25),
(140, 16, 26),
(141, 16, 27),
(142, 16, 30),
(144, 17, 19),
(145, 17, 22),
(146, 17, 23),
(147, 17, 24),
(148, 17, 25),
(149, 17, 26),
(150, 17, 27),
(151, 17, 28),
(152, 17, 29),
(153, 17, 30),
(156, 18, 13),
(157, 18, 29),
(158, 18, 30),
(161, 19, 13),
(162, 19, 22),
(163, 19, 29),
(164, 19, 30),
(167, 20, 13),
(168, 20, 14),
(169, 20, 15),
(170, 20, 16),
(171, 20, 17),
(172, 20, 18),
(173, 20, 19),
(174, 20, 20),
(175, 20, 21),
(176, 20, 22),
(177, 20, 29),
(178, 20, 30),
(181, 21, 14),
(182, 21, 15),
(183, 21, 16),
(184, 21, 17),
(185, 21, 18),
(186, 21, 19),
(187, 21, 20),
(188, 21, 21),
(189, 21, 22),
(190, 21, 27),
(191, 21, 29),
(192, 21, 30),
(193, 4, 16),
(194, 4, 17),
(195, 4, 18),
(196, 4, 19),
(197, 4, 20),
(198, 4, 21),
(199, 4, 22),
(200, 4, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DETAIL_PLAYLIST`
--

CREATE TABLE `DETAIL_PLAYLIST` (
  `ID` int(11) NOT NULL,
  `ID_PLAYLIST` int(11) NOT NULL,
  `ID_SONG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `DETAIL_PLAYLIST`
--

INSERT INTO `DETAIL_PLAYLIST` (`ID`, `ID_PLAYLIST`, `ID_SONG`) VALUES
(159, 10, 4),
(160, 10, 6),
(161, 10, 13),
(162, 10, 14),
(163, 10, 15),
(164, 10, 22),
(165, 10, 23),
(166, 10, 24),
(167, 10, 25),
(168, 10, 27),
(169, 10, 28),
(170, 11, 13),
(171, 11, 14),
(172, 11, 15),
(173, 11, 17),
(174, 11, 18),
(175, 11, 22),
(176, 11, 23),
(177, 11, 24),
(178, 11, 25),
(179, 11, 26),
(180, 11, 27),
(181, 11, 28),
(182, 11, 34),
(183, 11, 36),
(184, 11, 46),
(185, 11, 47),
(193, 12, 47),
(211, 14, 5),
(212, 14, 6),
(213, 14, 7),
(214, 14, 8),
(215, 14, 9),
(216, 14, 10),
(217, 14, 11),
(218, 14, 12),
(219, 14, 13),
(220, 14, 14),
(221, 14, 15),
(222, 14, 16),
(223, 14, 17),
(224, 14, 32),
(225, 14, 33),
(226, 14, 34),
(227, 14, 35),
(228, 14, 36),
(229, 14, 46),
(230, 14, 47),
(231, 15, 5),
(232, 15, 6),
(233, 15, 7),
(234, 15, 8),
(235, 15, 9),
(236, 15, 10),
(237, 15, 11),
(238, 15, 12),
(239, 15, 13),
(240, 15, 14),
(241, 15, 15),
(242, 15, 16),
(243, 15, 17),
(244, 15, 26),
(245, 15, 27),
(246, 15, 28),
(247, 15, 29),
(248, 15, 32),
(249, 15, 33),
(250, 15, 34),
(251, 15, 35),
(252, 15, 36),
(253, 15, 46),
(254, 15, 47),
(255, 16, 5),
(256, 16, 6),
(257, 16, 7),
(258, 16, 8),
(259, 16, 9),
(260, 16, 10),
(261, 16, 11),
(262, 16, 12),
(263, 16, 13),
(264, 16, 14),
(265, 16, 15),
(266, 16, 16),
(267, 16, 17),
(268, 16, 26),
(269, 16, 27),
(270, 16, 28),
(271, 16, 29),
(272, 16, 30),
(273, 16, 31),
(274, 16, 32),
(275, 16, 33),
(276, 16, 34),
(277, 16, 35),
(278, 16, 36),
(279, 16, 46),
(280, 16, 47),
(281, 17, 5),
(282, 17, 6),
(283, 17, 7),
(284, 17, 8),
(285, 17, 9),
(286, 17, 10),
(287, 17, 11),
(288, 17, 12),
(289, 17, 13),
(290, 17, 14),
(291, 17, 15),
(292, 17, 16),
(293, 17, 17),
(294, 17, 26),
(295, 17, 27),
(296, 17, 28),
(297, 17, 29),
(298, 17, 30),
(299, 17, 31),
(300, 17, 32),
(301, 17, 33),
(302, 17, 34),
(303, 17, 35),
(304, 17, 36),
(305, 17, 37),
(306, 17, 38),
(307, 17, 39),
(308, 17, 40),
(309, 17, 46),
(310, 17, 47),
(311, 18, 5),
(312, 18, 6),
(313, 18, 7),
(314, 18, 8),
(315, 18, 9),
(316, 18, 10),
(317, 18, 11),
(318, 18, 12),
(319, 18, 13),
(320, 18, 14),
(321, 18, 15),
(322, 18, 16),
(323, 18, 17),
(324, 18, 25),
(325, 18, 26),
(326, 18, 27),
(327, 18, 28),
(328, 18, 29),
(329, 18, 30),
(330, 18, 31),
(331, 18, 32),
(332, 18, 33),
(333, 18, 34),
(334, 18, 35),
(335, 18, 36),
(336, 18, 37),
(337, 18, 38),
(338, 18, 39),
(339, 18, 40),
(340, 18, 46),
(341, 18, 47),
(342, 13, 22),
(343, 13, 36),
(344, 13, 41),
(345, 13, 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DETAIL_USER_PLAYLIST`
--

CREATE TABLE `DETAIL_USER_PLAYLIST` (
  `ID` int(11) NOT NULL,
  `PLAYLIST_ID` int(11) NOT NULL,
  `SONG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `DETAIL_USER_PLAYLIST`
--

INSERT INTO `DETAIL_USER_PLAYLIST` (`ID`, `PLAYLIST_ID`, `SONG_ID`) VALUES
(4, 19, 9),
(8, 19, 22),
(9, 19, 5),
(10, 19, 10),
(11, 20, 22),
(12, 20, 36),
(13, 21, 5),
(14, 24, 36),
(15, 21, 22),
(16, 21, 46),
(17, 22, 38);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PLAY_LIST`
--

CREATE TABLE `PLAY_LIST` (
  `ID` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `URL_IMG` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `PLAY_LIST`
--

INSERT INTO `PLAY_LIST` (`ID`, `NAME`, `URL_IMG`) VALUES
(10, 'RPT on FIRE!!', 'https://media.vov.vn/sites/default/files/styles/large/public/2021-09/viechannel_cypher_call_photo1.png.jpg'),
(11, 'Tuyển tập nhạc của Sơn Tùng MT-P', 'https://i.scdn.co/image/ab67616d0000b273a1bc26cdd8eecd89da3adc39'),
(12, 'Chill cùng Lofi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUL-TalT_IAAqDbETRBSiD6MvhDe_SNJ5pXw&s'),
(13, 'Rap Life DLOW', 'https://cdn.xaluannews.com/images/news/Image/2022/06/24/362b518b445ebc.img.jpg'),
(14, 'Nhạc buồn cho một ngày mệt mỏi', 'https://yt3.googleusercontent.com/ytc/AL5GRJXN-FUsnay3iaf5qJt8kUYi_J2lSHjryuMLV2Ze=s900-c-k-c0x00ffffff-no-rj'),
(15, 'Tuyển tập nhạc của HieuThuHai', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw4bLj7D0RzG8hDQgB-DUPeYdnrqSvJ_5pbg&s'),
(16, 'Mr Đàm Sâu Lắng', 'https://imagev3.vietnamplus.vn/w1000/Uploaded/2024/ymtih/2016_08_30/DVHCustom.jpg.webp'),
(17, 'Nhạc rap tháng 8', 'https://images2.thanhnien.vn/zoom/700_438/Uploaded/tienptc/2020_11_23/de-choat-rap-fan-thang-8-16061159765151190320830_XQYG.jpg'),
(18, 'Rap tháng 12 ', 'https://images2.thanhnien.vn/uploaded/tienptc/2020_11_23/de-choat2_KZSM.jpg?width=500https://images.spiderum.com/sp-images/508f80a04ec011e9a1b49554aab743f9.jpg'),
(19, 'Những bản nhạc trữ tình bolero Việt', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk54s0GwZwfKpJ0mCe-HAfOzyfXCny1_gjtw&usqp=CAU'),
(20, 'Những bản nhạc rap Việt đình đám', 'https://cly.1cdn.vn/2022/03/02/rap2.jpg'),
(21, 'Buổi sáng Chill', 'https://i.ytimg.com/vi/K2VyDjO9w9I/maxresdefault.jpghttps://cdn.tgdd.vn/Files/2021/09/27/1386105/11-ban-nhac-edm-giup-tao-dong-luc-manh-me-cho-viec-tap-luyen-tai-nha-202109280002110993.jpg'),
(22, 'Nhạc Pop', 'https://ncstore.net/wp-content/uploads/2020/06/nhac-pop-la-gi.jpg'),
(23, 'Piano phổ biến', 'https://muabanpiano.vn/wp-content/uploads/2016/11/2016-11-24_003614.png'),
(24, 'Rock hiện đại', 'https://images.spiderum.com/sp-images/508f80a04ec011e9a1b49554aab743f9.jpg'),
(25, 'Nhạc Hip Hop Lofi', 'https://thuamviet.com/photos/BLOG-TUYEN%20DUNG/CAM%20NANG/CN%20Thu%20Am%20Ca%20Khuc/Nhac%20hiphop/nhac%20hiphop.jpg'),
(26, 'Folk rock', 'https://images.spiderum.com/sp-images/508f80a04ec011e9a1b49554aab743f9.jpg'),
(27, 'Nhịp đập Hip Hop', 'https://play-lh.googleusercontent.com/cYsJMbPPh9MMwYFEBep61UgDGlW9JzqrSlodmgsB9de2uts1fBjvSZBwIc7S7bHr1g'),
(28, 'Động lực tập luyện', 'https://bloganchoi.com/wp-content/uploads/2021/02/cau-noi-hay-8-2-696x522.jpg'),
(29, 'EDM tập luyện', 'https://bomtech.vn/wp-content/uploads/2023/09/nhac-EDM-la-gi.jpg'),
(30, 'Đi bộ như một Badass', 'https://thuthuatnhanh.com/wp-content/uploads/2019/09/Badass-la-gi-580x580.jpg'),
(31, 'Cả ngày Nặng nề', 'https://media.istockphoto.com/id/672011900/vi/vec-to/poster-c%E1%BB%A7a-h%E1%BA%A1nh-ph%C3%BAc-b%C6%A1-t%E1%BA%ADp-th%E1%BB%83-d%E1%BB%A5c-qu%E1%BA%A3ng-c%C3%A1o-n%E1%BA%B7ng-n%C3%A2ng-%C3%A1p-ph%C3%ADch-%C4%91%E1%BB%99ng-l%E1%BB%B1c-l%E1%BB%91i-s%E1%BB%91ng-l%C3%A0nh-m%E1%BA%A1nh.jpg?s=1024x1024&w=is&k=20&c=2amBbx5n_qn3fG7fKl0wYAheWutxYE0rSzCRiZTBgvw='),
(32, 'Viral Hits', 'https://i.scdn.co/image/ab67706f00000002d971c6c23114fc7636dc23ebhttps://cdn.tgdd.vn/Files/2021/09/27/1386105/11-ban-nhac-edm-giup-tao-dong-luc-manh-me-cho-viec-tap-luyen-tai-nha-202109280002110993.jpg'),
(33, 'Bài hát Indie hay nhất', 'https://cdn.tgdd.vn/Files/2021/09/27/1386105/11-ban-nhac-edm-giup-tao-dong-luc-manh-me-cho-viec-tap-luyen-tai-nha-202109280002110993.jpg'),
(34, 'Nhịp đập thay thế', 'https://vinmec-prod.s3.amazonaws.com/images/20190404_090036_798062_tim.max-1800x1800.jpg'),
(35, 'Jazz Vibes', 'https://i.scdn.co/image/ab67616d0000b2730668bc59ade64a2eab7e0025'),
(36, 'Mix nhạc trên ô tô', 'https://carmall.com.vn/wp-content/uploads/2022/11/do-am-thanh-xe-hoi-2.jpg'),
(37, 'Học tập & Thư giãn', 'https://i.pinimg.com/564x/58/9a/4f/589a4f0a3b3fd5fff4b14c6222f4c05c.jpg'),
(38, 'Nhạc ngủ', 'https://i.scdn.co/image/ab67616d0000b27371adaaadae3096092cab8e23'),
(39, 'Chill Rap Vibes', 'https://i.scdn.co/image/ab67706c0000da84845a548231d708aa2ca50abf'),
(40, 'Mùa hè yên bình', 'https://cdn.sforum.vn/sforum/wp-content/uploads/2022/07/1.jpg'),
(41, 'Broadway Hits', 'https://i.scdn.co/image/ab67616d0000b2736b6f06633c62899e63d14612'),
(42, 'Khiêu vũ Chill', 'https://avatar-ex-swe.nixcdn.com/playlist/2017/11/26/c/b/2/f/1511709933730_500.jpg'),
(43, ' Tiệc bể bơi', 'https://hanoiskyteam.com/wp-content/uploads/2018/08/Pool-Party-01.jpg'),
(44, 'Bài hát du lịch', 'https://wiki-travel.com.vn/uploads/picture/hieuhieu-180911030926-viet-nam-nhung-chuyen-di.jpg'),
(45, 'Nhạc Cho Một Ngày Mưa', 'https://thenewsmexico.com/wp-content/uploads/2019/05/image1-10.jpg'),
(46, 'Cozy Blend', 'https://i.scdn.co/image/ab67706f000000022882fd7da8b1d327d94d98a4'),
(47, 'Vibes chơi game', 'https://store-images.s-microsoft.com/image/apps.20314.13664373088751860.c61e8294-7c64-4328-9910-f2b28f636c3f.b719df31-8a47-44fa-b853-2a5c8905d213?q=90&w=480&h=270'),
(48, 'Vibes phòng tắm', 'https://img.homedy.com/store/images/2020/05/26/thiet-ke-phong-tam-dep-6-637261093318135861.jpg'),
(49, 'Thư giãn buổi tối Chủ nhật', 'https://i.ytimg.com/vi/KJM5PMKKoXY/maxresdefault.jpg'),
(50, 'Chill Guitar', 'https://i1.sndcdn.com/artworks-000594774387-7nlfyr-t500x500.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SINGER`
--

CREATE TABLE `SINGER` (
  `ID` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `URL_IMG` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `SINGER`
--

INSERT INTO `SINGER` (`ID`, `NAME`, `URL_IMG`) VALUES
(3, 'RPT Orijin', 'https://hosonhanvat.net/wp-content/uploads/2021/06/117142827_2694611527493985_3806838871139669090_n.jpg'),
(4, 'RPT MCK', 'https://35express.org/wp-content/uploads/2021/04/RPT-MCK-la-ai-35express-1.jpg'),
(68, 'Lynk Lee', 'https://icdn.dantri.com.vn/thumb_w/680/2022/12/25/lynklee1-1671953871200.jpeg'),
(69, 'BinZ', 'https://lamsao.vn/wp-content/uploads/2020/11/word-image-28.png'),
(70, 'Lý Hải', 'https://static2.yan.vn/YanNews/2167221/201911/ly-hai-la-ai-tieu-su-su-nghiep-doi-tu-cua-ly-hai-3bc9d19b.jpg'),
(71, 'Lê Bảo Bình', 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2018/01/24/a/3/d/e/1516765405718_600.jpg'),
(72, 'Độ Mixi', 'https://mcdn.coolmate.me/image/October2021/do-mixi-1_73.jpg'),
(73, 'Amee', 'https://kenh14cdn.com/thumb_w/640/203336854389633024/2023/3/8/photo1678264579230-16782645810121580509255.jpg'),
(74, 'Tuấn Hưng', 'https://nld.mediacdn.vn/291774122806476800/2021/7/26/tuan-hung-khuyen-ca-si-tre-khong-nen-lam-dung-cover-1-1627263641056652420635.jpg'),
(75, 'Khởi My', 'https://kenh14cdn.com/203336854389633024/2022/11/2/photo-7-1667367099959780054379.png'),
(76, 'Hà Anh Tuấn', 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2018/06/27/e/8/8/5/1530074198530_600.jpg'),
(77, 'Chi Dân', 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/11/14/f/5/c/0/1573701246190_600.jpg'),
(78, 'Đạt G', 'https://i1-ngoisao.vnecdn.net/2022/08/03/DAT-G-10.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=EYNk8jAnUWmnOT8v84EBDQ'),
(79, 'Noo Phước Thịnh', 'https://trixie.com.vn/media/images/article/59037126/noo.jpg'),
(80, 'Soobin Hoàng Sơn', 'https://vnn-imgs-f.vgcloud.vn/2019/02/22/09/img-3722.jpg'),
(81, 'Sơn Tùng M-TP', 'https://yt3.googleusercontent.com/oN0p3-PD3HUzn2KbMm4fVhvRrKtJhodGlwocI184BBSpybcQIphSeh3Z0i7WBgTq7e12yKxb=s900-c-k-c0x00ffffff-no-rj'),
(82, 'Mono', 'data:image/jpeg;base64,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'),
(83, 'Phương Mỹ Chi', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/3/4/885673/Phuong-My-Chi-3-01.jpg'),
(84, 'Đen Vâu', 'https://nld.mediacdn.vn/291774122806476800/2022/6/11/dsc07770-1654923515827557389390.jpg'),
(85, 'Suboi', 'https://i1-giaitri.vnecdn.net/2020/09/14/suboi-3587-1600075397.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=PDLIyv6wR5IZePhyp_woXw'),
(86, 'Karik', 'https://yt3.googleusercontent.com/qGGv8KxYLZiNHINl9jp2KZhQNAKOOE0zEG2JrK9pZSCPvibB3y4NoXrNULmQy-tOE5DFBFegzcI=s900-c-k-c0x00ffffff-no-rj'),
(87, 'Rhymastic', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/10/2/959628/Vong_Co_3.jpg'),
(88, 'Bùi Anh Tuấn', 'https://i1-giaitri.vnecdn.net/2021/12/08/bu-i-anh-tua-n-bie-n-ho-a-phong-ca-chbia-1638969221-1638969282.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=j_NES9-Z0MxU0645cpUkyg'),
(89, 'Hiền Hồ', 'https://icdn.24h.com.vn/upload/1-2022/images/2022-03-21/hienho40-1647833459-43-width650height812.jpg'),
(90, 'Tóc Tiên', 'https://kenh14cdn.com/203336854389633024/2021/1/18/toc-tien-01-1610934081103958937260.jpg'),
(91, 'Phúc Du', 'https://static2.yan.vn/YanNews/2167221/202006/phuc-du-la-ai-tieu-su-su-nghiep-doi-tu-cua-nam-rapper-040f0e64.jpg'),
(92, 'Justatee', 'https://upload.wikimedia.org/wikipedia/commons/e/e8/Justatee_RapViet.jpg'),
(93, 'Vũ', 'https://media-cdn-v2.laodong.vn/storage/newsportal/2021/11/26/977990/254291766_4331321781.jpg'),
(94, 'Đức Phúc', 'https://yt3.googleusercontent.com/uNtMsEqpSKHEdN7PXmGL5BO1FlYXtv10Rln9XO7bEwKkH86Jd4djv6s5JeWT9GYbpnLZU0AB=s900-c-k-c0x00ffffff-no-rj'),
(95, 'Vanh Leg', 'https://i-amp.ex-cdn.com/mgn.vn/files/news/2022/08/17/vanh-leg-bat-ngo-lo-dien-voi-ngoai-hinh-la-cdm-mong-moi-tho-lan-som-ngoi-len-bo-215927.jpg'),
(96, 'Ngô Kiến Huy', 'https://images2.thanhnien.vn/Uploaded/thanhlongn/2023_01_15/ngo-kien-huy-7-1688.jpeg'),
(97, 'Phương Ly', 'https://anhgaisexy.com/wp-content/uploads/2022/08/hinh-anh-phuong-ly-xinh-dep-nhat.jpg'),
(98, 'Trúc Nhân', 'https://yt3.googleusercontent.com/M4--9r2LA3sZ00qLEP7aO5KIcaOWvv5q1eK8vtt5B6oKTrO7V7iqCXeUkhp7F0-b-GGjxfRRsg=s900-c-k-c0x00ffffff-no-rj'),
(99, 'Jack', 'https://static-images.vnncdn.net/files/publish/2023/1/15/dvfevfv-841.jpg'),
(100, 'K-ICM', 'https://images2.thanhnien.vn/Uploaded/tinnt/2022_05_25/kicm-eedu-3276.jpg'),
(101, 'Mr.Siro', 'https://yt3.googleusercontent.com/N1BnO1yJKeDJ7QopohMVJwSh3WgM8TtX1FbfzZglLNhleuwoziIpzmAe3zxb5NP9qybELLVq=s900-c-k-c0x00ffffff-no-rj'),
(102, 'QNT', 'https://nguoinoitieng.tv/images/nnt/102/0/bfzq.jpg'),
(103, 'OnlyC', 'https://vnn-imgs-f.vgcloud.vn/2018/07/13/15/bi-to-an-tien-ban-quyen-only-c-quyet-kien-den-cung-8.jpg'),
(104, 'Bùi Trường Linh', 'https://yt3.googleusercontent.com/zt4Dyz_EwKNW53v-ZjGjke07h-4usBTh-DxV4eOEFZZqFxD7nd3VlbaAu5iRN5xJlZWsssw2nA=s900-c-k-c0x00ffffff-no-rj'),
(105, 'Uyên Linh', 'https://yt3.googleusercontent.com/ytc/AIdro_mHLi49PMNxdBG5FBfphpXi_uHZSN6JUQF14JWS6HslWC8=s160-c-k-c0x00ffffff-no-rj');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SONG`
--

CREATE TABLE `SONG` (
  `ID` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `URL_IMG` text NOT NULL,
  `SINGER_ID` int(11) NOT NULL,
  `GENRE` text NOT NULL,
  `SONG_URL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `SONG`
--

INSERT INTO `SONG` (`ID`, `NAME`, `URL_IMG`, `SINGER_ID`, `GENRE`, `SONG_URL`) VALUES
(4, 'Chỉ một đêm nữa thôi', 'https://images.genius.com/bc2635afb2e35a83f42c46075f99f8e5.1000x563x1.jpg', 4, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/chi-mot-dem-nua-thoi-mck.mp3?alt=media&token=7cafbbf2-f194-440c-9534-4581788b79c8\r\n'),
(5, 'Buồn Thì Cứ Khóc Đi', 'https://i1.sndcdn.com/artworks-000654140140-ak64cl-t500x500.jpg', 68, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/BuonThiCuKhocDi-LynkLee-6180021.mp3?alt=media&token=9608d67d-d224-44c3-b09e-43da77ba32b2'),
(6, 'Tuổi Học Trò', 'https://i.ytimg.com/vi/MhIJu6qtxoE/maxresdefault.jpg', 68, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/TuoiHocTro-TamDoan_ryvm.mp3?alt=media&token=7db0ca54-e42c-4359-9454-fb1e0ab90e2f'),
(7, 'Có không giữ mất đừng tìm', 'https://vtv1.mediacdn.vn/thumb_w/650/2022/5/13/28064595050076275326236031124536647532604161n-16524127952251051157607-crop-16524128072171690937624.jpg', 98, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Tr%C3%BAc%20Nh%C3%A2n%20%20C%C3%B3%20Kh%C3%B4ng%20Gi%E1%BB%AF%20M%E1%BA%A5t%20%C4%90%E1%BB%ABng%20T%C3%ACm%20%20Official%20MV%20%20special%20guest%20Miu%20L%C3%AA.mp3?alt=media&token=973d6a95-0f9c-4243-842f-83855cfa3d4e'),
(8, 'tinhiulagi?', 'https://i.ytimg.com/vi/gPBYKyIrTf8/maxresdefault.jpg', 3, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20tinhiulagi%20%20RPT%20Orijinn%20%20x%20bachyyy%20official%20visualizer.mp3?alt=media&token=7c7ca7c9-194c-406b-914e-7fa3b471796c'),
(9, 'Luôn yêu đời ft. Cheng', 'https://gocdoday.com/wp-content/uploads/2023/02/loi-bai-hat-Luon-yeu-doi.jpg', 84, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20%C4%90en%20%20Lu%C3%B4n%20y%C3%AAu%20%C4%91%E1%BB%9Di%20ft%20Cheng%20MV.mp3?alt=media&token=95810d2a-16ea-4ca3-856e-8bc526fbfd38'),
(10, 'một triệu like', 'https://i.ytimg.com/vi/oigiXW6XyCQ/maxresdefault.jpg', 84, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20%C4%90en%20%20m%E1%BB%99t%20tri%E1%BB%87u%20like%20ft%20Th%C3%A0nh%20%C4%90%E1%BB%93ng%20MV.mp3?alt=media&token=6574b54e-f68e-4720-9050-ac19f1305e8e'),
(11, 'LẠC TRÔI', 'https://upload.wikimedia.org/wikipedia/vi/5/5d/Lac_troi_single_sontungmtp.jpg', 81, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20L%E1%BA%A0C%20TR%C3%94I%20%20OFFICIAL%20MUSIC%20VIDEO%20%20S%C6%A0N%20T%C3%99NG%20MTP.mp3?alt=media&token=6d8a5fd7-05e4-4fb7-a2ca-583b676e591b'),
(12, 'HỒNG NHAN', 'https://upload.wikimedia.org/wikipedia/vi/9/94/Jack_-_H%E1%BB%93ng_nhan.png', 99, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20JACK%20%20H%E1%BB%92NG%20NHAN%20OFFICIAL%20MV%20%20G5R.mp3?alt=media&token=3cd8cdbc-6490-47c9-af14-12079a935670'),
(13, 'Khu Tao Song - Karik ft Wowy', 'https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/covers/c/3/c35a7a9a40ae783ccdb8ecfe5e3f7ec8_1322163739.jpg', 86, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Khu%20Tao%20Song%20WowyKarik%20OFFICIAL%20VIDEO%20HD%20SouthGanz%202010.mp3?alt=media&token=520ce8b1-dec6-4066-af9a-1e629bf36768'),
(14, 'Buồn Thì Cứ Khóc Đi', 'https://i1.sndcdn.com/artworks-000654140140-ak64cl-t500x500.jpg', 68, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Bu%E1%BB%93n%20Th%C3%AC%20C%E1%BB%A9%20Kh%C3%B3c%20%C4%90i%20%20Lynk%20Lee%20%20Official%20MV.mp3?alt=media&token=6639e48e-a19d-434b-b2bd-12ebfb2705c3'),
(15, 'Có Không Giữ Mất Đừng Tìm', 'https://i.ytimg.com/vi/kdVeYgGtO3Q/maxresdefault.jpg', 98, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Tr%C3%BAc%20Nh%C3%A2n%20%20C%C3%B3%20Kh%C3%B4ng%20Gi%E1%BB%AF%20M%E1%BA%A5t%20%C4%90%E1%BB%ABng%20T%C3%ACm%20%20Official%20MV%20%20special%20guest%20Miu%20L%C3%AA.mp3?alt=media&token=973d6a95-0f9c-4243-842f-83855cfa3d4e'),
(16, 'Anh Mới Chính Là Người Em Yêu', 'https://photo-playlist-zmp3.zadn.vn/s3/v2/background-playlist?src=HavtoclCgWuG7IRoYake2Z8QfTD9tIaFULZidHgH8K8r7_s1GyPy0JKVue1UbNvJCqosXrgM85Hd6x_SMC4fMZ8SlzrUad9SCIRjtrx-Ubes8EJJGQ4w13fcjjqGmdO1C7Entmww9GasFVZSG_GY1MvpwPSDkWP9F77b6Du18eZ4Wa-Lym71QMbAJvTNPr76jH6MLgcN6BypriCjVG&cv=1&size=thumb_240_240', 70, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Anh%20M%E1%BB%9Bi%20Ch%C3%ADnh%20L%C3%A0%20Ng%C6%B0%E1%BB%9Di%20Em%20Drill%20%20Prod%20Zenkey.mp3?alt=media&token=2d7d3bf7-5f71-48c4-bcfd-dce083a997db'),
(17, 'Thích thì đến', 'https://i.ytimg.com/vi/j4Jj29mUYS8/maxresdefault.jpg', 71, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20TH%C3%8DCH%20TH%C3%8C%20%C4%90%E1%BA%BEN%20%20L%C3%8A%20B%E1%BA%A2O%20B%C3%8CNH%20%20OFFICIAL%20MUSIC%20VIDEO.mp3?alt=media&token=c6044c70-549c-4cc3-ac6e-ed58e6568faf'),
(18, 'Stream đến bao giờ', 'https://i.ytimg.com/vi/jk7LbXUpmz0/maxresdefault.jpg', 72, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20STREAM%20%C4%90%E1%BA%BEN%20BAO%20GI%E1%BB%9C%20%20%C4%90%E1%BB%98%20MIXI%20ft%20B%E1%BA%A0N%20S%C3%81NG%20T%C3%81C%20%20OFFICIAL%20MUSIC%20VIDEO.mp3?alt=media&token=c781857f-96dd-4e84-b68c-4aa8f0848330'),
(19, 'Trời giấu trời mang đi', 'https://i.ytimg.com/vi/YXkp77tR9vw/maxresdefault.jpg', 73, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20TR%E1%BB%9CI%20GI%E1%BA%A4U%20TR%E1%BB%9CI%20MANG%20%C4%90I%20%20AMEE%20x%20VIRUSS%20%20Lyricsmeiimeiii.mp3?alt=media&token=fd890533-2d01-434c-ab1a-904a352501ea'),
(20, 'Tìm lại bầu trời', 'https://i.ytimg.com/vi/Q8kohtX2PC4/maxresdefault.jpg', 74, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20T%C3%ACm%20L%E1%BA%A1i%20B%E1%BA%A7u%20Tr%E1%BB%9Di%20%20Tu%E1%BA%A5n%20H%C6%B0ng.mp3?alt=media&token=2796e539-1ef6-4ffb-b153-75cb6bf25538'),
(21, 'Người yêu cũ', 'https://i.ytimg.com/vi/NVDncm4lRt0/maxresdefault.jpg', 75, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Ng%C6%B0%E1%BB%9Di%20Y%C3%AAu%20C%C5%A9%20%20Kh%E1%BB%9Fi%20My.mp3?alt=media&token=073ffcee-9f12-4f92-8855-f38c743a1a25'),
(22, 'Tháng tư là lời nói dối của em', 'https://i.ytimg.com/vi/UCXao7aTDQM/maxresdefault.jpg', 76, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20H%C3%A0%20Anh%20Tu%E1%BA%A5n%20%20Th%C3%A1ng%20T%C6%B0%20L%C3%A0%20L%E1%BB%9Di%20N%C3%B3i%20D%E1%BB%91i%20C%E1%BB%A7a%20Em%20Official%20MV.mp3?alt=media&token=2a49acd7-b2bf-4912-a85a-ea66f01839f9'),
(23, 'Người tôi yêu', 'https://i.scdn.co/image/ab67616d0000b27368b98dc258d0dc2862c1e509', 77, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(24, 'Khó vẽ nụ cười', 'https://i.ytimg.com/vi/z3qOnZIqRVs/maxresdefault.jpg', 78, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(25, 'Mãi Mãi Bên Nhau', 'https://i.ytimg.com/vi/R_mhhJNGewg/sddefault.jpg', 79, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(26, 'Phía Sau Một Cô Gái', 'https://i.ytimg.com/vi/vCIc1g_4JWM/maxresdefault.jpg', 80, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(27, 'ĐỪNG LÀM TRÁI TIM ANH ĐAU', 'https://i.scdn.co/image/ab67616d0000b273a1bc26cdd8eecd89da3adc39', 81, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20S%C6%A0N%20T%C3%99NG%20MTP%20%20%C4%90%E1%BB%AANG%20L%C3%80M%20TR%C3%81I%20TIM%20ANH%20%C4%90AU%20%20OFFICIAL%20MUSIC%20VIDEO.mp3?alt=media&token=f53cb4e2-469e-4553-96e9-310865c4280c'),
(28, 'Nơi này có anh', 'https://i.ytimg.com/vi/FN7ALfpGxiI/maxresdefault.jpg', 81, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20N%C6%A0I%20N%C3%80Y%20C%C3%93%20ANH%20%20OFFICIAL%20MUSIC%20VIDEO%20%20S%C6%A0N%20T%C3%99NG%20MTP.mp3?alt=media&token=2d50a133-0829-4593-b332-122284a7e32a'),
(29, 'Anh không thể', 'https://i.ytimg.com/vi/j91oSWmr1f4/maxresdefault.jpg', 82, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(30, 'Liên hoa', 'https://i.ytimg.com/vi/OrS8e2CZxkQ/maxresdefault.jpg', 83, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(31, 'Lối Nhỏ', 'https://loretofest.org/cdn/files/loi-bai-hat-loi-nho-lyric-loi-nho---den-vau-phuong-anh-dao.jpg', 84, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(32, 'Công', 'https://i.ytimg.com/vi/FBwwkUc1V1Q/maxresdefault.jpg', 85, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(33, 'Chưa từng vì nhau', 'https://photo-playlist-zmp3.zmdcdn.me/v2/background-playlist?src=HavtoclCgWuG7IRrA8JXBbrFRyZ13U4ey0VqFSUBUjdtetu7Z6JosxpXDqdVAFgMyAOc2PbYlPRofYK9ctYvZ_MhSbwKURZRgwSaN9Hqx8gi_ISFa2wxtgpyB5_RVVA8eBf-KOeUlesghtbJb6RjXQpXC53PAEg9zAyX6vTcpCC8FGDJ1JSMI3AxcAwe_1PGcNRDmEZE2XxMIS678dq&cv=1&size=thumb/240_240', 86, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(34, 'Nến và hoa', 'https://i.ytimg.com/vi/D164TFHeOcI/maxresdefault.jpg', 87, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(35, 'Nơi tình yêu kết thúc', 'https://i.ytimg.com/vi/N1ADg9fMyQo/maxresdefault.jpg', 88, 'Nhạc ballad', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(36, 'Gặp nhưng không ở lại', 'https://i.ytimg.com/vi/5afz2COusA0/maxresdefault.jpg', 89, 'Nhạc ballad', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(37, 'Like this like that', 'https://i1.sndcdn.com/artworks-VYd0vf2BDPWZkD90-urMRJA-t500x500.jpg', 90, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(38, 'Anh không thề gì đâu anh làm', 'https://zmp3-photo-fbcrawler.zadn.vn/thumb_video/c/d/0/2/cd02ccc3eea958fe1319a3ab1dea96dd.jpg', 91, 'Nhạc ballad', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(39, 'Làm gì phải hốt', 'https://i.ytimg.com/vi/1seYuaWehxY/maxresdefault.jpg', 92, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(40, 'Happy for you', 'https://i.ytimg.com/vi/mf4upAPwHEo/maxresdefault.jpg', 93, 'Nhạc ballad', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(41, 'Hơn cả yêu', 'https://zmp3-photo-fbcrawler.zadn.vn/thumb_video/1/b/8/0/1b80746f52fe83f810e49a8704620f81.jpg', 94, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(42, 'Học viện youtube', 'https://i.ytimg.com/vi/-MwvwdM9pGQ/maxresdefault.jpg', 95, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(43, '72 phép thần thông', 'https://i.ytimg.com/vi/p-ZbElyfsMs/maxresdefault.jpg', 96, 'Nhạc rock', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(44, 'Thằng điên', 'https://i.ytimg.com/vi/HXkh7EOqcQ4/maxresdefault.jpg', 97, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(45, 'Có không giữ mất đừng tìm', 'https://i.ytimg.com/vi/kdVeYgGtO3Q/maxresdefault.jpg', 98, 'Nhạc ballad', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(46, 'Cuối cùng thì', 'https://i.ytimg.com/vi/red9YvYlPWg/maxresdefault.jpg', 99, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(47, 'Sóng gió', 'https://i.ytimg.com/vi/veLU8xeHrsc/maxresdefault.jpg', 100, 'Nhạc trẻ', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(48, 'Càng níu giữ càng dễ mất', 'https://i.ytimg.com/vi/aOXvyd9v1cg/maxresdefault.jpg', 101, 'Nhạc ballad', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(49, 'aaa', 'http://127.0.0.1:5500/html/songmanager.html?songName=&songUrlImg=&singer=3', 3, 'Nhạc rap', 'https://firebasestorage.googleapis.com/v0/b/quizzzzzz-e83a8.appspot.com/o/sao_cha_ko.mp3?alt=media&token=8b9e2248-6fd0-4fe3-a29b-6ba867b2c9b5'),
(51, 'ko sau', 'https://i.ytimg.com/vi/D164TFHeOcI/maxresdefault.jpg', 4, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/nhac-ecb1f.appspot.com/o/1716962829709.mp3?alt=media&token=a84b2eea-b26e-4809-8ec5-59bf1e8f5faf'),
(52, 'Khong the say ', 'https://cdn.wccftech.com/wp-content/uploads/2015/07/Apple-Music-icon.jpg', 4, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/nhac-ecb1f.appspot.com/o/1716962991821.mp3?alt=media&token=de48d883-0f7c-461b-a30c-a4ece1bce20f'),
(53, 'Song cho Het doi thanh xuan 4', 'https://cdn.wccftech.com/wp-content/uploads/2015/07/Apple-Music-icon.jpg', 4, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/nhac-ecb1f.appspot.com/o/1716963025064.mp3?alt=media&token=e3bd8b7a-dd71-458e-b4f7-b49da8e5bff8'),
(54, 'Nhac moi 2022', 'https://i.ytimg.com/vi/D164TFHeOcI/maxresdefault.jpg', 71, 'Khác', 'https://firebasestorage.googleapis.com/v0/b/nhac-ecb1f.appspot.com/o/1718814127023.mp3?alt=media&token=fc904166-4c7c-487f-bcdf-d30c29fa0f4b'),
(55, 'CÓ CHẮC YÊU LÀ ĐÂY', 'https://upload.wikimedia.org/wikipedia/vi/3/32/S%C6%A1n_T%C3%B9ng_M-TP_-_C%C3%B3_ch%E1%BA%AFc_y%C3%AAu_l%C3%A0_%C4%91%C3%A2y.jpg', 81, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20S%C6%A0N%20T%C3%99NG%20MTP%20%20C%C3%93%20CH%E1%BA%AEC%20Y%C3%8AU%20L%C3%80%20%C4%90%C3%82Y%20%20OFFICIAL%20MUSIC%20VIDEO.mp3?alt=media&token=64692ea4-b40e-43d5-b7ac-76c77ecdeafd'),
(56, 'NẮNG ẤM XA DẦN (ONIONN REMIX)', 'https://avatar-ex-swe.nixcdn.com/song/2019/04/24/5/e/f/7/1556071287405_640.jpg', 81, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20N%E1%BA%AENG%20%E1%BA%A4M%20XA%20D%E1%BA%A6N%20ONIONN%20REMIX%20%20S%C6%A0N%20T%C3%99NG%20MTP%20%20Official%20Music.mp3?alt=media&token=b95dab16-f880-4edc-81f9-c67f2e37f372'),
(57, 'Chạy Ngay Đi', 'https://cdn.tuoitre.vn/thumb_w/640/2018/4/30/photo-2-15250509670232086189593.jpg', 81, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20CH%E1%BA%A0Y%20NGAY%20%C4%90I%20%20RUN%20NOW%20%20S%C6%A0N%20T%C3%99NG%20MTP%20%20Official%20Music%20Video.mp3?alt=media&token=a5490547-3af1-4c4c-b414-079aff03372c'),
(58, 'Hãy trao cho Anh', 'https://cdn.tgdd.vn/Files/2019/07/01/1176713/mv-hay-trao-cho-anh-lap-ky-luc-dau-tien-ngay-khi-vua-ra-mat-eddc2837_800x800.jpg', 81, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20S%C6%A0N%20T%C3%99NG%20MTP%20%20H%C3%83Y%20TRAO%20CHO%20ANH%20ft%20Snoop%20Dogg%20%20Official%20MV.mp3?alt=media&token=4e2cf1ff-cecd-490f-8e63-f9f245c2249c'),
(59, 'Em của ngày hôm qua', 'https://images.genius.com/4f2b86db242cbb8d5cd1897ef848cdb5.500x500x1.jpg', 81, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Em%20C%E1%BB%A7a%20Ng%C3%A0y%20H%C3%B4m%20Qua.mp3?alt=media&token=d51565aa-f278-4308-ad4a-6a15f0988099'),
(60, 'Chúng ta không thuộc về nhau', 'https://dt.muvi.vn/mvn/thumbnails/song/2022/05/18/chungtakhongthuocvenhau_20220518112008.jpg', 81, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Ch%C3%BAng%20Ta%20Kh%C3%B4ng%20Thu%E1%BB%99c%20V%E1%BB%81%20Nhau%20%20Official%20Music%20Video%20%20S%C6%A1n%20T%C3%B9ng%20MTP.mp3?alt=media&token=952dacfe-d987-4c8c-8572-20337cc07271'),
(61, 'Lạ lùng', 'https://avatar-ex-swe.nixcdn.com/song/2018/01/26/1/8/9/0/1516930244148_640.jpg', 93, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20L%E1%BA%A0%20L%C3%99NG%20%20V%C5%A9%20Original.mp3?alt=media&token=f988107b-5d6d-428c-908b-2d7471f737c2'),
(62, 'Những lời hứa bỏ quên', 'https://avatar-ex-swe.nixcdn.com/song/2023/12/12/7/a/0/c/1702398577338_640.jpg', 93, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20NH%E1%BB%AENG%20L%E1%BB%9CI%20H%E1%BB%A8A%20B%E1%BB%8E%20QU%C3%8AN%20%20V%C5%A8%20x%20DEAR%20JANE%20Official%20MV.mp3?alt=media&token=36bc70e7-85ba-47ed-8155-226f28b95c3a'),
(63, 'Bước qua mùa cô đơn', 'https://cdn-images.vtv.vn/thumb_w/640/2020/12/12/13011574227482642587703838536921281072601730o-1607753998328414642826.jpg', 93, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20B%C6%AF%E1%BB%9AC%20QUA%20M%C3%99A%20C%C3%94%20%C4%90%C6%A0N%20%20V%C5%A9%20Official%20MV.mp3?alt=media&token=b0cdb74b-8890-40e8-940e-9bb79110b9da'),
(64, 'Tộc Ca (Độ Tộc 1)', 'https://i1.sndcdn.com/artworks-000575297339-masdc5-t500x500.jpg', 72, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20T%E1%BB%98C%20CA%20%20PH%C3%9AC%20DU%20x%20SONBEAT%20%20OFFICIAL%20LYRIC%20VIDEO.mp3?alt=media&token=a4ba6320-ffd4-479c-b354-289e34a28d56'),
(65, 'Độ Tộc 2', 'https://i.ytimg.com/vi/Jk38OqdAQxc/maxresdefault.jpg', 72, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20%C4%90%E1%BB%98%20T%E1%BB%98C%202%20%20FROM%20MIXI%20WITH%20LOVE%20%20MASEW%20x%20PH%C3%9AC%20DU%20x%20PH%C3%81O%20x%20%C4%90%E1%BB%98%20MIXI%20OFFICIAL%20MV%20LYRIC.mp3?alt=media&token=59d39cdd-e49d-4378-b772-8919dfbccad0'),
(66, 'Bộ Tộc Cùng Già', 'https://photo-resize-zmp3.zadn.vn/w600_r1x1_jpeg/cover/2/2/b/6/22b66a49a2377e157cd95c97f2263394.jpg', 72, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20B%E1%BB%99%20T%E1%BB%99c%20C%C3%B9ng%20Gi%C3%A0%20%20Thi%E1%BB%87n%20H%C6%B0ng%20x%20Entidi%20x%20D%C5%A9ng%20%C4%90%E1%BA%B7ng%20OFFICIAL%20MV%20LYRIC.mp3?alt=media&token=a1f85ac9-4512-437a-a9b2-581ebf16ac8c'),
(67, 'Đau để trưởng thành', 'https://avatar-ex-swe.nixcdn.com/song/2021/02/28/f/c/b/5/1614456350076_640.jpg', 102, '', ''),
(68, 'Đau để trưởng thành', 'https://photo-resize-zmp3.zadn.vn/w600_r1x1_jpeg/cover/c/a/9/d/ca9d4b6cd6252d7a364c74afabf06958.jpg', 103, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20%C4%90AU%20%C4%90%E1%BB%82%20TR%C6%AF%E1%BB%9ENG%20TH%C3%80NH%20%20ONLYC%20%20OFFICIAL%20MV.mp3?alt=media&token=7b14d448-4901-42de-a559-99ce90b44210'),
(69, 'Đường Tôi Chở Em Về', 'https://photo-resize-zmp3.zadn.vn/w600_r1x1_jpeg/cover/c/8/3/2/c83247bc75a132fdd93982c10b2cc152.jpg', 104, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20%C4%90%C6%B0%E1%BB%9Dng%20T%C3%B4i%20Ch%E1%BB%9F%20Em%20V%E1%BB%81%20%20buitruonglinh%20%20Lyrics%20Video%20.mp3?alt=media&token=6d328883-5efa-4e40-a60d-11ff2d9e32cb'),
(70, 'Em Không Khóc', 'https://photo-resize-zmp3.zadn.vn/w600_r1x1_jpeg/cover/f/6/8/9/f6894526d7a599dd668ebc4704ffc9db.jpg', 104, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Em%20Kh%C3%B4ng%20Kh%C3%B3c%20%20buitruonglinh%20ft%20vuphungtien.mp3?alt=media&token=9aca5ddb-e145-464b-82c9-4a6cbbd3a9c5'),
(71, 'Giữa đại lộ Đông Tây', 'https://i.scdn.co/image/ab67616d0000b273008d3449859ced7336262e43', 105, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Gi%E1%BB%AFa%20%C4%90%E1%BA%A1i%20L%E1%BB%99%20%C4%90%C3%B4ng%20T%C3%A2y%20%20Uy%C3%AAn%20Linh%20%20Official%20Lyrics%20Video.mp3?alt=media&token=3c562acd-9467-420f-9519-c042622f28ad'),
(72, 'Yêu người có ước mơ', 'https://i1.sndcdn.com/artworks-aJUMeI2tH03Ig0yL-NO6Vww-t1080x1080.jpg', 104, '', 'https://firebasestorage.googleapis.com/v0/b/froject-974fe.appspot.com/o/y2mate.com%20-%20Y%C3%AAu%20Ng%C6%B0%E1%BB%9Di%20C%C3%B3%20%C6%AF%E1%BB%9Bc%20M%C6%A1%20%20buitruonglinh.mp3?alt=media&token=6fe786ee-cbc1-4f29-892e-4b1d6a317750');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SONG_LIKED`
--

CREATE TABLE `SONG_LIKED` (
  `ID` int(11) NOT NULL,
  `SONG_ID` int(11) NOT NULL,
  `USER_ID` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `SONG_LIKED`
--

INSERT INTO `SONG_LIKED` (`ID`, `SONG_ID`, `USER_ID`) VALUES
(47, 4, '106321034687497989850'),
(90, 13, '106321034687497989850'),
(111, 5, '106321034687497989850'),
(122, 41, 'TBqP76IEqzOO3Yeu1WxIuBgqOog1'),
(140, 6, 'TBqP76IEqzOO3Yeu1WxIuBgqOog1'),
(141, 6, '106321034687497989850'),
(143, 22, 'TBqP76IEqzOO3Yeu1WxIuBgqOog1'),
(144, 8, 'TBqP76IEqzOO3Yeu1WxIuBgqOog1'),
(146, 22, '106321034687497989850'),
(229, 5, 'test2'),
(230, 6, 'test2'),
(231, 9, 'test2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `USER`
--

CREATE TABLE `USER` (
  `USER_ID` varchar(60) NOT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `USER`
--

INSERT INTO `USER` (`USER_ID`, `Password`) VALUES
('105103362873720151170', NULL),
('105813695103040519080', NULL),
('106321034687497989850', NULL),
('TBqP76IEqzOO3Yeu1WxIuBgqOog1', NULL),
('test', '1'),
('test2', '2'),
('test3', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `USER_NEW`
--

CREATE TABLE `USER_NEW` (
  `USER_ID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `USER_PLAYLIST`
--

CREATE TABLE `USER_PLAYLIST` (
  `ID` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `USER_ID` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `USER_PLAYLIST`
--

INSERT INTO `USER_PLAYLIST` (`ID`, `NAME`, `USER_ID`) VALUES
(19, 'Nhạc hay 2', 'TBqP76IEqzOO3Yeu1WxIuBgqOog1'),
(20, 'Ngày mới', 'TBqP76IEqzOO3Yeu1WxIuBgqOog1'),
(21, 'Playlist1', '106321034687497989850'),
(22, 'jjjjj', '106321034687497989850'),
(23, 'hihid', '105103362873720151170'),
(24, 'hihid', '105103362873720151170'),
(25, 'nhac hay', 'test'),
(29, 'nhacyeuthich', 'test');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `BIG_CONTENT`
--
ALTER TABLE `BIG_CONTENT`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `DETAIL_BIG_CONTENT`
--
ALTER TABLE `DETAIL_BIG_CONTENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DETAIL_BIG_CONTENT_ibfk_2` (`ID_PLAY_LIST`),
  ADD KEY `DETAIL_BIG_CONTENT_ibfk_1` (`ID_BIG_CONTENT`);

--
-- Chỉ mục cho bảng `DETAIL_PLAYLIST`
--
ALTER TABLE `DETAIL_PLAYLIST`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_song` (`ID_SONG`),
  ADD KEY `fk_playlist` (`ID_PLAYLIST`);

--
-- Chỉ mục cho bảng `DETAIL_USER_PLAYLIST`
--
ALTER TABLE `DETAIL_USER_PLAYLIST`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DETAIL_USER_PLAYLIST_ibfk_2` (`SONG_ID`),
  ADD KEY `DETAIL_USER_PLAYLIST_ibfk_1` (`PLAYLIST_ID`);

--
-- Chỉ mục cho bảng `PLAY_LIST`
--
ALTER TABLE `PLAY_LIST`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `SINGER`
--
ALTER TABLE `SINGER`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `SONG`
--
ALTER TABLE `SONG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_SINGER` (`SINGER_ID`);

--
-- Chỉ mục cho bảng `SONG_LIKED`
--
ALTER TABLE `SONG_LIKED`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SONG_ID` (`SONG_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Chỉ mục cho bảng `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Chỉ mục cho bảng `USER_NEW`
--
ALTER TABLE `USER_NEW`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `UNIQUE_EMAIL` (`Email`);

--
-- Chỉ mục cho bảng `USER_PLAYLIST`
--
ALTER TABLE `USER_PLAYLIST`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `BIG_CONTENT`
--
ALTER TABLE `BIG_CONTENT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `DETAIL_BIG_CONTENT`
--
ALTER TABLE `DETAIL_BIG_CONTENT`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT cho bảng `DETAIL_PLAYLIST`
--
ALTER TABLE `DETAIL_PLAYLIST`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT cho bảng `DETAIL_USER_PLAYLIST`
--
ALTER TABLE `DETAIL_USER_PLAYLIST`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `PLAY_LIST`
--
ALTER TABLE `PLAY_LIST`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `SINGER`
--
ALTER TABLE `SINGER`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `SONG`
--
ALTER TABLE `SONG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `SONG_LIKED`
--
ALTER TABLE `SONG_LIKED`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT cho bảng `USER_NEW`
--
ALTER TABLE `USER_NEW`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `USER_PLAYLIST`
--
ALTER TABLE `USER_PLAYLIST`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `DETAIL_BIG_CONTENT`
--
ALTER TABLE `DETAIL_BIG_CONTENT`
  ADD CONSTRAINT `DETAIL_BIG_CONTENT_ibfk_1` FOREIGN KEY (`ID_BIG_CONTENT`) REFERENCES `BIG_CONTENT` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DETAIL_BIG_CONTENT_ibfk_2` FOREIGN KEY (`ID_PLAY_LIST`) REFERENCES `PLAY_LIST` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `DETAIL_PLAYLIST`
--
ALTER TABLE `DETAIL_PLAYLIST`
  ADD CONSTRAINT `fk_playlist` FOREIGN KEY (`ID_PLAYLIST`) REFERENCES `PLAY_LIST` (`ID`),
  ADD CONSTRAINT `fk_song` FOREIGN KEY (`ID_SONG`) REFERENCES `SONG` (`ID`);

--
-- Các ràng buộc cho bảng `DETAIL_USER_PLAYLIST`
--
ALTER TABLE `DETAIL_USER_PLAYLIST`
  ADD CONSTRAINT `DETAIL_USER_PLAYLIST_ibfk_1` FOREIGN KEY (`PLAYLIST_ID`) REFERENCES `USER_PLAYLIST` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DETAIL_USER_PLAYLIST_ibfk_2` FOREIGN KEY (`SONG_ID`) REFERENCES `SONG` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `SONG`
--
ALTER TABLE `SONG`
  ADD CONSTRAINT `SONG_ibfk_1` FOREIGN KEY (`SINGER_ID`) REFERENCES `SINGER` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `SONG_LIKED`
--
ALTER TABLE `SONG_LIKED`
  ADD CONSTRAINT `SONG_LIKED_ibfk_1` FOREIGN KEY (`SONG_ID`) REFERENCES `SONG` (`ID`),
  ADD CONSTRAINT `SONG_LIKED_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`);

--
-- Các ràng buộc cho bảng `USER_PLAYLIST`
--
ALTER TABLE `USER_PLAYLIST`
  ADD CONSTRAINT `USER_PLAYLIST_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
