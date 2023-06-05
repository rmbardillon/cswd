-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 07:03 AM
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
('5eec5366006611ee', '20bc358515e34ad8', '993 Gutierrez Courts Apt. 493\r\nShawmouth, HI 25165', 'Aplaya'),
('5ef0e699006611ee', 'cfb2deb2c0c44757', '76773 Boone Knolls\r\nPort Stacey, VI 73680', 'Balibago'),
('5ef5e5ef006611ee', '960b8990fdd140df', '54592 Larry Tunnel\r\nSouth Jennifer, OR 14025', 'Dita'),
('5ef910a5006611ee', '83b76089577e46da', '5985 Elizabeth Causeway\r\nDarleneborough, PA 03890', 'Dita'),
('5efd2ff5006611ee', 'f073360b698949d3', '2379 Thomas Mission Suite 257\r\nCalvinland, VT 95012', 'Pooc (Pook)'),
('5f00bff0006611ee', 'cfd642f8c16943fc', '329 Berry Mount Apt. 898\r\nWest Michaelville, NJ 29915', 'Santo Domingo'),
('5f043cef006611ee', 'c2e675e2db6c418f', '6156 Laura Vista Apt. 010\r\nNorth Stacyborough, RI 96893', 'Balibago'),
('5f079818006611ee', 'b09e16842b714b4f', '44053 Vaughan Corner Suite 398\r\nCollinsmouth, NV 91837', 'Aplaya'),
('5f0af730006611ee', 'c9dccbc653a140e8', 'PSC 9636, Box 9648\r\nAPO AP 28465', 'Sinalhan'),
('5f0de5a6006611ee', '19c9f82da56a4746', '0704 George Road Apt. 233\r\nSouth Johnny, AK 45251', 'Pooc (Pook)'),
('5f109ddd006611ee', '3cb3ecccea004476', '22237 Thompson Orchard\r\nEast Tiffanyberg, PR 63905', 'Malusak (Poblacion Dos)'),
('5f13731b006611ee', '9bc4216632944c3d', '7628 Rebecca Points Suite 562\r\nPort Rodneyhaven, WA 79083', 'Sinalhan'),
('5f165641006611ee', '1a7e892b4a7d4142', '60220 Danielle Parkway\r\nVargaston, NY 95005', 'Sinalhan'),
('5f1914f2006611ee', '8e5c1e57a08d4caa', '654 Lee Drives\r\nWest John, MA 27070', 'Market Area (Poblacion Tres)'),
('5f1be6b0006611ee', '40be3770596d4a22', '90364 Michael Ramp Suite 993\r\nThomasport, NE 78924', 'Macabling'),
('5f1ea3e7006611ee', '6c8aff04e48d4ff4', '30525 Margaret Inlet Apt. 380\r\nWest Mariebury, OK 52628', 'Labas'),
('5f217918006611ee', '2b0ed8b323034a4f', '7337 Robert Loop Suite 287\r\nClarkberg, IA 90017', 'Kanluran (Poblacion Uno)'),
('5f244be3006611ee', 'c5bd12e751df4ccf', '0592 Lyons Creek Suite 449\r\nPort Veronicachester, OH 59970', 'Santo Domingo'),
('5f270da0006611ee', '2ef6088ef01d4a36', '0244 Rodriguez Fords\r\nPort Natalie, OK 95066', 'Dila'),
('5f29e9c1006611ee', 'e40a257a891741c9', '552 Deborah Ways Apt. 912\r\nNew Jennyfort, ID 45912', 'Santo Domingo'),
('5f2ca6dc006611ee', '0e60bda24f4c4b36', '12261 Villa Lodge\r\nHoffmanshire, PA 09593', 'Caingin'),
('5f2f7260006611ee', '174f4cde82dc4879', '99941 Jacqueline Burgs\r\nWest Melanie, PW 17092', 'Dita'),
('5f39330e006611ee', '1a91c420f16442ec', '2515 Velazquez Rapid Apt. 810\r\nCarolstad, ID 09030', 'Kanluran (Poblacion Uno)'),
('5f3c3868006611ee', '268c130445e94a21', '59484 Gregory Summit Suite 218\r\nHendersontown, AS 48238', 'Sinalhan'),
('5f3f3d03006611ee', '2284923f36db4bd6', '01310 Paul Extension\r\nEast Richard, FM 00669', 'Dila'),
('5f425fe4006611ee', '31399d9a1f354883', '01488 Michael Landing\r\nKevinhaven, NH 94950', 'Ibaba'),
('5f451bdf006611ee', 'a49cfd9b56b3454e', 'Unit 0417 Box 7239\r\nDPO AA 74922', 'Dila'),
('5f47fa8e006611ee', '89104d7200884a17', '1702 Troy Mews Apt. 151\r\nNew Claudiastad, AR 90298', 'Pulong Santa Cruz'),
('5f4ab7bf006611ee', '3226d867382a45aa', '359 Garrett Key Suite 939\r\nLuistown, AZ 37263', 'Dita'),
('5f4e2a5c006611ee', 'c09418b0f55948da', '5900 Conrad Mountains Suite 837\r\nEast Kimberly, AL 42560', 'Macabling'),
('5f51a19e006611ee', 'e01b39a412a4418e', 'PSC 1882, Box 3781\r\nAPO AA 48922', 'Don Jose'),
('5f5418b1006611ee', '3d88a4e970224558', '3897 Donna Highway Suite 107\r\nNew Amber, AR 13946', 'Caingin'),
('5f564980006611ee', '8238d716757d4dac', '589 Jennifer Shores\r\nSouth Philip, WI 08564', 'Kanluran (Poblacion Uno)'),
('5f585eab006611ee', '006db4a8194b4ab7', '0537 Danielle Parks Apt. 947\r\nEast Lucas, NE 83516', 'Ibaba'),
('5f5a8f37006611ee', 'dd31f2338c2242c2', '96933 Mata Trace\r\nWest Charlestown, NE 42001', 'Dita'),
('5f5ca945006611ee', '4d59a8af32bf4ddc', '74020 Candice Ways Suite 821\r\nAllenburgh, NV 73885', 'Tagapo'),
('5f5ed581006611ee', 'a918601949914115', '2445 Kari Prairie\r\nAllenton, GU 39808', 'Dita'),
('5f6102ac006611ee', '50a92f6b3a694969', '598 Peck Hollow\r\nYoungport, SC 24081', 'Caingin'),
('5f63332f006611ee', '9e5bce94fa9a4365', '7829 Wise Turnpike\r\nToniview, ME 97064', 'Market Area (Poblacion Tres)'),
('5f655137006611ee', '3829c6403cc7416d', '393 John Courts\r\nNew Amberville, SD 29462', 'Tagapo'),
('5f677286006611ee', 'cd093603d46a4024', '10643 Kevin Tunnel Apt. 122\r\nWilliamsville, IN 88756', 'Dita'),
('5f69972a006611ee', '92193863a3e54953', '9331 Young Mission Suite 330\r\nSouth Kennethton, MS 59307', 'Dila'),
('5f6bc662006611ee', 'c179b70a38654b8e', '47372 Hall Junction Apt. 599\r\nSmithberg, MI 23127', 'Malitlit'),
('5f6debed006611ee', '94609fcdab2740f1', '54601 Hart Drive Suite 091\r\nEast Marcus, HI 49419', 'Malusak (Poblacion Dos)'),
('5f7001d2006611ee', '612173381c654dbc', '27084 Anderson Islands Apt. 560\r\nNataliestad, KS 70952', 'Pulong Santa Cruz'),
('5f722dd8006611ee', '61e19a0f54d3481f', '629 Michael Crossing Apt. 554\r\nLake Mario, NV 74516', 'Malusak (Poblacion Dos)'),
('5f74493a006611ee', 'f0f8befdbf324d21', '608 Lopez Forge Suite 126\r\nSouth Ravenport, NJ 23790', 'Malitlit'),
('5f767545006611ee', '8af38440288e47c9', '29891 Frederick Lane\r\nEricbury, WI 80538', 'Dila'),
('5f789278006611ee', 'c7fde4e688f04dcf', '10827 Williams Row Apt. 853\r\nCaseychester, KY 58642', 'Sinalhan'),
('5f7adfa0006611ee', 'f47ec1a475c74605', '795 Kim Route Suite 745\r\nHernandezfort, NH 91725', 'Macabling'),
('5f7cf8cf006611ee', 'c8f818d4f29c4cba', 'Unit 8788 Box 5572\r\nDPO AP 43118', 'Aplaya'),
('5f7f27f2006611ee', 'e7f2e614194542c3', '3689 Rogers Key\r\nNorth Douglas, PW 20918', 'Pulong Santa Cruz'),
('5f814b00006611ee', '20b5951c0c084709', '3186 Cameron Radial\r\nEast Ronaldport, CO 73118', 'Tagapo'),
('5f8382fa006611ee', '2800ad0fa2324cc0', '263 Sheila Forest\r\nWest Brian, MA 02566', 'Santo Domingo'),
('5f85a804006611ee', '1cc2c3fd45e84d6c', '44042 Underwood Lakes\r\nNeilhaven, AZ 53723', 'Sinalhan'),
('5f87d91b006611ee', '2068fa4d75284271', '411 Ross Ferry\r\nEmilybury, MN 30055', 'Balibago'),
('5f89fc3c006611ee', '52760bb5d6094006', '7762 Turner Path\r\nEast Joshuabury, VT 97880', 'Don Jose'),
('5f8c18d9006611ee', 'c7738c8cca224bfc', '292 Sabrina Forge Apt. 817\r\nEast Elizabethmouth, MD 53251', 'Malitlit'),
('5f8e3cf5006611ee', '5d288d6675da4e78', '3015 Cole Mission\r\nSouth John, FL 27395', 'Malusak (Poblacion Dos)'),
('5f906064006611ee', '554e1418802741f8', '71281 Matthews Village\r\nPort Brandy, MH 79500', 'Malitlit'),
('5f928e1a006611ee', 'adac0504b7364575', '5637 Anthony Inlet\r\nPort Stephanieville, GU 94120', 'Ibaba'),
('5f93cc8f006611ee', '83a0c8e51eef40f3', '77574 Adrian Spurs\r\nWest Meganberg, KY 65792', 'Labas'),
('5f951510006611ee', 'c0ab6b72c59a4675', '31090 Kyle Harbor\r\nGallowayshire, GU 49197', 'Market Area (Poblacion Tres)'),
('5f9668d0006611ee', '89c693fe44b74ad9', 'Unit 5818 Box 4738\r\nDPO AE 29769', 'Market Area (Poblacion Tres)'),
('5f97a693006611ee', 'dcff16a94d884b1c', 'Unit 2240 Box 5651\r\nDPO AP 25406', 'Sinalhan'),
('5f98f09c006611ee', '800b25707631471d', '6856 Ryan Landing Apt. 339\r\nJoneshaven, OH 04403', 'Tagapo'),
('5f9a7e47006611ee', '9b201c319e944e86', '88573 Emily Oval Suite 667\r\nNorth Jesus, SD 08714', 'Pulong Santa Cruz'),
('5f9bc5a0006611ee', '2b457a0b952c4166', 'Unit 7987 Box 4484\r\nDPO AP 64910', 'Sinalhan'),
('5f9d04a5006611ee', '2eb294c86ebe487d', '7074 Amy Loop\r\nEast Thomasport, MP 21165', 'Santo Domingo'),
('5f9e524f006611ee', '5e44bed9c4af4c79', '489 Regina Parkway Suite 437\r\nNew Yesenia, AL 98831', 'Balibago'),
('5f9fa75d006611ee', 'ffd2470b42444d9f', 'PSC 9121, Box 9423\r\nAPO AA 15112', 'Malitlit'),
('5fa0e4e0006611ee', '6e5647ce90b2480e', '11134 Wilkinson Mountains\r\nBrittanyview, AR 50946', 'Tagapo'),
('5fa22da0006611ee', '74116895286d4ec0', '59593 Carrie Plaza Suite 066\r\nNew James, MA 73378', 'Pooc (Pook)'),
('5fa38365006611ee', '08e80fc534754244', '7135 Mendoza Tunnel Apt. 402\r\nJenniferview, AZ 55359', 'Dita'),
('5fa4ca5a006611ee', 'e854d005ffe54b9c', '236 Griffin Heights\r\nBriannatown, AL 89000', 'Don Jose'),
('5fa60bd8006611ee', 'bed8e0b62dde4bcc', '8628 Cory Turnpike\r\nChristophermouth, NE 63076', 'Labas'),
('5fa7552f006611ee', '647f171adfdb4e16', '5463 Salazar Knolls Suite 832\r\nPort Moniquefurt, WV 99180', 'Macabling'),
('5fa8aa8c006611ee', '446d36b06af34dd3', 'PSC 9394, Box 8418\r\nAPO AA 26607', 'Tagapo'),
('5fa9e93c006611ee', '4db992ef17724902', '0896 Garza Light Suite 941\r\nLake Nicholasberg, WY 80766', 'Pooc (Pook)'),
('5fab3768006611ee', '78577f3b86564df9', '1498 Jennifer Villages Suite 432\r\nNew Marilynside, HI 84320', 'Tagapo'),
('5fac8d7a006611ee', '5c51135223ab4c6f', '9071 Wheeler Mountains Apt. 483\r\nRiveraland, PW 97447', 'Dita'),
('5fadd598006611ee', 'fc0f54520e5f4ab3', '987 Amber Ways Suite 270\r\nPort Sarahview, NM 48199', 'Santo Domingo'),
('5faf1532006611ee', '1a4ccbcb977c4528', '981 Timothy Courts\r\nBurnston, OK 37367', 'Labas'),
('5fb059f5006611ee', 'd7226995ad074540', 'USNS Griffith\r\nFPO AP 44899', 'Dila'),
('5fb1ada6006611ee', 'a3500afda6684986', '0867 Tanner Park\r\nNorth Catherineshire, TN 95787', 'Sinalhan'),
('5fb2ea32006611ee', '9be59632320d4ec7', '14688 Anthony Mill\r\nSouth Nicolas, TX 26815', 'Pooc (Pook)'),
('5fb433c8006611ee', '9010b6ea7b2644e7', '124 Davidson Keys\r\nLake Matthewshire, MO 44526', 'Tagapo'),
('5fb58972006611ee', '45f0cf54ab9c47bb', '89504 Timothy Roads Apt. 536\r\nCastrostad, HI 52653', 'Don Jose'),
('5fb6d15f006611ee', 'ccfc4e0090d3431e', '32588 Miller Station\r\nLake Marciaburgh, CA 87077', 'Pulong Santa Cruz'),
('5fb822cb006611ee', '67b3d2067a0246b8', '0528 Carlos Spring\r\nLake Edwardburgh, PA 34060', 'Aplaya'),
('89f1eeb1006811ee', '98b5fac0cfe84641', '032 Shaw Orchard Apt. 681\r\nNew Toni, HI 76942', 'Santo Domingo'),
('89f46a4d006811ee', 'd7a07901293a4ceb', '3831 Paul Mountain\r\nNew Laurenborough, HI 65623', 'Pulong Santa Cruz'),
('89f6f795006811ee', '2ac3cf59c1524105', 'USS Moore\r\nFPO AE 65961', 'Tagapo'),
('89f9eff5006811ee', 'a1b8b467e6314aa2', '203 Lee Underpass Apt. 145\r\nThomasmouth, DE 48779', 'Dita'),
('c61f2d76006811ee', '1bb8e254edb34ca4', '26696 Martin Keys\r\nLake Andrew, VA 23517', 'Ibaba'),
('c62316d9006811ee', '62e4cc0a5fcd4d43', '672 Jose Islands Apt. 487\r\nWest Christopher, VI 99769', 'Balibago'),
('c6271a8a006811ee', '2918690352a84d76', '1219 Angel Orchard Apt. 868\r\nDuncanchester, WY 85038', 'Tagapo'),
('c62a854a006811ee', 'f7e10d6275a24faf', '398 Luis Creek Apt. 201\r\nMorrowfort, KS 42789', 'Malusak (Poblacion Dos)'),
('c62d2c63006811ee', '0993726788fc4da6', '928 Barbara Knoll Apt. 814\r\nHansenmouth, LA 87077', 'Macabling'),
('c630069b006811ee', '331c047b5f1c4b02', '664 Pitts Circle\r\nNorth Eugene, CA 55496', 'Market Area (Poblacion Tres)'),
('c632e762006811ee', 'fc23a5d8358e43ed', '183 Ebony Isle Suite 570\r\nHardinfurt, AK 54812', 'Labas'),
('c635ae8c006811ee', '5c5f0335567148c5', '845 Giles Course Suite 846\r\nSouth Kristina, OR 06663', 'Dila'),
('c6393045006811ee', '709db7bfdfd54ed7', '3090 Lawson Grove\r\nMichaelland, HI 33548', 'Malusak (Poblacion Dos)'),
('c63c100e006811ee', '4f1b7eb4a22f481f', '661 Kristin Shores\r\nEdwardtown, SC 49744', 'Malusak (Poblacion Dos)'),
('c63edff4006811ee', '72fbc8f393c54a52', '7805 Davis Hill Apt. 110\r\nJamesview, NH 11817', 'Sinalhan'),
('c6416da9006811ee', 'e3e1fefab57b4d2b', '7767 Rodriguez Valleys\r\nSouth Charles, TN 44234', 'Malitlit'),
('c6439d90006811ee', 'cf1e695189164cb0', '4301 Robert Vista\r\nBarkerfurt, NH 61552', 'Pulong Santa Cruz'),
('c645b831006811ee', '4d88f0b5cfb0498c', '302 Kathryn Tunnel Suite 367\r\nSimonland, OH 65218', 'Santo Domingo'),
('c647f49d006811ee', 'a03c288c9e7744ef', '2316 Dennis Knolls\r\nConnormouth, TN 28092', 'Caingin'),
('c64a7614006811ee', 'ecbe9e2ba8dc49f2', 'USNS Murphy\r\nFPO AP 57937', 'Labas'),
('c64c953a006811ee', 'c5a74e0749e848a7', '3393 Gregory Creek Suite 113\r\nHudsonview, WY 88904', 'Caingin'),
('c64eb5f9006811ee', '47252a81d20248eb', '4611 Ellis Springs Apt. 775\r\nBestland, GA 60441', 'Labas'),
('c650d8da006811ee', 'd079103545264377', '96454 Crystal Well\r\nVillanuevashire, TN 01896', 'Dita'),
('c65309b4006811ee', '83cedfbe863f422b', '57230 Tony Parks Suite 526\r\nReidmouth, VA 90667', 'Malitlit'),
('c6553866006811ee', '9483ef16746442d3', 'USCGC Sandoval\r\nFPO AP 46232', 'Sinalhan'),
('c6567e31006811ee', '13e047bbbc0940d0', '44342 Alexander Dam\r\nNorth Michelle, WI 82077', 'Santo Domingo'),
('c657c63f006811ee', 'afa79e40f1c14ade', '774 Erica Creek\r\nSmithland, UT 83457', 'Aplaya'),
('c6591c42006811ee', '9a97f4036155488f', '48795 Robert Ferry\r\nEast Joseph, DC 71815', 'Sinalhan'),
('c65a6485006811ee', '014f4806a3c04d57', '783 Jacob Islands\r\nNorth Ashley, IL 19572', 'Malitlit'),
('c65ba116006811ee', 'df4c535be2c64784', '5432 Suzanne Valley\r\nBryanland, MO 34603', 'Caingin'),
('c65ce857006811ee', '6e69601ad44d4ceb', '894 Chris Run\r\nColeshire, IN 97479', 'Balibago'),
('c65e3bdf006811ee', '15d27e19ed6a4e2b', '3755 Cannon Rue Suite 209\r\nEdwardberg, NC 64684', 'Dita'),
('c65f8349006811ee', '43ea1e5b0a264321', '1314 Jennifer Forks Suite 080\r\nWardland, TX 54379', 'Malusak (Poblacion Dos)'),
('c66134cc006811ee', '6a35db10b244431f', '384 Jason Park\r\nNorth Dustin, SD 11777', 'Malitlit');

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
('5eeca582006611ee', '20bc358515e34ad8', 'New Application', 'PWD', '2023-06-01 18:23:38', 'Approved'),
('5ef1241b006611ee', 'cfb2deb2c0c44757', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Rejected'),
('5ef62800006611ee', '960b8990fdd140df', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5ef94a61006611ee', '83b76089577e46da', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5efd704b006611ee', 'f073360b698949d3', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f010500006611ee', 'cfd642f8c16943fc', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f0481db006611ee', 'c2e675e2db6c418f', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f07dc08006611ee', 'b09e16842b714b4f', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f0b2dcb006611ee', 'c9dccbc653a140e8', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f0e1a49006611ee', '19c9f82da56a4746', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f10d3d1006611ee', '3cb3ecccea004476', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f13a8aa006611ee', '9bc4216632944c3d', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f168bfe006611ee', '1a7e892b4a7d4142', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f194aa4006611ee', '8e5c1e57a08d4caa', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f1c1cd4006611ee', '40be3770596d4a22', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f1ee4e0006611ee', '6c8aff04e48d4ff4', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f21ae64006611ee', '2b0ed8b323034a4f', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f2480ee006611ee', 'c5bd12e751df4ccf', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f274384006611ee', '2ef6088ef01d4a36', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f2a1f6c006611ee', 'e40a257a891741c9', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f2ce861006611ee', '0e60bda24f4c4b36', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f2fd1ee006611ee', '174f4cde82dc4879', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f399a22006611ee', '1a91c420f16442ec', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f3c83ea006611ee', '268c130445e94a21', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f3f78d2006611ee', '2284923f36db4bd6', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f42952b006611ee', '31399d9a1f354883', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f45510e006611ee', 'a49cfd9b56b3454e', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f4830ff006611ee', '89104d7200884a17', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f4b0ac5006611ee', '3226d867382a45aa', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f4e6edd006611ee', 'c09418b0f55948da', 'New Application', 'PWD', '2023-06-01 18:23:39', 'Pending'),
('5f51e5b3006611ee', 'e01b39a412a4418e', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Approved'),
('5f544daf006611ee', '3d88a4e970224558', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Rejected'),
('5f567f1e006611ee', '8238d716757d4dac', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f589480006611ee', '006db4a8194b4ab7', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f5ac510006611ee', 'dd31f2338c2242c2', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f5cde6c006611ee', '4d59a8af32bf4ddc', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f5f0c27006611ee', 'a918601949914115', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f613810006611ee', '50a92f6b3a694969', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f63690c006611ee', '9e5bce94fa9a4365', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f6587e6006611ee', '3829c6403cc7416d', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f67a961006611ee', 'cd093603d46a4024', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f69cd91006611ee', '92193863a3e54953', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f6bfcf4006611ee', 'c179b70a38654b8e', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f6e21e0006611ee', '94609fcdab2740f1', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f703881006611ee', '612173381c654dbc', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f725a1d006611ee', '61e19a0f54d3481f', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f747f44006611ee', 'f0f8befdbf324d21', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f76ab4b006611ee', '8af38440288e47c9', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f78dee6006611ee', 'c7fde4e688f04dcf', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f7b166b006611ee', 'f47ec1a475c74605', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f7d2d95006611ee', 'c8f818d4f29c4cba', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f7f5ea4006611ee', 'e7f2e614194542c3', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f8180a2006611ee', '20b5951c0c084709', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f83b85e006611ee', '2800ad0fa2324cc0', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f85de3c006611ee', '1cc2c3fd45e84d6c', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f880e80006611ee', '2068fa4d75284271', 'New Application', 'Solo Parent', '2023-06-01 18:23:39', 'Pending'),
('5f8a26c0006611ee', '52760bb5d6094006', 'New Application', 'Solo Parent', '2023-06-01 18:23:40', 'Pending'),
('5f8c4e4b006611ee', 'c7738c8cca224bfc', 'New Application', 'Solo Parent', '2023-06-01 18:23:40', 'Pending'),
('5f8e72c0006611ee', '5d288d6675da4e78', 'New Application', 'Solo Parent', '2023-06-01 18:23:40', 'Pending'),
('5f909661006611ee', '554e1418802741f8', 'New Application', 'Solo Parent', '2023-06-01 18:23:40', 'Pending'),
('5f92c391006611ee', 'adac0504b7364575', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Approved'),
('5f9402d1006611ee', '83a0c8e51eef40f3', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Rejected'),
('5f954a4d006611ee', 'c0ab6b72c59a4675', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f969e44006611ee', '89c693fe44b74ad9', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f97dc78006611ee', 'dcff16a94d884b1c', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f993527006611ee', '800b25707631471d', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f9ab4c8006611ee', '9b201c319e944e86', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f9bfb79006611ee', '2b457a0b952c4166', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f9d3a61006611ee', '2eb294c86ebe487d', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f9e890f006611ee', '5e44bed9c4af4c79', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5f9fdca8006611ee', 'ffd2470b42444d9f', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fa11b92006611ee', '6e5647ce90b2480e', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fa26382006611ee', '74116895286d4ec0', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fa3b961006611ee', '08e80fc534754244', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fa501e7006611ee', 'e854d005ffe54b9c', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fa64159006611ee', 'bed8e0b62dde4bcc', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fa78bc7006611ee', '647f171adfdb4e16', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fa8e0a7006611ee', '446d36b06af34dd3', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5faa1fc6006611ee', '4db992ef17724902', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fab6ead006611ee', '78577f3b86564df9', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5facc3e4006611ee', '5c51135223ab4c6f', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fae0b65006611ee', 'fc0f54520e5f4ab3', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5faf4a1d006611ee', '1a4ccbcb977c4528', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fb08ffa006611ee', 'd7226995ad074540', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fb1e2f8006611ee', 'a3500afda6684986', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fb3206b006611ee', '9be59632320d4ec7', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fb46a27006611ee', '9010b6ea7b2644e7', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fb5bef4006611ee', '45f0cf54ab9c47bb', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fb70725006611ee', 'ccfc4e0090d3431e', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('5fb85874006611ee', '67b3d2067a0246b8', 'New Application', 'Senior Citizen', '2023-06-01 18:23:40', 'Pending'),
('c61f756a006811ee', '1bb8e254edb34ca4', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Approved'),
('c6235921006811ee', '62e4cc0a5fcd4d43', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Rejected'),
('c627bda4006811ee', '2918690352a84d76', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c62ab8f1006811ee', 'f7e10d6275a24faf', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c62d6314006811ee', '0993726788fc4da6', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c63032b3006811ee', '331c047b5f1c4b02', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c6331e3a006811ee', 'fc23a5d8358e43ed', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c635f238006811ee', '5c5f0335567148c5', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c6396637006811ee', '709db7bfdfd54ed7', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c63c470b006811ee', '4f1b7eb4a22f481f', 'Renewal', 'PWD', '2023-06-01 18:40:51', 'Pending'),
('c63f1572006811ee', '72fbc8f393c54a52', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Approved'),
('c641a4f7006811ee', 'e3e1fefab57b4d2b', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Rejected'),
('c643d3c1006811ee', 'cf1e695189164cb0', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c645fab3006811ee', '4d88f0b5cfb0498c', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c64829de006811ee', 'a03c288c9e7744ef', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c64aac34006811ee', 'ecbe9e2ba8dc49f2', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c64ccba7006811ee', 'c5a74e0749e848a7', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c64ef708006811ee', '47252a81d20248eb', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c6511007006811ee', 'd079103545264377', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c6533f33006811ee', '83cedfbe863f422b', 'Renewal', 'Solo Parent', '2023-06-01 18:40:51', 'Pending'),
('c6556d70006811ee', '9483ef16746442d3', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Approved'),
('c656b436006811ee', '13e047bbbc0940d0', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Rejected'),
('c657fd09006811ee', 'afa79e40f1c14ade', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending'),
('c65952f4006811ee', '9a97f4036155488f', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending'),
('c65a8f37006811ee', '014f4806a3c04d57', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending'),
('c65bd6ab006811ee', 'df4c535be2c64784', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending'),
('c65d29fe006811ee', '6e69601ad44d4ceb', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending'),
('c65e7252006811ee', '15d27e19ed6a4e2b', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending'),
('c65fade7006811ee', '43ea1e5b0a264321', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending'),
('c6616d2b006811ee', '6a35db10b244431f', 'Renewal', 'Senior Citizen', '2023-06-01 18:40:51', 'Pending');

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
('5eecf1bb006611ee', '20bc358515e34ad8', '185.811.6031', '', 'terrencejones@example.com'),
('5ef16671006611ee', 'cfb2deb2c0c44757', '052-353-2155x206', '', 'dsmith@example.com'),
('5ef66a1b006611ee', '960b8990fdd140df', '384.006.1458x414', '', 'michaelpeterson@example.net'),
('5efa0609006611ee', '83b76089577e46da', '250-524-1888x414', '', 'santossarah@example.com'),
('5efdb21b006611ee', 'f073360b698949d3', '347-664-5180x082', '', 'joyce42@example.com'),
('5f013eca006611ee', 'cfd642f8c16943fc', '028.188.9601', '', 'aaron35@example.com'),
('5f04c7ec006611ee', 'c2e675e2db6c418f', '+1-146-057-9856x', '', 'hcameron@example.net'),
('5f08220c006611ee', 'b09e16842b714b4f', '768-908-0522x777', '', 'lowerystephen@example.org'),
('5f0b725a006611ee', 'c9dccbc653a140e8', '(084)571-1153', '', 'lgonzalez@example.com'),
('5f0e51d7006611ee', '19c9f82da56a4746', '(484)659-6046x48', '', 'davidvillarreal@example.com'),
('5f110c9d006611ee', '3cb3ecccea004476', '884.310.6482', '', 'beardnorma@example.org'),
('5f13d5bc006611ee', '9bc4216632944c3d', '0743316951', '', 'deckerchristopher@example.org'),
('5f16c389006611ee', '1a7e892b4a7d4142', '(967)286-5609', '', 'kristenpetersen@example.net'),
('5f19823f006611ee', '8e5c1e57a08d4caa', '(914)142-9700x25', '', 'courtneymcdonald@example.org'),
('5f1c535a006611ee', '40be3770596d4a22', '(856)962-9347x95', '', 'josephreed@example.com'),
('5f1f1cce006611ee', '6c8aff04e48d4ff4', '362.841.9683', '', 'margaret50@example.com'),
('5f21e4c8006611ee', '2b0ed8b323034a4f', '752.541.3878x142', '', 'bturner@example.com'),
('5f24b801006611ee', 'c5bd12e751df4ccf', '+1-241-621-9560x', '', 'devin24@example.net'),
('5f2783bd006611ee', '2ef6088ef01d4a36', '275-897-9594', '', 'monica61@example.com'),
('5f2a5646006611ee', 'e40a257a891741c9', '649-253-5991', '', 'kevin14@example.net'),
('5f2d20d4006611ee', '0e60bda24f4c4b36', '+1-884-743-6249x', '', 'gary55@example.com'),
('5f352e87006611ee', '174f4cde82dc4879', '+1-289-419-3371x', '', 'vegarodney@example.org'),
('5f39d1f1006611ee', '1a91c420f16442ec', '(683)351-1726', '', 'cynthiaalvarado@example.org'),
('5f3cbc4f006611ee', '268c130445e94a21', '+1-263-223-9664', '', 'knappjessica@example.com'),
('5f3fbd3b006611ee', '2284923f36db4bd6', '753-163-7816x039', '', 'mclaughlinbrianna@example.com'),
('5f42cb95006611ee', '31399d9a1f354883', '714-484-3183', '', 'gabriel07@example.org'),
('5f4587da006611ee', 'a49cfd9b56b3454e', '001-567-479-7047', '', 'jcrawford@example.com'),
('5f486795006611ee', '89104d7200884a17', '(449)132-7577', '', 'james84@example.org'),
('5f4b427a006611ee', '3226d867382a45aa', '616.198.5942x557', '', 'kristine92@example.com'),
('5f4ea5af006611ee', 'c09418b0f55948da', '245.383.6852', '', 'thompsonchristian@example.org'),
('5f522bd7006611ee', 'e01b39a412a4418e', '207-290-3558x053', '', 'drakediana@example.com'),
('5f5484fb006611ee', '3d88a4e970224558', '(506)283-3234x68', '', 'adixon@example.org'),
('5f56b6ab006611ee', '8238d716757d4dac', '216.601.6678x421', '', 'jacksonvalerie@example.net'),
('5f58cb2f006611ee', '006db4a8194b4ab7', '983.779.8538x611', '', 'michellehobbs@example.com'),
('5f5afc8b006611ee', 'dd31f2338c2242c2', '805.157.4648x115', '', 'fieldsjessica@example.com'),
('5f5d168c006611ee', '4d59a8af32bf4ddc', '(645)118-9754', '', 'mary15@example.com'),
('5f5f455a006611ee', 'a918601949914115', '063.224.0863x207', '', 'hsmith@example.com'),
('5f616f97006611ee', '50a92f6b3a694969', '380-746-3287', '', 'esimmons@example.com'),
('5f63a0ce006611ee', '9e5bce94fa9a4365', '434.669.4198x165', '', 'batesrobert@example.org'),
('5f65bdbb006611ee', '3829c6403cc7416d', '(024)514-7054x28', '', 'jenniferabbott@example.net'),
('5f67eb9c006611ee', 'cd093603d46a4024', '(196)487-7444x22', '', 'jose96@example.com'),
('5f6a0434006611ee', '92193863a3e54953', '220-117-8721x114', '', 'jody60@example.com'),
('5f6c32fc006611ee', 'c179b70a38654b8e', '001-995-267-4661', '', 'jennifer07@example.com'),
('5f6e4dc9006611ee', '94609fcdab2740f1', '471-416-5640x639', '', 'dixonrichard@example.com'),
('5f706e7c006611ee', '612173381c654dbc', '(459)857-3851x72', '', 'devin42@example.com'),
('5f72907c006611ee', '61e19a0f54d3481f', '(941)256-8077x86', '', 'charlesellis@example.com'),
('5f74b669006611ee', 'f0f8befdbf324d21', '5625805091', '', 'karen74@example.com'),
('5f76e211006611ee', '8af38440288e47c9', '+1-276-183-2599x', '', 'jpatterson@example.org'),
('5f791794006611ee', 'c7fde4e688f04dcf', '096.483.2811x527', '', 'laurenweber@example.com'),
('5f7b4f9d006611ee', 'f47ec1a475c74605', '+1-405-217-7453x', '', 'madisonsimon@example.net'),
('5f7d65a7006611ee', 'c8f818d4f29c4cba', '8354416803', '', 'jenningschristine@example.net'),
('5f7f9561006611ee', 'e7f2e614194542c3', '316.376.1097x227', '', 'michelle78@example.net'),
('5f81b8cb006611ee', '20b5951c0c084709', '001-588-445-2535', '', 'anthony13@example.org'),
('5f83efdc006611ee', '2800ad0fa2324cc0', '001-174-173-0635', '', 'thomas49@example.com'),
('5f861643006611ee', '1cc2c3fd45e84d6c', '001-137-279-2097', '', 'smithchristian@example.net'),
('5f884529006611ee', '2068fa4d75284271', '351-406-9704x435', '', 'garciasarah@example.com'),
('5f8a5f19006611ee', '52760bb5d6094006', '+1-131-669-0081x', '', 'rwilson@example.net'),
('5f8c865e006611ee', 'c7738c8cca224bfc', '260-760-9830x489', '', 'sharonpeterson@example.net'),
('5f8eab1f006611ee', '5d288d6675da4e78', '587-480-6026', '', 'pittssusan@example.net'),
('5f90d9f1006611ee', '554e1418802741f8', '611-095-0698', '', 'darin18@example.com'),
('5f92fb40006611ee', 'adac0504b7364575', '654.179.9674x270', '', 'benjaminjohnson@example.net'),
('5f9439e3006611ee', '83a0c8e51eef40f3', '802-471-0126x557', '', 'tthornton@example.net'),
('5f958277006611ee', 'c0ab6b72c59a4675', '001-602-439-9966', '', 'andreaarnold@example.org'),
('5f96d537006611ee', '89c693fe44b74ad9', '(442)358-5401', '', 'jessicaallison@example.net'),
('5f98135e006611ee', 'dcff16a94d884b1c', '752-698-1493x771', '', 'jeffery59@example.net'),
('5f997d31006611ee', '800b25707631471d', '3391356430', '', 'anthony48@example.com'),
('5f9aeba1006611ee', '9b201c319e944e86', '801.867.7176', '', 'jeff89@example.org'),
('5f9c32bf006611ee', '2b457a0b952c4166', '001-771-088-6657', '', 'lfields@example.org'),
('5f9d7175006611ee', '2eb294c86ebe487d', '+1-145-685-4586x', '', 'sanchezjoseph@example.net'),
('5f9ebf93006611ee', '5e44bed9c4af4c79', '(241)381-2374x25', '', 'ylara@example.net'),
('5fa01416006611ee', 'ffd2470b42444d9f', '511-151-3216x913', '', 'kayleebolton@example.com'),
('5fa15330006611ee', '6e5647ce90b2480e', '+1-536-064-4495x', '', 'maryramirez@example.net'),
('5fa29c59006611ee', '74116895286d4ec0', '148-633-2062', '', 'lewisashley@example.org'),
('5fa3efc0006611ee', '08e80fc534754244', '+1-881-019-7091x', '', 'warnerjudith@example.net'),
('5fa538a5006611ee', 'e854d005ffe54b9c', '001-960-223-3404', '', 'fosterraymond@example.net'),
('5fa67861006611ee', 'bed8e0b62dde4bcc', '250-739-6014x270', '', 'walkerchristina@example.org'),
('5fa7c310006611ee', '647f171adfdb4e16', '907-870-5111x161', '', 'matthew27@example.org'),
('5fa9183a006611ee', '446d36b06af34dd3', '+1-943-063-7276x', '', 'ffrye@example.com'),
('5faa5765006611ee', '4db992ef17724902', '491-313-9557x903', '', 'smithmariah@example.net'),
('5faba58f006611ee', '78577f3b86564df9', '(248)496-8582x89', '', 'keith55@example.org'),
('5facfa4a006611ee', '5c51135223ab4c6f', '225.765.8488', '', 'donaldhawkins@example.org'),
('5fae4283006611ee', 'fc0f54520e5f4ab3', '251-699-0533x880', '', 'katherinejohnson@example.org'),
('5faf81fe006611ee', '1a4ccbcb977c4528', '699-233-5117', '', 'lisa89@example.com'),
('5fb0c6fc006611ee', 'd7226995ad074540', '001-049-900-6063', '', 'shari97@example.com'),
('5fb21b50006611ee', 'a3500afda6684986', '001-347-477-1726', '', 'bowerskristin@example.net'),
('5fb358fa006611ee', '9be59632320d4ec7', '658-905-7831', '', 'jasontravis@example.net'),
('5fb4a0fb006611ee', '9010b6ea7b2644e7', '001-139-520-2417', '', 'joneskenneth@example.net'),
('5fb5f647006611ee', '45f0cf54ab9c47bb', '001-591-698-1356', '', 'edwardjohnson@example.net'),
('5fb73dcb006611ee', 'ccfc4e0090d3431e', '6142233196', '', 'smithkevin@example.org'),
('5fb8903c006611ee', '67b3d2067a0246b8', '(403)973-8821', '', 'susan57@example.com'),
('89f22f68006811ee', '98b5fac0cfe84641', '(829)867-9726', '', 'woodbrian@example.org'),
('89f4a22c006811ee', 'd7a07901293a4ceb', '643.309.1227', '', 'scott51@example.org'),
('89f72ee2006811ee', '2ac3cf59c1524105', '(549)142-0710', '', 'christensenphilip@example.com'),
('89fa3482006811ee', 'a1b8b467e6314aa2', '+1-907-963-6581x', '', 'louisjohnson@example.org'),
('c61fb7f8006811ee', '1bb8e254edb34ca4', '001-180-689-0638', '', 'gregory46@example.com'),
('c6238da0006811ee', '62e4cc0a5fcd4d43', '943-578-8112x612', '', 'martinezrobert@example.net'),
('c627fe03006811ee', '2918690352a84d76', '934-656-7615', '', 'andrea65@example.com'),
('c62aed0a006811ee', 'f7e10d6275a24faf', '0251956601', '', 'willismichael@example.com'),
('c62da68f006811ee', '0993726788fc4da6', '001-062-915-9256', '', 'smithronnie@example.com'),
('c63069a7006811ee', '331c047b5f1c4b02', '7815499557', '', 'howarddebra@example.com'),
('c6335584006811ee', 'fc23a5d8358e43ed', '305-500-3145x841', '', 'pjohnson@example.net'),
('c6362a64006811ee', '5c5f0335567148c5', '(136)099-3968', '', 'kgates@example.com'),
('c6399c71006811ee', '709db7bfdfd54ed7', '(992)246-7782', '', 'xvillarreal@example.org'),
('c63c7573006811ee', '4f1b7eb4a22f481f', '(658)211-3077x89', '', 'kylekennedy@example.org'),
('c63f4c4b006811ee', '72fbc8f393c54a52', '0280653951', '', 'ryangregory@example.org'),
('c641dc65006811ee', 'e3e1fefab57b4d2b', '(755)684-8105x78', '', 'sullivanalec@example.org'),
('c643ffe3006811ee', 'cf1e695189164cb0', '246-409-6316', '', 'kurtbailey@example.org'),
('c6463146006811ee', '4d88f0b5cfb0498c', '846.615.4714', '', 'reynoldskylie@example.org'),
('c6486049006811ee', 'a03c288c9e7744ef', '001-350-041-1540', '', 'hsilva@example.com'),
('c64ae2f6006811ee', 'ecbe9e2ba8dc49f2', '(759)803-3568x47', '', 'nathan61@example.org'),
('c64d0260006811ee', 'c5a74e0749e848a7', '239-751-0126x279', '', 'melanie58@example.com'),
('c64f2e1f006811ee', '47252a81d20248eb', '+1-347-987-1950x', '', 'karen99@example.com'),
('c65147e3006811ee', 'd079103545264377', '811-689-0856', '', 'johnsonjeffrey@example.com'),
('c6537585006811ee', '83cedfbe863f422b', '(217)208-3085', '', 'schmidtpatrick@example.com'),
('c655a4ce006811ee', '9483ef16746442d3', '(558)409-1295x32', '', 'courtney40@example.org'),
('c656ebcf006811ee', '13e047bbbc0940d0', '(978)442-7280x06', '', 'fboyd@example.org'),
('c65834e1006811ee', 'afa79e40f1c14ade', '857.000.8333x002', '', 'nguyenalicia@example.net'),
('c6598986006811ee', '9a97f4036155488f', '+1-101-012-8325', '', 'howardjeremy@example.com'),
('c65ac564006811ee', '014f4806a3c04d57', '091-291-8729', '', 'gtaylor@example.org'),
('c65c0d28006811ee', 'df4c535be2c64784', '+1-299-226-2550', '', 'michaeldonaldson@example.org'),
('c65d60d5006811ee', '6e69601ad44d4ceb', '872.190.0334', '', 'oberry@example.net'),
('c65ea9ac006811ee', '15d27e19ed6a4e2b', '(712)160-5357x81', '', 'joy13@example.net'),
('c65fe55a006811ee', '43ea1e5b0a264321', '774-460-1802', '', 'wsmith@example.org'),
('c661a56a006811ee', '6a35db10b244431f', '(895)986-9756x44', '', 'kjacobs@example.org');

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
  `PENSION` decimal(12,2) DEFAULT NULL,
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
('5eed8a77006611ee', '20bc358515e34ad8', 'Employed', 'Private', 'Permanent/Regular', '', 'Armed Forces Occupations', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('5ef24753006611ee', 'cfb2deb2c0c44757', 'Employed', 'Private', 'Casual', '', 'Others', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('5ef6ddd5006611ee', '960b8990fdd140df', 'Employed', 'Private', 'Seasonal', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('5efaeaf7006611ee', '83b76089577e46da', 'Self-Employed', 'Government', 'Permanent/Regular', '', 'Others', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('5efe5468006611ee', 'f073360b698949d3', 'Student', 'Private', 'Casual', '', 'Plant & Machine Operators & Assemblers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('5f01bfb3006611ee', 'cfd642f8c16943fc', 'Unemployed', 'Government', 'Seasonal', '', 'Armed Forces Occupations', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('5f05585a006611ee', 'c2e675e2db6c418f', 'Self-Employed', 'Private', 'Casual', '', 'Managers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('5f08b3bb006611ee', 'b09e16842b714b4f', 'Unemployed', 'Government', 'Casual', '', 'Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f0be4a4006611ee', 'c9dccbc653a140e8', 'Employed', 'Government', 'Emergency', '', 'Craft & Related Trade Workers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('5f0ec4ac006611ee', '19c9f82da56a4746', 'Student', 'Private', 'Casual', '', 'Others', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f11813e006611ee', '3cb3ecccea004476', 'Student', 'Private', 'Casual', '', 'Elementary Occupations', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('5f145e84006611ee', '9bc4216632944c3d', 'Self-Employed', 'Private', 'Emergency', '', 'Plant & Machine Operators & Assemblers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f1736d0006611ee', '1a7e892b4a7d4142', 'Unemployed', 'Private', 'Seasonal', '', 'Technician & Associate Professionals', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f19f46f006611ee', '8e5c1e57a08d4caa', 'Self-Employed', 'Private', 'Casual', '', 'Armed Forces Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('5f1cbbe5006611ee', '40be3770596d4a22', 'Unemployed', 'Government', 'Casual', '', 'Craft & Related Trade Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f1f9008006611ee', '6c8aff04e48d4ff4', 'Student', 'Government', 'Emergency', '', 'Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('5f2258fa006611ee', '2b0ed8b323034a4f', 'Employed', 'Government', 'Casual', '', 'Clerical Support Workers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('5f252af0006611ee', 'c5bd12e751df4ccf', 'Unemployed', 'Private', 'Permanent/Regular', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('5f2801a1006611ee', '2ef6088ef01d4a36', 'Self-Employed', 'Private', 'Emergency', '', 'Plant & Machine Operators & Assemblers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('5f2abf8d006611ee', 'e40a257a891741c9', 'Employed', 'Private', 'Seasonal', '', 'Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('5f2d94ed006611ee', '0e60bda24f4c4b36', 'Student', 'Private', 'Emergency', '', 'Elementary Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('5f36083e006611ee', '174f4cde82dc4879', 'Employed', 'Private', 'Seasonal', '', 'Service & Sales Workers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f3a46b0006611ee', '1a91c420f16442ec', 'Employed', 'Private', 'Casual', '', 'Armed Forces Occupations', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f3d3de2006611ee', '268c130445e94a21', 'Employed', 'Government', 'Permanent/Regular', '', 'Armed Forces Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f403d62006611ee', '2284923f36db4bd6', 'Unemployed', 'Private', 'Seasonal', '', 'Technician & Associate Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('5f433d24006611ee', '31399d9a1f354883', 'Self-Employed', 'Private', 'Permanent/Regular', '', 'Others', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('5f45fbb2006611ee', 'a49cfd9b56b3454e', 'Employed', 'Private', 'Permanent/Regular', '', 'Craft & Related Trade Workers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f48d056006611ee', '89104d7200884a17', 'Self-Employed', 'Private', 'Permanent/Regular', '', 'Others', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('5f4bc867006611ee', '3226d867382a45aa', 'Unemployed', 'Private', 'Emergency', '', 'Craft & Related Trade Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f4f3646006611ee', 'c09418b0f55948da', 'Unemployed', 'Private', 'Permanent/Regular', '', 'Craft & Related Trade Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('5f52a95d006611ee', 'e01b39a412a4418e', '', '', '', 'Parsons PLC', 'Professionals', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('5f54f7aa006611ee', '3d88a4e970224558', '', '', '', 'Carter PLC', 'Craft & Related Trade Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('5f571b69006611ee', '8238d716757d4dac', '', '', '', 'Jones, Tran and Farrell', 'Managers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('5f593e7d006611ee', '006db4a8194b4ab7', '', '', '', 'Nunez, Dunn and Ellison', 'Armed Forces Occupations', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('5f5b6bd7006611ee', 'dd31f2338c2242c2', '', '', '', 'Hill, Long and Reeves', 'Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f5d860f006611ee', '4d59a8af32bf4ddc', '', '', '', 'George-Allen', 'Others', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('5f5fc804006611ee', 'a918601949914115', '', '', '', 'Harris-Kelly', 'Craft & Related Trade Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('5f61dfaa006611ee', '50a92f6b3a694969', '', '', '', 'Robinson Inc', 'Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('5f641367006611ee', '9e5bce94fa9a4365', '', '', '', 'Thomas, Brown and Brown', 'Skilled Agricultural, Forestry & Fishery Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('5f662d3c006611ee', '3829c6403cc7416d', '', '', '', 'Johns, Chambers and Williams', 'Skilled Agricultural, Forestry & Fishery Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('5f685c8d006611ee', 'cd093603d46a4024', '', '', '', 'Benson PLC', 'Technician & Associate Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('5f6a7423006611ee', '92193863a3e54953', '', '', '', 'Arnold, Hill and Booth', 'Clerical Support Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f6ca53f006611ee', 'c179b70a38654b8e', '', '', '', 'Woods, Montoya and Wilson', 'Technician & Associate Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f6ebd98006611ee', '94609fcdab2740f1', '', '', '', 'Peterson-Griffin', 'Professionals', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('5f70e896006611ee', '612173381c654dbc', '', '', '', 'Carter Inc', 'Technician & Associate Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('5f73002c006611ee', '61e19a0f54d3481f', '', '', '', 'Hunt, Franco and Rogers', 'Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('5f7530d1006611ee', 'f0f8befdbf324d21', '', '', '', 'Johnson-Bell', 'Skilled Agricultural, Forestry & Fishery Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f7752a1006611ee', '8af38440288e47c9', '', '', '', 'Rodriguez Inc', 'Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f798b7c006611ee', 'c7fde4e688f04dcf', '', '', '', 'Jennings-Weaver', 'Skilled Agricultural, Forestry & Fishery Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f7bb451006611ee', 'f47ec1a475c74605', '', '', '', 'Williams Group', 'Others', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('5f7dd79f006611ee', 'c8f818d4f29c4cba', '', '', '', 'Harris-Robinson', 'Skilled Agricultural, Forestry & Fishery Workers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('5f8004c1006611ee', 'e7f2e614194542c3', '', '', '', 'Kim Group', 'Clerical Support Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f822cb7006611ee', '20b5951c0c084709', '', '', '', 'Palmer, Rich and Miller', 'Managers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('5f8464be006611ee', '2800ad0fa2324cc0', '', '', '', 'Hubbard-Rivera', 'Plant & Machine Operators & Assemblers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('5f8685ec006611ee', '1cc2c3fd45e84d6c', '', '', '', 'Hawkins-Clark', 'Service & Sales Workers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('5f88b768006611ee', '2068fa4d75284271', '', '', '', 'Owens PLC', 'Elementary Occupations', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('5f8ace92006611ee', '52760bb5d6094006', '', '', '', 'James-Wagner', 'Technician & Associate Professionals', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('5f8d0255006611ee', 'c7738c8cca224bfc', '', '', '', 'Williams LLC', 'Technician & Associate Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('5f8f1b85006611ee', '5d288d6675da4e78', '', '', '', 'Hamilton-Stanley', 'Elementary Occupations', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('5f914965006611ee', '554e1418802741f8', '', '', '', 'Keith-Gutierrez', 'Clerical Support Workers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('5f9361f3006611ee', 'adac0504b7364575', '', '', '', '', 'Managers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f94a915006611ee', '83a0c8e51eef40f3', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f95fd2d006611ee', 'c0ab6b72c59a4675', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f973b14006611ee', '89c693fe44b74ad9', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f988327006611ee', 'dcff16a94d884b1c', '', '', '', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f9a02f6006611ee', '800b25707631471d', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f9b5b0c006611ee', '9b201c319e944e86', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f9c98a3006611ee', '2b457a0b952c4166', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f9de539006611ee', '2eb294c86ebe487d', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5f9f3af3006611ee', '5e44bed9c4af4c79', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa07895006611ee', 'ffd2470b42444d9f', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa1c2e2006611ee', '6e5647ce90b2480e', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa30c9d006611ee', '74116895286d4ec0', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa45f4a006611ee', '08e80fc534754244', '', '', '', '', 'Armed Forces Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa5a9ba006611ee', 'e854d005ffe54b9c', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa6e67a006611ee', 'bed8e0b62dde4bcc', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa83313006611ee', '647f171adfdb4e16', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fa986a1006611ee', '446d36b06af34dd3', '', '', '', '', 'Managers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5faac912006611ee', '4db992ef17724902', '', '', '', '', 'Managers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fac1672006611ee', '78577f3b86564df9', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fad691b006611ee', '5c51135223ab4c6f', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5faeb1e5006611ee', 'fc0f54520e5f4ab3', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5faff00a006611ee', '1a4ccbcb977c4528', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fb141e8006611ee', 'd7226995ad074540', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fb28963006611ee', 'a3500afda6684986', '', '', '', '', 'Elementary Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fb3c822006611ee', '9be59632320d4ec7', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fb5102e006611ee', '9010b6ea7b2644e7', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fb6660d006611ee', '45f0cf54ab9c47bb', '', '', '', '', 'Armed Forces Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fb7acc8006611ee', 'ccfc4e0090d3431e', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('5fb8fdd6006611ee', '67b3d2067a0246b8', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('89f29950006811ee', '98b5fac0cfe84641', 'Student', 'Private', 'Permanent/Regular', '', 'Armed Forces Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('89f50b84006811ee', 'd7a07901293a4ceb', 'Self-Employed', 'Private', 'Casual', '', 'Elementary Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('89f7a9b8006811ee', '2ac3cf59c1524105', 'Employed', 'Government', 'Casual', '', 'Plant & Machine Operators & Assemblers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('89fabaa7006811ee', 'a1b8b467e6314aa2', 'Self-Employed', 'Private', 'Casual', '', 'Technician & Associate Professionals', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('c6203095006811ee', '1bb8e254edb34ca4', 'Employed', 'Private', 'Casual', '', 'Clerical Support Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('c6240872006811ee', '62e4cc0a5fcd4d43', 'Unemployed', 'Government', 'Seasonal', '', 'Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('c6287e32006811ee', '2918690352a84d76', 'Unemployed', 'Private', 'Emergency', '', 'Service & Sales Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('c62b4c65006811ee', 'f7e10d6275a24faf', 'Unemployed', 'Government', 'Seasonal', '', 'Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('c62e1a2e006811ee', '0993726788fc4da6', 'Employed', 'Private', 'Permanent/Regular', '', 'Others', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('c630dcdc006811ee', '331c047b5f1c4b02', 'Employed', 'Private', 'Casual', '', 'Armed Forces Occupations', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('c633cbc4006811ee', 'fc23a5d8358e43ed', 'Employed', 'Government', 'Casual', '', 'Service & Sales Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('c636aa02006811ee', '5c5f0335567148c5', 'Self-Employed', 'Government', 'Casual', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('c63a138c006811ee', '709db7bfdfd54ed7', 'Unemployed', 'Government', 'Permanent/Regular', '', 'Service & Sales Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('c63ce94a006811ee', '4f1b7eb4a22f481f', 'Student', 'Private', 'Seasonal', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('c63fbcc8006811ee', '72fbc8f393c54a52', '', '', '', 'Norris-Clark', 'Plant & Machine Operators & Assemblers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('c6424ed0006811ee', 'e3e1fefab57b4d2b', '', '', '', 'James, King and Smith', 'Service & Sales Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('c64471f5006811ee', 'cf1e695189164cb0', '', '', '', 'Long and Sons', 'Professionals', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('c646a25a006811ee', '4d88f0b5cfb0498c', '', '', '', 'Harris-Clark', 'Armed Forces Occupations', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('c648d0aa006811ee', 'a03c288c9e7744ef', '', '', '', 'Hansen-Kaufman', 'Skilled Agricultural, Forestry & Fishery Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('c64b59d4006811ee', 'ecbe9e2ba8dc49f2', '', '', '', 'Wilson, Smith and Phelps', 'Others', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('c64d7232006811ee', 'c5a74e0749e848a7', '', '', '', 'Meadows-Williams', 'Others', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('c64f9f5f006811ee', '47252a81d20248eb', '', '', '', 'Duarte-Hughes', 'Service & Sales Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('c651b971006811ee', 'd079103545264377', '', '', '', 'Aguilar-Walters', 'Clerical Support Workers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('c653e7aa006811ee', '83cedfbe863f422b', '', '', '', 'Figueroa, Mcdonald and Jones', 'Clerical Support Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('c65613aa006811ee', '9483ef16746442d3', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c6575b1d006811ee', '13e047bbbc0940d0', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c658b0bb006811ee', 'afa79e40f1c14ade', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c659f8e8006811ee', '9a97f4036155488f', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c65b34c1006811ee', '014f4806a3c04d57', '', '', '', '', 'Managers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c65c7c68006811ee', 'df4c535be2c64784', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c65dd0eb006811ee', '6e69601ad44d4ceb', '', '', '', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c65f1805006811ee', '15d27e19ed6a4e2b', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c6605fdc006811ee', '43ea1e5b0a264321', '', '', '', '', 'Elementary Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('c6620959006811ee', '6a35db10b244431f', '', '', '', '', 'Clerical Support Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00');

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
('006db4a8194b4ab7', 'Ricardo', '', 'Wilson', ''),
('00869b081f484f9e', 'Michael', '', 'Walker', ''),
('014f4806a3c04d57', 'David', '', 'Rogers', ''),
('01ab34491dc64718', 'Mary', '', 'Brown', ''),
('08e80fc534754244', 'Bradley', '', 'Spencer', ''),
('0993726788fc4da6', 'Virginia', '', 'Patterson', ''),
('0ca1dd810b754844', 'Steven', '', 'Watts', ''),
('0e60bda24f4c4b36', 'Teresa', '', 'Wilcox', ''),
('0f1f73cf1d9a45c5', 'Katherine', '', 'Peterson', ''),
('11dc40aef5014976', 'Natalie', '', 'Hurley', ''),
('13e047bbbc0940d0', 'Victoria', '', 'Parker', ''),
('13fcd16c1473403d', 'Joseph', '', 'Hughes', ''),
('14ecd98cf17248f2', 'Haley', '', 'Meadows', ''),
('15d27e19ed6a4e2b', 'Joseph', '', 'Montgomery', ''),
('167bc4b13bed496f', 'Tina', '', 'Perry', ''),
('174f4cde82dc4879', 'Dustin', '', 'Cooper', ''),
('19c9f82da56a4746', 'Jennifer', '', 'Zamora', ''),
('1a47098161644547', 'Dakota', '', 'Campbell', ''),
('1a4ccbcb977c4528', 'Mary', '', 'Russell', ''),
('1a7e892b4a7d4142', 'Jacqueline', '', 'Williams', ''),
('1a91c420f16442ec', 'Lisa', '', 'Conrad', ''),
('1bb8e254edb34ca4', 'Christina', '', 'Butler', ''),
('1bc5459ff5c740b1', 'Michael', '', 'Miranda', ''),
('1cc2c3fd45e84d6c', 'Calvin', '', 'Velasquez', ''),
('1cdd41149cfc4d6f', 'Darlene', '', 'Smith', ''),
('1ebb6ce2af42446c', 'Rodney', '', 'Armstrong', ''),
('2053661ba6b344b9', 'Erica', '', 'Waller', ''),
('2068fa4d75284271', 'Amy', '', 'Grant', ''),
('20b5951c0c084709', 'Danielle', '', 'Bean', ''),
('20bc358515e34ad8', 'Deborah', '', 'Valenzuela', ''),
('220810a5889f48b5', 'Ricky', '', 'Short', ''),
('2284923f36db4bd6', 'Bruce', '', 'Nguyen', ''),
('22eb395f547f476d', 'Amanda', '', 'Smith', ''),
('23806a08599e42d0', 'John', '', 'Ballard', ''),
('240d632f4be84033', 'Carol', '', 'Harris', ''),
('241bc1cb0bd14ead', 'Scott', '', 'Gordon', ''),
('2485d0f0be074c96', 'Jennifer', '', 'Martin', ''),
('24d0e5d29c2c422e', 'Brian', '', 'Cox', ''),
('2640bdb4e2f74624', 'Mariah', '', 'Washington', ''),
('268c130445e94a21', 'Leah', '', 'Clark', ''),
('2800ad0fa2324cc0', 'Deanna', '', 'Franklin', ''),
('288019cb40234083', 'Pamela', '', 'Welch', ''),
('2918690352a84d76', 'Zachary', '', 'Barrera', ''),
('2a33847bf80e43cc', 'Michael', '', 'Murray', ''),
('2ac3cf59c1524105', 'Stephanie', '', 'Montgomery', ''),
('2b0ed8b323034a4f', 'Hector', '', 'Massey', ''),
('2b36b31184ba4b7a', 'Andrea', '', 'Santiago', ''),
('2b457a0b952c4166', 'Ethan', '', 'Farrell', ''),
('2b57c4acc01743aa', 'Craig', '', 'Welch', ''),
('2c373fb02a644ac7', 'Nicholas', '', 'Young', ''),
('2caae465e9894e28', 'Kyle', '', 'Nelson', ''),
('2e0a5a9d5f154a50', 'Justin', '', 'Smith', ''),
('2eb294c86ebe487d', 'Joseph', '', 'Schneider', ''),
('2ef6088ef01d4a36', 'Stephanie', '', 'Leonard', ''),
('2f64abc1a66e428b', 'Gary', '', 'Brennan', ''),
('2f654989f1ba4c75', 'Michael', '', 'Melendez', ''),
('311dda1aa918443a', 'Janet', '', 'Price', ''),
('31399d9a1f354883', 'Jennifer', '', 'Whitney', ''),
('3177eb89852d4d85', 'Kelly', '', 'Morris', ''),
('31a58113e110491c', 'Victoria', '', 'Burnett', ''),
('3226d867382a45aa', 'Brian', '', 'Butler', ''),
('32829e4ceb0c459e', 'Paige', '', 'Cooper', ''),
('32e17f9045964e1e', 'Patricia', '', 'Davis', ''),
('331c047b5f1c4b02', 'Justin', '', 'Baker', ''),
('357fa1f63ca44b38', 'Steven', '', 'Harris', ''),
('376bf0743a294f1e', 'Sherry', '', 'Young', ''),
('3829c6403cc7416d', 'Amber', '', 'Carroll', ''),
('39b97ec74ab941e6', 'Kevin', '', 'Smith', ''),
('39f0c685f5514460', 'Angie', '', 'French', ''),
('3a0ed245649d4140', 'Samuel', '', 'Conner', ''),
('3a70eb90096d4db6', 'Lonnie', '', 'Reed', ''),
('3aa28c6b621f446c', 'Cynthia', '', 'Fuller', ''),
('3adb5a07a00845de', 'Kimberly', '', 'Cox', ''),
('3c6244f35f944001', 'Alexis', '', 'Hogan', ''),
('3cb3ecccea004476', 'Christy', '', 'Houston', ''),
('3d1a05b8a5764cda', 'Latoya', '', 'Hobbs', ''),
('3d88a4e970224558', 'Rachel', '', 'Hughes', ''),
('3e11f96ea5574b48', 'Maurice', '', 'Larson', ''),
('3f47782d5f2248f5', 'Justin', '', 'Daniel', ''),
('40be3770596d4a22', 'Johnny', '', 'Prince', ''),
('41aebfb8d4c840ae', 'Kristin', '', 'Anderson', ''),
('427567f7f35b4129', 'Jaime', '', 'Floyd', ''),
('43ea1e5b0a264321', 'Anna', '', 'Wilson', ''),
('441de5decfc64005', 'Cory', '', 'Nicholson', ''),
('446d36b06af34dd3', 'Tyrone', '', 'Taylor', ''),
('44d3932e12424e29', 'Brian', '', 'Turner', ''),
('45f0cf54ab9c47bb', 'Thomas', '', 'Davis', ''),
('47252a81d20248eb', 'Mark', '', 'Robinson', ''),
('4797a3ff60f04865', 'Eddie', '', 'Baird', ''),
('47eb4bea6c9742c7', 'Bonnie', '', 'Benton', ''),
('496f68b183424124', 'Francisco', '', 'Padilla', ''),
('4a4572cfcb304fc1', 'Alicia', '', 'Moody', ''),
('4ba56f8a5d4241de', 'Mike', '', 'Mccoy', ''),
('4d59a8af32bf4ddc', 'Scott', '', 'Garcia', ''),
('4d88f0b5cfb0498c', 'Joyce', '', 'Adams', ''),
('4da61fe520624c03', 'Darlene', '', 'Willis', ''),
('4db992ef17724902', 'Diana', '', 'Newman', ''),
('4dd1c1662e0e44ae', 'Jason', '', 'Davis', ''),
('4def0aa479d34153', 'Jacob', '', 'Wilson', ''),
('4f0bfe5d4ad94900', 'Cody', '', 'Miller', ''),
('4f1b7eb4a22f481f', 'Corey', '', 'Norris', ''),
('5029e170625c4064', 'Colleen', '', 'Singh', ''),
('50a92f6b3a694969', 'Jeffrey', '', 'Cunningham', ''),
('52760bb5d6094006', 'Gary', '', 'Wright', ''),
('535611fdc5ef44e0', 'Lydia', '', 'Cline', ''),
('543ff63c7e2f49d4', 'Brianna', '', 'Pugh', ''),
('54db97d74839456a', 'Jennifer', '', 'Paul', ''),
('554e1418802741f8', 'William', '', 'Williams', ''),
('55dccabed2c54ea4', 'Monique', '', 'Santiago', ''),
('58ddce317f7d4825', 'Matthew', '', 'Daniels', ''),
('5c51135223ab4c6f', 'Chelsey', '', 'Simmons', ''),
('5c5f0335567148c5', 'Mary', '', 'Atkins', ''),
('5d288d6675da4e78', 'Jacob', '', 'Daniels', ''),
('5d39bdf41b6e45b0', 'Brandon', '', 'Park', ''),
('5e0fa8e8847749cf', 'Matthew', '', 'Sawyer', ''),
('5e44bed9c4af4c79', 'Ann', '', 'White', ''),
('5f3e7e0f611d4a11', 'James', '', 'Johnson', ''),
('612173381c654dbc', 'Cheryl', '', 'Bailey', ''),
('61e19a0f54d3481f', 'Brandon', '', 'Russell', ''),
('62e4cc0a5fcd4d43', 'Austin', '', 'Wiley', ''),
('641f103ba4fb4f27', 'Andrew', '', 'Garrett', ''),
('647f171adfdb4e16', 'Elizabeth', '', 'Kemp', ''),
('6722e3f26bd941a5', 'Don', '', 'Jones', ''),
('67b3d2067a0246b8', 'Jacqueline', '', 'Powell', ''),
('6a35db10b244431f', 'Russell', '', 'Chaney', ''),
('6b360e08aa0146aa', 'Erika', '', 'Mcintosh', ''),
('6c58297dcd8945db', 'William', '', 'Johnston', ''),
('6c8aff04e48d4ff4', 'Natalie', '', 'Baker', ''),
('6d7b7389d4554b19', 'Jennifer', '', 'Morris', ''),
('6df1131a248448df', 'David', '', 'Johnson', ''),
('6e3c9449910a4a7a', 'Daniel', '', 'Jimenez', ''),
('6e5647ce90b2480e', 'Angelica', '', 'Gray', ''),
('6e69601ad44d4ceb', 'Jennifer', '', 'Andrews', ''),
('6f1719468ac74c31', 'Mitchell', '', 'Johnston', ''),
('6fbba7531d7a4b22', 'John', '', 'Collins', ''),
('701cd068cf5840bb', 'James', '', 'Smith', ''),
('709db7bfdfd54ed7', 'Jorge', '', 'Snyder', ''),
('72fbc8f393c54a52', 'Brandon', '', 'Castillo', ''),
('73cf6dbdc34b4e16', 'Nicholas', '', 'Wilson', ''),
('74116895286d4ec0', 'Stephanie', '', 'Meyers', ''),
('742e1b2a1e0646f0', 'Jennifer', '', 'Hanna', ''),
('74fa93bd85c44ef4', 'Dawn', '', 'Mccoy', ''),
('78577f3b86564df9', 'Jennifer', '', 'Stevens', ''),
('7c32c036498644b3', 'James', '', 'Mays', ''),
('7cb5830a45d44ba5', 'Victoria', '', 'Moody', ''),
('7d0157aa54fe44d1', 'Jacob', '', 'Johnson', ''),
('800b25707631471d', 'April', '', 'Powers', ''),
('8238d716757d4dac', 'Christina', '', 'Scott', ''),
('82ebdca91fb2468a', 'Cynthia', '', 'Rogers', ''),
('838414bb912c4c73', 'Mckenzie', '', 'Schaefer', ''),
('83a0c8e51eef40f3', 'Brian', '', 'Weaver', ''),
('83b76089577e46da', 'Walter', '', 'Ferrell', ''),
('83cedfbe863f422b', 'Aaron', '', 'King', ''),
('855d63e6797b4ab1', 'Bruce', '', 'Mitchell', ''),
('85be7ed9bbde497a', 'Joseph', '', 'Blackwell', ''),
('879d2c769a5c4150', 'Christian', '', 'Jenkins', ''),
('89104d7200884a17', 'Melanie', '', 'Jones', ''),
('89c693fe44b74ad9', 'Monica', '', 'Ramirez', ''),
('8ad385d66e394f0b', 'Samuel', '', 'Brennan', ''),
('8af38440288e47c9', 'Kimberly', '', 'Campbell', ''),
('8afee284604c4913', 'Melissa', '', 'Dennis', ''),
('8baf88a4e0fc4a4e', 'Sean', '', 'Mcdonald', ''),
('8d7d6ddec01a45b6', 'Anne', '', 'Holt', ''),
('8d9b189ded80465a', 'Yolanda', '', 'Bird', ''),
('8e5c1e57a08d4caa', 'Kenneth', '', 'Benson', ''),
('8f42c27c96fe470a', 'Charles', '', 'Dennis', ''),
('9010b6ea7b2644e7', 'Ashley', '', 'Rose', ''),
('92193863a3e54953', 'John', '', 'Espinoza', ''),
('92a4b8da96f44d1a', 'Leslie', '', 'Dorsey', ''),
('939a2253d31045b0', 'James', '', 'Ali', ''),
('9442055cd541442a', 'Kayla', '', 'Garcia', ''),
('94609fcdab2740f1', 'Martin', '', 'Diaz', ''),
('9483ef16746442d3', 'Patricia', '', 'Lee', ''),
('954c4670190440d6', 'Samantha', '', 'Thompson', ''),
('959d980db1d84fa5', 'Kimberly', '', 'Brock', ''),
('960b8990fdd140df', 'Kevin', '', 'Powell', ''),
('962335f60fad4293', 'Billy', '', 'Nguyen', ''),
('964855a18a6d4cfc', 'Justin', '', 'Berger', ''),
('96cb48f3cd394093', 'Lisa', '', 'Smith', ''),
('97179f7d32284b66', 'Michael', '', 'Lewis', ''),
('98b5fac0cfe84641', 'Amy', '', 'Adams', ''),
('993fd15450ad4f71', 'Lucas', '', 'Johnson', ''),
('9a97f4036155488f', 'Zachary', '', 'Gilbert', ''),
('9b201c319e944e86', 'Peter', '', 'Barry', ''),
('9bc4216632944c3d', 'Colton', '', 'Johnson', ''),
('9be59632320d4ec7', 'Matthew', '', 'Avery', ''),
('9c2f99f0d626423b', 'Brenda', '', 'Nichols', ''),
('9e5bce94fa9a4365', 'Todd', '', 'Mitchell', ''),
('9fb2789ef6c94855', 'Caitlin', '', 'Miller', ''),
('a03c288c9e7744ef', 'William', '', 'Frye', ''),
('a1b8b467e6314aa2', 'Scott', '', 'Smith', ''),
('a21e23e65d474784', 'Amy', '', 'Peterson', ''),
('a3500afda6684986', 'Benjamin', '', 'Rosales', ''),
('a3a6477fb386447b', 'Robert', '', 'Rodriguez', ''),
('a49cfd9b56b3454e', 'Christopher', '', 'Sanders', ''),
('a6326423424e4a17', 'Mark', '', 'Henry', ''),
('a731bd169b1d4862', 'Stacy', '', 'Lewis', ''),
('a81730bff2794925', 'Christine', '', 'Chapman', ''),
('a866dfc4b14e4e54', 'Stephen', '', 'Collins', ''),
('a918601949914115', 'Ana', '', 'Scott', ''),
('a97b253ad02a4e94', 'Sandra', '', 'Ramirez', ''),
('a9c63e9ea7974bf7', 'Stephen', '', 'Parker', ''),
('aae027d6bdad438f', 'Melinda', '', 'Mccall', ''),
('ab1d345e329b4cfa', 'John', '', 'Chavez', ''),
('aba2862c322b48e0', 'Emily', '', 'Nguyen', ''),
('ac9d4bac9b864b14', 'Kenneth', '', 'Wright', ''),
('adac0504b7364575', 'Kristen', '', 'Cruz', ''),
('ae9ae8410fbb4afb', 'Philip', '', 'Gonzales', ''),
('af7cb82905944bdd', 'William', '', 'Cantu', ''),
('afa79e40f1c14ade', 'Richard', '', 'Hernandez', ''),
('b09e16842b714b4f', 'Willie', '', 'Alexander', ''),
('b29e286e065f402f', 'Eric', '', 'Farrell', ''),
('b3fc26ea81ed44c8', 'Jennifer', '', 'Evans', ''),
('b4d91e771e8a416b', 'Benjamin', '', 'Gonzales', ''),
('b536102f7a954a35', 'Tyler', '', 'Bowen', ''),
('b8125cbdc1c64f30', 'Roberto', '', 'Duncan', ''),
('b8a96bc2dfa6447d', 'Christopher', '', 'Cruz', ''),
('b9dae3094d41477d', 'Jennifer', '', 'Blevins', ''),
('baf492f2e9d2435f', 'Stephen', '', 'Guerrero', ''),
('bed8e0b62dde4bcc', 'Jeanne', '', 'Chan', ''),
('c01e022847b5439c', 'Debra', '', 'Andrews', ''),
('c09418b0f55948da', 'Michael', '', 'Berry', ''),
('c0ab6b72c59a4675', 'Heidi', '', 'Dean', ''),
('c179b70a38654b8e', 'Troy', '', 'Solis', ''),
('c1dbab51cbcf409a', 'Sharon', '', 'Giles', ''),
('c2e675e2db6c418f', 'Charles', '', 'Kaiser', ''),
('c5a74e0749e848a7', 'Adam', '', 'White', ''),
('c5bd12e751df4ccf', 'William', '', 'Brown', ''),
('c5dbc0bd89674865', 'Brandy', '', 'Blevins', ''),
('c630bc2000f045f3', 'Sarah', '', 'Lewis', ''),
('c712d2952547465f', 'Julie', '', 'Woods', ''),
('c7738c8cca224bfc', 'Robert', '', 'Dunn', ''),
('c7fde4e688f04dcf', 'Cassidy', '', 'Dennis', ''),
('c89f6633f4b54226', 'Abigail', '', 'Vargas', ''),
('c8c6183ca2b04c8f', 'Cody', '', 'Morris', ''),
('c8f818d4f29c4cba', 'Joanne', '', 'Jones', ''),
('c9dccbc653a140e8', 'Leah', '', 'Harris', ''),
('cc1aeff166af4b98', 'Ryan', '', 'Tucker', ''),
('ccfc4e0090d3431e', 'Kathy', '', 'Patterson', ''),
('cd093603d46a4024', 'Mark', '', 'Phillips', ''),
('cdf1b6aea6f04abb', 'Gloria', '', 'Smith', ''),
('ce9ef85242da4333', 'Alison', '', 'Vega', ''),
('cf1e695189164cb0', 'Linda', '', 'Wilson', ''),
('cfb2deb2c0c44757', 'Suzanne', '', 'Preston', ''),
('cfd642f8c16943fc', 'Drew', '', 'Lopez', ''),
('d02047538ae0475f', 'Nicole', '', 'Larson', ''),
('d079103545264377', 'Paul', '', 'Myers', ''),
('d0b1eef672424d16', 'Denise', '', 'Rodriguez', ''),
('d4b1d6fff1304605', 'Maria', '', 'Church', ''),
('d7226995ad074540', 'Steven', '', 'Kennedy', ''),
('d7274c0a87354b2b', 'Jay', '', 'Rivera', ''),
('d7a07901293a4ceb', 'Tiffany', '', 'Bennett', ''),
('db53ce388e1c4e30', 'Teresa', '', 'Brown', ''),
('dcff16a94d884b1c', 'Michael', '', 'Mason', ''),
('dd31f2338c2242c2', 'Laura', '', 'Skinner', ''),
('dd3a30c47e844cde', 'Nicholas', '', 'Meyer', ''),
('dd7ccfd086b14a4a', 'Kimberly', '', 'Davis', ''),
('ddbe438d03b34abe', 'Samantha', '', 'Gray', ''),
('df4c535be2c64784', 'Travis', '', 'Anderson', ''),
('e01b39a412a4418e', 'Morgan', '', 'Chavez', ''),
('e0255cd3e8864f11', 'Patricia', '', 'Dunlap', ''),
('e04398eac4b746c0', 'Robert', '', 'Baldwin', ''),
('e215b6089fcb4102', 'Eric', '', 'Burke', ''),
('e3e1fefab57b4d2b', 'Beverly', '', 'Woods', ''),
('e40a257a891741c9', 'Matthew', '', 'Brown', ''),
('e4fe18c1c33e4caa', 'Eduardo', '', 'Hudson', ''),
('e7150903a7284088', 'Timothy', '', 'Anderson', ''),
('e7f2e614194542c3', 'Brian', '', 'Sutton', ''),
('e83ef6f0648d4ef1', 'Stephanie', '', 'Boyle', ''),
('e854d005ffe54b9c', 'Paul', '', 'White', ''),
('e96234b64db94783', 'Jeremy', '', 'Strong', ''),
('ea1bf6f5265d4011', 'Rachel', '', 'Sherman', ''),
('eb900aa6fc5c4526', 'Teresa', '', 'Lawrence', ''),
('ecb4d4e493044a2d', 'Joseph', '', 'Roman', ''),
('ecbe9e2ba8dc49f2', 'Mathew', '', 'Jones', ''),
('ed78bb44e0c649fb', 'Crystal', '', 'Hurst', ''),
('ef14fbe4e92c4dd6', 'Sophia', '', 'Monroe', ''),
('ef9ce574147e4c46', 'Steven', '', 'Scott', ''),
('f073360b698949d3', 'David', '', 'Charles', ''),
('f0f8befdbf324d21', 'Teresa', '', 'Hill', ''),
('f11a418191154513', 'Nathan', '', 'Ramos', ''),
('f18d64e65b544a86', 'Justin', '', 'Moore', ''),
('f2218f94c81c4206', 'Lori', '', 'Santiago', ''),
('f4030e6e9e574c1a', 'Bethany', '', 'Ruiz', ''),
('f47ec1a475c74605', 'Mary', '', 'Carroll', ''),
('f51b18be70fa49f0', 'Donna', '', 'Bates', ''),
('f745675ad2304417', 'David', '', 'Nelson', ''),
('f7e10d6275a24faf', 'Makayla', '', 'Allison', ''),
('f91230b6c8d840b8', 'Joshua', '', 'Lang', ''),
('fa2f302accd94df6', 'Melanie', '', 'Roy', ''),
('fa44264ab3fc4679', 'Thomas', '', 'Fitzgerald', ''),
('fc0f54520e5f4ab3', 'Nancy', '', 'Garcia', ''),
('fc1c09ff358f47b0', 'Seth', '', 'Perez', ''),
('fc23a5d8358e43ed', 'Amy', '', 'Green', ''),
('fd23ced91def433b', 'Jesse', '', 'Ellis', ''),
('ffd2470b42444d9f', 'Kevin', '', 'Howell', '');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `PERSONAL_INFORMATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `BIRTHDAY` date NOT NULL,
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
('5eed3e64006611ee', '20bc358515e34ad8', '1978-06-22', '', 'Female', 'Vocational', 'AB-', 'Other', 'Divorced'),
('5ef20989006611ee', 'cfb2deb2c0c44757', '1965-05-10', '', 'Male', 'Junior High School', 'A+', 'Born Again', 'Married'),
('5ef6a92a006611ee', '960b8990fdd140df', '1941-03-06', '', 'Female', 'Senior High School', 'O-', 'Jehovahs Witness', 'Separated'),
('5efaa9ec006611ee', '83b76089577e46da', '1988-11-24', '', 'Female', 'Elementary Education', 'A+', 'Muslim', 'Separated'),
('5efe0bf8006611ee', 'f073360b698949d3', '1994-08-07', '', 'Female', 'Kindergarten', 'A+', 'Born Again', 'Married'),
('5f01860c006611ee', 'cfd642f8c16943fc', '1960-12-09', '', 'Female', 'Vocational', 'B-', 'Atheist', 'Separated'),
('5f051139006611ee', 'c2e675e2db6c418f', '1942-05-31', '', 'Female', 'Senior High School', 'B-', 'Born Again', 'Widowed'),
('5f086b38006611ee', 'b09e16842b714b4f', '1918-01-11', '', 'Male', 'Vocational', 'O-', 'Other', 'Divorced'),
('5f0bac76006611ee', 'c9dccbc653a140e8', '1933-07-09', '', 'Female', 'None', 'O+', 'Protestant', 'Separated'),
('5f0e8d88006611ee', '19c9f82da56a4746', '1927-03-26', '', 'Female', 'Post Graduate', 'A-', 'Seventh Day Adventist', 'Widowed'),
('5f114787006611ee', '3cb3ecccea004476', '1924-11-08', '', 'Female', 'Elementary Education', 'AB+', 'Atheist', 'Widowed'),
('5f141032006611ee', '9bc4216632944c3d', '2009-12-12', '', 'Female', 'Junior High School', 'AB-', 'Buddhist', 'Single'),
('5f16fe14006611ee', '1a7e892b4a7d4142', '1934-06-09', '', 'Female', 'Kindergarten', 'AB+', 'Roman Catholic', 'Widowed'),
('5f19bba5006611ee', '8e5c1e57a08d4caa', '1929-06-27', '', 'Male', 'College', 'A-', 'Atheist', 'Married'),
('5f1c82db006611ee', '40be3770596d4a22', '1954-10-23', '', 'Female', 'Junior High School', 'AB+', 'Born Again', 'Divorced'),
('5f1f56e9006611ee', '6c8aff04e48d4ff4', '2009-10-17', '', 'Male', 'Vocational', 'AB+', 'Agnostic', 'Divorced'),
('5f221fbe006611ee', '2b0ed8b323034a4f', '2012-08-30', '', 'Male', 'Vocational', 'O+', 'Muslim', 'Married'),
('5f24f189006611ee', 'c5bd12e751df4ccf', '1986-12-28', '', 'Male', 'Junior High School', 'O+', 'Buddhist', 'Widowed'),
('5f27bd09006611ee', '2ef6088ef01d4a36', '1983-04-13', '', 'Female', 'Vocational', 'A-', 'Iglesia ni Cristo', 'Married'),
('5f2a86f4006611ee', 'e40a257a891741c9', '2020-09-10', '', 'Male', 'Senior High School', 'O-', 'Protestant', 'Separated'),
('5f2d5a78006611ee', '0e60bda24f4c4b36', '1940-04-23', '', 'Male', 'None', 'B+', 'Other', 'Separated'),
('5f359bb5006611ee', '174f4cde82dc4879', '2020-05-01', '', 'Female', 'Vocational', 'AB-', 'Seventh Day Adventist', 'Single'),
('5f3a0bed006611ee', '1a91c420f16442ec', '1915-01-23', '', 'Male', 'Kindergarten', 'A-', 'Agnostic', 'Separated'),
('5f3cf784006611ee', '268c130445e94a21', '1976-09-16', '', 'Male', 'Elementary Education', 'A-', 'Muslim', 'Married'),
('5f3ffdf4006611ee', '2284923f36db4bd6', '1908-07-09', '', 'Male', 'None', 'O+', 'Protestant', 'Married'),
('5f4304c9006611ee', '31399d9a1f354883', '1995-06-12', '', 'Female', 'Vocational', 'A-', 'Protestant', 'Divorced'),
('5f45c283006611ee', 'a49cfd9b56b3454e', '1949-07-28', '', 'Male', 'Elementary Education', 'O-', 'Iglesia ni Cristo', 'Separated'),
('5f48a1cb006611ee', '89104d7200884a17', '1924-08-02', '', 'Male', 'Vocational', 'AB-', 'Agnostic', 'Single'),
('5f4b7e55006611ee', '3226d867382a45aa', '1958-01-18', '', 'Female', 'College', 'O+', 'Iglesia ni Cristo', 'Divorced'),
('5f4eee9c006611ee', 'c09418b0f55948da', '1943-10-01', '', 'Female', 'College', 'AB-', 'Iglesia ni Cristo', 'Separated'),
('5f52652c006611ee', 'e01b39a412a4418e', '1977-11-19', 'South Chad', 'Male', 'Kindergarten', '', '', ''),
('5f53ae75006611ee', '23806a08599e42d0', '1948-12-13', '', '', 'Elementary Education', '', '', 'Separated'),
('5f54be26006611ee', '3d88a4e970224558', '2012-03-23', 'West Courtney', 'Female', 'Elementary Education', '', '', ''),
('5f55de38006611ee', '7d0157aa54fe44d1', '1930-05-17', '', '', 'None', '', '', 'Married'),
('5f56e571006611ee', '8238d716757d4dac', '1928-06-29', 'Jamesberg', 'Female', 'Elementary Education', '', '', ''),
('5f57f3a3006611ee', '3aa28c6b621f446c', '1991-02-01', '', '', 'Elementary Education', '', '', 'Widowed'),
('5f590716006611ee', '006db4a8194b4ab7', '1946-04-01', 'New Madisonborough', 'Male', 'Senior High School', '', '', ''),
('5f5a24bb006611ee', '3a70eb90096d4db6', '1975-04-27', '', '', 'Post Graduate', '', '', 'Separated'),
('5f5b3557006611ee', 'dd31f2338c2242c2', '1959-01-26', 'Gonzalezberg', 'Female', 'Junior High School', '', '', ''),
('5f5c3cbd006611ee', '5029e170625c4064', '1962-03-18', '', '', 'Post Graduate', '', '', 'Separated'),
('5f5d4ffb006611ee', '4d59a8af32bf4ddc', '1932-11-27', 'Lake Roger', 'Female', 'Kindergarten', '', '', ''),
('5f5e5f1f006611ee', 'b9dae3094d41477d', '2018-03-07', '', '', 'Elementary Education', '', '', 'Separated'),
('5f5f9112006611ee', 'a918601949914115', '1951-10-18', 'Lake Corey', 'Female', 'Junior High School', '', '', ''),
('5f60968e006611ee', 'ddbe438d03b34abe', '1961-01-25', '', '', 'Vocational', '', '', 'Widowed'),
('5f61a826006611ee', '50a92f6b3a694969', '1913-04-18', 'Dennisborough', 'Female', 'College', '', '', ''),
('5f62c5a0006611ee', 'fc1c09ff358f47b0', '1971-05-16', '', '', 'None', '', '', 'Married'),
('5f63dc9f006611ee', '9e5bce94fa9a4365', '2012-07-02', 'Brucestad', 'Male', 'Post Graduate', '', '', ''),
('5f64eb8a006611ee', 'db53ce388e1c4e30', '1985-12-07', '', '', 'None', '', '', 'Married'),
('5f65f739006611ee', '3829c6403cc7416d', '1986-10-22', 'Ruthshire', 'Female', 'College', '', '', ''),
('5f67078c006611ee', 'aba2862c322b48e0', '1954-01-11', '', '', 'Junior High School', '', '', 'Single'),
('5f682680006611ee', 'cd093603d46a4024', '1941-02-05', 'Port Alexander', 'Female', 'College', '', '', ''),
('5f692c0d006611ee', 'a731bd169b1d4862', '1994-11-23', '', '', 'Senior High School', '', '', 'Divorced'),
('5f6a3e3b006611ee', '92193863a3e54953', '1918-01-28', 'Port Matthewfurt', 'Male', 'Junior High School', '', '', ''),
('5f6b4ea1006611ee', '6d7b7389d4554b19', '2002-10-09', '', '', 'Junior High School', '', '', 'Divorced'),
('5f6c6e3d006611ee', 'c179b70a38654b8e', '1984-11-19', 'West Jamesfurt', 'Female', 'Junior High School', '', '', ''),
('5f6d7fe1006611ee', '311dda1aa918443a', '1936-09-24', '', '', 'Junior High School', '', '', 'Single'),
('5f6e8782006611ee', '94609fcdab2740f1', '2002-08-20', 'Andradetown', 'Male', 'Senior High School', '', '', ''),
('5f6f96e7006611ee', '4def0aa479d34153', '2016-02-11', '', '', 'College', '', '', 'Single'),
('5f70a777006611ee', '612173381c654dbc', '1984-08-07', 'Port Samantha', 'Male', 'Junior High School', '', '', ''),
('5f71c25f006611ee', 'c712d2952547465f', '1972-08-23', '', '', 'Kindergarten', '', '', 'Separated'),
('5f72c94a006611ee', '61e19a0f54d3481f', '2011-06-22', 'West Jessicaport', 'Female', 'Junior High School', '', '', ''),
('5f73dd5f006611ee', '92a4b8da96f44d1a', '1919-09-14', '', '', 'Senior High School', '', '', 'Widowed'),
('5f74faae006611ee', 'f0f8befdbf324d21', '1957-03-27', 'Jessicastad', 'Female', 'College', '', '', ''),
('5f760ac8006611ee', '962335f60fad4293', '1926-09-09', '', '', 'College', '', '', 'Separated'),
('5f771c97006611ee', '8af38440288e47c9', '1985-11-20', 'South Jeremy', 'Female', 'Vocational', '', '', ''),
('5f7824f4006611ee', 'a97b253ad02a4e94', '1994-10-11', '', '', 'Post Graduate', '', '', 'Widowed'),
('5f795327006611ee', 'c7fde4e688f04dcf', '1974-02-20', 'Williamside', 'Male', 'None', '', '', ''),
('5f7a716d006611ee', '32e17f9045964e1e', '1930-08-20', '', '', 'Senior High School', '', '', 'Single'),
('5f7b7d04006611ee', 'f47ec1a475c74605', '1950-06-05', 'Port Sherrifurt', 'Male', 'College', '', '', ''),
('5f7c8d76006611ee', 'dd7ccfd086b14a4a', '1909-02-18', '', '', 'Post Graduate', '', '', 'Separated'),
('5f7d9f0c006611ee', 'c8f818d4f29c4cba', '1979-06-25', 'Brianborough', 'Male', 'Elementary Education', '', '', ''),
('5f7ebd5a006611ee', '8afee284604c4913', '1918-08-21', '', '', 'None', '', '', 'Divorced'),
('5f7fce3f006611ee', 'e7f2e614194542c3', '1955-12-22', 'Lake Nicholas', 'Male', 'Senior High School', '', '', ''),
('5f80e001006611ee', '2caae465e9894e28', '1934-02-01', '', '', 'Elementary Education', '', '', 'Single'),
('5f81f354006611ee', '20b5951c0c084709', '1943-07-09', 'Deborahborough', 'Female', 'Elementary Education', '', '', ''),
('5f8309e1006611ee', '31a58113e110491c', '1971-07-26', '', '', 'College', '', '', 'Widowed'),
('5f842c4d006611ee', '2800ad0fa2324cc0', '1953-11-29', 'East Sarahberg', 'Male', 'Elementary Education', '', '', ''),
('5f853c5a006611ee', '1ebb6ce2af42446c', '2007-08-09', '', '', 'Senior High School', '', '', 'Single'),
('5f864f5f006611ee', '1cc2c3fd45e84d6c', '1994-04-27', 'Ryanbury', 'Male', 'Kindergarten', '', '', ''),
('5f876216006611ee', '376bf0743a294f1e', '1911-06-02', '', '', 'Junior High School', '', '', 'Widowed'),
('5f887da0006611ee', '2068fa4d75284271', '1935-04-11', 'Karenchester', 'Male', 'College', '', '', ''),
('5f899172006611ee', 'fa44264ab3fc4679', '1914-06-23', '', '', 'Senior High School', '', '', 'Widowed'),
('5f8a9871006611ee', '52760bb5d6094006', '2008-03-06', 'West Josephfort', 'Male', 'College', '', '', ''),
('5f8bad9a006611ee', '6b360e08aa0146aa', '2006-06-29', '', '', 'Senior High School', '', '', 'Widowed'),
('5f8ccbdd006611ee', 'c7738c8cca224bfc', '1964-07-21', 'Sonyafurt', 'Female', 'None', '', '', ''),
('5f8ddc6f006611ee', '742e1b2a1e0646f0', '1963-03-16', '', '', 'Elementary Education', '', '', 'Widowed'),
('5f8ee45a006611ee', '5d288d6675da4e78', '1980-08-08', 'Port Latoyaville', 'Male', 'College', '', '', ''),
('5f8ff437006611ee', '959d980db1d84fa5', '1965-07-13', '', '', 'Junior High School', '', '', 'Separated'),
('5f911335006611ee', '554e1418802741f8', '2022-05-16', 'Meyerchester', 'Male', 'College', '', '', ''),
('5f9222de006611ee', '288019cb40234083', '1967-03-08', '', '', 'Senior High School', '', '', 'Widowed'),
('5f93344e006611ee', 'adac0504b7364575', '1961-03-28', 'Port Patricia', 'Male', '', '', 'Agnostic', 'Married'),
('5f947305006611ee', '83a0c8e51eef40f3', '1960-08-06', 'West Joan', 'Female', '', '', 'Muslim', 'Single'),
('5f95bb15006611ee', 'c0ab6b72c59a4675', '1961-05-08', 'Port Shannonfurt', 'Female', '', '', 'Jehovahs Witness', 'Single'),
('5f970f7a006611ee', '89c693fe44b74ad9', '1960-09-10', 'Lake Jeffreychester', 'Female', '', '', 'Iglesia ni Cristo', 'Married'),
('5f984da5006611ee', 'dcff16a94d884b1c', '1961-04-02', 'Morenobury', 'Female', '', '', 'Born Again', 'Widowed'),
('5f99b289006611ee', '800b25707631471d', '1960-08-05', 'Nelsonborough', 'Female', '', '', 'Other', 'Married'),
('5f9b248c006611ee', '9b201c319e944e86', '1960-07-08', 'Karenbury', 'Male', '', '', 'Atheist', 'Separated'),
('5f9c6db7006611ee', '2b457a0b952c4166', '1960-11-12', 'Patrickfort', 'Female', '', '', 'Jehovahs Witness', 'Widowed'),
('5f9dae2c006611ee', '2eb294c86ebe487d', '1960-06-24', 'Lake David', 'Male', '', '', 'Protestant', 'Widowed'),
('5f9ef891006611ee', '5e44bed9c4af4c79', '1961-05-11', 'Michaelbury', 'Male', '', '', 'Protestant', 'Separated'),
('5fa04dd8006611ee', 'ffd2470b42444d9f', '1961-05-29', 'Lake Tiffanyborough', 'Female', '', '', 'Atheist', 'Widowed'),
('5fa18c59006611ee', '6e5647ce90b2480e', '1960-09-29', 'Michellechester', 'Male', '', '', 'Iglesia ni Cristo', 'Separated'),
('5fa2d707006611ee', '74116895286d4ec0', '1960-10-15', 'East Kelseyfort', 'Female', '', '', 'Agnostic', 'Single'),
('5fa42876006611ee', '08e80fc534754244', '1960-06-24', 'Matthewhaven', 'Female', '', '', 'Jehovahs Witness', 'Single'),
('5fa573c7006611ee', 'e854d005ffe54b9c', '1960-07-03', 'Jonathanport', 'Female', '', '', 'Jehovahs Witness', 'Married'),
('5fa6b176006611ee', 'bed8e0b62dde4bcc', '1961-05-09', 'Ellishaven', 'Female', '', '', 'Iglesia ni Cristo', 'Widowed'),
('5fa7fca8006611ee', '647f171adfdb4e16', '1960-12-11', 'South Tammy', 'Female', '', '', 'Protestant', 'Widowed'),
('5fa95186006611ee', '446d36b06af34dd3', '1961-01-29', 'South Kristen', 'Female', '', '', 'Jehovahs Witness', 'Separated'),
('5faa9285006611ee', '4db992ef17724902', '1961-05-28', 'Floresfort', 'Male', '', '', 'Born Again', 'Separated'),
('5fabe05c006611ee', '78577f3b86564df9', '1961-03-13', 'Lake Joshuastad', 'Male', '', '', 'Seventh Day Adventist', 'Separated'),
('5fad339d006611ee', '5c51135223ab4c6f', '1960-10-24', 'Lorishire', 'Female', '', '', 'Seventh Day Adventist', 'Separated'),
('5fae7c16006611ee', 'fc0f54520e5f4ab3', '1960-11-09', 'Ariasland', 'Female', '', '', 'Muslim', 'Single'),
('5fafbab1006611ee', '1a4ccbcb977c4528', '1961-02-06', 'Penningtonmouth', 'Female', '', '', 'Roman Catholic', 'Divorced'),
('5fb0ff60006611ee', 'd7226995ad074540', '1961-05-03', 'North Steven', 'Male', '', '', 'Other', 'Separated'),
('5fb253f4006611ee', 'a3500afda6684986', '1960-08-20', 'North Stephanie', 'Male', '', '', 'Born Again', 'Single'),
('5fb391e4006611ee', '9be59632320d4ec7', '1961-06-12', 'Stanleyberg', 'Male', '', '', 'Muslim', 'Married'),
('5fb4da23006611ee', '9010b6ea7b2644e7', '1960-10-26', 'Morrisstad', 'Male', '', '', 'Agnostic', 'Single'),
('5fb62eea006611ee', '45f0cf54ab9c47bb', '1960-06-17', 'Andrewsville', 'Female', '', '', 'Buddhist', 'Married'),
('5fb776f6006611ee', 'ccfc4e0090d3431e', '1960-10-30', 'Port Justinborough', 'Male', '', '', 'Muslim', 'Separated'),
('5fb8c949006611ee', '67b3d2067a0246b8', '1961-03-09', 'North Carlosshire', 'Male', '', '', 'Other', 'Widowed'),
('89f263bd006811ee', '98b5fac0cfe84641', '1907-10-20', '', 'Male', 'Post Graduate', 'O-', 'Iglesia ni Cristo', 'Divorced'),
('89f4d60e006811ee', 'd7a07901293a4ceb', '1960-01-22', '', 'Female', 'Elementary Education', 'A+', 'Muslim', 'Married'),
('89f76306006811ee', '2ac3cf59c1524105', '1936-09-01', '', 'Male', 'Post Graduate', 'AB+', 'Seventh Day Adventist', 'Divorced'),
('89fa76a7006811ee', 'a1b8b467e6314aa2', '1932-08-12', '', 'Female', 'Vocational', 'B-', 'Roman Catholic', 'Divorced'),
('c61fed32006811ee', '1bb8e254edb34ca4', '1935-12-07', '', 'Female', 'Junior High School', 'A-', 'Jehovahs Witness', 'Separated'),
('c623d03a006811ee', '62e4cc0a5fcd4d43', '1953-02-05', '', 'Male', 'None', 'A-', 'Atheist', 'Single'),
('c6283d9a006811ee', '2918690352a84d76', '1961-05-27', '', 'Male', 'College', 'B+', 'Muslim', 'Separated'),
('c62b166b006811ee', 'f7e10d6275a24faf', '1971-11-06', '', 'Female', 'Kindergarten', 'B-', 'Agnostic', 'Married'),
('c62de0d6006811ee', '0993726788fc4da6', '1979-04-10', '', 'Male', 'Senior High School', 'AB+', 'Atheist', 'Widowed'),
('c630a366006811ee', '331c047b5f1c4b02', '1974-08-19', '', 'Male', 'Junior High School', 'A+', 'Other', 'Single'),
('c6339199006811ee', 'fc23a5d8358e43ed', '1935-12-20', '', 'Male', 'Junior High School', 'A+', 'Buddhist', 'Single'),
('c636709b006811ee', '5c5f0335567148c5', '2001-11-27', '', 'Male', 'Kindergarten', 'B+', 'Born Again', 'Married'),
('c639d8a9006811ee', '709db7bfdfd54ed7', '1946-12-20', '', 'Female', 'Post Graduate', 'AB+', 'Protestant', 'Separated'),
('c63caedc006811ee', '4f1b7eb4a22f481f', '1953-07-16', '', 'Male', 'Senior High School', 'A-', 'Born Again', 'Widowed'),
('c63f859f006811ee', '72fbc8f393c54a52', '1945-07-27', 'Port Evelyn', 'Female', 'None', '', '', ''),
('c640f5e5006811ee', '6df1131a248448df', '2013-02-21', '', '', 'College', '', '', 'Separated'),
('c64217f1006811ee', 'e3e1fefab57b4d2b', '1945-12-22', 'Deanton', 'Male', 'Junior High School', '', '', ''),
('c6432fee006811ee', '3a0ed245649d4140', '1965-11-22', '', '', 'Junior High School', '', '', 'Divorced'),
('c6443b3c006811ee', 'cf1e695189164cb0', '1953-02-24', 'Ambertown', 'Female', 'Junior High School', '', '', ''),
('c6454c41006811ee', '1a47098161644547', '1980-08-12', '', '', 'None', '', '', 'Divorced'),
('c6466b7c006811ee', '4d88f0b5cfb0498c', '1913-11-19', 'Huffmouth', 'Female', 'College', '', '', ''),
('c64787a3006811ee', '3adb5a07a00845de', '1959-05-27', '', '', 'Vocational', '', '', 'Single'),
('c64899c5006811ee', 'a03c288c9e7744ef', '1975-01-15', 'Lutzfort', 'Male', 'College', '', '', ''),
('c64a0acb006811ee', '964855a18a6d4cfc', '1912-11-14', '', '', 'College', '', '', 'Widowed'),
('c64b23aa006811ee', 'ecbe9e2ba8dc49f2', '1918-04-20', 'East Nicholasfurt', 'Male', 'Elementary Education', '', '', ''),
('c64c341b006811ee', 'af7cb82905944bdd', '2014-07-27', '', '', 'Senior High School', '', '', 'Widowed'),
('c64d3b91006811ee', 'c5a74e0749e848a7', '1931-07-28', 'Roberttown', 'Male', 'Elementary Education', '', '', ''),
('c64e4b8b006811ee', '8baf88a4e0fc4a4e', '2012-11-11', '', '', 'Kindergarten', '', '', 'Widowed'),
('c64f6926006811ee', '47252a81d20248eb', '1917-11-23', 'Lake Taramouth', 'Male', 'None', '', '', ''),
('c6506e59006811ee', '4ba56f8a5d4241de', '1979-01-17', '', '', 'Elementary Education', '', '', 'Married'),
('c651826e006811ee', 'd079103545264377', '1962-10-31', 'Port Christinatown', 'Female', 'Vocational', '', '', ''),
('c6529e7c006811ee', '5e0fa8e8847749cf', '1977-12-10', '', '', 'Vocational', '', '', 'Married'),
('c653b09b006811ee', '83cedfbe863f422b', '1958-04-04', 'Chadberg', 'Male', 'None', '', '', ''),
('c654ce2a006811ee', '993fd15450ad4f71', '1972-03-27', '', '', 'College', '', '', 'Divorced'),
('c655ddfd006811ee', '9483ef16746442d3', '1960-08-22', 'Crossstad', 'Male', '', '', 'Seventh Day Adventist', 'Single'),
('c65724e4006811ee', '13e047bbbc0940d0', '1961-04-19', 'Juanview', 'Male', '', '', 'Roman Catholic', 'Married'),
('c6586e97006811ee', 'afa79e40f1c14ade', '1960-07-11', 'North Jessicaburgh', 'Female', '', '', 'Seventh Day Adventist', 'Widowed'),
('c659c278006811ee', '9a97f4036155488f', '1960-08-14', 'Williamland', 'Female', '', '', 'Jehovahs Witness', 'Divorced'),
('c65afea9006811ee', '014f4806a3c04d57', '1960-09-07', 'Ryanborough', 'Male', '', '', 'Agnostic', 'Separated'),
('c65c45e9006811ee', 'df4c535be2c64784', '1960-09-01', 'Pattersonburgh', 'Male', '', '', 'Roman Catholic', 'Married'),
('c65d9aef006811ee', '6e69601ad44d4ceb', '1961-02-27', 'Jonesberg', 'Male', '', '', 'Roman Catholic', 'Divorced'),
('c65ee239006811ee', '15d27e19ed6a4e2b', '1961-02-14', 'Donberg', 'Female', '', '', 'Agnostic', 'Married'),
('c6601e57006811ee', '43ea1e5b0a264321', '1960-08-09', 'Debraton', 'Female', '', '', 'Muslim', 'Separated'),
('c661df88006811ee', '6a35db10b244431f', '1960-12-29', 'East Christopherhaven', 'Male', '', '', 'Born Again', 'Single');

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
('5eedd706006611ee', '20bc358515e34ad8', 'Timothy Tran', '471892709', 'Intellectual Disability', '', 'ACQUIRED', 'ADHD', 'Injury', 'Temporary', 'Applicant', ''),
('5ef2e892006611ee', 'cfb2deb2c0c44757', 'Kenneth Ortiz', '2317237793', 'Physical Disability (Orthopedic)', '', 'ACQUIRED', 'ADHD', 'Injury', 'Temporary', 'Applicant', ''),
('5ef71cb1006611ee', '960b8990fdd140df', 'Wanda Guzman', '4052080458', 'Speech & Language Impairment', '', 'ACQUIRED', 'Cerebral Palsy', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('5efb20c8006611ee', '83b76089577e46da', 'Timothy Franco', '6622542790', 'Cancer (RA11215)', '', 'ACQUIRED', 'Down Syndrome', 'Injury', 'Permanent', 'Applicant', ''),
('5efe98ea006611ee', 'f073360b698949d3', 'Matthew Lewis', '1587259157', 'Physical Disability (Orthopedic)', '', 'ACQUIRED', 'ADHD', 'Injury', 'Temporary', 'Applicant', ''),
('5f0204b8006611ee', 'cfd642f8c16943fc', 'David Alvarez', '2973475465', 'Rare Disease (RA10747)', '', 'ACQUIRED', 'Cerebral Palsy', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('5f059bf9006611ee', 'c2e675e2db6c418f', 'John Walton', '6800731876', 'Rare Disease (RA10747)', '', 'ACQUIRED', 'Down Syndrome', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('5f08ff62006611ee', 'b09e16842b714b4f', 'Sharon Smith', '4850875553', 'Speech & Language Impairment', '', 'INBORN', 'Autism', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('5f0c1b3a006611ee', 'c9dccbc653a140e8', 'James Wheeler', '2509876357', 'Psychosocial Disability', '', 'INBORN', 'Autism', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('5f0efa65006611ee', '19c9f82da56a4746', 'Christina Wheeler', '7971415611', 'Mental Disability', '', 'INBORN', 'Down Syndrome', 'Injury', 'Temporary', 'Applicant', ''),
('5f11b71d006611ee', '3cb3ecccea004476', 'Craig Moss', '1436434485', 'Deaf/Hard of Hearing', '', 'INBORN', 'ADHD', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('5f149676006611ee', '9bc4216632944c3d', 'Amy Randall', '8720306625', 'Cancer (RA11215)', '', 'INBORN', 'Cerebral Palsy', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('5f176da5006611ee', '1a7e892b4a7d4142', 'Sandra Watkins', '5969287259', 'Psychosocial Disability', '', 'ACQUIRED', 'Down Syndrome', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('5f1a2ac7006611ee', '8e5c1e57a08d4caa', 'Elizabeth Lewis', '1992110296', 'Deaf/Hard of Hearing', '', 'INBORN', 'Cerebral Palsy', 'Injury', 'Permanent', 'Applicant', ''),
('5f1cf215006611ee', '40be3770596d4a22', 'Lisa Hughes', '3623978884', 'Visual Disability', '', 'ACQUIRED', 'Down Syndrome', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('5f1fc5a4006611ee', '6c8aff04e48d4ff4', 'Amy Robinson', '7697623450', 'Visual Disability', '', 'INBORN', 'ADHD', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('5f228f1f006611ee', '2b0ed8b323034a4f', 'Justin Thomas', '6891610808', 'Deaf/Hard of Hearing', '', 'ACQUIRED', 'Autism', 'Injury', 'Temporary', 'Applicant', ''),
('5f255829006611ee', 'c5bd12e751df4ccf', 'Michael Atkinson', '6567210738', 'Physical Disability (Orthopedic)', '', 'INBORN', 'Autism', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('5f2837f7006611ee', '2ef6088ef01d4a36', 'Reginald Garcia', '9253737281', 'Cancer (RA11215)', '', 'ACQUIRED', 'Down Syndrome', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('5f2af658006611ee', 'e40a257a891741c9', 'Robert Bautista', '4146878003', 'Rare Disease (RA10747)', '', 'INBORN', 'Autism', 'Injury', 'Temporary', 'Applicant', ''),
('5f2dcaa9006611ee', '0e60bda24f4c4b36', 'Kristi Cruz', '2935200603', 'Physical Disability (Orthopedic)', '', 'INBORN', 'Autism', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('5f366ff8006611ee', '174f4cde82dc4879', 'Amy Flores', '7501471254', 'Speech & Language Impairment', '', 'ACQUIRED', 'Cerebral Palsy', 'Injury', 'Permanent', 'Applicant', ''),
('5f3a739e006611ee', '1a91c420f16442ec', 'Mr. Michael Estes', '3035562776', 'Psychosocial Disability', '', 'ACQUIRED', 'ADHD', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('5f3d74be006611ee', '268c130445e94a21', 'Robert Shah', '1751502175', 'Rare Disease (RA10747)', '', 'INBORN', 'ADHD', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('5f407b82006611ee', '2284923f36db4bd6', 'Janet Gordon', '2860725292', 'Intellectual Disability', '', 'INBORN', 'Cerebral Palsy', 'Injury', 'Temporary', 'Applicant', ''),
('5f43741d006611ee', '31399d9a1f354883', 'Julie Sherman', '5237249415', 'Psychosocial Disability', '', 'ACQUIRED', 'Cerebral Palsy', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('5f463db3006611ee', 'a49cfd9b56b3454e', 'Hannah Reese', '7294158599', 'Physical Disability (Orthopedic)', '', 'INBORN', 'Cerebral Palsy', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('5f4906bd006611ee', '89104d7200884a17', 'Dustin Johnston', '9901792727', 'Speech & Language Impairment', '', 'INBORN', 'Down Syndrome', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('5f4c0e19006611ee', '3226d867382a45aa', 'Shaun Turner', '1147649965', 'Rare Disease (RA10747)', '', 'ACQUIRED', 'Autism', 'Injury', 'Temporary', 'Applicant', ''),
('5f4f6ccb006611ee', 'c09418b0f55948da', 'Judy Garcia', '269677771', 'Mental Disability', '', 'INBORN', 'Autism', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('89f2cd78006811ee', '98b5fac0cfe84641', 'Charles Jones', '6365777351', 'Rare Disease (RA10747)', '', 'INBORN', 'Cerebral Palsy', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('89f54052006811ee', 'd7a07901293a4ceb', 'Courtney Chavez', '3213445453', 'Visual Disability', '', 'ACQUIRED', 'ADHD', 'Injury', 'Temporary', 'Applicant', ''),
('89f7ed7f006811ee', '2ac3cf59c1524105', 'Anthony Miller', '9753457623', 'Visual Disability', '', 'ACQUIRED', 'Down Syndrome', 'Injury', 'Permanent', 'Applicant', ''),
('89fafd04006811ee', 'a1b8b467e6314aa2', 'Terri Nguyen', '7236252739', 'Visual Disability', '', 'ACQUIRED', 'Cerebral Palsy', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('c620748f006811ee', '1bb8e254edb34ca4', 'Christopher Roberts', '9428088313', 'Cancer (RA11215)', '', 'ACQUIRED', 'ADHD', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('c6244ce2006811ee', '62e4cc0a5fcd4d43', 'Joshua Clarke', '4075442607', 'Rare Disease (RA10747)', '', 'INBORN', 'Autism', 'Injury', 'Permanent', 'Applicant', ''),
('c628bdd1006811ee', '2918690352a84d76', 'Christopher Hansen', '7036298592', 'Cancer (RA11215)', '', 'INBORN', 'Autism', 'Injury', 'Permanent', 'Applicant', ''),
('c62b8097006811ee', 'f7e10d6275a24faf', 'Michael Bailey', '9787523219', 'Mental Disability', '', 'ACQUIRED', 'Down Syndrome', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('c62e50af006811ee', '0993726788fc4da6', 'Tom Chan', '9669748689', 'Deaf/Hard of Hearing', '', 'INBORN', 'ADHD', 'Injury', 'Permanent', 'Applicant', ''),
('c6312378006811ee', '331c047b5f1c4b02', 'Jackie Sanchez', '6214166883', 'Learning Disability', '', 'INBORN', 'Cerebral Palsy', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('c633f8d1006811ee', 'fc23a5d8358e43ed', 'Matthew Hurst', '9141498163', 'Physical Disability (Orthopedic)', '', 'INBORN', 'Cerebral Palsy', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('c636f693006811ee', '5c5f0335567148c5', 'Isaac Tran', '6061284841', 'Visual Disability', '', 'INBORN', 'Down Syndrome', 'Injury', 'Permanent', 'Applicant', ''),
('c63a56f7006811ee', '709db7bfdfd54ed7', 'Richard Fisher', '2204068720', 'Speech & Language Impairment', '', 'ACQUIRED', 'Autism', 'Injury', 'Permanent', 'Applicant', ''),
('c63d1fb6006811ee', '4f1b7eb4a22f481f', 'Cindy Allen', '2568546769', 'Psychosocial Disability', '', 'ACQUIRED', 'Autism', 'Cerebral Palsy', 'Temporary', 'Applicant', '');

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
('5eee5ee0006611ee', '20bc358515e34ad8', '496f68b183424124', 'Father', '0000-00-00', '', '0.00'),
('5eef4e63006611ee', '20bc358515e34ad8', 'f745675ad2304417', 'Mother', '0000-00-00', '', '0.00'),
('5ef05892006611ee', '20bc358515e34ad8', '82ebdca91fb2468a', 'Father', '0000-00-00', '001-304-652-3852', '0.00'),
('5ef3cbdb006611ee', 'cfb2deb2c0c44757', 'eb900aa6fc5c4526', 'Father', '0000-00-00', '', '0.00'),
('5ef4d2c7006611ee', 'cfb2deb2c0c44757', 'ab1d345e329b4cfa', 'Mother', '0000-00-00', '', '0.00'),
('5ef56080006611ee', 'cfb2deb2c0c44757', 'ef9ce574147e4c46', 'Grandfather', '0000-00-00', '001-277-266-5729', '0.00'),
('5ef7a644006611ee', '960b8990fdd140df', '24d0e5d29c2c422e', 'Father', '0000-00-00', '', '0.00'),
('5ef820a7006611ee', '960b8990fdd140df', 'b4d91e771e8a416b', 'Mother', '0000-00-00', '', '0.00'),
('5ef89351006611ee', '960b8990fdd140df', 'b29e286e065f402f', 'Uncle', '0000-00-00', '+1-284-315-7803x', '0.00'),
('5efb9f5f006611ee', '83b76089577e46da', 'd0b1eef672424d16', 'Father', '0000-00-00', '', '0.00'),
('5efc1f38006611ee', '83b76089577e46da', '41aebfb8d4c840ae', 'Mother', '0000-00-00', '', '0.00'),
('5efcad60006611ee', '83b76089577e46da', '96cb48f3cd394093', 'Uncle', '0000-00-00', '057.483.0663x797', '0.00'),
('5eff2417006611ee', 'f073360b698949d3', 'f4030e6e9e574c1a', 'Father', '0000-00-00', '', '0.00'),
('5effae9d006611ee', 'f073360b698949d3', '2f64abc1a66e428b', 'Mother', '0000-00-00', '', '0.00'),
('5f00397e006611ee', 'f073360b698949d3', '32829e4ceb0c459e', 'Brother', '0000-00-00', '001-845-556-3639', '0.00'),
('5f028fec006611ee', 'cfd642f8c16943fc', '3d1a05b8a5764cda', 'Father', '0000-00-00', '', '0.00'),
('5f031a57006611ee', 'cfd642f8c16943fc', '441de5decfc64005', 'Mother', '0000-00-00', '', '0.00'),
('5f03a42c006611ee', 'cfd642f8c16943fc', '240d632f4be84033', 'Brother', '0000-00-00', '(125)337-8929x50', '0.00'),
('5f0625ea006611ee', 'c2e675e2db6c418f', 'baf492f2e9d2435f', 'Father', '0000-00-00', '', '0.00'),
('5f06adc9006611ee', 'c2e675e2db6c418f', '2f654989f1ba4c75', 'Mother', '0000-00-00', '', '0.00'),
('5f072c20006611ee', 'c2e675e2db6c418f', '2640bdb4e2f74624', 'Sister', '0000-00-00', '(808)794-3907', '0.00'),
('5f09913b006611ee', 'b09e16842b714b4f', '58ddce317f7d4825', 'Father', '0000-00-00', '', '0.00'),
('5f0a1d48006611ee', 'b09e16842b714b4f', 'd02047538ae0475f', 'Mother', '0000-00-00', '', '0.00'),
('5f0a88d4006611ee', 'b09e16842b714b4f', 'aae027d6bdad438f', 'Aunt', '0000-00-00', '(965)508-1895x89', '0.00'),
('5f0c95f1006611ee', 'c9dccbc653a140e8', '8ad385d66e394f0b', 'Father', '0000-00-00', '', '0.00'),
('5f0d03ab006611ee', 'c9dccbc653a140e8', 'a81730bff2794925', 'Mother', '0000-00-00', '', '0.00'),
('5f0d7b36006611ee', 'c9dccbc653a140e8', '0f1f73cf1d9a45c5', 'Mother', '0000-00-00', '+1-943-699-6598x', '0.00'),
('5f0f65b9006611ee', '19c9f82da56a4746', 'e04398eac4b746c0', 'Father', '0000-00-00', '', '0.00'),
('5f0fc7a1006611ee', '19c9f82da56a4746', 'a3a6477fb386447b', 'Mother', '0000-00-00', '', '0.00'),
('5f103325006611ee', '19c9f82da56a4746', 'd7274c0a87354b2b', 'Mother', '0000-00-00', '001-465-796-6926', '0.00'),
('5f122292006611ee', '3cb3ecccea004476', 'e0255cd3e8864f11', 'Father', '0000-00-00', '', '0.00'),
('5f129b58006611ee', '3cb3ecccea004476', 'fa2f302accd94df6', 'Mother', '0000-00-00', '', '0.00'),
('5f1308c2006611ee', '3cb3ecccea004476', 'fd23ced91def433b', 'Father', '0000-00-00', '534.648.9065x587', '0.00'),
('5f150461006611ee', '9bc4216632944c3d', '74fa93bd85c44ef4', 'Father', '0000-00-00', '', '0.00'),
('5f157072006611ee', '9bc4216632944c3d', '1cdd41149cfc4d6f', 'Mother', '0000-00-00', '', '0.00'),
('5f15ddc2006611ee', '9bc4216632944c3d', 'c5dbc0bd89674865', 'Uncle', '0000-00-00', '4077089113', '0.00'),
('5f17da5a006611ee', '1a7e892b4a7d4142', 'c8c6183ca2b04c8f', 'Father', '0000-00-00', '', '0.00'),
('5f18461d006611ee', '1a7e892b4a7d4142', 'f2218f94c81c4206', 'Mother', '0000-00-00', '', '0.00'),
('5f18b347006611ee', '1a7e892b4a7d4142', '535611fdc5ef44e0', 'Aunt', '0000-00-00', '001-318-004-7517', '0.00'),
('5f1a969e006611ee', '8e5c1e57a08d4caa', '2485d0f0be074c96', 'Father', '0000-00-00', '', '0.00'),
('5f1b0ed1006611ee', '8e5c1e57a08d4caa', '5f3e7e0f611d4a11', 'Mother', '0000-00-00', '', '0.00'),
('5f1b7b87006611ee', '8e5c1e57a08d4caa', '6f1719468ac74c31', 'Uncle', '0000-00-00', '302-865-3488x187', '0.00'),
('5f1d5fa8006611ee', '40be3770596d4a22', 'ac9d4bac9b864b14', 'Father', '0000-00-00', '', '0.00'),
('5f1dcbc1006611ee', '40be3770596d4a22', '879d2c769a5c4150', 'Mother', '0000-00-00', '', '0.00'),
('5f1e3862006611ee', '40be3770596d4a22', '6e3c9449910a4a7a', 'Grandfather', '0000-00-00', '1387702291', '0.00'),
('5f203b42006611ee', '6c8aff04e48d4ff4', '7cb5830a45d44ba5', 'Father', '0000-00-00', '', '0.00'),
('5f20a81f006611ee', '6c8aff04e48d4ff4', '14ecd98cf17248f2', 'Mother', '0000-00-00', '', '0.00'),
('5f211568006611ee', '6c8aff04e48d4ff4', 'b3fc26ea81ed44c8', 'Aunt', '0000-00-00', '(669)526-3602x28', '0.00'),
('5f22fab9006611ee', '2b0ed8b323034a4f', '39b97ec74ab941e6', 'Father', '0000-00-00', '', '0.00'),
('5f23674f006611ee', '2b0ed8b323034a4f', '11dc40aef5014976', 'Mother', '0000-00-00', '', '0.00'),
('5f23d483006611ee', '2b0ed8b323034a4f', '9442055cd541442a', 'Sister', '0000-00-00', '051-886-1263x868', '0.00'),
('5f25c43f006611ee', 'c5bd12e751df4ccf', 'c89f6633f4b54226', 'Father', '0000-00-00', '', '0.00'),
('5f26326b006611ee', 'c5bd12e751df4ccf', '2e0a5a9d5f154a50', 'Mother', '0000-00-00', '', '0.00'),
('5f269f80006611ee', 'c5bd12e751df4ccf', '00869b081f484f9e', 'Sister', '0000-00-00', '682-137-3908', '0.00'),
('5f28a44c006611ee', '2ef6088ef01d4a36', '3e11f96ea5574b48', 'Father', '0000-00-00', '', '0.00'),
('5f29117f006611ee', '2ef6088ef01d4a36', 'cdf1b6aea6f04abb', 'Mother', '0000-00-00', '', '0.00'),
('5f297de2006611ee', '2ef6088ef01d4a36', '85be7ed9bbde497a', 'Uncle', '0000-00-00', '001-830-338-3334', '0.00'),
('5f2b623b006611ee', 'e40a257a891741c9', '2b36b31184ba4b7a', 'Father', '0000-00-00', '', '0.00'),
('5f2bcf2d006611ee', 'e40a257a891741c9', '3c6244f35f944001', 'Mother', '0000-00-00', '', '0.00'),
('5f2c3bbc006611ee', 'e40a257a891741c9', '8d7d6ddec01a45b6', 'Sister', '0000-00-00', '301.289.2667', '0.00'),
('5f2e36f2006611ee', '0e60bda24f4c4b36', '7c32c036498644b3', 'Father', '0000-00-00', '', '0.00'),
('5f2e98b4006611ee', '0e60bda24f4c4b36', 'e96234b64db94783', 'Mother', '0000-00-00', '', '0.00'),
('5f2f05fe006611ee', '0e60bda24f4c4b36', '701cd068cf5840bb', 'Aunt', '0000-00-00', '968-820-6592x982', '0.00'),
('5f373cd6006611ee', '174f4cde82dc4879', '97179f7d32284b66', 'Father', '0000-00-00', '', '0.00'),
('5f37fb98006611ee', '174f4cde82dc4879', '543ff63c7e2f49d4', 'Mother', '0000-00-00', '', '0.00'),
('5f389772006611ee', '174f4cde82dc4879', 'a866dfc4b14e4e54', 'Uncle', '0000-00-00', '001-867-485-7149', '0.00'),
('5f3ae0e5006611ee', '1a91c420f16442ec', '22eb395f547f476d', 'Father', '0000-00-00', '', '0.00'),
('5f3b5cf5006611ee', '1a91c420f16442ec', '4a4572cfcb304fc1', 'Mother', '0000-00-00', '', '0.00'),
('5f3bcb4c006611ee', '1a91c420f16442ec', 'd4b1d6fff1304605', 'Mother', '0000-00-00', '293-365-3507x206', '0.00'),
('5f3de6fb006611ee', '268c130445e94a21', '3f47782d5f2248f5', 'Father', '0000-00-00', '', '0.00'),
('5f3e5638006611ee', '268c130445e94a21', 'ce9ef85242da4333', 'Mother', '0000-00-00', '', '0.00'),
('5f3ec542006611ee', '268c130445e94a21', 'f91230b6c8d840b8', 'Mother', '0000-00-00', '7462598279', '0.00'),
('5f40fe9e006611ee', '2284923f36db4bd6', 'ae9ae8410fbb4afb', 'Father', '0000-00-00', '', '0.00'),
('5f417704006611ee', '2284923f36db4bd6', '4da61fe520624c03', 'Mother', '0000-00-00', '', '0.00'),
('5f41f517006611ee', '2284923f36db4bd6', 'dd3a30c47e844cde', 'Father', '0000-00-00', '480.568.2640', '0.00'),
('5f43d65a006611ee', '31399d9a1f354883', '44d3932e12424e29', 'Father', '0000-00-00', '', '0.00'),
('5f444333006611ee', '31399d9a1f354883', '954c4670190440d6', 'Mother', '0000-00-00', '', '0.00'),
('5f44afe4006611ee', '31399d9a1f354883', '838414bb912c4c73', 'Uncle', '0000-00-00', '787.732.5022', '0.00'),
('5f46aa93006611ee', 'a49cfd9b56b3454e', '427567f7f35b4129', 'Father', '0000-00-00', '', '0.00'),
('5f4719d1006611ee', 'a49cfd9b56b3454e', '54db97d74839456a', 'Mother', '0000-00-00', '', '0.00'),
('5f478f3f006611ee', 'a49cfd9b56b3454e', '2b57c4acc01743aa', 'Mother', '0000-00-00', '(815)851-1785x21', '0.00'),
('5f497452006611ee', '89104d7200884a17', 'f51b18be70fa49f0', 'Father', '0000-00-00', '', '0.00'),
('5f49e073006611ee', '89104d7200884a17', '220810a5889f48b5', 'Mother', '0000-00-00', '', '0.00'),
('5f4a4d4a006611ee', '89104d7200884a17', '13fcd16c1473403d', 'Uncle', '0000-00-00', '7992361794', '0.00'),
('5f4c8e9b006611ee', '3226d867382a45aa', 'ea1bf6f5265d4011', 'Father', '0000-00-00', '', '0.00'),
('5f4d18bb006611ee', '3226d867382a45aa', '39f0c685f5514460', 'Mother', '0000-00-00', '', '0.00'),
('5f4da2a4006611ee', '3226d867382a45aa', '6722e3f26bd941a5', 'Uncle', '0000-00-00', '160-271-3630x801', '0.00'),
('5f5006bb006611ee', 'c09418b0f55948da', 'a21e23e65d474784', 'Father', '0000-00-00', '', '0.00'),
('5f50902a006611ee', 'c09418b0f55948da', '9fb2789ef6c94855', 'Mother', '0000-00-00', '', '0.00'),
('5f511985006611ee', 'c09418b0f55948da', 'b8125cbdc1c64f30', 'Mother', '0000-00-00', '001-324-643-1698', '0.00'),
('5f53789d006611ee', 'e01b39a412a4418e', '23806a08599e42d0', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('5f55a85e006611ee', '3d88a4e970224558', '7d0157aa54fe44d1', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('5f57bd97006611ee', '8238d716757d4dac', '3aa28c6b621f446c', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('5f59eedb006611ee', '006db4a8194b4ab7', '3a70eb90096d4db6', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('5f5c05a1006611ee', 'dd31f2338c2242c2', '5029e170625c4064', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('5f5e2919006611ee', '4d59a8af32bf4ddc', 'b9dae3094d41477d', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('5f606116006611ee', 'a918601949914115', 'ddbe438d03b34abe', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('5f628f2a006611ee', '50a92f6b3a694969', 'fc1c09ff358f47b0', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('5f64b543006611ee', '9e5bce94fa9a4365', 'db53ce388e1c4e30', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('5f66d249006611ee', '3829c6403cc7416d', 'aba2862c322b48e0', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('5f68ffce006611ee', 'cd093603d46a4024', 'a731bd169b1d4862', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('5f6b18c6006611ee', '92193863a3e54953', '6d7b7389d4554b19', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('5f6d4aaa006611ee', 'c179b70a38654b8e', '311dda1aa918443a', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('5f6f6167006611ee', '94609fcdab2740f1', '4def0aa479d34153', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('5f718bc3006611ee', '612173381c654dbc', 'c712d2952547465f', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('5f73a684006611ee', '61e19a0f54d3481f', '92a4b8da96f44d1a', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('5f75d489006611ee', 'f0f8befdbf324d21', '962335f60fad4293', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('5f77ef96006611ee', '8af38440288e47c9', 'a97b253ad02a4e94', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('5f7a3bec006611ee', 'c7fde4e688f04dcf', '32e17f9045964e1e', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('5f7c5821006611ee', 'f47ec1a475c74605', 'dd7ccfd086b14a4a', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('5f7e873d006611ee', 'c8f818d4f29c4cba', '8afee284604c4913', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('5f80a8b7006611ee', 'e7f2e614194542c3', '2caae465e9894e28', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('5f82d295006611ee', '20b5951c0c084709', '31a58113e110491c', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('5f8504ec006611ee', '2800ad0fa2324cc0', '1ebb6ce2af42446c', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('5f872c18006611ee', '1cc2c3fd45e84d6c', '376bf0743a294f1e', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('5f895c02006611ee', '2068fa4d75284271', 'fa44264ab3fc4679', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('5f8b7702006611ee', '52760bb5d6094006', '6b360e08aa0146aa', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('5f8da712006611ee', 'c7738c8cca224bfc', '742e1b2a1e0646f0', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('5f8fbe32006611ee', '5d288d6675da4e78', '959d980db1d84fa5', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('5f91eda3006611ee', '554e1418802741f8', '288019cb40234083', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('89f33779006811ee', '98b5fac0cfe84641', '8d9b189ded80465a', 'Father', '0000-00-00', '', '0.00'),
('89f3a088006811ee', '98b5fac0cfe84641', 'ed78bb44e0c649fb', 'Mother', '0000-00-00', '', '0.00'),
('89f3fe03006811ee', '98b5fac0cfe84641', '4797a3ff60f04865', 'Brother', '0000-00-00', '(564)143-2174x14', '0.00'),
('89f5ad6a006811ee', 'd7a07901293a4ceb', 'a6326423424e4a17', 'Father', '0000-00-00', '', '0.00'),
('89f61906006811ee', 'd7a07901293a4ceb', 'e83ef6f0648d4ef1', 'Mother', '0000-00-00', '', '0.00'),
('89f68ec5006811ee', 'd7a07901293a4ceb', '0ca1dd810b754844', 'Grandfather', '0000-00-00', '354.736.6215', '0.00'),
('89f873ed006811ee', '2ac3cf59c1524105', '8f42c27c96fe470a', 'Father', '0000-00-00', '', '0.00'),
('89f8eb8c006811ee', '2ac3cf59c1524105', '4f0bfe5d4ad94900', 'Mother', '0000-00-00', '', '0.00'),
('89f967dd006811ee', '2ac3cf59c1524105', '47eb4bea6c9742c7', 'Aunt', '0000-00-00', '602.131.0806x490', '0.00'),
('89fb834b006811ee', 'a1b8b467e6314aa2', '55dccabed2c54ea4', 'Father', '0000-00-00', '', '0.00'),
('89fc1af6006811ee', 'a1b8b467e6314aa2', '939a2253d31045b0', 'Mother', '0000-00-00', '', '0.00'),
('c6218307006811ee', '1bb8e254edb34ca4', '2053661ba6b344b9', 'Father', '0000-00-00', '', '0.00'),
('c622097f006811ee', '1bb8e254edb34ca4', 'c1dbab51cbcf409a', 'Mother', '0000-00-00', '', '0.00'),
('c6229178006811ee', '1bb8e254edb34ca4', 'cc1aeff166af4b98', 'Aunt', '0000-00-00', '143.407.2034x594', '0.00'),
('c624de76006811ee', '62e4cc0a5fcd4d43', 'f18d64e65b544a86', 'Father', '0000-00-00', '', '0.00'),
('c6260167006811ee', '62e4cc0a5fcd4d43', '3177eb89852d4d85', 'Mother', '0000-00-00', '', '0.00'),
('c62690d5006811ee', '62e4cc0a5fcd4d43', 'e4fe18c1c33e4caa', 'Father', '0000-00-00', '+1-075-234-2436', '0.00'),
('c6294b2a006811ee', '2918690352a84d76', '6c58297dcd8945db', 'Father', '0000-00-00', '', '0.00'),
('c629b40a006811ee', '2918690352a84d76', 'ecb4d4e493044a2d', 'Mother', '0000-00-00', '', '0.00'),
('c62a1c98006811ee', '2918690352a84d76', '6fbba7531d7a4b22', 'Grandfather', '0000-00-00', '349-338-8170x267', '0.00'),
('c62be900006811ee', 'f7e10d6275a24faf', '01ab34491dc64718', 'Father', '0000-00-00', '', '0.00'),
('c62c51f5006811ee', 'f7e10d6275a24faf', 'a9c63e9ea7974bf7', 'Mother', '0000-00-00', '', '0.00'),
('c62cc0a8006811ee', 'f7e10d6275a24faf', '2a33847bf80e43cc', 'Uncle', '0000-00-00', '2172251597', '0.00'),
('c62ebe87006811ee', '0993726788fc4da6', 'b536102f7a954a35', 'Father', '0000-00-00', '', '0.00'),
('c62f2c18006811ee', '0993726788fc4da6', 'ef14fbe4e92c4dd6', 'Mother', '0000-00-00', '', '0.00'),
('c62f995c006811ee', '0993726788fc4da6', '9c2f99f0d626423b', 'Grandfather', '0000-00-00', '5184398152', '0.00'),
('c63190e6006811ee', '331c047b5f1c4b02', 'c01e022847b5439c', 'Father', '0000-00-00', '', '0.00'),
('c631fdda006811ee', '331c047b5f1c4b02', '241bc1cb0bd14ead', 'Mother', '0000-00-00', '', '0.00'),
('c632796b006811ee', '331c047b5f1c4b02', '4dd1c1662e0e44ae', 'Sister', '0000-00-00', '896.994.4540x364', '0.00'),
('c6346789006811ee', 'fc23a5d8358e43ed', '5d39bdf41b6e45b0', 'Father', '0000-00-00', '', '0.00'),
('c634d553006811ee', 'fc23a5d8358e43ed', 'c630bc2000f045f3', 'Mother', '0000-00-00', '', '0.00'),
('c6354261006811ee', 'fc23a5d8358e43ed', '73cf6dbdc34b4e16', 'Brother', '0000-00-00', '3404753913', '0.00'),
('c637d844006811ee', '5c5f0335567148c5', 'b8a96bc2dfa6447d', 'Father', '0000-00-00', '', '0.00'),
('c63853bb006811ee', '5c5f0335567148c5', '167bc4b13bed496f', 'Mother', '0000-00-00', '', '0.00'),
('c638c2b6006811ee', '5c5f0335567148c5', 'f11a418191154513', 'Brother', '0000-00-00', '302-933-1514x937', '0.00'),
('c63ac613006811ee', '709db7bfdfd54ed7', 'e7150903a7284088', 'Father', '0000-00-00', '', '0.00'),
('c63b3684006811ee', '709db7bfdfd54ed7', '357fa1f63ca44b38', 'Mother', '0000-00-00', '', '0.00'),
('c63ba44b006811ee', '709db7bfdfd54ed7', '1bc5459ff5c740b1', 'Aunt', '0000-00-00', '803.525.5116', '0.00'),
('c63d8d96006811ee', '4f1b7eb4a22f481f', '2c373fb02a644ac7', 'Father', '0000-00-00', '', '0.00'),
('c63e06b8006811ee', '4f1b7eb4a22f481f', '641f103ba4fb4f27', 'Mother', '0000-00-00', '', '0.00'),
('c63e7427006811ee', '4f1b7eb4a22f481f', 'e215b6089fcb4102', 'Uncle', '0000-00-00', '039.863.9034', '0.00'),
('c640c02d006811ee', '72fbc8f393c54a52', '6df1131a248448df', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('c642f644006811ee', 'e3e1fefab57b4d2b', '3a0ed245649d4140', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('c645158d006811ee', 'cf1e695189164cb0', '1a47098161644547', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('c64745c2006811ee', '4d88f0b5cfb0498c', '3adb5a07a00845de', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('c649d348006811ee', 'a03c288c9e7744ef', '964855a18a6d4cfc', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('c64bfda2006811ee', 'ecbe9e2ba8dc49f2', 'af7cb82905944bdd', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('c64e1592006811ee', 'c5a74e0749e848a7', '8baf88a4e0fc4a4e', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('c650414d006811ee', '47252a81d20248eb', '4ba56f8a5d4241de', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('c65268ad006811ee', 'd079103545264377', '5e0fa8e8847749cf', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('c6549810006811ee', '83cedfbe863f422b', '993fd15450ad4f71', 'Son/Daugther', '0000-00-00', '', '40000.00');

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
('5f52e381006611ee', 'e01b39a412a4418e', 'Pregnant Women', '', ''),
('5f552e8e006611ee', '3d88a4e970224558', 'Physical and Mental Incapacity', '', ''),
('5f5751ae006611ee', '8238d716757d4dac', 'Pregnant Women', '', ''),
('5f598038006611ee', '006db4a8194b4ab7', 'Rape Case', '', ''),
('5f5ba12b006611ee', 'dd31f2338c2242c2', 'Abandonment', '', ''),
('5f5dbc5a006611ee', '4d59a8af32bf4ddc', 'Unmarried/unwed', '', ''),
('5f5ff362006611ee', 'a918601949914115', 'Unmarried/unwed', '', ''),
('5f62159a006611ee', '50a92f6b3a694969', 'Disappearance of Parents', '', ''),
('5f6448ae006611ee', '9e5bce94fa9a4365', 'Rape Case', '', ''),
('5f666369006611ee', '3829c6403cc7416d', 'Rape Case', '', ''),
('5f689329006611ee', 'cd093603d46a4024', 'Foster Parent of DSWD', '', ''),
('5f6aaace006611ee', '92193863a3e54953', 'Pregnant Women', '', ''),
('5f6cdd70006611ee', 'c179b70a38654b8e', 'Death of Spouse', '', ''),
('5f6ef3ac006611ee', '94609fcdab2740f1', 'Unmarried/unwed', '', ''),
('5f711e64006611ee', '612173381c654dbc', 'Pregnant Women', '', ''),
('5f733664006611ee', '61e19a0f54d3481f', 'Unmarried/unwed', '', ''),
('5f75673a006611ee', 'f0f8befdbf324d21', 'Spouse of OFW', '', ''),
('5f777f39006611ee', '8af38440288e47c9', 'Abandonment', '', ''),
('5f79c21c006611ee', 'c7fde4e688f04dcf', 'Abandonment', '', ''),
('5f7bea6d006611ee', 'f47ec1a475c74605', 'Imprisonment of Spouse/Detention', '', ''),
('5f7e18e9006611ee', 'c8f818d4f29c4cba', 'Spouse of OFW', '', ''),
('5f803aa3006611ee', 'e7f2e614194542c3', 'Disappearance of Parents', '', ''),
('5f82632e006611ee', '20b5951c0c084709', 'Disappearance of Parents', '', ''),
('5f849a87006611ee', '2800ad0fa2324cc0', 'Death of Spouse', '', ''),
('5f86bb83006611ee', '1cc2c3fd45e84d6c', 'Spouse of OFW', '', ''),
('5f88ee12006611ee', '2068fa4d75284271', 'Pregnant Women', '', ''),
('5f8b06b9006611ee', '52760bb5d6094006', 'Unmarried/unwed', '', ''),
('5f8d37d4006611ee', 'c7738c8cca224bfc', 'Imprisonment of Spouse/Detention', '', ''),
('5f8f50d0006611ee', '5d288d6675da4e78', 'Death of Spouse', '', ''),
('5f917f33006611ee', '554e1418802741f8', 'Abandonment', '', ''),
('c640480d006811ee', '72fbc8f393c54a52', 'Foster Parent of DSWD', '', ''),
('c64284ae006811ee', 'e3e1fefab57b4d2b', 'Abandonment', '', ''),
('c644a8a7006811ee', 'cf1e695189164cb0', 'Rape Case', '', ''),
('c646d8b0006811ee', '4d88f0b5cfb0498c', 'Imprisonment of Spouse/Detention', '', ''),
('c648fd2b006811ee', 'a03c288c9e7744ef', 'Rape Case', '', ''),
('c64b90df006811ee', 'ecbe9e2ba8dc49f2', 'Disappearance of Parents', '', ''),
('c64da7ac006811ee', 'c5a74e0749e848a7', 'Unmarried/unwed', '', ''),
('c64fd52a006811ee', '47252a81d20248eb', 'Rape Case', '', ''),
('c651fae2006811ee', 'd079103545264377', 'Imprisonment of Spouse/Detention', '', ''),
('c6542a12006811ee', '83cedfbe863f422b', 'Abandonment', '', '');

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
  `UPLOAD_DATE` datetime NOT NULL
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
  `IS_LOCKED` int(8) NOT NULL DEFAULT 0,
  `ACCOUNT_STATUS` int(8) NOT NULL DEFAULT 1,
  `LOGIN_ATTEMPTS` int(8) NOT NULL DEFAULT 0,
  `DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_authentication`
--

INSERT INTO `user_authentication` (`USER_AUTHENTICATION_ID`, `FIRST_NAME`, `LAST_NAME`, `BARANGAY`, `EMAIL`, `PASSWORD`, `ROLE`, `IS_LOCKED`, `ACCOUNT_STATUS`, `LOGIN_ATTEMPTS`, `DATE`) VALUES
('13604876010211ee', 'ROMEO', 'BARDILLON', 'All', 'romsky.bardillon@gmail.com', '$2y$10$MSAheogD/F0WKpTqP2yy5OIqo15Px8zo2UCLgh7L6dAWdWLE/jjte', 'Super Administrator', 0, 1, 0, '2023-06-02'),
('d80455a8010311ee', 'JOHN', 'DOE', 'All', 'yegiy78063@rockdian.com', '$2y$10$3YzeeJTWZFMOC/CCRQXYHe5k/nNblbl.lzQ38QLCyXDOHX1YKReSi', 'Main Administrator', 0, 1, 0, '2023-06-02');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
