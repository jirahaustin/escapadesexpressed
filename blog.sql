-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 04:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(5, 'Eco-tourism', 'This is travel that focuses on environmental conservation and sustainability. It involves visiting natural habitats, national parks, and other protected areas to learn about conservation efforts and the importance of protecting our planet.'),
(6, 'Family Travel', 'Traveling with children requires specific planning and considerations. This travel category includes activities and destinations that are family-friendly and suitable for kids of all ages.'),
(7, 'Solo', 'Traveling alone can be a liberating and rewarding experience. This category includes destinations and activities that are suitable for solo travelers, such as backpacking or visiting cities known for their vibrant nightlife.'),
(15, 'Heights', 'q');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(7, 'Post 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Venenatis urna cursus eget nunc. Rutrum quisque non tellus orci ac auctor augue. Sit amet nisl purus in mollis nunc sed. Netus et malesuada fames ac turpis egestas. Elementum tempus egestas sed sed risus pretium. Odio morbi quis commodo odio aenean. Aliquam vestibulum morbi blandit cursus risus. Ultrices in iaculis nunc sed augue lacus. Aliquam eleifend mi in nulla. Lacinia quis vel eros donec ac odio tempor orci dapibus.', '1683448345philipp-kammerer-6Mxb_mZ_Q8E-unsplash (1).jpg', '2023-05-07 08:32:25', 7, 8, 0),
(9, 'Post 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Venenatis urna cursus eget nunc. Rutrum quisque non tellus orci ac auctor augue. Sit amet nisl purus in mollis nunc sed. Netus et malesuada fames ac turpis egestas. Elementum tempus egestas sed sed risus pretium. Odio morbi quis commodo odio aenean. Aliquam vestibulum morbi blandit cursus risus. Ultrices in iaculis nunc sed augue lacus. Aliquam eleifend mi in nulla. Lacinia quis vel eros donec ac odio tempor orci dapibus.', '1683450178dsdsads.jpg', '2023-05-07 09:02:58', 6, 8, 0),
(10, 'Post 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Venenatis urna cursus eget nunc. Rutrum quisque non tellus orci ac auctor augue. Sit amet nisl purus in mollis nunc sed. Netus et malesuada fames ac turpis egestas. Elementum tempus egestas sed sed risus pretium. Odio morbi quis commodo odio aenean. Aliquam vestibulum morbi blandit cursus risus. Ultrices in iaculis nunc sed augue lacus. Aliquam eleifend mi in nulla. Lacinia quis vel eros donec ac odio tempor orci dapibus.', '1683450600eva-darron-oCdVtGFeDC0-unsplash.jpg', '2023-05-07 09:10:00', 6, 8, 0),
(12, 'Post 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Venenatis urna cursus eget nunc. Rutrum quisque non tellus orci ac auctor augue. Sit amet nisl purus in mollis nunc sed. Netus et malesuada fames ac turpis egestas. Elementum tempus egestas sed sed risus pretium. Odio morbi quis commodo odio aenean. Aliquam vestibulum morbi blandit cursus risus. Ultrices in iaculis nunc sed augue lacus. Aliquam eleifend mi in nulla. Lacinia quis vel eros donec ac odio tempor orci dapibus.', '1683451163dsdsads.jpg', '2023-05-07 09:19:23', 5, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(5, 'rick', 'sanchez', 'ricks', 'ricks@gmail.com', '$2y$10$yaEyCwN8J21v.zi/HTJa6OZDtty6DsXxJvgWrJlFr8nyHUygMHmtW', '1683295649suit_PNG93208.png', 0),
(7, 'JirahMae', 'austin', 'Jimae', 'jimae123@gmail.com', '$2y$10$q6qjJuRjCSYwh3vOGXdgKuPC4rt13.3A2Dzap3VIpJa/tlEcjtTFy', '1683437481selfie.jpg', 0),
(8, 'Jirah', 'Austin', 'Jirah', 'mimah@gmail.com', '$2y$10$5cU2/ynHx8DqoB6MPTUGAuwDOoZfl3BynpUYKuI/1.N.bv/W4FufS', '1683437540selfie.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
