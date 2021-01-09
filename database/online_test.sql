-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 05:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `name`, `number`, `password`, `status`) VALUES
(1, 'bvrsoftware.com@gmail.com', 'sanjeev', '9149260839', '12345', 'Logout');

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `collegecode` varchar(255) DEFAULT NULL,
  `collegename` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `address`, `collegecode`, `collegename`, `date`, `email`, `name`, `number`, `password`, `photo`, `status`) VALUES
(1, 'Moradabad', 'TMU001', 'TMU', '08/01/2021', 'bvrsoftware.com@gmail.com', 'sanjeev', '9149260839', '12345', '56801039sanjeev017.jpg', 'Logout'),
(2, 'Alighar', 'AMU001', 'AMU', '08/01/2021', 'ssp9448@gmail.com', 'Rajeev', '7830290517', '12345', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mcq25`
--

CREATE TABLE `mcq25` (
  `id` int(11) NOT NULL,
  `collegeCode` varchar(255) DEFAULT NULL,
  `corrtAns` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `question` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcq25`
--

INSERT INTO `mcq25` (`id`, `collegeCode`, `corrtAns`, `date`, `question`) VALUES
(1, 'TMU001', '3', '08/01/2021', 'What is java ?'),
(2, 'TMU001', '6', '08/01/2021', 'Two trains are on same track and they are coming toward each other. The speed of the first train is 50 km/h and the speed of the second train is 70 km/h. A bee starts flying between the trains when the distance between two trains is 100 km. The bee first flies from first train to second train. Once it reaches the second train, it immediately flies back to the first train  and so on until trains collide. Calculate the total distance travelled by the bee. Speed of bee is 80 km/h.'),
(3, 'TMU001', '11', '08/01/2021', 'HCF of 26 and 91 is:'),
(4, 'TMU001', '13', '08/01/2021', 'For some integer n, the odd integer is represented in the form of:'),
(5, 'TMU001', '18', '08/01/2021', 'Which of the following is not irrational?'),
(6, 'TMU001', '22', '08/01/2021', 'The addition of a rational number and an irrational number is equal to:'),
(7, 'TMU001', '27', '08/01/2021', 'If set A = {1, 2, 3, 4, 5,} is given, then it represents:'),
(8, 'TMU001', '30', '08/01/2021', 'If p and q are integers and is represented in the form of p/q, then it is a:'),
(9, 'TMU001', '35', '08/01/2021', 'The largest number that divides 70 and 125, which leaves the remainders 5 and 8, is:'),
(10, 'TMU001', '38', '08/01/2021', 'Raj purchased a bike for Rs. 75000 and he sold it for Rs.55000. Is it the condition of profit or loss? Also, find the profit or loss percentage incurred by him.'),
(11, 'TMU001', '43', '08/01/2021', 'The perimeter of a circle having radius 5cm is equal to'),
(12, 'TMU001', '48', '08/01/2021', 'If the perimeter of the circle and square are equal, then the ratio of their areas will be equal to:'),
(13, 'TMU001', '51', '08/01/2021', 'The probability of event equal to zero is called;'),
(14, 'TMU001', '54', '08/01/2021', 'The probability that cannot exist among the following:'),
(15, 'TMU001', '59', '08/01/2021', ' A bag has 3 red balls and 5 green balls. If we take a ball from the bag, then what is the probability of getting red balls only?'),
(16, 'TMU001', '63', '09/01/2021', 'A bag has 5 white marbles, 8 red marbles and 4 purple marbles. If we take a marble randomly, then what is the probability of not getting purple marble?'),
(17, 'TMU001', '65', '09/01/2021', 'A dice is thrown in the air. The probability of getting odd numbers is'),
(18, 'TMU001', '71', '09/01/2021', 'If we throw two coins in the air, then the probability of getting both tails will be:'),
(19, 'TMU001', '73', '09/01/2021', 'If two dice are thrown in the air, the probability of getting sum as 3 will be'),
(20, 'TMU001', '79', '09/01/2021', 'A fish tank has 5 male fish and 8 female fish. The probability of fish taken out is a male fish:'),
(21, 'TMU001', '82', '09/01/2021', 'The collection'),
(22, 'TMU001', '85', '09/01/2021', 'The collection is a ____________'),
(23, 'TMU001', '89', '09/01/2021', 'List, Set and Queue __________ Collection.'),
(24, 'TMU001', '96', '09/01/2021', 'Which of the following is legacy class in java?'),
(25, 'TMU001', '97', '09/01/2021', 'Iterator and ListIterator can traverse over');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_anwser25`
--

CREATE TABLE `mcq_anwser25` (
  `id` int(11) NOT NULL,
  `anwser` varchar(255) DEFAULT NULL,
  `collegeCode` varchar(255) DEFAULT NULL,
  `mcq25_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcq_anwser25`
--

INSERT INTO `mcq_anwser25` (`id`, `anwser`, `collegeCode`, `mcq25_id`) VALUES
(1, 'game', 'TMU001', 1),
(2, 'language', 'TMU001', 1),
(3, 'programming language', 'TMU001', 1),
(4, 'none of these', 'TMU001', 1),
(5, '60.67 km', 'TMU001', 2),
(6, '66.67 km approx.', 'TMU001', 2),
(7, '100 km', 'TMU001', 2),
(8, 'none of these', 'TMU001', 2),
(9, '15', NULL, 3),
(10, '19', NULL, 3),
(11, '13', NULL, 3),
(12, 'none of these', NULL, 3),
(13, '2n+1', 'TMU001', 4),
(14, 'n+1', 'TMU001', 4),
(15, 'n', 'TMU001', 4),
(16, '2n', 'TMU001', 4),
(17, ' 3&#8730;7', 'TMU001', 5),
(18, '(3+&#8730;7) (3-&#8730;7)', 'TMU001', 5),
(19, '(3+&#8730;7)', 'TMU001', 5),
(20, ' 3&#8730;7', 'TMU001', 5),
(21, 'rational number', 'TMU001', 6),
(22, 'Irrational number', 'TMU001', 6),
(23, 'Both', 'TMU001', 6),
(24, 'none of these', 'TMU001', 6),
(25, 'Whole numbers', 'TMU001', 7),
(26, 'Rational Numbers', 'TMU001', 7),
(27, 'Natural numbers', 'TMU001', 7),
(28, 'Integers', 'TMU001', 7),
(29, 'Whole numbers', 'TMU001', 8),
(30, 'Rational Numbers', 'TMU001', 8),
(31, 'Natural numbers', 'TMU001', 8),
(32, 'Even numbers', 'TMU001', 8),
(33, '65', 'TMU001', 9),
(34, '15', 'TMU001', 9),
(35, '13', 'TMU001', 9),
(36, '25', 'TMU001', 9),
(37, '&#8756; Loss percent of Raj is 21.667%.', 'TMU001', 10),
(38, '&#8756; Loss percent of Raj is 26.667%.', 'TMU001', 10),
(39, '&#8756; Profit percent of Raj is 26.667%.', 'TMU001', 10),
(40, 'none of these', 'TMU001', 10),
(41, '3.14 cm', 'TMU001', 11),
(42, '35.4 cm', 'TMU001', 11),
(43, '31.4 cm', 'TMU001', 11),
(44, '31 cm', 'TMU001', 11),
(45, '11:14', 'TMU001', 12),
(46, '22:7', 'TMU001', 12),
(47, '20:11', 'TMU001', 12),
(48, '14:11', 'TMU001', 12),
(49, 'Unsure event', 'TMU001', 13),
(50, 'Sure Event', 'TMU001', 13),
(51, 'Impossible event', 'TMU001', 13),
(52, 'Independent event', 'TMU001', 13),
(53, '&#8532;', 'TMU001', 14),
(54, '-1.5', 'TMU001', 14),
(55, '15%', 'TMU001', 14),
(56, '0.7', 'TMU001', 14),
(57, '3', 'TMU001', 15),
(58, '8', 'TMU001', 15),
(59, '&#8540;(3/8)', 'TMU001', 15),
(60, '8/3', 'TMU001', 15),
(61, '0.5', 'TMU001', 16),
(62, '0.66', 'TMU001', 16),
(63, '0.77', 'TMU001', 16),
(64, '0.08', 'TMU001', 16),
(65, '½ (1/2)', 'TMU001', 17),
(66, '3/2', 'TMU001', 17),
(67, '3', 'TMU001', 17),
(68, '4', 'TMU001', 17),
(69, '1/2', 'TMU001', 18),
(70, '1/5', 'TMU001', 18),
(71, '1/4', 'TMU001', 18),
(72, '4', 'TMU001', 18),
(73, '1/18', 'TMU001', 19),
(74, '3/18', 'TMU001', 19),
(75, '2/18', 'TMU001', 19),
(76, '1/36', 'TMU001', 19),
(77, '5/8', 'TMU001', 20),
(78, '8/13', 'TMU001', 20),
(79, '5/13', 'TMU001', 20),
(80, '5', 'TMU001', 20),
(81, 'extends Collections class', 'TMU001', 21),
(82, 'extends Iterable interface', 'TMU001', 21),
(83, 'implements Serializable interface', 'TMU001', 21),
(84, 'implements Traversable interface', 'TMU001', 21),
(85, 'framework and interface', 'TMU001', 22),
(86, 'framework and class', 'TMU001', 22),
(87, 'only interface', 'TMU001', 22),
(88, 'only class', 'TMU001', 22),
(89, 'extends', 'TMU001', 23),
(90, 'implements', 'TMU001', 23),
(91, 'both of the above', 'TMU001', 23),
(92, 'none of these', 'TMU001', 23),
(93, 'Arraylist', 'TMU001', 24),
(94, 'Vector', 'TMU001', 24),
(95, 'Hashtable', 'TMU001', 24),
(96, 'Only B & C', 'TMU001', 24),
(97, 'lists', 'TMU001', 25),
(98, 'Sets', 'TMU001', 25),
(99, 'Maps', 'TMU001', 25),
(100, 'All of the Above', 'TMU001', 25);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `StdId` varchar(255) DEFAULT NULL,
  `answerId` varchar(255) DEFAULT NULL,
  `collegeCode` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `questionsId` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `StdId`, `answerId`, `collegeCode`, `date`, `questionsId`) VALUES
(1, '1', '[2, 6, 11, 13, 18, 22, 27, 30, 35, 38, 43, 48, 51, 54, 59, 63, 65, 71, 73, 79, 82, 85, 89, 96, 97]', 'TMU001', '09/01/2021', '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `collagecode` varchar(255) DEFAULT NULL,
  `collagename` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `collagecode`, `collagename`, `date`, `dob`, `email`, `name`, `number`, `photo`, `status`) VALUES
(1, 'TMU001', 'TMU', '08/01/2021', '1998-08-24', 'bvrsoftware.com@gmail.com', 'sanjeev', '9149260839', '89693873Screenshot (19).png', 'Logout');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_rxe30nkchd4hib478dqd3rxvx` (`collegecode`) USING HASH;

--
-- Indexes for table `mcq25`
--
ALTER TABLE `mcq25`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mcq_anwser25`
--
ALTER TABLE `mcq_anwser25`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdtq6bx3sf1rpcut5aqycb7nb8` (`mcq25_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mcq25`
--
ALTER TABLE `mcq25`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mcq_anwser25`
--
ALTER TABLE `mcq_anwser25`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
