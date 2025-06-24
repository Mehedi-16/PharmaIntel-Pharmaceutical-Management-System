-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2025 at 05:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmaintel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Id`, `Name`, `Email`, `Phone`) VALUES
(1, 'Rahim Uddin', 'rahim@example.com', '01710000001'),
(2, 'Karim Ahmed', 'karim@example.com', '01710000002'),
(3, 'Fatima Noor', 'fatima@example.com', '01710000003'),
(4, 'Jahid Hasan', 'jahid@example.com', '01710000004'),
(5, 'Sumaiya Akter', 'sumaiya@example.com', '01710000005');

-- --------------------------------------------------------

--
-- Table structure for table `forecasts`
--

CREATE TABLE `forecasts` (
  `Id` int(11) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `PredictedDemand` int(11) DEFAULT NULL,
  `RestockSuggestion` varchar(200) DEFAULT NULL,
  `PromotionIdea` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forecasts`
--

INSERT INTO `forecasts` (`Id`, `ProductName`, `PredictedDemand`, `RestockSuggestion`, `PromotionIdea`) VALUES
(1, 'napa', 4, '123', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `Category`, `Stock`, `ExpiryDate`, `Price`) VALUES
(1, 'Paracetamol', 'Painkiller', 98, '2025-12-31', 10.00),
(2, 'Aspirin', 'Painkiller', 50, '2024-11-30', 15.00),
(3, 'Vitamin C', 'Supplement', 199, '2026-01-15', 8.50),
(5, 'Napa', 'Excipient', 0, '2025-06-23', 12.00),
(6, 'Coracal Dx', 'medicin', 120, '2025-06-28', 8.00),
(7, 'Naproxen', 'medicin', 87, '2025-06-28', 3.50),
(8, 'parixol 88', 'Tablets', 5, '2025-07-23', 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `rawmaterials`
--

CREATE TABLE `rawmaterials` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Supplier` varchar(100) DEFAULT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `UnitPrice` decimal(10,2) NOT NULL DEFAULT 0.00,
  `ExpiryDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rawmaterials`
--

INSERT INTO `rawmaterials` (`Id`, `Name`, `Category`, `Supplier`, `Quantity`, `UnitPrice`, `ExpiryDate`) VALUES
(1, 'Paracetamol Powder', 'Active Ingredient', 'ABC Chemicals', 5000, 15.50, '2026-12-31'),
(2, 'Magnesium Stearate', 'Excipient', 'XYZ Suppliers', 2000, 5.25, '2027-06-30'),
(3, 'Microcrystalline Cellulose', 'Excipient', 'Pharma Raw Co', 3000, 8.00, NULL),
(4, 'Sodium Benzoate', 'Preservative', 'HealthSupplies Ltd', 1500, 12.75, '2025-11-15'),
(5, 'Microcrystalline Cellulose', 'Excipient', 'Mehedi', 10, 100.00, '2025-06-24'),
(7, 'paracetamol', 'Analgesics', 'Mehedi', 100, 12.00, '2025-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `SaleDate` date DEFAULT NULL,
  `CustomerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Id`, `ProductId`, `Quantity`, `Price`, `SaleDate`, `CustomerId`) VALUES
(1, 1, 5, 10.00, '2025-06-22', NULL),
(2, 2, 2, 15.00, '2025-06-22', NULL),
(3, 3, 10, 8.50, '2025-06-22', NULL),
(4, 3, 12, 32.00, '2025-06-22', NULL),
(5, 1, 12, 32.00, '2025-06-22', NULL),
(6, 3, 1, 12.00, '2025-06-22', NULL),
(7, 2, 1, 12.00, '2025-06-22', NULL),
(8, 5, 1, 12.00, '2025-06-22', NULL),
(9, 5, 2, 12.00, '2025-06-22', NULL),
(10, 5, 10, 12.00, '2025-06-22', NULL),
(12, 1, 2, 2.00, '2025-06-23', NULL),
(13, 3, 1, 1.00, '2025-06-23', NULL),
(15, 8, 12, 4.00, '2025-06-23', NULL),
(16, 8, 8, 4.00, '2025-06-23', NULL),
(19, 8, 80, 4.00, '2025-06-23', NULL),
(22, 7, 1, 1.00, '2025-06-23', NULL),
(24, 7, 12, 8.00, '2025-06-24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` enum('Admin','SalesManager','Analyst') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Email`, `Password`, `Role`) VALUES
(1, 'adminUser', 'admin@pharma.com', 'admin123', 'Admin'),
(2, 'salesUser', 'sales@pharma.com', 'sales123', 'SalesManager'),
(3, 'analystUser', 'analyst@pharma.com', 'analyst123', 'Analyst'),
(4, 'mehedi', 'mehedi@pharma.com', '12', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `forecasts`
--
ALTER TABLE `forecasts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rawmaterials`
--
ALTER TABLE `rawmaterials`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `sales_ibfk_1` (`ProductId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forecasts`
--
ALTER TABLE `forecasts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rawmaterials`
--
ALTER TABLE `rawmaterials`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
