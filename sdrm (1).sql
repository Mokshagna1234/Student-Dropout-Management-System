-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 11:39 AM
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
-- Database: `sdrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'sdrm@admin', 'jayanthyadav9391@gmail.com', '$2y$10$MPLrJ6fdXxL4SIfqyvKSye0pSCkEwPvThQwT6W4vxj924iByyS8z2', '2025-03-03 07:41:44', '2025-03-03 07:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendances`
--

CREATE TABLE `emp_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Date` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `CheckIn` varchar(255) DEFAULT NULL,
  `CheckOut` varchar(255) DEFAULT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'Absent',
  `TotalTime` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emp_attendances`
--

INSERT INTO `emp_attendances` (`id`, `Date`, `CheckIn`, `CheckOut`, `Status`, `TotalTime`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '2024-03-24 23:34:51', '23:33:52', '23:33:54', 'Absent', '0:0:1', '2024-03-24 12:34:51', '2024-03-24 12:34:51', 3),
(2, '2024-03-24 23:35:27', '23:35:15', '23:35:27', 'Present', '0:0:11', '2024-03-24 12:35:27', '2024-03-24 12:35:27', 3),
(8, '2024-03-29 12:43:02', '12:42:49', '12:43:01', 'Present', '0:0:12', '2024-03-29 01:43:02', '2024-03-29 01:43:02', 4),
(9, '2025-03-02 15:31:33', '15:31:29', '15:31:33', 'Absent', '0:0:3', '2025-03-02 04:31:33', '2025-03-02 04:31:33', 29),
(10, '2025-03-04 17:41:21', '17:41:14', '17:41:20', 'Present', '0:0:6', '2025-03-04 06:41:21', '2025-03-04 06:41:21', 29),
(11, '2025-03-04 17:43:52', '17:43:28', '17:43:52', 'Absent', '0:0:23', '2025-03-04 06:43:52', '2025-03-04 06:43:52', 29),
(12, '2025-03-06 16:28:08', '16:28:05', '16:28:08', 'Absent', '0:0:3', '2025-03-06 05:28:08', '2025-03-06 05:28:08', 1),
(13, '2025-03-07 10:56:46', '10:56:42', '10:56:46', 'Absent', '0:0:4', '2025-03-06 23:56:46', '2025-03-06 23:56:46', 9);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(3) NOT NULL,
  `mentor_name` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `parent/guardian_name` varchar(255) DEFAULT NULL,
  `parent/guardian_contact` bigint(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `mentor_name`, `student_name`, `email`, `class`, `parent/guardian_name`, `parent/guardian_contact`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Ram', 'Jayanth', 'jay123@gmail.com', NULL, NULL, NULL, '$2y$10$MPLrJ6fdXxL4SIfqyvKSye0pSCkEwPvThQwT6W4vxj924iByyS8z2', NULL, '2025-03-06 10:39:53', '2025-03-06 10:39:53'),
(2, 'Sarah Johnson', 'Pavan', 'pavan@gmail.com', '11A', 'Ramesh Babu', 9372928922, 'Pavan@123', 'Alaganipadu ,Nellore district', '2025-03-06 13:11:27', '2025-03-06 13:11:27'),
(3, 'Sarah Johnson', 'Pavan', 'pavan@gmail.com', '11A', 'Ramesh Babu', 9372928922, 'Pavan@123', 'Alaganipadu ,Nellore district', '2025-03-06 13:11:38', '2025-03-06 13:11:38'),
(4, 'Sarah Johnson', 'Pavan', 'pavan@gmail.com', '11A', 'Ramesh Babu', 9372928922, 'Pavan@123', 'Alaganipadu ,Nellore district', '2025-03-06 13:13:16', '2025-03-06 13:13:16'),
(5, 'Sarah Johnson', 'Pavan', 'pavan@gmail.com', '11A', 'Ramesh Babu', 9372928922, 'Pavan@123', 'Alaganipadu ,Nellore district', '2025-03-06 13:13:36', '2025-03-06 13:13:36'),
(6, 'Sarah Johnson', 'Pavan', 'pavan@gmail.com', '11A', 'Ramesh Babu', 9372928922, 'Pavan@123', 'Alaganipadu ,Nellore district', '2025-03-07 04:47:29', '2025-03-07 04:47:29'),
(9, 'Sunil S', 'Bharath Kumar', 'bharath@gmail.com', '12B', 'Govardhan', 7493747493, '$2y$10$a95C69WNgj2RDKFlrSV.auhUUF64sVapsDpXj5hLBvOi9WMbdzbt6', 'Nellore , Ntr Nagar - 567272', '2025-03-07 05:25:54', '2025-03-07 05:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `student_issues`
--

CREATE TABLE `student_issues` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `mentor_name` varchar(255) DEFAULT NULL,
  `issue_type` varchar(255) NOT NULL,
  `issue_description` varchar(255) NOT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `mentor_email` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_issues`
--

INSERT INTO `student_issues` (`id`, `student_name`, `mentor_name`, `issue_type`, `issue_description`, `student_email`, `mentor_email`, `updated_at`, `created_at`) VALUES
(2, 'Bharath Kumar', 'Sunil S', 'financial', 'ghhgfdhgfhgfhgcgdfdfdgfcgdfgfd', 'bharath@gmail.com', 'jayanthyadav9391@gmail.com', '2025-03-15 09:28:01', '2025-03-15 09:28:01'),
(3, 'Bharath Kumar', 'Sunil S', 'financial', 'I am facing money', 'bharath@gmail.com', 'jayanthyadav9391@gmail.com', '2025-03-15 10:00:29', '2025-03-15 10:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(3) NOT NULL,
  `mentor_name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` bigint(3) DEFAULT 1,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `mentor_name`, `username`, `phone_number`, `email`, `subject`, `status`, `password`, `created_at`, `updated_at`) VALUES
(7, 'Rakesh Varma', NULL, 9382191829, 'rakeshvarma321@gmail.com', 'Computer Science', 0, 'rakeshvarma123', '2025-03-03 11:07:03', '2025-03-03 11:07:03'),
(8, 'Sunil S', NULL, 9473972929, 'jayanthyadav9391@gmail.com', 'Art', 0, '$2y$10$mj/7foAXB5PBuCZXLwnDj.T9egXrQs5ldNchQwY3epX1krzkQ5mOW', '2025-03-06 11:05:39', '2025-03-06 11:05:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_attendances`
--
ALTER TABLE `emp_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_issues`
--
ALTER TABLE `student_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emp_attendances`
--
ALTER TABLE `emp_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_issues`
--
ALTER TABLE `student_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
