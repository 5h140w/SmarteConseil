-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 05:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarteconseil`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `Title` varchar(1000) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `HeaderImage` varchar(255) NOT NULL,
  `Introduction` mediumtext NOT NULL,
  `Description` text NOT NULL,
  `LastMod` datetime NOT NULL DEFAULT current_timestamp(),
  `Language` varchar(2) NOT NULL,
  `KeyWords` varchar(1000) NOT NULL,
  `State` int(11) NOT NULL,
  `NumVisit` int(11) NOT NULL,
  `IdTheme` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdHost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `Title`, `Image`, `HeaderImage`, `Introduction`, `Description`, `LastMod`, `Language`, `KeyWords`, `State`, `NumVisit`, `IdTheme`, `IdUser`, `IdHost`) VALUES
(1, 'Jasmina Roche', 'https://randomuser.me/api/portraits/med/women/59.jpg', 'https://randomuser.me/api/portraits/med/women/59.jpg', 'I\'m The IT Manager', 'An IT Manager is a professional who ensures that all employees have the technology they need to get their job done, from a reliable laptop and VPN access for remote workers who can\'t be reached otherwise, to up-close coordination with other departments like HR or finance so data is secure.\r\n', '2022-05-27 15:44:02', '3', 'Passion, ambitious', 1, 1, 1, 1, 1),
(2, 'Ben benjamin', 'https://randomuser.me/api/portraits/med/men/19.jpg', 'https://randomuser.me/api/portraits/med/men/19.jpg', 'I\'m the frontEnd Developer ( REACT & Angular)', 'Front-end developers are computer programmers who specialize in website design. Front-end developer duties include determining the structure and design of web pages, striking a balance between functional and aesthetic design, and ensuring web design is optimized for smartphones. Completely free trial, no card required.\r\n', '2022-05-25 15:53:34', '14', 'front-end, angular, react, JS, HTML CSS, Design...', 2, 2, 2, 2, 2),
(3, 'Astrid Rasmussen', 'https://randomuser.me/api/portraits/women/92.jpg', 'https://randomuser.me/api/portraits/women/92.jpg', 'Back end developer', 'Back-end developers create, code, and improve the server, server-side applications, and databases that, when combined with front-end codes, help create a functional, seamless experience for the end-user.\r\n', '2022-05-18 15:56:19', '1', 'Backend, PHP, Python, NodeJS , #NET', 3, 3, 3, 3, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
