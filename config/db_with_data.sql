-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 12:39 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `ADDRESS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `ADDRESS` varchar(128) NOT NULL,
  `BARANGAY` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ADDRESS_ID`, `PERSON_ID`, `ADDRESS`, `BARANGAY`) VALUES
('890e3ebb0b7011ee', 'd9fe583718de4946', '9247 Ian Haven\r\nErinchester, VA 87235', 'Caingin'),
('891360ce0b7011ee', 'b8c3bd73afe54da4', '234 Michael Oval Apt. 683\r\nJasonchester, PA 40690', 'Kanluran (Poblacion Uno)'),
('89187fa80b7011ee', '868a840404be48a7', 'USNS Walker\r\nFPO AA 04239', 'Caingin'),
('891bddd50b7011ee', '55ce9b1e6d414117', '7205 Burch Lodge Suite 938\r\nNew Gregorytown, PA 49817', 'Macabling'),
('891fd1f20b7011ee', '04f6ca9e8162452d', '6768 Sanders Manors Apt. 116\r\nLake Vickie, WI 88946', 'Don Jose'),
('8923039d0b7011ee', '3d0100eb50ec4803', '69774 Michael Stravenue Apt. 524\r\nHortonstad, SC 24910', 'Malusak (Poblacion Dos)'),
('89260ad50b7011ee', '4bd9032f089543ab', '1364 Duran Shore\r\nMichelleberg, AS 57816', 'Don Jose'),
('892909930b7011ee', 'c3f89c4737184cfd', '64914 Danielle Field Apt. 946\r\nNew Michael, PW 88485', 'Macabling'),
('892c2c3f0b7011ee', 'df8653ff92324149', 'USS Macdonald\r\nFPO AE 56957', 'Market Area (Poblacion Tres)'),
('892f1ae00b7011ee', '50c670cc63014f4b', '562 Richard Pines\r\nClaymouth, VI 79955', 'Sinalhan'),
('8931e3640b7011ee', 'cfc4c5d00659414a', '67213 Nathan Orchard Suite 649\r\nChristophermouth, KY 30914', 'Pulong Santa Cruz'),
('8934bcb20b7011ee', '3490aa2fc6c0480e', 'PSC 2028, Box 9956\r\nAPO AE 17305', 'Sinalhan'),
('8937a82f0b7011ee', '961228c1960f4d81', '313 Michael Mountains\r\nRobertsfort, PA 04622', 'Market Area (Poblacion Tres)'),
('893a6f010b7011ee', '9517f3d1a07b4f83', '1645 Brandon Road Apt. 716\r\nHallborough, MT 87533', 'Santo Domingo'),
('893d49ee0b7011ee', '13cfe3b3ae2c41cb', '13240 Sandra Vista\r\nLake Dawn, HI 92625', 'Market Area (Poblacion Tres)'),
('89400e050b7011ee', 'a2cc0570fdcb4be1', '1383 Donald Throughway\r\nSouth Bryanport, SC 64481', 'Don Jose'),
('8942ec930b7011ee', '56bcba23f8024a28', '9624 Sherry Ford Apt. 258\r\nHeatherchester, CA 21760', 'Sinalhan'),
('8945b23c0b7011ee', 'b4f3561f63b34ab6', '16986 Reed Gardens Suite 509\r\nNorth Markmouth, KY 99466', 'Aplaya'),
('894880580b7011ee', 'e1e140a31edb410e', '319 Steele Walks Suite 914\r\nMollystad, NH 04966', 'Dita'),
('894b5acf0b7011ee', '1829686212ee418c', '349 Reid Canyon Apt. 150\r\nMeganport, CT 02188', 'Malitlit'),
('894e1a9e0b7011ee', '2d9435437a5e499f', '5096 Larson Ferry Suite 005\r\nLake Tylerfurt, NV 24168', 'Sinalhan'),
('8950f1c60b7011ee', 'c90abe1dde624c3e', '48627 Petty Estate\r\nHowemouth, PA 54976', 'Dila'),
('8953c35c0b7011ee', 'ed3866a0777042e2', 'Unit 0087 Box 6182\r\nDPO AA 15611', 'Dila'),
('89569f640b7011ee', 'fa5ab88fb2424f80', '061 James Court\r\nJenkinsstad, OR 56180', 'Dila'),
('895978da0b7011ee', '0839d26a2bcb4737', '554 Burton Shores Suite 122\r\nMichaelshire, MD 58621', 'Don Jose'),
('895c49b40b7011ee', 'bbb7696ceb4c4e1d', '1674 John Lane\r\nNew William, PA 49543', 'Pooc (Pook)'),
('895f11520b7011ee', '037f65e8b4e2417e', '35416 Stokes Light Suite 855\r\nBowersberg, RI 61358', 'Pulong Santa Cruz'),
('8961f0220b7011ee', '9e7b529864114cfc', '0273 Ramirez Cliff Apt. 657\r\nIngramside, TX 87761', 'Balibago'),
('8964b1a50b7011ee', 'ddd34109e5674766', '4636 Stevenson Burg Suite 861\r\nNew Ryan, WY 50752', 'Tagapo'),
('89677ce30b7011ee', '69345e7eb068430a', '75194 Casey Plaza Apt. 206\r\nJoshuaborough, WA 57600', 'Dita'),
('896a51080b7011ee', '21820c9a156b467e', '48592 Linda Key\r\nNew Arthurland, CT 90834', 'Malitlit'),
('896c79290b7011ee', 'cc3e4750aaf2491a', '6446 Chase Gateway\r\nLake Tim, VA 56871', 'Dila'),
('89732b700b7011ee', 'f3d95a623170467f', '145 Wells Ridges\r\nVictorside, KS 65607', 'Aplaya'),
('897644350b7011ee', '09dcd1deb45e42c6', '546 Brenda Ports Suite 271\r\nNorth Robert, AZ 60066', 'Dita'),
('89792ce00b7011ee', '1dc9c43740364852', '93982 Nguyen Grove\r\nLake Christian, AS 01698', 'Pooc (Pook)'),
('897b6aaa0b7011ee', 'f2d1b670df704dc9', '172 Joshua Roads Suite 697\r\nGonzalezshire, CO 06710', 'Ibaba'),
('897dab6f0b7011ee', '9e5e97ccb97949e1', '57805 Gerald Plaza\r\nJenniferville, AK 01536', 'Macabling'),
('8980df5a0b7011ee', '551d8d4bc23845e1', '952 Amanda Fort Suite 699\r\nHaroldchester, VA 13099', 'Santo Domingo'),
('89830a900b7011ee', '721f69f56ce04ea2', '135 Wells Road Suite 955\r\nWeekston, AR 89709', 'Dita'),
('898547ed0b7011ee', '18b7877b2353439f', '04393 Kennedy Well Apt. 269\r\nMayerland, AK 97475', 'Kanluran (Poblacion Uno)'),
('8987744a0b7011ee', 'f7aee3ead13848e7', 'Unit 4886 Box 5491\r\nDPO AE 47171', 'Malitlit'),
('898a01e60b7011ee', '9174bf6c55594319', '01137 Ronald Skyway Apt. 058\r\nNew Danielburgh, NH 84795', 'Pooc (Pook)'),
('898c94150b7011ee', '11958f35c9a94275', '251 Porter Villages\r\nNorth Margaret, WV 73118', 'Dila'),
('898f534e0b7011ee', '55db7096c289453a', '765 Mitchell Corners Apt. 808\r\nDanielton, HI 76254', 'Santo Domingo'),
('8991dfa50b7011ee', 'eaa3631ba23e4a27', '4038 Mendoza Mount\r\nRobinburgh, SC 20223', 'Balibago'),
('899439e60b7011ee', '0aefe97243ac4d65', '6360 Mack Grove\r\nLindsayfurt, SC 97851', 'Malusak (Poblacion Dos)'),
('89965ad70b7011ee', 'dc122893190e473c', '29045 Kelley Garden\r\nAvilafort, NJ 13662', 'Sinalhan'),
('89988bb40b7011ee', '254cbf96cd0042d1', '414 Anderson Loop\r\nVegabury, ND 06241', 'Sinalhan'),
('899aad620b7011ee', '6eeb9ee5a68540cd', '80432 Robert Lodge\r\nWest Matthewville, NE 58651', 'Malusak (Poblacion Dos)'),
('899cf5a70b7011ee', 'c2d7e5d420914ddf', '27377 Kenneth Knoll Apt. 021\r\nEast Arthur, IA 41831', 'Dita'),
('899f149c0b7011ee', '2cfb88d473634e11', '38660 Burke Shoals\r\nTimothybury, MI 82273', 'Caingin'),
('89a14be00b7011ee', 'f505368949bc4476', '966 Ashley Park\r\nMeghantown, PA 07580', 'Malusak (Poblacion Dos)'),
('89a373d40b7011ee', '3c9bd17a356649d9', '58516 Corey Center Suite 379\r\nThomasberg, GA 06773', 'Pooc (Pook)'),
('89a5aa260b7011ee', '6afdb667435b4336', 'PSC 1290, Box 9815\r\nAPO AP 73894', 'Tagapo'),
('89a7d6e30b7011ee', '54d53c2e0a4d4621', '6595 Miller Crest Apt. 435\r\nFloresland, MS 10684', 'Ibaba'),
('89aa0dbf0b7011ee', '456ccf1a88c34b9d', 'PSC 2728, Box 3604\r\nAPO AE 39287', 'Market Area (Poblacion Tres)'),
('89ac3b300b7011ee', '5b4a5c6c4fb44b6a', '123 Michael Causeway\r\nRiceport, AR 87557', 'Sinalhan'),
('89ae58650b7011ee', '0cd6dc47b6f246a5', '48621 Gates Trace Suite 680\r\nJamesshire, AL 28575', 'Malitlit'),
('89b08b4f0b7011ee', 'aafa0870274b4ad3', '602 Collins Villages\r\nPort Aimeehaven, LA 86412', 'Malusak (Poblacion Dos)'),
('89b2b3490b7011ee', 'ad18433f173e43eb', '306 Dana Knoll\r\nPort Michelle, FL 65921', 'Dita'),
('89b4ead10b7011ee', '2ad1e6c7b379422d', '5343 Melanie Island Suite 567\r\nEast Stephen, MO 61542', 'Balibago'),
('89b62ec60b7011ee', '5fa7a2e0e06e437e', '17971 Amy Track Apt. 684\r\nWest Geneport, CO 75350', 'Macabling'),
('89b780590b7011ee', '48517145be2343a1', '68403 Evans Point\r\nJenniferland, NE 59190', 'Market Area (Poblacion Tres)'),
('89b8d5e40b7011ee', '1bd3397f81704372', '98741 Adams Divide Apt. 354\r\nSerranoberg, OR 73849', 'Kanluran (Poblacion Uno)'),
('89ba183a0b7011ee', '6af02a744dbb46c0', '03384 Jennifer Burgs Suite 210\r\nSarastad, WI 03874', 'Sinalhan'),
('89bb679d0b7011ee', '8228426e607348e8', '32855 Melissa Ports\r\nLake Dakota, CT 62906', 'Aplaya'),
('89bcc1be0b7011ee', '143b5ef27a0a45d7', '7981 Shepherd Cape Suite 232\r\nYounghaven, AL 18339', 'Don Jose'),
('89be114b0b7011ee', '690a6379d664403d', '09350 Kent Landing Apt. 822\r\nJohnside, MO 34483', 'Pooc (Pook)'),
('89bf5dc20b7011ee', '3d0fe2c3f4ed4019', '48973 Saunders Mountain\r\nNorth Kimberly, UT 84932', 'Caingin'),
('89c0b53b0b7011ee', 'dc1e60c49cf24f42', '2449 Rodriguez Fort Apt. 330\r\nNew Allen, MI 76763', 'Kanluran (Poblacion Uno)'),
('89c2135d0b7011ee', 'accd5b8017a5410d', '26271 Kyle Estates\r\nPort Heidi, PA 37345', 'Pulong Santa Cruz'),
('89c353bb0b7011ee', '878697dd861347ff', '162 Joy Forge\r\nMarcburgh, TX 20227', 'Don Jose'),
('89c4a80f0b7011ee', '2ce2dbbeec264382', '41560 Gonzalez Burgs Apt. 288\r\nStewartstad, NE 73818', 'Caingin'),
('89c5ff080b7011ee', '9e3a4c0858e44487', '82763 Rebecca Wall\r\nBrowningville, CT 71607', 'Balibago'),
('89c74ad40b7011ee', 'dd49e4eeeb294a7e', '4972 Beck Islands Suite 532\r\nPetersonfurt, IA 70302', 'Aplaya'),
('89c8910d0b7011ee', 'd3c52282eae34747', 'Unit 3256 Box 2856\r\nDPO AA 13912', 'Dita'),
('89c9dec90b7011ee', 'd503692d0bfe467e', '9358 Tucker Crossroad Suite 377\r\nMicheletown, RI 56289', 'Sinalhan'),
('89cb3b2c0b7011ee', '523d328750864305', '5797 Smith Locks Suite 500\r\nPort Chad, GA 04923', 'Kanluran (Poblacion Uno)'),
('89cc8c460b7011ee', '8bf2413600fb48bc', 'PSC 7051, Box 9678\r\nAPO AA 10981', 'Dila'),
('89cdd1190b7011ee', '3a7a512d94614703', '808 Perez Plains Suite 087\r\nLake Amandaberg, AR 08240', 'Pooc (Pook)'),
('89cf2c2a0b7011ee', 'ba1a432d24e44381', '73017 Johnson Pass\r\nPort Douglasburgh, OK 74928', 'Tagapo'),
('89d07e250b7011ee', '0147126391b64d3c', '54435 Rebecca Underpass\r\nKerriport, OR 33946', 'Pooc (Pook)'),
('89d1c6ed0b7011ee', 'c67beabdd0784a12', '797 Brittney Rapids\r\nLaurenburgh, TX 39709', 'Santo Domingo'),
('89d3136b0b7011ee', 'b774cebad7c143c3', '02842 Claudia Gateway\r\nPort Justinfurt, OR 28301', 'Kanluran (Poblacion Uno)'),
('89d46a930b7011ee', '9195d3823ae34d0f', '655 Adrian Summit Apt. 507\r\nJoshuashire, NV 37988', 'Dita'),
('89d5b28e0b7011ee', 'eeff6e289fae4e5a', '322 Patterson Lodge Suite 716\r\nNew Kevin, RI 53746', 'Pulong Santa Cruz'),
('89d6fc3a0b7011ee', 'a0caa1631ca14481', '2923 Hill Ports\r\nAngelamouth, PR 20989', 'Caingin'),
('89d853a30b7011ee', 'bd384b7ceb344931', '073 Marshall Underpass Suite 699\r\nWest Christinemouth, NJ 97669', 'Labas'),
('89d99f860b7011ee', '4c7b1cbb88ba4d03', '566 Joshua Ways Apt. 085\r\nHardinshire, AK 96500', 'Macabling'),
('89dadfa30b7011ee', 'f75bf1c2a9e249b6', '07902 Carroll Villages\r\nPort William, SD 53264', 'Balibago');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `APPLICATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `APPLICATION_TYPE` varchar(16) NOT NULL,
  `APPLICANT_TYPE` varchar(16) NOT NULL,
  `APPLICATION_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `APPLICATION_STATUS` varchar(16) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`APPLICATION_ID`, `PERSON_ID`, `APPLICATION_TYPE`, `APPLICANT_TYPE`, `APPLICATION_DATE`, `APPLICATION_STATUS`) VALUES
('890eace30b7011ee', 'd9fe583718de4946', 'New Application', 'PWD', '2023-06-15 19:34:05', 'Pending'),
('8913a78e0b7011ee', 'b8c3bd73afe54da4', 'New Application', 'PWD', '2023-06-15 19:34:05', 'Pending'),
('8918c5200b7011ee', '868a840404be48a7', 'New Application', 'PWD', '2023-06-15 19:34:05', 'Pending'),
('891c179c0b7011ee', '55ce9b1e6d414117', 'New Application', 'PWD', '2023-06-15 19:34:05', 'Pending'),
('89200d020b7011ee', '04f6ca9e8162452d', 'New Application', 'PWD', '2023-06-15 19:34:05', 'Pending'),
('89232f130b7011ee', '3d0100eb50ec4803', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('892641080b7011ee', '4bd9032f089543ab', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('89294c460b7011ee', 'c3f89c4737184cfd', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('892c67d00b7011ee', 'df8653ff92324149', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('892f4fac0b7011ee', '50c670cc63014f4b', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('89321aeb0b7011ee', 'cfc4c5d00659414a', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8934f4ce0b7011ee', '3490aa2fc6c0480e', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8937dfa00b7011ee', '961228c1960f4d81', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('893aa6350b7011ee', '9517f3d1a07b4f83', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('893d7ff80b7011ee', '13cfe3b3ae2c41cb', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('894044960b7011ee', 'a2cc0570fdcb4be1', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('894322110b7011ee', '56bcba23f8024a28', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8945f4090b7011ee', 'b4f3561f63b34ab6', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8948b81b0b7011ee', 'e1e140a31edb410e', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('894b909c0b7011ee', '1829686212ee418c', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('894e51780b7011ee', '2d9435437a5e499f', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('895127350b7011ee', 'c90abe1dde624c3e', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8953f9a20b7011ee', 'ed3866a0777042e2', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8956d4da0b7011ee', 'fa5ab88fb2424f80', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8959aece0b7011ee', '0839d26a2bcb4737', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('895c7eef0b7011ee', 'bbb7696ceb4c4e1d', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('895f47b50b7011ee', '037f65e8b4e2417e', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('896225b40b7011ee', '9e7b529864114cfc', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8964f3e80b7011ee', 'ddd34109e5674766', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('8967b2fc0b7011ee', '69345e7eb068430a', 'New Application', 'PWD', '2023-06-15 19:34:06', 'Pending'),
('896a89550b7011ee', '21820c9a156b467e', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('896caf7a0b7011ee', 'cc3e4750aaf2491a', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('8973a54e0b7011ee', 'f3d95a623170467f', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('897689420b7011ee', '09dcd1deb45e42c6', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89796a3c0b7011ee', '1dc9c43740364852', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('897ba1060b7011ee', 'f2d1b670df704dc9', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('897dfcf90b7011ee', '9e5e97ccb97949e1', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89810ad70b7011ee', '551d8d4bc23845e1', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('8983411d0b7011ee', '721f69f56ce04ea2', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89857fab0b7011ee', '18b7877b2353439f', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('8987ab150b7011ee', 'f7aee3ead13848e7', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('898a481b0b7011ee', '9174bf6c55594319', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('898cd8ad0b7011ee', '11958f35c9a94275', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('898f979e0b7011ee', '55db7096c289453a', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('899224350b7011ee', 'eaa3631ba23e4a27', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('899470630b7011ee', '0aefe97243ac4d65', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('8996908b0b7011ee', 'dc122893190e473c', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('8998c2a90b7011ee', '254cbf96cd0042d1', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('899ae32c0b7011ee', '6eeb9ee5a68540cd', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('899d2b790b7011ee', 'c2d7e5d420914ddf', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('899f4b870b7011ee', '2cfb88d473634e11', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89a1817a0b7011ee', 'f505368949bc4476', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89a3a9b70b7011ee', '3c9bd17a356649d9', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89a5e10e0b7011ee', '6afdb667435b4336', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89a80d6e0b7011ee', '54d53c2e0a4d4621', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89aa445e0b7011ee', '456ccf1a88c34b9d', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89ac72310b7011ee', '5b4a5c6c4fb44b6a', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89ae8fe30b7011ee', '0cd6dc47b6f246a5', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89b0c19f0b7011ee', 'aafa0870274b4ad3', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89b2ea3a0b7011ee', 'ad18433f173e43eb', 'New Application', 'Solo Parent', '2023-06-15 19:34:06', 'Pending'),
('89b5210f0b7011ee', '2ad1e6c7b379422d', 'New Application', 'Senior Citizen', '2023-06-15 19:34:06', 'Pending'),
('89b666b40b7011ee', '5fa7a2e0e06e437e', 'New Application', 'Senior Citizen', '2023-06-15 19:34:06', 'Pending'),
('89b7b6b00b7011ee', '48517145be2343a1', 'New Application', 'Senior Citizen', '2023-06-15 19:34:06', 'Pending'),
('89b90b2a0b7011ee', '1bd3397f81704372', 'New Application', 'Senior Citizen', '2023-06-15 19:34:06', 'Pending'),
('89ba50410b7011ee', '6af02a744dbb46c0', 'New Application', 'Senior Citizen', '2023-06-15 19:34:06', 'Pending'),
('89bb9f350b7011ee', '8228426e607348e8', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89bcfa390b7011ee', '143b5ef27a0a45d7', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89be48610b7011ee', '690a6379d664403d', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89bf94820b7011ee', '3d0fe2c3f4ed4019', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89c0edad0b7011ee', 'dc1e60c49cf24f42', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89c246910b7011ee', 'accd5b8017a5410d', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89c38b950b7011ee', '878697dd861347ff', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89c4dee50b7011ee', '2ce2dbbeec264382', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89c636d80b7011ee', '9e3a4c0858e44487', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89c781320b7011ee', 'dd49e4eeeb294a7e', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89c8c74c0b7011ee', 'd3c52282eae34747', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89ca15c20b7011ee', 'd503692d0bfe467e', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89cb729f0b7011ee', '523d328750864305', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89ccb9250b7011ee', '8bf2413600fb48bc', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89ce08980b7011ee', '3a7a512d94614703', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89cf64f90b7011ee', 'ba1a432d24e44381', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d0b4c30b7011ee', '0147126391b64d3c', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d1fcf20b7011ee', 'c67beabdd0784a12', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d349da0b7011ee', 'b774cebad7c143c3', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d49ff30b7011ee', '9195d3823ae34d0f', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d5e86e0b7011ee', 'eeff6e289fae4e5a', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d731c00b7011ee', 'a0caa1631ca14481', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d889a00b7011ee', 'bd384b7ceb344931', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89d9d53e0b7011ee', '4c7b1cbb88ba4d03', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending'),
('89db14670b7011ee', 'f75bf1c2a9e249b6', 'New Application', 'Senior Citizen', '2023-06-15 19:34:07', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `APPOINTMENT_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `citizen_identification_card`
--

CREATE TABLE `citizen_identification_card` (
  `CITIZEN_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `DATE_ISSUED` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `ID_NUMBER` varchar(32) NOT NULL,
  `STATUS` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `CONTACT_DETAILS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `MOBILE_NUMBER` varchar(16) DEFAULT NULL,
  `TELEPHONE_NUMBER` varchar(16) DEFAULT NULL,
  `EMAIL` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`CONTACT_DETAILS_ID`, `PERSON_ID`, `MOBILE_NUMBER`, `TELEPHONE_NUMBER`, `EMAIL`) VALUES
('890efa9f0b7011ee', 'd9fe583718de4946', '4081430422', '', 'ruben14@example.com'),
('8913e7220b7011ee', 'b8c3bd73afe54da4', '+1-770-396-9948x', '', 'samuel82@example.net'),
('891905600b7011ee', '868a840404be48a7', '457-639-1913x326', '', 'natasha56@example.com'),
('891cb0880b7011ee', '55ce9b1e6d414117', '206-218-9850', '', 'ybrown@example.net'),
('892048c40b7011ee', '04f6ca9e8162452d', '001-907-604-4015', '', 'taraortega@example.com'),
('892368240b7011ee', '3d0100eb50ec4803', '697.345.3409', '', 'qsmith@example.org'),
('892685050b7011ee', '4bd9032f089543ab', '(654)843-7821', '', 'newmanjoshua@example.net'),
('892982d10b7011ee', 'c3f89c4737184cfd', '001-357-424-4016', '', 'kblackwell@example.net'),
('892ca1ec0b7011ee', 'df8653ff92324149', '+1-463-930-4657', '', 'thomaskelly@example.net'),
('892f87390b7011ee', '50c670cc63014f4b', '+1-532-682-4582x', '', 'ilawrence@example.org'),
('893250d60b7011ee', 'cfc4c5d00659414a', '001-870-013-1813', '', 'david37@example.net'),
('89352ca60b7011ee', '3490aa2fc6c0480e', '962-249-4105x439', '', 'carrollmichael@example.net'),
('8938172f0b7011ee', '961228c1960f4d81', '319-082-9610x347', '', 'shelby04@example.com'),
('893add060b7011ee', '9517f3d1a07b4f83', '804.835.8993x884', '', 'john40@example.com'),
('893db7d70b7011ee', '13cfe3b3ae2c41cb', '483-229-2800', '', 'nguyenthomas@example.com'),
('89407bc70b7011ee', 'a2cc0570fdcb4be1', '(405)355-1908x19', '', 'baxtermichael@example.net'),
('89434fa20b7011ee', '56bcba23f8024a28', '+1-239-084-9350x', '', 'ypearson@example.net'),
('89462ac50b7011ee', 'b4f3561f63b34ab6', '001-553-815-3524', '', 'melissakennedy@example.org'),
('8948ef2a0b7011ee', 'e1e140a31edb410e', '(946)339-8800', '', 'jclark@example.org'),
('894bc79f0b7011ee', '1829686212ee418c', '(620)237-9155x34', '', 'taylornicole@example.com'),
('894e880e0b7011ee', '2d9435437a5e499f', '(484)479-1932x03', '', 'jfriedman@example.net'),
('895153800b7011ee', 'c90abe1dde624c3e', '+1-790-363-3628', '', 'kimberly66@example.com'),
('895430590b7011ee', 'ed3866a0777042e2', '1166452370', '', 'andrew11@example.net'),
('89570dc50b7011ee', 'fa5ab88fb2424f80', '637.793.2366x429', '', 'ericthomas@example.com'),
('8959e7bf0b7011ee', '0839d26a2bcb4737', '+1-218-548-0528x', '', 'larry62@example.net'),
('895cb7fb0b7011ee', 'bbb7696ceb4c4e1d', '001-036-745-0850', '', 'omartinez@example.net'),
('895f809d0b7011ee', '037f65e8b4e2417e', '+1-632-604-2080x', '', 'nholmes@example.org'),
('89625da90b7011ee', '9e7b529864114cfc', '976.824.5454', '', 'wmeza@example.com'),
('89652bbe0b7011ee', 'ddd34109e5674766', '001-046-653-0605', '', 'jamesgreen@example.com'),
('8967eac20b7011ee', '69345e7eb068430a', '033-295-6411x097', '', 'cruzlaura@example.org'),
('896ac6050b7011ee', '21820c9a156b467e', '+1-842-113-4663', '', 'cpayne@example.com'),
('896ce7150b7011ee', 'cc3e4750aaf2491a', '386.395.0394x844', '', 'mary61@example.net'),
('8973fc3f0b7011ee', 'f3d95a623170467f', '083-886-1106x975', '', 'jasonanderson@example.com'),
('8976cfe40b7011ee', '09dcd1deb45e42c6', '+1-316-358-8582', '', 'fernandezjoseph@example.net'),
('8979a7300b7011ee', '1dc9c43740364852', '(223)120-5506', '', 'benitezcarly@example.org'),
('897bccef0b7011ee', 'f2d1b670df704dc9', '+1-801-583-2179x', '', 'edwardsrandy@example.com'),
('897e3a7d0b7011ee', '9e5e97ccb97949e1', '+1-732-704-7257x', '', 'james60@example.net'),
('898143180b7011ee', '551d8d4bc23845e1', '001-103-889-0832', '', 'christophersmith@example.com'),
('89837c2c0b7011ee', '721f69f56ce04ea2', '(529)422-7781x99', '', 'haleydawn@example.com'),
('8985b82e0b7011ee', '18b7877b2353439f', '874-352-2589', '', 'manuelfletcher@example.net'),
('8987e3400b7011ee', 'f7aee3ead13848e7', '001-128-647-5945', '', 'nelsonmelissa@example.org'),
('898a8ece0b7011ee', '9174bf6c55594319', '001-279-831-2667', '', 'brittany17@example.org'),
('898d10290b7011ee', '11958f35c9a94275', '+1-710-530-1971', '', 'cjohns@example.com'),
('898fdc360b7011ee', '55db7096c289453a', '(639)964-6313', '', 'nicholssarah@example.org'),
('8992696f0b7011ee', 'eaa3631ba23e4a27', '+1-650-676-7015x', '', 'pattersonlaura@example.net'),
('8994a7db0b7011ee', '0aefe97243ac4d65', '939.918.4541', '', 'jennifer33@example.org'),
('8996c7c20b7011ee', 'dc122893190e473c', '(376)347-5404', '', 'tylerfry@example.org'),
('8998faa70b7011ee', '254cbf96cd0042d1', '+1-726-107-9486x', '', 'krystalburton@example.org'),
('899b19ce0b7011ee', '6eeb9ee5a68540cd', '(035)252-8477', '', 'owells@example.net'),
('899d649f0b7011ee', 'c2d7e5d420914ddf', '(752)299-6786x89', '', 'gsloan@example.com'),
('899f847e0b7011ee', '2cfb88d473634e11', '(475)225-3077', '', 'roberta56@example.net'),
('89a1c3550b7011ee', 'f505368949bc4476', '(017)905-7976', '', 'andrewjones@example.net'),
('89a3e22d0b7011ee', '3c9bd17a356649d9', '903.610.3400', '', 'michael62@example.net'),
('89a625040b7011ee', '6afdb667435b4336', '104-655-0908x290', '', 'brittany47@example.org'),
('89a8446f0b7011ee', '54d53c2e0a4d4621', '+1-460-348-7055x', '', 'zhartman@example.net'),
('89aa7c240b7011ee', '456ccf1a88c34b9d', '610-107-7393x890', '', 'amywright@example.org'),
('89ac9f0c0b7011ee', '5b4a5c6c4fb44b6a', '+1-941-290-3373x', '', 'wademargaret@example.com'),
('89aec73d0b7011ee', '0cd6dc47b6f246a5', '985.234.8804x718', '', 'charles67@example.org'),
('89b0f9250b7011ee', 'aafa0870274b4ad3', '423-114-0591', '', 'thompsonana@example.org'),
('89b32c340b7011ee', 'ad18433f173e43eb', '+1-119-399-1847x', '', 'ekim@example.net'),
('89b5593f0b7011ee', '2ad1e6c7b379422d', '001-768-663-7929', '', 'jefferymartinez@example.com'),
('89b69e950b7011ee', '5fa7a2e0e06e437e', '001-146-312-4952', '', 'christopher89@example.org'),
('89b7ee2f0b7011ee', '48517145be2343a1', '+1-061-000-3962', '', 'ufischer@example.com'),
('89b942b10b7011ee', '1bd3397f81704372', '477-314-9889', '', 'ebrowning@example.com'),
('89ba877c0b7011ee', '6af02a744dbb46c0', '109-729-5316', '', 'tomfields@example.org'),
('89bbd6350b7011ee', '8228426e607348e8', '(446)963-5721x05', '', 'ryanlee@example.net'),
('89bd31790b7011ee', '143b5ef27a0a45d7', '553.712.2346', '', 'thomashernandez@example.org'),
('89be7f980b7011ee', '690a6379d664403d', '841-113-1449', '', 'pattersonpenny@example.net'),
('89bfcef80b7011ee', '3d0fe2c3f4ed4019', '(435)293-6381x66', '', 'tina61@example.com'),
('89c125500b7011ee', 'dc1e60c49cf24f42', '(030)790-4945x25', '', 'hodonnell@example.org'),
('89c27e3d0b7011ee', 'accd5b8017a5410d', '(621)146-9107x23', '', 'lauraoliver@example.com'),
('89c3c35f0b7011ee', '878697dd861347ff', '296.205.4376', '', 'michael64@example.com'),
('89c5168a0b7011ee', '2ce2dbbeec264382', '2355209738', '', 'karenkim@example.net'),
('89c66dde0b7011ee', '9e3a4c0858e44487', '098-473-4115', '', 'pricekathryn@example.net'),
('89c7ba2a0b7011ee', 'dd49e4eeeb294a7e', '137-822-0199', '', 'kaylahess@example.org'),
('89c8fed30b7011ee', 'd3c52282eae34747', '(377)324-7843x95', '', 'dana45@example.com'),
('89ca4d080b7011ee', 'd503692d0bfe467e', '(574)715-0016', '', 'jennyreeves@example.net'),
('89cbabf30b7011ee', '523d328750864305', '(132)844-3866', '', 'kelsey82@example.net'),
('89ccf0ef0b7011ee', '8bf2413600fb48bc', '412.696.3777', '', 'robin66@example.org'),
('89ce3fe00b7011ee', '3a7a512d94614703', '(134)551-2028x78', '', 'daniel88@example.com'),
('89cf9c6b0b7011ee', 'ba1a432d24e44381', '530.756.2961', '', 'chavezbrian@example.org'),
('89d0ec190b7011ee', '0147126391b64d3c', '933.022.9597', '', 'anthonyriley@example.org'),
('89d234a90b7011ee', 'c67beabdd0784a12', '001-026-013-7865', '', 'wmosley@example.org'),
('89d381690b7011ee', 'b774cebad7c143c3', '(716)124-8271x09', '', 'pmills@example.com'),
('89d4d7960b7011ee', '9195d3823ae34d0f', '001-190-194-6266', '', 'williamswilliam@example.org'),
('89d61a470b7011ee', 'eeff6e289fae4e5a', '001-851-806-8653', '', 'rcollins@example.net'),
('89d7690e0b7011ee', 'a0caa1631ca14481', '(760)123-6021x48', '', 'millerjohn@example.net'),
('89d8c2060b7011ee', 'bd384b7ceb344931', '(477)118-1853', '', 'chelsea92@example.com'),
('89da0cd70b7011ee', '4c7b1cbb88ba4d03', '(775)533-0046x52', '', 'brandonsanchez@example.net'),
('89db4c510b7011ee', 'f75bf1c2a9e249b6', '(736)569-2581', '', 'usmith@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `employment_details`
--

CREATE TABLE `employment_details` (
  `EMPLOYMENT_DETAILS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `EMPLOYMENT_STATUS` varchar(64) DEFAULT NULL,
  `CATEGORY_OF_EMPLOYMENT` varchar(64) DEFAULT NULL,
  `NATURE_OF_EMPLOYMENT` varchar(64) DEFAULT NULL,
  `COMPANY` varchar(64) DEFAULT NULL,
  `JOB` varchar(64) DEFAULT NULL,
  `OTHER_JOB` varchar(64) DEFAULT NULL,
  `INCOME` varchar(64) DEFAULT NULL,
  `HAS_PENSION` varchar(8) DEFAULT NULL,
  `PENSION` varchar(64) DEFAULT NULL,
  `PENSION_AMOUNT` decimal(12,2) DEFAULT NULL,
  `SSS_NUMBER` varchar(32) DEFAULT NULL,
  `GSIS_NUMBER` varchar(32) DEFAULT NULL,
  `PSN_NUMBER` varchar(32) DEFAULT NULL,
  `IS_PHILHEALTH_MEMBER` varchar(8) DEFAULT NULL,
  `PHILHEALTH_NUMBER` varchar(32) DEFAULT NULL,
  `IS_ACTIVE_VOTER` varchar(8) DEFAULT NULL,
  `IS_4PS_MEMBER` varchar(8) DEFAULT NULL,
  `TOTAL_FAMILY_INCOME` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employment_details`
--

INSERT INTO `employment_details` (`EMPLOYMENT_DETAILS_ID`, `PERSON_ID`, `EMPLOYMENT_STATUS`, `CATEGORY_OF_EMPLOYMENT`, `NATURE_OF_EMPLOYMENT`, `COMPANY`, `JOB`, `OTHER_JOB`, `INCOME`, `HAS_PENSION`, `PENSION`, `PENSION_AMOUNT`, `SSS_NUMBER`, `GSIS_NUMBER`, `PSN_NUMBER`, `IS_PHILHEALTH_MEMBER`, `PHILHEALTH_NUMBER`, `IS_ACTIVE_VOTER`, `IS_4PS_MEMBER`, `TOTAL_FAMILY_INCOME`) VALUES
('890f93ce0b7011ee', 'd9fe583718de4946', 'Unemployed', 'Government', 'Permanent/Regular', '', 'Plant & Machine Operators & Assemblers', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('8914d37a0b7011ee', 'b8c3bd73afe54da4', 'Unemployed', 'Government', 'Emergency', '', 'Plant & Machine Operators & Assemblers', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('8919892b0b7011ee', '868a840404be48a7', 'Employed', 'Government', 'Permanent/Regular', '', 'Plant & Machine Operators & Assemblers', '', '10,000-20,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('891d9de50b7011ee', '55ce9b1e6d414117', 'Self-employed', 'Private', 'Casual', '', 'Professionals', '', '10,000-20,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('8920d0660b7011ee', '04f6ca9e8162452d', 'Unemployed', 'Government', 'Seasonal', '', 'Craft & Related Trade Workers', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('8923ea450b7011ee', '3d0100eb50ec4803', 'Self-employed', 'Private', 'Casual', '', 'Clerical Support Workers', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('89270a5a0b7011ee', '4bd9032f089543ab', 'Student', 'Government', 'Seasonal', '', 'Clerical Support Workers', '', '10,000-20,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('892a06e10b7011ee', 'c3f89c4737184cfd', 'Student', 'Government', 'Emergency', '', 'Technician & Associate Professionals', '', '21,000-40,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('892d15b70b7011ee', 'df8653ff92324149', 'Self-employed', 'Private', 'Casual', '', 'Elementary Occupations', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('892ffab00b7011ee', '50c670cc63014f4b', 'Unemployed', 'Private', 'Casual', '', 'Professionals', '', '21,000-40,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('8932c32d0b7011ee', 'cfc4c5d00659414a', 'Employed', 'Government', 'Casual', '', 'Craft & Related Trade Workers', '', 'Less than 10,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('8935b52a0b7011ee', '3490aa2fc6c0480e', 'Unemployed', 'Government', 'Casual', '', 'Plant & Machine Operators & Assemblers', '', '21,000-40,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('89388b800b7011ee', '961228c1960f4d81', 'Student', 'Private', 'Seasonal', '', 'Armed Forces Occupations', '', 'Less than 10,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('893b51320b7011ee', '9517f3d1a07b4f83', 'Self-employed', 'Private', 'Emergency', '', 'Professionals', '', '10,000-20,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('893e2d730b7011ee', '13cfe3b3ae2c41cb', 'Unemployed', 'Private', 'Seasonal', '', 'Managers', '', '21,000-40,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('8940fd540b7011ee', 'a2cc0570fdcb4be1', 'Student', 'Private', 'Seasonal', '', 'Elementary Occupations', '', 'Less than 10,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('8943c5230b7011ee', '56bcba23f8024a28', 'Employed', 'Private', 'Seasonal', '', 'Craft & Related Trade Workers', '', '21,000-40,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('89469f0e0b7011ee', 'b4f3561f63b34ab6', 'Student', 'Government', 'Casual', '', 'Professionals', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('894964020b7011ee', 'e1e140a31edb410e', 'Self-employed', 'Government', 'Casual', '', 'Service & Sales Workers', '', 'More than 100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('894c3bde0b7011ee', '1829686212ee418c', 'Student', 'Private', 'Casual', '', 'Managers', '', 'Less than 10,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('894f07360b7011ee', '2d9435437a5e499f', 'Self-employed', 'Private', 'Casual', '', 'Craft & Related Trade Workers', '', 'Less than 10,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('8951cbba0b7011ee', 'c90abe1dde624c3e', 'Student', 'Private', 'Casual', '', 'Managers', '', 'Less than 10,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('8954a4d80b7011ee', 'ed3866a0777042e2', 'Employed', 'Private', 'Seasonal', '', 'Craft & Related Trade Workers', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('89578ea50b7011ee', 'fa5ab88fb2424f80', 'Employed', 'Government', 'Permanent/Regular', '', 'Managers', '', 'More than 100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('895a52bb0b7011ee', '0839d26a2bcb4737', 'Employed', 'Private', 'Permanent/Regular', '', 'Elementary Occupations', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('895d2c430b7011ee', 'bbb7696ceb4c4e1d', 'Self-employed', 'Private', 'Seasonal', '', 'Technician & Associate Professionals', '', '21,000-40,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('895ff4580b7011ee', '037f65e8b4e2417e', 'Employed', 'Private', 'Emergency', '', 'Professionals', '', 'Less than 10,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('8962d2480b7011ee', '9e7b529864114cfc', 'Unemployed', 'Government', 'Casual', '', 'Elementary Occupations', '', '41,000-100,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('89659e270b7011ee', 'ddd34109e5674766', 'Employed', 'Private', 'Emergency', '', 'Others', '', '10,000-20,000', NULL, '', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('89685d750b7011ee', '69345e7eb068430a', 'Unemployed', 'Private', 'Permanent/Regular', '', 'Service & Sales Workers', '', '21,000-40,000', NULL, '', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('896b36e30b7011ee', '21820c9a156b467e', '', '', '', 'Andrews PLC', 'Technician & Associate Professionals', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('896d5adb0b7011ee', 'cc3e4750aaf2491a', '', '', '', 'Patrick-Zuniga', 'Skilled Agricultural, Forestry & Fishery Workers', '', '10,000-20,000', NULL, '', NULL, '', '', '', '', '', '', '', '60000.00'),
('8974ae440b7011ee', 'f3d95a623170467f', '', '', '', 'Charles-Rodriguez', 'Technician & Associate Professionals', '', 'More than 100,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('89775c860b7011ee', '09dcd1deb45e42c6', '', '', '', 'Cooper, Wang and Romero', 'Elementary Occupations', '', 'Less than 10,000', NULL, '', NULL, '', '', '', '', '', '', '', '60000.00'),
('897a1e760b7011ee', '1dc9c43740364852', '', '', '', 'Smith LLC', 'Others', '', '10,000-20,000', NULL, '', NULL, '', '', '', '', '', '', '', '50000.00'),
('897c3e830b7011ee', 'f2d1b670df704dc9', '', '', '', 'Rogers PLC', 'Elementary Occupations', '', 'More than 100,000', NULL, '', NULL, '', '', '', '', '', '', '', '60000.00'),
('897eb8940b7011ee', '9e5e97ccb97949e1', '', '', '', 'Howard-Reynolds', 'Armed Forces Occupations', '', '41,000-100,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('8981b73f0b7011ee', '551d8d4bc23845e1', '', '', '', 'Watson Inc', 'Clerical Support Workers', '', 'More than 100,000', NULL, '', NULL, '', '', '', '', '', '', '', '50000.00'),
('8983fb4a0b7011ee', '721f69f56ce04ea2', '', '', '', 'Davis Ltd', 'Technician & Associate Professionals', '', 'More than 100,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('89862bf30b7011ee', '18b7877b2353439f', '', '', '', 'Johnson-Smith', 'Plant & Machine Operators & Assemblers', '', '41,000-100,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('89885a970b7011ee', 'f7aee3ead13848e7', '', '', '', 'Pierce Group', 'Managers', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '30000.00'),
('898b07160b7011ee', '9174bf6c55594319', '', '', '', 'Jones Ltd', 'Others', '', '10,000-20,000', NULL, '', NULL, '', '', '', '', '', '', '', '60000.00'),
('898db1b50b7011ee', '11958f35c9a94275', '', '', '', 'Meyer Group', 'Clerical Support Workers', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('89905d480b7011ee', '55db7096c289453a', '', '', '', 'Lewis, Shields and Ramos', 'Service & Sales Workers', '', '41,000-100,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('8992e90d0b7011ee', 'eaa3631ba23e4a27', '', '', '', 'Miller Inc', 'Plant & Machine Operators & Assemblers', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('8995107d0b7011ee', '0aefe97243ac4d65', '', '', '', 'Flores and Sons', 'Armed Forces Occupations', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('899738ab0b7011ee', 'dc122893190e473c', '', '', '', 'Levine Inc', 'Technician & Associate Professionals', '', 'Less than 10,000', NULL, '', NULL, '', '', '', '', '', '', '', '40000.00'),
('89996ae60b7011ee', '254cbf96cd0042d1', '', '', '', 'Robertson, Sullivan and Brennan', 'Armed Forces Occupations', '', '10,000-20,000', NULL, '', NULL, '', '', '', '', '', '', '', '50000.00'),
('899b8bd00b7011ee', '6eeb9ee5a68540cd', '', '', '', 'Morgan-Lewis', 'Plant & Machine Operators & Assemblers', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('899dd7ab0b7011ee', 'c2d7e5d420914ddf', '', '', '', 'Hawkins-Stein', 'Skilled Agricultural, Forestry & Fishery Workers', '', '41,000-100,000', NULL, '', NULL, '', '', '', '', '', '', '', '40000.00'),
('899ff6fa0b7011ee', '2cfb88d473634e11', '', '', '', 'Williams, Curtis and Reynolds', 'Skilled Agricultural, Forestry & Fishery Workers', '', 'Less than 10,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('89a2348b0b7011ee', 'f505368949bc4476', '', '', '', 'Mcdonald-Torres', 'Elementary Occupations', '', 'More than 100,000', NULL, '', NULL, '', '', '', '', '', '', '', '40000.00'),
('89a455690b7011ee', '3c9bd17a356649d9', '', '', '', 'Roberts-Smith', 'Skilled Agricultural, Forestry & Fishery Workers', '', 'More than 100,000', NULL, '', NULL, '', '', '', '', '', '', '', '20000.00'),
('89a695240b7011ee', '6afdb667435b4336', '', '', '', 'Goodwin, Brooks and Smith', 'Service & Sales Workers', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '50000.00'),
('89a8b8db0b7011ee', '54d53c2e0a4d4621', '', '', '', 'Le, Campbell and Mcclure', 'Technician & Associate Professionals', '', '10,000-20,000', NULL, '', NULL, '', '', '', '', '', '', '', '40000.00'),
('89aaecab0b7011ee', '456ccf1a88c34b9d', '', '', '', 'Greer Inc', 'Service & Sales Workers', '', '10,000-20,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('89ad0ee90b7011ee', '5b4a5c6c4fb44b6a', '', '', '', 'Gaines-Price', 'Armed Forces Occupations', '', 'Less than 10,000', NULL, '', NULL, '', '', '', '', '', '', '', '10000.00'),
('89af47fa0b7011ee', '0cd6dc47b6f246a5', '', '', '', 'Erickson LLC', 'Service & Sales Workers', '', 'Less than 10,000', NULL, '', NULL, '', '', '', '', '', '', '', '50000.00'),
('89b16aaf0b7011ee', 'aafa0870274b4ad3', '', '', '', 'Hampton, Long and Mccarthy', 'Technician & Associate Professionals', '', 'More than 100,000', NULL, '', NULL, '', '', '', '', '', '', '', '40000.00'),
('89b39f120b7011ee', 'ad18433f173e43eb', '', '', '', 'Jones, Erickson and Owens', 'Clerical Support Workers', '', '21,000-40,000', NULL, '', NULL, '', '', '', '', '', '', '', '40000.00'),
('89b5c0ea0b7011ee', '2ad1e6c7b379422d', '', '', '', '', 'Armed Forces Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89b710720b7011ee', '5fa7a2e0e06e437e', '', '', '', '', 'Elementary Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89b8697b0b7011ee', '48517145be2343a1', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89b9b2f80b7011ee', '1bd3397f81704372', '', '', '', '', 'Professionals', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89baf8e00b7011ee', '6af02a744dbb46c0', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89bc54bc0b7011ee', '8228426e607348e8', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89bda2310b7011ee', '143b5ef27a0a45d7', '', '', '', '', 'Armed Forces Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89bee97f0b7011ee', '690a6379d664403d', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c0446c0b7011ee', '3d0fe2c3f4ed4019', '', '', '', '', 'Elementary Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c1a2e70b7011ee', 'dc1e60c49cf24f42', '', '', '', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c2f0f70b7011ee', 'accd5b8017a5410d', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c437840b7011ee', '878697dd861347ff', '', '', '', '', 'Elementary Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c592e00b7011ee', '2ce2dbbeec264382', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c6ddb30b7011ee', '9e3a4c0858e44487', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c822670b7011ee', 'dd49e4eeeb294a7e', '', '', '', '', 'Elementary Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89c970aa0b7011ee', 'd3c52282eae34747', '', '', '', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89cacc790b7011ee', 'd503692d0bfe467e', '', '', '', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89cc1d5f0b7011ee', '523d328750864305', '', '', '', '', 'Professionals', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89cd63260b7011ee', '8bf2413600fb48bc', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89cebdd40b7011ee', '3a7a512d94614703', '', '', '', '', 'Others', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d00e3c0b7011ee', 'ba1a432d24e44381', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d159210b7011ee', '0147126391b64d3c', '', '', '', '', 'Elementary Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d2a51a0b7011ee', 'c67beabdd0784a12', '', '', '', '', 'Others', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d3fd7a0b7011ee', 'b774cebad7c143c3', '', '', '', '', 'Professionals', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d5472b0b7011ee', '9195d3823ae34d0f', '', '', '', '', 'Elementary Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d68b870b7011ee', 'eeff6e289fae4e5a', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d7e8390b7011ee', 'a0caa1631ca14481', '', '', '', '', 'Others', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89d9338a0b7011ee', 'bd384b7ceb344931', '', '', '', '', 'Managers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89da73660b7011ee', '4c7b1cbb88ba4d03', '', '', '', '', 'Elementary Occupations', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00'),
('89dbbc2b0b7011ee', 'f75bf1c2a9e249b6', '', '', '', '', 'Managers', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EVENT_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `EVENT_FOR` varchar(32) NOT NULL,
  `EVENT_BARANGAY` varchar(32) NOT NULL,
  `MESSAGE` varchar(512) NOT NULL,
  `EVENT_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `ORGANIZATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `ORGANIZATION` varchar(64) NOT NULL,
  `ORGANIZATION_CONTACT_PERSON` varchar(64) NOT NULL,
  `ORGANIZATION_OFFICE_ADDRESS` varchar(64) NOT NULL,
  `ORGANIZATION_CONTACT_NUMBER` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `PERSON_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `FIRST_NAME` varchar(64) NOT NULL,
  `MIDDLE_NAME` varchar(64) DEFAULT NULL,
  `LAST_NAME` varchar(64) NOT NULL,
  `SUFFIX` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`PERSON_ID`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `SUFFIX`) VALUES
('0147126391b64d3c', 'Joseph', '', 'Rasmussen', ''),
('019687d3ebd94f3a', 'Bryan', '', 'Mckinney', ''),
('01bef46f687e4029', 'Ashley', '', 'Elliott', ''),
('037f65e8b4e2417e', 'Michael', '', 'Fernandez', ''),
('0458b5cc31aa4546', 'Ashley', '', 'Brown', ''),
('04f6ca9e8162452d', 'Jack', '', 'Kirk', ''),
('0619bdc3b89e4f5e', 'Lisa', '', 'Morrison', ''),
('076e742ff37b412e', 'Danielle', '', 'Gomez', ''),
('079c30feeaf343bb', 'Robin', '', 'Haas', ''),
('0839d26a2bcb4737', 'Edgar', '', 'Wilkins', ''),
('09dcd1deb45e42c6', 'Clifford', '', 'Lee', ''),
('0aefe97243ac4d65', 'Kimberly', '', 'Vazquez', ''),
('0b2ee21fec5e4b70', 'Charles', '', 'Johnson', ''),
('0cd6dc47b6f246a5', 'Jamie', '', 'George', ''),
('0e7285ae254745a5', 'Rachel', '', 'Bray', ''),
('0eba16a16be941a8', 'Patrick', '', 'Rogers', ''),
('0eff644c7e5d4352', 'Stephanie', '', 'Hamilton', ''),
('0f2f81dd05c54af8', 'Thomas', '', 'Bowen', ''),
('11958f35c9a94275', 'Jeffrey', '', 'David', ''),
('13cfe3b3ae2c41cb', 'Nicholas', '', 'Baker', ''),
('143b5ef27a0a45d7', 'Melissa', '', 'Zavala', ''),
('1663857216a34679', 'Debra', '', 'Moody', ''),
('1829686212ee418c', 'Taylor', '', 'Walker', ''),
('18b7877b2353439f', 'Denise', '', 'West', ''),
('1b8289269178489c', 'Joshua', '', 'Mendez', ''),
('1bd3397f81704372', 'Rachel', '', 'Duran', ''),
('1c738e093f4b4686', 'Jack', '', 'Bullock', ''),
('1d20c019860843f1', 'Eric', '', 'Williams', ''),
('1d4e9ee0b5944e4a', 'Kent', '', 'Sweeney', ''),
('1dc9c43740364852', 'Michelle', '', 'Ramos', ''),
('2049dbb1cbe34b56', 'James', '', 'Carson', ''),
('212a404654b147e3', 'Sarah', '', 'Blankenship', ''),
('21820c9a156b467e', 'Lorraine', '', 'Gonzalez', ''),
('2346a6e3ec414086', 'Marvin', '', 'Young', ''),
('254cbf96cd0042d1', 'Michael', '', 'Mullen', ''),
('2835257dbf164565', 'Juan', '', 'Lee', ''),
('2983ed56fedf462d', 'Jon', '', 'Fernandez', ''),
('2ad1e6c7b379422d', 'Rebecca', '', 'Anderson', ''),
('2cd2fb040e964ecb', 'Angela', '', 'Lambert', ''),
('2ce2dbbeec264382', 'Jeffrey', '', 'Johnson', ''),
('2cfb88d473634e11', 'Robert', '', 'Wang', ''),
('2d9435437a5e499f', 'Pamela', '', 'Moore', ''),
('2e9c33e3ac224bfa', 'Mary', '', 'Davis', ''),
('2eb5fbcb877b41d5', 'Michael', '', 'Conley', ''),
('2eba7e3eb2c9479b', 'Nicholas', '', 'Atkins', ''),
('2ef90f55ca9343e5', 'Jared', '', 'Atkinson', ''),
('3087d3c1734b4669', 'Sarah', '', 'Richards', ''),
('3490aa2fc6c0480e', 'Daniel', '', 'Jones', ''),
('34d2ce3335744be9', 'Mary', '', 'Gordon', ''),
('360eb6e27db844c5', 'Emily', '', 'White', ''),
('37c24ebc95554319', 'Lisa', '', 'Grant', ''),
('3a7a512d94614703', 'Carl', '', 'Black', ''),
('3c9bd17a356649d9', 'Joshua', '', 'English', ''),
('3d0100eb50ec4803', 'Jermaine', '', 'Underwood', ''),
('3d0fe2c3f4ed4019', 'Marc', '', 'Rose', ''),
('4139f3357ea54013', 'Kenneth', '', 'Lopez', ''),
('4299b82edd204eaf', 'Joe', '', 'Wilson', ''),
('44cfa6ef87534a9b', 'Miranda', '', 'Villarreal', ''),
('456ccf1a88c34b9d', 'Jason', '', 'Gaines', ''),
('48517145be2343a1', 'Sherry', '', 'Avery', ''),
('4bd9032f089543ab', 'Samuel', '', 'Kennedy', ''),
('4c7b1cbb88ba4d03', 'Justin', '', 'Barron', ''),
('4cb4617fa97e48b3', 'Adam', '', 'Le', ''),
('4d5b7b977a914b4e', 'Matthew', '', 'Cortez', ''),
('4dfc7290ee184df0', 'Mandy', '', 'Dorsey', ''),
('4ef20b071b8b4df1', 'Andrew', '', 'Blackwell', ''),
('4f826a5c0a41455c', 'Cameron', '', 'Powell', ''),
('50c670cc63014f4b', 'John', '', 'Jenkins', ''),
('523d328750864305', 'Jennifer', '', 'James', ''),
('53007a3ba74e4c9d', 'Scott', '', 'Sexton', ''),
('53b63f6b32a44d8e', 'Cheryl', '', 'Nichols', ''),
('54d53c2e0a4d4621', 'Ian', '', 'Miller', ''),
('551d8d4bc23845e1', 'Jennifer', '', 'Novak', ''),
('55ce9b1e6d414117', 'David', '', 'Johnson', ''),
('55db7096c289453a', 'Laura', '', 'Mclean', ''),
('5638e1e26cee40b7', 'Phillip', '', 'Taylor', ''),
('56bcba23f8024a28', 'Matthew', '', 'Roberts', ''),
('56fe21b597424c91', 'Sandy', '', 'Hamilton', ''),
('579b25f3ac134a5b', 'Max', '', 'Taylor', ''),
('57eb015c223144e1', 'Richard', '', 'Joseph', ''),
('5a6bbf40165647fd', 'Jackie', '', 'Richardson', ''),
('5b4a5c6c4fb44b6a', 'Christina', '', 'Strong', ''),
('5c4561726d364516', 'Felicia', '', 'Johnson', ''),
('5fa7a2e0e06e437e', 'Anthony', '', 'Cooper', ''),
('630e9542da3c4751', 'Tammy', '', 'Miller', ''),
('63415b5d7a214eca', 'Caitlin', '', 'Rice', ''),
('652d50d41cd14584', 'Mark', '', 'Berry', ''),
('659a329853214ee7', 'William', '', 'Oconnor', ''),
('67026c9ead904980', 'Rebekah', '', 'Michael', ''),
('6835c04d1c3b4254', 'Monica', '', 'Alexander', ''),
('690a6379d664403d', 'Brian', '', 'Sanchez', ''),
('69345e7eb068430a', 'Lucas', '', 'Barnes', ''),
('69d62a1049ab480d', 'Andrew', '', 'Nichols', ''),
('6af02a744dbb46c0', 'Nicole', '', 'Hart', ''),
('6afdb667435b4336', 'Julie', '', 'Miller', ''),
('6b8def87680a4b5d', 'Dana', '', 'Khan', ''),
('6c96e5c7a7784dea', 'Edward', '', 'Thompson', ''),
('6dc8a2e3f8df4400', 'Randy', '', 'Baxter', ''),
('6eeb9ee5a68540cd', 'Tracey', '', 'Salazar', ''),
('70476187c78d4166', 'Kristina', '', 'Lara', ''),
('721f69f56ce04ea2', 'Edward', '', 'Sanchez', ''),
('7330171eabe341ee', 'Barbara', '', 'George', ''),
('740167893b41497c', 'Jason', '', 'Jones', ''),
('76c694224dd4461c', 'Wendy', '', 'Wilson', ''),
('7b65ba1f72794759', 'Jamie', '', 'Harris', ''),
('8051ce4a67f445db', 'Anna', '', 'Wolf', ''),
('8228426e607348e8', 'Melissa', '', 'Ward', ''),
('850e6f519f4a47f2', 'Nicole', '', 'Lewis', ''),
('855749fbec09400a', 'Aaron', '', 'Bishop', ''),
('85e479e13c924123', 'Rebecca', '', 'Yang', ''),
('862e1bbd21b944f2', 'Sean', '', 'Hill', ''),
('868a840404be48a7', 'Caitlin', '', 'Monroe', ''),
('870bd501dd4a4452', 'Jeffrey', '', 'Nelson', ''),
('878697dd861347ff', 'Michael', '', 'Lambert', ''),
('89399d6f8bc043be', 'John', '', 'Cross', ''),
('8b43d5eead5f43c3', 'Shawn', '', 'Arellano', ''),
('8bf2413600fb48bc', 'Richard', '', 'Pena', ''),
('8bfaeea03404432d', 'David', '', 'Spence', ''),
('8e31b89f4c5443d6', 'Austin', '', 'Clark', ''),
('9174bf6c55594319', 'Julia', '', 'Franklin', ''),
('9195d3823ae34d0f', 'Jordan', '', 'Miller', ''),
('91cb688d4e85476f', 'Trevor', '', 'Jackson', ''),
('932112f7f93f4b54', 'Matthew', '', 'Gonzalez', ''),
('94e1cf02674c4505', 'Shawn', '', 'Gomez', ''),
('9517f3d1a07b4f83', 'Kathleen', '', 'Brown', ''),
('961228c1960f4d81', 'John', '', 'Smith', ''),
('97d63ea795824bad', 'Stefanie', '', 'Neal', ''),
('989746031a304402', 'Nicholas', '', 'Owens', ''),
('9b18a9bdc4764255', 'Grace', '', 'Trevino', ''),
('9d327226f8914d3c', 'Jamie', '', 'Zuniga', ''),
('9df4d681fd1d418c', 'Eric', '', 'Boyd', ''),
('9e3a4c0858e44487', 'Robert', '', 'Ross', ''),
('9e5e97ccb97949e1', 'John', '', 'Crosby', ''),
('9e7b529864114cfc', 'Jennifer', '', 'Estrada', ''),
('a0caa1631ca14481', 'Erik', '', 'Jones', ''),
('a2cc0570fdcb4be1', 'Debbie', '', 'Huynh', ''),
('a2feebba790a40f7', 'Aaron', '', 'Carter', ''),
('a40c91ba3ae74adb', 'Meghan', '', 'Bond', ''),
('a66f72baf71c4e5d', 'James', '', 'Watson', ''),
('a6f4087817014894', 'Matthew', '', 'Bauer', ''),
('a6f438a9327f4134', 'Sarah', '', 'Obrien', ''),
('aafa0870274b4ad3', 'Thomas', '', 'Rodriguez', ''),
('accd5b8017a5410d', 'Laura', '', 'Cooper', ''),
('ad18433f173e43eb', 'Kimberly', '', 'Nguyen', ''),
('afd1e3d3c8f14b23', 'Vincent', '', 'Jordan', ''),
('aff609a7b33b4190', 'Rebecca', '', 'Terrell', ''),
('b4f3561f63b34ab6', 'April', '', 'Roberts', ''),
('b575473ffef147c6', 'Charles', '', 'Newman', ''),
('b774cebad7c143c3', 'Melissa', '', 'Schultz', ''),
('b8c3bd73afe54da4', 'Barbara', '', 'Thomas', ''),
('ba1a432d24e44381', 'Lauren', '', 'Fisher', ''),
('bb76c642871e44dd', 'Amanda', '', 'Rice', ''),
('bbb7696ceb4c4e1d', 'Paul', '', 'Moore', ''),
('bcdfa7d4d4fb460e', 'Briana', '', 'Wiggins', ''),
('bd384b7ceb344931', 'Hannah', '', 'Rivas', ''),
('bd91b8d3ba364b69', 'Tina', '', 'Hodges', ''),
('bfc6e8a24ce14a2a', 'Christina', '', 'Abbott', ''),
('c0ecb6d40cc34e84', 'Pamela', '', 'Harris', ''),
('c2d7e5d420914ddf', 'Christine', '', 'Anderson', ''),
('c3f89c4737184cfd', 'Susan', '', 'White', ''),
('c60e4809bebb4aad', 'Jacqueline', '', 'Stanton', ''),
('c67beabdd0784a12', 'Jill', '', 'Wagner', ''),
('c77fd37c2843430f', 'Stephen', '', 'Sanchez', ''),
('c84904f3a7594eaf', 'Faith', '', 'Lucas', ''),
('c90abe1dde624c3e', 'Charles', '', 'Stafford', ''),
('ca9a25bac2e14294', 'Julia', '', 'Johnson', ''),
('cac6c65e40ed4d37', 'Monica', '', 'Adams', ''),
('cb7a5f7aad014358', 'Jerry', '', 'Hines', ''),
('cc3e4750aaf2491a', 'Anthony', '', 'Warner', ''),
('cfc4c5d00659414a', 'Michael', '', 'Martinez', ''),
('d39f007876af4bde', 'James', '', 'Allison', ''),
('d3c52282eae34747', 'Courtney', '', 'Ryan', ''),
('d503692d0bfe467e', 'James', '', 'Allen', ''),
('d79a47b43cda49c0', 'Keith', '', 'Robbins', ''),
('d8584f066c754666', 'Shelly', '', 'Boyd', ''),
('d9b342def93448e6', 'Jesse', '', 'Kelly', ''),
('d9fe583718de4946', 'Denise', '', 'Lee', ''),
('dab77c6972604b59', 'Charles', '', 'Harmon', ''),
('dbabb569d560453e', 'Matthew', '', 'Lewis', ''),
('dc122893190e473c', 'Sandra', '', 'Calderon', ''),
('dc1e60c49cf24f42', 'Juan', '', 'Lucas', ''),
('dd49e4eeeb294a7e', 'Amanda', '', 'Smith', ''),
('ddd34109e5674766', 'Adam', '', 'Garza', ''),
('de3669e020314f46', 'Maria', '', 'Oliver', ''),
('df8653ff92324149', 'James', '', 'Cooper', ''),
('e189c4d180a440ea', 'Michael', '', 'Gonzalez', ''),
('e1e140a31edb410e', 'Jessica', '', 'Evans', ''),
('e2774b4235d14f78', 'Jeremy', '', 'Olson', ''),
('e5d23b9495d140c3', 'Michele', '', 'Brown', ''),
('e5e35f77f72b41e1', 'Peter', '', 'Wright', ''),
('e9e42072bb2b4c26', 'Gregory', '', 'Hooper', ''),
('eaa3631ba23e4a27', 'Sarah', '', 'Soto', ''),
('eac27952b45c416c', 'Ian', '', 'Baker', ''),
('ed3866a0777042e2', 'Timothy', '', 'Mercer', ''),
('ede513fbd5704487', 'Carol', '', 'Patel', ''),
('eeff6e289fae4e5a', 'Rose', '', 'Mccarthy', ''),
('f1d79c03a7f5400c', 'Zachary', '', 'Johnson', ''),
('f2d1b670df704dc9', 'Jenna', '', 'Martin', ''),
('f3d95a623170467f', 'Troy', '', 'Garcia', ''),
('f479fe27a2e84659', 'Traci', '', 'Morrow', ''),
('f505368949bc4476', 'Reginald', '', 'Herring', ''),
('f75bf1c2a9e249b6', 'Jeffrey', '', 'Small', ''),
('f7aee3ead13848e7', 'Ricky', '', 'Turner', ''),
('f7e9ab1dce0a4b51', 'Melissa', '', 'Sanchez', ''),
('f7f8ee7584254a31', 'Kristi', '', 'Tate', ''),
('fa20d5e44a1e4269', 'James', '', 'Brown', ''),
('fa5ab88fb2424f80', 'Samantha', '', 'Cox', ''),
('fae65026fed04628', 'Sarah', '', 'Adkins', ''),
('fbaa0f6efef5461c', 'Michael', '', 'Williams', ''),
('fc86da6661594376', 'James', '', 'Schmidt', '');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `PERSONAL_INFORMATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `BIRTH_PLACE` varchar(128) DEFAULT NULL,
  `GENDER` varchar(16) DEFAULT NULL,
  `EDUCATIONAL_ATTAINMENT` varchar(64) DEFAULT NULL,
  `BLOOD_TYPE` varchar(8) DEFAULT NULL,
  `RELIGION` varchar(64) DEFAULT NULL,
  `MARITAL_STATUS` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`PERSONAL_INFORMATION_ID`, `PERSON_ID`, `BIRTHDAY`, `BIRTH_PLACE`, `GENDER`, `EDUCATIONAL_ATTAINMENT`, `BLOOD_TYPE`, `RELIGION`, `MARITAL_STATUS`) VALUES
('890f45fa0b7011ee', 'd9fe583718de4946', '1981-08-28', '', 'Female', 'None', 'B+', 'Protestant', 'Single'),
('89148f250b7011ee', 'b8c3bd73afe54da4', '1924-05-30', '', 'Female', 'Senior High School', 'O-', 'Born Again', 'Widowed'),
('891943780b7011ee', '868a840404be48a7', '1911-06-21', '', 'Male', 'Junior High School', 'O+', 'Other', 'Married'),
('891d62f70b7011ee', '55ce9b1e6d414117', '1934-03-31', '', 'Male', 'None', 'B-', 'Born Again', 'Single'),
('892089d70b7011ee', '04f6ca9e8162452d', '1928-05-23', '', 'Female', 'Post Graduate', 'B-', 'Atheist', 'Single'),
('8923b1030b7011ee', '3d0100eb50ec4803', '1916-08-02', '', 'Female', 'Elementary Education', 'B+', 'Born Again', 'Single'),
('8926c0890b7011ee', '4bd9032f089543ab', '1940-11-15', '', 'Female', 'Vocational', 'A+', 'Muslim', 'Divorced'),
('8929ce6a0b7011ee', 'c3f89c4737184cfd', '2012-07-21', '', 'Male', 'Kindergarten', 'O+', 'Atheist', 'Married'),
('892cdd310b7011ee', 'df8653ff92324149', '1942-02-01', '', 'Female', 'Post Graduate', 'A-', 'Born Again', 'Widowed'),
('892fc1ed0b7011ee', '50c670cc63014f4b', '2005-06-09', '', 'Male', 'Post Graduate', 'A-', 'Agnostic', 'Widowed'),
('89328abe0b7011ee', 'cfc4c5d00659414a', '1911-09-07', '', 'Male', 'Vocational', 'B+', 'Other', 'Divorced'),
('893566f50b7011ee', '3490aa2fc6c0480e', '1968-08-09', '', 'Male', 'None', 'A+', 'Atheist', 'Single'),
('8938525d0b7011ee', '961228c1960f4d81', '1960-12-06', '', 'Male', 'College', 'O+', 'Atheist', 'Divorced'),
('893b18910b7011ee', '9517f3d1a07b4f83', '1948-08-27', '', 'Female', 'College', 'AB+', 'Buddhist', 'Single'),
('893df15d0b7011ee', '13cfe3b3ae2c41cb', '1914-08-22', '', 'Female', 'College', 'O-', 'Roman Catholic', 'Widowed'),
('8940c3790b7011ee', 'a2cc0570fdcb4be1', '1956-01-23', '', 'Female', 'College', 'O-', 'Buddhist', 'Divorced'),
('894389230b7011ee', '56bcba23f8024a28', '1924-01-24', '', 'Male', 'College', 'B+', 'Roman Catholic', 'Divorced'),
('8946657f0b7011ee', 'b4f3561f63b34ab6', '2004-10-11', '', 'Male', 'Junior High School', 'AB-', 'Buddhist', 'Widowed'),
('89492a6c0b7011ee', 'e1e140a31edb410e', '1943-06-16', '', 'Male', 'Vocational', 'A+', 'Born Again', 'Separated'),
('894c018c0b7011ee', '1829686212ee418c', '1985-12-08', '', 'Male', 'Senior High School', 'A+', 'Seventh Day Adventist', 'Single'),
('894ec1a40b7011ee', '2d9435437a5e499f', '1978-11-27', '', 'Male', 'Junior High School', 'B-', 'Roman Catholic', 'Divorced'),
('895191520b7011ee', 'c90abe1dde624c3e', '1910-04-12', '', 'Female', 'Senior High School', 'O+', 'Muslim', 'Married'),
('89546a570b7011ee', 'ed3866a0777042e2', '1993-10-14', '', 'Female', 'Junior High School', 'B+', 'Roman Catholic', 'Separated'),
('895747ef0b7011ee', 'fa5ab88fb2424f80', '1983-08-31', '', 'Female', 'Post Graduate', 'O+', 'Muslim', 'Married'),
('895a22880b7011ee', '0839d26a2bcb4737', '1962-08-24', '', 'Male', 'College', 'B+', 'Agnostic', 'Single'),
('895cf1dc0b7011ee', 'bbb7696ceb4c4e1d', '1939-05-31', '', 'Female', 'None', 'B+', 'Buddhist', 'Separated'),
('895fbb230b7011ee', '037f65e8b4e2417e', '1923-03-01', '', 'Female', 'Post Graduate', 'AB+', 'Jehovahs Witness', 'Single'),
('896297670b7011ee', '9e7b529864114cfc', '2022-11-07', '', 'Male', 'Junior High School', 'A-', 'Other', 'Divorced'),
('896565b70b7011ee', 'ddd34109e5674766', '1994-01-02', '', 'Female', 'None', 'B-', 'Muslim', 'Divorced'),
('896823f50b7011ee', '69345e7eb068430a', '2019-04-18', '', 'Male', 'None', 'AB+', 'Atheist', 'Single'),
('896aff860b7011ee', '21820c9a156b467e', '1992-01-23', 'North Mitchellburgh', 'Male', 'College', '', '', ''),
('896c12fa0b7011ee', '659a329853214ee7', '1950-12-08', '', '', 'Elementary Education', '', '', 'Separated'),
('896d227b0b7011ee', 'cc3e4750aaf2491a', '1966-04-12', 'North Jason', 'Male', 'Kindergarten', '', '', ''),
('896e44e00b7011ee', '870bd501dd4a4452', '2007-03-14', '', '', 'None', '', '', 'Single'),
('897456ba0b7011ee', 'f3d95a623170467f', '1938-07-26', 'West Jordan', 'Male', 'Post Graduate', '', '', ''),
('8975c9c40b7011ee', '5c4561726d364516', '2017-08-13', '', '', 'Elementary Education', '', '', 'Divorced'),
('8977171f0b7011ee', '09dcd1deb45e42c6', '1993-11-05', 'Chavezside', 'Male', 'Junior High School', '', '', ''),
('89789dac0b7011ee', 'f1d79c03a7f5400c', '1911-02-17', '', '', 'Post Graduate', '', '', 'Widowed'),
('8979e85d0b7011ee', '1dc9c43740364852', '2020-03-23', 'New Stephanie', 'Male', 'Elementary Education', '', '', ''),
('897af91c0b7011ee', 'de3669e020314f46', '1953-05-21', '', '', 'Elementary Education', '', '', 'Married'),
('897c07780b7011ee', 'f2d1b670df704dc9', '1987-11-14', 'Hernandezview', 'Female', 'Kindergarten', '', '', ''),
('897d21a60b7011ee', '1d20c019860843f1', '1955-02-19', '', '', 'Vocational', '', '', 'Widowed'),
('897e7a5c0b7011ee', '9e5e97ccb97949e1', '1967-05-05', 'North David', 'Female', 'Senior High School', '', '', ''),
('89806b1b0b7011ee', '9df4d681fd1d418c', '1916-04-03', '', '', 'College', '', '', 'Divorced'),
('89817d0c0b7011ee', '551d8d4bc23845e1', '1937-03-02', 'Jacksontown', 'Male', 'None', '', '', ''),
('89829b4b0b7011ee', 'a6f438a9327f4134', '2020-06-20', '', '', 'None', '', '', 'Single'),
('8983c3680b7011ee', '721f69f56ce04ea2', '1976-08-06', 'North Brandyview', 'Male', 'Senior High School', '', '', ''),
('8984da5b0b7011ee', '1d4e9ee0b5944e4a', '1932-10-15', '', '', 'Kindergarten', '', '', 'Divorced'),
('8985f3a00b7011ee', '18b7877b2353439f', '1962-03-27', 'Robertmouth', 'Female', 'Vocational', '', '', ''),
('898700e70b7011ee', '2346a6e3ec414086', '1988-11-15', '', '', 'Post Graduate', '', '', 'Married'),
('898820580b7011ee', 'f7aee3ead13848e7', '1992-05-03', 'South Jeffrey', 'Female', 'Senior High School', '', '', ''),
('898976370b7011ee', '079c30feeaf343bb', '1928-12-03', '', '', 'College', '', '', 'Widowed'),
('898abfcf0b7011ee', '9174bf6c55594319', '1977-05-06', 'South Connie', 'Female', 'College', '', '', ''),
('898c0c2e0b7011ee', 'bb76c642871e44dd', '1920-08-23', '', '', 'Senior High School', '', '', 'Divorced'),
('898d59860b7011ee', '11958f35c9a94275', '1941-07-26', 'New Linda', 'Female', 'College', '', '', ''),
('898ec87d0b7011ee', '862e1bbd21b944f2', '1927-01-16', '', '', 'Junior High School', '', '', 'Divorced'),
('899017d60b7011ee', '55db7096c289453a', '1969-07-24', 'Mcknightview', 'Male', 'None', '', '', ''),
('899158680b7011ee', '6dc8a2e3f8df4400', '1923-10-25', '', '', 'Elementary Education', '', '', 'Married'),
('8992b23b0b7011ee', 'eaa3631ba23e4a27', '1957-07-08', 'Bellfurt', 'Female', 'Vocational', '', '', ''),
('8993ceaf0b7011ee', '6b8def87680a4b5d', '1976-02-10', '', '', 'Post Graduate', '', '', 'Widowed'),
('8994e2360b7011ee', '0aefe97243ac4d65', '1986-08-24', 'Morrowside', 'Male', 'Vocational', '', '', ''),
('8995ee030b7011ee', 'afd1e3d3c8f14b23', '2019-08-22', '', '', 'Kindergarten', '', '', 'Divorced'),
('899701cc0b7011ee', 'dc122893190e473c', '1933-08-21', 'Michaelburgh', 'Male', 'College', '', '', ''),
('89981fe70b7011ee', '2049dbb1cbe34b56', '1993-11-23', '', '', 'Post Graduate', '', '', 'Single'),
('899934340b7011ee', '254cbf96cd0042d1', '1909-04-17', 'North Angelastad', 'Female', 'College', '', '', ''),
('899a3fd30b7011ee', '4299b82edd204eaf', '1992-02-18', '', '', 'Senior High School', '', '', 'Divorced'),
('899b528c0b7011ee', '6eeb9ee5a68540cd', '1921-10-23', 'Port Morgan', 'Female', 'Elementary Education', '', '', ''),
('899c7c860b7011ee', '4cb4617fa97e48b3', '2010-10-15', '', '', 'Vocational', '', '', 'Divorced'),
('899d9f540b7011ee', 'c2d7e5d420914ddf', '1958-02-27', 'Lisaville', 'Female', 'Elementary Education', '', '', ''),
('899ea90c0b7011ee', 'fa20d5e44a1e4269', '1969-08-08', '', '', 'Elementary Education', '', '', 'Divorced'),
('899fbee80b7011ee', '2cfb88d473634e11', '2020-11-11', 'East Georgeside', 'Male', 'College', '', '', ''),
('89a0dee60b7011ee', '44cfa6ef87534a9b', '2013-11-06', '', '', 'Senior High School', '', '', 'Married'),
('89a1fcc40b7011ee', 'f505368949bc4476', '1975-06-30', 'Tanyastad', 'Male', 'Junior High School', '', '', ''),
('89a310f60b7011ee', 'cac6c65e40ed4d37', '1971-04-25', '', '', 'None', '', '', 'Single'),
('89a41eaa0b7011ee', '3c9bd17a356649d9', '1951-04-14', 'Port Marytown', 'Female', 'None', '', '', ''),
('89a533c00b7011ee', 'bcdfa7d4d4fb460e', '1979-12-09', '', '', 'Post Graduate', '', '', 'Widowed'),
('89a65e6c0b7011ee', '6afdb667435b4336', '1926-12-12', 'Brittneyhaven', 'Male', 'Post Graduate', '', '', ''),
('89a768a80b7011ee', 'c0ecb6d40cc34e84', '1998-07-29', '', '', 'Junior High School', '', '', 'Married'),
('89a880a70b7011ee', '54d53c2e0a4d4621', '1924-04-09', 'Erikaside', 'Male', 'College', '', '', ''),
('89a993da0b7011ee', 'ede513fbd5704487', '2022-03-01', '', '', 'Elementary Education', '', '', 'Divorced'),
('89aab6010b7011ee', '456ccf1a88c34b9d', '1938-11-06', 'New Natasha', 'Female', 'Senior High School', '', '', ''),
('89abc8440b7011ee', '630e9542da3c4751', '2023-01-14', '', '', 'College', '', '', 'Divorced'),
('89acd8970b7011ee', '5b4a5c6c4fb44b6a', '1914-03-17', 'Yangfurt', 'Male', 'Junior High School', '', '', ''),
('89ade92b0b7011ee', '1c738e093f4b4686', '1943-07-07', '', '', 'Junior High School', '', '', 'Single'),
('89af04430b7011ee', '0cd6dc47b6f246a5', '2000-04-10', 'Lake Jerry', 'Male', 'Kindergarten', '', '', ''),
('89b029f60b7011ee', '4139f3357ea54013', '1971-09-05', '', '', 'None', '', '', 'Widowed'),
('89b1333e0b7011ee', 'aafa0870274b4ad3', '2003-03-13', 'Wintersbury', 'Male', 'Kindergarten', '', '', ''),
('89b246da0b7011ee', '2983ed56fedf462d', '1935-01-27', '', '', 'Junior High School', '', '', 'Married'),
('89b366520b7011ee', 'ad18433f173e43eb', '1992-07-04', 'Cookfurt', 'Male', 'Vocational', '', '', ''),
('89b47dbb0b7011ee', '9d327226f8914d3c', '1999-06-17', '', '', 'College', '', '', 'Widowed'),
('89b593aa0b7011ee', '2ad1e6c7b379422d', '1960-11-07', 'Katherinehaven', 'Female', '', '', 'Atheist', 'Single'),
('89b6d9390b7011ee', '5fa7a2e0e06e437e', '1960-10-14', 'Sandraport', 'Male', '', '', 'Agnostic', 'Separated'),
('89b828930b7011ee', '48517145be2343a1', '1960-09-27', 'Ewingberg', 'Female', '', '', 'Agnostic', 'Single'),
('89b97ceb0b7011ee', '1bd3397f81704372', '1961-03-03', 'New Petermouth', 'Female', '', '', 'Agnostic', 'Widowed'),
('89bac19b0b7011ee', '6af02a744dbb46c0', '1960-08-05', 'South Jennifer', 'Female', '', '', 'Iglesia ni Cristo', 'Divorced'),
('89bc12b80b7011ee', '8228426e607348e8', '1961-05-25', 'Jennifermouth', 'Female', '', '', 'Iglesia ni Cristo', 'Single'),
('89bd6bfe0b7011ee', '143b5ef27a0a45d7', '1960-07-08', 'New Dustin', 'Male', '', '', 'Other', 'Divorced'),
('89bebceb0b7011ee', '690a6379d664403d', '1960-07-24', 'South Monica', 'Male', '', '', 'Other', 'Widowed'),
('89c00c3d0b7011ee', '3d0fe2c3f4ed4019', '1960-08-05', 'Donaldhaven', 'Male', '', '', 'Iglesia ni Cristo', 'Married'),
('89c160500b7011ee', 'dc1e60c49cf24f42', '1960-09-25', 'New Williamfurt', 'Female', '', '', 'Protestant', 'Separated'),
('89c2babb0b7011ee', 'accd5b8017a5410d', '1960-08-07', 'Kleinland', 'Male', '', '', 'Other', 'Widowed'),
('89c3fdde0b7011ee', '878697dd861347ff', '1960-10-22', 'Fisherberg', 'Female', '', '', 'Muslim', 'Divorced'),
('89c551240b7011ee', '2ce2dbbeec264382', '1961-04-29', 'South Cameronstad', 'Male', '', '', 'Protestant', 'Single'),
('89c6a7d40b7011ee', '9e3a4c0858e44487', '1960-07-29', 'Andrewside', 'Male', '', '', 'Iglesia ni Cristo', 'Single'),
('89c7f7560b7011ee', 'dd49e4eeeb294a7e', '1960-12-29', 'New Patriciastad', 'Female', '', '', 'Buddhist', 'Single'),
('89c9392d0b7011ee', 'd3c52282eae34747', '1960-07-27', 'Ianchester', 'Male', '', '', 'Born Again', 'Divorced'),
('89ca89440b7011ee', 'd503692d0bfe467e', '1961-03-07', 'East Hollyfurt', 'Female', '', '', 'Iglesia ni Cristo', 'Divorced'),
('89cbe6ef0b7011ee', '523d328750864305', '1961-06-24', 'Jordantown', 'Female', '', '', 'Roman Catholic', 'Separated'),
('89cd2c290b7011ee', '8bf2413600fb48bc', '1960-08-02', 'Medinamouth', 'Male', '', '', 'Buddhist', 'Divorced'),
('89ce87990b7011ee', '3a7a512d94614703', '1960-07-01', 'North Jessicamouth', 'Male', '', '', 'Buddhist', 'Widowed'),
('89cfd7610b7011ee', 'ba1a432d24e44381', '1960-10-02', 'Port Barbarastad', 'Female', '', '', 'Protestant', 'Divorced'),
('89d126350b7011ee', '0147126391b64d3c', '1961-01-23', 'New Sarah', 'Male', '', '', 'Born Again', 'Separated'),
('89d26dd20b7011ee', 'c67beabdd0784a12', '1961-02-16', 'Port Diana', 'Female', '', '', 'Born Again', 'Married'),
('89d3ba840b7011ee', 'b774cebad7c143c3', '1960-08-24', 'South Garrett', 'Female', '', '', 'Protestant', 'Widowed'),
('89d510850b7011ee', '9195d3823ae34d0f', '1961-01-03', 'North William', 'Female', '', '', 'Jehovahs Witness', 'Single'),
('89d6537f0b7011ee', 'eeff6e289fae4e5a', '1961-04-02', 'Lake John', 'Male', '', '', 'Seventh Day Adventist', 'Single'),
('89d7a59b0b7011ee', 'a0caa1631ca14481', '1961-04-25', 'Lake John', 'Male', '', '', 'Jehovahs Witness', 'Married'),
('89d8fcf00b7011ee', 'bd384b7ceb344931', '1960-07-25', 'Jimenezville', 'Female', '', '', 'Iglesia ni Cristo', 'Divorced'),
('89da45f30b7011ee', '4c7b1cbb88ba4d03', '1960-09-27', 'Sandersland', 'Male', '', '', 'Jehovahs Witness', 'Married'),
('89db86480b7011ee', 'f75bf1c2a9e249b6', '1960-08-07', 'Ricemouth', 'Female', '', '', 'Iglesia ni Cristo', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `pwd_data`
--

CREATE TABLE `pwd_data` (
  `PWD_DATA_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `PHYSICIAN_NAME` varchar(128) NOT NULL,
  `PHYSICIAN_LICENSE_NUMBER` varchar(64) NOT NULL,
  `TYPE_OF_DISABILITY` varchar(1024) NOT NULL,
  `MEDICAL_CONDITION` varchar(64) DEFAULT NULL,
  `CAUSE_OF_DISABILITY` varchar(64) DEFAULT NULL,
  `CONGENITAL_INBORN` varchar(1024) DEFAULT NULL,
  `ACQUIRED` varchar(1024) DEFAULT NULL,
  `STATUS_OF_DISABILITY` varchar(64) NOT NULL,
  `ACCOMPLISHED_BY` varchar(64) NOT NULL,
  `ACCOMPLISHER_NAME` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pwd_data`
--

INSERT INTO `pwd_data` (`PWD_DATA_ID`, `PERSON_ID`, `PHYSICIAN_NAME`, `PHYSICIAN_LICENSE_NUMBER`, `TYPE_OF_DISABILITY`, `MEDICAL_CONDITION`, `CAUSE_OF_DISABILITY`, `CONGENITAL_INBORN`, `ACQUIRED`, `STATUS_OF_DISABILITY`, `ACCOMPLISHED_BY`, `ACCOMPLISHER_NAME`) VALUES
('890fe2130b7011ee', 'd9fe583718de4946', 'Ricky Harper', '5529725330', 'Speech & Language Impairment', '', 'INBORN', 'Cerebral Palsy', NULL, 'Temporary', 'Applicant', ''),
('89158fb90b7011ee', 'b8c3bd73afe54da4', 'Barbara Wheeler', '4195832144', 'Cancer (RA11215)', '', 'INBORN', 'Cerebral Palsy', NULL, 'Temporary', 'Applicant', ''),
('8919c8540b7011ee', '868a840404be48a7', 'Leslie Harvey', '7757745036', 'Intellectual Disability', '', 'INBORN', 'Cerebral Palsy', NULL, 'Permanent', 'Applicant', ''),
('891dde170b7011ee', '55ce9b1e6d414117', 'Justin Owens', '6379932489', 'Deaf/Hard of Hearing', '', 'INBORN', 'Down Syndrome', NULL, 'Permanent', 'Applicant', ''),
('89210c6a0b7011ee', '04f6ca9e8162452d', 'Jocelyn Villa DDS', '6938436385', 'Physical Disability (Orthopedic)', '', 'INBORN', 'Down Syndrome', NULL, 'Temporary', 'Applicant', ''),
('89242f2e0b7011ee', '3d0100eb50ec4803', 'Paul Martin', '748106297', 'Visual Disability', '', 'ACQUIRED', 'Autism', NULL, 'Temporary', 'Applicant', ''),
('892741a00b7011ee', '4bd9032f089543ab', 'Katie Bell', '5669265128', 'Rare Disease (RA10747)', '', 'ACQUIRED', 'Down Syndrome', NULL, 'Permanent', 'Applicant', ''),
('892a3d250b7011ee', 'c3f89c4737184cfd', 'Brian Watson', '7430366864', 'Physical Disability (Orthopedic)', '', 'ACQUIRED', 'ADHD', NULL, 'Permanent', 'Applicant', ''),
('892d4cb20b7011ee', 'df8653ff92324149', 'Kevin Wright', '4815497927', 'Cancer (RA11215)', '', 'ACQUIRED', 'Cerebral Palsy', NULL, 'Permanent', 'Applicant', ''),
('893030d50b7011ee', '50c670cc63014f4b', 'Michael Martin', '1978229417', 'Rare Disease (RA10747)', '', 'INBORN', 'Cerebral Palsy', NULL, 'Permanent', 'Applicant', ''),
('8932fada0b7011ee', 'cfc4c5d00659414a', 'Jeremy Perry', '5464008502', 'Intellectual Disability', '', 'ACQUIRED', 'Down Syndrome', NULL, 'Temporary', 'Applicant', ''),
('8935e65a0b7011ee', '3490aa2fc6c0480e', 'Angela Brown', '8229665727', 'Mental Disability', '', 'INBORN', 'ADHD', NULL, 'Permanent', 'Applicant', ''),
('8938c1f50b7011ee', '961228c1960f4d81', 'Anne Johnson', '2595503200', 'Cancer (RA11215)', '', 'ACQUIRED', 'Cerebral Palsy', NULL, 'Temporary', 'Applicant', ''),
('893b88350b7011ee', '9517f3d1a07b4f83', 'Anita Stewart', '2511052503', 'Deaf/Hard of Hearing', '', 'ACQUIRED', 'Autism', NULL, 'Permanent', 'Applicant', ''),
('893e64740b7011ee', '13cfe3b3ae2c41cb', 'Daniel Wells', '2900525554', 'Psychosocial Disability', '', 'ACQUIRED', 'Autism', NULL, 'Permanent', 'Applicant', ''),
('8941347c0b7011ee', 'a2cc0570fdcb4be1', 'Craig Logan', '1787518385', 'Learning Disability', '', 'INBORN', 'Autism', NULL, 'Temporary', 'Applicant', ''),
('8943fc3d0b7011ee', '56bcba23f8024a28', 'Kevin Martinez Jr.', '2020418829', 'Learning Disability', '', 'ACQUIRED', 'Cerebral Palsy', NULL, 'Temporary', 'Applicant', ''),
('8946d67d0b7011ee', 'b4f3561f63b34ab6', 'Michael Evans', '6826382666', 'Physical Disability (Orthopedic)', '', 'ACQUIRED', 'Down Syndrome', NULL, 'Temporary', 'Applicant', ''),
('89499bdd0b7011ee', 'e1e140a31edb410e', 'Brandy Mckay', '4728358697', 'Visual Disability', '', 'INBORN', 'Cerebral Palsy', NULL, 'Permanent', 'Applicant', ''),
('894c66620b7011ee', '1829686212ee418c', 'James Yoder', '307741794', 'Physical Disability (Orthopedic)', '', 'INBORN', 'Cerebral Palsy', NULL, 'Permanent', 'Applicant', ''),
('894f3ef30b7011ee', '2d9435437a5e499f', 'William Lucero', '2052600324', 'Deaf/Hard of Hearing', '', 'ACQUIRED', 'ADHD', NULL, 'Permanent', 'Applicant', ''),
('895202f00b7011ee', 'c90abe1dde624c3e', 'Tamara Rice', '1717565408', 'Psychosocial Disability', '', 'ACQUIRED', 'Cerebral Palsy', NULL, 'Temporary', 'Applicant', ''),
('8954dc4c0b7011ee', 'ed3866a0777042e2', 'Taylor Lawrence', '4046146848', 'Intellectual Disability', '', 'ACQUIRED', 'Down Syndrome', NULL, 'Temporary', 'Applicant', ''),
('8957c4ae0b7011ee', 'fa5ab88fb2424f80', 'Edwin Phillips', '8815839529', 'Cancer (RA11215)', '', 'INBORN', 'ADHD', NULL, 'Permanent', 'Applicant', ''),
('895a89700b7011ee', '0839d26a2bcb4737', 'Ashley Welch', '9747108846', 'Deaf/Hard of Hearing', '', 'INBORN', 'Down Syndrome', NULL, 'Permanent', 'Applicant', ''),
('895d62080b7011ee', 'bbb7696ceb4c4e1d', 'Susan Henry', '5050466066', 'Cancer (RA11215)', '', 'ACQUIRED', 'ADHD', NULL, 'Permanent', 'Applicant', ''),
('89602abe0b7011ee', '037f65e8b4e2417e', 'Stephanie Wright', '2052407292', 'Speech & Language Impairment', '', 'INBORN', 'Down Syndrome', NULL, 'Temporary', 'Applicant', ''),
('896307b60b7011ee', '9e7b529864114cfc', 'Susan Curry', '5876753544', 'Cancer (RA11215)', '', 'INBORN', 'Autism', NULL, 'Permanent', 'Applicant', ''),
('8965d3da0b7011ee', 'ddd34109e5674766', 'Debra Clements', '9505098791', 'Intellectual Disability', '', 'INBORN', 'ADHD', NULL, 'Temporary', 'Applicant', ''),
('896893320b7011ee', '69345e7eb068430a', 'David Gonzalez', '4290197477', 'Deaf/Hard of Hearing', '', 'INBORN', 'ADHD', NULL, 'Temporary', 'Applicant', '');

-- --------------------------------------------------------

--
-- Table structure for table `relatives`
--

CREATE TABLE `relatives` (
  `RELATIVE_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `RELATIVE_PERSON_ID` varchar(16) NOT NULL,
  `RELATIONSHIP_TYPE` varchar(32) NOT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `GUARDIAN_CONTACT_NUMBER` varchar(16) DEFAULT NULL,
  `INCOME` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relatives`
--

INSERT INTO `relatives` (`RELATIVE_ID`, `PERSON_ID`, `RELATIVE_PERSON_ID`, `RELATIONSHIP_TYPE`, `BIRTHDAY`, `GUARDIAN_CONTACT_NUMBER`, `INCOME`) VALUES
('891073ba0b7011ee', 'd9fe583718de4946', '91cb688d4e85476f', 'Father', '0000-00-00', '', '0.00'),
('8911a8ec0b7011ee', 'd9fe583718de4946', 'fc86da6661594376', 'Mother', '0000-00-00', '', '0.00'),
('8912d2bd0b7011ee', 'd9fe583718de4946', '0e7285ae254745a5', 'Uncle', '0000-00-00', '001-325-3718x583', '0.00'),
('8916761a0b7011ee', 'b8c3bd73afe54da4', 'e2774b4235d14f78', 'Father', '0000-00-00', '', '0.00'),
('89177ab00b7011ee', 'b8c3bd73afe54da4', '5638e1e26cee40b7', 'Mother', '0000-00-00', '', '0.00'),
('8917f4930b7011ee', 'b8c3bd73afe54da4', '076e742ff37b412e', 'Mother', '0000-00-00', '147.942.3530x025', '0.00'),
('891a48350b7011ee', '868a840404be48a7', 'd79a47b43cda49c0', 'Father', '0000-00-00', '', '0.00'),
('891ad7ed0b7011ee', '868a840404be48a7', '8051ce4a67f445db', 'Mother', '0000-00-00', '', '0.00'),
('891b5b950b7011ee', '868a840404be48a7', '37c24ebc95554319', 'Aunt', '0000-00-00', '(599)873-1071', '0.00'),
('891e57d90b7011ee', '55ce9b1e6d414117', '8b43d5eead5f43c3', 'Father', '0000-00-00', '', '0.00'),
('891ed8600b7011ee', '55ce9b1e6d414117', 'd39f007876af4bde', 'Mother', '0000-00-00', '', '0.00'),
('891f584c0b7011ee', '55ce9b1e6d414117', '8bfaeea03404432d', 'Aunt', '0000-00-00', '564.461.1446x683', '0.00'),
('892188180b7011ee', '04f6ca9e8162452d', '2eba7e3eb2c9479b', 'Father', '0000-00-00', '', '0.00'),
('892200380b7011ee', '04f6ca9e8162452d', 'a6f4087817014894', 'Mother', '0000-00-00', '', '0.00'),
('892288c90b7011ee', '04f6ca9e8162452d', '7330171eabe341ee', 'Aunt', '0000-00-00', '9469431815', '0.00'),
('89249d670b7011ee', '3d0100eb50ec4803', 'aff609a7b33b4190', 'Father', '0000-00-00', '', '0.00'),
('8925194e0b7011ee', '3d0100eb50ec4803', '2e9c33e3ac224bfa', 'Mother', '0000-00-00', '', '0.00'),
('8925941e0b7011ee', '3d0100eb50ec4803', 'fae65026fed04628', 'Grandfather', '0000-00-00', '001-227-509-7958', '0.00'),
('8927adcc0b7011ee', '4bd9032f089543ab', '4f826a5c0a41455c', 'Father', '0000-00-00', '', '0.00'),
('89282dc40b7011ee', '4bd9032f089543ab', '0eba16a16be941a8', 'Mother', '0000-00-00', '', '0.00'),
('89289ec90b7011ee', '4bd9032f089543ab', '89399d6f8bc043be', 'Aunt', '0000-00-00', '(095)428-3879x05', '0.00'),
('892ab9540b7011ee', 'c3f89c4737184cfd', '019687d3ebd94f3a', 'Father', '0000-00-00', '', '0.00'),
('892b37390b7011ee', 'c3f89c4737184cfd', 'e9e42072bb2b4c26', 'Mother', '0000-00-00', '', '0.00'),
('892bb2620b7011ee', 'c3f89c4737184cfd', 'e5d23b9495d140c3', 'Father', '0000-00-00', '857-453-7392x624', '0.00'),
('892dc8d90b7011ee', 'df8653ff92324149', '2eb5fbcb877b41d5', 'Father', '0000-00-00', '', '0.00'),
('892e34990b7011ee', 'df8653ff92324149', 'c84904f3a7594eaf', 'Mother', '0000-00-00', '', '0.00'),
('892eaff60b7011ee', 'df8653ff92324149', '989746031a304402', 'Father', '0000-00-00', '+1-800-865-8172x', '0.00'),
('89309e180b7011ee', '50c670cc63014f4b', 'f479fe27a2e84659', 'Father', '0000-00-00', '', '0.00'),
('893108b40b7011ee', '50c670cc63014f4b', '97d63ea795824bad', 'Mother', '0000-00-00', '', '0.00'),
('893177560b7011ee', '50c670cc63014f4b', 'fbaa0f6efef5461c', 'Mother', '0000-00-00', '630.696.5502x806', '0.00'),
('893367950b7011ee', 'cfc4c5d00659414a', 'b575473ffef147c6', 'Father', '0000-00-00', '', '0.00'),
('8933e0310b7011ee', 'cfc4c5d00659414a', '0f2f81dd05c54af8', 'Mother', '0000-00-00', '', '0.00'),
('893452870b7011ee', 'cfc4c5d00659414a', 'a2feebba790a40f7', 'Sister', '0000-00-00', '1088313430', '0.00'),
('893653550b7011ee', '3490aa2fc6c0480e', '5a6bbf40165647fd', 'Father', '0000-00-00', '', '0.00'),
('8936c0a90b7011ee', '3490aa2fc6c0480e', '69d62a1049ab480d', 'Mother', '0000-00-00', '', '0.00'),
('89372e3c0b7011ee', '3490aa2fc6c0480e', '4ef20b071b8b4df1', 'Grandfather', '0000-00-00', '038-847-7273x347', '0.00'),
('89392f520b7011ee', '961228c1960f4d81', '57eb015c223144e1', 'Father', '0000-00-00', '', '0.00'),
('89399d650b7011ee', '961228c1960f4d81', 'c60e4809bebb4aad', 'Mother', '0000-00-00', '', '0.00'),
('893a0aea0b7011ee', '961228c1960f4d81', '4d5b7b977a914b4e', 'Aunt', '0000-00-00', '(558)016-7850x37', '0.00'),
('893bf4fe0b7011ee', '9517f3d1a07b4f83', '0eff644c7e5d4352', 'Father', '0000-00-00', '', '0.00'),
('893c61b00b7011ee', '9517f3d1a07b4f83', '0b2ee21fec5e4b70', 'Mother', '0000-00-00', '', '0.00'),
('893cdc6e0b7011ee', '9517f3d1a07b4f83', '56fe21b597424c91', 'Brother', '0000-00-00', '479.916.9972x392', '0.00'),
('893ed1300b7011ee', '13cfe3b3ae2c41cb', 'dbabb569d560453e', 'Father', '0000-00-00', '', '0.00'),
('893f33730b7011ee', '13cfe3b3ae2c41cb', 'ca9a25bac2e14294', 'Mother', '0000-00-00', '', '0.00'),
('893fa0700b7011ee', '13cfe3b3ae2c41cb', 'e189c4d180a440ea', 'Father', '0000-00-00', '310.673.5839x330', '0.00'),
('8941a1820b7011ee', 'a2cc0570fdcb4be1', '2cd2fb040e964ecb', 'Father', '0000-00-00', '', '0.00'),
('894211bd0b7011ee', 'a2cc0570fdcb4be1', '67026c9ead904980', 'Mother', '0000-00-00', '', '0.00'),
('89427ef20b7011ee', 'a2cc0570fdcb4be1', '579b25f3ac134a5b', 'Brother', '0000-00-00', '001-583-828-9986', '0.00'),
('89446a6d0b7011ee', '56bcba23f8024a28', 'a66f72baf71c4e5d', 'Father', '0000-00-00', '', '0.00'),
('8944d7ae0b7011ee', '56bcba23f8024a28', '850e6f519f4a47f2', 'Mother', '0000-00-00', '', '0.00'),
('8945468f0b7011ee', '56bcba23f8024a28', '652d50d41cd14584', 'Sister', '0000-00-00', '2185898429', '0.00'),
('894742790b7011ee', 'b4f3561f63b34ab6', '2835257dbf164565', 'Father', '0000-00-00', '', '0.00'),
('8947af6b0b7011ee', 'b4f3561f63b34ab6', 'c77fd37c2843430f', 'Mother', '0000-00-00', '', '0.00'),
('89481d0c0b7011ee', 'b4f3561f63b34ab6', '0619bdc3b89e4f5e', 'Grandfather', '0000-00-00', '(281)754-1966', '0.00'),
('894a12f60b7011ee', 'e1e140a31edb410e', '63415b5d7a214eca', 'Father', '0000-00-00', '', '0.00'),
('894a80a00b7011ee', 'e1e140a31edb410e', 'cb7a5f7aad014358', 'Mother', '0000-00-00', '', '0.00'),
('894aece00b7011ee', 'e1e140a31edb410e', '212a404654b147e3', 'Sister', '0000-00-00', '226.228.4373x421', '0.00'),
('894cd29c0b7011ee', '1829686212ee418c', '7b65ba1f72794759', 'Father', '0000-00-00', '', '0.00'),
('894d40450b7011ee', '1829686212ee418c', 'e5e35f77f72b41e1', 'Mother', '0000-00-00', '', '0.00'),
('894dacda0b7011ee', '1829686212ee418c', '4dfc7290ee184df0', 'Grandfather', '0000-00-00', '(558)146-7176', '0.00'),
('894fab260b7011ee', '2d9435437a5e499f', 'f7f8ee7584254a31', 'Father', '0000-00-00', '', '0.00'),
('895017940b7011ee', '2d9435437a5e499f', 'bfc6e8a24ce14a2a', 'Mother', '0000-00-00', '', '0.00'),
('895084fa0b7011ee', '2d9435437a5e499f', '76c694224dd4461c', 'Father', '0000-00-00', '572-604-4707', '0.00'),
('89527d130b7011ee', 'c90abe1dde624c3e', '0458b5cc31aa4546', 'Father', '0000-00-00', '', '0.00'),
('8952ec100b7011ee', 'c90abe1dde624c3e', 'a40c91ba3ae74adb', 'Mother', '0000-00-00', '', '0.00'),
('8953579d0b7011ee', 'c90abe1dde624c3e', '01bef46f687e4029', 'Mother', '0000-00-00', '+1-475-714-9143', '0.00'),
('895540740b7011ee', 'ed3866a0777042e2', '9b18a9bdc4764255', 'Father', '0000-00-00', '', '0.00'),
('8955af150b7011ee', 'ed3866a0777042e2', '53007a3ba74e4c9d', 'Mother', '0000-00-00', '', '0.00'),
('895632700b7011ee', 'ed3866a0777042e2', '6835c04d1c3b4254', 'Grandfather', '0000-00-00', '(688)859-9457', '0.00'),
('895832dc0b7011ee', 'fa5ab88fb2424f80', '70476187c78d4166', 'Father', '0000-00-00', '', '0.00'),
('8958a05d0b7011ee', 'fa5ab88fb2424f80', '8e31b89f4c5443d6', 'Mother', '0000-00-00', '', '0.00'),
('89590d470b7011ee', 'fa5ab88fb2424f80', '53b63f6b32a44d8e', 'Father', '0000-00-00', '567.367.9315x491', '0.00'),
('895af67d0b7011ee', '0839d26a2bcb4737', '6c96e5c7a7784dea', 'Father', '0000-00-00', '', '0.00'),
('895b64110b7011ee', '0839d26a2bcb4737', '3087d3c1734b4669', 'Mother', '0000-00-00', '', '0.00'),
('895bde010b7011ee', '0839d26a2bcb4737', '2ef90f55ca9343e5', 'Aunt', '0000-00-00', '(965)895-9302', '0.00'),
('895dd1c50b7011ee', 'bbb7696ceb4c4e1d', '360eb6e27db844c5', 'Father', '0000-00-00', '', '0.00'),
('895e35f90b7011ee', 'bbb7696ceb4c4e1d', 'd9b342def93448e6', 'Mother', '0000-00-00', '', '0.00'),
('895ea34d0b7011ee', 'bbb7696ceb4c4e1d', '932112f7f93f4b54', 'Grandfather', '0000-00-00', '1693776757', '0.00'),
('89609b460b7011ee', '037f65e8b4e2417e', '1663857216a34679', 'Father', '0000-00-00', '', '0.00'),
('896114be0b7011ee', '037f65e8b4e2417e', '94e1cf02674c4505', 'Mother', '0000-00-00', '', '0.00'),
('896184490b7011ee', '037f65e8b4e2417e', 'eac27952b45c416c', 'Sister', '0000-00-00', '001-243-050-2323', '0.00'),
('896369420b7011ee', '9e7b529864114cfc', 'd8584f066c754666', 'Father', '0000-00-00', '', '0.00'),
('8963d5c60b7011ee', '9e7b529864114cfc', '855749fbec09400a', 'Mother', '0000-00-00', '', '0.00'),
('896445c20b7011ee', '9e7b529864114cfc', 'f7e9ab1dce0a4b51', 'Brother', '0000-00-00', '237.278.5907x476', '0.00'),
('8966410f0b7011ee', 'ddd34109e5674766', 'dab77c6972604b59', 'Father', '0000-00-00', '', '0.00'),
('8966ad360b7011ee', 'ddd34109e5674766', '1b8289269178489c', 'Mother', '0000-00-00', '', '0.00'),
('89671d310b7011ee', 'ddd34109e5674766', '85e479e13c924123', 'Grandfather', '0000-00-00', '(038)810-1798x37', '0.00'),
('896900a00b7011ee', '69345e7eb068430a', '34d2ce3335744be9', 'Father', '0000-00-00', '', '0.00'),
('89696cad0b7011ee', '69345e7eb068430a', '740167893b41497c', 'Mother', '0000-00-00', '', '0.00'),
('8969e50c0b7011ee', '69345e7eb068430a', 'bd91b8d3ba364b69', 'Uncle', '0000-00-00', '(714)306-7508x36', '0.00'),
('896bdde00b7011ee', '21820c9a156b467e', '659a329853214ee7', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('896e0dd00b7011ee', 'cc3e4750aaf2491a', '870bd501dd4a4452', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('897575580b7011ee', 'f3d95a623170467f', '5c4561726d364516', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('897826de0b7011ee', '09dcd1deb45e42c6', 'f1d79c03a7f5400c', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('897ac2d50b7011ee', '1dc9c43740364852', 'de3669e020314f46', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('897ce34c0b7011ee', 'f2d1b670df704dc9', '1d20c019860843f1', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('897f67230b7011ee', '9e5e97ccb97949e1', '9df4d681fd1d418c', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('898260bf0b7011ee', '551d8d4bc23845e1', 'a6f438a9327f4134', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('8984a2bc0b7011ee', '721f69f56ce04ea2', '1d4e9ee0b5944e4a', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('8986c9a00b7011ee', '18b7877b2353439f', '2346a6e3ec414086', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('898930830b7011ee', 'f7aee3ead13848e7', '079c30feeaf343bb', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('898bc6890b7011ee', '9174bf6c55594319', 'bb76c642871e44dd', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('898e83090b7011ee', '11958f35c9a94275', '862e1bbd21b944f2', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('899113b90b7011ee', '55db7096c289453a', '6dc8a2e3f8df4400', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('89938d500b7011ee', 'eaa3631ba23e4a27', '6b8def87680a4b5d', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('8995b7e80b7011ee', '0aefe97243ac4d65', 'afd1e3d3c8f14b23', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('8997e98b0b7011ee', 'dc122893190e473c', '2049dbb1cbe34b56', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('899a0f070b7011ee', '254cbf96cd0042d1', '4299b82edd204eaf', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('899c44760b7011ee', '6eeb9ee5a68540cd', '4cb4617fa97e48b3', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('899e73320b7011ee', 'c2d7e5d420914ddf', 'fa20d5e44a1e4269', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('89a09e000b7011ee', '2cfb88d473634e11', '44cfa6ef87534a9b', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('89a2da400b7011ee', 'f505368949bc4476', 'cac6c65e40ed4d37', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('89a4fc700b7011ee', '3c9bd17a356649d9', 'bcdfa7d4d4fb460e', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('89a73af70b7011ee', '6afdb667435b4336', 'c0ecb6d40cc34e84', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('89a95d600b7011ee', '54d53c2e0a4d4621', 'ede513fbd5704487', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('89ab92160b7011ee', '456ccf1a88c34b9d', '630e9542da3c4751', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('89adb31f0b7011ee', '5b4a5c6c4fb44b6a', '1c738e093f4b4686', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('89aff2a80b7011ee', '0cd6dc47b6f246a5', '4139f3357ea54013', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('89b211190b7011ee', 'aafa0870274b4ad3', '2983ed56fedf462d', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('89b447070b7011ee', 'ad18433f173e43eb', '9d327226f8914d3c', 'Son/Daugther', '0000-00-00', '', '30000.00');

-- --------------------------------------------------------

--
-- Table structure for table `sent_emails`
--

CREATE TABLE `sent_emails` (
  `SENT_EMAIL_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `MONTH` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `SENT_AT` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `solo_parent_data`
--

CREATE TABLE `solo_parent_data` (
  `SOLO_PARENT_DATA_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `CLASSIFICATION_CIRCUMSTANCES` varchar(512) NOT NULL,
  `NEEDS_PROBLEMS` varchar(512) NOT NULL,
  `FAMILY_RESOURCES` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solo_parent_data`
--

INSERT INTO `solo_parent_data` (`SOLO_PARENT_DATA_ID`, `PERSON_ID`, `CLASSIFICATION_CIRCUMSTANCES`, `NEEDS_PROBLEMS`, `FAMILY_RESOURCES`) VALUES
('896b6e8d0b7011ee', '21820c9a156b467e', 'Death of Spouse', '', ''),
('896d93040b7011ee', 'cc3e4750aaf2491a', 'Rape Case', '', ''),
('897506e40b7011ee', 'f3d95a623170467f', 'Foster Parent of DSWD', '', ''),
('8977a1640b7011ee', '09dcd1deb45e42c6', 'Disappearance of Parents', '', ''),
('897a55c70b7011ee', '1dc9c43740364852', 'Unmarried/unwed', '', ''),
('897c75fb0b7011ee', 'f2d1b670df704dc9', 'Death of Spouse', '', ''),
('897ef45f0b7011ee', '9e5e97ccb97949e1', 'Imprisonment of Spouse/Detention', '', ''),
('8981f0490b7011ee', '551d8d4bc23845e1', 'Disappearance of Parents', '', ''),
('898432470b7011ee', '721f69f56ce04ea2', 'Spouse of OFW', '', ''),
('898658a50b7011ee', '18b7877b2353439f', 'Imprisonment of Spouse/Detention', '', ''),
('898893130b7011ee', 'f7aee3ead13848e7', 'Physical and Mental Incapacity', '', ''),
('898b4b060b7011ee', '9174bf6c55594319', 'Foster Parent of DSWD', '', ''),
('898df75b0b7011ee', '11958f35c9a94275', 'Physical and Mental Incapacity', '', ''),
('8990a1bf0b7011ee', '55db7096c289453a', 'Annulment/Legal Separation', '', ''),
('89931f410b7011ee', 'eaa3631ba23e4a27', 'Physical and Mental Incapacity', '', ''),
('899547850b7011ee', '0aefe97243ac4d65', 'Abandonment', '', ''),
('89976e250b7011ee', 'dc122893190e473c', 'Unmarried/unwed', '', ''),
('8999a1000b7011ee', '254cbf96cd0042d1', 'Annulment/Legal Separation', '', ''),
('899bc30b0b7011ee', '6eeb9ee5a68540cd', 'Unmarried/unwed', '', ''),
('899e0de50b7011ee', 'c2d7e5d420914ddf', 'Spouse of OFW', '', ''),
('89a02ed30b7011ee', '2cfb88d473634e11', 'Death of Spouse', '', ''),
('89a26ba20b7011ee', 'f505368949bc4476', 'Rape Case', '', ''),
('89a48c520b7011ee', '3c9bd17a356649d9', 'Pregnant Women', '', ''),
('89a6cc9e0b7011ee', '6afdb667435b4336', 'Imprisonment of Spouse/Detention', '', ''),
('89a8ee7b0b7011ee', '54d53c2e0a4d4621', 'Death of Spouse', '', ''),
('89ab234d0b7011ee', '456ccf1a88c34b9d', 'Physical and Mental Incapacity', '', ''),
('89ad451f0b7011ee', '5b4a5c6c4fb44b6a', 'Pregnant Women', '', ''),
('89af7fe00b7011ee', '0cd6dc47b6f246a5', 'Foster Parent of DSWD', '', ''),
('89b1a2630b7011ee', 'aafa0870274b4ad3', 'Death of Spouse', '', ''),
('89b3d6ba0b7011ee', 'ad18433f173e43eb', 'Physical and Mental Incapacity', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_documents`
--

CREATE TABLE `uploaded_documents` (
  `UPLOADED_DOCUMENT_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `DOCUMENT_NAME` varchar(256) NOT NULL,
  `DOCUMENT_TYPE` varchar(256) NOT NULL,
  `FILE_PATH` varchar(256) NOT NULL,
  `ENCRYPTION_KEY` varchar(64) NOT NULL,
  `UPLOAD_DATE` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_authentication`
--

CREATE TABLE `user_authentication` (
  `USER_AUTHENTICATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `FIRST_NAME` varchar(64) NOT NULL,
  `LAST_NAME` varchar(64) NOT NULL,
  `BARANGAY` varchar(64) NOT NULL,
  `EMAIL` varchar(64) NOT NULL,
  `PASSWORD` varchar(64) NOT NULL,
  `ROLE` varchar(32) NOT NULL,
  `PROFILE` varchar(64) DEFAULT NULL,
  `IS_LOCKED` int(8) NOT NULL DEFAULT 0,
  `ACCOUNT_STATUS` int(8) NOT NULL DEFAULT 1,
  `LOGIN_ATTEMPTS` int(8) NOT NULL DEFAULT 0,
  `DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_authentication`
--

INSERT INTO `user_authentication` (`USER_AUTHENTICATION_ID`, `FIRST_NAME`, `LAST_NAME`, `BARANGAY`, `EMAIL`, `PASSWORD`, `ROLE`, `PROFILE`, `IS_LOCKED`, `ACCOUNT_STATUS`, `LOGIN_ATTEMPTS`, `DATE`) VALUES
('d2ec055c052711ee', 'ROMEO JR', 'BARDILLON', 'All', 'romsky.bardillon@gmail.com', '$2y$10$MSAheogD/F0WKpTqP2yy5OIqo15Px8zo2UCLgh7L6dAWdWLE/jjte', 'Super Administrator', NULL, 0, 1, 0, '2023-06-07'),
('d80455a8010311ee', 'ROMEO JR ', 'MONTEALEGRE', 'All', 'yegiy78063@rockdian.com', '$2y$10$w6sWLKDaaajV9u.vi585uu.LzbQnRnTF58SlkxuUsiLIdMma6IV36', 'Main Administrator', '../../libs/images/profile_picture/d80455a8010311ee_dp.jpg', 0, 1, 0, '2023-06-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`ADDRESS_ID`),
  ADD KEY `FK_PERSON_ADDRESS` (`PERSON_ID`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`APPLICATION_ID`),
  ADD KEY `FK_PERSON_APPLICATION` (`PERSON_ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`APPOINTMENT_ID`),
  ADD KEY `FK_PERSON_APPOINTMENT` (`PERSON_ID`);

--
-- Indexes for table `citizen_identification_card`
--
ALTER TABLE `citizen_identification_card`
  ADD PRIMARY KEY (`CITIZEN_ID`),
  ADD KEY `FK_PERSON_CITIZEN_ID` (`PERSON_ID`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`CONTACT_DETAILS_ID`),
  ADD KEY `FK_PERSON_CONTACT_DETAILS` (`PERSON_ID`);

--
-- Indexes for table `employment_details`
--
ALTER TABLE `employment_details`
  ADD PRIMARY KEY (`EMPLOYMENT_DETAILS_ID`),
  ADD KEY `FK_PERSON_EMPLOYMENT_DETAILS` (`PERSON_ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EVENT_ID`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`ORGANIZATION_ID`),
  ADD KEY `FK_PERSON_ORGANIZATION` (`PERSON_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PERSON_ID`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`PERSONAL_INFORMATION_ID`),
  ADD KEY `FK_PERSON_PERSONAL_INFORMATION` (`PERSON_ID`);

--
-- Indexes for table `pwd_data`
--
ALTER TABLE `pwd_data`
  ADD PRIMARY KEY (`PWD_DATA_ID`),
  ADD KEY `FK_PERSON_PWD_DATA` (`PERSON_ID`);

--
-- Indexes for table `relatives`
--
ALTER TABLE `relatives`
  ADD PRIMARY KEY (`RELATIVE_ID`),
  ADD KEY `FK_RELATIVE_PERSON_ID` (`RELATIVE_PERSON_ID`),
  ADD KEY `FK_PERSON_RELATIVE_ID` (`PERSON_ID`);

--
-- Indexes for table `sent_emails`
--
ALTER TABLE `sent_emails`
  ADD PRIMARY KEY (`SENT_EMAIL_ID`),
  ADD KEY `FK_PERSON_SENT_EMAIL` (`PERSON_ID`);

--
-- Indexes for table `solo_parent_data`
--
ALTER TABLE `solo_parent_data`
  ADD PRIMARY KEY (`SOLO_PARENT_DATA_ID`),
  ADD KEY `FK_PERSON_SOLO_PARENT_DATA` (`PERSON_ID`);

--
-- Indexes for table `uploaded_documents`
--
ALTER TABLE `uploaded_documents`
  ADD PRIMARY KEY (`UPLOADED_DOCUMENT_ID`),
  ADD KEY `FK_PERSON_UPLOADED_DOCUMENT` (`PERSON_ID`);

--
-- Indexes for table `user_authentication`
--
ALTER TABLE `user_authentication`
  ADD PRIMARY KEY (`USER_AUTHENTICATION_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_PERSON_ADDRESS` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK_PERSON_APPLICATION` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FK_PERSON_APPOINTMENT` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `citizen_identification_card`
--
ALTER TABLE `citizen_identification_card`
  ADD CONSTRAINT `FK_PERSON_CITIZEN_ID` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD CONSTRAINT `FK_PERSON_CONTACT_DETAILS` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `employment_details`
--
ALTER TABLE `employment_details`
  ADD CONSTRAINT `FK_PERSON_EMPLOYMENT_DETAILS` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `FK_PERSON_ORGANIZATION` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD CONSTRAINT `FK_PERSON_PERSONAL_INFORMATION` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `pwd_data`
--
ALTER TABLE `pwd_data`
  ADD CONSTRAINT `FK_PERSON_PWD_DATA` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `relatives`
--
ALTER TABLE `relatives`
  ADD CONSTRAINT `FK_PERSON_PERSON_ID` FOREIGN KEY (`RELATIVE_PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `sent_emails`
--
ALTER TABLE `sent_emails`
  ADD CONSTRAINT `FK_PERSON_SENT_EMAIL` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `solo_parent_data`
--
ALTER TABLE `solo_parent_data`
  ADD CONSTRAINT `FK_PERSON_SOLO_PARENT_DATA` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `uploaded_documents`
--
ALTER TABLE `uploaded_documents`
  ADD CONSTRAINT `FK_PERSON_UPLOADED_DOCUMENTS` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
