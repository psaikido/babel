-- phpMyAdmin SQL Dump
-- version 2.11.9.6
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 25, 2015 at 11:18 AM
-- Server version: 5.1.72
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hughie_babel`
--
/*
CREATE DATABASE `hughie_babel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hughie_babel`;
*/

-- --------------------------------------------------------

--
-- Table structure for table `translator`
--

DROP TABLE IF EXISTS `translator`;
CREATE TABLE IF NOT EXISTS `translator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=language, 1=validation',
  `fieldName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fieldValue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=328 ;

--
-- Dumping data for table `translator`
--

INSERT INTO `translator` (`id`, `lang`, `type`, `fieldName`, `fieldValue`) VALUES
(1, 'eng', '0', 'address', 'Address'),
(3, 'eng', '0', 'country', 'Country'),
(5, 'eng', '0', 'dob', 'Date of Birth (dd mm yyyy)'),
(7, 'eng', '0', 'docidtype', 'ID Document Type'),
(9, 'eng', '0', 'docid', 'Number'),
(11, 'eng', '0', 'female', 'Female'),
(13, 'eng', '0', 'firstName', 'First Name'),
(15, 'eng', '0', 'gender', 'Gender'),
(17, 'eng', '0', 'house', 'House No. / Name'),
(19, 'eng', '0', 'keyNote', 'These fields are required'),
(21, 'eng', '0', 'language', 'Language'),
(23, 'eng', '0', 'languageName', 'English'),
(25, 'eng', '0', 'lastName', 'Last Name'),
(27, 'eng', '0', 'male', 'Male'),
(29, 'eng', '0', 'middleName', 'Middle Name'),
(31, 'eng', '0', 'phone', 'Phone Number'),
(33, 'eng', '0', 'state', 'State'),
(35, 'eng', '0', 'selectSuffix', 'Select Suffix'),
(37, 'eng', '0', 'selectCountry', 'Select Country'),
(39, 'eng', '0', 'selectType', 'Select Type'),
(41, 'eng', '0', 'street', 'Street'),
(43, 'eng', '0', 'zip', 'Postal / Area Code'),
(45, 'eng', '1', 'postCodeLength', '2'),
(47, 'francais', '0', 'address', 'Adresse'),
(49, 'francais', '0', 'city', 'Ville'),
(51, 'francais', '0', 'country', 'Pays'),
(53, 'francais', '0', 'dob', 'Date de Naisance (jj mm aaaa)'),
(55, 'francais', '0', 'docidtype', 'Type ID Document'),
(57, 'francais', '0', 'docid', 'Nombre'),
(59, 'francais', '0', 'female', 'Femme'),
(61, 'francais', '0', 'firstName', 'PrÃƒÂ©nom'),
(63, 'francais', '0', 'gender', 'Sexe'),
(65, 'francais', '0', 'house', 'Nombre/Nom de Maison'),
(67, 'francais', '0', 'keyNote', 'Mandataire'),
(69, 'francais', '0', 'language', 'Langue'),
(71, 'francais', '0', 'languageName', 'Francais'),
(73, 'francais', '0', 'lastName', 'Nom'),
(75, 'francais', '0', 'male', 'Homme'),
(77, 'francais', '0', 'middleName', 'DeuxiÃƒÂ¨me PrÃƒÂ©nom'),
(79, 'francais', '0', 'phone', 'TÃƒÂ©lÃƒÂ©phone'),
(81, 'francais', '0', 'selectSuffix', 'SÃƒÂ©lect Suffixe'),
(83, 'francais', '0', 'selectCountry', 'SÃƒÂ©lect Pays'),
(85, 'francais', '0', 'selectType', 'SÃƒÂ©lect Type'),
(87, 'francais', '0', 'state', 'ÃƒÂ‰tat'),
(89, 'francais', '0', 'street', 'Rue'),
(91, 'francais', '0', 'zip', 'Code Postal'),
(93, 'francais', '1', 'postCodeLength', '3'),
(95, 'espanol', '0', 'address', 'DirecciÃƒÂ³n'),
(97, 'espanol', '0', 'city', 'Ciudad'),
(99, 'espanol', '0', 'country', 'Pais'),
(101, 'espanol', '0', 'dob', 'Fecha de Nacimiento (dd mm aaaa)'),
(103, 'espanol', '0', 'docidtype', 'Tipo ID Documento'),
(105, 'espanol', '0', 'docid', 'Numero'),
(107, 'espanol', '0', 'female', 'Femenino'),
(109, 'espanol', '0', 'firstName', 'Nombre'),
(111, 'espanol', '0', 'gender', 'Sexo'),
(113, 'espanol', '0', 'house', 'Nombre / NÃƒÂºmero de Casa'),
(115, 'espanol', '0', 'keyNote', 'Necesario'),
(117, 'espanol', '0', 'language', 'Idioma'),
(119, 'espanol', '0', 'languageName', 'EspaÃƒÂ±ol'),
(121, 'espanol', '0', 'lastName', 'Apellido'),
(123, 'espanol', '0', 'male', 'Masculino'),
(125, 'espanol', '0', 'middleName', 'Segundo Nombre'),
(127, 'espanol', '0', 'phone', 'TelÃƒÂ©fono'),
(129, 'espanol', '0', 'selectSuffix', 'Elegir Sufijo'),
(131, 'espanol', '0', 'selectCountry', 'Elegir Pais'),
(133, 'espanol', '0', 'selectType', 'Elegir Tipo'),
(135, 'espanol', '0', 'state', 'Estado'),
(137, 'espanol', '0', 'street', 'Calle'),
(139, 'espanol', '0', 'zip', 'CÃƒÂ³digo Postal'),
(141, 'espanol', '1', 'postCodeLength', '4'),
(143, 'chinese', '0', 'address', 'Ã¥ÂœÂ°Ã¥ÂÂ€'),
(145, 'chinese', '0', 'city', 'Ã¥ÂŸÂŽÃ¥Â¸Â‚/Ã©Â•Â‡'),
(147, 'chinese', '0', 'country', 'Ã¥Â›Â½Ã¥Â®Â¶'),
(149, 'chinese', '0', 'dob', 'Ã¥Â‡ÂºÃ§Â”ÂŸÃ¦Â—Â¥Ã¦ÂœÂŸ'),
(151, 'chinese', '0', 'docidtype', 'Ã¨Â¯ÂÃ¤Â»Â¶Ã§Â±Â»Ã¥ÂžÂ‹'),
(153, 'chinese', '0', 'docid', 'Ã¥ÂÂ·Ã§Â Â'),
(155, 'chinese', '0', 'female', 'Ã¥Â¥Â³'),
(157, 'chinese', '0', 'firstName', 'Ã¥ÂÂ'),
(159, 'chinese', '0', 'gender', 'Ã¦Â€Â§Ã¥ÂˆÂ«'),
(161, 'chinese', '0', 'house', 'Ã©Â—Â¨Ã§Â‰ÂŒÃ¥ÂÂ·'),
(163, 'chinese', '0', 'keyNote', 'Ã¥Â¿Â…Ã©ÂœÂ€Ã¥Â¡Â«Ã¥Â†Â™'),
(165, 'chinese', '0', 'language', 'Ã¨Â¯Â­Ã¨Â¨Â€'),
(167, 'chinese', '0', 'languageName', 'Ã¤Â¸Â­Ã¦Â–Â‡'),
(169, 'chinese', '0', 'lastName', 'Ã¥Â§Â“'),
(171, 'chinese', '0', 'male', 'Ã§Â”Â·'),
(173, 'chinese', '0', 'middleName', '0'),
(175, 'chinese', '0', 'phone', 'Ã§Â”ÂµÃ¨Â¯ÂÃ¥ÂÂ·Ã§Â Â'),
(177, 'chinese', '0', 'selectSuffix', '0'),
(179, 'chinese', '0', 'selectCountry', '0'),
(181, 'chinese', '0', 'selectType', '0'),
(183, 'chinese', '0', 'state', 'Ã§ÂœÂÃ¤Â»Â½'),
(185, 'chinese', '0', 'street', 'Ã¨Â¡Â—Ã©ÂÂ“'),
(187, 'chinese', '0', 'zip', 'Ã©Â‚Â®Ã§Â¼Â–'),
(189, 'chinese', '1', 'postCodeLength', '5'),
(191, 'polish', '0', 'address', 'Adres'),
(193, 'polish', '0', 'city', 'Miasto'),
(195, 'polish', '0', 'country', 'PaÃ…Â„stwo'),
(197, 'polish', '0', 'dob', 'Data urodzenia'),
(199, 'polish', '0', 'docidtype', 'Typ Dokumentu'),
(201, 'polish', '0', 'docid', 'Numer Dokumentu'),
(203, 'polish', '0', 'female', 'Kobieta'),
(205, 'polish', '0', 'firstName', 'ImiÃ„Â™'),
(207, 'polish', '0', 'gender', 'PÃ…Â‚eÃ„Â‡'),
(209, 'polish', '0', 'house', 'Numer/Nazwa domu.'),
(211, 'polish', '0', 'keyNote', 'NiezbÃ„Â™dny'),
(213, 'polish', '0', 'language', 'JÃ„Â™zyk'),
(215, 'polish', '0', 'languageName', 'Polski'),
(217, 'polish', '0', 'lastName', 'Nazwisko'),
(219, 'polish', '0', 'male', 'MÃ„Â™Ã…Â¼czyzna'),
(221, 'polish', '0', 'middleName', 'Drugie imiÃ„Â™'),
(223, 'polish', '0', 'phone', 'Numer Telefonu'),
(225, 'polish', '0', 'state', 'Stan'),
(227, 'polish', '0', 'street', 'Ulica'),
(229, 'polish', '0', 'zip', 'Kod pocztowy'),
(231, 'polish', '1', 'postCodeLength', '6'),
(233, 'tamil', '0', 'address', 'Ã Â®Â®Ã Â¯ÂÃ Â®Â•Ã Â®ÂµÃ Â®Â°Ã Â®Â¿'),
(235, 'tamil', '0', 'city', 'Ã Â®Â®Ã Â®Â¾Ã Â®Â¨Ã Â®Â•Ã Â®Â°Ã Â¯Â/Ã Â®ÂªÃ Â®ÂŸÃ Â¯ÂÃ Â®ÂŸÃ Â®Â£Ã Â®Â®Ã Â¯Â'),
(237, 'tamil', '0', 'country', 'Ã Â®Â¨Ã Â®Â¾Ã Â®ÂŸÃ Â¯Â'),
(239, 'tamil', '0', 'dob', 'Ã Â®ÂªÃ Â®Â¿Ã Â®Â±Ã Â®Â¨Ã Â¯ÂÃ Â®Â¤ Ã Â®Â¨Ã Â®Â¾Ã Â®Â³Ã Â¯Â'),
(241, 'tamil', '0', 'docid', 'Ã Â®ÂªÃ Â®Â¤Ã Â¯ÂÃ Â®Â¤Ã Â®Â¿Ã Â®Â°Ã Â®Â®Ã Â¯Â Ã Â®ÂŽÃ Â®Â£Ã Â¯ÂÃ Â®Â£Ã Â®Â¿Ã Â®Â•Ã Â¯ÂÃ Â®Â•Ã Â¯Âˆ'),
(243, 'tamil', '0', 'female', 'Ã Â®ÂªÃ Â¯Â†Ã Â®Â£Ã Â¯Â'),
(245, 'tamil', '0', 'firstName', 'Ã Â®Â®Ã Â¯ÂÃ Â®Â¤Ã Â®Â²Ã Â¯Â Ã Â®ÂªÃ Â¯Â†Ã Â®Â¯Ã Â®Â°Ã Â¯Â'),
(247, 'tamil', '0', 'gender', 'Ã Â®ÂªÃ Â®Â¾Ã Â®Â²Ã Â¯Â'),
(249, 'tamil', '0', 'house', 'Ã Â®ÂµÃ Â¯Â€Ã Â®ÂŸÃ Â¯ÂÃ Â®ÂŸÃ Â¯Â Ã Â®ÂŽÃ Â®Â£Ã Â¯Â'),
(251, 'tamil', '0', 'docidtype', 'Ã Â®ÂªÃ Â®Â¤Ã Â¯ÂÃ Â®Â¤Ã Â®Â¿Ã Â®Â°Ã Â®Â®Ã Â¯Â Ã Â®ÂµÃ Â®Â•Ã Â¯Âˆ'),
(253, 'tamil', '0', 'language', 'Ã Â®Â®Ã Â¯ÂŠÃ Â®Â´Ã Â®Â¿'),
(255, 'tamil', '0', 'languageName', 'Ã Â®Â¤Ã Â®Â®Ã Â®Â¿Ã Â®Â´Ã Â¯Â'),
(257, 'tamil', '0', 'male', 'Ã Â®Â†Ã Â®Â£Ã Â¯Â'),
(259, 'tamil', '0', 'middleName', 'Ã Â®Â¨Ã Â®ÂŸÃ Â¯ÂÃ Â®ÂªÃ Â¯Â Ã Â®ÂªÃ Â¯Â†Ã Â®Â¯Ã Â®Â°Ã Â¯Â'),
(261, 'tamil', '0', 'phone', 'Ã Â®Â¤Ã Â¯ÂŠÃ Â®Â²Ã Â¯ÂˆÃ Â®ÂªÃ Â¯Â‡Ã Â®ÂšÃ Â®Â¿ Ã Â®ÂŽÃ Â®Â£Ã Â¯Â'),
(263, 'tamil', '0', 'zip', 'Ã Â®Â¤Ã Â®ÂªÃ Â®Â¾Ã Â®Â²Ã Â¯Â Ã Â®Â‡Ã Â®Â²Ã Â®Â•Ã Â¯ÂÃ Â®Â•Ã Â®Â®Ã Â¯Â'),
(265, 'tamil', '0', 'keyNote', 'Ã Â®Â•Ã Â®ÂŸÃ Â¯ÂÃ Â®ÂŸÃ Â®Â¾Ã Â®Â¯Ã Â®Â®Ã Â¯Â (Ã Â®ÂªÃ Â¯Â‚Ã Â®Â°Ã Â¯ÂÃ Â®Â¤Ã Â¯ÂÃ Â®Â¤Ã Â®Â¿ Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯ Ã Â®ÂµÃ Â¯Â‡Ã Â®Â£Ã Â¯ÂÃ Â®ÂŸÃ Â®Â¿Ã Â®Â¯ Ã Â®Â¤Ã Â®Â•Ã Â®ÂµÃ Â®Â²Ã Â¯Â Ã Â®Â•Ã Â®Â³Ã Â®Â®Ã Â¯Â)'),
(267, 'tamil', '0', 'selectCountry', 'Ã Â®Â¨Ã Â®Â¾Ã Â®ÂŸÃ Â¯Â - Ã Â®Â¤Ã Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®ÂµÃ Â¯Â Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯Ã Â®ÂµÃ Â¯ÂÃ Â®Â®Ã Â¯Â'),
(269, 'tamil', '0', 'selectSuffix', 'Ã Â®ÂªÃ Â®Â¿Ã Â®Â©Ã Â¯ÂÃ Â®ÂšÃ Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®Â•Ã Â¯ÂÃ Â®Â•Ã Â¯Âˆ - Ã Â®Â¤Ã Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®ÂµÃ Â¯Â Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯Ã Â®ÂµÃ Â¯ÂÃ Â®Â®Ã Â¯Â'),
(271, 'tamil', '0', 'selectType', 'Ã Â®ÂµÃ Â®Â•Ã Â¯Âˆ - Ã Â®Â¤Ã Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®ÂµÃ Â¯Â Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯Ã Â®ÂµÃ Â¯ÂÃ Â®Â®Ã Â¯Â'),
(273, 'tamil', '0', 'state', 'Ã Â®Â®Ã Â®Â¾Ã Â®Â¨Ã Â®Â¿Ã Â®Â²Ã Â®Â®Ã Â¯Â'),
(275, 'tamil', '0', 'street', 'Ã Â®ÂµÃ Â¯Â€Ã Â®Â¤Ã Â®Â¿'),
(277, 'tamil', '0', 'lastName', 'Ã Â®Â•Ã Â¯ÂÃ Â®ÂŸÃ Â¯ÂÃ Â®Â®Ã Â¯ÂÃ Â®ÂªÃ Â®ÂªÃ Â¯Â Ã Â®ÂªÃ Â¯Â†Ã Â®Â¯Ã Â®Â°Ã Â¯Â'),
(279, 'tamil ', '1', 'postCodeLength', '6'),
(281, 'lithuanian', '0', 'address', 'Adresas'),
(283, 'lithuanian', '0', 'city', 'Miestas'),
(285, 'lithuanian', '0', 'country', 'Ã…Â alis'),
(287, 'lithuanian', '0', 'dob', 'Gimimo diena'),
(289, 'lithuanian', '0', 'docid', 'Dokumento numeris'),
(291, 'lithuanian', '0', 'female', 'Moteris'),
(293, 'lithuanian', '0', 'firstName', 'Vardas'),
(295, 'lithuanian', '0', 'gender', 'Lytis'),
(297, 'lithuanian', '0', 'house', 'Namo nr. / Pavadinimas'),
(299, 'lithuanian', '0', 'docidtype', 'TapatybÃ„Â—s dokumento tipas'),
(301, 'lithuanian', '0', 'language', 'Kalba'),
(303, 'lithuanian', '0', 'languageName', 'LietuviÃ…Â³'),
(305, 'lithuanian', '0', 'male', 'Vyras'),
(307, 'lithuanian', '0', 'middleName', 'Antras vardas'),
(309, 'lithuanian', '0', 'phone', 'Telefono numeris'),
(311, 'lithuanian', '0', 'zip', 'PaÃ…Â¡to kodas'),
(313, 'lithuanian', '0', 'keyNote', 'Privaloma (nurodytus laukus bÃ…Â«tina uÃ…Â¾pildyti)'),
(315, 'lithuanian', '0', 'selectCountry', 'Pasirinkite Ã…Â¡alÃ„Â¯'),
(317, 'lithuanian', '0', 'selectSuffix', 'Pasirinkite sufiksÃ„Â…'),
(319, 'lithuanian', '0', 'selectType', 'Pasirinkite tipÃ„Â…'),
(321, 'lithuanian', '0', 'state', 'Apskritis'),
(323, 'lithuanian', '0', 'street', 'GatvÃ„Â—'),
(325, 'lithuanian', '0', 'lastName', 'PavardÃ„Â—'),
(327, 'lithuanian', '1', 'postCodeLength', '6');
