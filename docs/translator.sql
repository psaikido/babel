-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb5+lenny6
-- http://www.phpmyadmin.net
--
-- Host: 10.1.0.100:3306
-- Generation Time: Nov 17, 2010 at 02:21 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.14-0.dotdeb.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `babel`
--

-- --------------------------------------------------------

--
-- Table structure for table `translator`
--

DROP TABLE IF EXISTS `translator`;
CREATE TABLE IF NOT EXISTS `translator` (
  `id` int(11) NOT NULL auto_increment,
  `lang` varchar(255) character set latin1 NOT NULL,
  `type` varchar(50) collate utf8_unicode_ci NOT NULL default '0' COMMENT '0=language, 1=validation',
  `fieldName` varchar(255) character set latin1 NOT NULL,
  `fieldValue` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=142 ;

--
-- Dumping data for table `translator`
--

INSERT INTO `translator` (`id`, `lang`, `type`, `fieldName`, `fieldValue`) VALUES
(1, 'eng', '0', 'address', 'Address'),
(2, 'eng', '0', 'city', 'City / Town'),
(3, 'eng', '0', 'country', 'Country'),
(4, 'eng', '0', 'dob', 'Date of Birth (dd mm yyyy)'),
(5, 'eng', '0', 'docidtype', 'ID Document Type'),
(6, 'eng', '0', 'docid', 'Foreign ID'),
(7, 'eng', '0', 'female', 'Female'),
(8, 'eng', '0', 'firstName', 'First Name'),
(9, 'eng', '0', 'gender', 'Gender'),
(10, 'eng', '0', 'house', 'House No. / Name'),
(11, 'eng', '0', 'keyNote', 'These fields are required'),
(12, 'eng', '0', 'language', 'Language'),
(13, 'eng', '0', 'languageName', 'English'),
(14, 'eng', '0', 'lastName', 'Last Name'),
(15, 'eng', '0', 'male', 'Male'),
(16, 'eng', '0', 'middleName', 'Middle Name'),
(17, 'eng', '0', 'phone', 'Phone Number'),
(18, 'eng', '0', 'state', 'State'),
(19, 'eng', '0', 'selectSuffix', 'Select Suffix'),
(20, 'eng', '0', 'selectCountry', 'Select Country'),
(21, 'eng', '0', 'selectType', 'Select Type'),
(22, 'eng', '0', 'street', 'Street'),
(23, 'eng', '0', 'zip', 'Postal / Area Code'),
(24, 'eng', '1', 'postCodeLength', '2'),
(25, 'francais', '0', 'address', 'Adresse'),
(26, 'francais', '0', 'city', 'Ville'),
(27, 'francais', '0', 'country', 'Pays'),
(28, 'francais', '0', 'dob', 'Date de Naisance (jj mm aaaa)'),
(29, 'francais', '0', 'docidtype', 'Type ID Document'),
(30, 'francais', '0', 'docid', 'ID ÃƒÂ‰trange'),
(31, 'francais', '0', 'female', 'Femme'),
(32, 'francais', '0', 'firstName', 'PrÃƒÂ©nom'),
(33, 'francais', '0', 'gender', 'Sexe'),
(34, 'francais', '0', 'house', 'Nombre / Nom de Maison'),
(35, 'francais', '0', 'keyNote', 'Mandataire'),
(36, 'francais', '0', 'language', 'Langue'),
(37, 'francais', '0', 'languageName', 'Francais'),
(38, 'francais', '0', 'lastName', 'Nom'),
(39, 'francais', '0', 'male', 'Homme'),
(40, 'francais', '0', 'middleName', 'DeuxiÃƒÂ¨me PrÃƒÂ©nom'),
(41, 'francais', '0', 'phone', 'TÃƒÂ©lÃƒÂ©phone'),
(42, 'francais', '0', 'selectSuffix', 'SÃƒÂ©lect Suffixe'),
(43, 'francais', '0', 'selectCountry', 'SÃƒÂ©lect Pays'),
(44, 'francais', '0', 'selectType', 'SÃƒÂ©lect Type'),
(45, 'francais', '0', 'state', 'ÃƒÂ‰tat'),
(46, 'francais', '0', 'street', 'Rue'),
(47, 'francais', '0', 'zip', 'Code Postal'),
(48, 'francais', '1', 'postCodeLength', '3'),
(49, 'espanol', '0', 'address', 'DirecciÃƒÂ³n'),
(50, 'espanol', '0', 'city', 'Ciudad'),
(51, 'espanol', '0', 'country', 'Pais'),
(52, 'espanol', '0', 'dob', 'Fecha de Nacimiento (dd mm aaaa)'),
(53, 'espanol', '0', 'docidtype', 'Tipo ID Documento'),
(54, 'espanol', '0', 'docid', 'ID Extranjero'),
(55, 'espanol', '0', 'female', 'Femenino'),
(56, 'espanol', '0', 'firstName', 'Nombre'),
(57, 'espanol', '0', 'gender', 'Sexo'),
(58, 'espanol', '0', 'house', 'Nombre / NÃƒÂºmero de Casa'),
(59, 'espanol', '0', 'keyNote', 'Necesario'),
(60, 'espanol', '0', 'language', 'Idioma'),
(61, 'espanol', '0', 'languageName', 'EspaÃƒÂ±ol'),
(62, 'espanol', '0', 'lastName', 'Apellido'),
(63, 'espanol', '0', 'male', 'Masculino'),
(64, 'espanol', '0', 'middleName', 'Segundo Nombre'),
(65, 'espanol', '0', 'phone', 'TelÃƒÂ©fono'),
(66, 'espanol', '0', 'selectSuffix', 'Elegir Sufijo'),
(67, 'espanol', '0', 'selectCountry', 'Elegir Pais'),
(68, 'espanol', '0', 'selectType', 'Elegir Tipo'),
(69, 'espanol', '0', 'state', 'Estado'),
(70, 'espanol', '0', 'street', 'Calle'),
(71, 'espanol', '0', 'zip', 'CÃƒÂ³digo Postal'),
(72, 'espanol', '1', 'postCodeLength', '4'),
(73, 'chinese', '0', 'address', 'Ã¥ÂœÂ°Ã¥ÂÂ€'),
(74, 'chinese', '0', 'city', 'Ã¥ÂŸÂŽÃ¥Â¸Â‚/Ã©Â•Â‡'),
(75, 'chinese', '0', 'country', 'Ã¥Â›Â½Ã¥Â®Â¶'),
(76, 'chinese', '0', 'dob', 'Ã¥Â‡ÂºÃ§Â”ÂŸÃ¦Â—Â¥Ã¦ÂœÂŸ'),
(77, 'chinese', '0', 'docidtype', 'Ã¨Â¯ÂÃ¤Â»Â¶Ã§Â±Â»Ã¥ÂžÂ‹'),
(78, 'chinese', '0', 'docid', 'ID Extranjero'),
(79, 'chinese', '0', 'female', 'Ã¥Â¥Â³'),
(80, 'chinese', '0', 'firstName', 'Ã¥ÂÂ'),
(81, 'chinese', '0', 'gender', 'Ã¦Â€Â§Ã¥ÂˆÂ«'),
(82, 'chinese', '0', 'house', 'Ã©Â—Â¨Ã§Â‰ÂŒÃ¥ÂÂ·'),
(83, 'chinese', '0', 'keyNote', 'Necesario'),
(84, 'chinese', '0', 'language', 'Ã¨Â¯Â­Ã¨Â¨Â€'),
(85, 'chinese', '0', 'languageName', 'Ã¨Â¯Â­Ã¨Â¨Â€'),
(86, 'chinese', '0', 'lastName', 'Ã¥Â§Â“'),
(87, 'chinese', '0', 'male', 'Ã§Â”Â·'),
(88, 'chinese', '0', 'middleName', '0'),
(89, 'chinese', '0', 'phone', 'Ã§Â”ÂµÃ¨Â¯ÂÃ¥ÂÂ·Ã§Â Â'),
(90, 'chinese', '0', 'selectSuffix', 'Elegir Sufijo'),
(91, 'chinese', '0', 'selectCountry', 'Elegir Pais'),
(92, 'chinese', '0', 'selectType', 'Elegir Tipo'),
(93, 'chinese', '0', 'state', 'Ã§ÂœÂÃ¤Â»Â½'),
(94, 'chinese', '0', 'street', 'Ã¨Â¡Â—Ã©ÂÂ“'),
(95, 'chinese', '0', 'zip', 'Ã©Â‚Â®Ã§Â¼Â–'),
(96, 'chinese', '1', 'postCodeLength', '5'),
(97, 'polish', '0', 'address', 'Adres'),
(98, 'polish', '0', 'city', 'Miasto'),
(99, 'polish', '0', 'country', 'PaÃ…Â„stwo'),
(100, 'polish', '0', 'dob', 'Data urodzenia'),
(101, 'polish', '0', 'docidtype', 'Typ Dokumentu'),
(102, 'polish', '0', 'docid', 'Numer Dokumentu'),
(103, 'polish', '0', 'female', 'Kobieta'),
(104, 'polish', '0', 'firstName', 'ImiÃ„Â™'),
(105, 'polish', '0', 'gender', 'PÃ…Â‚eÃ„Â‡'),
(106, 'polish', '0', 'house', 'Numer/Nazwa domu.'),
(107, 'polish', '0', 'keyNote', 'NiezbÃ„Â™dny'),
(108, 'polish', '0', 'language', 'JÃ„Â™zyk'),
(109, 'polish', '0', 'languageName', 'Polski'),
(110, 'polish', '0', 'lastName', 'Nazwisko'),
(111, 'polish', '0', 'male', 'MÃ„Â™Ã…Â¼czyzna'),
(112, 'polish', '0', 'middleName', 'Drugie imiÃ„Â™'),
(113, 'polish', '0', 'phone', 'Numer Telefonu'),
(114, 'polish', '0', 'state', 'Stan'),
(115, 'polish', '0', 'street', 'Ulica'),
(116, 'polish', '0', 'zip', 'Kod pocztowy'),
(117, 'polish', '1', 'postCodeLength', '6'),
(118, 'tamil', '0', 'address', 'Ã Â®Â®Ã Â¯ÂÃ Â®Â•Ã Â®ÂµÃ Â®Â°Ã Â®Â¿'),
(119, 'tamil', '0', 'city', 'Ã Â®Â®Ã Â®Â¾Ã Â®Â¨Ã Â®Â•Ã Â®Â°Ã Â¯Â/Ã Â®ÂªÃ Â®ÂŸÃ Â¯ÂÃ Â®ÂŸÃ Â®Â£Ã Â®Â®Ã Â¯Â'),
(120, 'tamil', '0', 'country', 'Ã Â®Â¨Ã Â®Â¾Ã Â®ÂŸÃ Â¯Â'),
(121, 'tamil', '0', 'dob', 'Ã Â®ÂªÃ Â®Â¿Ã Â®Â±Ã Â®Â¨Ã Â¯ÂÃ Â®Â¤ Ã Â®Â¨Ã Â®Â¾Ã Â®Â³Ã Â¯Â'),
(122, 'tamil', '0', 'docid', 'Ã Â®ÂªÃ Â®Â¤Ã Â¯ÂÃ Â®Â¤Ã Â®Â¿Ã Â®Â°Ã Â®Â®Ã Â¯Â Ã Â®ÂŽÃ Â®Â£Ã Â¯ÂÃ Â®Â£Ã Â®Â¿Ã Â®Â•Ã Â¯ÂÃ Â®Â•Ã Â¯Âˆ'),
(123, 'tamil', '0', 'female', 'Ã Â®ÂªÃ Â¯Â†Ã Â®Â£Ã Â¯Â'),
(124, 'tamil', '0', 'firstName', 'Ã Â®Â®Ã Â¯ÂÃ Â®Â¤Ã Â®Â²Ã Â¯Â Ã Â®ÂªÃ Â¯Â†Ã Â®Â¯Ã Â®Â°Ã Â¯Â'),
(125, 'tamil', '0', 'gender', 'Ã Â®ÂªÃ Â®Â¾Ã Â®Â²Ã Â¯Â'),
(126, 'tamil', '0', 'house', 'Ã Â®ÂµÃ Â¯Â€Ã Â®ÂŸÃ Â¯ÂÃ Â®ÂŸÃ Â¯Â Ã Â®ÂŽÃ Â®Â£Ã Â¯Â'),
(127, 'tamil', '0', 'docidtype', 'Ã Â®ÂªÃ Â®Â¤Ã Â¯ÂÃ Â®Â¤Ã Â®Â¿Ã Â®Â°Ã Â®Â®Ã Â¯Â Ã Â®ÂµÃ Â®Â•Ã Â¯Âˆ'),
(128, 'tamil', '0', 'language', 'Ã Â®Â®Ã Â¯ÂŠÃ Â®Â´Ã Â®Â¿'),
(129, 'tamil', '0', 'languageName', 'Ã Â®Â¤Ã Â®Â®Ã Â®Â¿Ã Â®Â´Ã Â¯Â'),
(130, 'tamil', '0', 'male', 'Ã Â®Â†Ã Â®Â£Ã Â¯Â'),
(131, 'tamil', '0', 'middleName', 'Ã Â®Â¨Ã Â®ÂŸÃ Â¯ÂÃ Â®ÂªÃ Â¯Â Ã Â®ÂªÃ Â¯Â†Ã Â®Â¯Ã Â®Â°Ã Â¯Â'),
(132, 'tamil', '0', 'phone', 'Ã Â®Â¤Ã Â¯ÂŠÃ Â®Â²Ã Â¯ÂˆÃ Â®ÂªÃ Â¯Â‡Ã Â®ÂšÃ Â®Â¿ Ã Â®ÂŽÃ Â®Â£Ã Â¯Â'),
(133, 'tamil', '0', 'zip', 'Ã Â®Â¤Ã Â®ÂªÃ Â®Â¾Ã Â®Â²Ã Â¯Â Ã Â®Â‡Ã Â®Â²Ã Â®Â•Ã Â¯ÂÃ Â®Â•Ã Â®Â®Ã Â¯Â'),
(134, 'tamil', '0', 'keyNote', 'Ã Â®Â•Ã Â®ÂŸÃ Â¯ÂÃ Â®ÂŸÃ Â®Â¾Ã Â®Â¯Ã Â®Â®Ã Â¯Â (Ã Â®ÂªÃ Â¯Â‚Ã Â®Â°Ã Â¯ÂÃ Â®Â¤Ã Â¯ÂÃ Â®Â¤Ã Â®Â¿ Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯ Ã Â®ÂµÃ Â¯Â‡Ã Â®Â£Ã Â¯ÂÃ Â®ÂŸÃ Â®Â¿Ã Â®Â¯ Ã Â®Â¤Ã Â®Â•Ã Â®ÂµÃ Â®Â²Ã Â¯Â Ã Â®Â•Ã Â®Â³Ã Â®Â®Ã Â¯Â)'),
(135, 'tamil', '0', 'selectCountry', 'Ã Â®Â¨Ã Â®Â¾Ã Â®ÂŸÃ Â¯Â - Ã Â®Â¤Ã Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®ÂµÃ Â¯Â Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯Ã Â®ÂµÃ Â¯ÂÃ Â®Â®Ã Â¯Â'),
(136, 'tamil', '0', 'selectSuffix', 'Ã Â®ÂªÃ Â®Â¿Ã Â®Â©Ã Â¯ÂÃ Â®ÂšÃ Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®Â•Ã Â¯ÂÃ Â®Â•Ã Â¯Âˆ - Ã Â®Â¤Ã Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®ÂµÃ Â¯Â Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯Ã Â®ÂµÃ Â¯ÂÃ Â®Â®Ã Â¯Â'),
(137, 'tamil', '0', 'selectType', 'Ã Â®ÂµÃ Â®Â•Ã Â¯Âˆ - Ã Â®Â¤Ã Â¯Â‡Ã Â®Â°Ã Â¯ÂÃ Â®ÂµÃ Â¯Â Ã Â®ÂšÃ Â¯Â†Ã Â®Â¯Ã Â¯ÂÃ Â®Â¯Ã Â®ÂµÃ Â¯ÂÃ Â®Â®Ã Â¯Â'),
(138, 'tamil', '0', 'state', 'Ã Â®Â®Ã Â®Â¾Ã Â®Â¨Ã Â®Â¿Ã Â®Â²Ã Â®Â®Ã Â¯Â'),
(139, 'tamil', '0', 'street', 'Ã Â®ÂµÃ Â¯Â€Ã Â®Â¤Ã Â®Â¿'),
(140, 'tamil', '0', 'lastName', 'Ã Â®Â•Ã Â¯ÂÃ Â®ÂŸÃ Â¯ÂÃ Â®Â®Ã Â¯ÂÃ Â®ÂªÃ Â®ÂªÃ Â¯Â Ã Â®ÂªÃ Â¯Â†Ã Â®Â¯Ã Â®Â°Ã Â¯Â'),
(141, 'tamil ', '1', 'postCodeLength', '6');
