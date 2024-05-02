-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 08:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'zunayed@gmail.com', 1, '2024-01-09 18:30:00', '2024-05-01 18:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2024-01-11 18:30:00', '2024-01-31 05:43:16', 1),
(5, 'Entertainment', 'Entertainment related  News', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(6, 'Politics', 'Politics', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(7, 'Business', 'Business', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(8, 'COVID-19', 'COVID-19', '2024-01-11 18:30:00', '2024-01-31 05:43:25', 1),
(9, 'Education', 'Education related post', '2024-05-01 17:34:15', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Welcome to News Portal, your one-stop destination for staying informed and up-to-date with the latest news and developments from around the world.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">At&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif; font-size: 26px;\">News Portal</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">, we understand the importance of reliable and timely information in today\'s fast-paced world. Our team of dedicated journalists and editors work tirelessly to bring you the most relevant and engaging stories from a variety of sources, ensuring that you are always well-informed on the issues that matter most to you.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Whether you\'re interested in politics, sports, entertainment, technology, or business, you\'ll find it all here on&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif; font-size: 26px;\">News Portal</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">. Our user-friendly interface makes it easy to navigate through the latest headlines, explore in-depth articles, and discover new perspectives on the events shaping our world.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">But&nbsp;</span></font><span style=\"color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif; font-size: 26px;\">News Portal</span><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">&nbsp;is more than just a news website – it\'s a community of curious minds and engaged citizens who come together to discuss, debate, and share ideas. We believe in the power of journalism to inspire change and foster understanding, and we\'re committed to providing a platform where voices from all walks of life can be heard.<br></span></font><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Join us on our mission to inform, inspire, and empower. Together, we can make a difference.</span></font></p>', '2024-01-14 18:30:00', '2024-03-03 16:56:17'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; Md. Zunayed Ahmed</b></p><p><b>Phone Number : </b>01581713451</p><p><b>Email -id :</b>zunayed@gmail.com</p>', '2024-01-15 18:30:00', '2024-05-01 17:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(14, 'Extreme heat shuts schools for millions, widening learning gaps worldwide', 9, 11, '<p><span style=\"color: rgb(86, 86, 86); font-family: &quot;Source Serif Pro&quot;, serif; font-size: 20px; font-style: italic;\">Many Bangladeshi schools don\'t have fans, the ventilation is not good, and they might have tin roofing which does not provide good insulation.</span><span style=\"color: rgb(84, 84, 84); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px;\">An empty classroom of a school named Udayan Uchcha Madhyamik Bidyalaya, is pictured as all schools are closed due to ongoing heatwave in Dhaka, Bangladesh, Apr 25, 2024. REUTERS</span><br></p>', '2024-05-01 17:43:05', '2024-05-01 18:12:56', 1, 'Extreme-heat-shuts-schools-for-millions,-widening-learning-gaps-worldwide', 'a2a3aacea7a13e90b4bd2357d43c1004.jpg', 1, 'admin', NULL),
(15, 'Bangladesh appoints Pakistan great Mushtaq Ahmed as spin bowling coach for T20 WC', 3, 4, '<p><font face=\"Comic Sans MS\"><span style=\"color: rgb(86, 86, 86); font-size: 20px; font-style: italic;\">He will work with the Tigers until the end of the T20 World Cup.</span><span style=\"color: rgba(0, 0, 0, 0.9); font-size: 20px;\">Bangladesh have appointed former Pakistan leg-spinner Mushtaq Ahmed as spin bowling coach in a boost for the Tigers ahead of the Twenty20 World Cup.</span><br></font></p><p style=\"margin-bottom: 30px; font-size: 20px; line-height: 1.4; color: rgba(0, 0, 0, 0.9);\"><font face=\"Comic Sans MS\">He will join the squad ahead of the preparation camp later in April for the T20 series against Zimbabwe, Bangladesh Cricket Board said in a statement on Tuesday.</font><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Mushtaq will work with the Tigers until the end of the ICC T20 World Cup 2024 in the West Indies and the US in June.</span></p><p style=\"margin-bottom: 30px; font-size: 20px; line-height: 1.4; color: rgba(0, 0, 0, 0.9); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">The 53-year old has an abundance of experience as the spin bowling coach with England (2008-2014), West Indies (2018-19) and Pakistan (2020-22).</p><p style=\"margin-bottom: 30px; font-size: 20px; line-height: 1.4; color: rgba(0, 0, 0, 0.9); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Mushtaq has also held the position of the Pakistan team’s bowling consultant (2014-16).“It is a great honour for me to be a part of the Bangladesh cricket team as a spin bowling coach,” Mushtaq said in the statement.</p><p style=\"margin-bottom: 30px; font-size: 20px; line-height: 1.4; color: rgba(0, 0, 0, 0.9); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">“I am looking forward to the role and want to pass my experience to the players because they are very coachable and I always believe that they are one of the most dangerous teams around.</p><p style=\"margin-bottom: 30px; font-size: 20px; line-height: 1.4; color: rgba(0, 0, 0, 0.9); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">“They can beat anyone because they have the capability,&nbsp; the resources and the talent. I will try to instil that belief into them. I am very excited at the opportunity to work with the team.”</p>', '2024-05-01 17:47:59', NULL, 1, 'Bangladesh-appoints-Pakistan-great-Mushtaq-Ahmed-as-spin-bowling-coach-for-T20-WC', '50a1c0cda503db1f9960bc4667cb15a6.jpg', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2024-01-14 18:30:00', '2024-04-24 05:48:39', 1),
(5, 3, 'Football', 'Football', '2024-01-14 18:30:00', '2024-04-30 05:48:39', 1),
(6, 5, 'Television', 'TeleVision', '2024-01-14 18:30:00', '2024-04-30 05:48:39', 1),
(7, 6, 'National', 'National', '2024-01-14 18:30:00', '2024-04-24 05:48:39', 1),
(8, 6, 'International', 'International', '2024-01-14 18:30:00', '2024-04-24 05:48:39', 1),
(9, 7, 'Bangladesh', 'National', '2024-01-14 18:30:00', '2024-04-24 05:48:39', 1),
(10, 8, 'Health', 'National', '2024-01-14 18:30:00', '2024-04-24 05:48:39', 1),
(11, 9, 'News', 'About education', '2024-05-01 17:40:45', '2024-04-24 17:59:09', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
