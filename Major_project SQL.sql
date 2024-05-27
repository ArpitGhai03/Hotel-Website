-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 03:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `major project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'Arpit', '6040');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(4, 'IMG_71677.png'),
(5, 'IMG_59357.png'),
(6, 'IMG_88681.png'),
(7, 'IMG_30109.png'),
(8, 'IMG_18384.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'XYZ, A/Cantt, Haryana', 'https://maps.app.goo.gl/Gu5Se2rQGtceANBC9', 919729822294, 919729822294, 'arpitghai04@gmail.com', 'https://www.facebook.com/arpit.ghai.566', 'https://www.instagram.com/arpit_ghai_03/', 'https://twitter.com/?lang=en', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55086.675761624516!2d76.8380393!3d30.353302!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fb6482e623f7b:0x1814169a97109fae!2sAmbala Cantt, Haryana!5e0!3m2!1sen!2sin!4v1699899301255!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(7, 'IMG_79871.svg', 'Room Heater', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates odit molestias illo vel non distinctio temporibus magni doloremque nulla? Lorem ip'),
(8, 'IMG_86168.svg', 'Air Conditioner', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates odit molestias illo vel non distinctio temporibus magni doloremque nulla? Lorem ip'),
(9, 'IMG_65998.svg', 'Spa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates odit molestias illo vel non distinctio temporibus magni doloremque nulla? Lorem ip'),
(10, 'IMG_94296.svg', 'WiFi', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates odit molestias illo vel non distinctio temporibus magni doloremque nulla? Lorem ip'),
(11, 'IMG_20097.svg', 'Television', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates odit molestias illo vel non distinctio temporibus magni doloremque nulla? Lorem ip'),
(12, 'IMG_64700.svg', 'Geyser', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates odit molestias illo vel non distinctio temporibus magni doloremque nulla? Lorem ip');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(5, 'Bedroom'),
(8, 'Balcony'),
(9, 'Refrigerator'),
(11, 'Balcony');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(19, 'Simple Room', 150, 2000, 50, 3, 2, 'Testing', 1, 1),
(20, 'Simple Room', 100, 2500, 5, 3, 2, 'Testing', 1, 1),
(21, 'Deluxe Room', 90, 2500, 5, 3, 2, 'Testing', 1, 1),
(22, 'Supreme Room', 100, 5000, 2, 3, 3, 'Testing', 1, 1),
(23, 'o;vkr', 698, 34, 23, 4, 5, 'wr4o&#039;', 1, 1),
(24, 'Simple Room', 215, 1499, 4, 5, 4, 'Welcome to the simplicity and comfort of our hotel&#039;s standard room – a cozy retreat designed to provide you with a restful stay. As you step through the door, you&#039;ll immediately notice the clean and uncluttered ambiance, creating a peaceful atmosphere that invites relaxation.\r\n\r\nThe walls are painted in soothing neutral tones, complemente', 1, 0),
(25, 'Standard Room', 270, 2499, 4, 5, 4, 'Discover Comfort in Every Detail: Our Standard Rooms at Hotel\r\nStep into a world of tranquility and comfort with our thoughtfully designed standard rooms at Hotel. Nestled in the heart of Ambala Cantt, our standard rooms offer a perfect blend of functionality and relaxation, ensuring a memorable stay for every guest.', 1, 0),
(26, 'Deluxe Room', 300, 4499, 4, 5, 4, 'Elevate Your Stay: Unwind in Style with Our Deluxe Rooms at Hotel\r\nExperience a new level of luxury and sophistication in our Deluxe Rooms at Hotel. Nestled in the heart of Ambala Cantt, these carefully curated spaces are designed to exceed your expectations and provide a truly indulgent retreat during your stay.', 1, 1),
(27, 'rqwr', 12, 45, 56, 5, 6, 'gf678', 1, 1),
(28, 'Deluxe Room', 500, 10000, 3, 3, 2, 'super comfortable', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(63, 0, 7),
(64, 0, 8),
(65, 0, 9),
(66, 0, 12),
(97, 24, 8),
(98, 24, 10),
(99, 24, 11),
(100, 25, 7),
(101, 25, 8),
(102, 25, 10),
(103, 25, 11),
(111, 28, 7),
(112, 28, 8),
(113, 28, 9),
(114, 28, 10),
(115, 28, 11),
(116, 28, 12);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(33, 0, 5),
(34, 0, 7),
(35, 0, 8),
(51, 24, 5),
(52, 25, 5),
(53, 25, 8),
(58, 28, 5),
(59, 28, 8),
(60, 28, 9),
(61, 28, 11);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(300) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Hotel', 'Welcome to Hotel, your gateway to comfort and convenience in the heart of Ambala Cantt. As a proud 3-star establishment, we strive to provide a welcoming atmosphere, ensuring a delightful stay for every guest.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(11, '1', 'IMG_42932.png'),
(12, '2', 'IMG_69016.png'),
(13, '3', 'IMG_20562.png'),
(14, '4', 'IMG_16633.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(12, 'Arpit', 'arpitvalorant09@gmail.com', '104 Mati Dass Nagar ,Mahesh Nagar\r\nNear Shiv Mandir', '9729822294', 133001, '2003-11-03', '$2y$10$xbRvfOHeOUq/4xXry7V2N.bLP28hm0nuwoUXM5eSIABbgDDEXlTOu', 1, '7cc4ce60c67aff0027f510f40bac0323', NULL, 1, '2023-11-28 13:56:00'),
(13, 'KIRA', 'kira@gmail.com', '104 Mati Dass Nagar ,Mahesh Nagar\r\nNear Shiv Mandir', '547483', 133001, '2024-03-05', '$2y$10$9vc5qcb3PcHM9Va0E7tf2eDc6E4rE5u4838Pzxhkiwan4so/uwR56', 0, '4827dff8bd3745c6a22cc8247b2ba83a', NULL, 1, '2024-03-03 20:58:00'),
(14, 'KIRA', 'kira@gmail.com', '104 Mati Dass Nagar ,Mahesh Nagar\r\nNear Shiv Mandir', '547483', 133001, '2024-03-05', '$2y$10$0ucFuGmfqNNh5f5vqPRWkuetpbEhJIUNbwFMgq8vOVp4BAak2Nmxy', 0, '5df95dbb6a32f4a2d62171ce2eabc11d', NULL, 1, '2024-03-03 20:58:00'),
(15, 'KIRA', 'kira@gmail.com', '104 Mati Dass Nagar ,Mahesh Nagar\r\nNear Shiv Mandir', '547483', 133001, '2024-03-05', '$2y$10$QpshBA/PL.AKqLKU/2TLR.zvYo6banLsHU6O9tVlQ1K47yebN4RPK', 0, '6a671d013d34c28fe1e8e86096f67eef', NULL, 1, '2024-03-03 20:58:00'),
(16, 'KIRA', 'kira@gmail.com', '104 Mati Dass Nagar ,Mahesh Nagar\r\nNear Shiv Mandir', '547483', 133001, '2024-03-05', '$2y$10$rMRyMxvOSM4FVZ8OjAXe3O09D8hgfpystXKk/6akAfz00FwWfgekK', 0, 'cfa625b063756d58e76bb242732e45dc', NULL, 1, '2024-03-03 20:58:00'),
(17, 'Arpit', 'arpitvalorant09@gmail.com', '', '12524', 0, '0000-00-00', '$2y$10$f3g0Yl.ORNB78dgUl96EFurD3jc89tVqKQ.VgZ/geO4P4h0vyQ7A6', 0, '78170afd864fbfa5fd8b72b4458695d5', NULL, 1, '2024-03-03 20:59:29'),
(18, 'KIRA', 'arpitghai04@gmail.com', '', '', 0, '0000-00-00', '$2y$10$cqVbptrwaPkvUXJ8FFobLOKxFM2kdJC7kHv7cI.WtTKeU19BwFECy', 0, 'ca811e94888fb8419e169765830657fd', NULL, 1, '2024-03-03 21:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(29, 'KIRA', 'arpitvalorant09@gmail.com', 'Testing', 'gwqh2', '2024-03-03', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_facilities_ibfk_1` (`facilities_id`),
  ADD KEY `room_facilities_ibfk_2` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features_id` (`features_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_images_ibfk_1` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `room_features_ibfk_1` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room_features_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
