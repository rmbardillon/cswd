-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 08:23 AM
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
('4af87186001611ee', '9973ca1bcf7245b5', '4179 Lee Bypass\r\nNorth Joannmouth, SC 96555', 'Malusak (Poblacion Dos)'),
('4afd2e9c001611ee', '4e7271364f2b4af2', '050 Dixon Light Apt. 451\r\nPort Frank, DE 22237', 'Market Area (Poblacion Tres)'),
('4b021876001611ee', '83227edb2ca3434c', '470 John Highway Suite 855\r\nPort Kimberlychester, LA 95534', 'Aplaya'),
('4b04d403001611ee', '6dfefda800ea467f', '707 Kathleen Drives\r\nJulietown, MN 94845', 'Labas'),
('4b086b78001611ee', '6ca1ee86e69a404f', '37292 Lopez Isle\r\nReynoldshaven, PR 16670', 'Tagapo'),
('4b0b2c84001611ee', '0091d4d920cc47cb', '16292 Julia Stravenue Suite 217\r\nNorth Deborah, OR 82191', 'Caingin'),
('4b0dfa8d001611ee', '4f18274da89f405b', '566 Sherry Lodge Apt. 880\r\nBarrettstad, FM 42289', 'Market Area (Poblacion Tres)'),
('4b10bb10001611ee', 'df56a95a94ad47ab', '6344 Bond Course Apt. 823\r\nRiveraville, HI 80944', 'Santo Domingo'),
('4b1388ab001611ee', '0fb6743304d947e5', '0194 Luna Roads\r\nLake Theresa, AL 69956', 'Ibaba'),
('4b163ff3001611ee', 'f30a8bebbcad4b59', '1307 Renee Alley\r\nWest Ebonymouth, NJ 16469', 'Caingin'),
('4b18c1ae001611ee', '7dac5e3d84934a9b', '84217 Brown Forge Suite 841\r\nNunezhaven, DE 55161', 'Pooc (Pook)'),
('4b1b3a6d001611ee', '4cc747c22809407f', '5813 Randolph Track Apt. 517\r\nLeeview, FM 00971', 'Dita'),
('4b1de6b4001611ee', '59a76ba2c3964040', '6884 Anderson Landing\r\nWest Natalie, IA 73622', 'Sinalhan'),
('4b206a49001611ee', '5286daca2a564db5', '73467 Guerrero Views Apt. 172\r\nPort Monicaville, TX 94307', 'Caingin'),
('4b23131e001611ee', '2bfd428763b44afe', '682 Lisa Pines Apt. 965\r\nBlakeborough, NC 17277', 'Balibago'),
('4b25d098001611ee', '6835f81faa434223', '92284 Garner Gardens\r\nRuthfurt, TX 09377', 'Kanluran (Poblacion Uno)'),
('4b288124001611ee', '448fcbb0f01a43e4', '69998 Vanessa Villages\r\nWilliamsmouth, AK 79491', 'Tagapo'),
('4b2b21c4001611ee', 'db0091ed73b040a6', '03406 Castillo Divide Apt. 545\r\nMccalltown, KY 55513', 'Dila'),
('4b2db2f1001611ee', '27ac878921df430f', '40238 Bryan Fords Suite 038\r\nSouth Andrew, DE 23635', 'Caingin'),
('4b3056bb001611ee', 'a31734d17ccb41f4', '04738 Mary Square Apt. 272\r\nRamirezburgh, OR 82212', 'Dita'),
('4b32e093001611ee', '8a3d7e0fbe464ed0', '433 William Stream Suite 058\r\nBarnesside, MP 01159', 'Balibago'),
('4b357979001611ee', 'b66d505ad9b44efe', '605 Lynn Path Suite 289\r\nSouth Scott, SD 99072', 'Labas'),
('4b3823c4001611ee', 'ed2a30f051984885', '95752 Chelsey Corners Apt. 922\r\nJohnsontown, PW 44887', 'Dita'),
('4b3ae21b001611ee', 'bc68e00992fd4b9e', '342 Joanna Summit Suite 683\r\nLake Perry, AK 99649', 'Malusak (Poblacion Dos)'),
('4b3da93f001611ee', '7f2a4038e8d44751', '43491 Jacob Mount Suite 625\r\nMaciasmouth, HI 69883', 'Don Jose'),
('4b404a27001611ee', '688ba9d9801f40c4', '519 Anthony Knolls\r\nSouth Scott, VT 21659', 'Malusak (Poblacion Dos)'),
('4b42e75d001611ee', '34981a6e4e274688', 'USS Chang\r\nFPO AP 94533', 'Don Jose'),
('4b4588b3001611ee', '1cf0e5b3db964405', '4321 Larson Divide Suite 362\r\nNew Crystal, AL 05360', 'Ibaba'),
('4b480909001611ee', '80eb76d4772c426f', '064 Mark Squares\r\nEast Emily, MP 96924', 'Kanluran (Poblacion Uno)'),
('4b4aa601001611ee', '373137bf50d447bc', '9500 Lori Park\r\nWest John, PR 76163', 'Tagapo'),
('4b4d357b001611ee', '657a1185751b4190', '1852 George Light Apt. 664\r\nLammouth, NV 61762', 'Dila'),
('4b4f2ff1001611ee', '7c7b130574774616', 'Unit 9099 Box 2881\r\nDPO AE 31083', 'Kanluran (Poblacion Uno)'),
('4b513938001611ee', '503881a112c84229', '227 Jeffrey Hollow\r\nNorth Shirleyhaven, AL 70062', 'Dita'),
('4b535f40001611ee', 'f8c1452c91da4498', '63768 Lam Brook Apt. 231\r\nNew Gregory, RI 30745', 'Malitlit'),
('4b553e59001611ee', 'cf6257a42d444dd8', '955 Larry Station Apt. 723\r\nJoelborough, NH 59787', 'Macabling'),
('4b570a2b001611ee', 'd94bdd4b65a54a76', '3480 Bowman Ways Suite 719\r\nPort Kevin, NE 00533', 'Sinalhan'),
('4b590926001611ee', 'bc42a991c85146c4', '09047 Bowman Tunnel Apt. 229\r\nSouth Richardton, MA 60274', 'Dila'),
('4b5b18b5001611ee', '02bca7efa4a541a7', '9304 Singh River\r\nSouth Joseph, CA 74149', 'Caingin'),
('4b5d26a1001611ee', 'f70dc90d3c334d8f', '7834 Schneider Inlet\r\nDunlaphaven, ME 89444', 'Kanluran (Poblacion Uno)'),
('4b5f2698001611ee', '8d44ba3fbb544c51', '5964 Watson Pine\r\nMaxwellbury, MD 63490', 'Market Area (Poblacion Tres)'),
('4b613e0e001611ee', '7878e61b73804eba', '951 Janet Plain\r\nEricchester, MT 04398', 'Market Area (Poblacion Tres)'),
('4b63663b001611ee', '43c5e4ede71e45be', '6986 Lynn Fords Apt. 683\r\nLake Saraburgh, OH 46566', 'Balibago'),
('4b655d56001611ee', 'c0fef98785514a2a', 'Unit 0010 Box 5045\r\nDPO AP 03269', 'Pulong Santa Cruz'),
('4b673ff6001611ee', '1ac5c8e06d53467e', '5029 Samuel Tunnel Suite 737\r\nWest Edwardfurt, AL 19929', 'Macabling'),
('4b69177b001611ee', 'e3fd766d6aa94078', '6915 Jennifer Terrace\r\nVazquezmouth, VT 01308', 'Tagapo'),
('4b6b235c001611ee', '85e67dcc5ee54971', '842 Rich Hills Suite 428\r\nEast Richard, DC 34453', 'Ibaba'),
('4b6fdf47001611ee', 'ab59371b97a14104', '6773 Hawkins Path Apt. 245\r\nWest Jenniferhaven, GA 74949', 'Macabling'),
('4b722e57001611ee', 'e2b412abece5447f', '1733 Smith Lock Apt. 012\r\nJonesshire, SC 78872', 'Kanluran (Poblacion Uno)'),
('4b744b52001611ee', '832f480563c848a0', '7708 Sharon Ferry\r\nSheaburgh, ND 19578', 'Santo Domingo'),
('4b766589001611ee', '950309a821704d7a', '7675 Justin Manor\r\nGreenhaven, MI 97733', 'Tagapo'),
('4b792edb001611ee', 'e8790c994dae49af', 'PSC 6516, Box 4116\r\nAPO AP 82650', 'Malitlit'),
('4b7b9adb001611ee', '27aebdef5ef54f3e', '6364 Combs Meadow Apt. 520\r\nSouth Lorihaven, PA 21393', 'Market Area (Poblacion Tres)'),
('4b7ddd91001611ee', '803d125ff8ce4fcb', '70632 Edwards Junctions Suite 305\r\nNorth Alisonbury, AS 62004', 'Dila'),
('4b80248b001611ee', '44abf9d1d0be46e0', '73572 Wells Pines Apt. 084\r\nNorth Brianfurt, MP 97700', 'Ibaba'),
('4b828cb1001611ee', '993e5cc6edbb414f', 'PSC 0433, Box 6760\r\nAPO AA 20596', 'Dita'),
('4b84e835001611ee', '496a2f4b6dc44c96', 'PSC 4473, Box 8408\r\nAPO AP 27843', 'Sinalhan'),
('4b8742c1001611ee', '80bd0a09d1c24b0f', '880 Gomez Haven\r\nDuffytown, MT 07587', 'Market Area (Poblacion Tres)'),
('4b8962c8001611ee', '304067f213f445a1', '517 Adams Meadows\r\nNew Christina, AK 31504', 'Don Jose'),
('4b8b8c50001611ee', '30d59ace3a504bd4', 'USNS Ward\r\nFPO AE 20315', 'Don Jose'),
('4b8dc060001611ee', 'f0d3111a877e447c', '6663 Juan Village Apt. 392\r\nPort Sabrina, OK 96409', 'Sinalhan'),
('4b8fdbcf001611ee', '12f8266aebaa47c4', '687 Joseph Crescent Apt. 707\r\nRyanhaven, MA 30043', 'Don Jose'),
('4b911ecd001611ee', '60774456f0264bed', '70347 Martinez Spurs Suite 061\r\nRobertmouth, CA 83349', 'Macabling'),
('4b926015001611ee', '9c19d032a3ea4b03', '7505 Carolyn Pines Suite 912\r\nLake Daniel, OH 79323', 'Dita'),
('4b939fb0001611ee', '91608ba274db4543', '393 Williams Forges\r\nLake Vanessa, RI 38701', 'Labas'),
('4b94c911001611ee', '70560c65c0c64f33', '75672 Dylan Pass Apt. 667\r\nWest Candacehaven, IA 44147', 'Dila'),
('4b95dbef001611ee', 'c487f44e2eed49e0', '80796 Jordan Path\r\nLake Vincenttown, MN 48934', 'Labas'),
('4b96f18d001611ee', '82c8ec8fabd943f5', '143 Johnston Centers\r\nNew Nancy, GA 34389', 'Tagapo'),
('4b9801c6001611ee', '1c0e6f0a2fb04da6', '38914 Kevin Cliffs\r\nPort Blake, AL 24245', 'Kanluran (Poblacion Uno)'),
('4b991a54001611ee', '5dd5bb9d6a024ed9', '652 Jason Radial Apt. 486\r\nNorth Barbara, ID 90010', 'Labas'),
('4b9a400f001611ee', '0bb6e387e76b4ee3', '294 Justin Gardens Apt. 211\r\nNorth Evanfort, NC 69141', 'Santo Domingo'),
('4b9b511c001611ee', '3bbf5be3e0244e8f', '89288 James Stream\r\nNew Tina, CO 21187', 'Dita'),
('4b9c722e001611ee', '4d1983d459fe4076', '1643 Karen Curve Apt. 433\r\nAliciaberg, SD 44077', 'Dila'),
('4b9d94ed001611ee', 'aa20a932a13b4d9f', '66699 Davis Flats\r\nWilliamside, TX 04019', 'Dila'),
('4b9eb081001611ee', '5a9486f382684c63', '078 Moore Spring\r\nArmstrongside, AS 18824', 'Market Area (Poblacion Tres)'),
('4b9ffaef001611ee', 'd9060a93717e4b09', 'Unit 3251 Box 3086\r\nDPO AE 21777', 'Pooc (Pook)'),
('4ba1442a001611ee', '294741cdec70458d', 'USNV Brown\r\nFPO AP 88113', 'Caingin'),
('4ba27de9001611ee', '966cb7fb5e7d4b86', '580 Johnson Passage\r\nPort Cassidy, MP 41430', 'Aplaya'),
('4ba3bb7c001611ee', 'f841926d1c9f4b1c', '05344 Andrea View\r\nEast Angelafurt, VA 18394', 'Balibago'),
('4ba50f92001611ee', 'a9ce3a8abb094e13', 'PSC 9768, Box 8774\r\nAPO AE 59862', 'Market Area (Poblacion Tres)'),
('4ba640b2001611ee', 'dd30f66ec1c94417', '07560 Ramos Village Apt. 034\r\nKnightstad, MN 83386', 'Pulong Santa Cruz'),
('4ba796a6001611ee', 'ad672c0d0ced4878', '3499 Kristen Island Suite 834\r\nSouth Jason, MA 97775', 'Pulong Santa Cruz'),
('4ba8d735001611ee', '56fd387b9b0e4511', '6708 Glover Turnpike\r\nGillland, CO 10510', 'Balibago'),
('4baa0b09001611ee', '0b26da385db84245', 'USNS Blake\r\nFPO AE 09875', 'Malitlit'),
('4bab57ff001611ee', 'ec69629c985144c5', '52553 Joseph Mall\r\nDeleonland, MH 73756', 'Balibago'),
('4bac942d001611ee', '2596c651bcce405f', 'USS Elliott\r\nFPO AA 26319', 'Balibago'),
('4badcfe2001611ee', '318f99e8ff964c8e', '081 William Walks Suite 922\r\nEast Laurie, CA 82342', 'Malusak (Poblacion Dos)'),
('4baf1cb0001611ee', '2fe32b34ce3c4723', '1606 Jesse Skyway\r\nPort Melissa, WI 63749', 'Market Area (Poblacion Tres)'),
('4bb06d04001611ee', '94d27c5df6b5462e', '8053 Lester River\r\nPort Matthew, OR 60279', 'Dita'),
('4bb1acf6001611ee', 'e56627f3f39544a8', '93298 Dominique Island Apt. 246\r\nSouth Terryland, MS 39488', 'Don Jose'),
('4bb2ec26001611ee', '4e2c4797f0be497a', '7531 Reyes Land\r\nMorrisonfort, VI 56224', 'Dila');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `APPLICATION_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PERSON_ID` varchar(16) NOT NULL,
  `APPLICATION_TYPE` varchar(16) NOT NULL,
  `APPLICATION_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `APPLICATION_STATUS` varchar(16) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`APPLICATION_ID`, `PERSON_ID`, `APPLICATION_TYPE`, `APPLICATION_DATE`, `APPLICATION_STATUS`) VALUES
('4af8bbaa001611ee', '9973ca1bcf7245b5', 'PWD', '2023-06-01 08:50:24', 'Approved'),
('4afd7f4d001611ee', '4e7271364f2b4af2', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b025a8f001611ee', '83227edb2ca3434c', 'PWD', '2023-06-01 08:50:24', 'Rejected'),
('4b05038d001611ee', '6dfefda800ea467f', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b08a38a001611ee', '6ca1ee86e69a404f', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b0b5aef001611ee', '0091d4d920cc47cb', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b0e2c46001611ee', '4f18274da89f405b', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b10f177001611ee', 'df56a95a94ad47ab', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b13c336001611ee', '0fb6743304d947e5', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b1670cb001611ee', 'f30a8bebbcad4b59', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b18ef68001611ee', '7dac5e3d84934a9b', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b1b6d61001611ee', '4cc747c22809407f', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b1e1842001611ee', '59a76ba2c3964040', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b20976a001611ee', '5286daca2a564db5', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b2346fe001611ee', '2bfd428763b44afe', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b260bb4001611ee', '6835f81faa434223', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b28b53a001611ee', '448fcbb0f01a43e4', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b2b51c0001611ee', 'db0091ed73b040a6', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b2de3ba001611ee', '27ac878921df430f', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b3088ac001611ee', 'a31734d17ccb41f4', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b330fb7001611ee', '8a3d7e0fbe464ed0', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b35a8c9001611ee', 'b66d505ad9b44efe', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b385780001611ee', 'ed2a30f051984885', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b3b197f001611ee', 'bc68e00992fd4b9e', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b3ddb5b001611ee', '7f2a4038e8d44751', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b40802d001611ee', '688ba9d9801f40c4', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b431a8b001611ee', '34981a6e4e274688', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b45b7e9001611ee', '1cf0e5b3db964405', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b483997001611ee', '80eb76d4772c426f', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b4ad6b8001611ee', '373137bf50d447bc', 'PWD', '2023-06-01 08:50:24', 'Pending'),
('4b4d66e6001611ee', '657a1185751b4190', 'Solo Parent', '2023-06-01 08:50:24', 'Approved'),
('4b4f648e001611ee', '7c7b130574774616', 'Solo Parent', '2023-06-01 08:50:24', 'Rejected'),
('4b516d0c001611ee', '503881a112c84229', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b539599001611ee', 'f8c1452c91da4498', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b556b2d001611ee', 'cf6257a42d444dd8', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b573e1c001611ee', 'd94bdd4b65a54a76', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b593d89001611ee', 'bc42a991c85146c4', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b5b49cb001611ee', '02bca7efa4a541a7', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b5d5da2001611ee', 'f70dc90d3c334d8f', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b5f58c9001611ee', '8d44ba3fbb544c51', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b61710b001611ee', '7878e61b73804eba', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b639d64001611ee', '43c5e4ede71e45be', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b658886001611ee', 'c0fef98785514a2a', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b67710d001611ee', '1ac5c8e06d53467e', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b69450b001611ee', 'e3fd766d6aa94078', 'Solo Parent', '2023-06-01 08:50:24', 'Approved'),
('4b6b5978001611ee', '85e67dcc5ee54971', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b70264d001611ee', 'ab59371b97a14104', 'Solo Parent', '2023-06-01 08:50:24', 'Pending'),
('4b726697001611ee', 'e2b412abece5447f', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b74832e001611ee', '832f480563c848a0', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b76aa26001611ee', '950309a821704d7a', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b7970ba001611ee', 'e8790c994dae49af', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b7bdcc3001611ee', '27aebdef5ef54f3e', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b7e1181001611ee', '803d125ff8ce4fcb', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b805f32001611ee', '44abf9d1d0be46e0', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b82c7e1001611ee', '993e5cc6edbb414f', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b852616001611ee', '496a2f4b6dc44c96', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b8777d2001611ee', '80bd0a09d1c24b0f', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b899866001611ee', '304067f213f445a1', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b8bc072001611ee', '30d59ace3a504bd4', 'Solo Parent', '2023-06-01 08:50:25', 'Pending'),
('4b8df2b8001611ee', 'f0d3111a877e447c', 'Solo Parent', '2023-06-01 08:50:25', 'Approved'),
('4b9018e1001611ee', '12f8266aebaa47c4', 'Senior Citizen', '2023-06-01 08:50:25', 'Approved'),
('4b915b9e001611ee', '60774456f0264bed', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b929727001611ee', '9c19d032a3ea4b03', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b93d314001611ee', '91608ba274db4543', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b94f31e001611ee', '70560c65c0c64f33', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b9608a2001611ee', 'c487f44e2eed49e0', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b971d47001611ee', '82c8ec8fabd943f5', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b982ba9001611ee', '1c0e6f0a2fb04da6', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b99463d001611ee', '5dd5bb9d6a024ed9', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b9a6dbe001611ee', '0bb6e387e76b4ee3', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b9b7f6b001611ee', '3bbf5be3e0244e8f', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b9c9e4d001611ee', '4d1983d459fe4076', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b9dc62c001611ee', 'aa20a932a13b4d9f', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4b9edd8c001611ee', '5a9486f382684c63', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba0316a001611ee', 'd9060a93717e4b09', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba1718e001611ee', '294741cdec70458d', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba2b063001611ee', '966cb7fb5e7d4b86', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba3eec3001611ee', 'f841926d1c9f4b1c', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba53ee5001611ee', 'a9ce3a8abb094e13', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba66d40001611ee', 'dd30f66ec1c94417', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba7c651001611ee', 'ad672c0d0ced4878', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4ba90ad2001611ee', '56fd387b9b0e4511', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4baa3f7e001611ee', '0b26da385db84245', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4bab87a4001611ee', 'ec69629c985144c5', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4bacc3df001611ee', '2596c651bcce405f', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4badf9f0001611ee', '318f99e8ff964c8e', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4baf5469001611ee', '2fe32b34ce3c4723', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4bb09f0a001611ee', '94d27c5df6b5462e', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4bb1e384001611ee', 'e56627f3f39544a8', 'Senior Citizen', '2023-06-01 08:50:25', 'Pending'),
('4bb32124001611ee', '4e2c4797f0be497a', 'Senior Citizen', '2023-06-01 08:50:25', 'Rejected');

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
('4af8ffe4001611ee', '9973ca1bcf7245b5', '+1-146-665-9580x', '', 'franklinbrianna@example.org'),
('4afdcac3001611ee', '4e7271364f2b4af2', '391-347-2868x055', '', 'badams@example.net'),
('4b0295bb001611ee', '83227edb2ca3434c', '085.908.7252x885', '', 'ianjohnson@example.org'),
('4b05856c001611ee', '6dfefda800ea467f', '+1-657-607-6185', '', 'perkinstamara@example.net'),
('4b08de6b001611ee', '6ca1ee86e69a404f', '(669)679-4437x68', '', 'raven17@example.net'),
('4b0b8c67001611ee', '0091d4d920cc47cb', '412-951-5476', '', 'candice11@example.net'),
('4b0e6a62001611ee', '4f18274da89f405b', '001-523-796-4711', '', 'beckkimberly@example.com'),
('4b112557001611ee', 'df56a95a94ad47ab', '(829)627-6817x01', '', 'steven34@example.org'),
('4b140176001611ee', '0fb6743304d947e5', '(663)468-1238', '', 'amandataylor@example.net'),
('4b16a130001611ee', 'f30a8bebbcad4b59', '(041)904-6955', '', 'mark81@example.org'),
('4b19209a001611ee', '7dac5e3d84934a9b', '432-380-7439x776', '', 'uwhite@example.com'),
('4b1ba141001611ee', '4cc747c22809407f', '011.752.9883x632', '', 'mark01@example.net'),
('4b1e4c38001611ee', '59a76ba2c3964040', '(646)991-9010', '', 'elizabeth92@example.net'),
('4b20ca9f001611ee', '5286daca2a564db5', '(759)156-1454', '', 'awarren@example.net'),
('4b2377f4001611ee', '2bfd428763b44afe', '3045714759', '', 'evelyn38@example.net'),
('4b2644cc001611ee', '6835f81faa434223', '+1-964-073-0488x', '', 'kennethclark@example.org'),
('4b28ead2001611ee', '448fcbb0f01a43e4', '001-817-570-3379', '', 'jessicabryant@example.org'),
('4b2b842e001611ee', 'db0091ed73b040a6', '915-383-3802x901', '', 'lmiller@example.org'),
('4b2e1be3001611ee', '27ac878921df430f', '695-347-1065', '', 'qhowe@example.com'),
('4b30badf001611ee', 'a31734d17ccb41f4', '+1-987-730-4855x', '', 'davidmccoy@example.com'),
('4b33440b001611ee', '8a3d7e0fbe464ed0', '9809420164', '', 'katie92@example.com'),
('4b35d9f9001611ee', 'b66d505ad9b44efe', '145.363.9812', '', 'petersonjulie@example.org'),
('4b3892e0001611ee', 'ed2a30f051984885', '(643)769-6925x22', '', 'russelldaniel@example.net'),
('4b3b4f78001611ee', 'bc68e00992fd4b9e', '(943)591-4649', '', 'gchurch@example.com'),
('4b3e0821001611ee', '7f2a4038e8d44751', '1713401043', '', 'henryjessica@example.net'),
('4b40b031001611ee', '688ba9d9801f40c4', '346.727.1851', '', 'davidgomez@example.org'),
('4b434e46001611ee', '34981a6e4e274688', '+1-085-270-2977x', '', 'obrown@example.org'),
('4b45ea33001611ee', '1cf0e5b3db964405', '820-373-4759', '', 'denise57@example.org'),
('4b486b76001611ee', '80eb76d4772c426f', '778.176.7071', '', 'xenglish@example.org'),
('4b4b0cb0001611ee', '373137bf50d447bc', '+1-458-367-6542x', '', 'christinejohnson@example.org'),
('4b4d93bb001611ee', '657a1185751b4190', '8677820051', '', 'mhernandez@example.org'),
('4b4f98f2001611ee', '7c7b130574774616', '678.993.0265x295', '', 'mavila@example.com'),
('4b51a680001611ee', '503881a112c84229', '(754)276-1436', '', 'aprilwallace@example.com'),
('4b53c6e5001611ee', 'f8c1452c91da4498', '001-553-142-0886', '', 'wrojas@example.com'),
('4b5596d4001611ee', 'cf6257a42d444dd8', '315.379.9540', '', 'whitechristopher@example.org'),
('4b5773fc001611ee', 'd94bdd4b65a54a76', '001-147-953-3831', '', 'williamsedwin@example.com'),
('4b597209001611ee', 'bc42a991c85146c4', '001-168-877-5843', '', 'tylermiller@example.net'),
('4b5b7d1c001611ee', '02bca7efa4a541a7', '570-242-0679x467', '', 'marcus02@example.net'),
('4b5d93a9001611ee', 'f70dc90d3c334d8f', '4900552929', '', 'traciwood@example.org'),
('4b5f9104001611ee', '8d44ba3fbb544c51', '494-953-8828x908', '', 'anneford@example.com'),
('4b61a719001611ee', '7878e61b73804eba', '226-001-6596x487', '', 'campbellbrianna@example.org'),
('4b63d483001611ee', '43c5e4ede71e45be', '863-211-2037', '', 'bradleytyler@example.net'),
('4b65b9cb001611ee', 'c0fef98785514a2a', '(167)869-6775x72', '', 'rebecca31@example.net'),
('4b67a3ca001611ee', '1ac5c8e06d53467e', '335.564.1610', '', 'adam31@example.com'),
('4b69728b001611ee', 'e3fd766d6aa94078', '(003)831-6748x50', '', 'tlowery@example.net'),
('4b6b9421001611ee', '85e67dcc5ee54971', '(103)285-6274', '', 'christophermaldonado@example.net'),
('4b707c02001611ee', 'ab59371b97a14104', '001-350-521-3008', '', 'bonnie27@example.com'),
('4b729172001611ee', 'e2b412abece5447f', '+1-580-215-9259x', '', 'raymond53@example.org'),
('4b74bc99001611ee', '832f480563c848a0', '(109)640-8777x43', '', 'shannonfarmer@example.org'),
('4b76ed8a001611ee', '950309a821704d7a', '459-718-5122x853', '', 'davidhill@example.org'),
('4b79b993001611ee', 'e8790c994dae49af', '(339)550-6366x46', '', 'edwardspaul@example.org'),
('4b7c19ff001611ee', '27aebdef5ef54f3e', '001-076-994-6599', '', 'kjefferson@example.com'),
('4b7e488c001611ee', '803d125ff8ce4fcb', '(865)261-8459', '', 'walter46@example.net'),
('4b80991e001611ee', '44abf9d1d0be46e0', '+1-531-844-2455x', '', 'grossangela@example.com'),
('4b830266001611ee', '993e5cc6edbb414f', '950-145-7029', '', 'bowmancharles@example.org'),
('4b85678d001611ee', '496a2f4b6dc44c96', '+1-249-884-5175x', '', 'cliffordking@example.net'),
('4b87afba001611ee', '80bd0a09d1c24b0f', '3435394370', '', 'ryan95@example.org'),
('4b89d652001611ee', '304067f213f445a1', '+1-165-771-6775x', '', 'robertschelsea@example.com'),
('4b8bf54b001611ee', '30d59ace3a504bd4', '(800)062-9212', '', 'craigandrew@example.net'),
('4b8e29f1001611ee', 'f0d3111a877e447c', '361.661.1497x522', '', 'jeff31@example.com'),
('4b9055ad001611ee', '12f8266aebaa47c4', '088-858-5290x819', '', 'tinarodriguez@example.com'),
('4b919360001611ee', '60774456f0264bed', '(706)080-5259x66', '', 'gregorykeith@example.org'),
('4b92d00f001611ee', '9c19d032a3ea4b03', '(415)474-0538', '', 'mcintoshjennifer@example.net'),
('4b940d87001611ee', '91608ba274db4543', '(078)688-7523', '', 'sandy07@example.net'),
('4b952850001611ee', '70560c65c0c64f33', '+1-588-699-5800x', '', 'kmueller@example.org'),
('4b96359d001611ee', 'c487f44e2eed49e0', '981-463-5108', '', 'wwoods@example.net'),
('4b9748ba001611ee', '82c8ec8fabd943f5', '3797896975', '', 'wileyjennifer@example.org'),
('4b985657001611ee', '1c0e6f0a2fb04da6', '005-582-0851x752', '', 'mwilson@example.org'),
('4b99761a001611ee', '5dd5bb9d6a024ed9', '214.075.6188x392', '', 'kayleepotter@example.org'),
('4b9a9a43001611ee', '0bb6e387e76b4ee3', '(558)640-1274', '', 'michael81@example.com'),
('4b9bb27c001611ee', '3bbf5be3e0244e8f', '898-951-3210x913', '', 'smithzachary@example.com'),
('4b9cd504001611ee', '4d1983d459fe4076', '(075)086-5921', '', 'haley73@example.org'),
('4b9dfb6c001611ee', 'aa20a932a13b4d9f', '001-236-554-4896', '', 'kperez@example.net'),
('4b9f1382001611ee', '5a9486f382684c63', '001-842-228-1360', '', 'vargaspaul@example.net'),
('4ba06c45001611ee', 'd9060a93717e4b09', '7340398818', '', 'bakeramy@example.net'),
('4ba1a9e7001611ee', '294741cdec70458d', '509.848.0222x777', '', 'monicathomas@example.com'),
('4ba2e561001611ee', '966cb7fb5e7d4b86', '479.313.8958x822', '', 'frogers@example.org'),
('4ba42921001611ee', 'f841926d1c9f4b1c', '5652152397', '', 'melissawalters@example.org'),
('4ba56ef5001611ee', 'a9ce3a8abb094e13', '896-463-4775x576', '', 'paulwilson@example.com'),
('4ba69fdb001611ee', 'dd30f66ec1c94417', '(977)248-4276', '', 'phamjesse@example.org'),
('4ba8037d001611ee', 'ad672c0d0ced4878', '649-012-3960x427', '', 'whitekristen@example.net'),
('4ba93d0f001611ee', '56fd387b9b0e4511', '803.095.3221', '', 'flynnwesley@example.net'),
('4baa7054001611ee', '0b26da385db84245', '019.199.3986x251', '', 'fwilkerson@example.org'),
('4babb8f7001611ee', 'ec69629c985144c5', '0708109003', '', 'carlos01@example.org'),
('4bacf30a001611ee', '2596c651bcce405f', '(643)820-8390', '', 'qhaney@example.com'),
('4bae2572001611ee', '318f99e8ff964c8e', '+1-651-675-3071x', '', 'danielbrown@example.net'),
('4baf868e001611ee', '2fe32b34ce3c4723', '(682)093-6496x65', '', 'jon60@example.net'),
('4bb0cde2001611ee', '94d27c5df6b5462e', '1970484131', '', 'zburnett@example.com'),
('4bb21894001611ee', 'e56627f3f39544a8', '(365)604-1696x79', '', 'christopher99@example.org'),
('4bb3537f001611ee', '4e2c4797f0be497a', '(034)606-9347', '', 'randysmith@example.net');

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
('4af9a2a0001611ee', '9973ca1bcf7245b5', 'Student', 'Private', 'Casual', '', 'Managers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('4afead40001611ee', '4e7271364f2b4af2', 'Employed', 'Government', 'Permanent/Regular', '', 'Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b030a17001611ee', '83227edb2ca3434c', 'Employed', 'Government', 'Casual', '', 'Managers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b064863001611ee', '6dfefda800ea467f', 'Employed', 'Government', 'Seasonal', '', 'Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b095289001611ee', '6ca1ee86e69a404f', 'Employed', 'Private', 'Emergency', '', 'Technician & Associate Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b0bfd51001611ee', '0091d4d920cc47cb', 'Employed', 'Private', 'Emergency', '', 'Others', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b0ee246001611ee', '4f18274da89f405b', 'Self-Employed', 'Government', 'Permanent/Regular', '', 'Armed Forces Occupations', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b119c29001611ee', 'df56a95a94ad47ab', 'Self-Employed', 'Private', 'Permanent/Regular', '', 'Elementary Occupations', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b147b53001611ee', '0fb6743304d947e5', 'Self-Employed', 'Government', 'Permanent/Regular', '', 'Others', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b170ccd001611ee', 'f30a8bebbcad4b59', 'Employed', 'Government', 'Casual', '', 'Technician & Associate Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b198933001611ee', '7dac5e3d84934a9b', 'Student', 'Private', 'Emergency', '', 'Elementary Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('4b1c0bf0001611ee', '4cc747c22809407f', 'Student', 'Private', 'Permanent/Regular', '', 'Technician & Associate Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('4b1eb15d001611ee', '59a76ba2c3964040', 'Self-Employed', 'Private', 'Casual', '', 'Elementary Occupations', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('4b213722001611ee', '5286daca2a564db5', 'Self-Employed', 'Private', 'Casual', '', 'Professionals', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b23eedb001611ee', '2bfd428763b44afe', 'Unemployed', 'Private', 'Seasonal', '', 'Technician & Associate Professionals', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b26b471001611ee', '6835f81faa434223', 'Student', 'Government', 'Emergency', '', 'Service & Sales Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b29603f001611ee', '448fcbb0f01a43e4', 'Unemployed', 'Private', 'Seasonal', '', 'Service & Sales Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b2bf0d7001611ee', 'db0091ed73b040a6', 'Unemployed', 'Private', 'Permanent/Regular', '', 'Armed Forces Occupations', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('4b2e88f4001611ee', '27ac878921df430f', 'Employed', 'Government', 'Permanent/Regular', '', 'Plant & Machine Operators & Assemblers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b312950001611ee', 'a31734d17ccb41f4', 'Student', 'Government', 'Emergency', '', 'Plant & Machine Operators & Assemblers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b33b4e7001611ee', '8a3d7e0fbe464ed0', 'Self-Employed', 'Private', 'Permanent/Regular', '', 'Professionals', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b3650d0001611ee', 'b66d505ad9b44efe', 'Employed', 'Private', 'Seasonal', '', 'Managers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('4b390561001611ee', 'ed2a30f051984885', 'Student', 'Government', 'Permanent/Regular', '', 'Plant & Machine Operators & Assemblers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b3bdc82001611ee', 'bc68e00992fd4b9e', 'Unemployed', 'Private', 'Casual', '', 'Professionals', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'No', '0.00'),
('4b3e74a1001611ee', '7f2a4038e8d44751', 'Unemployed', 'Government', 'Casual', '', 'Service & Sales Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'No', 'Yes', '0.00'),
('4b411b90001611ee', '688ba9d9801f40c4', 'Unemployed', 'Government', 'Permanent/Regular', '', 'Clerical Support Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b43b924001611ee', '34981a6e4e274688', 'Employed', 'Private', 'Seasonal', '', 'Managers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b4659e3001611ee', '1cf0e5b3db964405', 'Unemployed', 'Private', 'Permanent/Regular', '', 'Service & Sales Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'No', '0.00'),
('4b48d24a001611ee', '80eb76d4772c426f', 'Unemployed', 'Private', 'Seasonal', '', 'Service & Sales Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b4b7abb001611ee', '373137bf50d447bc', 'Self-Employed', 'Government', 'Casual', '', 'Service & Sales Workers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', 'No', '', 'Yes', 'Yes', '0.00'),
('4b4dff6d001611ee', '657a1185751b4190', '', '', '', 'Dawson-Davis', 'Armed Forces Occupations', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('4b4fffcf001611ee', '7c7b130574774616', '', '', '', 'Gonzalez PLC', 'Craft & Related Trade Workers', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('4b52217f001611ee', '503881a112c84229', '', '', '', 'Murray, White and Sandoval', 'Service & Sales Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('4b542ddd001611ee', 'f8c1452c91da4498', '', '', '', 'Novak-Bryant', 'Service & Sales Workers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('4b55f508001611ee', 'cf6257a42d444dd8', '', '', '', 'Nelson, Miller and Garrett', 'Elementary Occupations', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('4b57e13e001611ee', 'd94bdd4b65a54a76', '', '', '', 'Walter and Sons', 'Elementary Occupations', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('4b59d90b001611ee', 'bc42a991c85146c4', '', '', '', 'Newman-Ramirez', 'Skilled Agricultural, Forestry & Fishery Workers', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('4b5be845001611ee', '02bca7efa4a541a7', '', '', '', 'Watson LLC', 'Elementary Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('4b5dfdee001611ee', 'f70dc90d3c334d8f', '', '', '', 'Soto Ltd', 'Craft & Related Trade Workers', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b600649001611ee', '8d44ba3fbb544c51', '', '', '', 'Jones, Castillo and Mcintyre', 'Technician & Associate Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('4b6218fa001611ee', '7878e61b73804eba', '', '', '', 'Williams, Oconnor and Webster', 'Others', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('4b643956001611ee', '43c5e4ede71e45be', '', '', '', 'Gordon, Lowe and Lindsey', 'Skilled Agricultural, Forestry & Fishery Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('4b66244d001611ee', 'c0fef98785514a2a', '', '', '', 'Cohen-Keller', 'Technician & Associate Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('4b67fe11001611ee', '1ac5c8e06d53467e', '', '', '', 'Rodriguez PLC', 'Elementary Occupations', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('4b69da43001611ee', 'e3fd766d6aa94078', '', '', '', 'Lopez Inc', 'Professionals', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('4b6d220f001611ee', '85e67dcc5ee54971', '', '', '', 'Miller Group', 'Professionals', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b70f74f001611ee', 'ab59371b97a14104', '', '', '', 'Baker-King', 'Professionals', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b73105c001611ee', 'e2b412abece5447f', '', '', '', 'Williams, Neal and Jones', 'Armed Forces Occupations', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b752caa001611ee', '832f480563c848a0', '', '', '', 'Hall, Burns and Pearson', 'Technician & Associate Professionals', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('4b77869f001611ee', '950309a821704d7a', '', '', '', 'Williams PLC', 'Professionals', '', 'Less than 10,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '60000.00'),
('4b7a4834001611ee', 'e8790c994dae49af', '', '', '', 'Wells Group', 'Armed Forces Occupations', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '30000.00'),
('4b7c8395001611ee', '27aebdef5ef54f3e', '', '', '', 'Neal LLC', 'Plant & Machine Operators & Assemblers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '10000.00'),
('4b7eca05001611ee', '803d125ff8ce4fcb', '', '', '', 'Grant, Miller and Peters', 'Professionals', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b811d48001611ee', '44abf9d1d0be46e0', '', '', '', 'Hahn-Moore', 'Elementary Occupations', '', '21,000-40,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '20000.00'),
('4b838570001611ee', '993e5cc6edbb414f', '', '', '', 'Nelson, Curtis and Wiggins', 'Elementary Occupations', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b85ebf9001611ee', '496a2f4b6dc44c96', '', '', '', 'Morgan PLC', 'Skilled Agricultural, Forestry & Fishery Workers', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('4b881edb001611ee', '80bd0a09d1c24b0f', '', '', '', 'Jackson PLC', 'Craft & Related Trade Workers', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('4b8a4341001611ee', '304067f213f445a1', '', '', '', 'Walter, Clark and Boyle', 'Elementary Occupations', '', 'More than 100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b8c76da001611ee', '30d59ace3a504bd4', '', '', '', 'Avery, Mays and Brown', 'Others', '', '10,000-20,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '40000.00'),
('4b8e97f4001611ee', 'f0d3111a877e447c', '', '', '', 'Johnson-Mathis', 'Armed Forces Occupations', '', '41,000-100,000', NULL, '0.00', NULL, '', '', '', '', '', '', '', '50000.00'),
('4b90c012001611ee', '12f8266aebaa47c4', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b91fa46001611ee', '60774456f0264bed', '', '', '', '', 'Elementary Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b93375a001611ee', '9c19d032a3ea4b03', '', '', '', '', 'Elementary Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b947292001611ee', '91608ba274db4543', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b958693001611ee', '70560c65c0c64f33', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b969afa001611ee', 'c487f44e2eed49e0', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b97a8e4001611ee', '82c8ec8fabd943f5', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b98b7b5001611ee', '1c0e6f0a2fb04da6', '', '', '', '', 'Elementary Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b99dc5c001611ee', '5dd5bb9d6a024ed9', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b9af690001611ee', '0bb6e387e76b4ee3', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b9c17cc001611ee', '3bbf5be3e0244e8f', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b9d3ac4001611ee', '4d1983d459fe4076', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b9e59f4001611ee', 'aa20a932a13b4d9f', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4b9f8c7f001611ee', '5a9486f382684c63', '', '', '', '', 'Armed Forces Occupations', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba0e08a001611ee', 'd9060a93717e4b09', '', '', '', '', 'Craft & Related Trade Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba21ac0001611ee', '294741cdec70458d', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba356bb001611ee', '966cb7fb5e7d4b86', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba4ab05001611ee', 'f841926d1c9f4b1c', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba5dd12001611ee', 'a9ce3a8abb094e13', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba71d54001611ee', 'dd30f66ec1c94417', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba876df001611ee', 'ad672c0d0ced4878', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4ba9abac001611ee', '56fd387b9b0e4511', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4baaf108001611ee', '0b26da385db84245', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4bac2c9f001611ee', 'ec69629c985144c5', '', '', '', '', 'Technician & Associate Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4bad636a001611ee', '2596c651bcce405f', '', '', '', '', 'Professionals', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4bae9ef7001611ee', '318f99e8ff964c8e', '', '', '', '', 'Plant & Machine Operators & Assemblers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4bb004f3001611ee', '2fe32b34ce3c4723', '', '', '', '', 'Service & Sales Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4bb147f4001611ee', '94d27c5df6b5462e', '', '', '', '', 'Skilled Agricultural, Forestry & Fishery Workers', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4bb28430001611ee', 'e56627f3f39544a8', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00'),
('4bb3c474001611ee', '4e2c4797f0be497a', '', '', '', '', 'Others', '', '', NULL, '0.00', NULL, '', '', '', '', '', '', '', '0.00');

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
('0091d4d920cc47cb', 'Robin', '', 'Miller', ''),
('00d2e40a11944dda', 'Timothy', '', 'Stevens', ''),
('029fedc1a215464c', 'Paul', '', 'Ellison', ''),
('02bca7efa4a541a7', 'Anthony', '', 'Reeves', ''),
('0885ee15ae9c43a3', 'Travis', '', 'Mcclure', ''),
('0a8bda73a05b44da', 'Lindsay', '', 'Williams', ''),
('0b1cfc69068e4c69', 'Tammy', '', 'Mora', ''),
('0b26da385db84245', 'John', '', 'Delacruz', ''),
('0bb6e387e76b4ee3', 'Robin', '', 'Wheeler', ''),
('0c251c4161c142e9', 'Lisa', '', 'Wright', ''),
('0dffec9fc92b4e4d', 'Samuel', '', 'Shepherd', ''),
('0eb9c1c54f58412f', 'Michael', '', 'Williams', ''),
('0fb6743304d947e5', 'Margaret', '', 'Giles', ''),
('12f8266aebaa47c4', 'Jerry', '', 'Kelly', ''),
('13e810384082463b', 'John', '', 'Kelly', ''),
('16c9c4b1b2764d12', 'Ian', '', 'Klein', ''),
('1814437569dd4ae9', 'Matthew', '', 'Williams', ''),
('1abdb420af9746a1', 'William', '', 'Cooper', ''),
('1ac5c8e06d53467e', 'Austin', '', 'Curtis', ''),
('1b6f8df207c3470a', 'Melissa', '', 'Baker', ''),
('1bdc4854cdca49c9', 'Elizabeth', '', 'Wood', ''),
('1c05a83f794c4264', 'Emily', '', 'Harvey', ''),
('1c0e6f0a2fb04da6', 'Lorraine', '', 'Ford', ''),
('1c79bf71b617464e', 'Jennifer', '', 'Morales', ''),
('1cf0e5b3db964405', 'William', '', 'Donaldson', ''),
('1fc3d286bc7d4d2a', 'Lucas', '', 'Smith', ''),
('208dc91b23684265', 'Kristi', '', 'Mckenzie', ''),
('2179c26c44914174', 'Aaron', '', 'Hardin', ''),
('21f28522bb0f4c51', 'Luis', '', 'Stewart', ''),
('24b935fb75494029', 'Robert', '', 'Marks', ''),
('2557ad844cb64e4f', 'Rhonda', '', 'Peterson', ''),
('257306af529b450a', 'Carlos', '', 'Wiley', ''),
('2596c651bcce405f', 'Charles', '', 'Palmer', ''),
('266a05ede8ec46c9', 'Darin', '', 'Warren', ''),
('27ac878921df430f', 'Jeff', '', 'Davis', ''),
('27aebdef5ef54f3e', 'Katherine', '', 'Fernandez', ''),
('294741cdec70458d', 'Stephen', '', 'Scott', ''),
('2b4481546fcc4523', 'Michael', '', 'Chambers', ''),
('2bfd428763b44afe', 'Kenneth', '', 'Bailey', ''),
('2d199578dec042dd', 'Julie', '', 'Wilkins', ''),
('2db31789aee84cad', 'Melissa', '', 'Clayton', ''),
('2e1facb350d64f8c', 'Tyler', '', 'Frey', ''),
('2fe32b34ce3c4723', 'Tammy', '', 'Martinez', ''),
('304067f213f445a1', 'Angela', '', 'Farrell', ''),
('30d59ace3a504bd4', 'Kathleen', '', 'Mclaughlin', ''),
('30dc5230cb41402f', 'Jeffrey', '', 'West', ''),
('318f99e8ff964c8e', 'Jessica', '', 'Diaz', ''),
('31ffa2762d13464d', 'Carla', '', 'Adams', ''),
('33d192ada5cf46b5', 'Joyce', '', 'Lucas', ''),
('345c2b3325b0488b', 'Ian', '', 'Drake', ''),
('3480611245424301', 'Jerry', '', 'Williams', ''),
('34981a6e4e274688', 'Brandon', '', 'Franklin', ''),
('36e0acde0e4d4d79', 'Rachel', '', 'Robinson', ''),
('36eade49a43c457c', 'Lindsay', '', 'Richardson', ''),
('373137bf50d447bc', 'Nancy', '', 'Garcia', ''),
('3769ff27a6d24798', 'Kevin', '', 'Kent', ''),
('38da0853fcbc46a3', 'Carlos', '', 'Hodges', ''),
('3bbf5be3e0244e8f', 'James', '', 'Ashley', ''),
('3be368c53e764ac5', 'Eduardo', '', 'Davis', ''),
('43c5e4ede71e45be', 'Kevin', '', 'Bailey', ''),
('448fcbb0f01a43e4', 'Sarah', '', 'Gray', ''),
('44abf9d1d0be46e0', 'Paul', '', 'Willis', ''),
('474fe2a985c64839', 'Erin', '', 'Owen', ''),
('47ae93adea834a14', 'Robert', '', 'Mclaughlin', ''),
('48e190adc2e8489e', 'Jacob', '', 'Baker', ''),
('496a2f4b6dc44c96', 'Leroy', '', 'Moore', ''),
('4ad3d3dbe02b429d', 'Jonathan', '', 'Cooper', ''),
('4bcde661674c436c', 'James', '', 'Daugherty', ''),
('4cc747c22809407f', 'Christopher', '', 'Morris', ''),
('4d1983d459fe4076', 'Brittany', '', 'Hughes', ''),
('4d38e37195e746d2', 'Andrew', '', 'Lee', ''),
('4d7d66d520b64a8d', 'Krista', '', 'Saunders', ''),
('4e2c4797f0be497a', 'Monique', '', 'Conley', ''),
('4e7271364f2b4af2', 'Shirley', '', 'Hendrix', ''),
('4f18274da89f405b', 'Nicholas', '', 'Mcintyre', ''),
('5019c26649af4c32', 'Ivan', '', 'Sanchez', ''),
('503881a112c84229', 'Travis', '', 'Archer', ''),
('51893f5a54cc4b63', 'Brianna', '', 'Jackson', ''),
('51c00f604fcd4fef', 'Jennifer', '', 'Williams', ''),
('5286daca2a564db5', 'Jay', '', 'Rodriguez', ''),
('54c907fe834e4ccf', 'Sonya', '', 'Sanchez', ''),
('55abcc62dff34240', 'Timothy', '', 'Rodriguez', ''),
('56fd387b9b0e4511', 'Brent', '', 'Jones', ''),
('58da2f6220b84518', 'Misty', '', 'Wright', ''),
('59a76ba2c3964040', 'Timothy', '', 'Daniels', ''),
('59b2c89926a64b82', 'Dale', '', 'Gross', ''),
('59fdb325845c4f58', 'Daniel', '', 'Leonard', ''),
('5a9486f382684c63', 'Dennis', '', 'Marks', ''),
('5caf738108f6415f', 'Logan', '', 'Mcdaniel', ''),
('5cfe2c91f1864a75', 'Heidi', '', 'Dalton', ''),
('5dd5bb9d6a024ed9', 'David', '', 'Blake', ''),
('60774456f0264bed', 'Jeffrey', '', 'Quinn', ''),
('6077d7b791a241bb', 'Kevin', '', 'Lewis', ''),
('61ddf55f55fe4c02', 'Veronica', '', 'Glenn', ''),
('657a1185751b4190', 'Brooke', '', 'Medina', ''),
('6658644232c84e2c', 'William', '', 'Davidson', ''),
('6835f81faa434223', 'Douglas', '', 'Dominguez', ''),
('688ba9d9801f40c4', 'Kim', '', 'Martin', ''),
('69b5e0855e6a459e', 'Ralph', '', 'Dunn', ''),
('6c2435cda7664e5b', 'Dennis', '', 'Walter', ''),
('6ca1ee86e69a404f', 'Barbara', '', 'Wolfe', ''),
('6dfefda800ea467f', 'Kelsey', '', 'Hess', ''),
('6f2ae837cf3743fe', 'Kimberly', '', 'Morrison', ''),
('70560c65c0c64f33', 'Sherry', '', 'Turner', ''),
('7530ed6a1a764776', 'Heather', '', 'Parks', ''),
('76f752b5fda0426b', 'Aaron', '', 'Coleman', ''),
('7878e61b73804eba', 'Manuel', '', 'Warren', ''),
('79cf413bdc484385', 'Katherine', '', 'Garcia', ''),
('7a8ceb86883f4cd4', 'Jenna', '', 'Gonzalez', ''),
('7c7b130574774616', 'William', '', 'Alvarez', ''),
('7cf3a6a19b834729', 'Brett', '', 'Weaver', ''),
('7dac5e3d84934a9b', 'Steven', '', 'Romero', ''),
('7f2a4038e8d44751', 'Jennifer', '', 'Blake', ''),
('803d125ff8ce4fcb', 'Denise', '', 'Jones', ''),
('80bd0a09d1c24b0f', 'Jennifer', '', 'Roberts', ''),
('80eb76d4772c426f', 'Timothy', '', 'Smith', ''),
('82c8ec8fabd943f5', 'Jason', '', 'Hoover', ''),
('83088d57fc3146b7', 'Grace', '', 'Norman', ''),
('83227edb2ca3434c', 'Jamie', '', 'Cook', ''),
('832f480563c848a0', 'Pamela', '', 'Martin', ''),
('85e67dcc5ee54971', 'Eric', '', 'Orozco', ''),
('866eda79d5a64d09', 'Mindy', '', 'Robinson', ''),
('86b1487a3121437e', 'Craig', '', 'Powers', ''),
('88684ad91d604b1e', 'Mitchell', '', 'Welch', ''),
('88a73b835b8f4aa3', 'Brandon', '', 'Gibson', ''),
('8a3d7e0fbe464ed0', 'Brett', '', 'Collins', ''),
('8d44ba3fbb544c51', 'Michael', '', 'Gibson', ''),
('91608ba274db4543', 'Kayla', '', 'Hansen', ''),
('924ca28f1b604b2a', 'David', '', 'West', ''),
('94d27c5df6b5462e', 'Ashley', '', 'Bowen', ''),
('950309a821704d7a', 'Maurice', '', 'Taylor', ''),
('966cb7fb5e7d4b86', 'Angela', '', 'Myers', ''),
('993e5cc6edbb414f', 'Susan', '', 'Shannon', ''),
('9973ca1bcf7245b5', 'Jordan', '', 'Thompson', ''),
('9ba43f6c40eb441d', 'Richard', '', 'Anderson', ''),
('9c19d032a3ea4b03', 'Francisco', '', 'Mclaughlin', ''),
('9c56d77eb5584eeb', 'Laurie', '', 'Marshall', ''),
('9db2fe52f5e34533', 'John', '', 'Park', ''),
('a115ac329f0c4655', 'Karen', '', 'King', ''),
('a1a3e687a72543ec', 'Karen', '', 'Stewart', ''),
('a2b5b077cbd24bbc', 'Jill', '', 'Pacheco', ''),
('a31734d17ccb41f4', 'Jennifer', '', 'Brown', ''),
('a798e2e1cbce44da', 'Michael', '', 'Morgan', ''),
('a9ce3a8abb094e13', 'Ricardo', '', 'Smith', ''),
('aa20a932a13b4d9f', 'Michael', '', 'Weiss', ''),
('ab59371b97a14104', 'Samuel', '', 'Wright', ''),
('ad672c0d0ced4878', 'Tiffany', '', 'Smith', ''),
('af49e37be9c54145', 'Chad', '', 'King', ''),
('b158b36da7d64ef6', 'Marissa', '', 'Smith', ''),
('b16ddb8d22fb4d10', 'Mario', '', 'Burgess', ''),
('b1c1d479c0fa41b2', 'Nicholas', '', 'Green', ''),
('b31805a8ac854e63', 'Robert', '', 'Martin', ''),
('b35caa2443334c86', 'Wendy', '', 'Flores', ''),
('b66d505ad9b44efe', 'Christopher', '', 'Palmer', ''),
('b9a69948d24047e5', 'Cynthia', '', 'Smith', ''),
('bc42a991c85146c4', 'Kevin', '', 'Perry', ''),
('bc68e00992fd4b9e', 'Michael', '', 'Santos', ''),
('bd412ca5f3dc4880', 'Sheila', '', 'Hoover', ''),
('bebc74f9acdd4c14', 'David', '', 'Williams', ''),
('c0fef98785514a2a', 'Michelle', '', 'Nelson', ''),
('c157c19e091b4d87', 'Julie', '', 'Holland', ''),
('c1e32a964c134e65', 'Brenda', '', 'Perez', ''),
('c25ecb5c7b0e48f3', 'Keith', '', 'Fernandez', ''),
('c487f44e2eed49e0', 'Eric', '', 'Martin', ''),
('c5e7767dac92437e', 'Sierra', '', 'Thompson', ''),
('c6955447791048ec', 'Anthony', '', 'Wilson', ''),
('c87995d084a842bd', 'Claire', '', 'Miller', ''),
('c93c62a960784215', 'George', '', 'Gomez', ''),
('cccf83cd06b84ea2', 'Diana', '', 'Wade', ''),
('ce4666e13a124387', 'Johnathan', '', 'Romero', ''),
('cf6257a42d444dd8', 'Donald', '', 'Powers', ''),
('d205afbfa1274e96', 'Benjamin', '', 'King', ''),
('d3ea28891ce94871', 'Gregory', '', 'Welch', ''),
('d4a0786ee1bc4370', 'Donna', '', 'Davidson', ''),
('d566d0cccc204505', 'Christopher', '', 'Rodriguez', ''),
('d9060a93717e4b09', 'Kevin', '', 'Ali', ''),
('d94bdd4b65a54a76', 'Thomas', '', 'Howard', ''),
('da12853cf8534481', 'Andrew', '', 'Wilcox', ''),
('db0091ed73b040a6', 'Eduardo', '', 'Mills', ''),
('db1b241648004809', 'Victoria', '', 'Haney', ''),
('dd30f66ec1c94417', 'Chad', '', 'Hall', ''),
('df56a95a94ad47ab', 'Dominique', '', 'Carrillo', ''),
('df6f25b500964cf2', 'Nicole', '', 'Mathis', ''),
('e038b559ed7d437d', 'Katie', '', 'Luna', ''),
('e092dff67b1f45bb', 'Michael', '', 'Nelson', ''),
('e0d540d2d00e47f1', 'Andrew', '', 'Johnson', ''),
('e210dfcd9f9347ab', 'Craig', '', 'Meyer', ''),
('e2b412abece5447f', 'Paul', '', 'Houston', ''),
('e3fd766d6aa94078', 'Peter', '', 'James', ''),
('e56627f3f39544a8', 'Carolyn', '', 'Warner', ''),
('e56fd50ed1aa45d2', 'Charles', '', 'Lindsey', ''),
('e61d1d316edf4800', 'Michelle', '', 'Donaldson', ''),
('e73435951a104227', 'Joshua', '', 'Guerra', ''),
('e8790c994dae49af', 'Kyle', '', 'Williams', ''),
('e9a963ae87c044f7', 'Kristina', '', 'Morgan', ''),
('ea252b68e5bb4def', 'Justin', '', 'Robbins', ''),
('eb05fdaed7fa411e', 'James', '', 'Coleman', ''),
('ec69629c985144c5', 'Beth', '', 'Brown', ''),
('ed2a30f051984885', 'Christopher', '', 'Ibarra', ''),
('f0d3111a877e447c', 'Lisa', '', 'Moore', ''),
('f2972be5edc94a1f', 'Anthony', '', 'Watkins', ''),
('f30a8bebbcad4b59', 'Monica', '', 'Blackwell', ''),
('f70dc90d3c334d8f', 'Alex', '', 'Garcia', ''),
('f841926d1c9f4b1c', 'Laura', '', 'Perry', ''),
('f8c1452c91da4498', 'Christina', '', 'King', ''),
('f9e0565865a1493e', 'Paul', '', 'Phillips', ''),
('fba4e0abbd7e4f68', 'Patrick', '', 'Kelly', ''),
('fbb2cfddfa1c4507', 'David', '', 'Rios', ''),
('fcc093bb80c64673', 'Nancy', '', 'Vincent', ''),
('fd25831765c24ac5', 'David', '', 'Conrad', '');

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
('4af94d6e001611ee', '9973ca1bcf7245b5', '1930-08-11', '', 'Male', 'None', 'O-', 'Other', 'Single'),
('4afe70e3001611ee', '4e7271364f2b4af2', '1968-02-28', '', 'Male', 'Senior High School', 'A-', 'Agnostic', 'Widowed'),
('4b02cbe7001611ee', '83227edb2ca3434c', '1943-03-13', '', 'Female', 'Elementary Education', 'AB+', 'Buddhist', 'Separated'),
('4b061028001611ee', '6dfefda800ea467f', '1932-04-24', '', 'Female', 'Elementary Education', 'O+', 'Muslim', 'Separated'),
('4b0913de001611ee', '6ca1ee86e69a404f', '1945-03-20', '', 'Male', 'Vocational', 'O-', 'Protestant', 'Divorced'),
('4b0bc5df001611ee', '0091d4d920cc47cb', '1955-09-04', '', 'Male', 'Kindergarten', 'B+', 'Born Again', 'Married'),
('4b0ea199001611ee', '4f18274da89f405b', '2010-05-15', '', 'Male', 'Elementary Education', 'O-', 'Atheist', 'Divorced'),
('4b116459001611ee', 'df56a95a94ad47ab', '1981-05-22', '', 'Female', 'Elementary Education', 'B-', 'Muslim', 'Single'),
('4b143e21001611ee', '0fb6743304d947e5', '1965-05-01', '', 'Male', 'Elementary Education', 'A-', 'Roman Catholic', 'Widowed'),
('4b16d796001611ee', 'f30a8bebbcad4b59', '1962-11-24', '', 'Male', 'College', 'A+', 'Protestant', 'Divorced'),
('4b195518001611ee', '7dac5e3d84934a9b', '2009-12-26', '', 'Male', 'None', 'AB+', 'Buddhist', 'Single'),
('4b1bd6b6001611ee', '4cc747c22809407f', '2005-03-05', '', 'Female', 'College', 'A+', 'Other', 'Divorced'),
('4b1e8267001611ee', '59a76ba2c3964040', '1939-02-28', '', 'Male', 'Elementary Education', 'O+', 'Other', 'Single'),
('4b210006001611ee', '5286daca2a564db5', '1948-07-02', '', 'Female', 'Vocational', 'A+', 'Protestant', 'Separated'),
('4b23b560001611ee', '2bfd428763b44afe', '1938-04-01', '', 'Female', 'Vocational', 'B-', 'Seventh Day Adventist', 'Single'),
('4b267baf001611ee', '6835f81faa434223', '2006-04-10', '', 'Male', 'None', 'A+', 'Agnostic', 'Divorced'),
('4b292708001611ee', '448fcbb0f01a43e4', '1929-02-10', '', 'Male', 'Kindergarten', 'B+', 'Atheist', 'Divorced'),
('4b2bba1a001611ee', 'db0091ed73b040a6', '1965-01-12', '', 'Male', 'None', 'A-', 'Born Again', 'Widowed'),
('4b2e52fc001611ee', '27ac878921df430f', '1959-11-12', '', 'Female', 'Senior High School', 'AB-', 'Iglesia ni Cristo', 'Married'),
('4b30f4ca001611ee', 'a31734d17ccb41f4', '1937-07-22', '', 'Male', 'Vocational', 'AB-', 'Protestant', 'Widowed'),
('4b338044001611ee', '8a3d7e0fbe464ed0', '1993-01-19', '', 'Male', 'Post Graduate', 'O+', 'Other', 'Widowed'),
('4b3616b0001611ee', 'b66d505ad9b44efe', '1986-07-19', '', 'Female', 'Kindergarten', 'O+', 'Seventh Day Adventist', 'Separated'),
('4b38ccfc001611ee', 'ed2a30f051984885', '2007-09-07', '', 'Female', 'Senior High School', 'A-', 'Seventh Day Adventist', 'Married'),
('4b3b89fd001611ee', 'bc68e00992fd4b9e', '1999-12-02', '', 'Male', 'Elementary Education', 'A+', 'Seventh Day Adventist', 'Married'),
('4b3e4119001611ee', '7f2a4038e8d44751', '1965-11-30', '', 'Male', 'Elementary Education', 'AB+', 'Protestant', 'Divorced'),
('4b40e57c001611ee', '688ba9d9801f40c4', '1924-02-28', '', 'Female', 'Senior High School', 'O+', 'Born Again', 'Divorced'),
('4b43827c001611ee', '34981a6e4e274688', '1976-10-10', '', 'Male', 'None', 'O-', 'Buddhist', 'Separated'),
('4b462190001611ee', '1cf0e5b3db964405', '1962-02-11', '', 'Male', 'Vocational', 'A+', 'Agnostic', 'Married'),
('4b48a02b001611ee', '80eb76d4772c426f', '1960-11-30', '', 'Male', 'Post Graduate', 'B-', 'Buddhist', 'Single'),
('4b4b42ac001611ee', '373137bf50d447bc', '1988-04-06', '', 'Female', 'None', 'B-', 'Iglesia ni Cristo', 'Married'),
('4b4dcadf001611ee', '657a1185751b4190', '1908-04-20', 'Port Johnton', 'Female', 'College', '', '', ''),
('4b4eca7d001611ee', '924ca28f1b604b2a', '1911-06-22', '', '', 'None', '', '', 'Single'),
('4b4fccdd001611ee', '7c7b130574774616', '1994-06-06', 'Lake Natashachester', 'Male', 'College', '', '', ''),
('4b50d56f001611ee', '266a05ede8ec46c9', '1977-06-11', '', '', 'Kindergarten', '', '', 'Single'),
('4b51e78d001611ee', '503881a112c84229', '1978-11-23', 'Ryanbury', 'Female', 'Post Graduate', '', '', ''),
('4b52edac001611ee', '208dc91b23684265', '2016-03-12', '', '', 'None', '', '', 'Separated'),
('4b53fcc5001611ee', 'f8c1452c91da4498', '1929-03-03', 'Craigport', 'Female', 'Senior High School', '', '', ''),
('4b54e6d1001611ee', '31ffa2762d13464d', '1934-02-11', '', '', 'None', '', '', 'Married'),
('4b55c926001611ee', 'cf6257a42d444dd8', '1940-01-27', 'West Charlesview', 'Female', 'Post Graduate', '', '', ''),
('4b56a7c5001611ee', '3be368c53e764ac5', '1945-05-09', '', '', 'College', '', '', 'Widowed'),
('4b57ac45001611ee', 'd94bdd4b65a54a76', '1989-11-08', 'Frederickborough', 'Female', 'Post Graduate', '', '', ''),
('4b58a4ba001611ee', 'c157c19e091b4d87', '2008-05-04', '', '', 'Vocational', '', '', 'Separated'),
('4b59a8ea001611ee', 'bc42a991c85146c4', '1974-02-28', 'Aliciafurt', 'Male', 'Junior High School', '', '', ''),
('4b5aa317001611ee', '13e810384082463b', '1961-01-25', '', '', 'Post Graduate', '', '', 'Widowed'),
('4b5bb522001611ee', '02bca7efa4a541a7', '1948-12-27', 'Carlosborough', 'Female', 'Senior High School', '', '', ''),
('4b5cc295001611ee', 'fcc093bb80c64673', '1962-09-13', '', '', 'College', '', '', 'Separated'),
('4b5dca7f001611ee', 'f70dc90d3c334d8f', '2011-05-14', 'Kaylaland', 'Female', 'Elementary Education', '', '', ''),
('4b5ec807001611ee', '38da0853fcbc46a3', '1991-09-12', '', '', 'None', '', '', 'Single'),
('4b5fcb45001611ee', '8d44ba3fbb544c51', '1989-08-01', 'New Sarahtown', 'Female', 'Senior High School', '', '', ''),
('4b60d024001611ee', 'b16ddb8d22fb4d10', '1971-01-09', '', '', 'None', '', '', 'Separated'),
('4b61e1bc001611ee', '7878e61b73804eba', '1964-06-03', 'New Kevinmouth', 'Female', 'College', '', '', ''),
('4b62fd32001611ee', '1b6f8df207c3470a', '1937-04-29', '', '', 'College', '', '', 'Single'),
('4b640d11001611ee', '43c5e4ede71e45be', '1965-05-28', 'Harrisonbury', 'Male', 'College', '', '', ''),
('4b64f64f001611ee', 'f2972be5edc94a1f', '1917-08-19', '', '', 'College', '', '', 'Divorced'),
('4b65f131001611ee', 'c0fef98785514a2a', '2012-08-07', 'South Michelle', 'Male', 'Senior High School', '', '', ''),
('4b66e7b5001611ee', '86b1487a3121437e', '1993-06-01', '', '', 'Post Graduate', '', '', 'Single'),
('4b67d25f001611ee', '1ac5c8e06d53467e', '1911-10-21', 'North Michaelshire', 'Male', 'Kindergarten', '', '', ''),
('4b68be1d001611ee', '5019c26649af4c32', '1937-12-31', '', '', 'Vocational', '', '', 'Separated'),
('4b69a42f001611ee', 'e3fd766d6aa94078', '1948-08-23', 'Lopezbury', 'Male', 'Junior High School', '', '', ''),
('4b6ab0c9001611ee', '1c79bf71b617464e', '1952-07-03', '', '', 'Vocational', '', '', 'Single'),
('4b6bd0eb001611ee', '85e67dcc5ee54971', '1917-02-11', 'Jeremyville', 'Female', 'Elementary Education', '', '', ''),
('4b6f8110001611ee', '2557ad844cb64e4f', '1936-07-05', '', '', 'Vocational', '', '', 'Widowed'),
('4b70c609001611ee', 'ab59371b97a14104', '1948-02-04', 'North Michelle', 'Female', 'College', '', '', ''),
('4b71d1f1001611ee', '36eade49a43c457c', '1920-01-17', '', '', 'Post Graduate', '', '', 'Divorced'),
('4b72dc3e001611ee', 'e2b412abece5447f', '1929-11-06', 'Lake Emilytown', 'Male', 'Kindergarten', '', '', ''),
('4b73df03001611ee', 'e73435951a104227', '2020-05-05', '', '', 'College', '', '', 'Single'),
('4b74f9c5001611ee', '832f480563c848a0', '1964-04-17', 'Olivialand', 'Male', 'Junior High School', '', '', ''),
('4b76035e001611ee', '79cf413bdc484385', '1946-08-18', '', '', 'Kindergarten', '', '', 'Separated'),
('4b7741d3001611ee', '950309a821704d7a', '1945-01-31', 'West Kyle', 'Male', 'Post Graduate', '', '', ''),
('4b789ecc001611ee', '257306af529b450a', '1963-12-18', '', '', 'Post Graduate', '', '', 'Married'),
('4b7a04ab001611ee', 'e8790c994dae49af', '2000-09-18', 'East Mauriceland', 'Male', 'Senior High School', '', '', ''),
('4b7b3479001611ee', 'ea252b68e5bb4def', '1997-02-05', '', '', 'College', '', '', 'Divorced'),
('4b7c5213001611ee', '27aebdef5ef54f3e', '2021-06-21', 'North Zachary', 'Female', 'Senior High School', '', '', ''),
('4b7d6ebe001611ee', 'd205afbfa1274e96', '2013-05-30', '', '', 'Post Graduate', '', '', 'Separated'),
('4b7e89b3001611ee', '803d125ff8ce4fcb', '1959-10-12', 'Franciscofurt', 'Male', 'Kindergarten', '', '', ''),
('4b7fbd60001611ee', '2d199578dec042dd', '2002-02-28', '', '', 'Elementary Education', '', '', 'Divorced'),
('4b80df08001611ee', '44abf9d1d0be46e0', '1974-04-25', 'West Katherineton', 'Male', 'Kindergarten', '', '', ''),
('4b821256001611ee', 'e210dfcd9f9347ab', '1927-10-29', '', '', 'Kindergarten', '', '', 'Single'),
('4b83420f001611ee', '993e5cc6edbb414f', '1982-10-26', 'Alvarezshire', 'Female', 'College', '', '', ''),
('4b846ae3001611ee', '866eda79d5a64d09', '1991-01-01', '', '', 'None', '', '', 'Separated'),
('4b85accb001611ee', '496a2f4b6dc44c96', '1941-11-18', 'South Annamouth', 'Female', 'College', '', '', ''),
('4b86ccfe001611ee', '51893f5a54cc4b63', '1924-01-31', '', '', 'Vocational', '', '', 'Single'),
('4b87eab1001611ee', '80bd0a09d1c24b0f', '2011-07-26', 'Marymouth', 'Male', 'Kindergarten', '', '', ''),
('4b89026e001611ee', '59fdb325845c4f58', '1991-02-18', '', '', 'Junior High School', '', '', 'Single'),
('4b8a0e95001611ee', '304067f213f445a1', '1997-09-14', 'Sandrafort', 'Female', 'None', '', '', ''),
('4b8b2239001611ee', 'eb05fdaed7fa411e', '1942-12-09', '', '', 'Vocational', '', '', 'Single'),
('4b8c4041001611ee', '30d59ace3a504bd4', '1998-10-04', 'Port Meghan', 'Male', 'Post Graduate', '', '', ''),
('4b8d5336001611ee', '0885ee15ae9c43a3', '1947-09-10', '', '', 'College', '', '', 'Separated'),
('4b8e63fa001611ee', 'f0d3111a877e447c', '1931-07-03', 'Martinton', 'Male', 'Vocational', '', '', ''),
('4b8f784c001611ee', '2b4481546fcc4523', '2008-06-11', '', '', 'Post Graduate', '', '', 'Married'),
('4b908d34001611ee', '12f8266aebaa47c4', '1963-11-09', 'Joshuamouth', 'Male', '', '', 'Iglesia ni Cristo', 'Widowed'),
('4b91c8ba001611ee', '60774456f0264bed', '1963-06-21', 'Combshaven', 'Male', '', '', 'Other', 'Separated'),
('4b930548001611ee', '9c19d032a3ea4b03', '1964-03-10', 'Randallview', 'Female', '', '', 'Buddhist', 'Divorced'),
('4b9443ca001611ee', '91608ba274db4543', '1964-01-15', 'South Kimberlymouth', 'Female', '', '', 'Iglesia ni Cristo', 'Single'),
('4b955995001611ee', '70560c65c0c64f33', '1964-02-19', 'Turnermouth', 'Male', '', '', 'Roman Catholic', 'Widowed'),
('4b966974001611ee', 'c487f44e2eed49e0', '1964-06-03', 'North Terristad', 'Male', '', '', 'Other', 'Separated'),
('4b97759d001611ee', '82c8ec8fabd943f5', '1964-04-18', 'Loveburgh', 'Male', '', '', 'Agnostic', 'Married'),
('4b9886fd001611ee', '1c0e6f0a2fb04da6', '1964-01-29', 'North Jennifer', 'Male', '', '', 'Roman Catholic', 'Widowed'),
('4b99ac28001611ee', '5dd5bb9d6a024ed9', '1963-11-19', 'Johnsonport', 'Male', '', '', 'Atheist', 'Separated'),
('4b9aca9f001611ee', '0bb6e387e76b4ee3', '1963-08-04', 'Kimberlyfort', 'Male', '', '', 'Muslim', 'Single'),
('4b9be8b7001611ee', '3bbf5be3e0244e8f', '1964-04-24', 'Christophertown', 'Male', '', '', 'Protestant', 'Widowed'),
('4b9d0ad3001611ee', '4d1983d459fe4076', '1964-03-29', 'Matthewland', 'Female', '', '', 'Roman Catholic', 'Divorced'),
('4b9e2ebd001611ee', 'aa20a932a13b4d9f', '1963-10-14', 'West Johnton', 'Female', '', '', 'Agnostic', 'Divorced'),
('4b9f5437001611ee', '5a9486f382684c63', '1963-07-19', 'North Mikaylaberg', 'Female', '', '', 'Seventh Day Adventist', 'Separated'),
('4ba0a714001611ee', 'd9060a93717e4b09', '1963-09-23', 'Griffinborough', 'Male', '', '', 'Born Again', 'Married'),
('4ba1e936001611ee', '294741cdec70458d', '1964-02-20', 'Markchester', 'Male', '', '', 'Atheist', 'Widowed'),
('4ba32369001611ee', '966cb7fb5e7d4b86', '1963-10-05', 'Grimestown', 'Female', '', '', 'Roman Catholic', 'Divorced'),
('4ba46d7c001611ee', 'f841926d1c9f4b1c', '1964-05-07', 'Brownmouth', 'Male', '', '', 'Agnostic', 'Widowed'),
('4ba5a940001611ee', 'a9ce3a8abb094e13', '1964-04-12', 'East Lisa', 'Female', '', '', 'Atheist', 'Single'),
('4ba6e096001611ee', 'dd30f66ec1c94417', '1963-07-23', 'East Kristin', 'Female', '', '', 'Born Again', 'Separated'),
('4ba83f89001611ee', 'ad672c0d0ced4878', '1964-01-31', 'Calhounton', 'Female', '', '', 'Iglesia ni Cristo', 'Widowed'),
('4ba97837001611ee', '56fd387b9b0e4511', '1963-11-30', 'Port Tracy', 'Female', '', '', 'Protestant', 'Separated'),
('4baab9d6001611ee', '0b26da385db84245', '1963-12-14', 'West Adamfort', 'Male', '', '', 'Jehovahs Witness', 'Single'),
('4babf3e2001611ee', 'ec69629c985144c5', '1964-01-19', 'East Kevin', 'Female', '', '', 'Jehovahs Witness', 'Single'),
('4bad2c90001611ee', '2596c651bcce405f', '1963-11-11', 'Lucasmouth', 'Female', '', '', 'Seventh Day Adventist', 'Single'),
('4bae607b001611ee', '318f99e8ff964c8e', '1963-12-25', 'Monicaborough', 'Male', '', '', 'Other', 'Single'),
('4bafd2ad001611ee', '2fe32b34ce3c4723', '1964-02-18', 'North Thomas', 'Female', '', '', 'Buddhist', 'Single'),
('4bb11227001611ee', '94d27c5df6b5462e', '1964-03-30', 'South Earlhaven', 'Female', '', '', 'Seventh Day Adventist', 'Single'),
('4bb253d5001611ee', 'e56627f3f39544a8', '1964-02-16', 'Erikfurt', 'Male', '', '', 'Born Again', 'Separated'),
('4bb392a0001611ee', '4e2c4797f0be497a', '1963-07-11', 'Marthaberg', 'Female', '', '', 'Jehovahs Witness', 'Single');

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
('4af9f5f8001611ee', '9973ca1bcf7245b5', 'Samuel Henson', '9924652452', 'Learning Disability', '', 'ACQUIRED', 'Cerebral Palsy', 'Injury', 'Permanent', 'Applicant', ''),
('4aff47f5001611ee', '4e7271364f2b4af2', 'Cynthia Griffith', '8765220550', 'Speech & Language Impairment', '', 'INBORN', 'Cerebral Palsy', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b03457a001611ee', '83227edb2ca3434c', 'Heidi Booker', '5613502873', 'Intellectual Disability', '', 'ACQUIRED', 'Down Syndrome', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b06821a001611ee', '6dfefda800ea467f', 'Jeremy Carter', '961890861', 'Cancer (RA11215)', '', 'ACQUIRED', 'ADHD', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('4b098338001611ee', '6ca1ee86e69a404f', 'William Hendrix', '528945750', 'Mental Disability', '', 'ACQUIRED', 'Down Syndrome', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b0c3a66001611ee', '0091d4d920cc47cb', 'Jeffrey Oliver', '3552220236', 'Speech & Language Impairment', '', 'INBORN', 'ADHD', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('4b0f1558001611ee', '4f18274da89f405b', 'Matthew Kidd', '6175340337', 'Physical Disability (Orthopedic)', '', 'ACQUIRED', 'ADHD', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b11d295001611ee', 'df56a95a94ad47ab', 'Sarah Robinson', '3839839356', 'Rare Disease (RA10747)', '', 'INBORN', 'Autism', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b14b00b001611ee', '0fb6743304d947e5', 'Angela Walsh', '5272653319', 'Cancer (RA11215)', '', 'ACQUIRED', 'Cerebral Palsy', 'Injury', 'Temporary', 'Applicant', ''),
('4b173b88001611ee', 'f30a8bebbcad4b59', 'Tara York DDS', '8721504971', 'Visual Disability', '', 'ACQUIRED', 'Down Syndrome', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('4b19b7fd001611ee', '7dac5e3d84934a9b', 'James Lowery', '6281409383', 'Cancer (RA11215)', '', 'INBORN', 'ADHD', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b1c3d32001611ee', '4cc747c22809407f', 'Ms. Lauren Thompson', '2181825811', 'Cancer (RA11215)', '', 'INBORN', 'Autism', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('4b1ee34f001611ee', '59a76ba2c3964040', 'Tyler Alvarado', '7827853138', 'Intellectual Disability', '', 'ACQUIRED', 'Cerebral Palsy', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('4b216b8d001611ee', '5286daca2a564db5', 'Andrew Carpenter', '8068865727', 'Psychosocial Disability', '', 'INBORN', 'Cerebral Palsy', 'Injury', 'Permanent', 'Applicant', ''),
('4b2427a7001611ee', '2bfd428763b44afe', 'Terry Porter', '4519199810', 'Deaf/Hard of Hearing', '', 'ACQUIRED', 'ADHD', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('4b26ed62001611ee', '6835f81faa434223', 'Tyler Bennett', '9903525759', 'Psychosocial Disability', '', 'ACQUIRED', 'Autism', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b298f43001611ee', '448fcbb0f01a43e4', 'Troy Avila', '3822723548', 'Physical Disability (Orthopedic)', '', 'ACQUIRED', 'Down Syndrome', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('4b2c24e3001611ee', 'db0091ed73b040a6', 'Zachary Reyes', '6858179972', 'Visual Disability', '', 'INBORN', 'ADHD', 'Injury', 'Permanent', 'Applicant', ''),
('4b2ebb18001611ee', '27ac878921df430f', 'Joseph James', '8403291259', 'Learning Disability', '', 'INBORN', 'Cerebral Palsy', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('4b315965001611ee', 'a31734d17ccb41f4', 'Matthew Shepherd', '4894610360', 'Speech & Language Impairment', '', 'ACQUIRED', 'Cerebral Palsy', 'Injury', 'Permanent', 'Applicant', ''),
('4b33e3f5001611ee', '8a3d7e0fbe464ed0', 'Jeffery Liu', '6422500530', 'Physical Disability (Orthopedic)', '', 'INBORN', 'Down Syndrome', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b367f12001611ee', 'b66d505ad9b44efe', 'Kathy Mathews', '9302010011', 'Cancer (RA11215)', '', 'ACQUIRED', 'ADHD', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('4b393bf9001611ee', 'ed2a30f051984885', 'Sarah Turner', '1808577194', 'Psychosocial Disability', '', 'ACQUIRED', 'ADHD', 'Cerebral Palsy', 'Temporary', 'Applicant', ''),
('4b3c1175001611ee', 'bc68e00992fd4b9e', 'Benjamin Graham', '620433641', 'Mental Disability', '', 'INBORN', 'Down Syndrome', 'Chronic Illness', 'Permanent', 'Applicant', ''),
('4b3ea9d0001611ee', '7f2a4038e8d44751', 'Chelsea Guerrero', '8568966594', 'Deaf/Hard of Hearing', '', 'ACQUIRED', 'Down Syndrome', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b414f09001611ee', '688ba9d9801f40c4', 'Dylan Vargas', '7522851272', 'Speech & Language Impairment', '', 'INBORN', 'Autism', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b43eeaf001611ee', '34981a6e4e274688', 'Mary Moore', '4410306970', 'Learning Disability', '', 'INBORN', 'Down Syndrome', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('4b468bc8001611ee', '1cf0e5b3db964405', 'Daniel Williams', '2435548883', 'Deaf/Hard of Hearing', '', 'ACQUIRED', 'Cerebral Palsy', 'Cerebral Palsy', 'Permanent', 'Applicant', ''),
('4b490497001611ee', '80eb76d4772c426f', 'Brent Clark', '7924347993', 'Intellectual Disability', '', 'INBORN', 'Cerebral Palsy', 'Chronic Illness', 'Temporary', 'Applicant', ''),
('4b4bad1c001611ee', '373137bf50d447bc', 'Daisy White', '59583426', 'Learning Disability', '', 'ACQUIRED', 'Down Syndrome', 'Injury', 'Temporary', 'Applicant', '');

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
('4afa8aec001611ee', '9973ca1bcf7245b5', '6658644232c84e2c', 'Father', '0000-00-00', '', '0.00'),
('4afb8623001611ee', '9973ca1bcf7245b5', '0b1cfc69068e4c69', 'Mother', '0000-00-00', '', '0.00'),
('4afc7df3001611ee', '9973ca1bcf7245b5', 'c87995d084a842bd', 'Sister', '0000-00-00', '2144179635', '0.00'),
('4b002a31001611ee', '4e7271364f2b4af2', 'fba4e0abbd7e4f68', 'Father', '0000-00-00', '', '0.00'),
('4b0109e0001611ee', '4e7271364f2b4af2', '3480611245424301', 'Mother', '0000-00-00', '', '0.00'),
('4b01964a001611ee', '4e7271364f2b4af2', '33d192ada5cf46b5', 'Father', '0000-00-00', '9622603860', '0.00'),
('4b03aae6001611ee', '83227edb2ca3434c', 'b35caa2443334c86', 'Father', '0000-00-00', '', '0.00'),
('4b040c8e001611ee', '83227edb2ca3434c', '1abdb420af9746a1', 'Mother', '0000-00-00', '', '0.00'),
('4b046a57001611ee', '83227edb2ca3434c', 'b158b36da7d64ef6', 'Mother', '0000-00-00', '9885324682', '0.00'),
('4b06f235001611ee', '6dfefda800ea467f', '7cf3a6a19b834729', 'Father', '0000-00-00', '', '0.00'),
('4b077d1c001611ee', '6dfefda800ea467f', '0c251c4161c142e9', 'Mother', '0000-00-00', '', '0.00'),
('4b07f831001611ee', '6dfefda800ea467f', 'af49e37be9c54145', 'Father', '0000-00-00', '001-489-820-9952', '0.00'),
('4b09ee11001611ee', '6ca1ee86e69a404f', 'b9a69948d24047e5', 'Father', '0000-00-00', '', '0.00'),
('4b0a5989001611ee', '6ca1ee86e69a404f', '61ddf55f55fe4c02', 'Mother', '0000-00-00', '', '0.00'),
('4b0ac301001611ee', '6ca1ee86e69a404f', 'f9e0565865a1493e', 'Father', '0000-00-00', '(281)561-4876x05', '0.00'),
('4b0caa0f001611ee', '0091d4d920cc47cb', '1c05a83f794c4264', 'Father', '0000-00-00', '', '0.00'),
('4b0d1754001611ee', '0091d4d920cc47cb', '0eb9c1c54f58412f', 'Mother', '0000-00-00', '', '0.00'),
('4b0d8d44001611ee', '0091d4d920cc47cb', 'e56fd50ed1aa45d2', 'Grandfather', '0000-00-00', '+1-256-826-2957x', '0.00'),
('4b0f7bd1001611ee', '4f18274da89f405b', '76f752b5fda0426b', 'Father', '0000-00-00', '', '0.00'),
('4b0fecc1001611ee', '4f18274da89f405b', '4d7d66d520b64a8d', 'Mother', '0000-00-00', '', '0.00'),
('4b10595d001611ee', '4f18274da89f405b', 'c93c62a960784215', 'Father', '0000-00-00', '5995761786', '0.00'),
('4b124444001611ee', 'df56a95a94ad47ab', '7a8ceb86883f4cd4', 'Father', '0000-00-00', '', '0.00'),
('4b12b586001611ee', 'df56a95a94ad47ab', '88684ad91d604b1e', 'Mother', '0000-00-00', '', '0.00'),
('4b1319bd001611ee', 'df56a95a94ad47ab', 'fd25831765c24ac5', 'Brother', '0000-00-00', '+1-820-873-7253x', '0.00'),
('4b151d44001611ee', '0fb6743304d947e5', '00d2e40a11944dda', 'Father', '0000-00-00', '', '0.00'),
('4b157afb001611ee', '0fb6743304d947e5', '24b935fb75494029', 'Mother', '0000-00-00', '', '0.00'),
('4b15e117001611ee', '0fb6743304d947e5', '4bcde661674c436c', 'Sister', '0000-00-00', '036-515-5423x929', '0.00'),
('4b179cb0001611ee', 'f30a8bebbcad4b59', 'e61d1d316edf4800', 'Father', '0000-00-00', '', '0.00'),
('4b17fe16001611ee', 'f30a8bebbcad4b59', 'a2b5b077cbd24bbc', 'Mother', '0000-00-00', '', '0.00'),
('4b186496001611ee', 'f30a8bebbcad4b59', 'd4a0786ee1bc4370', 'Mother', '0000-00-00', '(858)940-6633', '0.00'),
('4b1a1cb3001611ee', '7dac5e3d84934a9b', 'ce4666e13a124387', 'Father', '0000-00-00', '', '0.00'),
('4b1a7c68001611ee', '7dac5e3d84934a9b', 'b1c1d479c0fa41b2', 'Mother', '0000-00-00', '', '0.00'),
('4b1adeef001611ee', '7dac5e3d84934a9b', '1814437569dd4ae9', 'Aunt', '0000-00-00', '+1-267-713-1441x', '0.00'),
('4b1cbf63001611ee', '4cc747c22809407f', 'fbb2cfddfa1c4507', 'Father', '0000-00-00', '', '0.00'),
('4b1d224f001611ee', '4cc747c22809407f', 'd566d0cccc204505', 'Mother', '0000-00-00', '', '0.00'),
('4b1d801c001611ee', '4cc747c22809407f', 'c5e7767dac92437e', 'Brother', '0000-00-00', '(695)384-0564x27', '0.00'),
('4b1f47e0001611ee', '59a76ba2c3964040', '47ae93adea834a14', 'Father', '0000-00-00', '', '0.00'),
('4b1faa0e001611ee', '59a76ba2c3964040', '48e190adc2e8489e', 'Mother', '0000-00-00', '', '0.00'),
('4b200b05001611ee', '59a76ba2c3964040', '3769ff27a6d24798', 'Grandfather', '0000-00-00', '001-743-504-1268', '0.00'),
('4b21d4b8001611ee', '5286daca2a564db5', '9db2fe52f5e34533', 'Father', '0000-00-00', '', '0.00'),
('4b2244b3001611ee', '5286daca2a564db5', 'bd412ca5f3dc4880', 'Mother', '0000-00-00', '', '0.00'),
('4b22a963001611ee', '5286daca2a564db5', 'a798e2e1cbce44da', 'Uncle', '0000-00-00', '+1-287-344-2480x', '0.00'),
('4b248b44001611ee', '2bfd428763b44afe', '88a73b835b8f4aa3', 'Father', '0000-00-00', '', '0.00'),
('4b24f7c8001611ee', '2bfd428763b44afe', '0dffec9fc92b4e4d', 'Mother', '0000-00-00', '', '0.00'),
('4b256725001611ee', '2bfd428763b44afe', '2e1facb350d64f8c', 'Grandfather', '0000-00-00', '569.685.3079', '0.00'),
('4b275719001611ee', '6835f81faa434223', '345c2b3325b0488b', 'Father', '0000-00-00', '', '0.00'),
('4b27bc8e001611ee', '6835f81faa434223', 'c1e32a964c134e65', 'Mother', '0000-00-00', '', '0.00'),
('4b281ccc001611ee', '6835f81faa434223', 'e092dff67b1f45bb', 'Sister', '0000-00-00', '+1-824-823-8359x', '0.00'),
('4b29fa1a001611ee', '448fcbb0f01a43e4', 'db1b241648004809', 'Father', '0000-00-00', '', '0.00'),
('4b2a6222001611ee', '448fcbb0f01a43e4', '83088d57fc3146b7', 'Mother', '0000-00-00', '', '0.00'),
('4b2ac147001611ee', '448fcbb0f01a43e4', '2db31789aee84cad', 'Father', '0000-00-00', '(244)342-9051x10', '0.00'),
('4b2c898e001611ee', 'db0091ed73b040a6', '9ba43f6c40eb441d', 'Father', '0000-00-00', '', '0.00'),
('4b2cf175001611ee', 'db0091ed73b040a6', '0a8bda73a05b44da', 'Mother', '0000-00-00', '', '0.00'),
('4b2d53a5001611ee', 'db0091ed73b040a6', '58da2f6220b84518', 'Aunt', '0000-00-00', '(517)927-9316x77', '0.00'),
('4b2f1ab7001611ee', '27ac878921df430f', 'bebc74f9acdd4c14', 'Father', '0000-00-00', '', '0.00'),
('4b2f7c35001611ee', '27ac878921df430f', '4d38e37195e746d2', 'Mother', '0000-00-00', '', '0.00'),
('4b2fec93001611ee', '27ac878921df430f', '16c9c4b1b2764d12', 'Brother', '0000-00-00', '+1-593-533-4851x', '0.00'),
('4b31b976001611ee', 'a31734d17ccb41f4', 'e0d540d2d00e47f1', 'Father', '0000-00-00', '', '0.00'),
('4b321995001611ee', 'a31734d17ccb41f4', '6077d7b791a241bb', 'Mother', '0000-00-00', '', '0.00'),
('4b327a60001611ee', 'a31734d17ccb41f4', 'cccf83cd06b84ea2', 'Brother', '0000-00-00', '262-549-2215', '0.00'),
('4b344646001611ee', '8a3d7e0fbe464ed0', '1fc3d286bc7d4d2a', 'Father', '0000-00-00', '', '0.00'),
('4b34b836001611ee', '8a3d7e0fbe464ed0', 'c25ecb5c7b0e48f3', 'Mother', '0000-00-00', '', '0.00'),
('4b351d76001611ee', '8a3d7e0fbe464ed0', '54c907fe834e4ccf', 'Aunt', '0000-00-00', '001-557-291-8958', '0.00'),
('4b36e0c6001611ee', 'b66d505ad9b44efe', 'da12853cf8534481', 'Father', '0000-00-00', '', '0.00'),
('4b3753e8001611ee', 'b66d505ad9b44efe', '6f2ae837cf3743fe', 'Mother', '0000-00-00', '', '0.00'),
('4b37bc9b001611ee', 'b66d505ad9b44efe', '21f28522bb0f4c51', 'Mother', '0000-00-00', '761-262-1602x220', '0.00'),
('4b39a760001611ee', 'ed2a30f051984885', '2179c26c44914174', 'Father', '0000-00-00', '', '0.00'),
('4b3a171c001611ee', 'ed2a30f051984885', '55abcc62dff34240', 'Mother', '0000-00-00', '', '0.00'),
('4b3a79a7001611ee', 'ed2a30f051984885', '4ad3d3dbe02b429d', 'Aunt', '0000-00-00', '6733015774', '0.00'),
('4b3c789a001611ee', 'bc68e00992fd4b9e', '51c00f604fcd4fef', 'Father', '0000-00-00', '', '0.00'),
('4b3cd9c2001611ee', 'bc68e00992fd4b9e', '59b2c89926a64b82', 'Mother', '0000-00-00', '', '0.00'),
('4b3d472c001611ee', 'bc68e00992fd4b9e', 'a115ac329f0c4655', 'Aunt', '0000-00-00', '(356)053-5038x08', '0.00'),
('4b3f17d4001611ee', '7f2a4038e8d44751', '30dc5230cb41402f', 'Father', '0000-00-00', '', '0.00'),
('4b3f823a001611ee', '7f2a4038e8d44751', 'e038b559ed7d437d', 'Mother', '0000-00-00', '', '0.00'),
('4b3fe58f001611ee', '7f2a4038e8d44751', '5cfe2c91f1864a75', 'Grandfather', '0000-00-00', '001-005-388-9176', '0.00'),
('4b41b248001611ee', '688ba9d9801f40c4', 'c6955447791048ec', 'Father', '0000-00-00', '', '0.00'),
('4b4216d4001611ee', '688ba9d9801f40c4', '36e0acde0e4d4d79', 'Mother', '0000-00-00', '', '0.00'),
('4b427ea0001611ee', '688ba9d9801f40c4', 'd3ea28891ce94871', 'Aunt', '0000-00-00', '+1-924-476-1038', '0.00'),
('4b445ab7001611ee', '34981a6e4e274688', 'e9a963ae87c044f7', 'Father', '0000-00-00', '', '0.00'),
('4b44be2c001611ee', '34981a6e4e274688', '029fedc1a215464c', 'Mother', '0000-00-00', '', '0.00'),
('4b4524b2001611ee', '34981a6e4e274688', 'df6f25b500964cf2', 'Brother', '0000-00-00', '001-657-845-6822', '0.00'),
('4b46f236001611ee', '1cf0e5b3db964405', '7530ed6a1a764776', 'Father', '0000-00-00', '', '0.00'),
('4b47510c001611ee', '1cf0e5b3db964405', 'a1a3e687a72543ec', 'Mother', '0000-00-00', '', '0.00'),
('4b47af46001611ee', '1cf0e5b3db964405', '1bdc4854cdca49c9', 'Sister', '0000-00-00', '554-333-3273x842', '0.00'),
('4b496763001611ee', '80eb76d4772c426f', '9c56d77eb5584eeb', 'Father', '0000-00-00', '', '0.00'),
('4b49c9dc001611ee', '80eb76d4772c426f', '5caf738108f6415f', 'Mother', '0000-00-00', '', '0.00'),
('4b4a3e7e001611ee', '80eb76d4772c426f', 'b31805a8ac854e63', 'Mother', '0000-00-00', '001-082-827-3540', '0.00'),
('4b4c137d001611ee', '373137bf50d447bc', '6c2435cda7664e5b', 'Father', '0000-00-00', '', '0.00'),
('4b4c7b7f001611ee', '373137bf50d447bc', '69b5e0855e6a459e', 'Mother', '0000-00-00', '', '0.00'),
('4b4cd1ff001611ee', '373137bf50d447bc', '474fe2a985c64839', 'Grandfather', '0000-00-00', '(710)177-7785', '0.00'),
('4b4e97d4001611ee', '657a1185751b4190', '924ca28f1b604b2a', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('4b50a1a8001611ee', '7c7b130574774616', '266a05ede8ec46c9', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('4b52c03e001611ee', '503881a112c84229', '208dc91b23684265', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('4b54b855001611ee', 'f8c1452c91da4498', '31ffa2762d13464d', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b5678ad001611ee', 'cf6257a42d444dd8', '3be368c53e764ac5', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b587a9d001611ee', 'd94bdd4b65a54a76', 'c157c19e091b4d87', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b5a7253001611ee', 'bc42a991c85146c4', '13e810384082463b', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('4b5c8de3001611ee', '02bca7efa4a541a7', 'fcc093bb80c64673', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('4b5e9459001611ee', 'f70dc90d3c334d8f', '38da0853fcbc46a3', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b609e8c001611ee', '8d44ba3fbb544c51', 'b16ddb8d22fb4d10', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('4b62c4e0001611ee', '7878e61b73804eba', '1b6f8df207c3470a', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b64bc59001611ee', '43c5e4ede71e45be', 'f2972be5edc94a1f', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('4b66b7c7001611ee', 'c0fef98785514a2a', '86b1487a3121437e', 'Son/Daugther', '0000-00-00', '', '50000.00'),
('4b6890cd001611ee', '1ac5c8e06d53467e', '5019c26649af4c32', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('4b6a815f001611ee', 'e3fd766d6aa94078', '1c79bf71b617464e', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('4b6f3773001611ee', '85e67dcc5ee54971', '2557ad844cb64e4f', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('4b71991d001611ee', 'ab59371b97a14104', '36eade49a43c457c', 'Son/Daugther', '0000-00-00', '', '20000.00'),
('4b73a7f5001611ee', 'e2b412abece5447f', 'e73435951a104227', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b75d2b0001611ee', '832f480563c848a0', '79cf413bdc484385', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('4b785cf5001611ee', '950309a821704d7a', '257306af529b450a', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b7b06b4001611ee', 'e8790c994dae49af', 'ea252b68e5bb4def', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b7d3284001611ee', '27aebdef5ef54f3e', 'd205afbfa1274e96', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('4b7f832a001611ee', '803d125ff8ce4fcb', '2d199578dec042dd', 'Son/Daugther', '0000-00-00', '', '10000.00'),
('4b81d580001611ee', '44abf9d1d0be46e0', 'e210dfcd9f9347ab', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b843b80001611ee', '993e5cc6edbb414f', '866eda79d5a64d09', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('4b869980001611ee', '496a2f4b6dc44c96', '51893f5a54cc4b63', 'Son/Daugther', '0000-00-00', '', '40000.00'),
('4b88d610001611ee', '80bd0a09d1c24b0f', '59fdb325845c4f58', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b8ae664001611ee', '304067f213f445a1', 'eb05fdaed7fa411e', 'Son/Daugther', '0000-00-00', '', '60000.00'),
('4b8d1af4001611ee', '30d59ace3a504bd4', '0885ee15ae9c43a3', 'Son/Daugther', '0000-00-00', '', '30000.00'),
('4b8f46af001611ee', 'f0d3111a877e447c', '2b4481546fcc4523', 'Son/Daugther', '0000-00-00', '', '10000.00');

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
('4b4e2ec4001611ee', '657a1185751b4190', 'Spouse of OFW', '', ''),
('4b503722001611ee', '7c7b130574774616', 'Foster Parent of DSWD', '', ''),
('4b525775001611ee', '503881a112c84229', 'Disappearance of Parents', '', ''),
('4b545e40001611ee', 'f8c1452c91da4498', 'Death of Spouse', '', ''),
('4b562216001611ee', 'cf6257a42d444dd8', 'Unmarried/unwed', '', ''),
('4b58109c001611ee', 'd94bdd4b65a54a76', 'Death of Spouse', '', ''),
('4b5a0aba001611ee', 'bc42a991c85146c4', 'Unmarried/unwed', '', ''),
('4b5c1a62001611ee', '02bca7efa4a541a7', 'Pregnant Women', '', ''),
('4b5e2f56001611ee', 'f70dc90d3c334d8f', 'Pregnant Women', '', ''),
('4b603bc7001611ee', '8d44ba3fbb544c51', 'Unmarried/unwed', '', ''),
('4b624dbb001611ee', '7878e61b73804eba', 'Abandonment', '', ''),
('4b6462eb001611ee', '43c5e4ede71e45be', 'Annulment/Legal Separation', '', ''),
('4b665ba5001611ee', 'c0fef98785514a2a', 'Annulment/Legal Separation', '', ''),
('4b683033001611ee', '1ac5c8e06d53467e', 'Imprisonment of Spouse/Detention', '', ''),
('4b6a1417001611ee', 'e3fd766d6aa94078', 'Imprisonment of Spouse/Detention', '', ''),
('4b6ea7de001611ee', '85e67dcc5ee54971', 'Physical and Mental Incapacity', '', ''),
('4b712894001611ee', 'ab59371b97a14104', 'Disappearance of Parents', '', ''),
('4b73422e001611ee', 'e2b412abece5447f', 'Spouse of OFW', '', ''),
('4b756723001611ee', '832f480563c848a0', 'Pregnant Women', '', ''),
('4b77d84f001611ee', '950309a821704d7a', 'Annulment/Legal Separation', '', ''),
('4b7a8a9b001611ee', 'e8790c994dae49af', 'Physical and Mental Incapacity', '', ''),
('4b7cc04c001611ee', '27aebdef5ef54f3e', 'Abandonment', '', ''),
('4b7efb13001611ee', '803d125ff8ce4fcb', 'Imprisonment of Spouse/Detention', '', ''),
('4b815aff001611ee', '44abf9d1d0be46e0', 'Spouse of OFW', '', ''),
('4b83c1b6001611ee', '993e5cc6edbb414f', 'Spouse of OFW', '', ''),
('4b862bf4001611ee', '496a2f4b6dc44c96', 'Annulment/Legal Separation', '', ''),
('4b88584a001611ee', '80bd0a09d1c24b0f', 'Death of Spouse', '', ''),
('4b8a75fa001611ee', '304067f213f445a1', 'Pregnant Women', '', ''),
('4b8caeca001611ee', '30d59ace3a504bd4', 'Imprisonment of Spouse/Detention', '', ''),
('4b8ed252001611ee', 'f0d3111a877e447c', 'Spouse of OFW', '', '');

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
('b3e579f7002511ee', 'ROMEO JR', 'BARDILLON', 'All', 'romsky.bardillon@gmail.com', '$2y$10$kqNJv6QJJTKMwP34yLBn7u7C8DTaxfDRUCG8GcvCY.eLAZTe6C1D2', 'Super Administrator', 0, 1, 0, '2023-06-01'),
('d8ff181e002511ee', 'FIRST NAME', 'LAST NAME', 'All', 'yegiy78063@rockdian.com', '$2y$10$J1nZjRyVgGDOLOulPnWHruwM8MPzKvZCY2UDYxddW8.WBEeggz6c.', 'Main Administrator', 0, 1, 0, '2023-06-01');

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

--
-- Constraints for table `relatives`
--
ALTER TABLE `relatives`
  ADD CONSTRAINT `FK_PERSON_RELATIVE_ID` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`),
  ADD CONSTRAINT `FK_RELATIVE_PERSON_ID` FOREIGN KEY (`RELATIVE_PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `solo_parent_data`
--
ALTER TABLE `solo_parent_data`
  ADD CONSTRAINT `FK_PERSON_SOLO_PARENT_DATA` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `uploaded_documents`
--
ALTER TABLE `uploaded_documents`
  ADD CONSTRAINT `FK_PERSON_UPLOADED_DOCUMENT` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
