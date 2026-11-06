-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2026 at 08:40 AM
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
-- Database: `bright_smile_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `request_id`, `appointment_date`, `appointment_time`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 9, '2026-10-21', '14:00:00', 2, '2026-10-13 12:47:09', '2026-10-16 03:29:23'),
(2, 3, '2026-10-13', '10:30:00', 2, '2026-10-14 21:05:39', '2026-10-15 16:14:58'),
(3, 4, '2026-10-13', '11:00:00', 5, '2026-10-14 21:05:45', '2026-10-15 05:58:26'),
(4, 8, '2026-10-20', '10:00:00', 2, '2026-10-14 21:05:52', '2026-10-15 16:30:39'),
(5, 11, '2026-10-20', '14:00:00', 4, '2026-10-14 21:08:15', '2026-10-15 05:54:21'),
(6, 12, '2026-10-31', '09:00:00', 2, '2026-10-14 21:11:50', '2026-10-15 16:23:06'),
(7, 5, '2026-10-17', '14:00:00', 3, '2026-10-14 22:10:43', '2026-10-15 11:04:03'),
(8, 6, '2026-10-20', '09:00:00', 3, '2026-10-15 05:24:06', '2026-10-15 17:23:25'),
(9, 10, '2026-10-16', '09:00:00', 2, '2026-10-15 05:29:38', '2026-10-15 16:12:29'),
(10, 7, '2026-10-17', '11:00:00', 2, '2026-10-15 05:29:45', '2026-10-15 16:30:02'),
(11, 13, '2026-10-20', '13:30:00', 4, '2026-10-15 05:47:12', '2026-10-15 16:13:45'),
(12, 16, '2026-10-23', '11:30:00', 3, '2026-10-15 14:40:53', '2026-10-15 17:23:04'),
(13, 17, '2026-10-17', '09:00:00', 2, '2026-10-15 16:11:35', '2026-10-15 16:21:58'),
(14, 19, '2026-10-17', '10:30:00', 5, '2026-10-15 17:26:47', '2026-10-15 18:29:22'),
(15, 20, '2026-10-17', '10:00:00', 2, '2026-10-15 17:36:02', '2026-10-16 00:58:33'),
(16, 21, '2026-10-17', '11:30:00', 2, '2026-10-15 18:11:19', '2026-10-15 18:29:50'),
(17, 22, '2026-10-17', '14:30:00', 2, '2026-10-15 18:14:12', '2026-10-15 18:22:13'),
(18, 23, '2026-10-28', '09:00:00', 1, '2026-10-15 18:31:55', '2026-10-15 18:31:55'),
(19, 24, '2026-11-01', '09:00:00', 3, '2026-10-16 01:08:26', '2026-10-16 01:29:36'),
(20, 26, '2026-10-20', '10:00:00', 5, '2026-10-16 01:41:37', '2026-10-16 03:29:37'),
(21, 29, '2026-10-20', '09:30:00', 2, '2026-10-16 03:44:45', '2026-10-16 03:45:44'),
(22, 28, '2026-10-18', '09:30:00', 1, '2026-10-16 03:46:44', '2026-10-16 03:51:43'),
(23, 30, '2026-10-20', '10:30:00', 1, '2026-10-16 04:02:48', '2026-10-16 04:02:48'),
(24, 25, '2026-10-17', '10:00:00', 1, '2026-10-16 04:11:43', '2026-10-16 04:11:43'),
(25, 31, '2026-10-20', '09:30:00', 2, '2026-10-16 05:08:43', '2026-10-16 05:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_requests`
--

CREATE TABLE `appointment_requests` (
  `request_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `other_service_description` varchar(500) DEFAULT NULL,
  `requested_date` date NOT NULL,
  `requested_time` time NOT NULL,
  `request_status_id` int(11) NOT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `payment_deadline` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `duration_minutes` int(11) NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_requests`
--

INSERT INTO `appointment_requests` (`request_id`, `patient_id`, `service_id`, `other_service_description`, `requested_date`, `requested_time`, `request_status_id`, `reviewed_by`, `reviewed_at`, `accepted_at`, `payment_deadline`, `created_at`, `duration_minutes`) VALUES
(1, 1, 4, NULL, '2026-10-09', '08:30:00', 3, 2, '2026-10-10 17:47:48', NULL, '2026-10-11 16:56:43', '2026-10-10 08:56:43', 30),
(2, 1, 3, NULL, '2026-10-09', '11:30:00', 2, 2, '2026-10-10 17:47:23', '2026-10-10 17:47:23', '2026-10-11 17:47:23', '2026-10-10 09:19:35', 30),
(3, 1, 1, NULL, '2026-10-13', '10:30:00', 5, NULL, NULL, NULL, '2026-10-13 01:13:53', '2026-10-11 17:13:53', 30),
(4, 1, 1, NULL, '2026-10-13', '11:00:00', 5, NULL, NULL, NULL, '2026-10-13 01:26:54', '2026-10-11 17:26:54', 30),
(5, 1, 1, NULL, '2026-10-17', '14:00:00', 5, NULL, NULL, NULL, '2026-10-13 10:50:33', '2026-10-12 02:50:33', 30),
(6, 3, 1, NULL, '2026-10-20', '09:00:00', 3, NULL, '2026-10-16 01:23:25', NULL, '2026-10-13 10:52:53', '2026-10-12 02:52:53', 30),
(7, 3, 1, NULL, '2026-10-17', '11:00:00', 5, NULL, '2026-10-15 13:29:45', '2026-10-15 13:29:45', '2026-10-14 13:39:08', '2026-10-13 05:39:08', 30),
(8, 4, 2, NULL, '2026-10-20', '16:30:00', 5, NULL, NULL, NULL, '2026-10-14 13:41:32', '2026-10-13 05:41:32', 30),
(9, 4, 2, NULL, '2026-10-21', '14:00:00', 5, NULL, NULL, NULL, '2026-10-14 18:52:41', '2026-10-13 10:52:41', 30),
(10, 6, 2, NULL, '2026-10-16', '09:00:00', 5, NULL, '2026-10-15 13:29:38', '2026-10-15 13:29:38', NULL, '2026-10-14 18:21:16', 30),
(11, 7, 5, NULL, '2026-10-20', '14:00:00', 5, NULL, '2026-10-15 13:42:09', '2026-10-15 13:42:09', NULL, '2026-10-14 18:25:14', 30),
(12, 3, 5, NULL, '2026-10-31', '09:00:00', 5, NULL, NULL, NULL, NULL, '2026-10-14 18:29:46', 30),
(13, 8, 3, NULL, '2026-10-20', '13:30:00', 5, NULL, NULL, NULL, NULL, '2026-10-15 05:46:03', 30),
(14, 1, 3, NULL, '2026-10-17', '13:30:00', 2, NULL, NULL, NULL, NULL, '2026-10-15 11:03:29', 30),
(15, 4, 8, 'sadsad', '2026-10-23', '14:00:00', 2, NULL, NULL, NULL, NULL, '2026-10-15 12:57:27', 30),
(16, 3, 5, NULL, '2026-10-23', '11:30:00', 3, NULL, '2026-10-16 01:23:04', NULL, NULL, '2026-10-15 14:39:55', 30),
(17, 11, 8, 'CHECKING', '2026-10-17', '09:00:00', 5, NULL, NULL, NULL, NULL, '2026-10-15 16:09:39', 30),
(18, 11, 1, NULL, '2026-10-17', '09:30:00', 2, NULL, NULL, NULL, NULL, '2026-10-15 16:43:30', 30),
(19, 12, 8, 'last check check', '2026-10-17', '10:30:00', 5, NULL, NULL, NULL, NULL, '2026-10-15 17:15:02', 30),
(20, 12, 1, NULL, '2026-10-17', '10:00:00', 5, NULL, NULL, NULL, NULL, '2026-10-15 17:27:18', 30),
(21, 12, 1, NULL, '2026-10-17', '11:30:00', 5, NULL, NULL, NULL, NULL, '2026-10-15 18:10:44', 30),
(22, 13, 5, NULL, '2026-10-17', '14:30:00', 5, NULL, '2026-10-16 02:20:59', '2026-10-16 02:20:59', NULL, '2026-10-15 18:13:13', 30),
(23, 3, 6, NULL, '2026-10-28', '09:00:00', 5, NULL, NULL, NULL, NULL, '2026-10-15 18:31:14', 30),
(24, 15, 5, NULL, '2026-11-01', '09:00:00', 5, NULL, NULL, NULL, NULL, '2026-10-16 00:17:28', 30),
(25, 16, 8, 'sadasdasd', '2026-10-17', '10:00:00', 5, NULL, '2026-10-16 12:11:43', '2026-10-16 12:11:43', NULL, '2026-10-16 01:05:39', 30),
(26, 16, 3, NULL, '2026-10-17', '15:00:00', 5, NULL, NULL, NULL, NULL, '2026-10-16 01:13:01', 30),
(27, 17, 8, 'check up', '2026-10-22', '11:00:00', 6, NULL, NULL, NULL, NULL, '2026-10-16 03:05:34', 30),
(28, 17, 5, NULL, '2026-10-20', '10:00:00', 5, NULL, NULL, NULL, NULL, '2026-10-16 03:08:45', 30),
(29, 20, 5, NULL, '2026-10-20', '09:30:00', 5, NULL, NULL, NULL, NULL, '2026-10-16 03:43:58', 30),
(30, 17, 2, NULL, '2026-10-20', '10:30:00', 5, NULL, '2026-10-16 12:02:48', '2026-10-16 12:02:48', NULL, '2026-10-16 04:01:53', 30),
(31, 20, 3, NULL, '2026-10-20', '09:30:00', 5, NULL, NULL, NULL, NULL, '2026-10-16 04:47:11', 30),
(32, 17, 5, NULL, '2026-10-31', '13:30:00', 1, NULL, NULL, NULL, NULL, '2026-10-16 05:02:23', 30);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_request_statuses`
--

CREATE TABLE `appointment_request_statuses` (
  `request_status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_request_statuses`
--

INSERT INTO `appointment_request_statuses` (`request_status_id`, `status_name`, `description`) VALUES
(1, 'PENDING', 'Waiting for staff review'),
(2, 'ACCEPTED', 'Accepted and awaiting payment'),
(3, 'REJECTED', 'Initial appointment request rejected'),
(4, 'EXPIRED', 'Payment deadline passed without timely submission'),
(5, 'CONVERTED', 'Request became an actual appointment'),
(6, 'CANCELLED', 'Appointment request cancelled by the patient');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_statuses`
--

CREATE TABLE `appointment_statuses` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_statuses`
--

INSERT INTO `appointment_statuses` (`status_id`, `status_name`, `description`) VALUES
(1, 'CONFIRMED', 'Appointment is confirmed'),
(2, 'COMPLETED', 'Appointment has been completed'),
(3, 'CANCELLED', 'Appointment has been cancelled'),
(4, 'CHECKED_IN', 'Patient has arrived at the clinic'),
(5, 'NO_SHOW', 'Patient did not arrive for the appointment');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_schedule`
--

CREATE TABLE `clinic_schedule` (
  `schedule_id` int(11) NOT NULL,
  `day_of_week` enum('MONDAY','TUESDAY','WEDNESDAY','THURSDAY','FRIDAY','SATURDAY','SUNDAY') NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic_schedule`
--

INSERT INTO `clinic_schedule` (`schedule_id`, `day_of_week`, `is_open`, `opening_time`, `closing_time`, `updated_at`) VALUES
(1, 'MONDAY', 0, NULL, NULL, '2026-10-10 06:01:43'),
(2, 'TUESDAY', 1, '09:00:00', '17:30:00', '2026-10-10 06:01:43'),
(3, 'WEDNESDAY', 1, '09:00:00', '17:30:00', '2026-10-10 06:01:43'),
(4, 'THURSDAY', 1, '09:00:00', '17:30:00', '2026-10-10 06:01:43'),
(5, 'FRIDAY', 1, '09:00:00', '17:30:00', '2026-10-10 06:01:43'),
(6, 'SATURDAY', 1, '09:00:00', '17:30:00', '2026-10-10 06:01:43'),
(7, 'SUNDAY', 1, '09:00:00', '17:30:00', '2026-10-10 06:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `reschedule_requests`
--

CREATE TABLE `reschedule_requests` (
  `reschedule_request_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `requested_date` date NOT NULL,
  `requested_time` time NOT NULL,
  `reschedule_status_id` int(11) NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `original_date` date DEFAULT NULL,
  `original_time` time DEFAULT NULL,
  `initiated_by` enum('PATIENT','STAFF') NOT NULL DEFAULT 'PATIENT',
  `patient_agreed` tinyint(1) DEFAULT NULL,
  `patient_agreed_at` datetime DEFAULT NULL,
  `reason` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reschedule_requests`
--

INSERT INTO `reschedule_requests` (`reschedule_request_id`, `appointment_id`, `requested_date`, `requested_time`, `reschedule_status_id`, `requested_at`, `reviewed_by`, `reviewed_at`, `original_date`, `original_time`, `initiated_by`, `patient_agreed`, `patient_agreed_at`, `reason`) VALUES
(1, 4, '2026-10-20', '10:00:00', 2, '2026-10-15 11:32:00', NULL, '2026-10-15 20:02:57', '2026-10-20', '16:30:00', 'PATIENT', NULL, NULL, 'cant see'),
(2, 14, '2026-10-30', '10:30:00', 2, '2026-10-15 17:29:38', NULL, '2026-10-16 01:31:34', '2026-10-17', '10:30:00', 'PATIENT', NULL, NULL, 'cuzcuz'),
(3, 14, '2026-10-17', '10:30:00', 2, '2026-10-15 17:33:46', NULL, '2026-10-16 02:07:48', '2026-10-30', '10:30:00', 'PATIENT', NULL, NULL, 'awadasda'),
(4, 20, '2026-10-20', '10:00:00', 2, '2026-10-16 01:42:48', NULL, '2026-10-16 09:43:44', '2026-10-17', '15:00:00', 'PATIENT', NULL, NULL, 'sakit tiyan po'),
(5, 22, '2026-10-18', '09:30:00', 2, '2026-10-16 03:50:38', NULL, '2026-10-16 11:51:43', '2026-10-20', '10:00:00', 'PATIENT', NULL, NULL, 'Delay of work');

-- --------------------------------------------------------

--
-- Table structure for table `reschedule_request_statuses`
--

CREATE TABLE `reschedule_request_statuses` (
  `reschedule_status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reschedule_request_statuses`
--

INSERT INTO `reschedule_request_statuses` (`reschedule_status_id`, `status_name`, `description`) VALUES
(1, 'PENDING', 'Waiting for staff review'),
(2, 'APPROVED', 'Rescheduling request approved'),
(3, 'REJECTED', 'Rescheduling request rejected');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_conflicts`
--

CREATE TABLE `schedule_conflicts` (
  `conflict_id` int(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `conflict_source` enum('REGULAR_SCHEDULE','CLINIC_CLOSURE','BLOCKED_SLOT') NOT NULL,
  `conflict_reason` varchar(500) NOT NULL,
  `conflict_status` enum('PENDING','RESOLVED','DISMISSED') NOT NULL DEFAULT 'PENDING',
  `detected_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolution_notes` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `default_duration_minutes` int(11) NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `description`, `price`, `is_active`, `default_duration_minutes`) VALUES
(1, 'Teeth Cleaning', 'Professional cleaning of teeth', 0.00, 1, 30),
(2, 'Tooth Extraction', 'Removal of a tooth', 0.00, 1, 30),
(3, 'Tooth Whitening', 'Treatment to lighten tooth color', 0.00, 1, 30),
(4, 'Dental Filling', 'Treatment to restore a damaged tooth', 0.00, 1, 30),
(5, 'Braces Consultation', 'Consultation about braces treatment', 0.00, 1, 30),
(6, 'Dental Consultation', 'General dental examination and consultation', 0.00, 1, 30),
(7, 'Emergency Dental Care', 'Assessment and care for urgent dental concerns', 0.00, 1, 30),
(8, 'Others', NULL, 0.00, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `slot_reservations`
--

CREATE TABLE `slot_reservations` (
  `reservation_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `reservation_status` enum('ACTIVE','RELEASED','CONVERTED') NOT NULL DEFAULT 'ACTIVE',
  `reserved_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `released_at` datetime DEFAULT NULL,
  `occupied_date` date GENERATED ALWAYS AS (case when `reservation_status` in ('ACTIVE','CONVERTED') then `appointment_date` else NULL end) STORED,
  `occupied_time` time GENERATED ALWAYS AS (case when `reservation_status` in ('ACTIVE','CONVERTED') then `appointment_time` else NULL end) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slot_reservations`
--

INSERT INTO `slot_reservations` (`reservation_id`, `appointment_date`, `appointment_time`, `request_id`, `appointment_id`, `reservation_status`, `reserved_at`, `released_at`) VALUES
(1, '2026-10-09', '11:30:00', 2, NULL, 'ACTIVE', '2026-10-10 09:19:35', NULL),
(2, '2026-10-13', '10:30:00', 3, NULL, 'ACTIVE', '2026-10-11 17:13:53', NULL),
(3, '2026-10-13', '11:00:00', 4, NULL, 'ACTIVE', '2026-10-11 17:26:54', NULL),
(4, '2026-10-17', '14:00:00', 5, NULL, 'ACTIVE', '2026-10-12 02:50:33', NULL),
(5, '2026-10-20', '09:00:00', 6, NULL, 'ACTIVE', '2026-10-12 02:52:53', NULL),
(6, '2026-10-17', '11:00:00', 7, NULL, 'ACTIVE', '2026-10-13 05:39:08', NULL),
(7, '2026-10-20', '16:30:00', 8, NULL, 'ACTIVE', '2026-10-13 05:41:32', NULL),
(8, '2026-10-21', '14:00:00', 9, NULL, 'RELEASED', '2026-10-13 10:52:41', '2026-10-16 11:29:23'),
(9, '2026-10-16', '09:00:00', 10, NULL, 'ACTIVE', '2026-10-14 18:21:16', NULL),
(10, '2026-10-20', '14:00:00', 11, NULL, 'ACTIVE', '2026-10-14 18:25:14', NULL),
(11, '2026-10-31', '09:00:00', 12, NULL, 'ACTIVE', '2026-10-14 18:29:46', NULL),
(12, '2026-10-20', '13:30:00', 13, NULL, 'ACTIVE', '2026-10-15 05:46:03', NULL),
(13, '2026-10-17', '13:30:00', 14, NULL, 'ACTIVE', '2026-10-15 11:03:29', NULL),
(14, '2026-10-23', '14:00:00', 15, NULL, 'ACTIVE', '2026-10-15 12:57:27', NULL),
(15, '2026-10-23', '11:30:00', 16, NULL, 'ACTIVE', '2026-10-15 14:39:55', NULL),
(16, '2026-10-17', '09:00:00', 17, NULL, 'ACTIVE', '2026-10-15 16:09:39', NULL),
(17, '2026-10-17', '09:30:00', 18, NULL, 'ACTIVE', '2026-10-15 16:43:30', NULL),
(18, '2026-10-17', '10:30:00', 19, NULL, 'ACTIVE', '2026-10-15 17:15:02', NULL),
(19, '2026-10-17', '10:00:00', 20, NULL, 'RELEASED', '2026-10-15 17:27:18', '2026-10-16 08:58:33'),
(20, '2026-10-17', '11:30:00', 21, NULL, 'ACTIVE', '2026-10-15 18:10:44', NULL),
(21, '2026-10-17', '14:30:00', 22, NULL, 'ACTIVE', '2026-10-15 18:13:13', NULL),
(22, '2026-10-28', '09:00:00', 23, NULL, 'ACTIVE', '2026-10-15 18:31:14', NULL),
(23, '2026-11-01', '09:00:00', 24, NULL, 'ACTIVE', '2026-10-16 00:17:28', NULL),
(24, '2026-10-17', '10:00:00', 25, NULL, 'ACTIVE', '2026-10-16 01:05:39', NULL),
(25, '2026-10-17', '15:00:00', 26, NULL, 'ACTIVE', '2026-10-16 01:13:01', NULL),
(26, '2026-10-22', '11:00:00', 27, NULL, 'ACTIVE', '2026-10-16 03:05:34', NULL),
(27, '2026-10-20', '10:00:00', 28, NULL, 'ACTIVE', '2026-10-16 03:08:45', NULL),
(28, '2026-10-20', '09:30:00', 29, NULL, 'RELEASED', '2026-10-16 03:43:58', '2026-10-16 11:45:44'),
(29, '2026-10-20', '10:30:00', 30, NULL, 'ACTIVE', '2026-10-16 04:01:53', NULL),
(30, '2026-10-20', '09:30:00', 31, NULL, 'RELEASED', '2026-10-16 04:47:11', '2026-10-16 13:11:33'),
(31, '2026-10-31', '13:30:00', 32, NULL, 'ACTIVE', '2026-10-16 05:02:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shift` enum('MORNING','AFTERNOON') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `user_id`, `shift`) VALUES
(1, 2, 'MORNING');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('ADMIN','STAFF','PATIENT') NOT NULL DEFAULT 'PATIENT',
  `contact_number` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `account_status` enum('ACTIVE','INACTIVE','BANNED') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `password_hash`, `role`, `contact_number`, `date_of_birth`, `address`, `created_at`, `account_status`) VALUES
(1, 'Melzar Ronan', 'Melzar@gmail.com', '$2a$12$ID8skTxXOmDqZpLRX1RQ8uooYCgtTS8cu/tBvq5gShXKefZDjc1ju', 'PATIENT', '09771128448', NULL, NULL, '2026-10-10 07:36:55', 'ACTIVE'),
(2, 'anna lou', 'wow@gmail.com', '$2a$12$7WVlyRiyh3pIputrGxaPCuPR791jSWnXHnYD3aJdjNRqPjPsaTjjG', 'STAFF', '09771128448', '2026-10-01', 'tagoloan', '2026-10-10 08:01:48', 'ACTIVE'),
(3, 'Test', 'Test@gmail.com', '$2a$12$vMkA2af0F1FR2riSSYQHkezBhzeNY.A8RGNWsI6Hos8wxmnrwkCyG', 'PATIENT', '09771128448', NULL, NULL, '2026-10-11 15:57:36', 'ACTIVE'),
(4, 'tester', 'Test2@gmail.com', '$2a$12$vonhLvfxDPaQP6yHM2T0iOzxMShTuuKIMpj3Yh5wv0FY3NzZFEfL2', 'PATIENT', '09569268386', '2010-10-10', 'San Vicente', '2026-10-13 05:40:32', 'ACTIVE'),
(6, 'Yfel', 'yfel@gmail.com', '$2a$12$AkpVMEccdKiD7WzCJjbbW.KXzcjQGN6owKmccsQErW6emVNiA//J.', 'PATIENT', '09772248558', '2006-10-27', 'Batangas', '2026-10-14 18:17:06', 'ACTIVE'),
(7, 'Yfel2', 'Yfel2@gmail.com', '$2a$12$n9EGrrl8Z6ArSGJ0S4wkPuP.ULEPCASLX9NUPFNHfxmK5R1JdMZO2', 'PATIENT', '09887728448', NULL, NULL, '2026-10-14 18:24:07', 'ACTIVE'),
(8, 'thania', 'thania@gmail.com', '$2a$12$bWbHz/NZcuJSzfyZPSswZeELyIKTCrJqVN/sVR.pkix7ZbpauGmTa', 'PATIENT', '09562839596', '2006-10-23', 'agusan', '2026-10-15 05:44:47', 'ACTIVE'),
(9, 'Staf2', 'Staf2@gmail.com', '12345678', 'STAFF', NULL, NULL, NULL, '2026-10-15 09:42:31', 'ACTIVE'),
(10, 'Admin', 'Admin@gmail.com', '$2a$12$7.3XC1zxmVOzcMl.Es6L/e2XOIwTWCRQk5IO4WjwlqPlk86ExNAAG', 'ADMIN', NULL, NULL, NULL, '2026-10-15 14:12:01', 'ACTIVE'),
(11, 'Last Check', 'check@gmail.com', '$2a$12$sPEIzkv3oIorDSLtD8XcXOEYGn1z3V5vBoI.sfbhqBGcckPA9bNZC', 'PATIENT', '09111111111', '2007-07-10', 'sambuanga', '2026-10-15 16:06:17', 'ACTIVE'),
(12, 'last', 'last@gmail.com', '$2a$12$xk8i9399jCnKXCyBMjMhq.1LL2A7glr2jhe.1YHhEvDF831LA1DTy', 'PATIENT', '09888888888', '2018-04-12', 'zambogao', '2026-10-15 17:09:03', 'ACTIVE'),
(13, 'portal', 'POT@GMAIL.COM', '$2a$12$q9J1Rn6D8x4B3ZdOyh.3lOfH4x7DCJ4A/6OQaUjEif/gGt4yMxNta', 'PATIENT', '09771128448', '2026-10-02', 'sadasda', '2026-10-15 18:12:26', 'ACTIVE'),
(14, 'staff', 'staff@gmail.com', '123345678', 'STAFF', NULL, NULL, NULL, '2026-10-15 18:32:51', 'INACTIVE'),
(15, 'jm', 'jm@gmail.com', '$2a$12$pqE2FGwMoBOZRF4Q/iBMLeFGUVxaeA.seTnteuOdi.Jbeo26EhdVa', 'PATIENT', '09228944241', NULL, NULL, '2026-10-16 00:07:47', 'ACTIVE'),
(16, 'kingkay', 'kingkay@gmail.com', '$2a$12$H/LlgyJ1G5283AJZgIxbJubFdVsV85/OwicNbje9F/t5t.2wmHtcW', 'PATIENT', '09771128448', '2007-07-10', 'san vincente', '2026-10-16 01:00:55', 'ACTIVE'),
(17, 'alwin', 'alwin@gmail.com', '$2a$12$G/gwxXmt8qBZgNupdF4gyOK3x1uGngEHvyE4mxEpYvBFmDxBikLDm', 'PATIENT', '09856297105', NULL, NULL, '2026-10-16 01:46:37', 'ACTIVE'),
(18, 'uno', 'uno@gmail.com', '$2a$12$4xREclWK/.PflKG95KqEVeATFGNZZ8cAlltzlvyh.SIOUNWjdm2eK', 'STAFF', NULL, NULL, NULL, '2026-10-16 03:23:13', 'ACTIVE'),
(19, 'james@gmail.com', 'james@gmail.com', '$2a$12$oA7tkPUlTlDIKjlSsbXh0Oe/NR3/UUFLy83Ea/.lW7ia.N.Emp2Bi', 'PATIENT', NULL, NULL, NULL, '2026-10-16 03:41:15', 'ACTIVE'),
(20, 'Kent', 'Kent@gmail.com', '$2a$12$UhJZJQhUg5Dlch/oZz4EKOpwg0oKwljiIxLAo1iXiXsnBUOjknv7.', 'PATIENT', '09068941289', NULL, 'Zone 14 Natumolan, Tagoloan Misamis Oriental', '2026-10-16 03:42:28', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD UNIQUE KEY `request_id` (`request_id`),
  ADD KEY `fk_appointment_status` (`status_id`);

--
-- Indexes for table `appointment_requests`
--
ALTER TABLE `appointment_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `fk_request_patient` (`patient_id`),
  ADD KEY `fk_request_service` (`service_id`),
  ADD KEY `fk_request_status` (`request_status_id`),
  ADD KEY `fk_request_reviewer` (`reviewed_by`);

--
-- Indexes for table `appointment_request_statuses`
--
ALTER TABLE `appointment_request_statuses`
  ADD PRIMARY KEY (`request_status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `appointment_statuses`
--
ALTER TABLE `appointment_statuses`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `clinic_schedule`
--
ALTER TABLE `clinic_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD UNIQUE KEY `day_of_week` (`day_of_week`);

--
-- Indexes for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  ADD PRIMARY KEY (`reschedule_request_id`),
  ADD KEY `fk_reschedule_appointment` (`appointment_id`),
  ADD KEY `fk_reschedule_status` (`reschedule_status_id`),
  ADD KEY `fk_reschedule_reviewer` (`reviewed_by`);

--
-- Indexes for table `reschedule_request_statuses`
--
ALTER TABLE `reschedule_request_statuses`
  ADD PRIMARY KEY (`reschedule_status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `schedule_conflicts`
--
ALTER TABLE `schedule_conflicts`
  ADD PRIMARY KEY (`conflict_id`),
  ADD KEY `fk_conflict_resolver` (`resolved_by`),
  ADD KEY `idx_conflict_status` (`conflict_status`),
  ADD KEY `idx_conflict_appointment` (`appointment_id`),
  ADD KEY `idx_conflict_request` (`request_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `service_name` (`service_name`);

--
-- Indexes for table `slot_reservations`
--
ALTER TABLE `slot_reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD UNIQUE KEY `uq_occupied_slot` (`occupied_date`,`occupied_time`),
  ADD KEY `fk_reservation_request` (`request_id`),
  ADD KEY `fk_reservation_appointment` (`appointment_id`),
  ADD KEY `idx_reservation_slot` (`appointment_date`,`appointment_time`),
  ADD KEY `idx_reservation_status` (`reservation_status`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `appointment_requests`
--
ALTER TABLE `appointment_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `appointment_request_statuses`
--
ALTER TABLE `appointment_request_statuses`
  MODIFY `request_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointment_statuses`
--
ALTER TABLE `appointment_statuses`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clinic_schedule`
--
ALTER TABLE `clinic_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  MODIFY `reschedule_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reschedule_request_statuses`
--
ALTER TABLE `reschedule_request_statuses`
  MODIFY `reschedule_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule_conflicts`
--
ALTER TABLE `schedule_conflicts`
  MODIFY `conflict_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slot_reservations`
--
ALTER TABLE `slot_reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `fk_appointment_request` FOREIGN KEY (`request_id`) REFERENCES `appointment_requests` (`request_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_appointment_status` FOREIGN KEY (`status_id`) REFERENCES `appointment_statuses` (`status_id`) ON UPDATE CASCADE;

--
-- Constraints for table `appointment_requests`
--
ALTER TABLE `appointment_requests`
  ADD CONSTRAINT `fk_request_patient` FOREIGN KEY (`patient_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_request_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_request_service` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_request_status` FOREIGN KEY (`request_status_id`) REFERENCES `appointment_request_statuses` (`request_status_id`) ON UPDATE CASCADE;

--
-- Constraints for table `reschedule_requests`
--
ALTER TABLE `reschedule_requests`
  ADD CONSTRAINT `fk_reschedule_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reschedule_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reschedule_status` FOREIGN KEY (`reschedule_status_id`) REFERENCES `reschedule_request_statuses` (`reschedule_status_id`) ON UPDATE CASCADE;

--
-- Constraints for table `schedule_conflicts`
--
ALTER TABLE `schedule_conflicts`
  ADD CONSTRAINT `fk_conflict_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_conflict_request` FOREIGN KEY (`request_id`) REFERENCES `appointment_requests` (`request_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_conflict_resolver` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `slot_reservations`
--
ALTER TABLE `slot_reservations`
  ADD CONSTRAINT `fk_reservation_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservation_request` FOREIGN KEY (`request_id`) REFERENCES `appointment_requests` (`request_id`) ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_staff_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
