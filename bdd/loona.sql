-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2023 at 03:13 PM
-- Server version: 8.0.34-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loona`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `subunitId` int DEFAULT NULL,
  `memberId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `title`, `date`, `picture`, `subunitId`, `memberId`) VALUES
(1, 'Heejin', '2016-10-04', '1_1.jpg', NULL, 1),
(2, 'Hyunjin', '2016-11-16', '2.jpg', NULL, 2),
(3, 'Haseul', '2016-12-08', '3.jpg', NULL, 3),
(4, 'Yeojin', '2017-01-15', '4.jpg', NULL, 4),
(5, 'Vivi', '2017-04-16', '5.jpeg', NULL, 5),
(6, 'Kim Lip', '2017-05-25', '6.jpeg', NULL, 6),
(7, 'Jinsoul', '2017-06-25', '7.jpg', NULL, 7),
(8, 'Cheorry', '2017-07-27', '8.jpg', NULL, 8),
(9, 'Yves', '2017-11-27', '9.jpeg', NULL, 9),
(10, 'Chuu', '2017-12-27', '10.jpg', NULL, 10),
(11, 'Gowon', '2018-01-29', '11.jpg', NULL, 11),
(12, 'Hyeju', '2018-04-17', '12.jpg', NULL, 12),
(13, '[Flip That]', '2022-06-21', 'flip_that.jpeg', 1, NULL),
(14, '[&]', '2021-06-28', 'ptt.jpeg', 1, NULL),
(15, '[12:00]', '2020-10-19', 'why_not.jpeg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `featuring`
--

CREATE TABLE `featuring` (
  `song_id` int NOT NULL,
  `member_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `featuring`
--

INSERT INTO `featuring` (`song_id`, `member_id`) VALUES
(8, 7),
(9, 3),
(11, 9),
(14, 1),
(27, 7),
(28, 6),
(28, 10);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `number` int NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `shape` varchar(255) NOT NULL,
  `animal` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `power` varchar(255) DEFAULT NULL,
  `fruit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `picture`, `debut`, `number`, `nationality`, `color`, `shape`, `animal`, `country`, `power`, `fruit`) VALUES
(1, 'Heejin', '1.jpg', '2016-10-04', 1, 'kr', 'Rose', 'Carre', 'Lapin', 'France', NULL, NULL),
(2, 'Hyunjin', '2.jpeg', '2016-11-16', 2, 'kr', 'Jaune', 'Carre', 'Chat', 'Japon', NULL, NULL),
(3, 'Haseul', '3.jpeg', '2016-12-08', 3, 'kr', 'Vert', 'Carre', 'Lapin', 'Iceland', NULL, NULL),
(4, 'Yeonjin', '4.jpg', '2017-01-15', 4, 'kr', 'Orange', 'Losange', 'Grenouille', 'Taiwan', NULL, NULL),
(5, 'Vivi', '5.jpeg', '2017-04-16', 5, 'ch', 'Rose pastel', 'Carre', 'Cerf', 'Hong Kong', NULL, NULL),
(6, 'Kim Lip', '6.jpeg', '2017-05-25', 6, 'kr', 'Rouge', 'Rond', 'Hibou', NULL, 'Vitesse', NULL),
(7, 'Jinsoul', '7.jpg', '2017-06-25', 7, 'kr', 'Bleu', 'Rond', 'Combattant', NULL, 'Teleportation', NULL),
(8, 'Choerry', '8.jpg', '2017-07-27', 8, 'kr', 'Violet', 'Rond', 'Chauve-Souris', NULL, 'Voyage Dimentionel', 'Cerise'),
(9, 'Yves', '9.jpeg', '2017-11-27', 9, 'kr', 'Bordeaux', 'Triangle', 'Cygne', NULL, NULL, 'Pomme'),
(10, 'Chuu', '10.jpg', '2017-12-27', 10, 'kr', 'Peche', 'Triangle', 'Manchot', NULL, NULL, 'Fraise'),
(11, 'Gowon', '11.jpeg', '2018-01-29', 11, 'kr', 'Turquoise', 'Triangle Inverse', 'Papillon', NULL, NULL, 'Ananas'),
(12, 'Hyeju', '12.jpeg', '2018-04-17', 12, 'kr', 'Gris', 'Triangle', 'Loup', NULL, NULL, 'Peche');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `albumId` int DEFAULT NULL,
  `audio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`id`, `title`, `albumId`, `audio`) VALUES
(1, '12 00', 15, '1200.mp3'),
(2, 'A Different Night', 14, 'ADifferentNight.mp3'),
(3, '&', 14, 'AND.mp3'),
(4, 'Be Honest', 14, 'BeHonest.mp3'),
(5, 'D1', 9, 'D1.mp3'),
(6, 'Dance On My Own', 14, 'DanceOnMyOwn.mp3'),
(7, 'Eclipse', 6, 'Eclipse.mp3'),
(8, 'Egoist', 12, 'Egoist.mp3'),
(9, 'Everyday I Love You', 5, 'EverydayILoveYou.mp3'),
(10, 'Flip That', 13, 'FlipThat.mp3'),
(11, 'Girls Talk', 10, 'GirlsTalk.mp3'),
(12, 'Heart Attack', 10, 'HeartAttack.mp3'),
(13, 'Hide & Seek', 14, 'HideNSeek.mp3'),
(14, 'Ill Be There', 2, 'IllBeThere.mp3'),
(15, 'Kiss Later', 4, 'KissLater.mp3'),
(16, 'Let Me In', 3, 'LetMeIn.mp3'),
(17, 'Love Cherry Motion', 8, 'LoveCherryMotion.mp3'),
(18, 'Love Letter', 7, 'LoveLetter.mp3'),
(19, 'Need U', 13, 'NeedU.mp3'),
(20, 'New ', 9, 'New.mp3'),
(21, 'One & Only', 11, 'OneNOnly.mp3'),
(22, 'Oops !', 15, 'Oops.mp3'),
(23, 'Pale Blue Dot', 13, 'PaleBlueDot.mp3'),
(24, 'Playback', 13, 'Playback.mp3'),
(25, 'POSE', 13, 'POSE.mp3'),
(26, 'PTT', 14, 'PTT.mp3'),
(27, 'Puzzle', 8, 'Puzzle.mp3'),
(28, 'See Saw', 11, 'SeeSaw.mp3'),
(29, 'Singing in the Rain', 7, 'SingingInTheRain.mp3'),
(30, 'Star', 15, 'Star.mp3'),
(31, 'The Journey', 13, 'TheJourney.mp3'),
(32, 'Twilight', 6, 'Twilight.mp3'),
(33, 'Universe', 15, 'Universe.mp3'),
(34, 'U R', 14, 'UR.mp3'),
(35, 'ViViD', 1, 'ViViD.mp3'),
(36, 'Voice', 15, 'Voice.mp3'),
(37, 'Why Not', 15, 'WhyNot.mp3'),
(38, 'WOW', 14, 'WOW.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `subunit`
--

CREATE TABLE `subunit` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `debut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subunit`
--

INSERT INTO `subunit` (`id`, `name`, `picture`, `debut`) VALUES
(1, 'Loona', 'loona.jpg', '2018-08-20'),
(2, '1/3', '1_3.jpg', '2017-03-12'),
(3, 'Odd Eye Circle', 'oec.jpeg', '2017-09-21'),
(4, 'yyxy', 'yyxy.jpeg', '2017-11-14'),
(5, 'ARTMS', 'ARTMS.jpg', NULL),
(6, 'Loossemble', 'loossemble.jpg', '2023-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `subunit_members`
--

CREATE TABLE `subunit_members` (
  `subunit_id` int NOT NULL,
  `member_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subunit_members`
--

INSERT INTO `subunit_members` (`subunit_id`, `member_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 1),
(5, 3),
(5, 6),
(5, 7),
(5, 8),
(6, 2),
(6, 4),
(6, 5),
(6, 11),
(6, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_6ac47862693c6c8ddbccf613a11` (`subunitId`),
  ADD KEY `FK_7e3bac9e9a5cef1d289524b24b6` (`memberId`);

--
-- Indexes for table `featuring`
--
ALTER TABLE `featuring`
  ADD PRIMARY KEY (`song_id`,`member_id`),
  ADD KEY `IDX_5a64fdd649a376acd778e37aa5` (`song_id`),
  ADD KEY `IDX_021dc29ac563e039bb78801538` (`member_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_8174d0498e41d6e7c108b657e7` (`name`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_c529927ae410af49faaf2e239a5` (`albumId`);

--
-- Indexes for table `subunit`
--
ALTER TABLE `subunit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_da5d84452385de3d7a46ae524c` (`name`);

--
-- Indexes for table `subunit_members`
--
ALTER TABLE `subunit_members`
  ADD PRIMARY KEY (`subunit_id`,`member_id`),
  ADD KEY `IDX_bf4492ba0df592a99062ffd1eb` (`subunit_id`),
  ADD KEY `IDX_dc4fd07884729c90b4e5f62d28` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subunit`
--
ALTER TABLE `subunit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FK_6ac47862693c6c8ddbccf613a11` FOREIGN KEY (`subunitId`) REFERENCES `subunit` (`id`),
  ADD CONSTRAINT `FK_7e3bac9e9a5cef1d289524b24b6` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`);

--
-- Constraints for table `featuring`
--
ALTER TABLE `featuring`
  ADD CONSTRAINT `FK_021dc29ac563e039bb78801538b` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_5a64fdd649a376acd778e37aa5c` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `FK_c529927ae410af49faaf2e239a5` FOREIGN KEY (`albumId`) REFERENCES `album` (`id`);

--
-- Constraints for table `subunit_members`
--
ALTER TABLE `subunit_members`
  ADD CONSTRAINT `FK_bf4492ba0df592a99062ffd1ebf` FOREIGN KEY (`subunit_id`) REFERENCES `subunit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc4fd07884729c90b4e5f62d283` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
