-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 07:22 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(30) NOT NULL,
  `airline_name` varchar(100) NOT NULL,
  `no_of_flights` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `airline_name`, `no_of_flights`) VALUES
(100, 'International airline', 200),
(102, 'ABC Air', 200),
(103, '80s Air', 200),
(120, 'Lapis Air', 200),
(144, 'Happy Air', 100),
(150, 'Yashodha Airline', 100),
(200, 'Dubai Airline', 150),
(440, 'Trishakti Airline', 100),
(570, 'London Air', 100),
(600, 'Smile Air', 100),
(980, 'Crystal Airline', 100),
(1018, 'ABC Airline', 100);

-- --------------------------------------------------------

--
-- Table structure for table `arr_date`
--

CREATE TABLE `arr_date` (
  `arr_date_no` int(50) NOT NULL,
  `arr_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arr_date`
--

INSERT INTO `arr_date` (`arr_date_no`, `arr_date`) VALUES
(1, '2021-06-02'),
(2, '2021-06-05'),
(3, '2021-06-06'),
(4, '2021-06-10'),
(5, '2021-06-11'),
(6, '2021-06-12'),
(7, '2021-06-14'),
(8, '2021-06-15'),
(9, '2021-06-16'),
(10, '2021-06-17'),
(11, '2021-06-18'),
(12, '2021-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `arr_time`
--

CREATE TABLE `arr_time` (
  `arr_time_no` int(50) NOT NULL,
  `arr_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arr_time`
--

INSERT INTO `arr_time` (`arr_time_no`, `arr_time`) VALUES
(1, '01:00:00'),
(2, '02:00:00'),
(3, '03:00:00'),
(4, '04:00:00'),
(5, '05:00:00'),
(6, '06:00:00'),
(7, '07:00:00'),
(8, '08:00:00'),
(9, '09:00:00'),
(10, '10:00:00'),
(11, '11:00:00'),
(12, '12:00:00'),
(13, '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendants`
--

CREATE TABLE `attendants` (
  `attendant_id` int(30) NOT NULL,
  `address_id` int(30) NOT NULL,
  `attendant_name` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendants`
--

INSERT INTO `attendants` (`attendant_id`, `address_id`, `attendant_name`, `position`, `phone`) VALUES
(1, 2, 'sandesh thapa magar', 'senior_attendants', '9805227421'),
(2, 8, 'hari thapa magar', 'junior_attendants', '9805227101'),
(4, 5, 'Ram thapa magar', 'senior_attendants', '9805227421'),
(6, 7, 'sandesh thapa magar', 'senior_attendants', '9805227541'),
(9, 10, 'sandesh thapa magar', 'junior_attendants', '98052278421'),
(11, 12, 'heman thapa magar', 'senior_attendants', '98052877421'),
(13, 14, 'sandesh thapa magar', 'junior_attendants', '9806727421'),
(15, 16, 'arjun thapa magar', 'senior_attendants', '9805244421'),
(17, 18, 'sandesh thapa magar', 'junior_attendants', '9807627421'),
(19, 20, 'sandesh thapa magar', 'senior_attendants', '9805527421');

-- --------------------------------------------------------

--
-- Table structure for table `attendant_address`
--

CREATE TABLE `attendant_address` (
  `address_id` int(30) NOT NULL,
  `street` int(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` int(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendant_address`
--

INSERT INTO `attendant_address` (`address_id`, `street`, `city`, `state`, `postal_code`, `country`) VALUES
(2, 123, 'washington', 'dhaulagiri', 24637, 'nepal'),
(3, 321, 'thimi', 'gandagi', 24637, 'nepal'),
(4, 152, 'greenville', 'rapti', 24067, 'nepal'),
(5, 245, 'washinton', 'rapti', 22937, 'nepal'),
(6, 987, 'franklin', 'dhaulagiri', 20937, 'nepal'),
(7, 567, 'washinton', 'gandigi', 24667, 'nepal'),
(8, 583, 'springfield', 'dhaulagiri', 87637, 'nepal'),
(9, 674, 'bhaktapur', 'dhaulagiri', 24087, 'nepal'),
(10, 98, 'tokha', 'rapti', 24037, 'nepal'),
(11, 167, 'kirtipur', 'dhaulagiri', 24437, 'nepal');

-- --------------------------------------------------------

--
-- Table structure for table `attendant_flight`
--

CREATE TABLE `attendant_flight` (
  `attendant_flight_no` int(50) NOT NULL,
  `attendant_id` int(30) NOT NULL,
  `flight_num` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendant_flight`
--

INSERT INTO `attendant_flight` (`attendant_flight_no`, `attendant_id`, `flight_num`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 3, 1),
(6, 2, 5),
(7, 4, 1),
(8, 5, 1),
(9, 2, 2),
(10, 3, 3),
(11, 3, 6),
(12, 3, 5),
(13, 4, 6),
(14, 6, 6),
(15, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `attendant_salary`
--

CREATE TABLE `attendant_salary` (
  `position` varchar(50) NOT NULL,
  `salary` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendant_salary`
--

INSERT INTO `attendant_salary` (`position`, `salary`) VALUES
('junior_attendant', 150000),
('senior_attendant', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_num` int(30) DEFAULT NULL,
  `customer_id` int(30) NOT NULL,
  `flight_num` int(30) NOT NULL,
  `seat_no` varchar(100) NOT NULL,
  `charge_no` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_num`, `customer_id`, `flight_num`, `seat_no`, `charge_no`) VALUES
(1000, 1, 3, '102', 1),
(1000, 1, 4, '101', NULL),
(1001, 3, 5, '103', 1),
(NULL, 4, 6, '104', NULL),
(1004, 5, 7, '105', 2),
(1002, 6, 8, '106', 3),
(NULL, 7, 9, '107', NULL),
(1005, 8, 10, '108', 2),
(1006, 9, 11, '109', 4),
(1007, 10, 12, '110', 5);

-- --------------------------------------------------------

--
-- Table structure for table `book_charge_each`
--

CREATE TABLE `book_charge_each` (
  `charge_no` int(30) NOT NULL,
  `charge_each` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_charge_each`
--

INSERT INTO `book_charge_each` (`charge_no`, `charge_each`) VALUES
(1, 3000),
(2, 4000),
(3, 5000),
(4, 6000),
(5, 7000),
(6, 8000),
(7, 9000),
(8, 10000),
(9, 11000),
(10, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `book_date_total`
--

CREATE TABLE `book_date_total` (
  `book_num` int(50) NOT NULL,
  `book_date` date NOT NULL,
  `book_total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_date_total`
--

INSERT INTO `book_date_total` (`book_num`, `book_date`, `book_total`) VALUES
(1000, '2021-02-05', 3000),
(1001, '2021-02-06', 4000),
(1002, '2021-02-06', 5000),
(1003, '2021-02-07', 6000),
(1004, '2021-02-08', 7000),
(1005, '2021-02-08', 8000),
(1006, '2021-02-09', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(30) NOT NULL,
  `address_id` int(30) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_lname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `address_id`, `customer_fname`, `customer_lname`) VALUES
(1, 1, 'Sushma', 'Shrestha'),
(2, 3, 'Sushma', 'Shrestha'),
(3, 2, 'Sunil', 'Shrestha'),
(4, 3, 'Sriya', 'khan'),
(5, 4, 'Parbati', 'Shrestha'),
(6, 5, 'Chandra Kumar', 'Shrestha'),
(7, 6, 'Januka', 'Pradhan'),
(8, 7, 'ABC', 'XYZ'),
(9, 8, 'ABC', 'XYZ'),
(10, 9, 'XYZ', 'ABC');

-- --------------------------------------------------------

--
-- Table structure for table `customers_phone`
--

CREATE TABLE `customers_phone` (
  `phone_id` int(30) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `customer_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers_phone`
--

INSERT INTO `customers_phone` (`phone_id`, `phone_number`, `customer_id`) VALUES
(1, 98765545, 1),
(2, 98476546, 1),
(3, 9876567, 2),
(4, 987654576, 3),
(5, 98765467, 3),
(6, 987768998, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(30) NOT NULL,
  `street` int(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` int(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `street`, `city`, `state`, `postal_code`, `country`) VALUES
(1, 6789, 'Washington', 'Alabama', 10700, 'Nepal'),
(2, 456, 'Springfield', 'Alaska', 10710, 'Nepal'),
(3, 965, 'Franklin', 'California', 10711, 'Nepal'),
(4, 976, 'Greenflield', 'Floridia', 10712, 'Nepal'),
(5, 123, 'Clinton', 'Georgia', 10712, 'Nepal'),
(6, 234, 'fairview', 'Indiana', 32701, 'Australia'),
(7, 45667, 'Salem', 'Maine', 32702, 'India'),
(8, 1111, 'Medison', 'Maryland', 32703, 'katar'),
(9, 2222, 'Georgetown', 'Mississipi', 32704, 'Australia'),
(10, 9090, 'Bristol', 'Nevada', 32705, 'katar');

-- --------------------------------------------------------

--
-- Table structure for table `customer_email`
--

CREATE TABLE `customer_email` (
  `email_add` varchar(50) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `email_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_email`
--

INSERT INTO `customer_email` (`email_add`, `customer_id`, `email_id`) VALUES
('mmnhd@gmail.com', 2, 1),
('vbvn@gmail.com', 4, 2),
('mjijk@gmail.com', 2, 3),
('vhbnm@gmail.com', 4, 4),
('cvbhj@gmail.com', 5, 5),
('abcde@gmail.com', 1, 6),
('abc@gmail.com', 1, 7),
('cfgvhjk@gmail.com', 6, 8),
('cftvgh@gmail.com', 3, 9),
('dfghb@gmail.com', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_num` int(30) NOT NULL,
  `B_seats` int(30) NOT NULL,
  `E_seats` int(30) NOT NULL,
  `dep_date` date NOT NULL,
  `arr_date_no` int(50) NOT NULL,
  `dep_time` time NOT NULL,
  `arr_time_no` int(50) NOT NULL,
  `origin_place` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_num`, `B_seats`, `E_seats`, `dep_date`, `arr_date_no`, `dep_time`, `arr_time_no`, `origin_place`, `destination`) VALUES
(1, 40, 240, '2021-06-02', 1, '01:00:00', 3, 'kuala lumpur', 'australia'),
(2, 50, 500, '2021-06-04', 2, '02:00:00', 6, 'nepal', 'katar'),
(3, 60, 490, '2021-06-03', 2, '09:00:00', 1, 'nepal', 'korea'),
(4, 60, 490, '2021-06-08', 3, '10:00:00', 9, 'nepal', 'china'),
(5, 50, 500, '2021-06-09', 4, '06:00:00', 5, 'nepal', 'katar'),
(6, 40, 240, '2021-06-09', 5, '03:00:00', 8, 'nepal', 'australia'),
(7, 60, 490, '2021-06-11', 6, '09:00:00', 10, 'nepal', 'korea'),
(8, 60, 490, '2021-06-13', 7, '06:00:00', 13, 'nepal', 'china'),
(9, 80, 500, '2021-06-14', 8, '10:00:00', 2, 'nepal', 'india'),
(10, 80, 500, '2021-06-15', 9, '10:00:00', 2, 'nepal', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `pilot_staff_no` int(30) NOT NULL,
  `staff_fname` varchar(50) NOT NULL,
  `staff_lname` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `ex_year` int(10) NOT NULL,
  `position_no` int(50) NOT NULL,
  `fly_hour` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilot`
--

INSERT INTO `pilot` (`pilot_staff_no`, `staff_fname`, `staff_lname`, `age`, `ex_year`, `position_no`, `fly_hour`) VALUES
(1, 'John', 'Flores', 25, 3, 1, 19000),
(2, 'Peter', 'Simmons', 27, 4, 2, 20000),
(3, 'Paul', 'Ward', 31, 6, 2, 21000),
(4, 'Joey', 'Bell', 26, 2, 3, 17000),
(5, 'Hector', 'Cox', 28, 4, 4, 25000),
(6, 'Eli', 'Sanders', 27, 3, 5, 27000),
(7, 'Seth', 'Baker', 32, 8, 6, 21000),
(8, 'Miles', 'Shaw', 27, 3, 3, 23000),
(9, 'Melody', 'Adams', 28, 5, 4, 27000),
(10, 'Vicki', 'Ellis', 27, 3, 5, 15000),
(11, 'Mikael', 'Tinnason', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pilot_flight`
--

CREATE TABLE `pilot_flight` (
  `pilot_flight_no` int(50) NOT NULL,
  `pilot_staff_no` int(30) NOT NULL,
  `flight_num` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilot_flight`
--

INSERT INTO `pilot_flight` (`pilot_flight_no`, `pilot_staff_no`, `flight_num`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 1),
(4, 2, 7),
(5, 2, 9),
(6, 3, 3),
(7, 3, 9),
(8, 4, 3),
(9, 4, 7),
(10, 5, 2),
(11, 11, 2),
(12, 5, 5),
(13, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pilot_position`
--

CREATE TABLE `pilot_position` (
  `position_no` int(50) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilot_position`
--

INSERT INTO `pilot_position` (`position_no`, `position`) VALUES
(1, 'Medical and Air Ambulance Co-Pilot'),
(2, 'Medical and Air Ambulance Senior Pilot'),
(3, 'Government Service Pilot'),
(4, 'Media and Patrol Pilot '),
(5, 'Air Tour Pilot'),
(6, 'Law Enforcement Pilot'),
(7, 'Fire Fighting Pilot'),
(8, 'Contract Pilot'),
(9, 'Airshow Stunt Pilot'),
(10, 'Military Pilot');

-- --------------------------------------------------------

--
-- Table structure for table `pilot_salary`
--

CREATE TABLE `pilot_salary` (
  `position_no` int(50) NOT NULL,
  `salary` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pilot_salary`
--

INSERT INTO `pilot_salary` (`position_no`, `salary`) VALUES
(1, 40000),
(2, 50000),
(3, 50000),
(4, 65000),
(5, 70000),
(6, 65000),
(7, 75000),
(8, 70000),
(9, 55000),
(10, 75000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `arr_date`
--
ALTER TABLE `arr_date`
  ADD PRIMARY KEY (`arr_date_no`);

--
-- Indexes for table `arr_time`
--
ALTER TABLE `arr_time`
  ADD PRIMARY KEY (`arr_time_no`);

--
-- Indexes for table `attendants`
--
ALTER TABLE `attendants`
  ADD PRIMARY KEY (`attendant_id`);

--
-- Indexes for table `attendant_address`
--
ALTER TABLE `attendant_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `attendant_flight`
--
ALTER TABLE `attendant_flight`
  ADD PRIMARY KEY (`attendant_flight_no`);

--
-- Indexes for table `attendant_salary`
--
ALTER TABLE `attendant_salary`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`flight_num`,`seat_no`);

--
-- Indexes for table `book_charge_each`
--
ALTER TABLE `book_charge_each`
  ADD PRIMARY KEY (`charge_no`);

--
-- Indexes for table `book_date_total`
--
ALTER TABLE `book_date_total`
  ADD PRIMARY KEY (`book_num`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers_phone`
--
ALTER TABLE `customers_phone`
  ADD PRIMARY KEY (`phone_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `customer_email`
--
ALTER TABLE `customer_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_num`);

--
-- Indexes for table `pilot`
--
ALTER TABLE `pilot`
  ADD PRIMARY KEY (`pilot_staff_no`);

--
-- Indexes for table `pilot_flight`
--
ALTER TABLE `pilot_flight`
  ADD PRIMARY KEY (`pilot_flight_no`);

--
-- Indexes for table `pilot_position`
--
ALTER TABLE `pilot_position`
  ADD PRIMARY KEY (`position_no`);

--
-- Indexes for table `pilot_salary`
--
ALTER TABLE `pilot_salary`
  ADD PRIMARY KEY (`position_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendant_flight`
--
ALTER TABLE `attendant_flight`
  MODIFY `attendant_flight_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pilot_flight`
--
ALTER TABLE `pilot_flight`
  MODIFY `pilot_flight_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
