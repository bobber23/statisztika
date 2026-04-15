-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Ápr 15. 10:33
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gepjarmu`
--
CREATE DATABASE gepjarmu
DEFAULT CHARACTER SET 'utf8'
COLLATE 'utf8_hungarian_ci';

-- --------------------------------------------------------
USE gepjarmu;
--
-- Tábla szerkezet ehhez a táblához `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `purchase_year` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vehicles`
--

INSERT INTO `vehicles` (`id`, `brand`, `model`, `purchase_year`, `status`) VALUES
(1, 'Toyota', 'Corolla', 2020, 'active'),
(2, 'Toyota', 'Yaris', 2021, 'active'),
(3, 'Ford', 'Focus', 2019, 'active'),
(4, 'Ford', 'Mondeo', 2022, 'in_service'),
(5, 'Ford', 'Transit', 2018, 'active'),
(6, 'Skoda', 'Octavia', 2023, 'active');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
