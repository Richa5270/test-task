-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 06:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oitodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `tconst` varchar(50) NOT NULL,
  `titleType` varchar(100) NOT NULL,
  `primaryTitle` varchar(100) NOT NULL,
  `runtimeMinutes` int(11) NOT NULL,
  `genres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `tconst`, `titleType`, `primaryTitle`, `runtimeMinutes`, `genres`) VALUES
(1, 'tt0000001', 'short', 'Carmencita', 16, 'Documentary'),
(2, 'tt0000002', 'movie', 'Le clown et ses chiens', 35, 'Animation'),
(3, 'tt0000003', 'short', 'Pauvre Pierrot', 34, 'Animation'),
(4, 'tt0000004', 'short', 'Un bon bock', 42, 'Animation'),
(5, 'tt0000005', 'movie', 'Blacksmith Scene', 46, 'Comedy'),
(6, 'tt0000006', 'short', 'Chinese Opium Den', 1, 'Short'),
(7, 'tt0000007', 'short', 'Corbett and Courtney Before the Kinetograph', 1, 'Sport'),
(8, 'tt0000008', 'movie', 'Edison Kinetoscopic Record of a Sneeze', 16, 'Documentary'),
(9, 'tt0000009', 'movie', 'Miss Jerry', 45, 'Romance'),
(10, 'tt0000010', 'short', 'Leaving the Factory', 1, 'Action'),
(11, 'tt0000011', 'movie', 'Akrobatisches Potpourri', 16, 'Documentary'),
(12, 'tt0000012', 'movie', 'The Arrival of a Train', 1, 'Action'),
(13, 'tt0000013', 'movie', 'The Photographical Congress Arrives in Lyon', 16, 'Documentary'),
(14, 'tt0000014', 'short', 'The Waterer Watered', 46, 'Comedy'),
(15, 'tt0000015', 'movie', 'Autour dune cabine', 32, 'Animation'),
(16, 'tt0000016', 'short', 'Boat Leaving the Port', 1, 'Action'),
(17, 'tt0000017', 'movie', 'Italienischer Bauerntanz', 1, 'Action'),
(18, 'tt0000018', 'short', 'Das boxende Känguruh', 1, 'Short'),
(19, 'tt0000019', 'short', 'The Clown Barber', 57, 'Comedy'),
(20, 'tt0000020', 'short', 'The Derby 1895', 16, 'Documentary'),
(22, 'tt0000022', 'short', 'Blacksmith Scene', 16, 'Documentary'),
(23, 'tt0000023', 'movie', 'The Sea', 16, 'Documentary'),
(24, 'tt0000024', 'short', 'Opening of the Kiel Canal', 34, 'News'),
(25, 'tt0000025', 'short', 'The Oxford and Cambridge University Boat Race', 415, 'News'),
(26, 'tt0000026', 'short', 'The Messers. Lumière at Cards', 16, 'Documentary'),
(27, 'tt0000027', 'short', 'Cordeliers Square in Lyon', 1, 'Action'),
(28, 'tt0000028', 'short', 'Fishing for Goldfish', 1, 'Action'),
(29, 'tt0000029', 'movie', 'Babys Meal', 16, 'Documentary'),
(30, 'tt0000030', 'short', 'Rough Sea at Dover', 16, 'Documentary'),
(31, 'tt0000031', 'short', 'Jumping the Blanket', 16, 'Documentary'),
(32, 'tt0000032', 'movie', 'Die Serpentintänzerin', 1, 'Short'),
(33, 'tt0000033', 'short', 'Horse Trick Riders', 16, 'Documentary'),
(34, 'tt0000034', 'short', 'Arrivée dun train gare de Vincennes', 16, 'Documentary'),
(35, 'tt0000035', 'short', 'Watering the Flowers', 46, 'Comedy'),
(36, 'tt0000036', 'movie', 'Awakening of Rip', 0, 'Drama'),
(37, 'tt0000037', 'short', 'Sea Bathing', 1, 'Short'),
(38, 'tt0000038', 'movie', 'The Ball Game', 81, 'Documentary'),
(39, 'tt0000039', 'movie', 'Barnet Horse Fair', 415, 'Short'),
(40, 'tt0000040', 'short', 'Barque sortant du port de Trouville', 93, 'Documentary'),
(41, 'tt0000041', 'movie', 'Bataille de neige', 111, 'Comedy'),
(42, 'tt0000042', 'short', 'Bateau-mouche sur la Seine', 117, 'Documentary'),
(43, 'tt0000043', 'short', 'Batteuse à vapeur', 100, 'Documentary'),
(44, 'tt0000044', 'short', 'Le bivouac', 1, 'Short'),
(45, 'tt0000045', 'movie', 'Les blanchisseuses', 458, 'Short'),
(46, 'tt0000046', 'short', 'Bois de Boulogne', 165, 'Comedy'),
(47, 'tt0000047', 'movie', 'Boulevard des Italiens', 459, 'Documentary'),
(48, 'tt0000048', 'short', 'The Boxing Kangaroo', 555, 'Short'),
(49, 'tt0000049', 'movie', 'Glove Contest', 695, 'Short'),
(50, 'tt0000050', 'short', 'Bébé et fillettes', 165, 'Comedy'),
(51, 'tt0000051', 'movie', 'The Bohemian Encampment', 669, 'Documentary'),
(52, 'tt0000052', 'short', 'Carga de rurales', 267, 'Comedy'),
(53, 'tt0000053', 'movie', 'A Chegada do Comboio Inaugural à Estação Central do Porto', 57, 'Documentary'),
(54, 'tt0000054', 'movie', 'A Merry-Go-Round', 65, 'Short'),
(55, 'tt0000055', 'movie', 'Le chiffonnier', 325, 'Short'),
(56, 'tt0000056', 'short', 'Uma Corrida de Touros no Campo Pequeno', 415, 'Short'),
(57, 'tt0000057', 'movie', 'Cortège de tzar allant à Versailles', 9666, 'Comedy'),
(58, 'tt0000058', 'short', 'Cortège de tzar au Bois de Boulogne', 4790, 'Comedy'),
(59, 'tt0000059', 'movie', 'Coronation of a Village Maiden', 456, 'Short'),
(60, 'tt0000060', 'movie', 'Dancing Darkies', 78, 'Horror'),
(61, 'tt0000061', 'movie', 'Dancing Girls', 445, 'Short'),
(62, 'tt0000062', 'movie', 'Danse serpentine', 23, 'Short'),
(63, 'tt0000063', 'short', 'Dessinateur express', 456, 'Short'),
(64, 'tt0000064', 'short', 'Dessinateur: Chamberlain', 455, 'Horror'),
(65, 'tt0000065', 'short', 'Dessinateur: Reine Victoria', 23, 'Short'),
(66, 'tt0000066', 'movie', 'Dessinateur: Von Bismark', 12, 'Short'),
(67, 'tt0000067', 'movie', 'Conjurer Making Ten Hats in Sixty Seconds', 12, 'Fantasy'),
(68, 'tt0000068', 'movie', 'Unloading the Boat', 45, 'Horror'),
(69, 'tt0000069', 'short', 'Post No Bills', 1, 'Short'),
(70, 'tt0000070', 'movie', 'Demolition of a Wall', 16, 'Documentary'),
(71, 'tt0000071', 'short', 'Automobiles Starting a Race', 52, 'Sport'),
(72, 'tt0000072', 'movie', 'Officers of French Army Leaving Service', 41, 'Short'),
(73, 'tt0000073', 'movie', 'Effets de mer sur les rochers', 100, 'Documentary'),
(74, 'tt0000074', 'short', 'Enfants jouant sur la plage', 475, 'Horror'),
(75, 'tt0000075', 'movie', 'The Conjuring of a Woman at the House of Robert Houdin', 122, 'Horror'),
(76, 'tt0000076', 'short', 'Exit of Rip and the Dwarf', 1, 'Drama'),
(77, 'tt0000077', 'movie', 'indien', 457, 'Short'),
(78, 'tt0000078', 'short', 'Feira de Gado na Corujeira', 16, 'Documentary'),
(79, 'tt0000079', 'movie', 'La gare Saint-Lazare', 138, 'Documentary'),
(80, 'tt0000080', 'short', 'Grandes manoeuvres', 65, 'Family'),
(81, 'tt0000081', 'movie', 'Towing a Boat on the River', 100, 'Family'),
(82, 'tt0000082', 'short', 'A Hard Wash', 90, 'Comedy'),
(83, 'tt0000083', 'short', 'Les indiscrets', 121, 'Short'),
(84, 'tt0000084', 'short', 'Les ivrognes', 3, 'Short'),
(85, 'tt0000085', 'movie', 'Gardener Burning Weeds', 125, 'Short'),
(86, 'tt0000086', 'movie', 'Family', 100, 'Family'),
(87, 'tt0000087', 'short', 'Life ', 490, 'Documentary'),
(88, 'tt0000088', 'short', 'Market Day', 111, 'Family'),
(89, 'tt0000089', 'movie', 'Leaving Jerusalem by Railway', 16, 'Documentary'),
(90, 'tt0000090', 'short', 'Libération des territoriaux', 874, 'Documentary'),
(91, 'tt0000091', 'short', 'The House of the Devil', 3, 'Horror'),
(92, 'tt0000092', 'short', 'Marée montante sur Brise-Larmes', 667, 'Documentary'),
(93, 'tt0000093', 'movie', 'Melbourne', 668, 'Documentary'),
(94, 'tt0000094', 'short', 'Miss de Vere', 22, 'Short'),
(95, 'tt0000095', 'movie', 'The Mysterious Paper', 88, 'Short'),
(96, 'tt0000096', 'short', 'Place Saint-Augustin', 502, 'Documentary'),
(97, 'tt0000097', 'movie', 'Picasso', 980, 'Documentary'),
(98, 'tt0000098', 'short', 'alice In Wonderland', 222, 'Fantasy'),
(99, 'tt0000099', 'short', 'Pele', 570, 'Documentary'),
(100, 'tt0000100', 'movie', 'Ronaldo', 145, 'Fantasy'),
(103, 'tt0000101', 'titleType', 'primaryTitle', 525, 'genres');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `tconst` varchar(50) NOT NULL,
  `averageRating` float NOT NULL,
  `numVotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `tconst`, `averageRating`, `numVotes`) VALUES
(1, 'tt0000001', 5.7, 1911),
(2, 'tt0000002', 5.8, 257),
(3, 'tt0000003', 6.5, 1716),
(4, 'tt0000004', 5.6, 169),
(5, 'tt0000005', 6.2, 2532),
(6, 'tt0000006', 5.1, 173),
(7, 'tt0000007', 5.4, 790),
(8, 'tt0000008', 5.4, 2054),
(9, 'tt0000009', 5.2, 199),
(10, 'tt0000010', 6.9, 6929),
(11, 'tt0000011', 5.3, 355),
(12, 'tt0000012', 7.4, 11869),
(13, 'tt0000013', 5.7, 1829),
(14, 'tt0000014', 7.1, 5322),
(15, 'tt0000015', 6.2, 1020),
(16, 'tt0000016', 5.9, 1440),
(17, 'tt0000017', 4.6, 314),
(18, 'tt0000018', 5.3, 577),
(19, 'tt0000019', 5, 31),
(20, 'tt0000020', 4.8, 345),
(22, 'tt0000022', 5.1, 1061),
(23, 'tt0000023', 5.7, 1387),
(24, 'tt0000024', 4.2, 99),
(25, 'tt0000025', 4, 45),
(26, 'tt0000026', 5.6, 1496),
(27, 'tt0000027', 5.6, 1118),
(28, 'tt0000028', 5.1, 1036),
(29, 'tt0000029', 5.9, 3266),
(30, 'tt0000030', 5.2, 820),
(31, 'tt0000031', 5.5, 975),
(32, 'tt0000032', 5, 408),
(33, 'tt0000033', 5.5, 992),
(34, 'tt0000034', 5, 190),
(35, 'tt0000035', 5.3, 78),
(36, 'tt0000036', 4.4, 594),
(37, 'tt0000037', 4.2, 66),
(38, 'tt0000038', 4.1, 197),
(39, 'tt0000039', 3.1, 30),
(40, 'tt0000040', 4.2, 64),
(41, 'tt0000041', 6.8, 1772),
(42, 'tt0000042', 3.8, 37),
(43, 'tt0000043', 3.6, 32),
(44, 'tt0000044', 3.7, 45),
(45, 'tt0000045', 4.1, 33),
(46, 'tt0000046', 3.6, 34),
(47, 'tt0000047', 3.1, 34),
(48, 'tt0000048', 4.8, 191),
(49, 'tt0000049', 4.8, 49),
(50, 'tt0000050', 3.7, 34),
(51, 'tt0000051', 3.2, 35),
(52, 'tt0000052', 4.2, 97),
(53, 'tt0000053', 2.7, 18),
(54, 'tt0000054', 4.5, 34),
(55, 'tt0000055', 3.2, 30),
(56, 'tt0000056', 2.5, 22),
(57, 'tt0000057', 4.5, 34),
(58, 'tt0000058', 4.3, 33),
(59, 'tt0000059', 3, 27),
(60, 'tt0000060', 7.4, 87),
(61, 'tt0000061', 4.1, 24),
(62, 'tt0000062', 6.3, 193),
(63, 'tt0000063', 2.9, 28),
(64, 'tt0000064', 2.7, 29),
(65, 'tt0000065', 2.9, 29),
(66, 'tt0000066', 2.8, 29),
(67, 'tt0000067', 5.6, 62),
(68, 'tt0000068', 3.3, 31),
(69, 'tt0000069', 4.9, 441),
(70, 'tt0000070', 6.4, 2574),
(71, 'tt0000071', 3.5, 29),
(72, 'tt0000072', 3.2, 27),
(73, 'tt0000073', 2.9, 30),
(74, 'tt0000074', 4.1, 31),
(75, 'tt0000075', 6.3, 1866),
(76, 'tt0000076', 4.4, 523),
(77, 'tt0000077', 4.1, 35),
(78, 'tt0000078', 3.6, 76),
(79, 'tt0000079', 4.4, 35),
(80, 'tt0000080', 3.5, 31),
(81, 'tt0000081', 3.6, 32),
(82, 'tt0000082', 4.5, 49),
(83, 'tt0000083', 4.2, 32),
(84, 'tt0000084', 4, 30),
(85, 'tt0000085', 4.2, 33),
(86, 'tt0000086', 3.7, 33),
(87, 'tt0000087', 4.3, 37),
(88, 'tt0000088', 3.7, 32),
(89, 'tt0000089', 6.2, 977),
(90, 'tt0000090', 3.5, 31),
(91, 'tt0000091', 6.7, 3479),
(92, 'tt0000092', 4, 29),
(93, 'tt0000093', 4.7, 93),
(94, 'tt0000094', 4.5, 32),
(95, 'tt0000095', 4.3, 34),
(96, 'tt0000096', 3.8, 29),
(97, 'tt0000097', 4.5, 33),
(98, 'tt0000098', 4.6, 36),
(99, 'tt0000099', 4.1, 32),
(100, 'tt0000100', 4.6, 53),
(101, 'tt0000101', 5.7, 1268);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
