-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 15, 2023 at 01:10 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `agency_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`agency_id`, `email`, `name`, `contact_number`, `city`, `password`) VALUES
(2, 'sundavid7740@gmail.com', 'John', '5405583147', 'Coventry', '$2y$10$ugqbbvkPp/Dt79I4.9RB2e5vT9daO8z98rdZqbxUQOO75tsegRhRG'),
(3, 'ad.briggs@hotmail.com', 'Adolf Briggs', '5405583147', 'Blacksburg', '$2y$10$oDYeXwzTqukqhLQUdiwyL.rqUMb9udhnNabiR95d/N/3g1qTFKiHy'),
(4, 'phil@vt.edu', 'Phil Huber', '54055833546', 'Blacksburg', '$2y$10$VdGhxDxbjJ7mf.AQ7mVY4.K0M/xH2o71xfgdEcdk7nspOcDu2YLHO');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `vehicle_number` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `seating_capacity` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`vehicle_number`, `model`, `seating_capacity`, `rent`, `agency_id`) VALUES
('UK07 BH 7777', 'Crysler', 4, 20, 2),
('UK07 BH 7789', 'Honda', 4, 400, 4),
('UK07 BH 7790', 'Toyota', 4, 350, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `email`, `name`, `license_number`, `city`, `password`) VALUES
(1, 'sundavid93@yahoo.com', 'Sunday Ubur', 'AA 12 1234 1234567', 'Blacksburg', '$2y$10$HeYwnZr/yvqzHape66df4OUrIJkLny8suGa2YYs7kI7uiobBij1um'),
(2, 'joel.osteen@lakewood.org', 'Joel Osteen', 'AA 12 1234 12342346', 'Blacksburg', '$2y$10$YAD9NXg5/VqbN05okTFr0.F0GLYE.bf8Gc0dKvECpPTd/o.2/8Ozm'),
(3, 'sundavid7740@gmail.com', 'Sunday Doe', 'AA 12 1234 1234456', 'Coventry', '$2y$10$ByHum3F7u0vcvPdpilV8IOFU5w7ZaqrKJmsDESUJKlAWN5I8uSqqq');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL,
  `vehicle_number` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rent_id`, `vehicle_number`, `customer_id`, `days`, `start_date`) VALUES
(1, 'UK07 BH 7790', 1, 2, '2023-02-20'),
(2, 'UK07 BH 7789', 3, 2, '2023-02-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`agency_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`vehicle_number`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `agency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
