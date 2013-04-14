-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost:3306
-- Vygenerováno: Čtv 21. bře 2013, 18:06
-- Verze MySQL: 5.5.24
-- Verze PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `vanclma2`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `Lidi`
--

CREATE TABLE IF NOT EXISTS `Lidi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(30) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(30) COLLATE utf8_czech_ci NOT NULL,
  `rodneCislo` char(11) COLLATE utf8_czech_ci DEFAULT NULL,
  `datumNarozeni` date DEFAULT NULL,
  `ulice` varchar(30) COLLATE utf8_czech_ci NOT NULL,
  `psc` char(5) COLLATE utf8_czech_ci NOT NULL,
  `mesto` varchar(30) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=7 ;

--
-- Vypisuji data pro tabulku `Lidi`
--

INSERT INTO `Lidi` (`id`, `jmeno`, `prijmeni`, `rodneCislo`, `datumNarozeni`, `ulice`, `psc`, `mesto`) VALUES
(2, 'Karel', 'Smolný', '580815/8777', '1992-12-03', 'Nádražní 123', '50003', 'Hradec Králové III'),
(3, 'Marek', 'Jurda', '650404/8956', '1992-11-02', 'Studentská 95', '53210', 'Pardubice 2'),
(4, 'Martin', 'Pavlásek', '720303/5511', '1990-03-28', '17.listopadu 2172/15', '70833', 'Ostrava-Poruba'),
(5, 'Pavel', 'Jirásek', '551212/7877', '1989-03-26', 'Zikova 4', '16636', 'Praha 6'),
(6, 'Pavla', 'Nováková', '555111/3042', '1990-05-28', 'Žerotínovo nám. 617/9', '60177', 'Brno');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
