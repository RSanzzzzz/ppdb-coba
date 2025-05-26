-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2025 at 02:41 PM
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
-- Database: `ppdb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`, `name`, `created_at`) VALUES
(3, 'admins', '$2y$10$nutiDeOkcgga1zSiwDPV0eFLeUddmw0JxToI59VWR/3FXnAZjYW4G', 'admins@g.c', 'ihsan', '2025-03-30 13:18:22'),
(4, 'admin', '$2y$10$3jI5KerSAUJ4wYs/W5ll7.9qcg3N5QfnCbHGjt7q1HODFp9dgxpES', 'admin@l.com', 'MTs Al-Ishlah', '2025-03-30 13:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `registration_number` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `religion` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `father_job` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `mother_job` varchar(100) NOT NULL,
  `parent_phone` varchar(20) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` text NOT NULL,
  `graduation_year` varchar(4) NOT NULL,
  `certificate_file` varchar(255) NOT NULL,
  `birth_certificate_file` varchar(255) NOT NULL,
  `family_card_file` varchar(255) NOT NULL,
  `photo_file` varchar(255) NOT NULL,
  `status` enum('pending','verified','accepted','rejected') DEFAULT 'pending',
  `admin_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `user_id`, `registration_number`, `full_name`, `nisn`, `birth_place`, `birth_date`, `gender`, `religion`, `address`, `phone`, `email`, `father_name`, `father_job`, `mother_name`, `mother_job`, `parent_phone`, `school_name`, `school_address`, `graduation_year`, `certificate_file`, `birth_certificate_file`, `family_card_file`, `photo_file`, `status`, `admin_notes`, `created_at`) VALUES
(14, 4, 'PPDB2025360', 'Rista', '1203810', 'Tasikmalaya', '2004-01-24', 'female', 'islam', 'Hanja', '09021398', 'asoy@gmail.com', 'Iis', '-', 'Dedeh', '-', '28931309', 'SDN 02 Bojonggambir', 'Bojonggambir', '2016', 'uploads/1743420266_Cuplikan layar 2023-10-09 202246.png', 'uploads/1743420266_Cuplikan layar 2023-10-09 202246.png', 'uploads/1743420266_Cuplikan layar 2023-10-09 202246.png', 'uploads/1743420266_Cuplikan layar 2023-10-09 202246.png', 'accepted', '- Data anda sudah diterima.\r\n- Anda berhasil diterima, lakukan daftar ulang dengan cara datang langsung ke kampus MTs Al-Ishlah bagian TU', '2025-03-31 11:24:26'),
(15, 5, 'PPDB2025887', 'Salwa', '1203810', 'Tasikmalaya', '2023-09-24', 'female', 'islam', 'kajds', '09021398', 'salwa@l.com', 'Asep', 'Freelancer', 'Oop', '-', '28931309', 'TK', 'Pakuhasna', '2025', 'uploads/1743421032_Cuplikan layar 2023-10-09 202424.png', 'uploads/1743421032_Cuplikan layar 2023-10-09 202424.png', 'uploads/1743421032_Cuplikan layar 2023-10-09 202307.png', 'uploads/1743421032_Cuplikan layar 2023-10-09 144544.png', 'accepted', 'ppppppppp', '2025-03-31 11:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `created_at`) VALUES
(1, 'demo', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'demo@example.com', 'Demo User', '2025-03-30 12:21:47'),
(3, 'root', '$2y$10$oRDiVigk8UFWg9RsCZ/p7OjtZDH4EuYD4J/eTqnc9RJWWEyu7SfuK', 'rsanz@g.com', 'Muhammad Ihsan Abdillah', '2025-03-30 12:23:13'),
(4, 'rista', '$2y$10$anyMRDZHQv5OcHUsnbzMeuCNVcaJrvsFDkTVuJBcwAY35Cuw.r0vu', 'asoy@gmail.com', 'Rista', '2025-03-30 12:32:14'),
(5, 'salwa', '$2y$10$lJKeH6pEe/nrcbo6b7Ixz.EaH4nZRGhk3e6KL2jPczzQKBsjO3bIq', 'salwa@l.com', 'Salwa', '2025-03-31 10:40:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
