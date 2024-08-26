-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2024 at 09:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailor`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `order` int(8) NOT NULL,
  `title` varchar(160) NOT NULL,
  `description` text NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `allDay` varchar(5) NOT NULL,
  `color` varchar(7) NOT NULL,
  `url` varchar(255) NOT NULL,
  `category` varchar(200) NOT NULL,
  `repeat_type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `repeat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `order`, `title`, `description`, `start`, `end`, `allDay`, `color`, `url`, `category`, `repeat_type`, `user_id`, `repeat_id`) VALUES
(3, 0, 'Siti Wahida Binti Abdul Syukor: ', '', '2024-01-27 00:00:00', '2024-02-02 00:00:00', 'true', '#00a014', '../orderedit.php?id=3', 'Orders', '', 1, 0),
(2, 0, 'Farah Amira: ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'true', '#a00000', '../orderedit.php?id=2', 'Orders', '', 1, 0),
(4, 0, 'Hakim Ahmad Bin Samad: Baju kurung Isteri', 'Baju kurung Isteri', '2024-01-24 00:00:00', '2024-01-30 00:00:00', 'true', '#a00000', '../orderedit.php?id=4', 'Orders', '', 1, 0),
(5, 0, 'Hijanah Ayu Binti Muhammad: Songket', 'Songket', '2024-01-08 00:00:00', '2024-01-31 00:00:00', 'true', '#a00000', '../orderedit.php?id=5', 'Orders', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` tinyint(2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fullname`, `phonenumber`, `address`, `sex`, `email`, `comment`, `city`) VALUES
(4, 'Siti Wahida Binti Abdul Syukor', '0137567845', 'Setia Alam, Selangor', 1, 'sitiwahida@gmail.com', '', 'Setia Alam'),
(5, 'Hakim Ahmad Bin Samad', '0134567281', 'Ipoh, Perak', 0, 'hakim@gmail.com', '', 'Ipoh'),
(6, 'Hijanah Ayu Binti Muhammad', '0123642718', 'Sungai Petani, Kedah', 1, 'hijanah@gmail.com', '', 'Sungai Petani'),
(7, 'Ameera Khan Binti Syamsul Samood', '0116578345', 'Muar, Johor', 1, 'ameerakhan@gmail.com', '', 'Muar'),
(8, 'Adeline Sumaiyyah Binti Abu Kahar', '0196578329', 'Cameron Highland, Pahang', 1, 'adelinesumaiyyah@gmail.com', '', 'Cameron Highland'),
(9, 'Luthfiah Aminah Binti Ahmad', '0189287678', 'Ayer Keroh, Melaka', 1, 'luthfiah@gmail.com', '', 'Ayer Keroh'),
(10, 'Visya a/p Mahindran', '0123456172', 'Tapah, Perak', 1, 'visya@gmail.com', '', 'Tapah'),
(11, 'Pooja a/p Subramaniam', '0126478299', 'Ipoh, Perak', 1, 'pooja@gmail.com', '', 'Ipoh'),
(12, 'Marilyn Monroe', '0127967754', 'Rembau, Negeri Sembilan', 1, 'marilyn@gmail.com', '', 'Rembau'),
(13, 'Kelvin Chum', '0187893456', 'Juru, Pulau Pinang', 1, 'kelvin@gmail.com', '', 'Juru');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(8) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expcat`
--

CREATE TABLE `expcat` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expcat`
--

INSERT INTO `expcat` (`id`, `title`) VALUES
(1, 'Material Purchase'),
(2, 'Staff Salary'),
(3, 'Rent'),
(4, 'Staff Incentive');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `expcat` int(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `expcat`, `description`, `date`, `amount`) VALUES
(3, 3, '', '2024-01-27', 150);

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `sitename` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `currency` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sms` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `sitename`, `email`, `mobile`, `currency`, `sms`) VALUES
(1, 'QuickSoft Technology Company', 'quicksofttechnology@gmail.com', '05-69399666', '$', ' http://sms.marketnaija.com//API/?action=compose&username=mamama&api_key=aaaaaa999999ddddd&sender=sarutech&to=[TO]&message=[MESSAGE] Just Fill Up the full text from your sms api service with replace message with[MESSAGE] and To-Phonenumber with [TO]');

-- --------------------------------------------------------

--
-- Table structure for table `inccat`
--

CREATE TABLE `inccat` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inccat`
--

INSERT INTO `inccat` (`id`, `title`) VALUES
(1, 'Sew  New Cloth');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `inccat` int(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `amount` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `inccat`, `description`, `date`, `amount`) VALUES
(1, 1, 'Bridal Dress', '2024-01-27', 100),
(2, 1, 'Bridal Dress', '2024-01-26', 1500),
(3, 1, 'Baju Kurung Isteri', '2024-01-26', 600);

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `measurement_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `part_id` int(8) NOT NULL,
  `measurement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`measurement_id`, `customer_id`, `part_id`, `measurement`) VALUES
(1, 1, 4, '14'),
(2, 1, 5, '15'),
(3, 1, 6, '26'),
(4, 1, 7, '34'),
(5, 1, 8, '54'),
(6, 1, 9, '65'),
(7, 1, 10, '23'),
(8, 1, 11, '45'),
(9, 1, 12, '65'),
(10, 1, 13, '67'),
(11, 1, 64, '23'),
(12, 1, 65, '56'),
(13, 1, 22, '67'),
(14, 1, 23, '87'),
(15, 1, 24, '87'),
(16, 1, 25, '98'),
(17, 1, 26, '56'),
(18, 1, 27, '45'),
(19, 1, 28, '98'),
(20, 1, 29, '122'),
(21, 1, 30, '12'),
(22, 1, 31, '98'),
(23, 1, 32, '9'),
(24, 1, 33, '56'),
(25, 1, 34, '45'),
(26, 1, 35, '23'),
(27, 1, 36, '76'),
(28, 1, 37, '12'),
(29, 1, 46, '65'),
(30, 1, 55, '76'),
(31, 1, 56, '21'),
(32, 1, 57, '45'),
(33, 1, 59, '6'),
(34, 1, 58, '76'),
(35, 1, 60, '87'),
(36, 1, 61, '56'),
(37, 1, 62, '87'),
(38, 2, 3, '12'),
(39, 2, 5, '45'),
(40, 2, 6, '34'),
(41, 2, 7, '54'),
(42, 2, 8, '23'),
(43, 2, 9, '45'),
(44, 2, 10, '34'),
(45, 2, 11, '42'),
(46, 2, 12, '23'),
(47, 2, 13, '45'),
(48, 2, 25, '23'),
(49, 2, 31, '23'),
(50, 2, 33, '34');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(8) NOT NULL,
  `customer` int(8) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `paid` decimal(11,2) NOT NULL,
  `balance` decimal(11,2) NOT NULL,
  `received_by` int(11) NOT NULL,
  `date_received` date DEFAULT NULL,
  `completed` varchar(10) DEFAULT 'No',
  `date_collected` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer`, `description`, `amount`, `paid`, `balance`, `received_by`, `date_received`, `completed`, `date_collected`) VALUES
(3, 4, 'Bridal Dress', '1500.00', '500.00', '0.00', 6, '2024-01-27', 'No', '2024-02-02'),
(4, 5, 'Baju kurung Isteri', '800.00', '800.00', '0.00', 4, '2024-01-24', 'Yes', '2024-01-30'),
(5, 6, 'Songket', '800.00', '400.00', '0.00', 2, '2024-01-08', 'No', '2024-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE `part` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `part`
--

INSERT INTO `part` (`id`, `title`, `type`, `description`, `image`) VALUES
(3, 'NECK', 1, '   Place two fingers between the tape measure and the neck as the pictures show, and make sure you can move the tape easily. Do not tighten the tape measure. Make sure that the tape is at the base of the neck where the neck and shoulders meet or at the height where the collar would be if you were wearing a shirt.', 'neck.jpg'),
(4, 'CHEST', 38, '  Stand up straight, relax and take deep breath with hands down at your side. The chest measurement should be taken around the chest under the armpits. Make sure the tape is parallel and you can move the tape easily. Do not tighten the tape measure. Avoid having thick clothes on when measuring.', 'chest.jpg'),
(5, 'WAIST', 1, ' Stand up in a relaxed posture, do not hold your breath or hold your stomach in. If you do not have beer belly, the waist measurement should be taken around the waist at the narrowest point. If you have beer belly, you should measure the widest point. Make sure you can move the tape easily. Do not tighten the tape measure.', 'waist.jpg'),
(6, 'HIPS', 0, '  Take out all of the stuff in the front and back pockets your trouser. The hip measurement should be taken around the hips at the widest point. Stand up in a relaxed posture, and keep the tape parallel. Do not tighten the tape measure. Make sure you can move the tape easily. ', 'hips.jpg'),
(7, 'SHOULDER', 1, ' Stand up in a relaxed posture. Measure across the top of the shoulder from one edge to the other. Ensure you take the curved contour over the top of the shoulders as shown. If you are wearing your best fitted shirt measure up to the shoulder seams', 'shoulder.jpg'),
(8, 'SLEEVE LENGTH', 1, ' The sleeve measurement should be taken from exactly the same point you used earlier for the \"Shoulder\" measurement. Measure from tip of shoulder to a point at the wrist where you want the sleeve to end. Do not bend your arms. If you want to match your dress shirt with a suit, you should measure the suit sleeve length you want, and then add one (1) centimeter .That will be the shirt\'s sleeve length.\n', 'sleeve-length.jpg'),
(9, 'SHORT SLEEVE LENGTH ', 1, ' Measure with arm at your side, from the tip of the shoulder to a point on the outside of the arm where you want the sleeve to end. ', 'short-sleeve-length.jpg'),
(10, 'WRIST/CUFF ', 1, ' Measure the actual wrist size around your wrist bone. You may also consider adding Â¼\" to Â½\" to your size if you wear medium to heavier watches. ', 'wrist-cuff.jpg'),
(11, 'BICEP ', 1, ' widest point. This is normally taken about 15cm to 18 cm from the tip of the shoulder seam. This is the sleeve width of the largest part of your arm. **Do not flex your bicep.** ', 'biceps.jpg'),
(12, 'SHIRT LENGTH ', 1, ' Stand up in a relaxed posture. Measure from the topmost point of the shoulder at a point near the nape at the collar seam, along the front of your body, to a point where you want the shirt to end. ', 'shirt-length.jpg'),
(13, ' ARMHOLE ', 1, ' Place the tape measure under your armpit and around the top of your arm. To ensure a comfortable fit, take the armhole measurement with one finger inside the tape measure. ', 'arm-hole.jpg'),
(14, 'WAIST', 38, '  Wearing trousers and a shirt put the measuring tape around your waist at the height were you would wear your pants and adjust to your designed snugness with room for a finger. Make sure the tape is snug and does not ride over the waistband but you should be able to put your index finger inside the tape.  ', 'touser-waist.jpg'),
(15, 'HIPS ', 38, '  Wearing trousers, measure around the fullest part of your hips, placing a finger between your body and the tape. Make sure the tape is straight at all times. Make sure your pockets are empty and the tape is not restrictive. As a guide, you should not make the tape too snug. You only just need to be able to feel the tape when measuring.', 'touser-hip.jpg'),
(16, 'CROTCH', 38, '  Measure from the top middle of the back pants waist (see point A) all along the crotch seam through your legs until the top of front waist (see point B)', 'touser-crotch.jpg'),
(17, 'THIGH WIDTH ', 38, '  Wearing trousers, empty your pockets then, start at the top of your inseam, measure around your thigh with room for a finger.', 'touser-thigh-width..jpg'),
(18, 'TROUSER LENGTH', 38, '  Measure from the top of pants waist all along the side pant seam until the bottom of your pants or roughly 1 inch from the ground', 'touser-length.jpg'),
(19, ' INSEAM ', 38, '  Measure from the lowest part of your crotch area to the floor.  Make sure the tape is tight along the inside of your leg, that you are standing straight, and then measure.  No shoes please! ', 'touser-inseam.jpg'),
(20, ' KNEE ', 40, '  Measure around your knee at its widest point.  You need only measure one knee', 'touser-knee.jpg'),
(21, 'HALF HEM ', 38, '  Measure the width you want for the bottom of your trousers. ', 'touser-crotch-half-hem.jpg'),
(22, 'SHIRT LENGTH ', 40, '  Take the measure from the highest part of your shoulder (next to the collar) to the longest part of the shirt. See image on the left. ', 'shirt-length.jpg'),
(23, 'SHOULDER WIDTH ', 38, '  Measure the distance from one shoulder to the other, the measuring tape has to start and finish one centimeter before the end of your shoulder. See picture on the left. ', 'shoulder-width.jpg'),
(24, 'NECK', 40, '  Measure around your neck. Adjust the measuring tape to your preferred looseness. It is very important to introduce a finger between your body and the tape. ', 'neck.jpg'),
(25, 'CHEST', 40, '   Measure around the widest part of your chest (put the measuring tape on both nipples). Let loose so that you can put a finger between your body and the tape. Make sure that the tape is at an even height all the way around. ', 'chest.jpg'),
(26, ' BICEP ', 40, '   Measure around the widest part of your bicep. Let loose so that you can put a finger between your body and the tape. ', 'bicep.jpg'),
(27, 'WRIST', 38, '  Measure around the wrist leaving one finger of space to take the measurement. ', 'wrist.jpg'),
(28, 'SLEEVE', 38, '  ', 'sleeve.jpg'),
(29, 'SHORT SLEEVE ', 40, '  ', 'short-sleeve.jpg'),
(30, 'Â¾ SLEEVE ', 39, '  ', '3-4-sleeve.jpg'),
(32, 'STOMACH ', 40, '   ', 'stomach.jpg'),
(33, ' HIPS ', 40, '   ', 'hips.jpg'),
(34, ' BREAST POINT ', 1, '  Measure from the highest point of your shoulder, to the breast point (the most outstanding part of your breast). ', 'breast.jpg'),
(35, 'WAIST POINT ', 40, '  ', 'waist-point.jpg'),
(36, 'SLEEVE HOLE ', 40, '  ', 'sleeve-hole.jpg'),
(37, 'BUST', 39, '  ', 'bust.jpg'),
(38, 'COLLAR', 40, '  ', 'neck.jpg'),
(39, 'CHEST', 38, '  ', 'chest.jpg'),
(40, 'STOMACH ', 38, '  ', 'stomach.jpg'),
(42, 'SKIRT HIPS', 39, '  ', 'hips.jpg'),
(43, 'SHOULDER WIDTH', 40, '  ', 'shoulder.jpg'),
(44, 'JACKET LENGTH', 38, '  ', 'jacket-lenght.jpg'),
(45, 'SLEEVE LENGTH', 40, '  ', 'sleeve-length.jpg'),
(46, 'BICEP ', 39, '  ', 'biceps.jpg'),
(47, 'WRIST', 39, '  ', 'wrist.jpg'),
(48, ' VEST LENGTH ', 38, '  ', 'vest-lenght.jpg'),
(49, 'CROTCH', 40, '  ', 'crotch.jpg'),
(50, 'THIGH WIDTH ', 40, '  ', 'thigh-width.jpg'),
(51, 'LEG LENGTH', 40, '  ', 'pant-length.jpg'),
(52, 'INSEAM', 40, '  ', 'inseam.jpg'),
(53, 'KNEE', 38, '  ', 'knee.jpg'),
(54, 'HALF HEM ', 40, '  ', 'half-hem.jpg'),
(55, 'WAIST', 39, '   ', 'skirtwaist.png'),
(56, 'WAIST TO HIP HEIGHT', 1, '     ', 'skirthip1.png'),
(58, 'HALLOW TO HEM', 1, ' HALLOW TO HEM', 'gown.jpg'),
(59, 'HIP WIDTH', 1, '   ', 'skirthip2.png'),
(60, 'BURST', 1, '  ', 'gown.jpg'),
(61, 'WAIST', 39, '  ', 'gown.jpg'),
(62, 'HIP', 39, '  ', 'gown.jpg'),
(68, 'ssfae', 38, ' zasfead', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(8) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `customer`, `message`, `date`) VALUES
(2, 'Anis', 'Dear Anis,\r\nYour Clothes are ready for collection. Thanks for your patronage', '2024-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(8) NOT NULL,
  `stafftype` int(8) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `salary` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `stafftype`, `fullname`, `address`, `phonenumber`, `salary`) VALUES
(1, 1, 'Siti Melor Binti Mahmood Akbar', 'Putrajaya, Selangor', '0123456789', 6000),
(2, 4, 'Jimiey Whang', 'Kuala Lumpur', '0174567839', 12000),
(3, 4, 'Irie Mohamed', 'Kuala Lumpur', '0115673451', 12000),
(4, 2, 'Muhammad Zain Bin Ahmad Jais', 'Shah Alam', '0197689231', 6000),
(5, 3, 'Mawar Intan Binti Abdul Kasim', 'Cyberjaya, Selangor', '0133333466', 6000),
(6, 8, 'Siti Maisara Binti Kasim Bahar', 'Bukit Jelutong, Selangor', '0197569997', 6000),
(7, 11, 'Nurin Qistina Balqis Amira Binti Afghan', 'Petaling Jaya, Selangor', '0175678321', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `stafftype`
--

CREATE TABLE `stafftype` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stafftype`
--

INSERT INTO `stafftype` (`id`, `title`) VALUES
(1, 'Tailor Bridal'),
(2, 'Tailor Dress'),
(3, 'Tailor Songket'),
(4, 'CEO'),
(5, 'Intern'),
(6, 'Tailor Baju Kurung');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `title`, `msg`) VALUES
(1, 'Collect Your Clothes', 'Your Clothes are ready for collection. Thanks for your patronage');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sex` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `title`, `sex`) VALUES
(1, 'BRIDAL', 1),
(38, 'DRESS', 1),
(39, 'BAJU KURUNG', 1),
(40, 'SONGKET', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'jimiewhang', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'iriemohamed', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expcat`
--
ALTER TABLE `expcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inccat`
--
ALTER TABLE `inccat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`measurement_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `part`
--
ALTER TABLE `part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stafftype`
--
ALTER TABLE `stafftype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expcat`
--
ALTER TABLE `expcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inccat`
--
ALTER TABLE `inccat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `measurement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `part`
--
ALTER TABLE `part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stafftype`
--
ALTER TABLE `stafftype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
