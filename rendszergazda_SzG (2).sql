-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 08. 12:12
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `rendszergazda`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ellenorzo`
--

CREATE TABLE `ellenorzo` (
  `id` int(11) NOT NULL,
  `osztaly_nevsor_id` int(10) UNSIGNED NOT NULL,
  `tantargy_neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jegy` int(11) NOT NULL,
  `datum` date NOT NULL,
  `tema` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ellenorzo`
--

INSERT INTO `ellenorzo` (`id`, `osztaly_nevsor_id`, `tantargy_neve`, `jegy`, `datum`, `tema`) VALUES
(1, 13, 'Magyar', 1, '2022-09-16', 'Csokonai-Berzsenyi'),
(2, 13, 'Magyar', 2, '2022-09-22', 'ETA Hoffman - Az arany virágcserép'),
(3, 13, 'Magyar', 4, '2022-09-29', 'ETA Hoffman - Az arany virágcserép'),
(4, 13, 'Magyar', 2, '2022-10-29', 'Victor Hugo-Nyomorultak'),
(5, 13, 'Magyar', 3, '2022-11-14', 'Fogalmazás'),
(6, 13, 'Angol', 5, '2022-09-30', 'Quick Test Unit 1'),
(7, 13, 'Angol', 5, '2022-10-28', 'Quick Test Unit 2'),
(8, 13, 'Angol', 5, '2022-11-28', 'Quick Test Unit 3'),
(9, 13, 'Matek', 4, '2022-10-10', 'n-edik gyök'),
(10, 13, 'Matek', 5, '2022-10-28', 'Exponenciális kifejezések, függvények'),
(11, 13, 'Matek', 3, '2022-11-10', 'Logaritmusos kifejezések'),
(12, 13, 'Matek', 4, '2022-12-13', 'Szinusz tétel'),
(13, 13, 'Történelem', 4, '2022-09-30', 'Az ipari forradalom, Kossuth és Széchenyi programj'),
(14, 13, 'Történelem', 3, '2022-10-27', 'A márciusi forradalom az 1848-49-es szabadságharc'),
(15, 13, 'Történelem', 4, '2022-11-25', 'Az amerikai függetlenségi háború'),
(16, 13, 'Digitális kultúra', 5, '2022-10-07', 'Formázás'),
(17, 13, 'Digitális kultúra', 5, '2022-10-14', 'Műveletek'),
(18, 13, 'Digitális kultúra', 4, '2022-10-28', 'Busz(százalékszámítás)'),
(19, 13, 'Digitális kultúra', 5, '2022-11-18', 'hózentróger'),
(20, 13, 'Testnevelés', 5, '2022-09-26', 'helyből távolugrás'),
(21, 13, 'Testnevelés', 5, '2022-10-17', 'megindulás, megállás'),
(22, 13, 'Testnevelés', 5, '2022-10-28', 'órai munka'),
(23, 13, 'Testnevelés', 5, '2022-11-07', 'Fektetett dobás'),
(24, 13, 'Testnevelés', 5, '2022-11-18', 'Órai munka'),
(25, 13, 'Testnevelés', 5, '2022-12-12', 'Összefüggő talajgyakorlat'),
(26, 13, 'Fizika', 4, '2022-09-15', 'Villamos feszültség, elektromos áramerősség, ohm t'),
(27, 13, 'Fizika', 4, '2022-09-15', 'Villamos feszültség'),
(28, 13, 'Fizika', 3, '2023-01-12', 'A féléves munka értékelése'),
(29, 13, 'Fizika', 4, '2023-01-12', 'A féléves munka értékelése'),
(30, 13, 'IKT projektmunka 2', 3, '2022-10-25', 'Alapbeállítások megvalósítása'),
(31, 13, 'IKT projektmunka 2', 5, '2022-12-13', 'Packet doksi'),
(32, 13, 'IKT projektmunka 2', 5, '2022-12-13', 'Perzi előadás'),
(33, 13, 'IKT projektmunka 2', 4, '2023-01-10', 'Rétegbeli kapcsolat'),
(34, 13, 'IKT projektmunka 2', 4, '2023-01-10', 'projektmunka'),
(35, 13, 'Adatbázis-kezelés 1', 5, '2022-09-21', 'Jegyzet készítése'),
(36, 13, 'Adatbázis-kezelés 1', 5, '2022-10-12', 'sql parancsok'),
(37, 13, 'Adatbázis-kezelés 1', 4, '2022-10-26', 'adat, korlátozások'),
(38, 13, 'Adatbázis-kezelés 1', 5, '2022-11-30', 'delete, update, insert'),
(39, 13, 'Adatbázis-kezelés 1', 5, '2022-12-14', 'Select utasítás'),
(40, 13, 'szakmai angol', 1, '2022-10-06', 'IT'),
(41, 13, 'szakmai angol', 3, '2022-11-09', 'Vocabulary'),
(42, 13, 'szakmai angol', 5, '2022-11-16', 'Mediálás'),
(43, 13, 'szakmai angol', 4, '2022-11-23', 'Hardware'),
(44, 13, 'szakmai angol', 5, '2022-11-30', 'the workstation'),
(45, 14, 'magyar', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(46, 14, 'magyar', 5, '2022-09-27', 'irasbeli ropdolgozat'),
(47, 14, 'magyar', 5, '2022-10-29', 'irasbeli ropdolgozat'),
(48, 14, 'magyar', 5, '2022-11-14', 'beadando feladat'),
(49, 14, 'matematika', 4, '2022-10-10', 'orai munka'),
(50, 14, 'matematika', 5, '2022-10-28', 'orai feladat'),
(51, 14, 'matematika', 5, '2022-11-10', 'irasbeli ropdolgozat'),
(52, 14, 'angol', 5, '2022-09-30', 'irasbeli dolgozat'),
(53, 14, 'angol', 5, '2022-10-28', 'irasbeli dolgozat'),
(54, 14, 'fizika', 5, '2022-09-15', 'irasbeli ropdolgozat'),
(55, 14, 'fizika', 5, '2022-11-14', 'orai feladat'),
(56, 14, 'fizika', 4, '2022-11-14', 'orai feladat'),
(57, 14, 'testneveles', 5, '2022-09-26', 'orai feladat'),
(58, 14, 'halozat', 1, '2022-10-18', 'irasbeli ropdolgozat'),
(59, 14, 'halozat', 2, '2022-10-28', 'irasbeli ropdolgozat'),
(60, 14, 'halozat', 4, '2022-10-25', 'orai feladat'),
(61, 14, 'halozat', 3, '2022-09-20', 'irasbeli ropdolgozat'),
(62, 14, 'digitalis kultura', 5, '2022-12-16', 'gyakorlati feladat'),
(63, 14, 'digitalis kultura', 5, '2022-11-18', 'gyakorlati feladat'),
(64, 14, 'Adatbazis-kezeles', 5, '2022-12-14', 'orai munka'),
(65, 14, 'Adatbazis-kezeles', 5, '2022-11-30', 'irasbeli ropdolgozat'),
(66, 14, 'Adatbazis-kezeles', 4, '2022-10-26', 'Orai munka'),
(67, 14, 'Adatbazis-kezeles', 5, '2022-10-12', 'Projektmunka'),
(68, 14, 'ikt projektmunka', 5, '2023-01-10', 'orai munka'),
(69, 14, 'ikt projektmunka', 5, '2023-01-10', 'projektmunka'),
(70, 14, 'halozat', 5, '2023-01-12', 'gyakorlati feladat '),
(71, 14, 'tortenelem', 5, '2023-01-17', 'orai munka'),
(72, 14, 'matematika', 5, '2023-01-13', 'irasbeli felelet'),
(73, 14, 'testneveles', 4, '2022-12-12', 'gyakorlati feladat'),
(74, 14, 'testneveles', 5, '2022-10-17', 'gyakorlati feladat'),
(75, 14, 'testneveles', 5, '2022-10-28', 'Orai munka'),
(76, 14, 'testneveles', 4, '2022-11-07', 'gyakorlati feladat'),
(77, 14, 'szakmai angol', 5, '2022-11-16', 'irasbeli ropdolgozat'),
(78, 14, 'szakmai angol', 5, '2022-11-09', 'irasbeli ropdolgozat'),
(79, 14, 'szakmai angol', 5, '2022-10-19', 'orai munka'),
(80, 14, 'szakmai angol', 4, '2022-10-06', 'irasbeli ropdolgozat'),
(81, 14, 'tortenelem', 5, '2022-09-30', 'fuzet ellenorzes'),
(82, 14, 'tortenelem', 4, '2022-11-11', 'Dolgozat'),
(83, 6, 'magyar', 3, '2022-09-16', 'irasbeli ropdolgozat'),
(84, 6, 'magyar', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(85, 6, 'magyar', 5, '2022-10-29', 'irasbeli ropdolgozat'),
(86, 6, 'magyar', 5, '2022-11-03', 'órai munka'),
(87, 6, 'magyar', 5, '2022-11-14', 'beadandó feladat'),
(88, 6, 'matematika', 4, '2022-10-28', 'orai feladat'),
(89, 6, 'matematika', 3, '2022-11-10', 'irasbeli ropdolgozat'),
(90, 6, 'angol nyelv', 5, '2022-09-30', 'irasbeli ropdolgozat'),
(91, 6, 'angol nyelv', 5, '2022-10-28', 'irasbeli ropdolgozat'),
(92, 6, 'tortenelem', 5, '2022-10-17', 'szobeli felelet'),
(93, 6, 'tortenelem', 4, '2022-11-07', 'irasbeli temazaro dolgozat'),
(94, 6, 'tortenelem', 5, '2022-11-28', 'szobeli felelet'),
(95, 6, 'digitalis kultura', 5, '2022-10-14', 'gyakorlati feladat'),
(96, 6, 'digitalis kultura', 5, '2022-10-23', ''),
(97, 6, 'digitalis kultura', 5, '2022-10-28', 'gyakrolati feladat'),
(98, 6, 'digitalis kutlura', 5, '2022-11-18', 'gyakorlati feladat'),
(99, 6, 'testneveles', 4, '2022-10-17', 'gyakorlati feladat'),
(100, 6, 'testneveles', 5, '2022-10-18', 'gyakorlati feladat'),
(101, 6, 'testneveles', 5, '2022-10-28', 'orai munka'),
(102, 6, 'testneveles', 5, '2022-11-07', 'gyakorolati feladat'),
(103, 6, 'fizika', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(104, 6, 'fizika', 5, '2022-11-14', 'orai feladat'),
(105, 6, 'fizika', 4, '2022-11-14', 'orai feladat'),
(106, 6, 'ikt projektmunka', 4, '2022-10-25', 'projektmunka'),
(107, 6, 'adatbazis-kezeles', 5, '2022-09-21', 'orai munka'),
(108, 6, 'adatbazis-kezeles', 5, '2022-10-12', 'projektmunka'),
(109, 6, 'adatbazis-kezeles', 5, '2022-10-26', 'irasbeli ropdolgozat'),
(110, 6, 'halozatok', 4, '2022-09-20', 'gyakorlati feladat'),
(111, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(112, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(113, 6, 'szakmai angol', 4, '2022-10-19', 'irasbeli ropdolgozat'),
(114, 6, 'szakmai angol', 5, '2022-11-09', 'irasbeli ropdolgozat'),
(115, 6, 'adatbazis-kezeles', 5, '2022-10-12', 'projektmunka'),
(116, 6, 'adatbazis-kezeles', 5, '2022-10-26', 'irasbeli ropdolgozat'),
(117, 6, 'adatbazis-kezeles', 5, '2022-11-30', 'irasbeli ropdolgozat'),
(118, 6, 'halozatok', 4, '2022-09-20', 'gyakorlati feladat'),
(119, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(120, 6, 'halozatok', 5, '2022-10-25', 'szobeli felelet'),
(121, 6, 'szakmai angol', 4, '2022-10-09', 'irasbeli ropdolgozat'),
(122, 6, 'szakmai angol', 5, '2022-11-09', 'irasbeli ropdolgozat'),
(123, 6, 'magyar', 5, '2023-01-12', 'szobeli felelet'),
(124, 6, 'magyar', 4, '2022-12-20', 'irasbeli temazaro'),
(125, 6, 'angol', 5, '2022-11-28', 'irasbeli ropdolgozat'),
(126, 6, 'angol', 5, '2022-12-19', 'irasbeli ropdolgozat'),
(127, 6, 'matematika', 4, '2022-12-02', 'irasbeli felelet'),
(128, 6, 'matematika', 5, '2022-12-09', 'irasbeli ropdolgozat'),
(129, 6, 'tortenelem', 5, '2022-12-01', 'szobeli felelet'),
(130, 6, 'tortenelem', 4, '2022-12-19', 'irasbeli ropdolgozat'),
(131, 6, 'tortenelem', 5, '2023-01-12', 'szobeli felelet'),
(132, 6, 'tortenelem', 5, '2023-01-17', 'orai munka'),
(133, 6, 'digitalis kultura', 4, '2022-12-16', 'gyakorlati feladat'),
(134, 6, 'testneveles', 5, '2022-12-05', 'orai munka'),
(135, 6, 'ikt projektmunka', 5, '2022-12-13', 'projektmunka'),
(136, 6, 'ikt projektmunka', 5, '2022-12-13', 'projektmunka'),
(137, 6, 'ikt projektmunka ', 4, '2023-01-10', 'projektmunka'),
(138, 6, 'ikt projektmunka', 5, '2023-01-10', 'projektmunka'),
(139, 6, 'halozatok ', 1, '2022-12-14', 'teszt feladat'),
(140, 6, 'halozatok', 3, '2023-01-12', 'gyakorlati feladat'),
(185, 10, 'magyar', 5, '2022-09-22', 'irasbeli ropdolgozat'),
(186, 10, 'magyar', 5, '2022-09-27', 'irasbeli ropdolgozat'),
(187, 10, 'magyar', 2, '2022-10-29', 'irasbeli ropdolgozat'),
(188, 10, 'magyar', 5, '2022-11-14', 'beadando feladat'),
(189, 10, 'matematika', 5, '2022-09-19', 'orai munka'),
(190, 10, 'matematika', 5, '2022-10-28', 'orai feladat'),
(191, 10, 'matematika', 4, '2022-11-10', 'irasbeli dolgozat'),
(192, 10, 'angol_nyelv', 5, '2022-09-30', 'irasbeli dolgozat'),
(193, 10, 'angol_nyelv', 5, '2022-10-28', 'irasbeli dolgozat'),
(194, 10, 'fizika', 5, '2022-09-15', 'irasbeli ropdolgozat'),
(195, 10, 'tortenelem', 5, '2022-09-20', 'irasbeli felelet'),
(196, 10, 'tortenelem', 4, '2022-09-30', 'irasbeli ropdolgozat'),
(197, 10, 'tortenelem', 5, '2022-10-10', 'projektmunka'),
(198, 10, 'tortenelem', 5, '2022-11-07', 'irasbeli temazaro dolgozat'),
(199, 10, 'tortenelem', 4, '2022-11-21', 'szobeli felelet'),
(200, 10, 'szakmai_angol', 3, '2022-10-06', 'irasbeli ropdolgozat'),
(201, 10, 'szakmai_angol', 5, '2022-10-19', 'orai munka'),
(202, 10, 'szakmai_angol', 5, '2022-11-09', 'irasbeli ropdolgozat'),
(203, 10, 'szakmai_angol', 4, '2022-11-23', 'irasbeli ropdolgozat'),
(204, 10, 'testneveles', 3, '2022-09-26', 'orai feladat'),
(205, 10, 'testneveles', 5, '2022-10-17', 'gyakorlati feladat'),
(206, 10, 'testneveles', 4, '2022-10-17', 'gyakorlati feladat'),
(207, 10, 'testneveles', 5, '2022-10-28', 'orai munka'),
(208, 10, 'testneveles', 4, '2022-11-07', 'gyakorlati feladat'),
(209, 10, 'testneveles', 5, '2022-11-10', 'orai munka'),
(210, 10, 'adatbaziskezeles', 5, '2022-10-12', 'projektmunka'),
(211, 10, 'adatbaziskezeles', 5, '2022-10-26', 'irasbeli ropdolgozat'),
(212, 10, 'ikt_projektmunka', 3, '2022-10-25', 'projektmunka'),
(213, 10, 'halozat', 4, '2022-09-20', 'gyakorlati feladat'),
(214, 10, 'halozat', 5, '2022-10-25', 'szobeli felelet'),
(215, 10, 'halozat', 4, '2022-10-25', 'szobeli felelet'),
(216, 10, 'digitalis_kultura', 5, '2022-10-14', 'gyakorlati feladat'),
(217, 10, 'digitalis_kultura', 5, '2022-10-14', 'gyakorlati feladat'),
(218, 10, 'digitalis_kultura', 4, '2022-10-14', 'gyakorlati feladat'),
(219, 10, 'digitalis_kultura', 5, '2022-10-28', 'gyakorlati feladat'),
(220, 10, 'digitalis_kultura', 5, '2022-11-18', 'gyakorlati feladat'),
(221, 10, 'angol_nyelv', 5, '2022-12-19', 'irasbeli dolgozat'),
(222, 10, 'matematika', 4, '2022-11-10', 'irasbeli dolgozat'),
(223, 10, 'matematika', 4, '2022-11-30', 'irasbeli temazaro dolgozat'),
(224, 10, 'matematika', 5, '2022-12-02', 'irasbeli felelet'),
(225, 10, 'matematika', 3, '2022-12-13', 'irasbeli ropdolgozat'),
(226, 10, 'matematika', 5, '2022-12-21', 'orai munka'),
(227, 10, 'tortenelem', 4, '2022-12-19', 'irasbeli ropdolgozat'),
(228, 10, 'digitalis_kultura', 4, '2022-12-16', 'gyakorlati feladat'),
(229, 10, 'testneveles', 3, '2022-12-12', 'gyakorlati feladat'),
(230, 10, 'testneveles', 4, '2022-12-12', 'gyakorlati feladat'),
(231, 10, 'ikt_projektmunka', 3, '2022-12-13', 'projektmunka'),
(232, 10, 'ikt_projektmunka', 3, '2022-12-13', 'projektmunka'),
(233, 10, 'ikt_projektmunka', 4, '2023-01-10', 'projektmunka'),
(234, 10, 'ikt_projektmunka', 5, '2023-01-10', 'orai munka'),
(235, 10, 'adatbaziskezeles', 1, '2022-12-14', 'orai munka'),
(236, 10, 'halozat', 3, '2022-12-14', 'teszt feladat'),
(237, 10, 'szakmai_angol', 5, '2022-11-30', 'irasbeli ropdolgozat'),
(238, 10, 'szakmai_angol', 5, '2022-12-07', 'orai munka'),
(239, 10, 'matematika', 5, '2023-01-13', 'irasbeli felelet'),
(240, 10, 'tortenelem', 5, '2023-01-12', 'szobeli felelet'),
(241, 10, 'tortenelem', 5, '2023-01-17', 'orai munka'),
(242, 10, 'fizika', 3, '2023-01-12', 'orai munka'),
(243, 10, 'fizika', 5, '2023-01-12', 'orai munka'),
(244, 10, 'halozat', 3, '2023-01-12', 'gyakorlati feladat'),
(245, 2, 'magyar', 2, '2022-09-22', 'Irasbeli ropdolgozat'),
(246, 2, 'magyar', 5, '2022-09-27', 'Irasbeli ropdolgozat'),
(247, 2, 'magyar', 1, '2022-10-29', 'Irasbeli ropdolgozat'),
(248, 2, 'magyar', 5, '2022-11-14', 'Beadando feladat'),
(249, 2, 'matematika', 3, '2022-10-10', 'Orai munka'),
(250, 2, 'matematika', 4, '2022-10-28', 'Orai feladat'),
(251, 2, 'matematika', 4, '2022-11-10', 'Irasbeli dolgozat'),
(252, 2, 'angol_nyelv', 5, '2022-09-30', 'Irasbeli dolgozat'),
(253, 2, 'angol_nyelv', 5, '2022-10-28', 'Irasbeli dolgozat'),
(254, 2, 'fizika', 5, '2022-09-22', 'Irasbeli temazaro dolgozat'),
(255, 2, 'fizika', 5, '2022-11-14', 'Orai feladat'),
(256, 2, 'fizika', 4, '2022-11-14', 'Orai feladat'),
(257, 2, 'tortenelem', 5, '2022-09-30', 'Irasbeli ropdolgozat'),
(258, 2, 'matematika', 5, '2022-12-14', 'Számított mezők'),
(259, 2, 'tortenelem', 3, '2022-10-27', 'Irasbeli temazaro dolgozat'),
(260, 2, 'tortenelem', 3, '2022-11-28', 'Irasbeli temaztaro dolgozat'),
(261, 2, 'szakmai_angol', 3, '2022-10-06', 'Irasbeli ropdolgozat'),
(262, 2, 'szakmai_angol', 5, '2022-11-09', 'Irasbeli ropdolgozat'),
(263, 2, 'szakmai_angol', 4, '2022-11-23', 'Irasbeli ropdolgozat'),
(264, 2, 'testneveles', 5, '2022-09-26', 'Orai feladat'),
(265, 2, 'testneveles', 5, '2022-10-06', 'Orai munka'),
(266, 2, 'testneveles', 5, '2022-10-17', 'Orai munka'),
(267, 2, 'testneveles', 5, '2022-10-28', 'Orai munka'),
(268, 2, 'testneveles', 5, '2022-11-18', 'Orai munka'),
(269, 2, 'adatbaziskezeles', 5, '2022-10-12', 'Projektmunka'),
(270, 2, 'adatbaziskezeles', 4, '2022-10-26', 'Irasbeli ropdolgozat'),
(271, 2, 'ikt_projektmunka', 4, '2022-10-24', 'Projektmunka'),
(272, 2, 'halozat', 4, '2022-09-20', 'Gyakorlati feladat'),
(273, 2, 'halozat', 1, '2022-10-18', 'Irasbeli dolgozat'),
(274, 2, 'halozat', 1, '2022-10-18', 'Irasbeli dolgozat'),
(275, 2, 'halozat', 5, '2022-10-25', 'Szobeli felelet'),
(276, 2, 'digitalis_kultura', 5, '2022-10-07', 'Gyakorlati feladat'),
(277, 2, 'digitalis_kultura', 5, '2022-10-14', 'Gyakorlati feladat'),
(278, 2, 'digitalis_kultura', 5, '2022-10-28', 'Gyakorlati feladat'),
(279, 2, 'magyar', 3, '2022-12-20', 'Irasbeli temazaro dolgozat'),
(280, 2, 'angol_nyelv', 3, '2022-11-28', 'Irasbeli dolgozat'),
(281, 2, 'angol_nyelv', 3, '2022-12-19', 'Irasbeli dolgozat'),
(282, 2, 'matematika', 3, '2022-11-30', 'Irasbeli temazaro dolgozat'),
(283, 2, 'matematika', 4, '2022-12-02', 'Irasbeli felelet'),
(284, 2, 'matematika', 4, '2022-12-13', 'Irasbeli ropdolgozat'),
(285, 2, 'matematika', 5, '2022-12-21', 'Orai munka'),
(286, 2, 'matematika', 5, '2023-01-13', 'Irasbeli felelet'),
(287, 2, 'tortenelem', 3, '2022-12-19', 'Irasbeli ropdolgozat'),
(288, 2, 'tortenelem', 5, '2023-01-16', 'Szobeli felelet'),
(289, 2, 'tortenelem', 5, '2023-01-17', 'Orai munka'),
(290, 2, 'digitalis_kultura', 5, '2022-12-16', 'Gyakorlati feladat'),
(291, 2, 'digitalis_kultura', 5, '2022-12-16', 'Gyakorlati feladat'),
(292, 2, 'testneveles', 5, '2022-12-02', 'Orai munka'),
(293, 2, 'testneveles', 4, '2022-12-12', 'Gyakorlati feladat'),
(294, 2, 'ikt_projektmunka', 5, '2022-12-13', 'Projektmunka'),
(295, 2, 'ikt_projektmunka', 5, '2022-12-13', 'Projektmunka'),
(296, 2, 'ikt_projektmunka', 5, '2022-01-10', 'Projektmunka'),
(297, 2, 'ikt_projektmunka', 5, '2023-01-10', 'Orai feladat'),
(298, 2, 'adatbaziskezeles', 5, '2022-11-30', 'Irasbeli ropdolgozat'),
(299, 2, 'adatbaziskezeles', 5, '2022-12-14', 'Orai munka'),
(300, 2, 'halozat', 3, '2022-12-14', 'Teszt feladat'),
(301, 2, 'halozat', 5, '2023-01-12', 'Gyakorlati feladat'),
(302, 2, 'szakmai_angol', 4, '2022-11-23', 'Irasbeli ropdolgozat'),
(303, 2, 'szakmai_angol', 5, '2022-11-30', 'Irasbeli ropdolgozat'),
(304, 2, 'szakmai_angol', 5, '2022-12-07', 'Orai munka');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ellenorzo`
--
ALTER TABLE `ellenorzo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `osztaly_nevsor_id` (`osztaly_nevsor_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  ADD CONSTRAINT `ellenorzo_ibfk_1` FOREIGN KEY (`osztaly_nevsor_id`) REFERENCES `osztaly_nevsor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
