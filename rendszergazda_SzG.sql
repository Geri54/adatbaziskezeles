-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 01. 11:49
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
(44, 13, 'szakmai angol', 5, '2022-11-30', 'the workstation');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztaly_nevsor`
--

CREATE TABLE `osztaly_nevsor` (
  `id` int(10) UNSIGNED NOT NULL,
  `vnev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `knev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osztaly_nevsor`
--

INSERT INTO `osztaly_nevsor` (`id`, `vnev`, `knev`) VALUES
(1, 'Barcsák ', 'Vinzent'),
(2, 'Borbély', 'Gergely'),
(3, 'Csordás', 'Csenge'),
(4, 'Enyedi', 'Sándor'),
(5, 'Gál', 'Máté'),
(6, 'György ', 'Botond'),
(7, 'Héring', 'Máté'),
(8, 'Juhász', 'István'),
(9, 'Kreipos', 'Gábor'),
(10, 'Lajka ', 'Kristóf'),
(11, 'Nemes', 'Alexandra'),
(12, 'Skarufa', 'Ákos'),
(13, 'Szabó', 'Gergely'),
(14, 'Váradi ', 'Ádám');

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
-- A tábla indexei `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ellenorzo`
--
ALTER TABLE `ellenorzo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT a táblához `osztaly_nevsor`
--
ALTER TABLE `osztaly_nevsor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
