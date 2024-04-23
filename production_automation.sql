-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 08:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `production_automation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `bundle_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`id`, `order_id`, `bundle_code`) VALUES
(1, 5, 123456789),
(2, 6, 456789),
(3, 5, 123456),
(4, 7, 121),
(5, 7, 1212);

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `contract_person` varchar(50) NOT NULL,
  `bank_info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `company_name`, `email`, `phone`, `address`, `contract_person`, `bank_info`) VALUES
(1, 'Anam', 'anambrur@gmail.com', '01714613653', '  Dhanmondi', 'Abdul Hakim', 'DBDL,AC No:7017015314486'),
(2, 'Tanvir', 'tanvir@gmail.com', '01701005060', 'Rangpur', 'Zohora', 'BRAC NO: 73133468847'),
(4, 'Nazad', 'sohel@gmail.com', '01701005060', 'Mohammadpur', 'Zahid', 'DBDL,AC(7017015314486)'),
(6, 'Basundhara Group', ' basundhara@gmail.com', ' 01701005060', ' Basundhara,Dhaka', 'Anvir', 'BRAC NO: 73133468847');

-- --------------------------------------------------------

--
-- Stand-in structure for view `buyers_payment`
-- (See below for the actual view)
--
CREATE TABLE `buyers_payment` (
`company_name` varchar(100)
,`id` int(11)
,`buyer_id` int(11)
,`amount` decimal(10,2)
,`date` date
,`method` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_payment`
--

CREATE TABLE `buyer_payment` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_payment`
--

INSERT INTO `buyer_payment` (`id`, `buyer_id`, `amount`, `date`, `method`) VALUES
(14, 4, 2040.00, '2023-12-01', 'BKASH'),
(21, 2, 3060.00, '2023-12-02', 'BKASH'),
(22, 1, 1020.00, '2023-12-03', 'DBDL'),
(27, 2, 6500.00, '2023-12-02', 'BKASH'),
(28, 1, 9500.00, '2023-12-04', 'DBBL'),
(29, 4, 3060.00, '2023-12-05', 'NAGAT'),
(33, 2, 3060.00, '2023-12-04', 'BKASH'),
(36, 2, 12000.00, '2023-12-04', 'BKASH'),
(40, 1, 3060.00, '2023-12-04', 'DBDL'),
(41, 2, 3060.00, '2023-12-04', 'BKASH'),
(43, 1, 4080.00, '2023-12-05', 'BRAC'),
(45, 1, 9500.00, '2023-12-05', 'BRAC'),
(46, 2, 3060.00, '2023-12-04', 'DBDL'),
(47, 2, 9500.00, '2023-12-04', 'NAGAT'),
(48, 2, 9500.00, '2023-12-05', 'NAGAT'),
(49, 4, 9500.00, '2023-12-05', 'NAGAT'),
(50, 4, 500.00, '2023-12-02', 'BKASH'),
(51, 4, 2500.00, '2023-12-04', 'DBDL'),
(55, 1, 12000.00, '2023-12-03', 'DBDL'),
(57, 1, 8000.00, '2023-12-04', 'DBDL'),
(62, 4, 2000.00, '2023-12-04', 'DBDL'),
(63, 1, 12000.00, '2023-12-05', 'BKASH'),
(64, 1, 1000.00, '2023-12-04', 'BKASH'),
(65, 1, 1050.00, '2023-12-05', 'NAGAD'),
(66, 4, 3459.00, '2023-12-07', 'NAGAD'),
(67, 4, 10000.00, '2023-12-06', 'BKASH');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Fabric'),
(2, 'Color'),
(3, 'Botton'),
(4, 'Pin'),
(5, 'Ditergen');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(5, 'Admin'),
(6, 'HR'),
(7, 'Accounts'),
(8, 'Marketing'),
(9, 'Qulality Control'),
(10, 'worker');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `order_id`, `user_id`, `category_id`, `amount`, `date`) VALUES
(1, 5, 9, 2, 10000.00, '2023-12-11'),
(2, 5, 12, 3, 9500.00, '2023-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `name`) VALUES
(2, 'Shoping'),
(3, 'Traveling');

-- --------------------------------------------------------

--
-- Table structure for table `finished_product`
--

CREATE TABLE `finished_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `finished_product`
--

INSERT INTO `finished_product` (`id`, `order_id`, `quantity`, `unit_id`, `date`) VALUES
(3, 5, 200.00, 2, '2023-12-12'),
(4, 6, 150.00, 2, '2023-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `finished_product_wastage`
--

CREATE TABLE `finished_product_wastage` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_wastage`
--

CREATE TABLE `material_wastage` (
  `id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_wastage`
--

INSERT INTO `material_wastage` (`id`, `material_id`, `quantity`, `date`) VALUES
(1, 1, 0.00, '2023-12-06 00:00:00'),
(2, 1, 200.00, '2023-12-05 00:00:00'),
(3, 3, 150.00, '2023-12-10 00:00:00'),
(4, 3, 90.00, '2023-12-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `material_wastage_dump`
--

CREATE TABLE `material_wastage_dump` (
  `id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_wastage_dump`
--

INSERT INTO `material_wastage_dump` (`id`, `material_id`, `quantity`, `date`) VALUES
(1, 1, 40.00, '2023-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `material_wastage_sale`
--

CREATE TABLE `material_wastage_sale` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `secondary_buyer_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material_wastage_sale`
--

INSERT INTO `material_wastage_sale` (`id`, `invoice_id`, `material_id`, `price`, `secondary_buyer_id`, `quantity`, `date`) VALUES
(1, 623885553, 1, 111.00, 1, 20.00, '2023-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `project_manager_id` int(11) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('running','finished','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `project_id`, `buyer_id`, `start_date`, `end_date`, `quantity`, `unit_id`, `project_manager_id`, `supervisor_id`, `rate`, `status`) VALUES
(5, 2, 4, '2023-12-12', '2023-12-16', 300.00, 2, 10, 11, 450.00, ''),
(6, 1, 2, '2023-12-07', '2023-12-14', 200.00, 2, 10, 11, 120.00, 'running'),
(7, 3, 6, '2023-12-18', '2023-12-24', 1240.00, 2, 12, 11, 260.00, ''),
(8, 2, 6, '2023-12-19', '2023-12-30', 1500.00, 2, 10, 11, 800.00, 'running');

-- --------------------------------------------------------

--
-- Table structure for table `processing_steps`
--

CREATE TABLE `processing_steps` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processing_steps`
--

INSERT INTO `processing_steps` (`id`, `project_id`, `title`) VALUES
(17, 1, 'Designing'),
(18, 1, 'Cutting'),
(19, 1, 'Washing'),
(20, 1, 'Fitting'),
(21, 1, 'Packing'),
(27, 2, 'Fabrice Selecting'),
(28, 2, 'Cutting'),
(29, 2, 'Fitting'),
(30, 2, 'Washing'),
(31, 2, 'Packing'),
(32, 3, 'Designing'),
(33, 3, 'Fabrice Selecting'),
(34, 3, 'Fitting');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `prossesing_steps` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `details`, `prossesing_steps`) VALUES
(1, 'Winter Session', 'We have winter big deal', '5'),
(2, 'Jacket', 'Man Jackets', '5'),
(3, 'Pant', 'Gebading', '3');

-- --------------------------------------------------------

--
-- Table structure for table `project_materials`
--

CREATE TABLE `project_materials` (
  `id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_materials`
--

INSERT INTO `project_materials` (`id`, `material_id`, `quantity`, `order_id`) VALUES
(1, 3, 200.00, 3),
(2, 1, 200.00, 5);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `material_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `invoice_id`, `price`, `material_id`, `supplier_id`, `quantity`, `date`) VALUES
(1, 604614674, 1400000.00, 1, 1, 200.00, '2023-12-12 18:25:34'),
(2, 358457994, 1400000.00, 1, 1, 200.00, '2023-12-12 18:25:55'),
(3, 358457994, 800000.00, 2, 2, 160.00, '2023-12-12 18:25:55'),
(4, 358457994, 600000.00, 3, 3, 500.00, '2023-12-12 18:25:55'),
(5, 423589724, 1200000.00, 3, 3, 1000.00, '2023-12-17 11:24:11'),
(6, 423589724, 1400000.00, 1, 1, 200.00, '2023-12-17 11:24:11'),
(7, 423589724, 1200000.00, 3, 3, 1000.00, '2023-12-17 11:24:11'),
(8, 423589724, 1000000.00, 2, 1, 200.00, '2023-12-17 11:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `raw_materials`
--

CREATE TABLE `raw_materials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raw_materials`
--

INSERT INTO `raw_materials` (`id`, `name`, `price`, `unit_id`, `category_id`) VALUES
(1, 'Fabrics', 7000.00, 2, 1),
(2, 'Threard', 5000.00, 2, 2),
(3, 'Botam', 1200.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `secondary_buyer`
--

CREATE TABLE `secondary_buyer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `secondary_buyer`
--

INSERT INTO `secondary_buyer` (`id`, `name`, `phone`, `address`, `email`) VALUES
(1, 'shart', '01714613653', 'dhaka', 'nur@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `quantity`, `unit_id`, `date`) VALUES
(2, 5, 200.00, 2, '2023-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `stock_out`
--

CREATE TABLE `stock_out` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_out`
--

INSERT INTO `stock_out` (`id`, `invoice_id`, `material_id`, `quantity`, `user_id`, `date`, `project_id`) VALUES
(1, 0, 1, 500.00, 9, '2023-12-20 12:16:00', 2),
(2, 0, 1, 300.00, 9, '2023-12-14 09:38:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock_return`
--

CREATE TABLE `stock_return` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `material_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_return`
--

INSERT INTO `stock_return` (`id`, `invoice_id`, `quantity`, `date`, `material_id`) VALUES
(1, 604614674, 50.00, '2023-12-11', 1),
(2, 358457994, 150.00, '2023-12-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `contract_person` varchar(50) NOT NULL,
  `bank_info` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company_name`, `email`, `phone`, `address`, `contract_person`, `bank_info`) VALUES
(1, 'Rezaul', 'rezaul@gmail.com', '01785102654', 'Dhaka,Bangladesh', 'Shouli', 'BRAC BANK AC :9732463567'),
(2, 'Anam', 'anam@gmail.com', '01714613653', 'Dhanmondi', 'Foysal', 'BRAC BANK AC :9732463567'),
(3, 'Shauli', ' anambrurjkdhfhdi@gmail.com', ' 01701005060', 'Mirpur', 'Sajib', ' DBDL,AC(7017015314486)');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `method` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_payment`
--

INSERT INTO `supplier_payment` (`id`, `supplier_id`, `amount`, `method`, `date`) VALUES
(1, 1, 12000.00, ' DBBL', '2023-12-05 00:00:00'),
(2, 1, 12000.00, ' BKASH', '2023-12-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `processing_steps_id` int(11) NOT NULL,
  `bundle_id` int(11) NOT NULL,
  `received_date` datetime NOT NULL,
  `transfer_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `order_id`, `processing_steps_id`, `bundle_id`, `received_date`, `transfer_date`) VALUES
(1, 5, 27, 1, '2023-12-14 00:00:00', '2023-12-16 00:00:00'),
(2, 7, 17, 4, '2023-12-18 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`) VALUES
(1, 'Metter'),
(2, 'Pices'),
(3, 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `department_id`, `name`, `email`, `password`, `phone`, `address`, `photo`, `designation`) VALUES
(9, 5, 'Anam', 'admin@email.com', '827ccb0eea8a706c4c34a16891f84e7b', '01714613653', 'Dhaka,Dhanmondi', '', 'CEO'),
(10, 6, 'Minahaj', 'minhaj@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01763496921', 'Dhaka,Farmgate', '', 'Manager'),
(11, 6, 'Zahid', 'zahid@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01785102654', 'New Market', '', 'Supervisor'),
(12, 7, 'Rabbi', 'rabbi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01701954125', 'Rangpur', '', 'Manager'),
(13, 10, 'Kalam', '', '', '', '', '', 'worker'),
(14, 10, 'Habib', '', '', '', '', '', 'worker'),
(17, 10, 'Kamrul', '', '', '', '', '', 'worker'),
(18, 10, 'Tonmoy', '', '', '', '', '', 'worker'),
(19, 7, 'Hamid', 'admin@email.com', '827ccb0eea8a706c4c34a16891f84e7b', '01701005060', 'Rangpur', 'download.png', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `worker_assign`
--

CREATE TABLE `worker_assign` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `processing_steps_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `duration` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker_assign`
--

INSERT INTO `worker_assign` (`id`, `order_id`, `processing_steps_id`, `user_id`, `duration`) VALUES
(1, 5, 27, 13, 50.00),
(2, 5, 28, 14, 59.00),
(3, 5, 29, 14, 30.00),
(4, 5, 30, 13, 34.00),
(5, 5, 31, 14, 67.00),
(6, 7, 32, 13, 50.00),
(7, 7, 33, 14, 20.00),
(8, 7, 34, 18, 40.00),
(9, 6, 17, 13, 50.00),
(10, 6, 18, 14, 30.00),
(11, 6, 19, 17, 20.00);

-- --------------------------------------------------------

--
-- Structure for view `buyers_payment`
--
DROP TABLE IF EXISTS `buyers_payment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buyers_payment`  AS SELECT `buyers`.`company_name` AS `company_name`, `buyer_payment`.`id` AS `id`, `buyer_payment`.`buyer_id` AS `buyer_id`, `buyer_payment`.`amount` AS `amount`, `buyer_payment`.`date` AS `date`, `buyer_payment`.`method` AS `method` FROM (`buyers` join `buyer_payment` on(`buyers`.`id` = `buyer_payment`.`buyer_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_payment`
--
ALTER TABLE `buyer_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finished_product`
--
ALTER TABLE `finished_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `finished_product_wastage`
--
ALTER TABLE `finished_product_wastage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `material_wastage`
--
ALTER TABLE `material_wastage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `material_wastage_dump`
--
ALTER TABLE `material_wastage_dump`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `material_wastage_sale`
--
ALTER TABLE `material_wastage_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secondar_buyer_id` (`secondary_buyer_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `project_manager_id` (`project_manager_id`),
  ADD KEY `supervisor_id` (`supervisor_id`);

--
-- Indexes for table `processing_steps`
--
ALTER TABLE `processing_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_materials`
--
ALTER TABLE `project_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `secondary_buyer`
--
ALTER TABLE `secondary_buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `stock_out`
--
ALTER TABLE `stock_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `stock_return`
--
ALTER TABLE `stock_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_id` (`bundle_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `process_step_id` (`processing_steps_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `worker_assign`
--
ALTER TABLE `worker_assign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `processing_steps_id` (`processing_steps_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buyer_payment`
--
ALTER TABLE `buyer_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `finished_product`
--
ALTER TABLE `finished_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `finished_product_wastage`
--
ALTER TABLE `finished_product_wastage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material_wastage`
--
ALTER TABLE `material_wastage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `material_wastage_dump`
--
ALTER TABLE `material_wastage_dump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `material_wastage_sale`
--
ALTER TABLE `material_wastage_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `processing_steps`
--
ALTER TABLE `processing_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_materials`
--
ALTER TABLE `project_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `raw_materials`
--
ALTER TABLE `raw_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `secondary_buyer`
--
ALTER TABLE `secondary_buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_out`
--
ALTER TABLE `stock_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_return`
--
ALTER TABLE `stock_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `worker_assign`
--
ALTER TABLE `worker_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bundles`
--
ALTER TABLE `bundles`
  ADD CONSTRAINT `bundles_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buyer_payment`
--
ALTER TABLE `buyer_payment`
  ADD CONSTRAINT `buyer_payment_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expense_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expense_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `expense_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finished_product`
--
ALTER TABLE `finished_product`
  ADD CONSTRAINT `finished_product_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `finished_product_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finished_product_wastage`
--
ALTER TABLE `finished_product_wastage`
  ADD CONSTRAINT `finished_product_wastage_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `finished_product_wastage_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `material_wastage`
--
ALTER TABLE `material_wastage`
  ADD CONSTRAINT `material_wastage_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `material_wastage_dump`
--
ALTER TABLE `material_wastage_dump`
  ADD CONSTRAINT `material_wastage_dump_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `material_wastage_sale`
--
ALTER TABLE `material_wastage_sale`
  ADD CONSTRAINT `material_wastage_sale_ibfk_1` FOREIGN KEY (`secondary_buyer_id`) REFERENCES `secondary_buyer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `material_wastage_sale_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`project_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`supervisor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `processing_steps`
--
ALTER TABLE `processing_steps`
  ADD CONSTRAINT `processing_steps_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD CONSTRAINT `raw_materials_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `raw_materials_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipping_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_out`
--
ALTER TABLE `stock_out`
  ADD CONSTRAINT `stock_out_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_out_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock_return`
--
ALTER TABLE `stock_return`
  ADD CONSTRAINT `stock_return_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD CONSTRAINT `supplier_payment_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `process_step_id` FOREIGN KEY (`processing_steps_id`) REFERENCES `processing_steps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfers_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `worker_assign`
--
ALTER TABLE `worker_assign`
  ADD CONSTRAINT `worker_assign_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `worker_assign_ibfk_2` FOREIGN KEY (`processing_steps_id`) REFERENCES `processing_steps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `worker_assign_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
