-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 06:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(29, 9, 2, 2, '2023-06-05 23:39:19', '2023-06-05 23:39:19');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_18_174633_add_admin_column_to_users_table', 1),
(6, '2023_04_20_060053_products', 1),
(7, '2023_04_27_051825_add_category_and_listing_in_products_table', 1),
(8, '2023_05_07_160714_create_carts_table', 1),
(9, '2023_05_19_104113_create_orders_table', 1),
(10, '2023_05_19_104757_create_orderitems_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(4, 13, 1, 1, 5600, '2023-05-19 19:17:02', '2023-05-19 19:17:02'),
(5, 14, 1, 3, 5600, '2023-05-19 20:40:28', '2023-05-19 20:40:28'),
(6, 15, 1, 6, 5600, '2023-05-20 23:35:14', '2023-05-20 23:35:14'),
(7, 15, 2, 8, 6500, '2023-05-20 23:35:14', '2023-05-20 23:35:14'),
(8, 16, 3, 3, 6500, '2023-05-21 06:02:32', '2023-05-21 06:02:32'),
(9, 17, 2, 1, 6500, '2023-05-24 22:37:28', '2023-05-24 22:37:28'),
(10, 17, 1, 1, 5600, '2023-05-24 22:37:28', '2023-05-24 22:37:28'),
(11, 18, 1, 2, 5600, '2023-05-28 19:26:42', '2023-05-28 19:26:42'),
(12, 18, 3, 4, 6500, '2023-05-28 19:26:42', '2023-05-28 19:26:42'),
(13, 20, 1, 2, 5600, '2023-06-01 06:04:41', '2023-06-01 06:04:41'),
(14, 20, 3, 3, 6500, '2023-06-01 06:04:41', '2023-06-01 06:04:41'),
(15, 21, 2, 2, 6500, '2023-06-01 06:25:07', '2023-06-01 06:25:07'),
(16, 22, 2, 1, 6500, '2023-06-01 07:06:40', '2023-06-01 07:06:40'),
(17, 23, 3, 2, 6500, '2023-06-01 07:18:30', '2023-06-01 07:18:30'),
(18, 24, 3, 1, 6500, '2023-06-01 21:00:41', '2023-06-01 21:00:41'),
(19, 25, 7, 5, 5600, '2023-06-05 19:58:58', '2023-06-05 19:58:58'),
(20, 26, 2, 1, 6500, '2023-06-05 23:21:11', '2023-06-05 23:21:11'),
(21, 26, 4, 1, 11000, '2023-06-05 23:21:11', '2023-06-05 23:21:11'),
(22, 28, 8, 10, 5600, '2023-06-05 23:29:28', '2023-06-05 23:29:28'),
(23, 29, 8, 5, 5600, '2023-06-05 23:32:38', '2023-06-05 23:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `tracking_no` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `email`, `number`, `barangay`, `city`, `postal`, `payment_mode`, `tracking_no`, `status`, `created_at`, `updated_at`) VALUES
(12, 4, 'markjoshuaramiscal010@gmail.com', '121', 'markjoshuaramiscal010@gmail.com', 20, '1212', '12', 212, 'COD', 694468, 'approve', '2023-05-19 17:50:31', '2023-05-19 18:53:25'),
(13, 4, 'markjoshuaramiscal010@gmail.com', '123', 'markjoshuaramiscal010@gmail.com', 233, '12', '123', 123, 'COD', 743463, 'approve', '2023-05-19 19:17:02', '2023-05-19 20:11:35'),
(14, 4, 'markjoshuaramiscal010@gmail.com', '0909', 'markjoshuaramiscal010@gmail.com', 9898, '909090', '0909', 9090, 'COD', 931407, 'decline', '2023-05-19 20:40:28', '2023-05-19 20:42:02'),
(15, 4, 'markjoshuaramiscal010@gmail.com', 'Maawi', 'markjoshuaramiscal010@gmail.com', 929292, 'MAawi', 'Alaminos', 2404, 'COD', 845018, 'approve', '2023-05-20 23:35:14', '2023-05-20 23:45:39'),
(16, 4, 'markjoshuaramiscal010@gmail.com', 'MAawi', 'markjoshuaramiscal010@gmail.com', 9099, 'maawi', 'alaminos', 2404, 'COD', 572851, 'approve', '2023-05-21 06:02:32', '2023-05-21 06:07:59'),
(17, 4, 'markjoshuaramiscal010@gmail.com', 'asas', 'markjoshuaramiscal010@gmail.com', 9090, 'asas', 'asas', 2403, 'COD', 479579, 'pending', '2023-05-24 22:37:28', '2023-05-24 22:37:28'),
(18, 4, 'markjoshuaramiscal010@gmail.com', 'maawi', 'markjoshuaramiscal010@gmail.com', 9909, 'maawi', 'alaminos', 2404, 'COD', 983216, 'pending', '2023-05-28 19:26:42', '2023-05-28 19:26:42'),
(19, 4, 'markjoshuaramiscal010@gmail.com', 'maawi', 'markjoshuaramiscal010@gmail.com', 9909, 'maawi', 'alaminos', 2404, 'COD', 475161, 'approve', '2023-05-28 19:27:07', '2023-06-01 05:38:47'),
(20, 4, 'markjoshuaramiscal010@gmail.com', 'hatdog', 'markjoshuaramiscal010@gmail.com', 90909, 'maawi', 'alaminos', 2403, 'COD', 199007, 'approve', '2023-06-01 06:04:41', '2023-06-01 06:05:39'),
(21, 4, 'markjoshuaramiscal010@gmail.com', 'bancorazol st.', 'markjoshuaramiscal010@gmail.com', 1981, 'maawi', 'alaminos city', 2404, 'COD', 691254, 'approve', '2023-06-01 06:25:06', '2023-06-01 06:25:58'),
(22, 4, 'markjoshuaramiscal010@gmail.com', 'zone 6', 'elsonjohnramiscal@g,ail.com', 9090909, 'maawi', 'alaminos', 2404, 'COD', 673587, 'approve', '2023-06-01 07:06:40', '2023-06-01 07:07:08'),
(23, 4, 'markjoshuaramiscal010@gmail.com', 'maawi', 'markjoshuaramiscal010@gmail.com', 9090909, 'maawi', 'alaminos city', 2404, 'COD', 812685, 'approve', '2023-06-01 07:18:30', '2023-06-01 07:32:53'),
(24, 1, 'admin@shoeciety.com', '09', 'admin@shoeciety.com', 9, '09', '09', 9, 'COD', 782744, 'pending', '2023-06-01 21:00:41', '2023-06-01 21:00:41'),
(25, 4, 'Mark Joshua Saguit ramiscal', 'maawi', 'markjoshuaramiscal010@gmail.com', 9090909, 'Maawi', 'Alaminos', 2401, 'COD', 320647, 'pending', '2023-06-05 19:58:58', '2023-06-05 19:58:58'),
(26, 9, 'Mark Joshua Saguit ramiscal', 'maawi', 'markjoshuaramiscal010@gmail.com', 9090909, 'maawi', 'alaminos', 2404, 'COD', 966193, 'approve', '2023-06-05 23:21:11', '2023-06-05 23:25:32'),
(27, 9, 'Mark Joshua Saguit ramiscal', 'maawi', 'markjoshuaramiscal010@gmail.com', 9090909, 'maawi', 'alaminos', 2404, 'COD', 111753, 'approve', '2023-06-05 23:21:12', '2023-06-05 23:24:43'),
(28, 9, 'Mark Joshua Saguit ramiscal', 'maawi', 'markjoshuaramiscal010@gmail.com', 9090909, 'maawi', 'alaminos', 2404, 'COD', 305580, 'approve', '2023-06-05 23:29:28', '2023-06-05 23:30:38'),
(29, 9, 'Mark Joshua Saguit ramiscal', 'maawi', 'markjoshuaramiscal010@gmail.com', 9090909, 'mawi', 'mawi', 2404, 'COD', 136780, 'approve', '2023-06-05 23:32:38', '2023-06-05 23:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('markjoshuaramiscal010@gmail.com', '$2y$10$Huf/ASeGhLnk21NcXSGBJe7LvttuWE9sr5afYdX2tgdQUxXgOqBzS', '2023-06-15 18:53:38');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `listing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `qty`, `created_at`, `updated_at`, `category`, `listing`) VALUES
(1, 'Ultra Boost', 'some desc', '5600.00', '/storage/images/fDTLduU6AGf5cvuSpTY6EerM47S4nfcYSLR2u83c.jpg', 10, '2023-05-19 03:55:23', '2023-06-01 20:58:22', 'All', 'New'),
(2, 'Stan Smith (Green)', 'some desc', '6500.00', '/storage/images/WR6C1g3EZ2hPrEko3nIvFO8JOTm5DKl7dAxY5yfN.jpg', 49, '2023-05-19 03:56:13', '2023-06-05 23:21:11', 'All', 'New'),
(3, 'Adidas Campus 00S', 'some Desc Of shoe', '6500.00', '/storage/images/GrQTlVULkgICnLpyEuqA1oBALRoMiQo8HIX3BM1J.jpg', 5, '2023-05-21 06:00:13', '2023-06-05 20:04:55', 'All', 'Best'),
(4, 'Ultraboost Light Shoe (pink)', 'Experience epic energy with the new Ultraboost Light, our lightest Ultraboost ever. The magic lies in the Light BOOST midsole, a new generation of adidas BOOST. Its unique molecule design achieves the lightest BOOST foam to date. With hundreds of BOOST capsules bursting with energy and ultimate cushioning and comfort, some feet really can have it all.', '11000.00', '/storage/images/brrxCMJQGdgExuLON1hoV8Av7yHfWVEeTV3OCtZz.jpg', 9, '2023-06-02 08:23:26', '2023-06-05 23:21:11', 'Womens', 'New'),
(5, 'Light Ultra Boost', 'Experience epic energy with the new Ultraboost Light, our lightest Ultraboost ever. The magic lies in the Light BOOST midsole, a new generation of adidas BOOST. Its unique molecule design achieves the lightest BOOST foam to date. With hundreds of BOOST capsules bursting with energy and ultimate cushioning and comfort, some feet really can have it all.', '11000.00', '/storage/images/jfKwaQXP4zjVAEhk2uvC3sIFP0sKYVQ6khBESex1.jpg', 10, '2023-06-02 08:25:46', '2023-06-02 08:26:34', 'Womens', 'New'),
(6, 'Ultra Mega Boost', 'Bibilis takbo MO', '6700.00', '/storage/images/fYpuGpoOnP7k3j68Nn1fyiX5JV1a5HrAxWsidj22.jpg', 10, '2023-06-05 19:55:13', '2023-06-05 19:55:13', 'Mens', 'New'),
(7, 'Stans Smith All white', 'popogi ka dito', '5600.00', '/storage/images/TOR8tPuxLCDBGLEGRhMfPZJbM1FoPwlar09MCAXF.jpg', 5, '2023-06-05 19:56:31', '2023-06-05 19:58:58', 'All', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'admin@shoeciety.com', 'admin@shoeciety.com', '2023-05-19 03:54:22', 'shoeciety@admin.com', NULL, NULL, NULL, 1),
(2, 'user@gmail.com', 'user@gmail.com', '2023-05-19 03:56:45', '$2y$10$Nuod.8T3Kj7tP0WviJ795.M/xV5xXT1FwjtNwmhCy6gHiZOoO8pTi', NULL, NULL, NULL, 1),
(5, 'wrznmbl10@gmail.com', 'wrznmbl10@gmail.com', NULL, '$2y$10$WXfkucML9pMiQ2hE/8z3HexyeDVvmh67FFsQz/BDeAScPN0mTpouu', NULL, NULL, NULL, 0),
(6, 'CLARENCE', 'floresclarence012@gmail.com', NULL, '$2y$10$A2UAFcX9ReXwDkR.LjguqOKfF.KJ3vdL/FbZapa27/poJOxRcljmy', NULL, NULL, NULL, 0),
(7, 'jeanne', 'jeannerochelleg@gmail.com', NULL, '$2y$10$1o0F118qBHazAEhn6lDNmubCoPTvdeDOmUoqTz4E/J5SgA90EwlUu', NULL, NULL, NULL, 0),
(8, 'Ma. Joshua', 'mjcaras@psu.edu.ph', NULL, '$2y$10$07xYuDgz24x5A284brSTm.jVfg9fWFTOaIaajpEXAPl.4DNuyc9oW', NULL, NULL, NULL, 0),
(9, 'Ma Joshua', 'markjoshuaramiscal010@gmail.com', '2023-06-05 23:17:55', '$2y$10$E8mo5FndyqrWAX1UE8zH7.e4h.X/58GIeruUN1HlpzQC2mBhsSDI2', NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

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
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
