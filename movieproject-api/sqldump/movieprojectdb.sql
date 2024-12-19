-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 03:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `url` varchar(255) NOT NULL,
  `characterName` varchar(120) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `movieId`, `userId`, `name`, `url`, `characterName`, `dateCreated`, `dateUpdated`) VALUES
(202, 219, 2, 'Dwayne Johnson', '/5QApZVV8FUFlVxQpIK3Ew6cqotq.jpg', 'Maui (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(203, 219, 2, 'Rose Matafeo', '/zQa39fMjbOTIsovbh1TBTJVlToz.jpg', 'Loto (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(204, 219, 2, 'David Fane', '/tcozyaTgAa8rRmzc5qeht0loni6.jpg', 'Kele (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(205, 219, 2, 'Awhimai Fraser', '/276OUDPl2iIsz772HQw3tiz2JN2.jpg', 'Matangi (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(206, 219, 2, 'Hualālai Chung', '/x2g5fdHqETY9dZgL4aB0QDP0boR.jpg', 'Moni (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(207, 219, 2, 'Auliʻi Cravalho', '/vEroqcnM2g6yY7qXDAie7hx2Cyp.jpg', 'Moana (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(208, 219, 2, 'Khaleesi Lambert-Tsuda', '/3LHXDjy9UijbtR7X2EReX5H57kk.jpg', 'Simea (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(209, 219, 2, 'Temuera Morrison', '/1ckHDFgKXJ8pazmvLCW7DeOKqA0.jpg', 'Chief Tui (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(210, 219, 2, 'Nicole Scherzinger', '/sB6TNkTdLCkK6DVd5NlBPtfssyD.jpg', 'Sina (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(211, 219, 2, 'Rachel House', '/m8D9XlTGfI0ZmauMKtYp5tw8eNi.jpg', 'Gramma Tala (voice)', '2024-12-13 18:29:13', '0000-00-00 00:00:00'),
(212, 220, 2, 'Morena Baccarin', '/w7azo5rPMzcJE8uyEtu9hiqeliV.jpg', 'Nina', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(213, 220, 2, 'Danny Boyd Jr.', '/k6ewXmzmCJa71bQmmEifmy11ezt.jpg', 'Hunter', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(214, 220, 2, 'Shauna Earp', '/cpAOnH902U7S9uBNzHOB7tOSvRq.jpg', 'Hannah', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(215, 220, 2, 'Maddie Hasson', '/eH6SnpMGDC9CQScmIchSnKkZAbc.jpg', 'Katie', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(216, 220, 2, 'Anthony Mackie', '/kDKaBf5GJuK42N9zKeftokcbMap.jpg', 'Will', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(217, 220, 2, 'Rachel Nicks', '/wJx6DHJ5S5IGvj61yUUPtKzr9cf.jpg', 'Tara', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(218, 220, 2, 'Tyler Grey', '/3yuB34p1EXx8273HnMrng7kgolA.jpg', 'Tim', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(219, 220, 2, 'David Malkoff', '/dVo8W6TR2nF9vdRic8OWizutSEe.jpg', 'Nina’s Husband (uncredited)', '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(230, 222, 2, 'Sylvester Stallone', '/gn3pDWthJqR0VDYGViGD3048og7.jpg', 'Rook', '2024-12-13 18:29:38', '0000-00-00 00:00:00'),
(231, 222, 2, 'Erin Ownbey', '/oQTx5FXse1SLLXLHaqwhu0ZwPVn.jpg', 'Trisha Brody', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(232, 222, 2, 'Josh Wiggins', '/8ibSjOrx62IRfcBVssu6q3lzlQp.jpg', 'Casey Brody', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(233, 222, 2, 'Jason Patric', '/iv21ZjE90f9QNiNONKF9Lp6ZD68.jpg', 'James Brody', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(234, 222, 2, 'Dash Mihok', '/jnruNUJv57nNtO66SR3oJ5tQuM5.jpg', 'Smoke', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(235, 222, 2, 'Laney Stiebing', '/eAB8foYMD8o7b5yqIlQRJUhdkCr.jpg', 'Sara Brody', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(236, 222, 2, 'Jeff Chase', '/Ahj74X5BioIUDRhdWD8i43j0pXM.jpg', 'Viper', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(237, 222, 2, 'Joel Cohen', '/26khzGvkwfTdR3f6rNAtQ39Z8OF.jpg', 'Bank Manager', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(238, 222, 2, 'Josh Whites', '/pJAN0zyuX7lwW97uYDmAe081DHA.jpg', 'Echo', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(239, 222, 2, 'Beau Bommarito', '/y4Bnur5patiUtPXtZhinlKJNKzk.jpg', 'Speeding Driver', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(240, 223, 2, 'Tom Hardy', '/d81K0RH8UX7tZj49tZaQhZ9ewH.jpg', 'Eddie Brock / Venom', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(241, 223, 2, 'Rhys Ifans', '/1D670EEsbky3EtO7XLG32A09p92.jpg', 'Martin Moon', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(242, 223, 2, 'Clark Backo', '/d24KKFxfoql6PBsBPsejFgzhSlH.jpg', 'Sadie Christmas', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(243, 223, 2, 'Juno Temple', '/nvsPrM4OKHVCDivgMx4FF6PgE5f.jpg', 'Dr. Teddy Paine', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(244, 223, 2, 'Chiwetel Ejiofor', '/pbnWjBsze67Fbr3gZAP1ZP407ZU.jpg', 'General Rex Strickland', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(245, 223, 2, 'Stephen Graham', '/hRq4Rq8IbLL4nGCu11N5ePESdI6.jpg', 'Detective Mulligan', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(246, 223, 2, 'Peggy Lu', '/ng5eaDcOf9kSwIYGNmwF9wEfIHp.jpg', 'Mrs. Chen', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(247, 223, 2, 'Hala Finley', '/cVLLrES860YANUMzJUo20HUR7TI.jpg', 'Echo Moon', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(248, 223, 2, 'Dash McCloud', '/8WmRoUrM5S7rA0TVSdKGOSh9uq8.jpg', 'Leaf Moon', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(249, 223, 2, 'Alanna Ubach', '/ffyBAEoW3bDgVJQV3GaHsZ9x29W.jpg', 'Nova Moon', '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(261, 225, 2, 'Scarlett Johansson', '/6NsMbJXRlDZuDzatN2akFdGuTvx.jpg', 'Elita-1 (voice)', '2024-12-13 18:40:40', '0000-00-00 00:00:00'),
(262, 225, 2, 'Keegan-Michael Key', '/xmdzYXP9j87a43FSiL138nLesuS.jpg', 'B-127 (voice)', '2024-12-13 18:40:40', '0000-00-00 00:00:00'),
(263, 225, 2, 'Jon Hamm', '/mrXE5fZbEDPc7BEE5G21J6qrwzi.jpg', 'Sentinel Prime (voice)', '2024-12-13 18:40:40', '0000-00-00 00:00:00'),
(264, 225, 2, 'Steve Buscemi', '/n0pZumkrcZrAPMoPq684RhYnjPV.jpg', 'Starscream (voice)', '2024-12-13 18:40:40', '0000-00-00 00:00:00'),
(265, 225, 2, 'Laurence Fishburne', '/aBRISux1AGCqkFNTKHYfLcJunWA.jpg', 'Alpha Trion (voice)', '2024-12-13 18:40:40', '0000-00-00 00:00:00'),
(266, 225, 2, 'Vanessa Liguori', '/9EkNTWHZ1U83XuQJ9VU9sldxI9g.jpg', 'Airachnid (voice)', '2024-12-13 18:40:40', '0000-00-00 00:00:00'),
(267, 225, 2, 'Jason Konopisos-Alvarez', '/vWunN0rdthwvaX3FOj1tmQIMylD.jpg', 'Shockwave / Guard 2 (voice)', '2024-12-13 18:40:40', '0000-00-00 00:00:00'),
(277, 228, 2, 'Naomi Scott', '/1o0QB3SayY9HSMkHPM48CMVsYvf.jpg', 'Skye Riley', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(278, 228, 2, 'Lukas Gage', '/j7Zub5J9PgCnsfgEC5QCr160JtH.jpg', 'Lewis', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(279, 228, 2, 'Rosemarie DeWitt', '/44sxIdGtYN24R14OmnZbCpcd8J8.jpg', 'Elizabeth Riley', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(280, 228, 2, 'Ray Nicholson', '/f0MRbGIyTEJLJgHedJS8pRFhGn4.jpg', 'Paul Hudson', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(281, 228, 2, 'Miles Gutierrez-Riley', '/22JmiXEKoIHTKAdZaxOiS5wVHnM.jpg', 'Joshua', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(282, 228, 2, 'Peter Jacobson', '/pGi9CnzEG4cLa2viUP89yvlPCyR.jpg', 'Morris', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(283, 228, 2, 'Dylan Gelula', '/nqXd0gVNlma8knaykJh5ArXSYqy.jpg', 'Gemma', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(284, 228, 2, 'Kyle Gallner', '/wfdywrw6K3ti1uW1IYDWbUtU8se.jpg', 'Joel', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(285, 228, 2, 'Raúl Castillo', '/mNGyFYRTbxjgUwsDKCdohm6o9g.jpg', 'Darius', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(286, 228, 2, 'Drew Barrymore', '/9xMu2GLC5otUcC11sEWC5aEAERQ.jpg', 'Drew Barrymore', '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(762, 278, 2, 'Aaron Pierre', '/z2cMMZyWzv5ztT6pFdAAjB3u7CQ.jpg', 'Mufasa (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(763, 278, 2, 'Kagiso Lediga', '/nfqx3CqFVsAMelk6ry560SuN7Y0.jpg', 'Young Rafiki (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(764, 278, 2, 'Preston Nyman', '/eidKvLDCRw68tG3CN6fGhvHUnW.jpg', 'Zazu (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(765, 278, 2, 'Tiffany Boone', '/9LwqRFdSzxVtnutDUg98YLq0bSz.jpg', 'Sarabi (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(766, 278, 2, 'Mads Mikkelsen', '/ntwPvV4GKGGHO3I7LcHMwhXfsw9.jpg', 'Kiros (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(767, 278, 2, 'Kelvin Harrison Jr.', '/bQC7SUnUiLw2wxnXGYr9tm7wDLW.jpg', 'Taka (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(768, 278, 2, 'Thandiwe Newton', '/oy3zyt5lSzf6G1JoMM6gTZRJxjj.jpg', 'Eshe (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(769, 278, 2, 'Lennie James', '/hfZrdEkBHxYYbMoGHAaVomlgMi.jpg', 'Obasi (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(770, 278, 2, 'Anika Noni Rose', '/d7aLtuNXBqVtqNnZl8wXsFV4ML5.jpg', 'Afia (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00'),
(771, 278, 2, 'Keith David', '/jJLJuR7FNHYL1fB5igjj7IXzOel.jpg', 'Masego (voice)', '2024-12-19 14:15:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `tmdbId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `overview` text NOT NULL,
  `popularity` float NOT NULL,
  `releaseDate` date NOT NULL,
  `voteAverage` float NOT NULL,
  `backdropPath` varchar(255) NOT NULL,
  `posterPath` varchar(255) NOT NULL,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `userId`, `tmdbId`, `title`, `overview`, `popularity`, `releaseDate`, `voteAverage`, `backdropPath`, `posterPath`, `isFeatured`, `dateCreated`, `dateUpdated`) VALUES
(219, 2, 1241982, 'Moana 2', 'After receiving an unexpected call from her wayfinding ancestors, Moana journeys alongside Maui and a new crew to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she\'s ever faced.', 3704.06, '2024-11-21', 6.883, '/tElnmtQ6yz1PjN1kePNl8yMSb59.jpg', '/4YZpsylmjHbqeWzjKpUEF8gcLNW.jpg', 0, '2024-12-13 18:29:12', '0000-00-00 00:00:00'),
(220, 2, 1035048, 'Elevation', 'A single father and two women venture from the safety of their homes to face monstrous creatures to save the life of a young boy.', 2623.95, '2024-11-07', 6.459, '/au3o84ub27qTZiMiEc9UYzN74V3.jpg', '/uQhYBxOVFU6s9agD49FnGHwJqG5.jpg', 0, '2024-12-13 18:29:25', '0000-00-00 00:00:00'),
(222, 2, 1182387, 'Armor', 'Armored truck security guard James Brody is working with his son Casey transporting millions of dollars between banks when a team of thieves led by Rook orchestrate a takeover of their truck to seize the riches. Following a violent car chase, Rook soon has the armored truck surrounded and James and Casey find themselves cornered onto a decrepit bridge.', 1666.03, '2024-10-30', 5.6, '/evFChfYeD2LqobEJf8iQsrYcGTw.jpg', '/pnXLFioDeftqjlCVlRmXvIdMsdP.jpg', 0, '2024-12-13 18:29:38', '0000-00-00 00:00:00'),
(223, 2, 912649, 'Venom: The Last Dance', 'Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie\'s last dance.', 12365.2, '2024-10-22', 6.737, '/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg', '/aosm8NMQ3UyoBVpSxyimorCQykC.jpg', 0, '2024-12-13 18:30:15', '0000-00-00 00:00:00'),
(225, 2, 698687, 'Transformers One', 'The untold origin story of Optimus Prime and Megatron, better known as sworn enemies, but once were friends bonded like brothers who changed the fate of Cybertron forever.aaa', 643.3, '2027-09-11', 8.109, '/zViRwl3ySscZnbXZJ2Q9wq3SeUG.jpg', '/qbkAqmmEIZfrCO8ZQAuIuVMlWoV.jpg', 0, '2024-12-13 18:40:39', '0000-00-00 00:00:00'),
(226, 2, 823219, 'Flowsss', 'A solitary cat, displaced by a great flood, finds refuge on a boat with various species and must navigate the challenges of adapting to a transformed world together.', 303.327, '2026-08-29', 8.5, '/b3mdmjYTEL70j7nuXATUAD9qgu4.jpg', '/enRimDhtFfb7hNTQlOjrgK8O8UO.jpg', 0, '2024-12-13 18:43:20', '0000-00-00 00:00:00'),
(228, 2, 1100782, 'Smile 2', 'About to embark on a new world tour, global pop sensation Skye Riley begins experiencing increasingly terrifying and inexplicable events. Overwhelmed by the escalating horrors and the pressures of fame, Skye is forced to face her dark past to regain control of her life before it spirals out of control.', 809.03, '2024-10-16', 6.587, '/ditakJQbOLWVsyYZnKtz054fJhz.jpg', '/ht8Uv9QPv9y7K0RvUyJIaXOZTfd.jpg', 0, '2024-12-13 18:47:22', '0000-00-00 00:00:00'),
(278, 2, 762509, 'Mufasa: The Lion King', 'Told in flashbacks, Mufasa is an orphaned cub, lost and alone until he meets a sympathetic lion named Taka—the heir to a royal bloodline. The chance meeting sets in motion a journey of misfits searching for their destiny and working together to evade a threatening and deadly foe.', 1181.39, '2024-12-18', 7.2, '/c6nouvFYnmNO50WQDLcKMI3p0jA.jpg', '/lurEK87kukWNaHd0zYnsi3yzJrs.jpg', 0, '2024-12-19 14:15:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `userId`, `movieId`, `url`, `description`, `dateCreated`, `dateUpdated`) VALUES
(88, 2, 219, '/6cXqnUlCklzV52kqyn3EEqDonyM.jpg', 'Backdrop image for Moana 2', '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(89, 2, 219, '/4oYaZcYovt34sd60X2IL0ayg2js.jpg', 'Backdrop image for Moana 2', '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(90, 2, 219, '/jucn2CMjsraKDGUJ9eAfm3ZqvMI.jpg', 'Backdrop image for Moana 2', '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(91, 2, 219, '/qWAzUQiv0eZxId2JH1JpWdwM5Hp.jpg', 'Backdrop image for Moana 2', '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(92, 2, 219, '/tElnmtQ6yz1PjN1kePNl8yMSb59.jpg', 'Backdrop image for Moana 2', '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(98, 2, 222, '/evFChfYeD2LqobEJf8iQsrYcGTw.jpg', 'Backdrop image for Armor', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(99, 2, 222, '/fMW4wiXYH0vfUmGfKpW9btgEtAO.jpg', 'Backdrop image for Armor', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(100, 2, 222, '/7AfS4UxDZn1qWPi3BWl8ltaJpcy.jpg', 'Backdrop image for Armor', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(101, 2, 222, '/STxV8K0oE5dluCNlw6IE8cFi0b.jpg', 'Backdrop image for Armor', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(102, 2, 222, '/uSAXuRJN9EXYibkW1AHX1HLIh9w.jpg', 'Backdrop image for Armor', '2024-12-13 18:29:39', '0000-00-00 00:00:00'),
(103, 2, 223, '/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg', 'Backdrop image for Venom: The Last Dance', '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(104, 2, 223, '/3sh2UA2Q2l7fihgoj1LhFFPTlIM.jpg', 'Backdrop image for Venom: The Last Dance', '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(105, 2, 223, '/7SA0Rsiuw4PmyDoiO1Jm2j9lUN8.jpg', 'Backdrop image for Venom: The Last Dance', '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(106, 2, 223, '/vZG7PrX9HmdgL5qfZRjhJsFYEIA.jpg', 'Backdrop image for Venom: The Last Dance', '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(107, 2, 223, '/8PwntYBvxnaJq6R57UiXGNFsluN.jpg', 'Backdrop image for Venom: The Last Dance', '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(108, 2, 226, '/b3mdmjYTEL70j7nuXATUAD9qgu4.jpg', 'Backdrop image for Flow', '2024-12-13 18:43:20', '0000-00-00 00:00:00'),
(109, 2, 226, '/or6VWsJMtNyr5cuBhNa9MJnIrYu.jpg', 'Backdrop image for Flow', '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(110, 2, 226, '/2HFXAuFRn444kJ9MgloJ0COjcpO.jpg', 'Backdrop image for Flow', '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(111, 2, 226, '/vkq14A1J0tT1VjM4cEW7oG8kDxe.jpg', 'Backdrop image for Flow', '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(112, 2, 226, '/zdy3h2sMppVp1Q41HpLiyF5w7es.jpg', 'Backdrop image for Flow', '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(113, 2, 228, '/a6QSYwijtJAhHjvpYUNVxPaeic8.jpg', 'Backdrop image for Smile 2', '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(114, 2, 228, '/6K6Llcor08XnhZousQ7fLIgNQNs.jpg', 'Backdrop image for Smile 2', '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(115, 2, 228, '/ditakJQbOLWVsyYZnKtz054fJhz.jpg', 'Backdrop image for Smile 2', '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(116, 2, 228, '/7zjn7tAITW8786sTx57zWEPbN5K.jpg', 'Backdrop image for Smile 2', '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(117, 2, 228, '/4Nf77qGt4t5Fna6e2PcUtPZRlFA.jpg', 'Backdrop image for Smile 2', '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(323, 2, 278, '/1cIieYlKi4RknJesE6Yv8dd1c0b.jpg', 'Backdrop image for Mufasa: The Lion King', '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(324, 2, 278, '/eerwEwLSvauCXPK1V4G83l9nPO7.jpg', 'Backdrop image for Mufasa: The Lion King', '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(325, 2, 278, '/c6nouvFYnmNO50WQDLcKMI3p0jA.jpg', 'Backdrop image for Mufasa: The Lion King', '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(326, 2, 278, '/ynfGOADXu7o5hxCR2nEJFoWn1jl.jpg', 'Backdrop image for Mufasa: The Lion King', '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(327, 2, 278, '/mxfsf20XYMKA8zcyhO4VuT1z0GS.jpg', 'Backdrop image for Mufasa: The Lion King', '2024-12-19 14:15:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(128) NOT NULL,
  `middleName` varchar(128) NOT NULL,
  `lastName` varchar(128) NOT NULL,
  `contactNo` varchar(15) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstName`, `middleName`, `lastName`, `contactNo`, `role`) VALUES
(1, 'test2@mail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Lem', '', 'Francisco', '09351107560', 'user'),
(2, 'qwe@mail.com', '76d80224611fc919a5d54f0ff9fba446', 'qwe', 'qwe', 'qwe', '123', 'admin'),
(3, 'zxc@mail.com', '5fa72358f0b4fb4f2c5d7de8c9a41846', 'zxc', 'zxc', 'zxc', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `videoKey` varchar(255) NOT NULL,
  `videoType` varchar(255) NOT NULL,
  `official` tinyint(1) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `userId`, `movieId`, `url`, `name`, `site`, `videoKey`, `videoType`, `official`, `dateCreated`, `dateUpdated`) VALUES
(365, 2, 219, 'https://www.youtube.com/watch?v=z0B0dG44DLc', 'Special Screenings for Service Members', 'YouTube', 'z0B0dG44DLc', 'Featurette', 1, '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(366, 2, 219, 'https://www.youtube.com/watch?v=6s2xFzhAAb0', 'Auliʻi Cravalho and the creators of MOANA 2 on taking the music beyond + favourite songs | BAFTA', 'YouTube', '6s2xFzhAAb0', 'Featurette', 1, '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(367, 2, 219, 'https://www.youtube.com/watch?v=RGhTO0ihiLo', '#1 Movie in the World', 'YouTube', 'RGhTO0ihiLo', 'Teaser', 1, '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(368, 2, 219, 'https://www.youtube.com/watch?v=9IisFuMUz44', 'Now Playing In Theaters', 'YouTube', '9IisFuMUz44', 'Trailer', 1, '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(369, 2, 219, 'https://www.youtube.com/watch?v=onzzmEg5o2I', 'The Moana 2 film-makers on the sequel to Disney\'s Polynesian adventure | BFI Q&A', 'YouTube', 'onzzmEg5o2I', 'Featurette', 1, '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(370, 2, 219, 'https://www.youtube.com/watch?v=wK_7W5EIhuc', 'Global Phenomenon', 'YouTube', 'wK_7W5EIhuc', 'Featurette', 1, '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(371, 2, 219, 'https://www.youtube.com/watch?v=_oj9VuS-FLs', 'Moanabes Booth To Screen', 'YouTube', '_oj9VuS-FLs', 'Behind the Scenes', 1, '2024-12-13 18:29:14', '0000-00-00 00:00:00'),
(372, 2, 219, 'https://www.youtube.com/watch?v=iqEcsbm3SHQ', '\"Can I Get a Chee Hoo\" Featurette', 'YouTube', 'iqEcsbm3SHQ', 'Behind the Scenes', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(373, 2, 219, 'https://www.youtube.com/watch?v=pg1ynLZgVG8', 'Surprise Performance! Barlow & Bear Bring Moana 2 Magic to London Waterloo!', 'YouTube', 'pg1ynLZgVG8', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(374, 2, 219, 'https://www.youtube.com/watch?v=i6CsD3p0UoU', 'IMAX® Upgrade', 'YouTube', 'i6CsD3p0UoU', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(375, 2, 219, 'https://www.youtube.com/watch?v=6y9tuQ0mrU0', 'Movie Surfers - Moana 2 Premiere with Dwayne Johnson and Auli’i Cravalho', 'YouTube', '6y9tuQ0mrU0', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(376, 2, 219, 'https://www.youtube.com/watch?v=N86asJvoogk', 'Interview with Dana Ledoux Miller, Jason Hand & Christina Chen', 'YouTube', 'N86asJvoogk', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(377, 2, 219, 'https://www.youtube.com/watch?v=VQkIuebNjUE', 'D23 Inside Disney - Moana 2', 'YouTube', 'VQkIuebNjUE', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(378, 2, 219, 'https://www.youtube.com/watch?v=YgavVSpQOb4', 'LEGO Trailer', 'YouTube', 'YgavVSpQOb4', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(379, 2, 219, 'https://www.youtube.com/watch?v=2wXapwnJE7M', 'The Music of Motunui', 'YouTube', '2wXapwnJE7M', 'Behind the Scenes', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(380, 2, 219, 'https://www.youtube.com/watch?v=5mDZiceBvGc', 'Dwayne Johnson Performs \"Can I Get a Chee Hoo?\"', 'YouTube', '5mDZiceBvGc', 'Behind the Scenes', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(381, 2, 219, 'https://www.youtube.com/watch?v=09bKWtA4dYI', 'World Premiere Recap', 'YouTube', '09bKWtA4dYI', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(382, 2, 219, 'https://www.youtube.com/watch?v=O-89bV7UmMk', 'Drone Show in London', 'YouTube', 'O-89bV7UmMk', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(383, 2, 219, 'https://www.youtube.com/watch?v=CxJghS8GK-4', 'You Need A Crew', 'YouTube', 'CxJghS8GK-4', 'Clip', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(384, 2, 219, 'https://www.youtube.com/watch?v=JdsSDUfHsC0', 'Moana is Back!', 'YouTube', 'JdsSDUfHsC0', 'Featurette', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(385, 2, 219, 'https://www.youtube.com/watch?v=JdSl4RMNtGE', 'Special Look', 'YouTube', 'JdSl4RMNtGE', 'Trailer', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(386, 2, 219, 'https://www.youtube.com/watch?v=i07sCEEFPBM', 'Big, Bad Matangi', 'YouTube', 'i07sCEEFPBM', 'Teaser', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(387, 2, 219, 'https://www.youtube.com/watch?v=IRBP8wpJ3fo', 'Tickets on Sale', 'YouTube', 'IRBP8wpJ3fo', 'Teaser', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(388, 2, 219, 'https://www.youtube.com/watch?v=sIZNsXFOqIw', 'We\'re Back', 'YouTube', 'sIZNsXFOqIw', 'Clip', 1, '2024-12-13 18:29:15', '0000-00-00 00:00:00'),
(389, 2, 219, 'https://www.youtube.com/watch?v=LvCedoSC4oA', 'Watch Official Trailer Now', 'YouTube', 'LvCedoSC4oA', 'Teaser', 1, '2024-12-13 18:29:16', '0000-00-00 00:00:00'),
(390, 2, 219, 'https://www.youtube.com/watch?v=Wxemg6rtKAs', '\"We\'re Back\"', 'YouTube', 'Wxemg6rtKAs', 'Teaser', 1, '2024-12-13 18:29:16', '0000-00-00 00:00:00'),
(391, 2, 219, 'https://www.youtube.com/watch?v=hDZ7y8RP5HE', 'Official Trailer', 'YouTube', 'hDZ7y8RP5HE', 'Trailer', 1, '2024-12-13 18:29:16', '0000-00-00 00:00:00'),
(392, 2, 219, 'https://www.youtube.com/watch?v=qkgkUCqEum4', 'Teaser Trailer', 'YouTube', 'qkgkUCqEum4', 'Trailer', 1, '2024-12-13 18:29:16', '0000-00-00 00:00:00'),
(393, 2, 219, 'https://www.youtube.com/watch?v=cZSywj-vkxA', 'First Look Announcement', 'YouTube', 'cZSywj-vkxA', 'Teaser', 1, '2024-12-13 18:29:16', '0000-00-00 00:00:00'),
(397, 2, 222, 'https://www.youtube.com/watch?v=tzQsSmDc8gw', 'Official International Trailer', 'YouTube', 'tzQsSmDc8gw', 'Trailer', 1, '2024-12-13 18:29:40', '0000-00-00 00:00:00'),
(398, 2, 222, 'https://www.youtube.com/watch?v=402_wx35uq8', 'Official Trailer', 'YouTube', '402_wx35uq8', 'Trailer', 1, '2024-12-13 18:29:40', '0000-00-00 00:00:00'),
(399, 2, 223, 'https://www.youtube.com/watch?v=tVqo-hIE4qA', 'Special Features Preview', 'YouTube', 'tVqo-hIE4qA', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(400, 2, 223, 'https://www.youtube.com/watch?v=y1M-nGQblmw', 'Who wouldn’t want to get paid to talk to themselves?!', 'YouTube', 'y1M-nGQblmw', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(401, 2, 223, 'https://www.youtube.com/watch?v=BX2uhw9UOiQ', 'Snacks with the Venom cast? Say less ????????', 'YouTube', 'BX2uhw9UOiQ', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(402, 2, 223, 'https://www.youtube.com/watch?v=041KTRpr0XU', 'First 10 Minutes Preview', 'YouTube', '041KTRpr0XU', 'Clip', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(403, 2, 223, 'https://www.youtube.com/watch?v=Op8P4xzbmhg', 'Welcome to the Nice List', 'YouTube', 'Op8P4xzbmhg', 'Teaser', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(404, 2, 223, 'https://www.youtube.com/watch?v=bI5vwW_1JjQ', 'Welcome to the Naughty List', 'YouTube', 'bI5vwW_1JjQ', 'Teaser', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(405, 2, 223, 'https://www.youtube.com/watch?v=sZgZL6Yn2fw', 'Venom: The Last Dance is only in cinemas NOW', 'YouTube', 'sZgZL6Yn2fw', 'Teaser', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(406, 2, 223, 'https://www.youtube.com/watch?v=utiep_e9hnU', 'Official IMAX® Interview', 'YouTube', 'utiep_e9hnU', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(407, 2, 223, 'https://www.youtube.com/watch?v=z5aYy3qktGg', 'London, it was a blast', 'YouTube', 'z5aYy3qktGg', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(408, 2, 223, 'https://www.youtube.com/watch?v=ZY34ufXPFl8', 'POV: it\'s the UK premiere of your film.', 'YouTube', 'ZY34ufXPFl8', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(409, 2, 223, 'https://www.youtube.com/watch?v=oAazxCOLF8c', 'A VIP cutie patootie ???? Blue stole our hearts', 'YouTube', 'oAazxCOLF8c', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(410, 2, 223, 'https://www.youtube.com/watch?v=Tujcuvurc1U', 'This is your sign to go and see Venom: The Last Dance on the big screen!', 'YouTube', 'Tujcuvurc1U', 'Featurette', 1, '2024-12-13 18:30:16', '0000-00-00 00:00:00'),
(411, 2, 223, 'https://www.youtube.com/watch?v=HcfFZwIg8cY', 'He’s backkkk', 'YouTube', 'HcfFZwIg8cY', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(412, 2, 223, 'https://www.youtube.com/watch?v=4RT-yq4pb0E', 'Savor the Last Bite: The Venom Legacy', 'YouTube', '4RT-yq4pb0E', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(413, 2, 223, 'https://www.youtube.com/watch?v=5EyqQEiKeq4', 'HAAS x Venom', 'YouTube', '5EyqQEiKeq4', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(414, 2, 223, 'https://www.youtube.com/watch?v=ZAULZiKbJoU', 'Hero', 'YouTube', 'ZAULZiKbJoU', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(415, 2, 223, 'https://www.youtube.com/watch?v=R3QCR4juFHQ', 'Ahh with Megan Thee Stallion', 'YouTube', 'R3QCR4juFHQ', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(416, 2, 223, 'https://www.youtube.com/watch?v=En9N-MltoqM', 'Austin Grand Prix Sizzle', 'YouTube', 'En9N-MltoqM', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(417, 2, 223, 'https://www.youtube.com/watch?v=O3wFg9z8WWI', 'Venom\'s world incoming...', 'YouTube', 'O3wFg9z8WWI', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(418, 2, 223, 'https://www.youtube.com/watch?v=aZTrRFHXz5A', 'In the Studio with Busta Rhymes', 'YouTube', 'aZTrRFHXz5A', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(419, 2, 223, 'https://www.youtube.com/watch?v=Gy9-A2WLHzs', 'In Cinemas Oct 23', 'YouTube', 'Gy9-A2WLHzs', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(420, 2, 223, 'https://www.youtube.com/watch?v=sm93tBNyz-g', 'In Cinemas Oct 23', 'YouTube', 'sm93tBNyz-g', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(421, 2, 223, 'https://www.youtube.com/watch?v=xrpdt2tdvVY', 'In Cinemas Oct 23', 'YouTube', 'xrpdt2tdvVY', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(422, 2, 223, 'https://www.youtube.com/watch?v=dx4z9BY0Qm0', 'In Cinemas Oct 23', 'YouTube', 'dx4z9BY0Qm0', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(423, 2, 223, 'https://www.youtube.com/watch?v=Sy4sCnMnMEU', 'In Cinemas Oct 23', 'YouTube', 'Sy4sCnMnMEU', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(424, 2, 223, 'https://www.youtube.com/watch?v=drJHT245_W8', 'In Cinemas Oct 23', 'YouTube', 'drJHT245_W8', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(425, 2, 223, 'https://www.youtube.com/watch?v=FKBN1qAzW3s', 'Official IMAX® 1.90 Trailer', 'YouTube', 'FKBN1qAzW3s', 'Trailer', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(426, 2, 223, 'https://www.youtube.com/watch?v=jPPVqQGQW2g', 'Eddie Pays Dana White a Visit', 'YouTube', 'jPPVqQGQW2g', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(427, 2, 223, 'https://www.youtube.com/watch?v=HkBv-gjnXxQ', 'Not That Kind of Cowboy with Dak Prescott', 'YouTube', 'HkBv-gjnXxQ', 'Featurette', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(428, 2, 223, 'https://www.youtube.com/watch?v=dZSqSfgG-Q8', 'In Cinemas Oct 23', 'YouTube', 'dZSqSfgG-Q8', 'Teaser', 1, '2024-12-13 18:30:17', '0000-00-00 00:00:00'),
(429, 2, 223, 'https://www.youtube.com/watch?v=HyIyd9joTTc', 'Final Trailer', 'YouTube', 'HyIyd9joTTc', 'Trailer', 1, '2024-12-13 18:30:18', '0000-00-00 00:00:00'),
(430, 2, 223, 'https://www.youtube.com/watch?v=8dyO_MGWWME', 'Trailer Countdown', 'YouTube', '8dyO_MGWWME', 'Teaser', 1, '2024-12-13 18:30:18', '0000-00-00 00:00:00'),
(431, 2, 223, 'https://www.youtube.com/watch?v=__2bjWbetsA', 'Official Trailer', 'YouTube', '__2bjWbetsA', 'Trailer', 1, '2024-12-13 18:30:18', '0000-00-00 00:00:00'),
(432, 2, 226, 'https://www.youtube.com/watch?v=ntLPTgWcpZA', '\'Flow\' With Gints Zibalodis | Academy Conversationsaa', 'YouTube', 'ntLPTgWcpZA', 'Featurette', 1, '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(433, 2, 226, 'https://www.youtube.com/watch?v=82WW9dVbglI', 'Official Trailer', 'YouTube', '82WW9dVbglI', 'Trailer', 1, '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(434, 2, 226, 'https://www.youtube.com/watch?v=bIkGBw_8sDs', 'Clip', 'YouTube', 'bIkGBw_8sDs', 'Clip', 1, '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(435, 2, 226, 'https://www.youtube.com/watch?v=ZgZccxuj2RY', 'Official US Trailer', 'YouTube', 'ZgZccxuj2RY', 'Trailer', 1, '2024-12-13 18:43:21', '0000-00-00 00:00:00'),
(436, 2, 228, 'https://www.youtube.com/watch?v=e_vHEgbZ2V0', 'Naomi Scott & Skye Riley\'s Music', 'YouTube', 'e_vHEgbZ2V0', 'Behind the Scenes', 1, '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(437, 2, 228, 'https://www.youtube.com/watch?v=exPXgP4sFhM', 'Parker Finn on Creating Skye Riley & the Smile Universe - Exclusive', 'YouTube', 'exPXgP4sFhM', 'Behind the Scenes', 1, '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(438, 2, 228, 'https://www.youtube.com/watch?v=qrYqz2Gxddo', 'Good luck sleeping after learning this', 'YouTube', 'qrYqz2Gxddo', 'Teaser', 1, '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(439, 2, 228, 'https://www.youtube.com/watch?v=WPXtftZ1UVA', 'Don\'t wait. Get tickets for Smile 2. Now playing.', 'YouTube', 'WPXtftZ1UVA', 'Teaser', 1, '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(440, 2, 228, 'https://www.youtube.com/watch?v=kkHpo2hHgzk', 'It\'s here -- and it\'s taking over.', 'YouTube', 'kkHpo2hHgzk', 'Teaser', 1, '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(441, 2, 228, 'https://www.youtube.com/watch?v=xiusowk8Oms', 'Extended Clip - Entity Haunts Skye Riley\'s Meet and Greet', 'YouTube', 'xiusowk8Oms', 'Clip', 1, '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(442, 2, 228, 'https://www.youtube.com/watch?v=rE3C_VFkgs8', 'Decoding Skye Riley\'s \"Grieved You\" Lyrics *Spoilers*', 'YouTube', 'rE3C_VFkgs8', 'Featurette', 1, '2024-12-13 18:47:23', '0000-00-00 00:00:00'),
(443, 2, 228, 'https://www.youtube.com/watch?v=FU_bAopCcSE', 'Final Trailer', 'YouTube', 'FU_bAopCcSE', 'Trailer', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(444, 2, 228, 'https://www.youtube.com/watch?v=rHFctWgsLZc', 'Artistry Featurette', 'YouTube', 'rHFctWgsLZc', 'Behind the Scenes', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(445, 2, 228, 'https://www.youtube.com/watch?v=HtJPQSPNbv8', 'It\'s the last thing you\'ll see', 'YouTube', 'HtJPQSPNbv8', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(446, 2, 228, 'https://www.youtube.com/watch?v=pWhiWietqek', 'The Parent Trap & Lindsay Lohan  had a big influence on Smile 2\'s Naomi Scott | Film Firsts', 'YouTube', 'pWhiWietqek', 'Featurette', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(447, 2, 228, 'https://www.youtube.com/watch?v=0QWiVhllmlk', 'How \'Smile 2\' Expands Its Horror Universe Like You’ve Never Seen | Naomi Scott & Parker Finn', 'YouTube', '0QWiVhllmlk', 'Featurette', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(448, 2, 228, 'https://www.youtube.com/watch?v=__Lcf9dTiuk', 'It\'s the last thing you\'ll see', 'YouTube', '__Lcf9dTiuk', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(449, 2, 228, 'https://www.youtube.com/watch?v=BGTqFwZL7Bs', 'A smile a day doesn’t keep the doctor away', 'YouTube', 'BGTqFwZL7Bs', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(450, 2, 228, 'https://www.youtube.com/watch?v=d4lhSJ2eOFw', 'Would it kill you to smile? Get tickets now', 'YouTube', 'd4lhSJ2eOFw', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(451, 2, 228, 'https://www.youtube.com/watch?v=DQIvIh7dWvg', 'Why is Everyone Smiling?', 'YouTube', 'DQIvIh7dWvg', 'Featurette', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(452, 2, 228, 'https://www.youtube.com/watch?v=vzB2tNxqsxU', 'Time to smile! Get tickets now.', 'YouTube', 'vzB2tNxqsxU', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(453, 2, 228, 'https://www.youtube.com/watch?v=bMGzd380HbI', 'It will never let go', 'YouTube', 'bMGzd380HbI', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(454, 2, 228, 'https://www.youtube.com/watch?v=eXm4r1KAkoM', 'Free Tattoos on World Smile Day', 'YouTube', 'eXm4r1KAkoM', 'Featurette', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(455, 2, 228, 'https://www.youtube.com/watch?v=XBdW2s_FnXk', 'It’s your turn to smile. Get tickets now - only in theatres October 18.', 'YouTube', 'XBdW2s_FnXk', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(456, 2, 228, 'https://www.youtube.com/watch?v=cOiG6LmuTKs', 'We can\'t wait to see you smile', 'YouTube', 'cOiG6LmuTKs', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(457, 2, 228, 'https://www.youtube.com/watch?v=7usqFNpHOao', 'If you don\'t know the rules of Smile, you will soon', 'YouTube', '7usqFNpHOao', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(458, 2, 228, 'https://www.youtube.com/watch?v=C1Xspx3tUzM', 'Have you seen the smiling people?', 'YouTube', 'C1Xspx3tUzM', 'Teaser', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(459, 2, 228, 'https://www.youtube.com/watch?v=LIyladZ7RXw', 'Smile 2 is bolder, nastier, and bloodier - Behind The Scenes with Naomi Scott and Parker Finn', 'YouTube', 'LIyladZ7RXw', 'Featurette', 1, '2024-12-13 18:47:24', '0000-00-00 00:00:00'),
(460, 2, 228, 'https://www.youtube.com/watch?v=0HY6QFlBzUY', 'Official Trailer', 'YouTube', '0HY6QFlBzUY', 'Trailer', 1, '2024-12-13 18:47:25', '0000-00-00 00:00:00'),
(461, 2, 228, 'https://www.youtube.com/watch?v=F4ioYanpbXA', 'X marks the Smile', 'YouTube', 'F4ioYanpbXA', 'Teaser', 1, '2024-12-13 18:47:25', '0000-00-00 00:00:00'),
(462, 2, 228, 'https://www.youtube.com/watch?v=19RkBBWdvRM', 'It will never let go', 'YouTube', '19RkBBWdvRM', 'Teaser', 1, '2024-12-13 18:47:25', '0000-00-00 00:00:00'),
(463, 2, 228, 'https://www.youtube.com/watch?v=u7NzwXfysXc', 'It’s the last thing you’ll see', 'YouTube', 'u7NzwXfysXc', 'Teaser', 1, '2024-12-13 18:47:25', '0000-00-00 00:00:00'),
(464, 2, 228, 'https://www.youtube.com/watch?v=Fy7kaI3GKzo', 'Official Teaser Trailer', 'YouTube', 'Fy7kaI3GKzo', 'Trailer', 1, '2024-12-13 18:47:25', '0000-00-00 00:00:00'),
(465, 2, 228, 'https://www.youtube.com/watch?v=nt0YXy_reKc', 'Clip', 'YouTube', 'nt0YXy_reKc', 'Clip', 1, '2024-12-13 18:47:25', '0000-00-00 00:00:00'),
(1628, 2, 278, 'https://www.youtube.com/watch?v=zABh-m_82nU', 'Official Clip', 'YouTube', 'zABh-m_82nU', 'Clip', 1, '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(1629, 2, 278, 'https://www.youtube.com/watch?v=MisepF7_0HU', 'Get Tickets Now', 'YouTube', 'MisepF7_0HU', 'Teaser', 1, '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(1630, 2, 278, 'https://www.youtube.com/watch?v=9Ro-b6To0Fw', 'Get Tickets Now', 'YouTube', '9Ro-b6To0Fw', 'Teaser', 1, '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(1631, 2, 278, 'https://www.youtube.com/watch?v=MtWsGbnmNeM', 'In Theaters December 20', 'YouTube', 'MtWsGbnmNeM', 'Teaser', 1, '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(1632, 2, 278, 'https://www.youtube.com/watch?v=PdALXkaUrvY', 'Backstage Music', 'YouTube', 'PdALXkaUrvY', 'Featurette', 1, '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(1633, 2, 278, 'https://www.youtube.com/watch?v=xM4Lfi1K6t0', 'In Theaters December 20', 'YouTube', 'xM4Lfi1K6t0', 'Teaser', 1, '2024-12-19 14:15:04', '0000-00-00 00:00:00'),
(1634, 2, 278, 'https://www.youtube.com/watch?v=S2Za6kixNPc', 'Official Clip', 'YouTube', 'S2Za6kixNPc', 'Clip', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1635, 2, 278, 'https://www.youtube.com/watch?v=skLtA0auDs4', 'Cast Booth-To-Screen', 'YouTube', 'skLtA0auDs4', 'Behind the Scenes', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1636, 2, 278, 'https://www.youtube.com/watch?v=uL7ABlhM2U0', 'The Music of Lebo M', 'YouTube', 'uL7ABlhM2U0', 'Behind the Scenes', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1637, 2, 278, 'https://www.youtube.com/watch?v=f0CnvtTcd1s', 'D23 Inside Disney - Mufasa: The Lion King', 'YouTube', 'f0CnvtTcd1s', 'Featurette', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1638, 2, 278, 'https://www.youtube.com/watch?v=4p7Br6E9HEA', '\"Fight With Me\"', 'YouTube', '4p7Br6E9HEA', 'Clip', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1639, 2, 278, 'https://www.youtube.com/watch?v=xr0XhKAbR10', 'Seth Rogen & Billy Eichner Booth to Screen', 'YouTube', 'xr0XhKAbR10', 'Behind the Scenes', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1640, 2, 278, 'https://www.youtube.com/watch?v=nJAuzep-U_w', 'Official Clip - We Are The Outsiders', 'YouTube', 'nJAuzep-U_w', 'Clip', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1641, 2, 278, 'https://www.youtube.com/watch?v=M8-kTCnH6YQ', 'Rivals', 'YouTube', 'M8-kTCnH6YQ', 'Teaser', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1642, 2, 278, 'https://www.youtube.com/watch?v=rUSFz4zzCjM', 'Brothers', 'YouTube', 'rUSFz4zzCjM', 'Clip', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1643, 2, 278, 'https://www.youtube.com/watch?v=DEwSn6iN2Y4', 'Music of Mufasa', 'YouTube', 'DEwSn6iN2Y4', 'Featurette', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1644, 2, 278, 'https://www.youtube.com/watch?v=aYIJOVRwr3g', 'Get Tickets Now', 'YouTube', 'aYIJOVRwr3g', 'Teaser', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1645, 2, 278, 'https://www.youtube.com/watch?v=qI0jRjMgakc', 'Protect The Pride', 'YouTube', 'qI0jRjMgakc', 'Featurette', 1, '2024-12-19 14:15:05', '0000-00-00 00:00:00'),
(1646, 2, 278, 'https://www.youtube.com/watch?v=1Be-Cab0_JA', 'Epic Adventures', 'YouTube', '1Be-Cab0_JA', 'Teaser', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00'),
(1647, 2, 278, 'https://www.youtube.com/watch?v=JPqwRUkPcDI', 'Tickets On Sale', 'YouTube', 'JPqwRUkPcDI', 'Teaser', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00'),
(1648, 2, 278, 'https://www.youtube.com/watch?v=e1AcKJSegwk', 'Experience It In Imax', 'YouTube', 'e1AcKJSegwk', 'Teaser', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00'),
(1649, 2, 278, 'https://www.youtube.com/watch?v=Ba2q6FlH-tE', 'Scar', 'YouTube', 'Ba2q6FlH-tE', 'Teaser', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00'),
(1650, 2, 278, 'https://www.youtube.com/watch?v=HZaaw3tRbxM', 'Visionary Storyteller', 'YouTube', 'HZaaw3tRbxM', 'Behind the Scenes', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00'),
(1651, 2, 278, 'https://www.youtube.com/watch?v=lMXh6vjiZrI', 'Final Trailer', 'YouTube', 'lMXh6vjiZrI', 'Trailer', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00'),
(1652, 2, 278, 'https://www.youtube.com/watch?v=o17MF9vnabg', 'Official Trailer', 'YouTube', 'o17MF9vnabg', 'Trailer', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00'),
(1653, 2, 278, 'https://www.youtube.com/watch?v=MjQG-a7d41Q', 'Teaser Trailer', 'YouTube', 'MjQG-a7d41Q', 'Trailer', 1, '2024-12-19 14:15:06', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1654;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
