-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 10:10 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smallphpfunctions`
--

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `city` varchar(62) NOT NULL,
  `locality` varchar(62) NOT NULL,
  `address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `city`, `locality`, `address`) VALUES
(1, 'Hyderabad', 'Habsiguda', 'Habsiguda Main Rd, Nagendra Nagar, Habsiguda, Hyderabad, Telangana 500007'),
(2, 'Hyderabad', 'Abids', '1A, Opposite Chermas, Methodist Complex, Abids, Hyderabad, Telangana 500001'),
(3, 'Hyderabad', 'Jubilee Hills', 'Pillar no-24, 797/A, Sai Krishna, Road No.36, Jubilee Hills, Hyderabad, Telangana 500033'),
(4, 'Hyderabad', 'Kukatpally', '103 & 104,Alluri Trade Centre, Opp.KPHB Colony, Bhagya Nagar Colony, Kukatpally, Hyderabad, Telangana 500072'),
(5, 'Hyderabad', 'Chandanagar', '2-85, Beside Swagath Hotel, Service Road, Chandanagar, Hyderabad, Telangana 500050'),
(6, 'Bangalore', 'Kaggadasapura', 'Kaggadasapura Main Rd, Varsova Layout, Kaggadasapura, Bengaluru, Karnataka 560093'),
(7, 'Bangalore', 'Shivaji Nagar', 'No 37, GF, Everjoy Building, Commercial Street, Shivaji Nagar, Bengaluru, Karnataka 560001'),
(8, 'Bangalore', 'RR Nagar', 'Jawaharlal Nehru Rd, BEML Layout 3rd Stage, RR Nagar, Bengaluru, Karnataka 560098'),
(9, 'Bangalore', 'Panduranga Nagar', 'No 204 & 205, Bannerghatta Main Rd, opp. to HSBC, Panduranga Nagar, Bengaluru, Karnataka 560076'),
(10, 'Bangalore', 'Kalyan Nagar', 'No 4M, 404, Kammanahalli Main Rd, HRBR Layout 2nd Block, HRBR Layout, Kalyan Nagar, Bengaluru, Karnataka 560033'),
(12, 'Bangalore', 'Malleshwaram', 'Shop No. 187 & 188, Sampige Road, 10th Cross Rd, Vyalikaval, Malleshwaram, Bengaluru, Karnataka 560003'),
(13, 'Delhi', 'Mayur Vihar', 'C4/17 , ACHARYA NIKETAN MARKET ,, MAYUR VIHAR PHASE 1, Delhi, 110091'),
(14, 'Delhi', 'Kamla Nagar', 'Premises Bearing, No 47, Bungalow Rd, Kamla Nagar, New Delhi, Delhi 110009'),
(15, 'Delhi', 'Rohini', 'SHOP NO-10, SEC- 7, E1 Rd, near Tanishq, Vijay vihar Phase I, Vijay Vihar, Sector 4, Rohini, New Delhi, Delhi 110085'),
(16, 'Delhi', 'Paschim Vihar', 'A-3/1, Main Road Village, opp. DDA Market, Jwalaheri Village, Paschim Vihar, New Delhi, Delhi 110063'),
(17, 'Delhi', 'South Ex', 'F42, South Extension, Block F, South Extension I, New Delhi, Delhi 110049'),
(18, 'Delhi', 'Connaught Place', 'E-3, Rajiv Chowk, Next to Tanishq, Block E, Connaught Place, New Delhi, Delhi 110001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
