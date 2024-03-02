-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2024 at 05:33 PM
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
-- Database: `dd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AdminID` int(5) NOT NULL,
  `AdminPass` varchar(10) NOT NULL,
  `AdminUser` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AdminID`, `AdminPass`, `AdminUser`) VALUES
(2, '323123', '312213123'),
(7, '123', 'admin1'),
(9, 'asdasd', 'asdads'),
(10, 'asdasaaa', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `BrandID` int(11) NOT NULL,
  `BrandName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`BrandID`, `BrandName`) VALUES
(1, 'HP'),
(2, 'Asus'),
(3, 'Logitech'),
(4, 'Nubwo'),
(5, 'Oker'),
(6, 'SteelSeries'),
(11, '3'),
(12, '123123');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `Name`) VALUES
(1, 'Monitor'),
(2, 'Mouse'),
(3, 'Keyboard'),
(4, '3'),
(5, '4'),
(7, '2'),
(8, '5'),
(9, '123123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `username`, `Password`, `Email`) VALUES
(2, 'Camila', 'b2Camila', 'Camila@gmail.com'),
(4, 'yean', '1', 'yean@y'),
(5, 'lnwza', '2', 'test@t'),
(6, 'ttttt', '3', 'a@a');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderdetailid` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `transactionID` int(11) NOT NULL,
  `OrderQty` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderdetailid`, `ProductID`, `transactionID`, `OrderQty`, `Total`) VALUES
(19, 5, 13, 1, 3900),
(20, 5, 14, 1, 3900),
(21, 3, 14, 1, 4990),
(22, 11, 14, 1, 34902);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `Price` double NOT NULL,
  `Stock` int(11) NOT NULL,
  `Img` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `BrandID`, `categoryID`, `Price`, `Stock`, `Img`, `Description`, `Name`, `cost`) VALUES
(2, 1, 2, 690, 3, 'HP-Mouse02.png', 'Dimension (cm): 10.95 x 7.08 x 4.01', 'HP 280 Silent Wirele', 490),
(3, 2, 2, 4990, 6, 'Asus-Mouse03.png', 'Dimension (mm): 118 x 72 x 42', 'ProArt Mouse MD300', 4790),
(4, 2, 1, 29900, 0, 'Asus-m04.png', 'Panel Size (inch): 27, Refresh Rate (max): 144Hz', 'ROG Strix XG27UQR', 29700),
(5, 2, 3, 3900, 13, 'Asus-k05.png', 'Dimension (mm): 440x137x39 ', 'ROG Strix Scope RX', 3700),
(6, 4, 3, 690, 9, 'nubwo-k06.png', 'Keys Windows Layout: 104 Keys', 'COLOSSUS', 490),
(7, 2, 1, 16900, 4, 'Asus-m07png.png', 'Panel Size (inch): 27, Refresh Rate (Max): 170Hz', 'TUF Gaming VG27AQGL', 16700),
(8, 3, 3, 6990, 6, 'k08.png', 'Light: RGB, Keycap: EN-TH', 'G913', 6790),
(9, 6, 3, 4390, 4, 'k09.png', 'Light: RGB, Keycap: EN', 'Keychron K4', 4190),
(11, 1, 2, 34902, 200, 'HP-Mouse01.png', 'Dimensions (cm): 12.07 x 7.9 x 4.67', 'HP 930 Creator', 3290);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` int(11) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Telephone` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `Img` varchar(100) NOT NULL,
  `Totalqty` int(11) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `Status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `CustomerID`, `Name`, `Address`, `Telephone`, `TotalPrice`, `Img`, `Totalqty`, `OrderDate`, `Status`) VALUES
(13, 6, '1231', '123123', 123123, 3900, 'database diagram.jpeg', 1, '2023-03-17', '1'),
(14, 6, 'wqwww', 'wwwww', 11111, 43792, 'c1.png', 3, '2024-03-01', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderdetailid`),
  ADD KEY `transactionID` (`transactionID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `BrandID` (`BrandID`),
  ADD KEY `categoryID` (`categoryID`),
  ADD KEY `BrandID_2` (`BrandID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AdminID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `BrandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `orderdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`transactionID`) REFERENCES `transactions` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
