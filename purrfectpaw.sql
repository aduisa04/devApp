-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2025 at 05:12 AM
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
-- Database: `purrfectpaw`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pet` varchar(255) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `treatment` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `phone`, `pet`, `breed`, `treatment`, `petName`, `time`, `date`, `created_at`, `updated_at`) VALUES
(2, 'Micaiah Genesis Petallo', '090725636985', 'dog', 'husky', 'vaccination', 'koko', '1pm', '2024-12-07', '2024-12-06 19:16:32', '2024-12-06 19:16:32'),
(3, 'ARA', '09098987656', 'cat', 'Catoy', 'checkup', 'cacat', '5pm', '2024-12-11', '2024-12-10 23:01:43', '2024-12-10 23:01:43'),
(4, 'lopop', '09876567898', 'cat', 'kokol', 'checkup', 'kol', '9am', '2024-12-11', '2024-12-10 23:53:00', '2024-12-10 23:53:00'),
(5, 'arabella', '0242472726', 'cat', 'husky', 'rabies', 'rararar', '11am', '2024-12-11', '2024-12-11 00:05:01', '2024-12-11 00:05:01'),
(6, 'kuri Ops', '09898767899', 'cat', 'Husky', 'checkup', 'koki', '11am', '2024-12-15', '2024-12-14 22:07:07', '2024-12-14 22:07:07'),
(7, 'trtrtrt', '09090988888', 'cat', 'ghfg', 'checkup', 'lop', '11am', '2024-12-15', '2024-12-14 22:45:21', '2024-12-14 22:45:21'),
(8, 'asdas', '09090909090', 'cat', 'poop', 'vaccination', 'poop', '9am', '2024-12-15', '2024-12-15 00:04:09', '2024-12-15 00:04:09'),
(9, 'Pearl Petallo', '09098767654', 'cat', 'persian blue', 'vaccination', 'alela', '1pm', '2024-12-19', '2024-12-17 17:30:59', '2024-12-17 17:30:59'),
(10, 'ararara', '097426372', 'dog', 'husky', 'rabies', 'koko', '1pm', '2024-12-19', '2024-12-17 17:33:17', '2024-12-17 17:33:17'),
(11, 'adasda', '09090909090', 'cat', 'huhu', 'vaccination', 'koo', '11am', '2025-02-11', '2025-02-07 20:11:32', '2025-02-07 20:11:32'),
(12, 'film natwata', '09098767654', 'dog', 'husky', 'vaccination', 'namnam', '9am', '2025-02-18', '2025-02-07 20:45:19', '2025-02-07 20:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `name`, `address`, `email`, `contact_number`, `logo`, `created_at`, `updated_at`) VALUES
(10, 'Surigao Pet Doctors', 'Somewhere wa ko kabalo', 'surigao@gmail.com', '09876567876', 'images/clinics/DP62oraQF2kxPg2kiBbi5OMvqotCVoWIZCbN9G9v.png', '2024-12-04 03:54:19', '2024-12-04 03:54:19'),
(11, 'Laugo', 'somewhere', 'laugo@gmail.com', '09876567876', 'images/clinics/omU4U0JTZ6EmAc2QfXMRb3F3olLOZRmge1BfMpcT.png', '2024-12-04 03:55:14', '2024-12-04 03:55:14'),
(14, 'Pearl Clinic', 'brgy roxas', 'pearl@gmail.com', '09876787678', 'images/clinics/aP43Opt81j06P5AdpHO3NQT3ADplK6d6frDYwiYU.jpg', '2024-12-14 23:04:02', '2024-12-14 23:04:02'),
(15, 'Meow Clinic', 'inday hae ini', 'meow@gmail.com', '09876567654', 'images/clinics/3q4fiWAS4HG2DIEAataJOMHXk2ASVvRuMFKuqPnG.jpg', '2025-02-07 18:31:03', '2025-02-07 18:31:03'),
(16, 'Chill Health', 'somewhere', 'chill@gmail.com', '09098765676', 'images/clinics/HjCDDCGT2dPHYhtMUzbXGMs2PwZcHvN513MvMNjk.jpg', '2025-02-07 20:46:32', '2025-02-07 20:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `number`, `email`, `address`, `created_at`, `updated_at`) VALUES
(3, 'Dr. Ricky Remerata', '09098756708', 'remerata@gmail.com', 'roxas street brgy washingon', '2024-12-01 04:28:26', '2024-12-01 04:28:26'),
(4, 'Dr. Pearl Gene Ivan Petallo', '09632879598', 'petallo@gmail.com', 'roxas street brgy washingon', '2024-12-01 06:51:05', '2024-12-01 06:51:05'),
(12, 'Dr. Fairy Robles', '098764657489', 'fairy@gmail.com', 'somewhere we dont know', '2024-12-04 06:53:29', '2024-12-04 06:53:29'),
(13, 'Dr. Lesley Nuenay', '098764657489', 'lesley@gmail.com', 'somewhere we dont know HHAHAA', '2024-12-04 06:54:11', '2024-12-04 06:54:11'),
(14, 'Dr. Alejandro Cayasa', '098764657489', 'cayasa@gmail.com', 'somewhere we dont know', '2024-12-04 06:55:01', '2024-12-04 06:55:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(6, '2024_11_13_082504_create_doctors_table', 3),
(9, '2024_11_14_073908_create_users', 6),
(10, '2024_11_14_074313_create_users', 7),
(74, '2024_11_18_154547_create_users_table', 8),
(82, '2014_10_12_100000_create_password_resets_table', 9),
(83, '2019_08_19_000000_create_failed_jobs_table', 9),
(84, '2019_12_14_000001_create_personal_access_tokens_table', 9),
(85, '2024_11_13_081935_create_appointments_table', 9),
(86, '2024_11_13_082901_create_doctors_table', 9),
(87, '2024_11_13_083239_create_patient_records_table', 9),
(88, '2024_11_18_164424_create_users_table', 9),
(89, '2024_11_22_030708_update_profile_picture_nullable_in_users_table', 10),
(90, '2024_11_28_032907_create_doctors_table', 11),
(91, '2024_11_28_061617_create_patient_records_table', 12),
(92, '2024_12_01_124334_create_patient_records_table', 13),
(93, '2024_12_01_130657_create_clinics_table', 14),
(94, '2024_12_04_151335_create_appointments_table', 15),
(95, '2024_12_04_153731_create_appointments_table', 16),
(96, '2024_12_07_010332_create_appointments_table', 17),
(97, '2024_12_07_012203_create_appointments_table', 18),
(98, '2024_12_07_012512_create_appointments_table', 19),
(99, '2024_12_07_014140_create_appointments_table', 20),
(100, '2024_12_07_020849_create_appointments_table', 21),
(101, '2024_12_15_072927_add_clinic_id_to_appointments_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pet` varchar(255) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `treatment` varchar(255) NOT NULL,
  `pet_name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_records`
--

INSERT INTO `patient_records` (`id`, `name`, `phone`, `pet`, `breed`, `treatment`, `pet_name`, `time`, `date`, `created_at`, `updated_at`) VALUES
(2, 'Pearl Gene Petallo', '09632879598', 'dog', 'Dachshund', 'vaccination', 'Rachelle', '3pm', '2024-12-03', '2024-12-02 00:45:13', '2024-12-02 00:45:13'),
(3, 'Ricky Remerata', '09098767876', 'cat', 'No Breed', 'rabies', 'StarBread', '9am', '2028-10-01', '2024-12-02 02:12:37', '2024-12-02 02:12:37'),
(4, 'ai ooon', '09098765434', 'dog', 'Dachshund', 'immunization', 'Rachelle', '5pm', '2024-12-05', '2024-12-02 05:36:52', '2024-12-02 05:36:52'),
(5, 'Genlong', '09098767876', 'cat', 'Unknown', 'checkup', 'Gen2', '11am', '2024-12-12', '2024-12-04 05:46:36', '2024-12-04 05:46:36'),
(6, 'Daniel Petallo', '09098767876', 'dog', 'Aspin', 'immunization', 'chamber', '1pm', '2024-12-08', '2024-12-06 16:47:41', '2024-12-06 16:47:41'),
(7, 'Samantha Dawn', '09632879598', 'cat', 'Iring basta iring', 'checkup', 'Catoy', '3pm', '2024-12-15', '2024-12-14 21:17:45', '2024-12-14 21:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `profile_picture`, `created_at`, `updated_at`, `role`) VALUES
(15, 'Arabella May', 'Minusa', 'Duisa', 'Duisa@gmail.com', '$2y$10$9C7Ty2P7ctG/Rnl6LChz0uMeGFGiXBZosKI0PB6l1Yp4BYt.bUrAW', 'profile_pictures/65OuhGh27ui7JHf0FPYGNbMYxQ46maCBb5HfvckS.jpg', '2024-11-19 21:38:59', '2024-11-19 21:38:59', '0'),
(28, 'Ricky', 'B.', 'Remerata', 'remerata@gmail.com', '$2y$10$jOQOPR9M9gMIlwZZKW6SYuL6fcTUKpeig6n801cgDHxfa3symsrcO', NULL, '2024-11-27 17:52:17', '2024-11-27 17:52:17', '0'),
(29, 'Ivan', 'Clava', 'Petallo', 'Ivan@gmail.com', '$2y$10$chlWSyntW9hmhi8RcP5Rw.FxYPej9m4T2kffywwTxo7EtGibtmHg6', NULL, '2024-12-01 04:26:38', '2024-12-01 04:26:38', '1'),
(30, 'Early', 'Mid', 'Natwajaw', 'natwajaw@gmail.com', '$2y$10$fG9Xe25O1R1I1H0F6QlHKu2oVX1wyxDVQNnS7uMqSrVFZ6RuwKWrG', NULL, '2024-12-02 00:40:02', '2024-12-02 00:40:02', '1'),
(32, 'Genlong', 'natwo', 'gen2', 'admin@gmail.com', '$2y$10$xHx.RZXdtzrR8Jwlckhzi.lIPSw9AKIOvzABH.t128ciS3ZGS/4La', NULL, '2024-12-04 03:48:56', '2024-12-04 03:48:56', '1'),
(33, 'yuyu', 'yuyuyuyu', 'yuyuy', 'yuyu@gmail.com', '$2y$10$254RmN9xSOllWEx6P2YFlOtQeafG2vTFMcwMamzDro86iWrBtLtzm', NULL, '2024-12-07 22:53:14', '2024-12-07 22:53:14', '0'),
(34, 'popo', 'P.', 'popo', 'popo@gmail.com', '$2y$10$aLW8IIeuJSpbAyIJRLdlo.vYNfWPhyn5NNX5kSDv0pwZFF8cd7gMu', NULL, '2024-12-08 01:37:44', '2024-12-08 01:37:44', '0'),
(35, 'Arabella', 'Cayasa', 'Duisa', 'Ducaya@gmail.com', '$2y$10$X6ufWJD7jZE5wSLwjGAX2utuiQn4rGEQ4/ixb74T9oZ4Phfq.XSiW', NULL, '2024-12-10 22:58:10', '2024-12-10 22:58:10', '1'),
(36, 'Film', 'Sachrach', 'Natwata', 'filmnatwata@gmail.com', '$2y$10$Mm94aeYl0PXTYZwwLXPQvuhRXogOxcr1iwCvatA/X4DvYKUhLHRIO', NULL, '2025-02-07 18:28:23', '2025-02-07 18:28:23', '0'),
(38, 'Pearl', 'Clava', 'Petallo', 'Pearl@gmail.com', '$2y$10$NVP8rfl.R7IAkwjXXFB0oOAIew3XbDPSLEB45q0kIsPNQDMiIwbzO', NULL, '2025-02-07 20:02:47', '2025-02-07 20:02:47', '0'),
(39, 'try1', 'try', 'tryy', 'trey@gmail.com', '$2y$10$f9109Ww91FdP4k/r8p44tOWfLBnLEmHnDqhTcyJf0Nyaq.WXl3ZC.', NULL, '2025-02-07 20:12:31', '2025-02-07 20:12:31', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clinics_email_unique` (`email`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
