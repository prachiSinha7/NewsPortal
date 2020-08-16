-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2018 at 09:29 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Bollywood', 'Bollywood News', '2018-06-06 10:28:09', '2018-06-30 18:41:07', 1),
(3, 'Sports', 'Related to sports news', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Entertainment', 'Entertainment related  News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Politics', 'Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-06-30 18:01:03', '2018-06-30 19:19:51'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2018-06-30 18:01:36', '2018-06-30 19:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` mediumtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) NOT NULL,
  `PostUrl` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`) VALUES
(6, 'World Cup 2018, Uruguay vs Portugal Live Score: Edinson Cavani Gives Uruguay 1-0 Lead Against Portugal', 3, 5, '<h2 style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: montserratregular, sans-serif; line-height: 25px; color: rgb(22, 22, 22); font-size: 22px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif; font-size: 16px;\">Live Updates of 2018 FIFA World Cup, Uruguay&nbsp;vs Portugal match, straight from&nbsp;Fisht Stadium, Sochi.&nbsp;</span></h2><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">00:06 IST: Bernardo Silva tries to play a box</span>&nbsp;inside the box, cleared away. Portugal continue on attack but Cavani has been brought down as Uruguay take a long kick inside the Portuguese half.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">00:01 IST: Free-kick for Portugal from a dangerous position near the box!&nbsp;</span>Cristiano Ronaldo over the ball, hits the wall and Torreira clears it away.&nbsp;&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:58 IST: Portugal&nbsp;</span>on the break, looking to counter, moving the ball from right to left in search of penetration but the ball goes out for a Uruguay throw-in.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:55 IST: Free-kick for Portugal,&nbsp;</span>the ball gets past everyone inside the box. 26 minutes have been played.</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:51 IST: Free-kick for Uruguay in a promising position!&nbsp;</span>Suarez on the ball, gets past the wall through a low effort but Rui Patricio does well to keep the ball out.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:50 IST: Luis&nbsp;Suarez brought down,&nbsp;</span>Uruguay free-kick from their own half. 19 minutes on the clock.</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:47 IST: Portugal on the attack,&nbsp;</span>through Adrian and Bernardo Silva on the right flank, plays the ball back to Mario, who plays a long ball to find Ronaldo but the heavy touch has been comfortably collected by Muslera.&nbsp;&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:43 IST: Cristiano Ronaldo makes space for himself,&nbsp;</span>takes shot from outside the box. Well blocked by Torreira.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:41 IST: Fonte&nbsp;</span>gets a header from inside the box, but puts his wide. 11 minutes on the clock in the high-octane drama.</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:37 IST: GOAL! Edinson Cavani&nbsp;</span>unmarked inside the box, puts Uruguay front through a devastating header in the seventh minute off a Luis Suarez cross, well targeted.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:36 IST: Cristiano Ronaldo&nbsp;</span>gets the&nbsp;first shot on goal from outside the box but too easy for Fernando Muslera to gather.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:34 IST: Corner for Uruguay&nbsp;</span>as Jose Fonte tucks the ball away. Uruguay finds Godin as target-man inside the box, but a header from Portuguese defence clears away the danger.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:31 IST: Joao Mario crosses the ball into the box,&nbsp;</span>Bernardo Silva just heads it over the crossbar. Early attack from Portugal.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:30 IST: Kick-off! Cristiano Ronaldo&nbsp;</span>kicks the ball from left to right as the match gets underway.</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:28 IST: Diego Godin and Cristiano Ronaldo&nbsp;</span>exchange team sheets, we are minutes away from the kick-off. We have already seen France through to the quarters, knocking Argentina out.&nbsp;</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:25 IST: National anthems take on the centre stage.</span></p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">23:20 IST: Cristiano Ronaldo record -&nbsp;</span>By making his 38th appearance at the FIFA World Cup and UEFA European Championship, Cristiano Ronaldo has equalled a record set by 2014 world champion Bastian Schweinsteiger.</p><p style=\"margin-top: 15px; padding: 0px; font-family: robotolight, sans-serif; font-size: 16px; color: rgb(51, 51, 51);\"><span style=\"margin: 0px; padding: 0px; font-weight: 600; color: rgb(65, 65, 65); font-family: roboto, sans-serif;\">22:20 IST:&nbsp;</span>The playing XI for Uruguay and Portugal has been announced. Skipper Diego Godin for Uruguay will aim to keep his counter-part captain and talisman Cristiano Ronaldo at bay.&nbsp;</p>', '2018-06-30 18:43:50', NULL, 1, 'World-Cup-2018,-Uruguay-vs-Portugal-Live-Score:-Edinson-Cavani-Gives-Uruguay-1-0-Lead-Against-Portugal'),
(7, 'Jasprit Bumrah ruled out of England T20I series due to injury', 3, 4, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">The Indian Cricket Team has received a huge blow right ahead of the commencement of the much-awaited series against England. Star speedster Jasprit Bumrah has been ruled out of the forthcoming 3-match T20I series as he suffered an injury in his left thumb.</span></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The 24-year-old pacer picked up a niggle during India’s first T20I match against Ireland played on June 27 at the Malahide cricket ground in Dublin. As per the reports, he is likely to be available for the ODI series against England scheduled to start from July 12.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">In the first, Bumrah exhibited a phenomenal performance with the ball. In his quota of four overs, he conceded 19 runs and picked 2 wickets at an economy rate of 4.75.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Post his injury, he arrived at team’s optional training session on Thursday but didn’t train. Later, he was rested in the second face-off along with MS Dhoni, Shikhar Dhawan and Bhuvneshwar Kumar.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">As of now, no replacement has been announced. However, Umesh Yadav may be be given chance in the team in Bumrah’s absence.</p><p style=\"padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">The first T20I match between India and England will be played at Old Trafford, Manchester on July 3.</p>', '2018-06-30 18:49:23', NULL, 1, 'Jasprit-Bumrah-ruled-out-of-England-T20I-series-due-to-injury'),
(9, 'Sanju is the true story that Sanjay Dutt wanted to tell the world', 5, 3, '<p style=\"color: rgb(86, 86, 86); font-size: 20px; line-height: 27px; padding: 8px 0px 0px; font-family: Georgia, serif;\">A phenomenal 95 per cent occupancy at the first day, first show that I attended in Mumbai and the whistles and cheers that followed after the CBFC certificate to&nbsp;<em>Sanju</em>&nbsp;flashed on screen, proved that fact about Hirani beyond doubt.</p><p style=\"color: rgb(86, 86, 86); font-size: 20px; line-height: 27px; padding: 8px 0px 0px; font-family: Georgia, serif;\"><em>Sanju</em>&nbsp;fits the Hirani template: there are laughs, plenty of tear-jerking scenes and limited songs and romance. Those who anticipated that the film will&nbsp; absolve Sanjay Dutt of his mistakes passed off as â€œbad choicesâ€ wonâ€™t be disappointed. Here are a few thoughts on the film.</p>', '2018-06-30 19:03:00', NULL, 1, 'Sanju-is-the-true-story-that-Sanjay-Dutt-wanted-to-tell-the-world'),
(10, 'Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal', 7, 9, '<h1 style=\"box-sizing: inherit; margin-top: 0px; padding: 0px; font-family: Roboto, sans-serif; font-size: 38px; line-height: normal; letter-spacing: -0.5px; color: rgb(51, 51, 51);\"><span itemprop=\"headline\" style=\"box-sizing: inherit;\">Tata Steel, Thyssenkrupp Finalise Landmark Steel Deal</span>Tata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel DealTata Steel, Thyssenkrupp Finalise Landmark Steel Deal</h1>', '2018-06-30 19:08:56', NULL, 1, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal'),
(11, 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 6, 8, '<p>UNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeepingUNs Jean Pierre Lacroix thanks India for contribution to peacekeeping<br></p>', '2018-06-30 19:10:36', NULL, 1, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping'),
(12, 'Shah holds meeting with NE states leaders in Manipur', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">New Delhi: BJP president Amit Shah today held meetings with his party leaders who are in-charge of 11 Lok Sabha seats spread across seven northeast states as part of a drive to ensure that it wins the maximum number of these constituencies in the general election next year.</span><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><webviewcontentdata style=\"box-sizing: inherit; color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\">Shah held separate meetings with Lok Sabha toli (group) of Arunachal Pradesh, Tripura, Meghalaya, Mizoram, Nagaland, Sikkim and Manipur in Manipur, the partys media head Anil Baluni said.<br style=\"box-sizing: inherit;\"><br style=\"box-sizing: inherit;\">Baluni said that Shah was in West Bengal for two days before he arrived in Manipur. The BJP chief would reach Odisha tomorrow.</webviewcontentdata><br></p>', '2018-06-30 19:11:44', NULL, 1, 'Shah-holds-meeting-with-NE-states-leaders-in-Manipur');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Subcategory` varchar(255) NOT NULL,
  `SubCatDescription` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Bollywood ', 'Bollywood masala', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
