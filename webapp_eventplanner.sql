-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 04. Feb 2024 um 15:20
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `webapp_eventplanner`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `events`
--

CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Eventname` varchar(255) NOT NULL,
  `createDate` datetime NOT NULL,
  `EventDate` date NOT NULL,
  `Starttime` time NOT NULL,
  `Endtime` time NOT NULL,
  `Eventstatus` varchar(100) NOT NULL,
  `Description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `events`
--

INSERT INTO `events` (`EventID`, `UserID`, `Eventname`, `createDate`, `EventDate`, `Starttime`, `Endtime`, `Eventstatus`, `Description`) VALUES
(1, 6, 'Math', '2024-01-03 00:00:00', '2024-01-10', '12:00:00', '03:00:00', 'Offen', 'Grundlagen'),
(2, 6, 'Informatik', '2024-01-03 00:00:00', '2024-01-10', '12:00:00', '03:00:00', 'offen', 'html und css'),
(6, 6, 'Math 2', '2024-01-03 00:00:00', '2024-01-10', '12:00:00', '03:00:00', 'offen', 'Grundlagen'),
(7, 4, 'Math 3', '2024-01-03 00:00:00', '2024-01-10', '12:00:00', '03:00:00', 'offen', 'Grundlagen'),
(18, 6, 'IT Management', '2024-01-06 02:07:24', '2024-01-09', '08:30:00', '12:00:00', 'Offen', 'Vorstellung von Projekte'),
(19, 6, 'IT Management', '2024-01-06 02:08:55', '2024-01-09', '08:30:00', '12:00:00', 'Offen', 'Vorstellung von Projekte'),
(20, 6, 'Modellirung 2', '2024-01-06 02:09:39', '2024-01-11', '12:00:00', '15:00:00', 'Offen', 'Bpmn Grundlagen'),
(21, 8, 'Zeichnung', '2024-01-06 14:31:13', '2024-01-06', '18:00:00', '20:00:00', 'Offen', 'Lernen Sie, wie zeichnet man etwas');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `participate`
--

CREATE TABLE `participate` (
  `ParticipateID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `participate`
--

INSERT INTO `participate` (`ParticipateID`, `EventID`, `UserID`, `Role`) VALUES
(1, 18, 6, 'Trainer'),
(2, 19, 6, 'Trainer'),
(3, 20, 6, 'Trainer'),
(4, 18, 8, 'Teilnehmer'),
(5, 21, 8, 'Trainer'),
(8, 1, 8, 'Teilnehmer'),
(9, 2, 8, 'Teilnehmer'),
(11, 21, 6, 'Teilnehmer');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Email`, `Password`) VALUES
(1, 'testuser', 'testuser@gmail.com', '1457896'),
(2, 'testuser2', 'testuser@gmail.com', '78945612'),
(3, 'testuser3', 'stest@gmail.com', '$2b$10$5op2aaUNswm1Xgq.8hZc2OiVlVliVT2C66x3Ev7VLh4BrpJFWpNaq'),
(4, 'testuser4', 's4user@gmail.com', '$2b$10$E1hBSysvkW8VH03rq83AtOWl7EBt0D57L6PbpQtaKRoel7OVUWZdm'),
(5, 'tesuser5', 's5user@gmail.com', '$2b$10$BvbJzjje.IcGW3xf52DOquNxDHTGI/fodObt7uM6i7AsTdDebsRae'),
(6, 'adminuser6', 'admin@gmail.com', '$2b$10$Uvm2AFsY5zRpssyMWWA7ie/hWSDoBwG3udVW768K/vxZJYiFXEB3G'),
(7, 'testuser9', 'ar@gmail.com', '$2b$10$IayyhBCjpdiEd6GuYjubt.s5t1du5f/xyCjn9/5qDVayoVqqr0qc.'),
(8, 'nick56', 'nwa@gmail.com', '$2b$10$rYGRlGT3EeJ7geAVAi6H4uzdw093MERp3uJlW9v7r29PO1vzNKAOS'),
(9, 'testuserapp', 'app@gmail.com', '$2b$10$R5quB1sjWQtvAWb0PDwA6OwkhuOAzRLTlzgMw6e9HXehFRLBmXWxG'),
(10, 'testuserapp2', 'app2@gmail.com', '$2b$10$chROsNU2mZZ3tBrei4bPHueDhJI.TgjBu60F5CU7yDg.ptP.c8A6q'),
(11, 'usertest10', 'uz@gmail.com', '$2b$10$SS/tEw8EAB8EmjfvzU1Qi.T4EGJ54qbAYxKfhyLKf7YtJe4ZJNedW'),
(12, 'gh4', 'app24@gmail.com', '$2b$10$5Qx3.g8soLDLiOKL63o/a.v6sGB7bf4r6ilqWqJM9uGjZ.ThB28eC'),
(13, 'gh4', 'app245@gmail.com', '$2b$10$NphTfhLppMDIfOMSh2i09.1JD8QIclsZCVBuDhPX2oxFttXcBt89y'),
(14, 'gh4', 'apphj@gmail.com', '$2b$10$OzUhBKKAhSNlerMJQ38vz.k5tw3qkj4f3y09fMh6Gzs.h31kcgh4O');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indizes für die Tabelle `participate`
--
ALTER TABLE `participate`
  ADD PRIMARY KEY (`ParticipateID`),
  ADD KEY `EventID` (`EventID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `events`
--
ALTER TABLE `events`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `participate`
--
ALTER TABLE `participate`
  MODIFY `ParticipateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints der Tabelle `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `participate_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `events` (`EventID`),
  ADD CONSTRAINT `participate_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
