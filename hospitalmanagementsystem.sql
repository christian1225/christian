-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2017 at 11:11 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospitalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `name` varchar(200) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`name`, `date`) VALUES
('Aika Melanie Dionisio', '2017-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `name`, `user`, `pass`) VALUES
(9, 'Aika Melanie Dionisio', 'aika', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE IF NOT EXISTS `discounts` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `discount` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `name`, `discount`, `status`) VALUES
(1, '', '', '0'),
(2, 'Phil healths', '5', '1'),
(3, 'SSS', '10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(225) NOT NULL,
  `services_id` varchar(225) NOT NULL,
  `qty` varchar(225) NOT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `transaction_id`, `services_id`, `qty`) VALUES
(5, '88', '1', '1'),
(6, '8', '1', '1'),
(7, '8', '11', '1'),
(8, '8', '3', '1'),
(9, '9', '1', '1'),
(10, '10', '1', '1'),
(11, '11', '4', '1'),
(12, '12', '1', '1'),
(13, '15', '3', '1'),
(14, '15', '1', '1'),
(15, '15', '5', '1'),
(17, '17', '3', '1'),
(18, '17', '3', '1'),
(19, '17', '1', '1'),
(20, '16', '1', '1'),
(21, '16', '5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders_discount`
--

CREATE TABLE IF NOT EXISTS `orders_discount` (
  `orders_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(225) NOT NULL,
  `discount_id` varchar(225) NOT NULL,
  PRIMARY KEY (`orders_discount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders_discount`
--

INSERT INTO `orders_discount` (`orders_discount_id`, `transaction_id`, `discount_id`) VALUES
(2, '8', '3'),
(3, '9', '3'),
(4, '10', '3'),
(5, '11', '3'),
(6, '12', '3'),
(7, '15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `orders_rooms`
--

CREATE TABLE IF NOT EXISTS `orders_rooms` (
  `orders_rooms_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(225) NOT NULL,
  `room_id` varchar(225) NOT NULL,
  `qty` varchar(225) NOT NULL,
  PRIMARY KEY (`orders_rooms_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `orders_rooms`
--

INSERT INTO `orders_rooms` (`orders_rooms_id`, `transaction_id`, `room_id`, `qty`) VALUES
(7, '8', '2', '2'),
(8, '9', '1', '1'),
(9, '10', '1', '1'),
(10, '11', '1', '1'),
(11, '12', '1', '1'),
(12, '15', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `birthday` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `confine` varchar(225) NOT NULL,
  `room` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `name`, `birthday`, `gender`, `address`, `phone`, `email`, `confine`, `room`, `status`) VALUES
(13, 'Justin Jaring', '1996-08-06', 'Male', 'Binakayan, Cavite', '09993628811', 'asd@gmail.com', 'In', '', '1'),
(14, 'Angel Locsin', '2016-11-30', 'Male', '061 dao st. marikina heights\r\n061 dao st. marikina heights', '639489101882', '', 'out', '', '0'),
(15, 'Rinell Dimara', '2016-11-30', 'Male', 'Dasmarinas, Cavite', '21312', '', 'out', '', '1'),
(16, 'a b. v', '2016-09-07', 'Male', 'asd', 'alakneth@gmail.com', '', 'In', 'none', '0'),
(17, 'Eugene Rey La Chica', '1996-06-19', 'Male', 'Dasmarinas, Cavite', '12354678', '123sd@gmail.com', 'In', 'none', '1'),
(18, 'Christian Magno', '1987-09-23', 'Male', 'Bacoor, Cavite', '12312512', 'sd123123a@gmail.com', 'In', 'none', '1'),
(20, 'Russel C. Lungcay', '1996-10-13', 'Male', 'Bacoor, Cavite', '639489101882', 'alakneth@gmail.com', 'in', 'none', '0'),
(21, 'Joan C. Candelaria', '1991-11-03', 'Female', 'Rizal', '639489101882', 'alakneth@gmail.com', 'out', 'none', '0'),
(22, 'Aika Melanie Dionisio', '1996-09-19', 'Female', 'Imus', '09354145251', '', 'In', 'none', '1');

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE IF NOT EXISTS `physician` (
  `physician_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `fee` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `license` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `bday` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  PRIMARY KEY (`physician_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`physician_id`, `name`, `phone`, `fee`, `img`, `status`, `license`, `email`, `bday`, `address`) VALUES
(5, 'Anne Curtis', '09354145251', '234', 'IMG_20160819_132207.jpg', '1', '123599946743', 'MiamiJackson@gmail.com', '1979-12-31', 'Baliuag bulacan'),
(6, 'Liza Soberano', '09354145251', '10000', 'IMG_20160909_111739.jpg', '1', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `number` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `name`, `category`, `price`, `status`, `number`, `description`) VALUES
(1, '4th floor dengue ward', 'Private', '120', '1', '34', 'asds23124352134'),
(2, '1st floor ICU', 'Private', '1233', '1', '21', 'asd'),
(3, 'asd11', 'Private', '123', '0', '53', 'asd'),
(4, 'a', 'ICU', '12', '1', '2', 'asdasd'),
(5, '1', 'Private', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `services_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  PRIMARY KEY (`services_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `name`, `category`, `description`, `price`, `status`) VALUES
(1, 'Checkup', 'Services', 'Checkup', '300', '1'),
(2, 'Blood Chem', 'Laboratory', 'Blood Checking', '450', '1'),
(3, 'Ascof Lagundi', 'Pharmacy', 'For cough', '80', '1'),
(4, 'Wheel Chair', 'Utilities', 'Full metal', '2000', '1'),
(5, 'Private Room', 'Utilities', 'Fully airconditioned', '2000', '1'),
(6, 'General Checkup', 'Doctors Fee', 'Check everything', '999', '1'),
(7, 'Parasetamol Biogesic', 'Pharmacy', 'For headache', '45', '1'),
(8, 'Anti Tetano Vaccine', 'Services', 'For prevention', '350', '1'),
(9, 'X-ray', 'Laboratory', 'Super X-ray', '400', '1'),
(10, 'UltraSound', 'Laboratory', 'See everything', '3000', '1'),
(11, 'asd', 'Services', 'asd', '123', '0'),
(12, 'a', 'Pharmacy', 'aasdasd', '123', '0'),
(13, 'as', 'Pharmacy', 'as', '23', '0');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(225) NOT NULL,
  `patient_id` varchar(225) NOT NULL,
  `physician_id` varchar(225) NOT NULL,
  `total` varchar(225) NOT NULL,
  `payment_status` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `date`, `patient_id`, `physician_id`, `total`, `payment_status`, `status`) VALUES
(14, '2017-04-26 08:26:00', '10', '1', '5000', 'cash', '1'),
(15, '2017-04-27 18:31:57', '11', '2', '6000', 'cash', '1'),
(16, '2017-04-28 20:26:57', '13', '5', '2300', '0', '1'),
(17, '2017-05-01 18:45:56', '13', '5', '460', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `user` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `user`, `pass`, `role`, `img`, `status`) VALUES
(1, 'Justin Jaring', 'admin', '1234', '1', 'justin.jpg', '1'),
(2, 'Rinell Dimara', 'staff', '1234', '0', 'rinell.jpg', '1'),
(3, 'Black Blue', 'staff2', '1234', '0', 'backblue.gif', '0'),
(4, 'Christian Magno', 'cashier', '1234', '0', 'magno.jpg', '1'),
(5, 'Eugene Rey La Chica', 'eugene', '1234', '0', 'eugene.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `visitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `stat` varchar(225) NOT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `visitors`
--


-- --------------------------------------------------------

--
-- Table structure for table `visitor_acc`
--

CREATE TABLE IF NOT EXISTS `visitor_acc` (
  `va_id` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  PRIMARY KEY (`va_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `visitor_acc`
--

INSERT INTO `visitor_acc` (`va_id`, `pass`, `name`, `email`, `code`, `status`) VALUES
(1, '1234', 'tester', '639489101882', 'v4w8diph', '1'),
(2, '1234', 'jomar', '639364470607', 'sjiozuf4', '0');
