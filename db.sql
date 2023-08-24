-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para laravelproject
CREATE DATABASE IF NOT EXISTS `laravelproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravelproject`;

-- Volcando estructura para tabla laravelproject.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravelproject.migrations: ~2 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- Volcando estructura para tabla laravelproject.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravelproject.personal_access_tokens: ~14 rows (aproximadamente)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(45, 'App\\Models\\User', 1, 'auth_token', '73ddb3ca782f5e9f428bdc80e6faf63ed9740008f003f7b728a38c69b3ae3062', '["*"]', NULL, NULL, '2023-08-07 01:26:03', '2023-08-07 01:26:03'),
	(46, 'App\\Models\\User', 1, 'auth_token', 'ab9401bac4daba03e5fde221f71dd023d89cac66c8d1a05c124edfe28f57a9be', '["*"]', NULL, NULL, '2023-08-07 01:29:31', '2023-08-07 01:29:31'),
	(47, 'App\\Models\\User', 1, 'auth_token', 'f8135759c7afa5659e01d219314c5255432e0c5f7fddf1788c7f07d59f8ca486', '["*"]', NULL, NULL, '2023-08-07 01:30:49', '2023-08-07 01:30:49'),
	(48, 'App\\Models\\User', 1, 'auth_token', '0967587c1afa30477b8db7a25637750a6092d284b1b0a2be46468a85b06da82a', '["*"]', NULL, NULL, '2023-08-07 01:32:23', '2023-08-07 01:32:23'),
	(49, 'App\\Models\\User', 1, 'auth_token', 'c26aa92a4f39f9f7928823fcd58ef2b5e78fd99c98c3b4f75cb858eb8461c72d', '["*"]', NULL, NULL, '2023-08-07 01:35:50', '2023-08-07 01:35:50'),
	(50, 'App\\Models\\User', 1, 'auth_token', '7ce916acc0f3b54d3beb2ce9647ee1345cdbc651b00a0c75db70347440b3f979', '["*"]', NULL, NULL, '2023-08-07 01:36:38', '2023-08-07 01:36:38'),
	(51, 'App\\Models\\User', 1, 'auth_token', 'c8ba2ed7dfbc258a269d7e89f0889763e39435eb3c21beecf068c60c320e5f6d', '["*"]', '2023-08-09 23:05:03', NULL, '2023-08-07 01:42:59', '2023-08-09 23:05:03'),
	(52, 'App\\Models\\User', 1, 'auth_token', '9580267de0b878b761196d17a3331e46fc1814a957e187ed56568844f5fa18dd', '["*"]', '2023-08-10 00:50:13', NULL, '2023-08-10 00:50:10', '2023-08-10 00:50:13'),
	(53, 'App\\Models\\User', 1, 'auth_token', 'e44a897f4ab9ee268e4cbd4aa8df60b29798325fe781ac783573075efccc9966', '["*"]', '2023-08-10 05:08:10', NULL, '2023-08-10 00:50:12', '2023-08-10 05:08:10'),
	(54, 'App\\Models\\User', 1, 'auth_token', '815053ab006a8ec7bc6f5da29333c9edb644664b886175c0964441a925b2a65e', '["*"]', NULL, NULL, '2023-08-10 05:21:27', '2023-08-10 05:21:27'),
	(55, 'App\\Models\\User', 1, 'auth_token', 'e63694ac95b2030735b266ac2734127ea3b3001b838dfd5bf968637050e139e7', '["*"]', NULL, NULL, '2023-08-10 05:34:28', '2023-08-10 05:34:28'),
	(56, 'App\\Models\\User', 1, 'auth_token', '9f0e85d3220add7c832b43977bf977d313cda14585681ba91efdf2469d951c6b', '["*"]', '2023-08-11 02:06:16', NULL, '2023-08-11 00:31:45', '2023-08-11 02:06:16'),
	(57, 'App\\Models\\User', 1, 'auth_token', '6efb2d1831f8bd89f2942dd74721dffc709f4689f4912d5eb5887ad664033c68', '["*"]', NULL, NULL, '2023-08-11 01:54:05', '2023-08-11 01:54:05'),
	(58, 'App\\Models\\User', 1, 'auth_token', 'e9ecabb193a79257a058458bcd1d292d3059ea4f1832a08d20f3186929c47cb2', '["*"]', '2023-08-11 02:20:24', NULL, '2023-08-11 02:06:20', '2023-08-11 02:20:24'),
	(59, 'App\\Models\\User', 2, 'auth_token', '841f5eb83a168cf3b630bd85c9b51d76a7ffc0e82e386629b8c87b5ee4ac5e63', '["*"]', '2023-08-11 02:22:30', NULL, '2023-08-11 02:22:08', '2023-08-11 02:22:30'),
	(60, 'App\\Models\\User', 2, 'auth_token', '314cb228fd54e05f022923ad7bb3705e2b626ab253ea8c80390a2eeb7a7aa0f8', '["*"]', '2023-08-12 23:49:00', NULL, '2023-08-12 23:48:57', '2023-08-12 23:49:00'),
	(61, 'App\\Models\\User', 1, 'auth_token', '37b920452c8a52c87fea16ffd1e5f60072c865dc63a083e3353e2a0a564e62de', '["*"]', '2023-08-18 01:50:05', NULL, '2023-08-13 00:17:17', '2023-08-18 01:50:05'),
	(62, 'App\\Models\\User', 1, 'auth_token', 'd860c553c961d6bde908f1d898dac18331fe88da6b6863bf1a0f5abf0e99dcff', '["*"]', '2023-08-18 02:04:39', NULL, '2023-08-18 02:01:08', '2023-08-18 02:04:39'),
	(63, 'App\\Models\\User', 1, 'auth_token', '8add945b8ab3b05f7a1719063d8837cef23047b3b00ed18aea2702fd97e593e6', '["*"]', '2023-08-19 03:33:48', NULL, '2023-08-18 02:06:44', '2023-08-19 03:33:48'),
	(64, 'App\\Models\\User', 1, 'auth_token', '2a3078fd9bf0cbc96434347945c2c5a856f7ebda5f1477e8c4cfa9d1766e7b3a', '["*"]', '2023-08-23 05:10:44', NULL, '2023-08-19 03:48:02', '2023-08-23 05:10:44');

-- Volcando estructura para tabla laravelproject.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravelproject.users: ~3 rows (aproximadamente)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rol`, `active`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.co', NULL, '$2y$10$R5aff6/2sRQcRGq7RG1FxurVJOs6FFX3NWpVRtbwShRvGwf77jRHa', 'admin', 1, NULL, NULL, '2023-07-15 05:14:20', '2023-08-13 00:26:21'),
	(2, 'user', 'user@gmail.co', NULL, '$2y$10$28nn8lRWljUbzJI6iEVs4ORVZsJUke5FCWyu5HkVQpM1p9lyiZiWS', 'user', 1, NULL, NULL, '2023-07-15 05:23:46', '2023-08-11 02:22:30'),
	(3, 'prueba', 'prueba@gmail.com', NULL, '$2y$10$blsGoGf8SuTGeYH9xU5qduNHULx6a1vnHgVNEdnsZyFDJ3J6YVn8K', 'user', 1, NULL, '2023-08-19 04:36:54', '2023-08-19 03:33:46', '2023-08-19 04:36:54');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
