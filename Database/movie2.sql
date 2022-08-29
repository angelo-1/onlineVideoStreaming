-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 07:46 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie2`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `mid` int(10) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `rdate` varchar(5) NOT NULL,
  `runtime` varchar(4) NOT NULL,
  `decription` varchar(200) NOT NULL,
  `viewers` int(10) DEFAULT 1,
  `imgpath` text NOT NULL,
  `videopath` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mid`, `mname`, `genre`, `rdate`, `runtime`, `decription`, `viewers`, `imgpath`, `videopath`) VALUES
(17, 'pushpa teaser', 'action', '2021', '1', 'Pushpa: The Rise – Part 1 is an upcoming Indian Telugu-language action thriller film written and dir', 4, 'wp8444577.jpg', 'Introducing_Pushpa_Raj_Allu_Arjun_Pushpa_Rashmika_Fahadh_Faa.mp4'),
(18, 'thuramukham teaser', 'action', '2021', '1', 'Thuramukham is a 2021 Indian Malayalam-language period drama film directed and filmed by Rajeev Ravi', 5, 'thuramukham.jpg', 'Thuramukham_Official_Teaser_Nivin_Pauly_Nimisha_Sajayan_Raje.webm'),
(19, 'the suicide squad trailer', 'action , super hero', '2021', '3', 'THE SUICIDE SQUAD is a 2021 American superhero film based on DC comics featuring the team Suicide Sq', 2, 'suicide.jpg', '1_THE SUICIDE SQUAD Trailer (2021) Suicide Squad 2 Movie ( 1080 X 1920 )_1.mp4'),
(20, 'kurup teaser', 'action , crime', '2021', '1', 'Kurup is an upcoming Indian Malayalam language crime thriller film written by KS Aravind, Jithin K J', 9, 'kurup-2021.jpg', 'Kurup_Malayalam_Teaser_Dulquer_Salmaan_Srinath_Rajendran_Way.webm'),
(21, 'minnal murali teaser', 'action , super hero', '2021', '1', 'Minnal Murali is an upcoming Indian Malayalam-language superhero film directed by Basil Joseph starr', 15, 'minnal_2021320.jpg', 'MINNAL_MURALI_Malayalam_Official_Teaser_Tovino_Thomas_Basil_.webm'),
(22, 'k.g.f chapter 2  teaser', 'crime , action', '2021', '2', 'K.G.F: Chapter 2 is an upcoming Indian Kannada-language period action film written and directed by P', 7, 'kgf.jpg', 'KGF_Chapter2_TEASER_Yash_Sanjay_Dutt_Raveena_Tandon_Srinidhi.mp4'),
(29, 'vikram teaser', '   action , crime', '   20', '   2', '   Vikram is an upcoming Indian Tamil-language action thriller film written and directed by Lokesh Kana', 17, 'vikram.jpeg', 'VIKRAM_Official_Title_Teaser_KamalHaasan232_Kamal_Haasan_Lok.webm'),
(34, 'reach', 'short film', '2021', '7', '“Reach” is an award-winning short film from India about depression, anxiety and fear. Reach focuses on the life and experience of one individual who experiences the struggle of fighting inner demons o', 3, 'reach.jpg', 'reach.mp4'),
(35, '777 charlie teaser', 'comedy', '2021', '2', '777 Charlie is an upcoming Indian Kannada-language adventure comedy drama film directed by Kiranraj K. It features Rakshit Shetty, Sangeetha Sringeri and Raj B. Shetty in prominent roles. ', 2, '777charlie.jpg', '777.mp4'),
(36, 'antihero', 'short film', '2020', '6', '‘Anyone can be a hero, even an ant’ - this quote defines the short film ‘Antihero’, directed by 22-year-old Sidhu Das. The macro fantasy short film starring two ants and an antlion is garnering massiv', 2, 'antihero-poster-746x1024.jpg', 'ANTIHERO _ Macro _ Fantasy_ Award winning Short Film _ 2020 _ Pendulum Films _ ( 720 X 1280 ).mp4'),
(37, 'mimi trailer', 'drama', '2021', '3', 'An aspiring actress in a small town agrees to bear a child for a visiting couple seeking a surrogate mother, but her experience takes unexpected turns.', 1, 'Mimi_2021_Hindi_poster.jpg', 'Mimi _ Official Trailer _ Kriti Sanon, Pankaj Tripathi _ Netflix India ( 720 X 1280 ).mp4');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(10) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `rate_count` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(100) NOT NULL,
  `username` varchar(25) NOT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `mid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`id`, `username`, `passwd`, `name`, `phone`, `email`, `DOB`, `mid`) VALUES
(1, 'admin@gmail.com', 'admin', 'angelo rajesh', '9539336435', 'angelo@gmail.com', '24/08/2000', 20),
(4, 'soubik@gmail.com', '1234', 'soubik bera', '8622849041', 'soubik@gmail.com', '16/10/1995', 20),
(5, 'niru@gmail.com', '1234', 'niru lal', '1234287564', 'niru@gmail.com', '16/09/1996', 20),
(6, 'janobe@gmail.com', 'admin', 's s', '9876565421', 'janobe@gmail.com', '15/01/1995', 20),
(7, 'angelorajesh11@gmail.com', 'angelo', 'angelo rajesh', '9539336435', 'angelorajesh11@gmail.com', '24/08/2000', 20),
(8, 'sijosabu313@gmail.com', 'sijosabu333', 'sijo sabu', '8848163972', 'sijosabu313@gmail.com', '25/04/2000', 20),
(9, 'abin@gmail.com', 'qwerty', 'abin jojo', '9207369678', 'abin@gmail.com', '19/06/2000', 20),
(11, 'aswinsagar@gmail.com', '123456789', 'aswin  sagar', '7907459514', 'aswinsagar@gmail.com', '12/02/2001', 20),
(12, 'arunjose@gmail.com', 'aaaaaaa', 'arun jose', '9497311490', 'arunjose@gmail.com', '15/09/1997', 20),
(14, 'athulcmathew121@gmail.com', '12345679', 'athul mathew', '9207601697', 'athulcmathew121@gmail.com', '22/03/2001', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `mid` (`mid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `mid` (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user1`
--
ALTER TABLE `user1`
  ADD CONSTRAINT `user1_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `movies` (`mid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
