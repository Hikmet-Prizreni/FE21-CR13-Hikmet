-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 08. Dez 2021 um 12:50
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `fswd14_cr13_bigevents_hikmetp`
--
CREATE DATABASE IF NOT EXISTS `fswd14_cr13_bigevents_hikmetp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fswd14_cr13_bigevents_hikmetp`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211207225044', '2021-12-07 23:51:12', 45);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `datetime`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1, 'Ultra Music Festival', '2022-05-15 21:30:00', 'Held in Miami, Ultra Music Festival attracts over 330.000 partiers looking to combine warm weather and electronic dance music. In 2022, pre-sale tickets sold out in a matter of seconds.', 'https://static.billboard.com/files/media/Ultra-Music-Festival-credit-Kevin-Verkruijssen-2016-billboard-1548-compressed.jpg', 330000, 'ultramusicfestival@gmail.com', '+49 7845127', 'Ultra Club - Ultrastr. 142 - 5874 - Amsterdam', 'www.ultramusicfestival.com', 'Music'),
(2, 'Centrobasket U17 Womens Championship', '2022-04-13 14:30:00', 'FIBA Womens AmeriCup 2021\r\nThe top four teams from the Centrobasket Women’s Championship 2021 will qualify to the FIBA Women’s AmeriCup 2022.', 'https://i1.wp.com/www.fillingthelane.com/wp-content/uploads/2021/11/tvJEaU82POw.jpg?fit=1170%2C658&ssl=1', 10000, 'fibawomens@info.com', '+41 8546932', 'Roskilde Club - Riskstr. 444 - 4444 - Germany', 'www.fibaw@womans.de', 'Sport'),
(3, 'Film Docu Festival,', '2022-12-06 23:30:00', 'DokuFest is an international documentary and short film festival held in the Kosovo city of Prizren, held annually during August. It was founded in 2022 by a group of friends. It has since grown into a cultural event that attracts international and regional artists and audiences.', 'https://i.pinimg.com/originals/d9/5f/68/d95f6818d4c1926fa42de2877d75c805.jpg', 50000, 'filmdocufestival@info.com', '+45 2547896', 'Song Club - RR. Gjerg Fishta. 447. 241 - 4569 - Prizren', 'www.filmdocufestival.com', 'Movie'),
(4, 'MOULIN ROUGE,', '2022-12-15 19:30:00', 'The « MOULIN ROUGE® » trademarks are held and operated by the company Moulin Rouge SA and the company Bal du Moulin Rouge SA. These companies also own rights to the visual elements of the Moulin Rouge, which include its façade composed of the world- famous red windmill.', 'https://th.bing.com/th/id/OIP.0uNaOWb6x1HCJfA2w2bKxQHaE6?w=302&h=200&c=7&r=0&o=5&pid=1.7', 1000000, 'moulinrouge@gmail.com', '+67 5964758', 'San Club - Sancarlostr.444 - 4931 - Sanluis', 'www.moulinrouge.com', 'Theater'),
(5, 'Tomorrowland', '2022-04-15 20:30:00', 'Tomorrowland takes place the last weekend of July in Boom, Belgium. Over 180,000 people who dont want to have hearing when theyre older hit the scene to hear hundreds of DJs perform.\r\n', 'https://th.bing.com/th/id/OIP.PKNVv_Hq-7XKizIVRRLnuAHaD4?pid=ImgDet&rs=1', 180000, 'tomorrowland@gmail.com', '+48 2586474', ' Tomorrow Aria - Tomorrowstr. 300 - 1487 - Warshau', 'www.tomorrowland.com', 'Music'),
(6, 'Basketball NBAs Championship', '2022-04-13 14:30:00', 'The NBA All-Star Game is a major sporting event held annually in February in the United States. Since 1951, selected players from the Eastern Conference and the Western Conference have competed against each other. After victories, the East leads with 37:29 victories.\r\nIn 2018, the mode was changed. A pool of All-Stars is formed and the two players with the most votes choose their teammates from this pool as team captains.', 'https://th.bing.com/th/id/R.882d0d05ed11c141c1383c0a69289dd9?rik=7dBsmfOtuW4p9g&pid=ImgRaw&r=0', 15000, 'nba@info.com', '+51 3461587', 'Roskilde Club - Washingtonstr. 455 - 48694 - Nwe York USA', 'www.nba.com', 'Sport'),
(7, 'Amakula International Film Festival,', '2022-06-15 18:30:00', 'The Amakula International Film Festival is an annual film festival that takes place in Uganda founded in 2022.It is Ugandas oldest film festival founded by Dutch film historian Alice Smits and American filmmaker Lee Elickson\r\n', 'https://d1nslcd7m2225b.cloudfront.net/Pictures/2000x2000fit/0/4/3/1274043_dubaiinternationalfilmfestival2016atmosphere_534577.jpg', 900000, 'glastonbury@gmail.com', '+45 7846932', 'Glass Club - Gasststr. 567 - 3145 - Goa', 'www.glastonbury.com\r\n', 'Movie'),
(8, 'MOULIN ROUGE,', '2022-06-15 19:30:00', 'The « MOULIN ROUGE® » trademarks are held and operated by the company Moulin Rouge SA and the company Bal du Moulin Rouge SA. These companies also own rights to the visual elements of the Moulin Rouge, which include its façade composed of the world- famous red windmill.', 'https://th.bing.com/th/id/OIP.S8Q9BJBxIYcvhFvkAdck4wHaE7?pid=ImgDet&rs=1', 1000, 'moulinrouge@gmail.com', '+67 5964758', 'San Club - Sancarlostr.444 - 4931 - Sanluis', 'www.moulinrouge.com', 'Theater'),
(9, 'Distortion', '2022-08-15 21:30:00', 'Copenhagens Distortion pops up in random locations all over the city during the week of the first Saturday in June. From boat parties to block parties, thousands party around Copenhagen for five days in five different locations.', 'https://www.scandinaviastandard.com/wp-content/uploads/2015/06/Distortion-2015-Copenahgen-Music-to-Prepare-Scandianvia-Standard.jpg', 100000, 'dsstortion@gmail.com', '+64 4879865', 'Distroition Club - Distrstr. 741 - 7777 - Bongo', 'www.dsstortion.com', 'Musik'),
(10, 'Queens Day,', '2022-04-27 20:30:00', 'On April 27, Amsterdam is colored orange as people celebrate from the streets to the canals. Over a million revelers party all day and night, closing the city centre to cars and trams.', 'https://www.yourlittleblackbook.me/wp-content/uploads/2013/02/queensday-amsterdam-2013-loveland.jpg', 1000000, 'queensday@gmail.com', '+57 4785421', 'Queens Club - Rotterstr.584 - 8888 - Amsterdam', 'www.queensday.com', 'Musik');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
