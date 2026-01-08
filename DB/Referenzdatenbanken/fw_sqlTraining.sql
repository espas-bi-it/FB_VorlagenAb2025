-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 01. Jun 2017 um 16:52
-- Server Version: 5.5.55-0+deb8u1
-- PHP-Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `zak_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FW_Genre`
--

CREATE TABLE IF NOT EXISTS `FW_Genre` (
`GenreID` bigint(20) NOT NULL,
  `Titel` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `FW_Genre`
--

INSERT INTO `FW_Genre` (`GenreID`, `Titel`) VALUES
(1, 'Action'),
(2, 'Shooter'),
(3, 'RPG'),
(4, 'Sport'),
(5, 'Simulation'),
(6, 'Point-and-click');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FW_Lager`
--

CREATE TABLE IF NOT EXISTS `FW_Lager` (
`LagerID` bigint(20) NOT NULL,
  `Anzahl` tinyint(4) DEFAULT NULL,
  `Spiel_ID` bigint(20) NOT NULL,
  `Standort_ID` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `FW_Lager`
--

INSERT INTO `FW_Lager` (`LagerID`, `Anzahl`, `Spiel_ID`, `Standort_ID`) VALUES
(1, 0, 1, 1),
(2, 0, 2, 2),
(3, 1, 3, 3),
(4, 1, 4, 4),
(5, 2, 5, 1),
(6, 2, 6, 2),
(7, 3, 7, 3),
(8, 3, 8, 4),
(9, 0, 9, 1),
(10, 1, 10, 2),
(11, 2, 11, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FW_Plattform`
--

CREATE TABLE IF NOT EXISTS `FW_Plattform` (
`PlattformID` bigint(20) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `FW_Plattform`
--

INSERT INTO `FW_Plattform` (`PlattformID`, `Name`) VALUES
(1, 'PS'),
(2, 'PC'),
(3, 'XBox');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FW_Publisher`
--

CREATE TABLE IF NOT EXISTS `FW_Publisher` (
`PublisherID` bigint(20) NOT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `FW_Publisher`
--

INSERT INTO `FW_Publisher` (`PublisherID`, `Name`) VALUES
(1, 'Capcom'),
(2, 'Ubisoft'),
(3, 'Square Enix'),
(4, 'Sony'),
(5, 'NIS America'),
(6, '2K Games'),
(7, 'Microsoft'),
(8, 'Electronic Arts'),
(9, 'Astragon'),
(10, 'F+F Distribution');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FW_Spiel`
--

CREATE TABLE IF NOT EXISTS `FW_Spiel` (
`SpielID` bigint(20) NOT NULL,
  `Titel` varchar(50) DEFAULT NULL,
  `Altersfreigabe` tinyint(4) DEFAULT NULL,
  `Preis` decimal(10,0) DEFAULT NULL,
  `Genre_ID` bigint(20) NOT NULL,
  `Plattform_ID` bigint(20) NOT NULL,
  `Publisher_ID` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `FW_Spiel`
--

INSERT INTO `FW_Spiel` (`SpielID`, `Titel`, `Altersfreigabe`, `Preis`, `Genre_ID`, `Plattform_ID`, `Publisher_ID`) VALUES
(1, 'Resident Evil 6', 18, 30, 1, 1, 1),
(2, 'Rainbow Six: Siege', 18, 50, 2, 1, 2),
(3, 'Just Cause 3', 18, 70, 1, 1, 3),
(4, 'Bloodborne', 16, 75, 1, 1, 4),
(5, 'Natural Doctrine', 12, 35, 3, 1, 5),
(6, 'Evolve', 16, 12, 1, 3, 6),
(7, 'Sunset Overdrive', 16, 20, 1, 3, 7),
(8, 'FIFA 15', 0, 20, 4, 3, 8),
(9, 'Landwirtschafts-Simulator 15', 0, 20, 5, 2, 9),
(10, 'Anno 1404', 6, 13, 5, 2, 2),
(11, 'Deponia Doomsday', 6, 30, 6, 2, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FW_Standort`
--

CREATE TABLE IF NOT EXISTS `FW_Standort` (
`StandortID` bigint(20) NOT NULL,
  `Strasse` varchar(60) DEFAULT NULL,
  `Postleitzahl` varchar(20) DEFAULT NULL,
  `Ort` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `FW_Standort`
--

INSERT INTO `FW_Standort` (`StandortID`, `Strasse`, `Postleitzahl`, `Ort`) VALUES
(1, 'Bakastrasse 12', '8000', 'Zürich'),
(2, 'Katzenstrasse 6', '3014', 'Bern'),
(3, 'Faschingstrasse 99', '4051', 'Basel'),
(4, 'Christstrasse 33', '7000', 'Chur');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `FW_Genre`
--
ALTER TABLE `FW_Genre`
 ADD PRIMARY KEY (`GenreID`);

--
-- Indizes für die Tabelle `FW_Lager`
--
ALTER TABLE `FW_Lager`
 ADD PRIMARY KEY (`LagerID`), ADD KEY `Spiel_ID` (`Spiel_ID`), ADD KEY `Standort_ID` (`Standort_ID`);

--
-- Indizes für die Tabelle `FW_Plattform`
--
ALTER TABLE `FW_Plattform`
 ADD PRIMARY KEY (`PlattformID`);

--
-- Indizes für die Tabelle `FW_Publisher`
--
ALTER TABLE `FW_Publisher`
 ADD PRIMARY KEY (`PublisherID`);

--
-- Indizes für die Tabelle `FW_Spiel`
--
ALTER TABLE `FW_Spiel`
 ADD PRIMARY KEY (`SpielID`), ADD KEY `Genre_ID` (`Genre_ID`), ADD KEY `Plattform_ID` (`Plattform_ID`), ADD KEY `Publisher_ID` (`Publisher_ID`);

--
-- Indizes für die Tabelle `FW_Standort`
--
ALTER TABLE `FW_Standort`
 ADD PRIMARY KEY (`StandortID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `FW_Genre`
--
ALTER TABLE `FW_Genre`
MODIFY `GenreID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `FW_Lager`
--
ALTER TABLE `FW_Lager`
MODIFY `LagerID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `FW_Plattform`
--
ALTER TABLE `FW_Plattform`
MODIFY `PlattformID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `FW_Publisher`
--
ALTER TABLE `FW_Publisher`
MODIFY `PublisherID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `FW_Spiel`
--
ALTER TABLE `FW_Spiel`
MODIFY `SpielID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `FW_Standort`
--
ALTER TABLE `FW_Standort`
MODIFY `StandortID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `FW_Lager`
--
ALTER TABLE `FW_Lager`
ADD CONSTRAINT `FW_Lager_ibfk_1` FOREIGN KEY (`Spiel_ID`) REFERENCES `FW_Spiel` (`SpielID`),
ADD CONSTRAINT `FW_Lager_ibfk_2` FOREIGN KEY (`Standort_ID`) REFERENCES `FW_Standort` (`StandortID`);

--
-- Constraints der Tabelle `FW_Spiel`
--
ALTER TABLE `FW_Spiel`
ADD CONSTRAINT `FW_Spiel_ibfk_1` FOREIGN KEY (`Genre_ID`) REFERENCES `FW_Genre` (`GenreID`),
ADD CONSTRAINT `FW_Spiel_ibfk_2` FOREIGN KEY (`Plattform_ID`) REFERENCES `FW_Plattform` (`PlattformID`),
ADD CONSTRAINT `FW_Spiel_ibfk_3` FOREIGN KEY (`Publisher_ID`) REFERENCES `FW_Publisher` (`PublisherID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
