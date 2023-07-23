-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 09:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milestone`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ORDERNO` varchar(20) NOT NULL,
  `PRODUCTNAME` text NOT NULL,
  `PRICE` decimal(10,0) NOT NULL,
  `GENRE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ORDERNO`, `PRODUCTNAME`, `PRICE`, `GENRE`) VALUES
(1, '1', 'Godfather', '10', 'Crime'),
(2, '2', 'Morbius', '20', 'Superhero');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` varchar(45) NOT NULL,
  `enabled` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `enabled`) VALUES
(1, 'Jakin', '$2a$10$rTlyGiX/sZFa2UR6bcayLOssdUICcQ9DAtG/fWHFGsBVE4dXrU9Gq', 'ROLE_USER', 1),
(2, 'Eli', '$2a$10$rTlyGiX/sZFa2UR6bcayLOssdUICcQ9DAtG/fWHFGsBVE4dXrU9Gq', 'ROLE_USER', 1),
(3, 'test', '$2a$10$6sECnp8NUs./lx7vqVMjrun1dzyOMLmVXs8ad3/4X8hXcYlmaS7mK', 'ROLE_USER', 1),
(4, 'test1', '$2a$10$2NsTSCCeP/08txHtojk0buh2up0dA4JhF3P7ixA4/R0TH2fwjggv6', 'ROLE_USER', 1),
(5, 'test', '$2a$10$xUEZwttCdzQr6CZQHvJXB.mMELnd2lRhVyrwMT68ZKsXnoamTtGW.', 'ROLE_USER', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
