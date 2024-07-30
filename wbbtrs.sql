-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 11:08 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbbtrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `category` varchar(10) NOT NULL DEFAULT 'second',
  `no` int(11) NOT NULL DEFAULT 1,
  `seat` varchar(30) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `plate_no` varchar(15) NOT NULL,
  `bus_owner_id` int(11) NOT NULL,
  `bus_driver_id` int(11) NOT NULL,
  `bus_tickchecker_id` int(11) NOT NULL,
  `bus_owner_name` varchar(100) NOT NULL,
  `bus_driver_name` varchar(100) NOT NULL,
  `bus_tickchecker_name` varchar(100) NOT NULL,
  `seat_cap` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `plate_no`, `bus_owner_id`, `bus_driver_id`, `bus_tickchecker_id`, `bus_owner_name`, `bus_driver_name`, `bus_tickchecker_name`, `seat_cap`, `category`) VALUES
(14, 'WP-GD-BX500', 0, 0, 0, 'Anura Perera', 'Nimal Fonseka', 'Chamara Rukmal', '60', 'Semi-Luxury'),
(15, 'WPGD 7561', 0, 0, 0, 'Mr Nishantha', 'Mr Pradip', 'Mr Samna', '50', 'Semi lucury');

-- --------------------------------------------------------

--
-- Table structure for table `bus_driver`
--

CREATE TABLE `bus_driver` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_owner`
--

CREATE TABLE `bus_owner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_tickchecker`
--

CREATE TABLE `bus_tickchecker` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(400) NOT NULL,
  `response` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `message`, `response`) VALUES
(20, 11, 'I have a cancellation issue. could u please explain you cancellation policy. bcz i want to cancell my ticket immidiately.', 'Dear Lahiru,\r\nI received your message.\r\nI think this answer is enough to resolve your problem.\r\nCancellations made 7 days or more in advance of the event date, will receive a 100% refund. Cancellations made within 3–6 days will incur a 20% fee. Cancellations made within 48 hours of the event will incur a 30% fee.'),
(21, 11, 'Hi i have issue', NULL),
(22, 11, 'good night\r\n', NULL),
(23, 11, 'Hi admin i have issue', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `loc` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`id`, `name`, `email`, `password`, `phone`, `address`, `loc`, `status`) VALUES
(9, 'Kasun Wimarhena', 'kasun123@gmail.com', '5d4bd76c46fb026499de64e0bc93daa6', '07071223255', 'Kandy', '417cfd6559f73d16719ee4f3d3ab77ff.jpg', 1),
(10, 'Nimantha perera', 'nima999@gmail.com', 'daf872ce3a00a511d6ebb0f5b6123834', '0704389094', 'Colombo', '8c9f004319a88ed173f533a0ac2c12af.jpg', 1),
(11, 'Lahiru SIlva', 'lahirusilva999@gmail.com', 'a94a207ad4dea48376a794ca8e56df97', '0711194313', 'No.59/2, Waththawa Road, Amandoluwa, Seeduwa', '84c3d90f217efefa21986dee1d8063e0.jpg', 1),
(12, 'Kasun Silva', 'kasunsilva89@gmail.com', '2aaf40dd055195d84aa27edb6990b50d', '0789638989', 'No.60/2, Baseline Road, Seeduwa', 'dfecf4fd9e74e15c3131ac6322c7bf49.jpg', 1),
(13, 'Samadhi perera', 'samadhi89@gmail.com', '89d3a98073e5175d018ff1119b2c7bc1', '0745899621', 'No.20/2, Araliya garden, Negombo', '038763258ca91083958c1b19adee7982.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ref` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `passenger_id`, `schedule_id`, `amount`, `ref`, `date`) VALUES
(46, 11, 122, '182', 'WGY8PVFHTQ', 'Thu, 04-May-2023 01:21:26 PM');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `no` varchar(15) NOT NULL,
  `start` varchar(100) NOT NULL,
  `stop` varchar(100) NOT NULL,
  `distance` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `no`, `start`, `stop`, `distance`) VALUES
(11, '240', 'Colombo', 'Negombo', '40km'),
(18, '01', 'Colombo', 'Kandy', '146km'),
(20, '188', 'Colombo', 'Raddoluwa', '32km'),
(21, '4', 'Colombo', 'Chilaw', '83km');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `route_no` varchar(15) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `esti_arrive_time` varchar(10) DEFAULT NULL,
  `depart_time` varchar(10) DEFAULT NULL,
  `route_distance` varchar(15) DEFAULT NULL,
  `fee` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `bus_id`, `route_id`, `route_no`, `date`, `time`, `esti_arrive_time`, `depart_time`, `route_distance`, `fee`) VALUES
(114, 14, 21, NULL, '20-04-2023', '09:17', NULL, NULL, NULL, 300),
(115, 14, 21, NULL, '20-04-2023', '09:17', NULL, NULL, NULL, 300),
(116, 14, 18, NULL, '24-04-2023', '06:45', NULL, NULL, NULL, 500),
(117, 14, 18, NULL, '24-04-2023', '06:45', NULL, NULL, NULL, 500),
(118, 14, 20, NULL, '26-04-2023', '16:14', NULL, NULL, NULL, 200),
(119, 14, 20, NULL, '26-04-2023', '16:14', NULL, NULL, NULL, 200),
(120, 15, 21, NULL, '02-05-2023', '10:34', NULL, NULL, NULL, 500),
(121, 15, 21, NULL, '02-05-2023', '10:34', NULL, NULL, NULL, 500),
(122, 15, 20, NULL, '09-05-2023', '07:18', NULL, NULL, NULL, 180),
(123, 14, 18, NULL, '25-05-2023', '08:38', NULL, NULL, NULL, 500),
(124, 14, 18, NULL, '25-05-2023', '08:38', NULL, NULL, NULL, 500),
(125, 14, 11, NULL, '17-05-2023', '04:30', NULL, NULL, NULL, 222),
(126, 14, 11, NULL, '17-05-2023', '04:30', NULL, NULL, NULL, 222);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(3, 'john@admin.com', 'd00f5d5217896fb7fd601412cb890830');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`,`user_id`,`payment_id`) USING BTREE,
  ADD KEY `schedule_id_2` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_owner_id` (`bus_owner_id`),
  ADD KEY `bus_driver_id` (`bus_driver_id`),
  ADD KEY `bus_tickchecker_id` (`bus_tickchecker_id`);

--
-- Indexes for table `bus_driver`
--
ALTER TABLE `bus_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_owner`
--
ALTER TABLE `bus_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_tickchecker`
--
ALTER TABLE `bus_tickchecker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passenger_id` (`passenger_id`,`schedule_id`),
  ADD KEY `passenger_id_2` (`passenger_id`) USING BTREE,
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `bus_id` (`bus_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bus_driver`
--
ALTER TABLE `bus_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_owner`
--
ALTER TABLE `bus_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_tickchecker`
--
ALTER TABLE `bus_tickchecker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `passenger` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bus_driver`
--
ALTER TABLE `bus_driver`
  ADD CONSTRAINT `bus_driver_ibfk_1` FOREIGN KEY (`id`) REFERENCES `bus` (`bus_driver_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bus_owner`
--
ALTER TABLE `bus_owner`
  ADD CONSTRAINT `bus_owner_ibfk_1` FOREIGN KEY (`id`) REFERENCES `bus` (`bus_owner_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bus_tickchecker`
--
ALTER TABLE `bus_tickchecker`
  ADD CONSTRAINT `bus_tickchecker_ibfk_1` FOREIGN KEY (`id`) REFERENCES `bus` (`bus_tickchecker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
