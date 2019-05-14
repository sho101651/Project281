-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 02:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs251`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(10) NOT NULL,
  `Total_cost` float DEFAULT NULL,
  `Quantity` int(5) DEFAULT NULL,
  `UserID` int(8) DEFAULT NULL,
  `ProductID` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(8) NOT NULL,
  `Card_number` varchar(20) NOT NULL,
  `CCV` varchar(3) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Bank` varchar(20) NOT NULL,
  `UserID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Card_number`, `CCV`, `Status`, `Bank`, `UserID`) VALUES
(8, 'sdfghjkl', 'hjk', 'TRUE', 'fghjkl;', '1'),
(9, '33ijiojfo', '333', 'TRUE', 'aestrdyfuighiop', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(8) NOT NULL,
  `Product_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Image_name` varchar(500) NOT NULL,
  `Price` float DEFAULT NULL,
  `Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_name`, `Image_name`, `Price`, `Description`) VALUES
(1, 'วอปเปอร์', 'image/menu1.png', 59, 'เมนูอร่อยขวัญทั่วโลก ด้วยเนื้อคุณภาพนำเข้า ที่แสนจะเขากันกับผักสดใหม่ มะเขือเทศ หอมใหญ่ และแตงกวาดองเพิ่มความอร่อยด้วยอเมริกันชีสเต็มเเผ่น ชุ่มฉ่ำด้วยมายองเนสบนขนมปังงาชิ้นนุ่ม \r\n\r\n'),
(2, 'ดับเบิ้ล มัชรูม สวิส\r\n\r\n', 'image/menu2.png', 69, 'รสชาติล้ำลึกเฉพาะตัวของเนื้อคุณภาพนำเข้า 100% จากประเทศออสเตรเลียชิ้นโต ย่างบนเปลวไฟ ร้อนๆ จนหอมกรุ่น เข้มข้นเต็มรสชาติด้วยสวิสชีสและเบคอน ที่ชุ่มฉ่ำละมุนลิ้น ราดด้วยซอสเห็ดแชมปิญองสูตรพิเศษ พร้อมเบอร์เกอร์งาอบสดใหม่ในไซส์ใหญ่เต็มคำ'),
(5, 'ไก่กรอบ เบอร์เกอร์\r\n', 'image/menu3.JPG', 59, 'เบอเกอร์ไก่กรอบ รสจัดจ้าน พร้อมขนมปังงามายองเนส ผักกาดขาวสดใหม่'),
(7, 'เบอเกอร์ ปลาทอด', 'image/menu4.png', 59, 'เบอเกอร์ปลาทอดกรอบ รสจัดจ้าน พร้อมขนมปังงา มายองเนส มะเขือเทศ หัวหอมใหญ่ และผักกาดแก้วกรุบกรอบ'),
(9, 'ดับเบิ้ล ชีส เบอร์เกอร์', 'image/menu5.png', 79, 'ความอร่อยสุดคลาสสิกในรสชาติแบบดั้งเดิม ที่เพิ่มเติมคือขนาด ด้วยความหนานุ่มของเนื้อคุณภาพนำเข้า 100% จากประเทศออสเตรเลีย ย่างบนเปลวไฟร้อนๆ สูตรซิกเนเจอร์ และชีสเยิ้มๆ เพิ่มรสเข้มข้นถึง 2 ชั้น ปิดท้ายความอร่อยด้วยความชุ่มฉ่ำของแตงกวาดอง มัสตาร์ดและซอสมะเขือเทศ'),
(10, 'เอ็กซ์ตร้าชิกเก้น ชีสเบอร์\r\n', 'image/menu6.png', 79, 'อร่อยมากขึ้นกับเอ็กซ์ตร้า ไก่ ชีส ขนมปังงาชิ้นนุ่มที่ประกบไส้แน่นๆ ทั้งเนื้อไก่ ผักสด และชีส ราดตามด้วยมายองเนสชุ่มฉ่ำ เต็มรส');

-- --------------------------------------------------------

--
-- Table structure for table `user_`
--

CREATE TABLE `user_` (
  `User_ID` int(8) NOT NULL,
  `Lastname` varchar(25) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `TelNo` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Road` varchar(25) NOT NULL,
  `Zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_`
--

INSERT INTO `user_` (`User_ID`, `Lastname`, `FirstName`, `TelNo`, `Email`, `Password`, `City`, `Road`, `Zipcode`) VALUES
(1, '23t23t', '13tf3', 't3wtwe', 'ccc', '25f9e794323b453885f5181f1b624d0b', 't23twed', 'wefsd', '3rfwedef'),
(2, 'b', 'b', '1234567890', 'b', '827ccb0eea8a706c4c34a16891f84e7b', 'b', 'b', 'b'),
(3, 'c', 'c', '0000000000', 'c', '827ccb0eea8a706c4c34a16891f84e7b', 'c', 'c', 'c'),
(4, '3edc ', 'qazwsx', 'tgb ', 'zxcvbnm,.', '25f9e794323b453885f5181f1b624d0b', 'rfv ', 'yuhjn', '345erty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `user_`
--
ALTER TABLE `user_`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_`
--
ALTER TABLE `user_`
  MODIFY `User_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user_` (`User_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`Product_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
