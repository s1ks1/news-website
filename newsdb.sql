-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2023 at 12:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` varchar(50) NOT NULL,
  `category_id` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `tag`, `category_id`, `created`, `modified`, `user_id`) VALUES
(1, 'Prve vijesti na ovom sajtu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper hendrerit consequat. Pellentesque ornare mi sit amet velit dictum cursus. Vivamus vitae consequat quam. Sed fringilla lectus quis scelerisque laoreet. Etiam id ipsum ut risus eleifend condimentum vitae sed enim. In faucibus gravida rutrum. Aenean in nulla et risus euismod blandit. Integer blandit arcu non libero fermentum tincidunt. Donec eu interdum ligula. Phasellus cursus egestas augue, sit amet semper ligula tempor id. Cras ultrices massa urna, nec pretium nulla varius sit amet. Donec vehicula mauris in risus tempus, in fringilla erat condimentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus eget laoreet est. Nullam non feugiat mauris.', 'latest', 2, '2023-08-19 01:12:26', '2023-08-18 23:25:45', 1),
(2, 'Druge vijesti na ovom sajtu', 'Integer magna ex, feugiat id enim a, volutpat fringilla nunc. Praesent ullamcorper lacus non odio aliquet, a fermentum enim condimentum. Etiam posuere eros sem, eu luctus dui fringilla id. Phasellus in pellentesque tellus, ac facilisis justo. Fusce porta ipsum sed convallis hendrerit. Proin dictum mauris vitae viverra elementum. In fringilla leo ac neque sodales commodo. Quisque ultricies justo ipsum, ac molestie turpis congue eu. Duis vestibulum ac ante sed vestibulum. Mauris viverra vulputate nibh, eget ornare leo convallis sed. Praesent euismod libero vitae nisl pulvinar mattis. Vivamus luctus lorem ex, in sodales neque ultrices sit amet. Mauris imperdiet risus vel ipsum finibus feugiat. In consequat viverra ante, ut dignissim diam hendrerit nec.', 'latest', 1, '2023-08-19 01:14:12', '2023-08-18 23:20:46', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
