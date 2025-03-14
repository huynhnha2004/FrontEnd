-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2025 at 11:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mai-backend`
--
CREATE DATABASE IF NOT EXISTS `mai-backend` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `mai-backend`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-05-08 12:05:14.048000', '2023-05-08 12:05:14.048000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-05-08 12:05:14.169000', '2023-05-08 12:05:14.169000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-05-08 12:05:14.236000', '2023-05-08 12:05:14.236000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-05-08 12:05:14.304000', '2023-05-08 12:05:14.304000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-05-08 12:05:14.460000', '2023-05-08 12:05:14.460000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-05-08 12:05:14.512000', '2023-05-08 12:05:14.512000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-05-08 12:05:14.562000', '2023-05-08 12:05:14.562000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-05-08 12:05:14.776000', '2023-05-08 12:05:14.776000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-05-08 12:05:15.377000', '2023-05-08 12:05:15.377000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-05-08 12:05:15.615000', '2023-05-08 12:05:15.615000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-05-08 12:05:15.878000', '2023-05-08 12:05:15.878000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-05-08 12:05:16.072000', '2023-05-08 12:05:16.072000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-05-08 12:05:16.316000', '2023-05-08 12:05:16.316000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-05-08 12:05:16.506000', '2023-05-08 12:05:16.506000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-05-08 12:05:16.691000', '2023-05-08 12:05:16.691000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-05-08 12:05:16.928000', '2023-05-08 12:05:16.928000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-05-08 12:05:17.053000', '2023-05-08 12:05:17.053000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-05-08 12:05:17.145000', '2023-05-08 12:05:17.145000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-05-08 12:05:17.238000', '2023-05-08 12:05:17.238000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-05-08 12:05:17.321000', '2023-05-08 12:05:17.321000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-05-08 12:05:17.495000', '2023-05-08 12:05:17.495000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-05-08 12:05:17.578000', '2023-05-08 12:05:17.578000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-05-08 12:05:17.677000', '2023-05-08 12:05:17.677000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-05-08 12:05:17.772000', '2023-05-08 12:05:17.772000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-05-08 12:05:17.828000', '2023-05-08 12:05:17.828000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-05-08 12:05:17.969000', '2023-05-08 12:05:17.969000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-05-08 12:05:18.036000', '2023-05-08 12:05:18.036000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-05-08 12:05:18.132000', '2023-05-08 12:05:18.132000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-05-08 12:05:18.312000', '2023-05-08 12:05:18.312000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-05-08 12:05:18.420000', '2023-05-08 12:05:18.420000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-05-08 12:05:18.538000', '2023-05-08 12:05:18.538000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-05-08 12:05:18.713000', '2023-05-08 12:05:18.713000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-05-08 12:05:18.863000', '2023-05-08 12:05:18.863000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-05-08 12:05:19.007000', '2023-05-08 12:05:19.007000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-05-08 12:05:19.155000', '2023-05-08 12:05:19.155000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-05-08 12:05:19.204000', '2023-05-08 12:05:19.204000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-05-08 12:05:19.338000', '2023-05-08 12:05:19.338000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-05-08 12:05:19.428000', '2023-05-08 12:05:19.428000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-05-08 12:05:19.494000', '2023-05-08 12:05:19.494000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-05-08 12:05:19.538000', '2023-05-08 12:05:19.538000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-05-08 12:05:19.670000', '2023-05-08 12:05:19.670000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-05-08 12:05:19.724000', '2023-05-08 12:05:19.724000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-05-08 12:05:19.860000', '2023-05-08 12:05:19.860000', NULL, NULL),
(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-05-08 12:05:19.928000', '2023-05-08 12:05:19.928000', NULL, NULL),
(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-05-08 12:05:20.061000', '2023-05-08 12:05:20.061000', NULL, NULL),
(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-05-08 12:05:20.111000', '2023-05-08 12:05:20.111000', NULL, NULL),
(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-05-08 12:05:20.161000', '2023-05-08 12:05:20.161000', NULL, NULL),
(48, 'admin::users.create', NULL, '{}', '[]', '2023-05-08 12:05:20.203000', '2023-05-08 12:05:20.203000', NULL, NULL),
(49, 'admin::users.read', NULL, '{}', '[]', '2023-05-08 12:05:20.320000', '2023-05-08 12:05:20.320000', NULL, NULL),
(50, 'admin::users.update', NULL, '{}', '[]', '2023-05-08 12:05:20.378000', '2023-05-08 12:05:20.378000', NULL, NULL),
(51, 'admin::users.delete', NULL, '{}', '[]', '2023-05-08 12:05:20.428000', '2023-05-08 12:05:20.428000', NULL, NULL),
(52, 'admin::roles.create', NULL, '{}', '[]', '2023-05-08 12:05:20.546000', '2023-05-08 12:05:20.546000', NULL, NULL),
(53, 'admin::roles.read', NULL, '{}', '[]', '2023-05-08 12:05:20.595000', '2023-05-08 12:05:20.595000', NULL, NULL),
(54, 'admin::roles.update', NULL, '{}', '[]', '2023-05-08 12:05:20.711000', '2023-05-08 12:05:20.711000', NULL, NULL),
(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-05-08 12:05:20.885000', '2023-05-08 12:05:20.885000', NULL, NULL),
(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-05-08 12:05:21.019000', '2023-05-08 12:05:21.019000', NULL, NULL),
(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-05-08 12:05:21.102000', '2023-05-08 12:05:21.102000', NULL, NULL),
(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-05-08 12:05:21.144000', '2023-05-08 12:05:21.144000', NULL, NULL),
(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-05-08 12:05:21.322000', '2023-05-08 12:05:21.322000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-05-08 12:05:21.403000', '2023-05-08 12:05:21.403000', NULL, NULL),
(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-05-08 12:05:21.445000', '2023-05-08 12:05:21.445000', NULL, NULL),
(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-05-08 12:05:21.502000', '2023-05-08 12:05:21.502000', NULL, NULL),
(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-05-08 12:05:21.645000', '2023-05-08 12:05:21.645000', NULL, NULL),
(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-05-08 12:05:21.695000', '2023-05-08 12:05:21.695000', NULL, NULL),
(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-05-08 12:05:21.805000', '2023-05-08 12:05:21.805000', NULL, NULL),
(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-05-08 12:05:21.910000', '2023-05-08 12:05:21.910000', NULL, NULL),
(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-05-08 12:05:21.995000', '2023-05-08 12:05:21.995000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-05-08 12:05:22.121000', '2023-05-08 12:05:22.121000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-05-08 12:05:22.195000', '2023-05-08 12:05:22.195000', NULL, NULL),
(102, 'plugin::documentation.read', NULL, '{}', '[]', '2023-05-09 00:05:53.590000', '2023-05-09 00:05:53.590000', NULL, NULL),
(103, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2023-05-09 00:05:53.726000', '2023-05-09 00:05:53.726000', NULL, NULL),
(104, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2023-05-09 00:05:53.904000', '2023-05-09 00:05:53.904000', NULL, NULL),
(105, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2023-05-09 00:05:53.960000', '2023-05-09 00:05:53.960000', NULL, NULL),
(109, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2023-05-09 00:14:41.824000', '2023-05-09 00:14:41.824000', NULL, NULL),
(110, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2023-05-09 00:14:41.931000', '2023-05-09 00:14:41.931000', NULL, NULL),
(114, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2023-05-09 00:22:21.004000', '2023-05-09 00:22:21.004000', NULL, NULL),
(115, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2023-05-09 00:22:21.046000', '2023-05-09 00:22:21.046000', NULL, NULL),
(119, 'plugin::content-manager.explorer.delete', 'api::order.order', '{}', '[]', '2024-12-15 10:19:14.617000', '2024-12-15 10:19:14.617000', NULL, NULL),
(126, 'plugin::content-manager.explorer.delete', 'api::order-detail.order-detail', '{}', '[]', '2024-12-15 10:27:10.535000', '2024-12-15 10:27:10.535000', NULL, NULL),
(127, 'plugin::content-manager.explorer.create', 'api::order-detail.order-detail', '{\"fields\": [\"price\", \"quantity\", \"productName\", \"order\", \"product\"]}', '[]', '2024-12-15 10:34:59.672000', '2024-12-15 10:34:59.672000', NULL, NULL),
(128, 'plugin::content-manager.explorer.read', 'api::order-detail.order-detail', '{\"fields\": [\"price\", \"quantity\", \"productName\", \"order\", \"product\"]}', '[]', '2024-12-15 10:34:59.682000', '2024-12-15 10:34:59.682000', NULL, NULL),
(129, 'plugin::content-manager.explorer.update', 'api::order-detail.order-detail', '{\"fields\": [\"price\", \"quantity\", \"productName\", \"order\", \"product\"]}', '[]', '2024-12-15 10:34:59.689000', '2024-12-15 10:34:59.689000', NULL, NULL),
(130, 'plugin::content-manager.explorer.create', 'api::order.order', '{\"fields\": [\"customerName\", \"total\", \"address\", \"status\", \"email\", \"Phone\", \"Note\", \"users_permissions_user\"]}', '[]', '2024-12-15 10:37:10.085000', '2024-12-15 10:37:10.085000', NULL, NULL),
(131, 'plugin::content-manager.explorer.read', 'api::order.order', '{\"fields\": [\"customerName\", \"total\", \"address\", \"status\", \"email\", \"Phone\", \"Note\", \"users_permissions_user\"]}', '[]', '2024-12-15 10:37:10.098000', '2024-12-15 10:37:10.098000', NULL, NULL),
(132, 'plugin::content-manager.explorer.update', 'api::order.order', '{\"fields\": [\"customerName\", \"total\", \"address\", \"status\", \"email\", \"Phone\", \"Note\", \"users_permissions_user\"]}', '[]', '2024-12-15 10:37:10.110000', '2024-12-15 10:37:10.110000', NULL, NULL),
(142, 'plugin::content-manager.explorer.delete', 'api::brand.brand', '{}', '[]', '2024-12-15 13:06:16.150000', '2024-12-15 13:06:16.150000', NULL, NULL),
(152, 'plugin::content-manager.explorer.create', 'api::brand.brand', '{\"fields\": [\"brandName\", \"description\", \"logo\"]}', '[]', '2024-12-23 08:08:23.871000', '2024-12-23 08:08:23.871000', NULL, NULL),
(153, 'plugin::content-manager.explorer.read', 'api::brand.brand', '{\"fields\": [\"brandName\", \"description\", \"logo\"]}', '[]', '2024-12-23 08:08:23.881000', '2024-12-23 08:08:23.881000', NULL, NULL),
(154, 'plugin::content-manager.explorer.update', 'api::brand.brand', '{\"fields\": [\"brandName\", \"description\", \"logo\"]}', '[]', '2024-12-23 08:08:23.889000', '2024-12-23 08:08:23.889000', NULL, NULL),
(186, 'plugin::content-manager.explorer.delete', 'api::carousel.carousel', '{}', '[]', '2024-12-30 09:58:04.484000', '2024-12-30 09:58:04.484000', NULL, NULL),
(187, 'plugin::content-manager.explorer.publish', 'api::brand.brand', '{}', '[]', '2024-12-30 11:19:55.342000', '2024-12-30 11:19:55.342000', NULL, NULL),
(188, 'plugin::content-manager.explorer.publish', 'api::carousel.carousel', '{}', '[]', '2024-12-30 11:20:15.411000', '2024-12-30 11:20:15.411000', NULL, NULL),
(191, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\", \"image\", \"icon\"]}', '[]', '2024-12-30 11:45:15.971000', '2024-12-30 11:45:15.971000', NULL, NULL),
(192, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\", \"image\", \"icon\"]}', '[]', '2024-12-30 11:45:15.985000', '2024-12-30 11:45:15.985000', NULL, NULL),
(193, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\", \"image\", \"icon\"]}', '[]', '2024-12-30 11:45:15.993000', '2024-12-30 11:45:15.993000', NULL, NULL),
(194, 'plugin::content-manager.explorer.create', 'api::page.page', '{\"fields\": [\"Title\", \"content\", \"author\"]}', '[]', '2024-12-30 13:26:03.173000', '2024-12-30 13:26:03.173000', NULL, NULL),
(195, 'plugin::content-manager.explorer.read', 'api::page.page', '{\"fields\": [\"Title\", \"content\", \"author\"]}', '[]', '2024-12-30 13:26:03.212000', '2024-12-30 13:26:03.212000', NULL, NULL),
(196, 'plugin::content-manager.explorer.update', 'api::page.page', '{\"fields\": [\"Title\", \"content\", \"author\"]}', '[]', '2024-12-30 13:26:03.225000', '2024-12-30 13:26:03.225000', NULL, NULL),
(197, 'plugin::content-manager.explorer.delete', 'api::page.page', '{}', '[]', '2024-12-30 13:26:03.239000', '2024-12-30 13:26:03.239000', NULL, NULL),
(198, 'plugin::content-manager.explorer.publish', 'api::page.page', '{}', '[]', '2024-12-30 13:26:03.250000', '2024-12-30 13:26:03.250000', NULL, NULL),
(220, 'plugin::content-manager.explorer.create', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"price\", \"image\", \"category\", \"view\", \"sold\", \"brand\", \"status\", \"feature\", \"ingredient\", \"instruction\", \"summary\", \"tag\"]}', '[]', '2024-12-30 22:27:55.451000', '2024-12-30 22:27:55.451000', NULL, NULL),
(221, 'plugin::content-manager.explorer.read', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"price\", \"image\", \"category\", \"view\", \"sold\", \"brand\", \"status\", \"feature\", \"ingredient\", \"instruction\", \"summary\", \"tag\"]}', '[]', '2024-12-30 22:27:55.467000', '2024-12-30 22:27:55.467000', NULL, NULL),
(222, 'plugin::content-manager.explorer.update', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"price\", \"image\", \"category\", \"view\", \"sold\", \"brand\", \"status\", \"feature\", \"ingredient\", \"instruction\", \"summary\", \"tag\"]}', '[]', '2024-12-30 22:27:55.478000', '2024-12-30 22:27:55.478000', NULL, NULL),
(223, 'plugin::content-manager.explorer.create', 'api::carousel.carousel', '{\"fields\": [\"carouselName\", \"image\", \"location\"]}', '[]', '2025-01-01 09:17:05.038000', '2025-01-01 09:17:05.038000', NULL, NULL),
(224, 'plugin::content-manager.explorer.read', 'api::carousel.carousel', '{\"fields\": [\"carouselName\", \"image\", \"location\"]}', '[]', '2025-01-01 09:17:05.050000', '2025-01-01 09:17:05.050000', NULL, NULL),
(225, 'plugin::content-manager.explorer.update', 'api::carousel.carousel', '{\"fields\": [\"carouselName\", \"image\", \"location\"]}', '[]', '2025-01-01 09:17:05.061000', '2025-01-01 09:17:05.061000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(102, 102, 1, 58),
(103, 103, 1, 59),
(104, 104, 1, 60),
(105, 105, 1, 61),
(109, 109, 1, 65),
(110, 110, 1, 66),
(114, 114, 1, 70),
(115, 115, 1, 71),
(119, 119, 1, 75),
(126, 126, 1, 82),
(127, 127, 1, 83),
(128, 128, 1, 84),
(129, 129, 1, 85),
(130, 130, 1, 86),
(131, 131, 1, 87),
(132, 132, 1, 88),
(142, 142, 1, 95),
(152, 152, 1, 102),
(153, 153, 1, 103),
(154, 154, 1, 104),
(186, 186, 1, 126),
(187, 187, 1, 127),
(188, 188, 1, 128),
(191, 191, 1, 130),
(192, 192, 1, 131),
(193, 193, 1, 132),
(194, 194, 1, 133),
(195, 195, 1, 134),
(196, 196, 1, 135),
(197, 197, 1, 136),
(198, 198, 1, 137),
(220, 220, 1, 138),
(221, 221, 1, 139),
(222, 222, 1, 140),
(223, 223, 1, 141),
(224, 224, 1, 142),
(225, 225, 1, 143);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-05-08 12:05:13.932000', '2023-05-08 12:05:13.932000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-05-08 12:05:13.995000', '2023-05-08 12:05:13.995000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-05-08 12:05:14.021000', '2023-05-08 12:05:14.021000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `reset_password_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `registration_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Chu', 'Thi Mai', NULL, 'ctmai@fit-hitu.edu.vn', '$2a$10$Z1D6kcqqDJ0ED.zffpIY.uQ2r9/eX8Sqm8cBjnj6rI/FCIvdoVWc.', NULL, NULL, 1, 0, NULL, '2023-05-08 12:10:18.681000', '2024-12-15 09:13:38.709000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `published_at`) VALUES
(1, 'L\'Oréal', 'Mô tả brand L\'Oréal', '2024-12-15 13:09:59.610000', '2024-12-23 08:23:05.453000', 1, 1, '2024-12-15 13:09:59.610000'),
(2, 'Beiersdorf', 'Mô tả brand Beiersdorf', '2024-12-15 13:10:37.637000', '2024-12-23 08:20:51.644000', 1, 1, '2024-12-15 13:10:37.637000'),
(3, ' Estée Lauder', 'Mô tả brand  Estée Lauder', '2024-12-15 13:11:03.918000', '2024-12-23 08:20:39.129000', 1, 1, '2024-12-15 13:11:03.918000'),
(4, 'Kao', 'Mô tả brand Kao', '2024-12-15 13:11:26.265000', '2024-12-23 08:21:06.427000', 1, 1, '2024-12-15 13:11:26.265000');

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` int UNSIGNED NOT NULL,
  `carousel_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `carousel_name`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `published_at`, `location`) VALUES
(1, 'topCarousel', '2024-12-30 10:03:52.147000', '2025-01-01 09:18:17.752000', 1, 1, '2024-12-30 10:03:52.147000', 'topnav'),
(2, 'topCarousel', '2024-12-30 10:05:56.193000', '2025-01-01 09:18:06.906000', 1, 1, '2024-12-30 10:05:56.193000', 'topnav'),
(3, 'topCarousel', '2025-01-01 09:15:13.690000', '2025-01-01 09:17:54.126000', 1, 1, '2025-01-01 09:17:46.022000', 'topnav');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(3, 'Hair Care', 'Hair Care', '2023-05-09 00:21:29.148000', '2024-12-30 11:49:04.361000', '2023-05-09 10:55:06.000000', NULL, 1),
(4, 'Skincare', 'Quisquam quia omnis facere. Nulla dolore numquam earum minima. Ad officiis mollitia facilis reiciendis. Sunt repellat eligendi. Assumenda tempora tempora ullam excepturi sunt iusto voluptatibus sequi. Quia temporibus maxime laboriosam.', '2023-05-09 00:21:29.253000', '2024-12-30 11:49:32.563000', '2023-05-09 10:55:06.000000', NULL, 1),
(7, 'BodyCare', 'BodyCare', '2023-05-09 00:21:29.358000', '2024-12-30 11:48:24.327000', '2023-05-09 10:55:06.000000', NULL, 1),
(14, 'Makeup', 'Makeup', '2023-05-09 00:37:39.448000', '2024-12-30 11:49:16.379000', '2023-05-09 10:55:06.000000', NULL, 1),
(39, 'Category2', 'xem tam', '2024-12-30 11:23:12.119000', '2024-12-30 11:48:49.422000', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `alternative_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `preview_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'shop-cart.PNG', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".PNG\", \"url\": \"/uploads/thumbnail_shop_cart_434e039025.PNG\", \"hash\": \"thumbnail_shop_cart_434e039025\", \"mime\": \"image/png\", \"name\": \"thumbnail_shop-cart.PNG\", \"path\": null, \"size\": 7.47, \"width\": 121, \"height\": 156}}', 'shop_cart_434e039025', '.PNG', 'image/png', '11.17', '/uploads/shop_cart_434e039025.PNG', NULL, 'local', NULL, '/1', '2023-05-08 14:52:13.211000', '2023-05-08 14:52:13.211000', 1, 1),
(2, 's.png', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_s_705f80eac1.png\", \"hash\": \"thumbnail_s_705f80eac1\", \"mime\": \"image/png\", \"name\": \"thumbnail_s.png\", \"path\": null, \"size\": 19.96, \"width\": 121, \"height\": 156}}', 's_705f80eac1', '.png', 'image/png', '28.68', '/uploads/s_705f80eac1.png', NULL, 'local', NULL, '/1', '2023-05-08 14:52:13.213000', '2023-05-08 14:52:13.213000', 1, 1),
(3, 'f.jpg', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_f_6b1e49bc7d.jpg\", \"hash\": \"thumbnail_f_6b1e49bc7d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_f.jpg\", \"path\": null, \"size\": 4.12, \"width\": 121, \"height\": 156}}', 'f_6b1e49bc7d', '.jpg', 'image/jpeg', '16.35', '/uploads/f_6b1e49bc7d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 15:10:49.678000', '2023-05-08 15:10:49.678000', 1, 1),
(4, 'g.jpg', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_g_fa518cf1b6.jpg\", \"hash\": \"thumbnail_g_fa518cf1b6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_g.jpg\", \"path\": null, \"size\": 2.49, \"width\": 121, \"height\": 156}}', 'g_fa518cf1b6', '.jpg', 'image/jpeg', '8.93', '/uploads/g_fa518cf1b6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 15:10:49.664000', '2023-05-08 15:10:49.664000', 1, 1),
(5, 'e.jpg', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_e_233d8e4881.jpg\", \"hash\": \"thumbnail_e_233d8e4881\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_e.jpg\", \"path\": null, \"size\": 2.35, \"width\": 121, \"height\": 156}}', 'e_233d8e4881', '.jpg', 'image/jpeg', '7.66', '/uploads/e_233d8e4881.jpg', NULL, 'local', NULL, '/2', '2023-05-08 15:10:49.679000', '2023-05-08 15:10:49.679000', 1, 1),
(6, 'h.jpg', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_h_c7709ed22f.jpg\", \"hash\": \"thumbnail_h_c7709ed22f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_h.jpg\", \"path\": null, \"size\": 2.35, \"width\": 121, \"height\": 156}}', 'h_c7709ed22f', '.jpg', 'image/jpeg', '7.66', '/uploads/h_c7709ed22f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 15:10:49.677000', '2023-05-08 15:10:49.677000', 1, 1),
(7, 'kchekd_image03_02.jpg', NULL, NULL, 650, 580, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kchekd_image03_02_b3ab367b5e.jpg\", \"hash\": \"small_kchekd_image03_02_b3ab367b5e\", \"mime\": \"image/jpeg\", \"name\": \"small_kchekd_image03_02.jpg\", \"path\": null, \"size\": 12.76, \"width\": 500, \"height\": 446}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image03_02_b3ab367b5e.jpg\", \"hash\": \"thumbnail_kchekd_image03_02_b3ab367b5e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image03_02.jpg\", \"path\": null, \"size\": 2.94, \"width\": 175, \"height\": 156}}', 'kchekd_image03_02_b3ab367b5e', '.jpg', 'image/jpeg', '19.25', '/uploads/kchekd_image03_02_b3ab367b5e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:41.258000', '2023-05-08 17:18:41.258000', 1, 1),
(8, 'kchekd_image03_03.jpg', NULL, NULL, 359, 386, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image03_03_9c947f805d.jpg\", \"hash\": \"thumbnail_kchekd_image03_03_9c947f805d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image03_03.jpg\", \"path\": null, \"size\": 2.69, \"width\": 145, \"height\": 156}}', 'kchekd_image03_03_9c947f805d', '.jpg', 'image/jpeg', '9.73', '/uploads/kchekd_image03_03_9c947f805d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:41.144000', '2023-05-08 17:18:41.144000', 1, 1),
(9, 'kchekd_image03_04.jpg', NULL, NULL, 366, 390, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image03_04_2d7e2f19fb.jpg\", \"hash\": \"thumbnail_kchekd_image03_04_2d7e2f19fb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image03_04.jpg\", \"path\": null, \"size\": 3.01, \"width\": 146, \"height\": 156}}', 'kchekd_image03_04_2d7e2f19fb', '.jpg', 'image/jpeg', '10.23', '/uploads/kchekd_image03_04_2d7e2f19fb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:41.141000', '2023-05-08 17:18:41.141000', 1, 1),
(10, 'kchekd_image03_05.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kchekd_image03_05_6d403af7bf.jpg\", \"hash\": \"small_kchekd_image03_05_6d403af7bf\", \"mime\": \"image/jpeg\", \"name\": \"small_kchekd_image03_05.jpg\", \"path\": null, \"size\": 15.54, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_kchekd_image03_05_6d403af7bf.jpg\", \"hash\": \"medium_kchekd_image03_05_6d403af7bf\", \"mime\": \"image/jpeg\", \"name\": \"medium_kchekd_image03_05.jpg\", \"path\": null, \"size\": 28.27, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image03_05_6d403af7bf.jpg\", \"hash\": \"thumbnail_kchekd_image03_05_6d403af7bf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image03_05.jpg\", \"path\": null, \"size\": 2.96, \"width\": 156, \"height\": 156}}', 'kchekd_image03_05_6d403af7bf', '.jpg', 'image/jpeg', '43.59', '/uploads/kchekd_image03_05_6d403af7bf.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:41.289000', '2023-05-08 17:18:41.289000', 1, 1),
(11, 'kchekd_image03_06.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kchekd_image03_06_e5f3a9e90f.jpg\", \"hash\": \"small_kchekd_image03_06_e5f3a9e90f\", \"mime\": \"image/jpeg\", \"name\": \"small_kchekd_image03_06.jpg\", \"path\": null, \"size\": 15.86, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_kchekd_image03_06_e5f3a9e90f.jpg\", \"hash\": \"medium_kchekd_image03_06_e5f3a9e90f\", \"mime\": \"image/jpeg\", \"name\": \"medium_kchekd_image03_06.jpg\", \"path\": null, \"size\": 28.93, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image03_06_e5f3a9e90f.jpg\", \"hash\": \"thumbnail_kchekd_image03_06_e5f3a9e90f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image03_06.jpg\", \"path\": null, \"size\": 3.04, \"width\": 156, \"height\": 156}}', 'kchekd_image03_06_e5f3a9e90f', '.jpg', 'image/jpeg', '44.46', '/uploads/kchekd_image03_06_e5f3a9e90f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:41.295000', '2023-05-08 17:18:41.295000', 1, 1),
(12, 'kchekd_image03_07.jpg', NULL, NULL, 800, 800, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kchekd_image03_07_fe2867e52d.jpg\", \"hash\": \"small_kchekd_image03_07_fe2867e52d\", \"mime\": \"image/jpeg\", \"name\": \"small_kchekd_image03_07.jpg\", \"path\": null, \"size\": 15.44, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_kchekd_image03_07_fe2867e52d.jpg\", \"hash\": \"medium_kchekd_image03_07_fe2867e52d\", \"mime\": \"image/jpeg\", \"name\": \"medium_kchekd_image03_07.jpg\", \"path\": null, \"size\": 27.55, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image03_07_fe2867e52d.jpg\", \"hash\": \"thumbnail_kchekd_image03_07_fe2867e52d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image03_07.jpg\", \"path\": null, \"size\": 3.09, \"width\": 156, \"height\": 156}}', 'kchekd_image03_07_fe2867e52d', '.jpg', 'image/jpeg', '29.27', '/uploads/kchekd_image03_07_fe2867e52d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:41.267000', '2023-05-08 17:18:41.267000', 1, 1),
(13, 'kchekd_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image04_90ab909e34.jpg\", \"hash\": \"thumbnail_kchekd_image04_90ab909e34\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image04.jpg\", \"path\": null, \"size\": 1.89, \"width\": 156, \"height\": 156}}', 'kchekd_image04_90ab909e34', '.jpg', 'image/jpeg', '2.84', '/uploads/kchekd_image04_90ab909e34.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:42.821000', '2023-05-08 17:18:42.821000', 1, 1),
(14, 'kchekd_image04_01.jpg', NULL, NULL, 442, 442, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kchekd_image04_01_2ccb31e9ce.jpg\", \"hash\": \"thumbnail_kchekd_image04_01_2ccb31e9ce\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kchekd_image04_01.jpg\", \"path\": null, \"size\": 1.9, \"width\": 156, \"height\": 156}}', 'kchekd_image04_01_2ccb31e9ce', '.jpg', 'image/jpeg', '8.43', '/uploads/kchekd_image04_01_2ccb31e9ce.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:18:42.825000', '2023-05-08 17:18:42.825000', 1, 1),
(15, 'mng_image18.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image18_7723fe8918.jpg\", \"hash\": \"thumbnail_mng_image18_7723fe8918\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image18.jpg\", \"path\": null, \"size\": 3.33, \"width\": 156, \"height\": 156}}', 'mng_image18_7723fe8918', '.jpg', 'image/jpeg', '5.08', '/uploads/mng_image18_7723fe8918.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:12.418000', '2023-05-08 17:19:12.418000', 1, 1),
(16, 'mng_image21.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image21_3de34c825e.jpg\", \"hash\": \"thumbnail_mng_image21_3de34c825e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image21.jpg\", \"path\": null, \"size\": 2.28, \"width\": 156, \"height\": 156}}', 'mng_image21_3de34c825e', '.jpg', 'image/jpeg', '3.65', '/uploads/mng_image21_3de34c825e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:12.455000', '2023-05-08 17:19:12.455000', 1, 1),
(17, 'mng_image17.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image17_fc3e63a07a.jpg\", \"hash\": \"thumbnail_mng_image17_fc3e63a07a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image17.jpg\", \"path\": null, \"size\": 2.76, \"width\": 156, \"height\": 156}}', 'mng_image17_fc3e63a07a', '.jpg', 'image/jpeg', '4.22', '/uploads/mng_image17_fc3e63a07a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:12.457000', '2023-05-08 17:19:12.457000', 1, 1),
(18, 'mng_image19.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image19_017c7b9b0e.jpg\", \"hash\": \"thumbnail_mng_image19_017c7b9b0e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image19.jpg\", \"path\": null, \"size\": 2.41, \"width\": 156, \"height\": 156}}', 'mng_image19_017c7b9b0e', '.jpg', 'image/jpeg', '3.85', '/uploads/mng_image19_017c7b9b0e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:12.501000', '2023-05-08 17:19:12.501000', 1, 1),
(19, 'mng_image22.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image22_c27ae66917.jpg\", \"hash\": \"thumbnail_mng_image22_c27ae66917\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image22.jpg\", \"path\": null, \"size\": 2.34, \"width\": 156, \"height\": 156}}', 'mng_image22_c27ae66917', '.jpg', 'image/jpeg', '3.90', '/uploads/mng_image22_c27ae66917.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:12.566000', '2023-05-08 17:19:12.566000', 1, 1),
(20, 'mng_image20.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image20_7e6ca1d83e.jpg\", \"hash\": \"thumbnail_mng_image20_7e6ca1d83e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image20.jpg\", \"path\": null, \"size\": 14.87, \"width\": 156, \"height\": 156}}', 'mng_image20_7e6ca1d83e', '.jpg', 'image/jpeg', '7.72', '/uploads/mng_image20_7e6ca1d83e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:12.768000', '2023-05-08 17:19:12.768000', 1, 1),
(21, 'mng_image23.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image23_eb8d785745.jpg\", \"hash\": \"thumbnail_mng_image23_eb8d785745\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image23.jpg\", \"path\": null, \"size\": 3.58, \"width\": 156, \"height\": 156}}', 'mng_image23_eb8d785745', '.jpg', 'image/jpeg', '6.11', '/uploads/mng_image23_eb8d785745.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:13.919000', '2023-05-08 17:19:13.919000', 1, 1),
(22, 'mng_image24.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image24_28a4fb4339.jpg\", \"hash\": \"thumbnail_mng_image24_28a4fb4339\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image24.jpg\", \"path\": null, \"size\": 1.93, \"width\": 156, \"height\": 156}}', 'mng_image24_28a4fb4339', '.jpg', 'image/jpeg', '3.08', '/uploads/mng_image24_28a4fb4339.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:13.943000', '2023-05-08 17:19:13.943000', 1, 1),
(23, 'mng_image26.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image26_9cfe96b142.jpg\", \"hash\": \"thumbnail_mng_image26_9cfe96b142\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image26.jpg\", \"path\": null, \"size\": 3.59, \"width\": 156, \"height\": 156}}', 'mng_image26_9cfe96b142', '.jpg', 'image/jpeg', '6.13', '/uploads/mng_image26_9cfe96b142.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:13.971000', '2023-05-08 17:19:13.971000', 1, 1),
(24, 'mng_image25.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image25_abd3295bc5.jpg\", \"hash\": \"thumbnail_mng_image25_abd3295bc5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image25.jpg\", \"path\": null, \"size\": 4.53, \"width\": 156, \"height\": 156}}', 'mng_image25_abd3295bc5', '.jpg', 'image/jpeg', '6.93', '/uploads/mng_image25_abd3295bc5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:13.985000', '2023-05-08 17:19:13.985000', 1, 1),
(25, 'mng_image27.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image27_1618af4157.jpg\", \"hash\": \"thumbnail_mng_image27_1618af4157\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image27.jpg\", \"path\": null, \"size\": 3.95, \"width\": 156, \"height\": 156}}', 'mng_image27_1618af4157', '.jpg', 'image/jpeg', '5.57', '/uploads/mng_image27_1618af4157.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:13.993000', '2023-05-08 17:19:13.993000', 1, 1),
(26, 'mng_image28.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image28_1acc8dbcf9.jpg\", \"hash\": \"thumbnail_mng_image28_1acc8dbcf9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image28.jpg\", \"path\": null, \"size\": 2.81, \"width\": 156, \"height\": 156}}', 'mng_image28_1acc8dbcf9', '.jpg', 'image/jpeg', '4.34', '/uploads/mng_image28_1acc8dbcf9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:14.078000', '2023-05-08 17:19:14.078000', 1, 1),
(27, 'mng_image29.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image29_ca51ae1c65.jpg\", \"hash\": \"thumbnail_mng_image29_ca51ae1c65\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image29.jpg\", \"path\": null, \"size\": 3.7, \"width\": 156, \"height\": 156}}', 'mng_image29_ca51ae1c65', '.jpg', 'image/jpeg', '6.32', '/uploads/mng_image29_ca51ae1c65.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:15.207000', '2023-05-08 17:19:15.207000', 1, 1),
(28, 'mng_image32.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image32_fb50e30245.jpg\", \"hash\": \"thumbnail_mng_image32_fb50e30245\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image32.jpg\", \"path\": null, \"size\": 2.51, \"width\": 156, \"height\": 156}}', 'mng_image32_fb50e30245', '.jpg', 'image/jpeg', '3.70', '/uploads/mng_image32_fb50e30245.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:15.254000', '2023-05-08 17:19:15.254000', 1, 1),
(29, 'mng_image30.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image30_b2e7e90ccb.jpg\", \"hash\": \"thumbnail_mng_image30_b2e7e90ccb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image30.jpg\", \"path\": null, \"size\": 14.59, \"width\": 156, \"height\": 156}}', 'mng_image30_b2e7e90ccb', '.jpg', 'image/jpeg', '6.37', '/uploads/mng_image30_b2e7e90ccb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:15.259000', '2023-05-08 17:19:15.259000', 1, 1),
(30, 'mng_image31.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mng_image31_53fb305b68.jpg\", \"hash\": \"thumbnail_mng_image31_53fb305b68\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mng_image31.jpg\", \"path\": null, \"size\": 14.75, \"width\": 156, \"height\": 156}}', 'mng_image31_53fb305b68', '.jpg', 'image/jpeg', '6.71', '/uploads/mng_image31_53fb305b68.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:15.274000', '2023-05-08 17:19:15.274000', 1, 1),
(31, 'mnn_image01.jpg', NULL, NULL, 442, 442, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image01_08f1399ac7.jpg\", \"hash\": \"thumbnail_mnn_image01_08f1399ac7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image01.jpg\", \"path\": null, \"size\": 1.69, \"width\": 156, \"height\": 156}}', 'mnn_image01_08f1399ac7', '.jpg', 'image/jpeg', '7.91', '/uploads/mnn_image01_08f1399ac7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:15.300000', '2023-05-08 17:19:15.300000', 1, 1),
(32, 'mnn_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image01_01_8ab798f047.jpg\", \"hash\": \"thumbnail_mnn_image01_01_8ab798f047\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image01_01.jpg\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'mnn_image01_01_8ab798f047', '.jpg', 'image/jpeg', '25.40', '/uploads/mnn_image01_01_8ab798f047.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:15.304000', '2023-05-08 17:19:15.304000', 1, 1),
(33, 'mnn_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image02_cdd7cf7746.jpg\", \"hash\": \"thumbnail_mnn_image02_cdd7cf7746\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image02.jpg\", \"path\": null, \"size\": 1.77, \"width\": 156, \"height\": 156}}', 'mnn_image02_cdd7cf7746', '.jpg', 'image/jpeg', '2.77', '/uploads/mnn_image02_cdd7cf7746.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:16.037000', '2023-05-08 17:19:16.037000', 1, 1),
(34, 'mnn_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image04_32d91648ca.jpg\", \"hash\": \"thumbnail_mnn_image04_32d91648ca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image04.jpg\", \"path\": null, \"size\": 3.59, \"width\": 156, \"height\": 156}}', 'mnn_image04_32d91648ca', '.jpg', 'image/jpeg', '18.85', '/uploads/mnn_image04_32d91648ca.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:16.198000', '2023-05-08 17:19:16.198000', 1, 1),
(35, 'mnn_image05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image05_d0aeb0a079.jpg\", \"hash\": \"thumbnail_mnn_image05_d0aeb0a079\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image05.jpg\", \"path\": null, \"size\": 2.31, \"width\": 156, \"height\": 156}}', 'mnn_image05_d0aeb0a079', '.jpg', 'image/jpeg', '14.49', '/uploads/mnn_image05_d0aeb0a079.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:16.200000', '2023-05-08 17:19:16.200000', 1, 1),
(36, 'mnn_image06.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image06_d26afd8e59.jpg\", \"hash\": \"thumbnail_mnn_image06_d26afd8e59\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image06.jpg\", \"path\": null, \"size\": 3.5, \"width\": 156, \"height\": 156}}', 'mnn_image06_d26afd8e59', '.jpg', 'image/jpeg', '5.51', '/uploads/mnn_image06_d26afd8e59.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:16.209000', '2023-05-08 17:19:16.209000', 1, 1),
(37, 'mnn_image03.jpg', NULL, NULL, 471, 453, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image03_e80023d9f3.jpg\", \"hash\": \"thumbnail_mnn_image03_e80023d9f3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image03.jpg\", \"path\": null, \"size\": 20.16, \"width\": 162, \"height\": 156}}', 'mnn_image03_e80023d9f3', '.jpg', 'image/jpeg', '23.54', '/uploads/mnn_image03_e80023d9f3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:16.360000', '2023-05-08 17:19:16.360000', 1, 1),
(38, 'mnn_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image03_01_8b9e3ecad7.jpg\", \"hash\": \"thumbnail_mnn_image03_01_8b9e3ecad7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image03_01.jpg\", \"path\": null, \"size\": 60.34, \"width\": 156, \"height\": 156}}', 'mnn_image03_01_8b9e3ecad7', '.jpg', 'image/jpeg', '169.97', '/uploads/mnn_image03_01_8b9e3ecad7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:17.325000', '2023-05-08 17:19:17.325000', 1, 1),
(39, 'mnn_image08.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image08_4badd11cdc.jpg\", \"hash\": \"thumbnail_mnn_image08_4badd11cdc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image08.jpg\", \"path\": null, \"size\": 1.77, \"width\": 156, \"height\": 156}}', 'mnn_image08_4badd11cdc', '.jpg', 'image/jpeg', '2.77', '/uploads/mnn_image08_4badd11cdc.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:17.531000', '2023-05-08 17:19:17.531000', 1, 1),
(40, 'mnn_image09.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image09_59ecd34a1b.jpg\", \"hash\": \"thumbnail_mnn_image09_59ecd34a1b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image09.jpg\", \"path\": null, \"size\": 1.48, \"width\": 156, \"height\": 156}}', 'mnn_image09_59ecd34a1b', '.jpg', 'image/jpeg', '2.20', '/uploads/mnn_image09_59ecd34a1b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:17.537000', '2023-05-08 17:19:17.537000', 1, 1),
(41, 'mnn_image07.jpg', NULL, NULL, 471, 493, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image07_7c30bac593.jpg\", \"hash\": \"thumbnail_mnn_image07_7c30bac593\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image07.jpg\", \"path\": null, \"size\": 9.49, \"width\": 149, \"height\": 156}}', 'mnn_image07_7c30bac593', '.jpg', 'image/jpeg', '19.29', '/uploads/mnn_image07_7c30bac593.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:17.541000', '2023-05-08 17:19:17.541000', 1, 1),
(42, 'mnn_image10.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image10_b4fdf822b7.jpg\", \"hash\": \"thumbnail_mnn_image10_b4fdf822b7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image10.jpg\", \"path\": null, \"size\": 1.98, \"width\": 156, \"height\": 156}}', 'mnn_image10_b4fdf822b7', '.jpg', 'image/jpeg', '10.10', '/uploads/mnn_image10_b4fdf822b7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:17.556000', '2023-05-08 17:19:17.556000', 1, 1),
(43, 'mnn_image11.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image11_3eb2732cb4.jpg\", \"hash\": \"thumbnail_mnn_image11_3eb2732cb4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image11.jpg\", \"path\": null, \"size\": 2.68, \"width\": 156, \"height\": 156}}', 'mnn_image11_3eb2732cb4', '.jpg', 'image/jpeg', '3.90', '/uploads/mnn_image11_3eb2732cb4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:17.721000', '2023-05-08 17:19:17.721000', 1, 1),
(44, 'mnn_image10_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image10_01_ded899044e.jpg\", \"hash\": \"thumbnail_mnn_image10_01_ded899044e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image10_01.jpg\", \"path\": null, \"size\": 25.36, \"width\": 156, \"height\": 156}}', 'mnn_image10_01_ded899044e', '.jpg', 'image/jpeg', '49.01', '/uploads/mnn_image10_01_ded899044e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:17.752000', '2023-05-08 17:19:17.752000', 1, 1),
(45, 'mnn_image12.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image12_5f07618c48.jpg\", \"hash\": \"thumbnail_mnn_image12_5f07618c48\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image12.jpg\", \"path\": null, \"size\": 2.31, \"width\": 156, \"height\": 156}}', 'mnn_image12_5f07618c48', '.jpg', 'image/jpeg', '14.49', '/uploads/mnn_image12_5f07618c48.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:18.561000', '2023-05-08 17:19:18.561000', 1, 1),
(46, 'mnr_image02.jpg', NULL, NULL, 395, 560, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_mnr_image02_f58883da5c.jpg\", \"hash\": \"small_mnr_image02_f58883da5c\", \"mime\": \"image/jpeg\", \"name\": \"small_mnr_image02.jpg\", \"path\": null, \"size\": 54.32, \"width\": 353, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image02_f58883da5c.jpg\", \"hash\": \"thumbnail_mnr_image02_f58883da5c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image02.jpg\", \"path\": null, \"size\": 7.78, \"width\": 110, \"height\": 156}}', 'mnr_image02_f58883da5c', '.jpg', 'image/jpeg', '16.85', '/uploads/mnr_image02_f58883da5c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:19.767000', '2023-05-08 17:19:19.767000', 1, 1),
(47, 'mnr_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image01_bdfb5d21b9.jpg\", \"hash\": \"thumbnail_mnr_image01_bdfb5d21b9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image01.jpg\", \"path\": null, \"size\": 22.35, \"width\": 156, \"height\": 156}}', 'mnr_image01_bdfb5d21b9', '.jpg', 'image/jpeg', '25.40', '/uploads/mnr_image01_bdfb5d21b9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:19.929000', '2023-05-08 17:19:19.929000', 1, 1),
(48, 'mnr_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image03_2b24fa14f1.jpg\", \"hash\": \"thumbnail_mnr_image03_2b24fa14f1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image03.jpg\", \"path\": null, \"size\": 2.69, \"width\": 156, \"height\": 156}}', 'mnr_image03_2b24fa14f1', '.jpg', 'image/jpeg', '13.99', '/uploads/mnr_image03_2b24fa14f1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:20.444000', '2023-05-08 17:19:20.444000', 1, 1),
(49, 'mnn_image12_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnn_image12_01_00b5bb26bb.jpg\", \"hash\": \"thumbnail_mnn_image12_01_00b5bb26bb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnn_image12_01.jpg\", \"path\": null, \"size\": 51.01, \"width\": 156, \"height\": 156}}', 'mnn_image12_01_00b5bb26bb', '.jpg', 'image/jpeg', '115.18', '/uploads/mnn_image12_01_00b5bb26bb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:20.447000', '2023-05-08 17:19:20.447000', 1, 1),
(50, 'mnr_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image04_354e7dae98.jpg\", \"hash\": \"thumbnail_mnr_image04_354e7dae98\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image04.jpg\", \"path\": null, \"size\": 3.03, \"width\": 156, \"height\": 156}}', 'mnr_image04_354e7dae98', '.jpg', 'image/jpeg', '4.57', '/uploads/mnr_image04_354e7dae98.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:20.662000', '2023-05-08 17:19:20.662000', 1, 1),
(51, 'mnr_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image05_cdf22cc368.jpg\", \"hash\": \"thumbnail_mnr_image05_cdf22cc368\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image05.jpg\", \"path\": null, \"size\": 3.01, \"width\": 156, \"height\": 156}}', 'mnr_image05_cdf22cc368', '.jpg', 'image/jpeg', '4.52', '/uploads/mnr_image05_cdf22cc368.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:20.685000', '2023-05-08 17:19:20.685000', 1, 1),
(52, 'mnr_image02_01.jpg', NULL, NULL, 355, 800, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_mnr_image02_01_654a6b8311.jpg\", \"hash\": \"small_mnr_image02_01_654a6b8311\", \"mime\": \"image/jpeg\", \"name\": \"small_mnr_image02_01.jpg\", \"path\": null, \"size\": 64.72, \"width\": 222, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_mnr_image02_01_654a6b8311.jpg\", \"hash\": \"medium_mnr_image02_01_654a6b8311\", \"mime\": \"image/jpeg\", \"name\": \"medium_mnr_image02_01.jpg\", \"path\": null, \"size\": 128.58, \"width\": 333, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image02_01_654a6b8311.jpg\", \"hash\": \"thumbnail_mnr_image02_01_654a6b8311\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image02_01.jpg\", \"path\": null, \"size\": 9.83, \"width\": 69, \"height\": 156}}', 'mnr_image02_01_654a6b8311', '.jpg', 'image/jpeg', '35.99', '/uploads/mnr_image02_01_654a6b8311.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:21.134000', '2023-05-08 17:19:21.134000', 1, 1),
(53, 'mnr_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image01_01_e208d47ba8.jpg\", \"hash\": \"thumbnail_mnr_image01_01_e208d47ba8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image01_01.jpg\", \"path\": null, \"size\": 56.45, \"width\": 156, \"height\": 156}}', 'mnr_image01_01_e208d47ba8', '.jpg', 'image/jpeg', '109.04', '/uploads/mnr_image01_01_e208d47ba8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:21.143000', '2023-05-08 17:19:21.143000', 1, 1),
(54, 'mnr_image06.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mnr_image06_86d979a8ef.jpg\", \"hash\": \"thumbnail_mnr_image06_86d979a8ef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mnr_image06.jpg\", \"path\": null, \"size\": 2.83, \"width\": 156, \"height\": 156}}', 'mnr_image06_86d979a8ef', '.jpg', 'image/jpeg', '4.19', '/uploads/mnr_image06_86d979a8ef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:21.373000', '2023-05-08 17:19:21.373000', 1, 1),
(55, 'my-pham.jpg', NULL, NULL, 730, 519, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_my_pham_0d5bb13a87.jpg\", \"hash\": \"small_my_pham_0d5bb13a87\", \"mime\": \"image/jpeg\", \"name\": \"small_my-pham.jpg\", \"path\": null, \"size\": 45.28, \"width\": 500, \"height\": 355}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_my_pham_0d5bb13a87.jpg\", \"hash\": \"thumbnail_my_pham_0d5bb13a87\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_my-pham.jpg\", \"path\": null, \"size\": 10.92, \"width\": 220, \"height\": 156}}', 'my_pham_0d5bb13a87', '.jpg', 'image/jpeg', '81.41', '/uploads/my_pham_0d5bb13a87.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:21.564000', '2023-05-08 17:19:21.564000', 1, 1),
(56, 'ncb_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image01_4c068958d1.jpg\", \"hash\": \"thumbnail_ncb_image01_4c068958d1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image01.jpg\", \"path\": null, \"size\": 1.58, \"width\": 156, \"height\": 156}}', 'ncb_image01_4c068958d1', '.jpg', 'image/jpeg', '2.37', '/uploads/ncb_image01_4c068958d1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:21.587000', '2023-05-08 17:19:21.587000', 1, 1),
(57, 'ncb_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image02_1a5708c8d9.jpg\", \"hash\": \"thumbnail_ncb_image02_1a5708c8d9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image02.jpg\", \"path\": null, \"size\": 1.88, \"width\": 156, \"height\": 156}}', 'ncb_image02_1a5708c8d9', '.jpg', 'image/jpeg', '2.77', '/uploads/ncb_image02_1a5708c8d9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:21.641000', '2023-05-08 17:19:21.641000', 1, 1),
(58, 'ncb_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image03_c3dd130792.jpg\", \"hash\": \"thumbnail_ncb_image03_c3dd130792\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image03.jpg\", \"path\": null, \"size\": 8.32, \"width\": 156, \"height\": 156}}', 'ncb_image03_c3dd130792', '.jpg', 'image/jpeg', '12.16', '/uploads/ncb_image03_c3dd130792.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:22.056000', '2023-05-08 17:19:22.056000', 1, 1),
(59, 'ncb_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image04_e298a60724.jpg\", \"hash\": \"thumbnail_ncb_image04_e298a60724\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image04.jpg\", \"path\": null, \"size\": 10.96, \"width\": 156, \"height\": 156}}', 'ncb_image04_e298a60724', '.jpg', 'image/jpeg', '4.46', '/uploads/ncb_image04_e298a60724.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:22.351000', '2023-05-08 17:19:22.351000', 1, 1),
(60, 'ncb_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image07_3252467f54.jpg\", \"hash\": \"thumbnail_ncb_image07_3252467f54\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image07.jpg\", \"path\": null, \"size\": 1.33, \"width\": 156, \"height\": 156}}', 'ncb_image07_3252467f54', '.jpg', 'image/jpeg', '2.05', '/uploads/ncb_image07_3252467f54.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:22.452000', '2023-05-08 17:19:22.452000', 1, 1),
(61, 'ncb_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image05_d0897e9e5d.jpg\", \"hash\": \"thumbnail_ncb_image05_d0897e9e5d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image05.jpg\", \"path\": null, \"size\": 1.59, \"width\": 156, \"height\": 156}}', 'ncb_image05_d0897e9e5d', '.jpg', 'image/jpeg', '2.17', '/uploads/ncb_image05_d0897e9e5d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:22.457000', '2023-05-08 17:19:22.457000', 1, 1),
(62, 'ncb_image08.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image08_35e5bde844.jpg\", \"hash\": \"thumbnail_ncb_image08_35e5bde844\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image08.jpg\", \"path\": null, \"size\": 1.8, \"width\": 156, \"height\": 156}}', 'ncb_image08_35e5bde844', '.jpg', 'image/jpeg', '2.68', '/uploads/ncb_image08_35e5bde844.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:23.046000', '2023-05-08 17:19:23.046000', 1, 1),
(63, 'ncb_image09.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image09_e2a83fe2d5.jpg\", \"hash\": \"thumbnail_ncb_image09_e2a83fe2d5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image09.jpg\", \"path\": null, \"size\": 8.12, \"width\": 156, \"height\": 156}}', 'ncb_image09_e2a83fe2d5', '.jpg', 'image/jpeg', '2.84', '/uploads/ncb_image09_e2a83fe2d5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:23.373000', '2023-05-08 17:19:23.373000', 1, 1),
(64, 'ncb_image10.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image10_995c4c93ab.jpg\", \"hash\": \"thumbnail_ncb_image10_995c4c93ab\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image10.jpg\", \"path\": null, \"size\": 6.89, \"width\": 156, \"height\": 156}}', 'ncb_image10_995c4c93ab', '.jpg', 'image/jpeg', '3.01', '/uploads/ncb_image10_995c4c93ab.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:23.442000', '2023-05-08 17:19:23.442000', 1, 1),
(65, 'ncb_image11.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image11_519af00ad7.jpg\", \"hash\": \"thumbnail_ncb_image11_519af00ad7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image11.jpg\", \"path\": null, \"size\": 1.62, \"width\": 156, \"height\": 156}}', 'ncb_image11_519af00ad7', '.jpg', 'image/jpeg', '2.27', '/uploads/ncb_image11_519af00ad7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:23.450000', '2023-05-08 17:19:23.450000', 1, 1),
(66, 'ncb_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image03_01_8fbc193e52.jpg\", \"hash\": \"thumbnail_ncb_image03_01_8fbc193e52\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image03_01.jpg\", \"path\": null, \"size\": 51.46, \"width\": 156, \"height\": 156}}', 'ncb_image03_01_8fbc193e52', '.jpg', 'image/jpeg', '115.14', '/uploads/ncb_image03_01_8fbc193e52.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:23.907000', '2023-05-08 17:19:23.907000', 1, 1),
(67, 'ncb_image12.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image12_3c7170a57b.jpg\", \"hash\": \"thumbnail_ncb_image12_3c7170a57b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image12.jpg\", \"path\": null, \"size\": 2.18, \"width\": 156, \"height\": 156}}', 'ncb_image12_3c7170a57b', '.jpg', 'image/jpeg', '3.29', '/uploads/ncb_image12_3c7170a57b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:23.940000', '2023-05-08 17:19:23.940000', 1, 1),
(68, 'ncb_image13.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image13_84e0f6f780.jpg\", \"hash\": \"thumbnail_ncb_image13_84e0f6f780\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image13.jpg\", \"path\": null, \"size\": 2.13, \"width\": 156, \"height\": 156}}', 'ncb_image13_84e0f6f780', '.jpg', 'image/jpeg', '3.23', '/uploads/ncb_image13_84e0f6f780.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:24.237000', '2023-05-08 17:19:24.237000', 1, 1),
(69, 'ncb_image15.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image15_efde8166f3.jpg\", \"hash\": \"thumbnail_ncb_image15_efde8166f3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image15.jpg\", \"path\": null, \"size\": 2.06, \"width\": 156, \"height\": 156}}', 'ncb_image15_efde8166f3', '.jpg', 'image/jpeg', '3.04', '/uploads/ncb_image15_efde8166f3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:24.274000', '2023-05-08 17:19:24.274000', 1, 1),
(70, 'ncb_image14.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image14_d7273a9ebc.jpg\", \"hash\": \"thumbnail_ncb_image14_d7273a9ebc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image14.jpg\", \"path\": null, \"size\": 1.57, \"width\": 156, \"height\": 156}}', 'ncb_image14_d7273a9ebc', '.jpg', 'image/jpeg', '7.21', '/uploads/ncb_image14_d7273a9ebc.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:24.285000', '2023-05-08 17:19:24.285000', 1, 1),
(71, 'ncb_image06.jpg', NULL, NULL, 3000, 3000, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_ncb_image06_65f27d9ba1.jpg\", \"hash\": \"large_ncb_image06_65f27d9ba1\", \"mime\": \"image/jpeg\", \"name\": \"large_ncb_image06.jpg\", \"path\": null, \"size\": 31.23, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_ncb_image06_65f27d9ba1.jpg\", \"hash\": \"small_ncb_image06_65f27d9ba1\", \"mime\": \"image/jpeg\", \"name\": \"small_ncb_image06.jpg\", \"path\": null, \"size\": 9.86, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_ncb_image06_65f27d9ba1.jpg\", \"hash\": \"medium_ncb_image06_65f27d9ba1\", \"mime\": \"image/jpeg\", \"name\": \"medium_ncb_image06.jpg\", \"path\": null, \"size\": 19.65, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image06_65f27d9ba1.jpg\", \"hash\": \"thumbnail_ncb_image06_65f27d9ba1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image06.jpg\", \"path\": null, \"size\": 1.66, \"width\": 156, \"height\": 156}}', 'ncb_image06_65f27d9ba1', '.jpg', 'image/jpeg', '228.13', '/uploads/ncb_image06_65f27d9ba1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:24.303000', '2023-05-08 17:19:24.303000', 1, 1),
(72, 'ncb_image16.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image16_f9a336f9eb.jpg\", \"hash\": \"thumbnail_ncb_image16_f9a336f9eb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image16.jpg\", \"path\": null, \"size\": 1.58, \"width\": 156, \"height\": 156}}', 'ncb_image16_f9a336f9eb', '.jpg', 'image/jpeg', '7.71', '/uploads/ncb_image16_f9a336f9eb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:25.169000', '2023-05-08 17:19:25.169000', 1, 1),
(73, 'ncb_image16_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image16_01_6a46b0fdf8.jpg\", \"hash\": \"thumbnail_ncb_image16_01_6a46b0fdf8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image16_01.jpg\", \"path\": null, \"size\": 2.7, \"width\": 156, \"height\": 156}}', 'ncb_image16_01_6a46b0fdf8', '.jpg', 'image/jpeg', '14.51', '/uploads/ncb_image16_01_6a46b0fdf8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:25.215000', '2023-05-08 17:19:25.215000', 1, 1),
(74, 'ncb_image17.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image17_362db214d5.jpg\", \"hash\": \"thumbnail_ncb_image17_362db214d5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image17.jpg\", \"path\": null, \"size\": 1.99, \"width\": 156, \"height\": 156}}', 'ncb_image17_362db214d5', '.jpg', 'image/jpeg', '10.13', '/uploads/ncb_image17_362db214d5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:25.219000', '2023-05-08 17:19:25.219000', 1, 1),
(75, 'ncb_image19.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image19_c0dde23ebb.jpg\", \"hash\": \"thumbnail_ncb_image19_c0dde23ebb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image19.jpg\", \"path\": null, \"size\": 2.11, \"width\": 156, \"height\": 156}}', 'ncb_image19_c0dde23ebb', '.jpg', 'image/jpeg', '12.16', '/uploads/ncb_image19_c0dde23ebb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:25.289000', '2023-05-08 17:19:25.289000', 1, 1),
(76, 'ncb_image18.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image18_78cab71d92.jpg\", \"hash\": \"thumbnail_ncb_image18_78cab71d92\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image18.jpg\", \"path\": null, \"size\": 1.92, \"width\": 156, \"height\": 156}}', 'ncb_image18_78cab71d92', '.jpg', 'image/jpeg', '2.90', '/uploads/ncb_image18_78cab71d92.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:25.291000', '2023-05-08 17:19:25.291000', 1, 1),
(77, 'ncb_image19_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image19_01_7ec403317d.jpg\", \"hash\": \"thumbnail_ncb_image19_01_7ec403317d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image19_01.jpg\", \"path\": null, \"size\": 5.95, \"width\": 156, \"height\": 156}}', 'ncb_image19_01_7ec403317d', '.jpg', 'image/jpeg', '34.28', '/uploads/ncb_image19_01_7ec403317d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:25.295000', '2023-05-08 17:19:25.295000', 1, 1),
(78, 'ncb_image21.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image21_b80889c275.jpg\", \"hash\": \"thumbnail_ncb_image21_b80889c275\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image21.jpg\", \"path\": null, \"size\": 1.55, \"width\": 156, \"height\": 156}}', 'ncb_image21_b80889c275', '.jpg', 'image/jpeg', '2.54', '/uploads/ncb_image21_b80889c275.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:25.959000', '2023-05-08 17:19:25.959000', 1, 1),
(79, 'ncb_image23.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image23_c3833e6d96.jpg\", \"hash\": \"thumbnail_ncb_image23_c3833e6d96\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image23.jpg\", \"path\": null, \"size\": 1.78, \"width\": 156, \"height\": 156}}', 'ncb_image23_c3833e6d96', '.jpg', 'image/jpeg', '2.75', '/uploads/ncb_image23_c3833e6d96.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:26.048000', '2023-05-08 17:19:26.048000', 1, 1),
(80, 'ncb_image22.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image22_c94c25dd5c.jpg\", \"hash\": \"thumbnail_ncb_image22_c94c25dd5c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image22.jpg\", \"path\": null, \"size\": 5.9, \"width\": 156, \"height\": 156}}', 'ncb_image22_c94c25dd5c', '.jpg', 'image/jpeg', '2.25', '/uploads/ncb_image22_c94c25dd5c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:26.273000', '2023-05-08 17:19:26.273000', 1, 1),
(81, 'ncb_image24.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image24_12b947ebb0.jpg\", \"hash\": \"thumbnail_ncb_image24_12b947ebb0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image24.jpg\", \"path\": null, \"size\": 1.93, \"width\": 156, \"height\": 156}}', 'ncb_image24_12b947ebb0', '.jpg', 'image/jpeg', '3.00', '/uploads/ncb_image24_12b947ebb0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:26.279000', '2023-05-08 17:19:26.279000', 1, 1),
(82, 'ncb_image20.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image20_80ad0d2317.jpg\", \"hash\": \"thumbnail_ncb_image20_80ad0d2317\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image20.jpg\", \"path\": null, \"size\": 13.34, \"width\": 156, \"height\": 156}}', 'ncb_image20_80ad0d2317', '.jpg', 'image/jpeg', '8.16', '/uploads/ncb_image20_80ad0d2317.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:26.315000', '2023-05-08 17:19:26.315000', 1, 1),
(83, 'ncb_image25.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image25_49434c86cd.jpg\", \"hash\": \"thumbnail_ncb_image25_49434c86cd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image25.jpg\", \"path\": null, \"size\": 14.01, \"width\": 156, \"height\": 156}}', 'ncb_image25_49434c86cd', '.jpg', 'image/jpeg', '5.78', '/uploads/ncb_image25_49434c86cd.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:26.370000', '2023-05-08 17:19:26.370000', 1, 1),
(84, 'ncb_image26.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image26_74ff587096.jpg\", \"hash\": \"thumbnail_ncb_image26_74ff587096\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image26.jpg\", \"path\": null, \"size\": 2.2, \"width\": 156, \"height\": 156}}', 'ncb_image26_74ff587096', '.jpg', 'image/jpeg', '3.26', '/uploads/ncb_image26_74ff587096.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:26.874000', '2023-05-08 17:19:26.874000', 1, 1),
(85, 'ncb_image28.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image28_b021d8cc09.jpg\", \"hash\": \"thumbnail_ncb_image28_b021d8cc09\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image28.jpg\", \"path\": null, \"size\": 1.52, \"width\": 156, \"height\": 156}}', 'ncb_image28_b021d8cc09', '.jpg', 'image/jpeg', '2.13', '/uploads/ncb_image28_b021d8cc09.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:26.902000', '2023-05-08 17:19:26.902000', 1, 1),
(86, 'ncb_image29.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image29_2fc656dc6c.jpg\", \"hash\": \"thumbnail_ncb_image29_2fc656dc6c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image29.jpg\", \"path\": null, \"size\": 1.27, \"width\": 156, \"height\": 156}}', 'ncb_image29_2fc656dc6c', '.jpg', 'image/jpeg', '1.81', '/uploads/ncb_image29_2fc656dc6c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.036000', '2023-05-08 17:19:27.036000', 1, 1),
(87, 'ncb_image30.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image30_fd6dfb6042.jpg\", \"hash\": \"thumbnail_ncb_image30_fd6dfb6042\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image30.jpg\", \"path\": null, \"size\": 1.72, \"width\": 156, \"height\": 156}}', 'ncb_image30_fd6dfb6042', '.jpg', 'image/jpeg', '2.65', '/uploads/ncb_image30_fd6dfb6042.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.037000', '2023-05-08 17:19:27.037000', 1, 1),
(88, 'ncb_image31.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image31_7829a12ad6.jpg\", \"hash\": \"thumbnail_ncb_image31_7829a12ad6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image31.jpg\", \"path\": null, \"size\": 1.33, \"width\": 156, \"height\": 156}}', 'ncb_image31_7829a12ad6', '.jpg', 'image/jpeg', '1.93', '/uploads/ncb_image31_7829a12ad6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.041000', '2023-05-08 17:19:27.041000', 1, 1),
(89, 'ncb_image33.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image33_e5cb5e01c7.jpg\", \"hash\": \"thumbnail_ncb_image33_e5cb5e01c7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image33.jpg\", \"path\": null, \"size\": 2.73, \"width\": 156, \"height\": 156}}', 'ncb_image33_e5cb5e01c7', '.jpg', 'image/jpeg', '4.34', '/uploads/ncb_image33_e5cb5e01c7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.055000', '2023-05-08 17:19:27.055000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(90, 'ntaytrang_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image01_9db507c83a.jpg\", \"hash\": \"thumbnail_ntaytrang_image01_9db507c83a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image01.jpg\", \"path\": null, \"size\": 2.03, \"width\": 156, \"height\": 156}}', 'ntaytrang_image01_9db507c83a', '.jpg', 'image/jpeg', '10.67', '/uploads/ntaytrang_image01_9db507c83a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.674000', '2023-05-08 17:19:27.674000', 1, 1),
(91, 'ntaytrang_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image02_9dd5e86e16.jpg\", \"hash\": \"thumbnail_ntaytrang_image02_9dd5e86e16\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image02.jpg\", \"path\": null, \"size\": 1.35, \"width\": 156, \"height\": 156}}', 'ntaytrang_image02_9dd5e86e16', '.jpg', 'image/jpeg', '2.04', '/uploads/ntaytrang_image02_9dd5e86e16.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.936000', '2023-05-08 17:19:27.936000', 1, 1),
(92, 'ntaytrang_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image01_01_00044194b6.jpg\", \"hash\": \"thumbnail_ntaytrang_image01_01_00044194b6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image01_01.jpg\", \"path\": null, \"size\": 4.57, \"width\": 156, \"height\": 156}}', 'ntaytrang_image01_01_00044194b6', '.jpg', 'image/jpeg', '31.66', '/uploads/ntaytrang_image01_01_00044194b6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.941000', '2023-05-08 17:19:27.941000', 1, 1),
(93, 'ntaytrang_image03.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image03_26447d77f6.jpg\", \"hash\": \"thumbnail_ntaytrang_image03_26447d77f6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image03.jpg\", \"path\": null, \"size\": 1.73, \"width\": 156, \"height\": 156}}', 'ntaytrang_image03_26447d77f6', '.jpg', 'image/jpeg', '2.49', '/uploads/ntaytrang_image03_26447d77f6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:27.966000', '2023-05-08 17:19:27.966000', 1, 1),
(94, 'ntaytrang_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image04_ca9962e494.jpg\", \"hash\": \"thumbnail_ntaytrang_image04_ca9962e494\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image04.jpg\", \"path\": null, \"size\": 2.4, \"width\": 156, \"height\": 156}}', 'ntaytrang_image04_ca9962e494', '.jpg', 'image/jpeg', '3.79', '/uploads/ntaytrang_image04_ca9962e494.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:28.011000', '2023-05-08 17:19:28.011000', 1, 1),
(95, 'ncb_image32.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ncb_image32_081259d288.jpg\", \"hash\": \"thumbnail_ncb_image32_081259d288\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ncb_image32.jpg\", \"path\": null, \"size\": 14.57, \"width\": 156, \"height\": 156}}', 'ncb_image32_081259d288', '.jpg', 'image/jpeg', '6.24', '/uploads/ncb_image32_081259d288.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:28.121000', '2023-05-08 17:19:28.121000', 1, 1),
(96, 'ntaytrang_image05.jpg', NULL, NULL, 345, 383, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image05_99984fbf15.jpg\", \"hash\": \"thumbnail_ntaytrang_image05_99984fbf15\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image05.jpg\", \"path\": null, \"size\": 2.22, \"width\": 141, \"height\": 156}}', 'ntaytrang_image05_99984fbf15', '.jpg', 'image/jpeg', '7.82', '/uploads/ntaytrang_image05_99984fbf15.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:28.204000', '2023-05-08 17:19:28.204000', 1, 1),
(97, 'ntaytrang_image06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image06_b22793919a.jpg\", \"hash\": \"thumbnail_ntaytrang_image06_b22793919a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image06.jpg\", \"path\": null, \"size\": 1.38, \"width\": 156, \"height\": 156}}', 'ntaytrang_image06_b22793919a', '.jpg', 'image/jpeg', '7.27', '/uploads/ntaytrang_image06_b22793919a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:28.791000', '2023-05-08 17:19:28.791000', 1, 1),
(98, 'ntaytrang_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image07_7900046e90.jpg\", \"hash\": \"thumbnail_ntaytrang_image07_7900046e90\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image07.jpg\", \"path\": null, \"size\": 1.36, \"width\": 156, \"height\": 156}}', 'ntaytrang_image07_7900046e90', '.jpg', 'image/jpeg', '1.84', '/uploads/ntaytrang_image07_7900046e90.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:28.942000', '2023-05-08 17:19:28.942000', 1, 1),
(99, 'ntaytrang_image11.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image11_c703f15ea1.jpg\", \"hash\": \"thumbnail_ntaytrang_image11_c703f15ea1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image11.jpg\", \"path\": null, \"size\": 2.53, \"width\": 156, \"height\": 156}}', 'ntaytrang_image11_c703f15ea1', '.jpg', 'image/jpeg', '12.92', '/uploads/ntaytrang_image11_c703f15ea1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:28.994000', '2023-05-08 17:19:28.994000', 1, 1),
(100, 'ntaytrang_image10.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image10_dbb50ac2d9.jpg\", \"hash\": \"thumbnail_ntaytrang_image10_dbb50ac2d9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image10.jpg\", \"path\": null, \"size\": 1.8, \"width\": 156, \"height\": 156}}', 'ntaytrang_image10_dbb50ac2d9', '.jpg', 'image/jpeg', '2.66', '/uploads/ntaytrang_image10_dbb50ac2d9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:29.043000', '2023-05-08 17:19:29.043000', 1, 1),
(101, 'ntaytrang_image13.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image13_04f250f601.jpg\", \"hash\": \"thumbnail_ntaytrang_image13_04f250f601\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image13.jpg\", \"path\": null, \"size\": 2.07, \"width\": 156, \"height\": 156}}', 'ntaytrang_image13_04f250f601', '.jpg', 'image/jpeg', '3.13', '/uploads/ntaytrang_image13_04f250f601.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:29.079000', '2023-05-08 17:19:29.079000', 1, 1),
(102, 'ntaytrang_image12.jpg', NULL, NULL, 442, 442, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image12_28a465baff.jpg\", \"hash\": \"thumbnail_ntaytrang_image12_28a465baff\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image12.jpg\", \"path\": null, \"size\": 1.89, \"width\": 156, \"height\": 156}}', 'ntaytrang_image12_28a465baff', '.jpg', 'image/jpeg', '8.90', '/uploads/ntaytrang_image12_28a465baff.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:29.154000', '2023-05-08 17:19:29.154000', 1, 1),
(103, 'ntaytrang_image14.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image14_a7c004ad92.jpg\", \"hash\": \"thumbnail_ntaytrang_image14_a7c004ad92\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image14.jpg\", \"path\": null, \"size\": 10.8, \"width\": 156, \"height\": 156}}', 'ntaytrang_image14_a7c004ad92', '.jpg', 'image/jpeg', '16.68', '/uploads/ntaytrang_image14_a7c004ad92.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:29.998000', '2023-05-08 17:19:29.998000', 1, 1),
(104, 'ntaytrang_image15.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image15_930339aeb2.jpg\", \"hash\": \"thumbnail_ntaytrang_image15_930339aeb2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image15.jpg\", \"path\": null, \"size\": 1.95, \"width\": 156, \"height\": 156}}', 'ntaytrang_image15_930339aeb2', '.jpg', 'image/jpeg', '3.05', '/uploads/ntaytrang_image15_930339aeb2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:30.001000', '2023-05-08 17:19:30.001000', 1, 1),
(105, 'ntaytrang_image16.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image16_ca0df20b16.jpg\", \"hash\": \"thumbnail_ntaytrang_image16_ca0df20b16\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image16.jpg\", \"path\": null, \"size\": 2.06, \"width\": 156, \"height\": 156}}', 'ntaytrang_image16_ca0df20b16', '.jpg', 'image/jpeg', '2.95', '/uploads/ntaytrang_image16_ca0df20b16.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:30.004000', '2023-05-08 17:19:30.004000', 1, 1),
(106, 'ntaytrang_image17.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image17_04cb548a25.jpg\", \"hash\": \"thumbnail_ntaytrang_image17_04cb548a25\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image17.jpg\", \"path\": null, \"size\": 1.63, \"width\": 156, \"height\": 156}}', 'ntaytrang_image17_04cb548a25', '.jpg', 'image/jpeg', '2.34', '/uploads/ntaytrang_image17_04cb548a25.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:30.051000', '2023-05-08 17:19:30.051000', 1, 1),
(107, 'nuochoa_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image01_462ab70476.jpg\", \"hash\": \"thumbnail_nuochoa_image01_462ab70476\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image01.jpg\", \"path\": null, \"size\": 2.77, \"width\": 156, \"height\": 156}}', 'nuochoa_image01_462ab70476', '.jpg', 'image/jpeg', '4.37', '/uploads/nuochoa_image01_462ab70476.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:30.082000', '2023-05-08 17:19:30.082000', 1, 1),
(108, 'nuochoa_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image02_eeaa78d5a0.jpg\", \"hash\": \"thumbnail_nuochoa_image02_eeaa78d5a0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image02.jpg\", \"path\": null, \"size\": 2.59, \"width\": 156, \"height\": 156}}', 'nuochoa_image02_eeaa78d5a0', '.jpg', 'image/jpeg', '14.20', '/uploads/nuochoa_image02_eeaa78d5a0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:30.873000', '2023-05-08 17:19:30.873000', 1, 1),
(109, 'nuochoa_image05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image05_2542fa54a6.jpg\", \"hash\": \"thumbnail_nuochoa_image05_2542fa54a6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image05.jpg\", \"path\": null, \"size\": 2.33, \"width\": 156, \"height\": 156}}', 'nuochoa_image05_2542fa54a6', '.jpg', 'image/jpeg', '12.36', '/uploads/nuochoa_image05_2542fa54a6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.084000', '2023-05-08 17:19:31.084000', 1, 1),
(110, 'nuochoa_image04.png', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image04_b19e9e8016.png\", \"hash\": \"thumbnail_nuochoa_image04_b19e9e8016\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image04.png\", \"path\": null, \"size\": 16.63, \"width\": 156, \"height\": 156}}', 'nuochoa_image04_b19e9e8016', '.png', 'image/png', '22.26', '/uploads/nuochoa_image04_b19e9e8016.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.167000', '2023-05-08 17:19:31.167000', 1, 1),
(111, 'ntaytrang_image14_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ntaytrang_image14_01_49d4b80624.jpg\", \"hash\": \"thumbnail_ntaytrang_image14_01_49d4b80624\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ntaytrang_image14_01.jpg\", \"path\": null, \"size\": 47.21, \"width\": 156, \"height\": 156}}', 'ntaytrang_image14_01_49d4b80624', '.jpg', 'image/jpeg', '102.73', '/uploads/ntaytrang_image14_01_49d4b80624.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.308000', '2023-05-08 17:19:31.308000', 1, 1),
(112, 'nuochoa_image03.png', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image03_91d0859138.png\", \"hash\": \"thumbnail_nuochoa_image03_91d0859138\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image03.png\", \"path\": null, \"size\": 13.14, \"width\": 156, \"height\": 156}}', 'nuochoa_image03_91d0859138', '.png', 'image/png', '34.68', '/uploads/nuochoa_image03_91d0859138.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.316000', '2023-05-08 17:19:31.316000', 1, 1),
(113, 'nuochoa_image07.png', NULL, NULL, 480, 480, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image07_2ecbadd40b.png\", \"hash\": \"thumbnail_nuochoa_image07_2ecbadd40b\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image07.png\", \"path\": null, \"size\": 3.09, \"width\": 156, \"height\": 156}}', 'nuochoa_image07_2ecbadd40b', '.png', 'image/png', '22.56', '/uploads/nuochoa_image07_2ecbadd40b.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.392000', '2023-05-08 17:19:31.392000', 1, 1),
(114, 'nuochoa_image08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image08_468e1d797e.jpg\", \"hash\": \"thumbnail_nuochoa_image08_468e1d797e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image08.jpg\", \"path\": null, \"size\": 2.71, \"width\": 156, \"height\": 156}}', 'nuochoa_image08_468e1d797e', '.jpg', 'image/jpeg', '15.45', '/uploads/nuochoa_image08_468e1d797e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.671000', '2023-05-08 17:19:31.671000', 1, 1),
(115, 'nuochoa_image09.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image09_7b3da500a5.jpg\", \"hash\": \"thumbnail_nuochoa_image09_7b3da500a5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image09.jpg\", \"path\": null, \"size\": 2.53, \"width\": 156, \"height\": 156}}', 'nuochoa_image09_7b3da500a5', '.jpg', 'image/jpeg', '3.74', '/uploads/nuochoa_image09_7b3da500a5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.693000', '2023-05-08 17:19:31.693000', 1, 1),
(116, 'nuochoa_image06.png', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image06_9bfda74976.png\", \"hash\": \"thumbnail_nuochoa_image06_9bfda74976\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image06.png\", \"path\": null, \"size\": 24.36, \"width\": 156, \"height\": 156}}', 'nuochoa_image06_9bfda74976', '.png', 'image/png', '56.05', '/uploads/nuochoa_image06_9bfda74976.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.695000', '2023-05-08 17:19:31.695000', 1, 1),
(117, 'nuochoa_image10.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image10_f02d89544a.jpg\", \"hash\": \"thumbnail_nuochoa_image10_f02d89544a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image10.jpg\", \"path\": null, \"size\": 2.38, \"width\": 156, \"height\": 156}}', 'nuochoa_image10_f02d89544a', '.jpg', 'image/jpeg', '15.02', '/uploads/nuochoa_image10_f02d89544a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:31.929000', '2023-05-08 17:19:31.929000', 1, 1),
(118, 'nuochoa_image11.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image11_642dd2322a.jpg\", \"hash\": \"thumbnail_nuochoa_image11_642dd2322a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image11.jpg\", \"path\": null, \"size\": 1.47, \"width\": 156, \"height\": 156}}', 'nuochoa_image11_642dd2322a', '.jpg', 'image/jpeg', '2.15', '/uploads/nuochoa_image11_642dd2322a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:32.098000', '2023-05-08 17:19:32.098000', 1, 1),
(119, 'nuochoa_image12.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image12_aa5600749f.jpg\", \"hash\": \"thumbnail_nuochoa_image12_aa5600749f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image12.jpg\", \"path\": null, \"size\": 2.28, \"width\": 156, \"height\": 156}}', 'nuochoa_image12_aa5600749f', '.jpg', 'image/jpeg', '3.69', '/uploads/nuochoa_image12_aa5600749f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:33.074000', '2023-05-08 17:19:33.074000', 1, 1),
(120, 'nuochoa_image13.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image13_d7127ef753.jpg\", \"hash\": \"thumbnail_nuochoa_image13_d7127ef753\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image13.jpg\", \"path\": null, \"size\": 1.86, \"width\": 156, \"height\": 156}}', 'nuochoa_image13_d7127ef753', '.jpg', 'image/jpeg', '2.84', '/uploads/nuochoa_image13_d7127ef753.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:33.357000', '2023-05-08 17:19:33.357000', 1, 1),
(121, 'nuochoa_image15.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_nuochoa_image15_dfc7e96455.jpg\", \"hash\": \"small_nuochoa_image15_dfc7e96455\", \"mime\": \"image/jpeg\", \"name\": \"small_nuochoa_image15.jpg\", \"path\": null, \"size\": 19.95, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image15_dfc7e96455.jpg\", \"hash\": \"thumbnail_nuochoa_image15_dfc7e96455\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image15.jpg\", \"path\": null, \"size\": 2.89, \"width\": 156, \"height\": 156}}', 'nuochoa_image15_dfc7e96455', '.jpg', 'image/jpeg', '30.18', '/uploads/nuochoa_image15_dfc7e96455.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:33.483000', '2023-05-08 17:19:33.483000', 1, 1),
(122, 'nuochoa_image16.png', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_nuochoa_image16_0ba4a11ef8.png\", \"hash\": \"small_nuochoa_image16_0ba4a11ef8\", \"mime\": \"image/png\", \"name\": \"small_nuochoa_image16.png\", \"path\": null, \"size\": 21.46, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_nuochoa_image16_0ba4a11ef8.png\", \"hash\": \"medium_nuochoa_image16_0ba4a11ef8\", \"mime\": \"image/png\", \"name\": \"medium_nuochoa_image16.png\", \"path\": null, \"size\": 43.37, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image16_0ba4a11ef8.png\", \"hash\": \"thumbnail_nuochoa_image16_0ba4a11ef8\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image16.png\", \"path\": null, \"size\": 3.02, \"width\": 156, \"height\": 156}}', 'nuochoa_image16_0ba4a11ef8', '.png', 'image/png', '80.79', '/uploads/nuochoa_image16_0ba4a11ef8.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:33.685000', '2023-05-08 17:19:33.685000', 1, 1),
(123, 'nuochoa_image14.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_nuochoa_image14_92ab352c8d.jpg\", \"hash\": \"small_nuochoa_image14_92ab352c8d\", \"mime\": \"image/jpeg\", \"name\": \"small_nuochoa_image14.jpg\", \"path\": null, \"size\": 23.97, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_nuochoa_image14_92ab352c8d.jpg\", \"hash\": \"medium_nuochoa_image14_92ab352c8d\", \"mime\": \"image/jpeg\", \"name\": \"medium_nuochoa_image14.jpg\", \"path\": null, \"size\": 49.14, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image14_92ab352c8d.jpg\", \"hash\": \"thumbnail_nuochoa_image14_92ab352c8d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image14.jpg\", \"path\": null, \"size\": 3.37, \"width\": 156, \"height\": 156}}', 'nuochoa_image14_92ab352c8d', '.jpg', 'image/jpeg', '91.04', '/uploads/nuochoa_image14_92ab352c8d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:33.743000', '2023-05-08 17:19:33.743000', 1, 1),
(124, 'nuochoa_image17.png', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_nuochoa_image17_03c98bd8a0.png\", \"hash\": \"small_nuochoa_image17_03c98bd8a0\", \"mime\": \"image/png\", \"name\": \"small_nuochoa_image17.png\", \"path\": null, \"size\": 20.63, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_nuochoa_image17_03c98bd8a0.png\", \"hash\": \"medium_nuochoa_image17_03c98bd8a0\", \"mime\": \"image/png\", \"name\": \"medium_nuochoa_image17.png\", \"path\": null, \"size\": 42.18, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image17_03c98bd8a0.png\", \"hash\": \"thumbnail_nuochoa_image17_03c98bd8a0\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image17.png\", \"path\": null, \"size\": 3.15, \"width\": 156, \"height\": 156}}', 'nuochoa_image17_03c98bd8a0', '.png', 'image/png', '78.25', '/uploads/nuochoa_image17_03c98bd8a0.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:34.101000', '2023-05-08 17:19:34.101000', 1, 1),
(125, 'nuochoa_image18.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image18_d96bcd0d10.jpg\", \"hash\": \"thumbnail_nuochoa_image18_d96bcd0d10\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image18.jpg\", \"path\": null, \"size\": 4.57, \"width\": 156, \"height\": 156}}', 'nuochoa_image18_d96bcd0d10', '.jpg', 'image/jpeg', '26.20', '/uploads/nuochoa_image18_d96bcd0d10.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:34.428000', '2023-05-08 17:19:34.428000', 1, 1),
(126, 'nuochoa_image19.jpg', NULL, NULL, 650, 650, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_nuochoa_image19_12dacef51c.jpg\", \"hash\": \"small_nuochoa_image19_12dacef51c\", \"mime\": \"image/jpeg\", \"name\": \"small_nuochoa_image19.jpg\", \"path\": null, \"size\": 26.37, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image19_12dacef51c.jpg\", \"hash\": \"thumbnail_nuochoa_image19_12dacef51c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image19.jpg\", \"path\": null, \"size\": 4.89, \"width\": 156, \"height\": 156}}', 'nuochoa_image19_12dacef51c', '.jpg', 'image/jpeg', '32.22', '/uploads/nuochoa_image19_12dacef51c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:34.460000', '2023-05-08 17:19:34.460000', 1, 1),
(127, 'nuochoa_image20.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image20_61886481d8.jpg\", \"hash\": \"thumbnail_nuochoa_image20_61886481d8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image20.jpg\", \"path\": null, \"size\": 2.81, \"width\": 156, \"height\": 156}}', 'nuochoa_image20_61886481d8', '.jpg', 'image/jpeg', '15.79', '/uploads/nuochoa_image20_61886481d8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:34.507000', '2023-05-08 17:19:34.507000', 1, 1),
(128, 'nuochoa_image21.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image21_4dc992e7b3.jpg\", \"hash\": \"thumbnail_nuochoa_image21_4dc992e7b3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image21.jpg\", \"path\": null, \"size\": 6.99, \"width\": 156, \"height\": 156}}', 'nuochoa_image21_4dc992e7b3', '.jpg', 'image/jpeg', '40.56', '/uploads/nuochoa_image21_4dc992e7b3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:34.631000', '2023-05-08 17:19:34.631000', 1, 1),
(129, 'nuochoa_image22.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image22_d4ed6f76ef.jpg\", \"hash\": \"thumbnail_nuochoa_image22_d4ed6f76ef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image22.jpg\", \"path\": null, \"size\": 3.19, \"width\": 156, \"height\": 156}}', 'nuochoa_image22_d4ed6f76ef', '.jpg', 'image/jpeg', '17.25', '/uploads/nuochoa_image22_d4ed6f76ef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:34.632000', '2023-05-08 17:19:34.632000', 1, 1),
(130, 'nuochoa_image23.png', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image23_e043e67310.png\", \"hash\": \"thumbnail_nuochoa_image23_e043e67310\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image23.png\", \"path\": null, \"size\": 3.57, \"width\": 156, \"height\": 156}}', 'nuochoa_image23_e043e67310', '.png', 'image/png', '5.39', '/uploads/nuochoa_image23_e043e67310.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:34.719000', '2023-05-08 17:19:34.719000', 1, 1),
(131, 'nuochoa_image25.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuochoa_image25_7d69d8353e.jpg\", \"hash\": \"thumbnail_nuochoa_image25_7d69d8353e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuochoa_image25.jpg\", \"path\": null, \"size\": 2.91, \"width\": 156, \"height\": 156}}', 'nuochoa_image25_7d69d8353e', '.jpg', 'image/jpeg', '4.28', '/uploads/nuochoa_image25_7d69d8353e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:35.439000', '2023-05-08 17:19:35.439000', 1, 1),
(132, 'nuochoa_image24.png', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image24_b61793fe35.png\", \"hash\": \"thumbnail_nuochoa_image24_b61793fe35\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image24.png\", \"path\": null, \"size\": 4.35, \"width\": 156, \"height\": 156}}', 'nuochoa_image24_b61793fe35', '.png', 'image/png', '6.69', '/uploads/nuochoa_image24_b61793fe35.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:35.440000', '2023-05-08 17:19:35.440000', 1, 1),
(133, 'nuochoa_image26.png', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_nuochoa_image26_3a1d1a5389.png\", \"hash\": \"thumbnail_nuochoa_image26_3a1d1a5389\", \"mime\": \"image/png\", \"name\": \"thumbnail_nuochoa_image26.png\", \"path\": null, \"size\": 3.57, \"width\": 156, \"height\": 156}}', 'nuochoa_image26_3a1d1a5389', '.png', 'image/png', '5.39', '/uploads/nuochoa_image26_3a1d1a5389.png', NULL, 'local', NULL, '/2', '2023-05-08 17:19:35.512000', '2023-05-08 17:19:35.512000', 1, 1),
(134, 'nuocruatay_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuocruatay_image01_57d6c22acf.jpg\", \"hash\": \"thumbnail_nuocruatay_image01_57d6c22acf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuocruatay_image01.jpg\", \"path\": null, \"size\": 11.75, \"width\": 156, \"height\": 156}}', 'nuocruatay_image01_57d6c22acf', '.jpg', 'image/jpeg', '16.53', '/uploads/nuocruatay_image01_57d6c22acf.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:35.568000', '2023-05-08 17:19:35.568000', 1, 1),
(135, 'nuocruatay_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuocruatay_image02_4783bfe090.jpg\", \"hash\": \"thumbnail_nuocruatay_image02_4783bfe090\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuocruatay_image02.jpg\", \"path\": null, \"size\": 10.97, \"width\": 156, \"height\": 156}}', 'nuocruatay_image02_4783bfe090', '.jpg', 'image/jpeg', '20.52', '/uploads/nuocruatay_image02_4783bfe090.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:35.569000', '2023-05-08 17:19:35.569000', 1, 1),
(136, 'nuocruatay_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuocruatay_image03_dee03c60c3.jpg\", \"hash\": \"thumbnail_nuocruatay_image03_dee03c60c3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuocruatay_image03.jpg\", \"path\": null, \"size\": 1.21, \"width\": 156, \"height\": 156}}', 'nuocruatay_image03_dee03c60c3', '.jpg', 'image/jpeg', '6.53', '/uploads/nuocruatay_image03_dee03c60c3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:36.334000', '2023-05-08 17:19:36.334000', 1, 1),
(137, 'packege.jpg', NULL, NULL, 287, 245, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_packege_0cfeb47e78.jpg\", \"hash\": \"thumbnail_packege_0cfeb47e78\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_packege.jpg\", \"path\": null, \"size\": 3.65, \"width\": 183, \"height\": 156}}', 'packege_0cfeb47e78', '.jpg', 'image/jpeg', '6.25', '/uploads/packege_0cfeb47e78.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:36.409000', '2023-05-08 17:19:36.409000', 1, 1),
(138, 'nuocruatay_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuocruatay_image01_01_82544c94fc.jpg\", \"hash\": \"thumbnail_nuocruatay_image01_01_82544c94fc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuocruatay_image01_01.jpg\", \"path\": null, \"size\": 34.64, \"width\": 156, \"height\": 156}}', 'nuocruatay_image01_01_82544c94fc', '.jpg', 'image/jpeg', '72.02', '/uploads/nuocruatay_image01_01_82544c94fc.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:36.420000', '2023-05-08 17:19:36.420000', 1, 1),
(139, 'nuocruatay_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuocruatay_image04_7d96225d3e.jpg\", \"hash\": \"thumbnail_nuocruatay_image04_7d96225d3e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuocruatay_image04.jpg\", \"path\": null, \"size\": 13.32, \"width\": 156, \"height\": 156}}', 'nuocruatay_image04_7d96225d3e', '.jpg', 'image/jpeg', '5.43', '/uploads/nuocruatay_image04_7d96225d3e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:36.429000', '2023-05-08 17:19:36.429000', 1, 1),
(140, 'phanmahong_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image01_69cb41f056.jpg\", \"hash\": \"thumbnail_phanmahong_image01_69cb41f056\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image01.jpg\", \"path\": null, \"size\": 4.35, \"width\": 156, \"height\": 156}}', 'phanmahong_image01_69cb41f056', '.jpg', 'image/jpeg', '6.90', '/uploads/phanmahong_image01_69cb41f056.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:36.461000', '2023-05-08 17:19:36.461000', 1, 1),
(141, 'nuocruatay_image05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_nuocruatay_image05_e470b9c45c.jpg\", \"hash\": \"thumbnail_nuocruatay_image05_e470b9c45c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_nuocruatay_image05.jpg\", \"path\": null, \"size\": 11.24, \"width\": 156, \"height\": 156}}', 'nuocruatay_image05_e470b9c45c', '.jpg', 'image/jpeg', '16.85', '/uploads/nuocruatay_image05_e470b9c45c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:36.463000', '2023-05-08 17:19:36.463000', 1, 1),
(142, 'phanmahong_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image01_01_26645ca5b9.jpg\", \"hash\": \"thumbnail_phanmahong_image01_01_26645ca5b9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image01_01.jpg\", \"path\": null, \"size\": 4.07, \"width\": 156, \"height\": 156}}', 'phanmahong_image01_01_26645ca5b9', '.jpg', 'image/jpeg', '23.60', '/uploads/phanmahong_image01_01_26645ca5b9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:36.884000', '2023-05-08 17:19:36.884000', 1, 1),
(143, 'phanmahong_image01_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image01_02_d2f072542f.jpg\", \"hash\": \"thumbnail_phanmahong_image01_02_d2f072542f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image01_02.jpg\", \"path\": null, \"size\": 4.51, \"width\": 156, \"height\": 156}}', 'phanmahong_image01_02_d2f072542f', '.jpg', 'image/jpeg', '26.21', '/uploads/phanmahong_image01_02_d2f072542f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:37.136000', '2023-05-08 17:19:37.136000', 1, 1),
(144, 'phanmahong_image02_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image02_02_ca8e1151b1.jpg\", \"hash\": \"thumbnail_phanmahong_image02_02_ca8e1151b1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image02_02.jpg\", \"path\": null, \"size\": 2.89, \"width\": 156, \"height\": 156}}', 'phanmahong_image02_02_ca8e1151b1', '.jpg', 'image/jpeg', '16.81', '/uploads/phanmahong_image02_02_ca8e1151b1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:37.342000', '2023-05-08 17:19:37.342000', 1, 1),
(145, 'phanmahong_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image02_01_8b31b28c53.jpg\", \"hash\": \"thumbnail_phanmahong_image02_01_8b31b28c53\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image02_01.jpg\", \"path\": null, \"size\": 2.79, \"width\": 156, \"height\": 156}}', 'phanmahong_image02_01_8b31b28c53', '.jpg', 'image/jpeg', '16.53', '/uploads/phanmahong_image02_01_8b31b28c53.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:37.351000', '2023-05-08 17:19:37.351000', 1, 1),
(146, 'phanmahong_image02_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image02_03_b95ccb2351.jpg\", \"hash\": \"thumbnail_phanmahong_image02_03_b95ccb2351\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image02_03.jpg\", \"path\": null, \"size\": 2.97, \"width\": 156, \"height\": 156}}', 'phanmahong_image02_03_b95ccb2351', '.jpg', 'image/jpeg', '17.39', '/uploads/phanmahong_image02_03_b95ccb2351.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:37.424000', '2023-05-08 17:19:37.424000', 1, 1),
(147, 'phanmahong_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image03_ad2aeedec9.jpg\", \"hash\": \"thumbnail_phanmahong_image03_ad2aeedec9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image03.jpg\", \"path\": null, \"size\": 2.48, \"width\": 156, \"height\": 156}}', 'phanmahong_image03_ad2aeedec9', '.jpg', 'image/jpeg', '11.11', '/uploads/phanmahong_image03_ad2aeedec9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:37.486000', '2023-05-08 17:19:37.486000', 1, 1),
(148, 'phanmahong_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image03_01_72ee380994.jpg\", \"hash\": \"thumbnail_phanmahong_image03_01_72ee380994\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image03_01.jpg\", \"path\": null, \"size\": 2.68, \"width\": 156, \"height\": 156}}', 'phanmahong_image03_01_72ee380994', '.jpg', 'image/jpeg', '13.38', '/uploads/phanmahong_image03_01_72ee380994.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:37.680000', '2023-05-08 17:19:37.680000', 1, 1),
(149, 'phanmahong_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image02_79551fc51f.jpg\", \"hash\": \"thumbnail_phanmahong_image02_79551fc51f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image02.jpg\", \"path\": null, \"size\": 22.03, \"width\": 156, \"height\": 156}}', 'phanmahong_image02_79551fc51f', '.jpg', 'image/jpeg', '46.12', '/uploads/phanmahong_image02_79551fc51f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:37.732000', '2023-05-08 17:19:37.732000', 1, 1),
(150, 'phanmahong_image03_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image03_02_7cacd0f882.jpg\", \"hash\": \"thumbnail_phanmahong_image03_02_7cacd0f882\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image03_02.jpg\", \"path\": null, \"size\": 2.99, \"width\": 156, \"height\": 156}}', 'phanmahong_image03_02_7cacd0f882', '.jpg', 'image/jpeg', '15.63', '/uploads/phanmahong_image03_02_7cacd0f882.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:38.096000', '2023-05-08 17:19:38.096000', 1, 1),
(151, 'phanmahong_image03_04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image03_04_88c67c2d94.jpg\", \"hash\": \"thumbnail_phanmahong_image03_04_88c67c2d94\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image03_04.jpg\", \"path\": null, \"size\": 2.94, \"width\": 156, \"height\": 156}}', 'phanmahong_image03_04_88c67c2d94', '.jpg', 'image/jpeg', '13.89', '/uploads/phanmahong_image03_04_88c67c2d94.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:38.201000', '2023-05-08 17:19:38.201000', 1, 1),
(152, 'phanmahong_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image04_ef3651d81d.jpg\", \"hash\": \"thumbnail_phanmahong_image04_ef3651d81d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image04.jpg\", \"path\": null, \"size\": 4.79, \"width\": 156, \"height\": 156}}', 'phanmahong_image04_ef3651d81d', '.jpg', 'image/jpeg', '23.28', '/uploads/phanmahong_image04_ef3651d81d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:38.207000', '2023-05-08 17:19:38.207000', 1, 1),
(153, 'phanmahong_image05.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image05_b6c8df0bef.jpg\", \"hash\": \"thumbnail_phanmahong_image05_b6c8df0bef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image05.jpg\", \"path\": null, \"size\": 3.04, \"width\": 140, \"height\": 156}}', 'phanmahong_image05_b6c8df0bef', '.jpg', 'image/jpeg', '10.42', '/uploads/phanmahong_image05_b6c8df0bef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:38.300000', '2023-05-08 17:19:38.300000', 1, 1),
(154, 'phanmahong_image05_01.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image05_01_ea94db0cea.jpg\", \"hash\": \"thumbnail_phanmahong_image05_01_ea94db0cea\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image05_01.jpg\", \"path\": null, \"size\": 4.8, \"width\": 140, \"height\": 156}}', 'phanmahong_image05_01_ea94db0cea', '.jpg', 'image/jpeg', '19.46', '/uploads/phanmahong_image05_01_ea94db0cea.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:38.302000', '2023-05-08 17:19:38.302000', 1, 1),
(155, 'phanmahong_image03_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image03_03_0a8cff6b1a.jpg\", \"hash\": \"thumbnail_phanmahong_image03_03_0a8cff6b1a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image03_03.jpg\", \"path\": null, \"size\": 10.08, \"width\": 156, \"height\": 156}}', 'phanmahong_image03_03_0a8cff6b1a', '.jpg', 'image/jpeg', '13.08', '/uploads/phanmahong_image03_03_0a8cff6b1a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:38.544000', '2023-05-08 17:19:38.544000', 1, 1),
(156, 'phanmahong_image05_02.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image05_02_e4f9593130.jpg\", \"hash\": \"thumbnail_phanmahong_image05_02_e4f9593130\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image05_02.jpg\", \"path\": null, \"size\": 3.49, \"width\": 140, \"height\": 156}}', 'phanmahong_image05_02_e4f9593130', '.jpg', 'image/jpeg', '13.89', '/uploads/phanmahong_image05_02_e4f9593130.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:38.949000', '2023-05-08 17:19:38.949000', 1, 1),
(157, 'phanmahong_image06.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image06_6cacc9f802.jpg\", \"hash\": \"thumbnail_phanmahong_image06_6cacc9f802\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image06.jpg\", \"path\": null, \"size\": 3.16, \"width\": 156, \"height\": 156}}', 'phanmahong_image06_6cacc9f802', '.jpg', 'image/jpeg', '4.79', '/uploads/phanmahong_image06_6cacc9f802.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:39.035000', '2023-05-08 17:19:39.035000', 1, 1),
(158, 'phanmahong_image06_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image06_03_cd0c99803f.jpg\", \"hash\": \"thumbnail_phanmahong_image06_03_cd0c99803f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image06_03.jpg\", \"path\": null, \"size\": 1.59, \"width\": 156, \"height\": 156}}', 'phanmahong_image06_03_cd0c99803f', '.jpg', 'image/jpeg', '7.25', '/uploads/phanmahong_image06_03_cd0c99803f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:39.081000', '2023-05-08 17:19:39.081000', 1, 1),
(159, 'phanmahong_image06_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image06_01_e344d27a15.jpg\", \"hash\": \"thumbnail_phanmahong_image06_01_e344d27a15\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image06_01.jpg\", \"path\": null, \"size\": 8.75, \"width\": 156, \"height\": 156}}', 'phanmahong_image06_01_e344d27a15', '.jpg', 'image/jpeg', '11.15', '/uploads/phanmahong_image06_01_e344d27a15.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:39.122000', '2023-05-08 17:19:39.122000', 1, 1),
(160, 'phanmahong_image06_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image06_02_a52ea6f93a.jpg\", \"hash\": \"thumbnail_phanmahong_image06_02_a52ea6f93a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image06_02.jpg\", \"path\": null, \"size\": 8.81, \"width\": 156, \"height\": 156}}', 'phanmahong_image06_02_a52ea6f93a', '.jpg', 'image/jpeg', '12.15', '/uploads/phanmahong_image06_02_a52ea6f93a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:39.157000', '2023-05-08 17:19:39.157000', 1, 1),
(161, 'phanmahong_image06_04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image06_04_00bc6ab3d3.jpg\", \"hash\": \"thumbnail_phanmahong_image06_04_00bc6ab3d3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image06_04.jpg\", \"path\": null, \"size\": 9.24, \"width\": 156, \"height\": 156}}', 'phanmahong_image06_04_00bc6ab3d3', '.jpg', 'image/jpeg', '12.08', '/uploads/phanmahong_image06_04_00bc6ab3d3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:39.302000', '2023-05-08 17:19:39.302000', 1, 1),
(162, 'phanmat_image02_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image02_02_a42535aed4.jpg\", \"hash\": \"thumbnail_phanmat_image02_02_a42535aed4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image02_02.jpg\", \"path\": null, \"size\": 4.25, \"width\": 156, \"height\": 156}}', 'phanmat_image02_02_a42535aed4', '.jpg', 'image/jpeg', '20.79', '/uploads/phanmat_image02_02_a42535aed4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:40.309000', '2023-05-08 17:19:40.309000', 1, 1),
(163, 'phanmat_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image02_01_7a549c0456.jpg\", \"hash\": \"thumbnail_phanmat_image02_01_7a549c0456\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image02_01.jpg\", \"path\": null, \"size\": 4.57, \"width\": 156, \"height\": 156}}', 'phanmat_image02_01_7a549c0456', '.jpg', 'image/jpeg', '23.31', '/uploads/phanmat_image02_01_7a549c0456.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:40.325000', '2023-05-08 17:19:40.325000', 1, 1),
(164, 'phanmahong_image07_01.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image07_01_4d95aaa843.jpg\", \"hash\": \"small_phanmahong_image07_01_4d95aaa843\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image07_01.jpg\", \"path\": null, \"size\": 137.39, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phanmahong_image07_01_4d95aaa843.jpg\", \"hash\": \"medium_phanmahong_image07_01_4d95aaa843\", \"mime\": \"image/jpeg\", \"name\": \"medium_phanmahong_image07_01.jpg\", \"path\": null, \"size\": 300.89, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image07_01_4d95aaa843.jpg\", \"hash\": \"thumbnail_phanmahong_image07_01_4d95aaa843\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image07_01.jpg\", \"path\": null, \"size\": 15.22, \"width\": 156, \"height\": 156}}', 'phanmahong_image07_01_4d95aaa843', '.jpg', 'image/jpeg', '121.39', '/uploads/phanmahong_image07_01_4d95aaa843.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:41.395000', '2023-05-08 17:19:41.395000', 1, 1),
(165, 'phanmahong_image07.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image07_19a030d186.jpg\", \"hash\": \"small_phanmahong_image07_19a030d186\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image07.jpg\", \"path\": null, \"size\": 187.29, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phanmahong_image07_19a030d186.jpg\", \"hash\": \"medium_phanmahong_image07_19a030d186\", \"mime\": \"image/jpeg\", \"name\": \"medium_phanmahong_image07.jpg\", \"path\": null, \"size\": 420.17, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image07_19a030d186.jpg\", \"hash\": \"thumbnail_phanmahong_image07_19a030d186\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image07.jpg\", \"path\": null, \"size\": 20.44, \"width\": 156, \"height\": 156}}', 'phanmahong_image07_19a030d186', '.jpg', 'image/jpeg', '194.00', '/uploads/phanmahong_image07_19a030d186.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:41.419000', '2023-05-08 17:19:41.419000', 1, 1),
(166, 'phanmahong_image07_03.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image07_03_e361909810.jpg\", \"hash\": \"small_phanmahong_image07_03_e361909810\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image07_03.jpg\", \"path\": null, \"size\": 163.48, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phanmahong_image07_03_e361909810.jpg\", \"hash\": \"medium_phanmahong_image07_03_e361909810\", \"mime\": \"image/jpeg\", \"name\": \"medium_phanmahong_image07_03.jpg\", \"path\": null, \"size\": 363.38, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image07_03_e361909810.jpg\", \"hash\": \"thumbnail_phanmahong_image07_03_e361909810\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image07_03.jpg\", \"path\": null, \"size\": 17.55, \"width\": 156, \"height\": 156}}', 'phanmahong_image07_03_e361909810', '.jpg', 'image/jpeg', '152.64', '/uploads/phanmahong_image07_03_e361909810.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:41.825000', '2023-05-08 17:19:41.825000', 1, 1),
(167, 'phanmahong_image07_05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image07_05_90dbb27172.jpg\", \"hash\": \"thumbnail_phanmahong_image07_05_90dbb27172\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image07_05.jpg\", \"path\": null, \"size\": 4.06, \"width\": 156, \"height\": 156}}', 'phanmahong_image07_05_90dbb27172', '.jpg', 'image/jpeg', '21.20', '/uploads/phanmahong_image07_05_90dbb27172.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:41.832000', '2023-05-08 17:19:41.832000', 1, 1),
(168, 'phanmahong_image08.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_7475d424a8.jpg\", \"hash\": \"thumbnail_phanmahong_image08_7475d424a8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08.jpg\", \"path\": null, \"size\": 20.52, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_7475d424a8', '.jpg', 'image/jpeg', '6.99', '/uploads/phanmahong_image08_7475d424a8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:41.833000', '2023-05-08 17:19:41.833000', 1, 1),
(169, 'phanmahong_image07_02.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image07_02_b1f88f9021.jpg\", \"hash\": \"small_phanmahong_image07_02_b1f88f9021\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image07_02.jpg\", \"path\": null, \"size\": 152.4, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phanmahong_image07_02_b1f88f9021.jpg\", \"hash\": \"medium_phanmahong_image07_02_b1f88f9021\", \"mime\": \"image/jpeg\", \"name\": \"medium_phanmahong_image07_02.jpg\", \"path\": null, \"size\": 331.09, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image07_02_b1f88f9021.jpg\", \"hash\": \"thumbnail_phanmahong_image07_02_b1f88f9021\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image07_02.jpg\", \"path\": null, \"size\": 17, \"width\": 156, \"height\": 156}}', 'phanmahong_image07_02_b1f88f9021', '.jpg', 'image/jpeg', '138.73', '/uploads/phanmahong_image07_02_b1f88f9021.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:41.883000', '2023-05-08 17:19:41.883000', 1, 1),
(170, 'phanmahong_image08_03.jpg', NULL, NULL, 700, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image08_03_76dddb6837.jpg\", \"hash\": \"small_phanmahong_image08_03_76dddb6837\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image08_03.jpg\", \"path\": null, \"size\": 130.51, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_03_76dddb6837.jpg\", \"hash\": \"thumbnail_phanmahong_image08_03_76dddb6837\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08_03.jpg\", \"path\": null, \"size\": 16.32, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_03_76dddb6837', '.jpg', 'image/jpeg', '47.57', '/uploads/phanmahong_image08_03_76dddb6837.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:42.960000', '2023-05-08 17:19:42.960000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(171, 'phanmahong_image08_04.jpg', NULL, NULL, 700, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image08_04_35ca53073e.jpg\", \"hash\": \"small_phanmahong_image08_04_35ca53073e\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image08_04.jpg\", \"path\": null, \"size\": 128.22, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_04_35ca53073e.jpg\", \"hash\": \"thumbnail_phanmahong_image08_04_35ca53073e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08_04.jpg\", \"path\": null, \"size\": 15.79, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_04_35ca53073e', '.jpg', 'image/jpeg', '45.96', '/uploads/phanmahong_image08_04_35ca53073e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:43.007000', '2023-05-08 17:19:43.007000', 1, 1),
(172, 'phanmahong_image08_02.jpg', NULL, NULL, 700, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image08_02_6fa913513a.jpg\", \"hash\": \"small_phanmahong_image08_02_6fa913513a\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image08_02.jpg\", \"path\": null, \"size\": 106.39, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_02_6fa913513a.jpg\", \"hash\": \"thumbnail_phanmahong_image08_02_6fa913513a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08_02.jpg\", \"path\": null, \"size\": 15, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_02_6fa913513a', '.jpg', 'image/jpeg', '41.69', '/uploads/phanmahong_image08_02_6fa913513a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:43.010000', '2023-05-08 17:19:43.010000', 1, 1),
(173, 'phanmahong_image08_05.jpg', NULL, NULL, 700, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image08_05_47c27e18c4.jpg\", \"hash\": \"small_phanmahong_image08_05_47c27e18c4\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image08_05.jpg\", \"path\": null, \"size\": 110.1, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_05_47c27e18c4.jpg\", \"hash\": \"thumbnail_phanmahong_image08_05_47c27e18c4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08_05.jpg\", \"path\": null, \"size\": 15.2, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_05_47c27e18c4', '.jpg', 'image/jpeg', '43.53', '/uploads/phanmahong_image08_05_47c27e18c4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:43.053000', '2023-05-08 17:19:43.053000', 1, 1),
(174, 'phanmahong_image08_07.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image08_07_9de42298f8.jpg\", \"hash\": \"small_phanmahong_image08_07_9de42298f8\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image08_07.jpg\", \"path\": null, \"size\": 115.16, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phanmahong_image08_07_9de42298f8.jpg\", \"hash\": \"medium_phanmahong_image08_07_9de42298f8\", \"mime\": \"image/jpeg\", \"name\": \"medium_phanmahong_image08_07.jpg\", \"path\": null, \"size\": 244.81, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_07_9de42298f8.jpg\", \"hash\": \"thumbnail_phanmahong_image08_07_9de42298f8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08_07.jpg\", \"path\": null, \"size\": 15.18, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_07_9de42298f8', '.jpg', 'image/jpeg', '86.96', '/uploads/phanmahong_image08_07_9de42298f8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:43.393000', '2023-05-08 17:19:43.393000', 1, 1),
(175, 'phanmat_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image01_0cad3680ea.jpg\", \"hash\": \"thumbnail_phanmat_image01_0cad3680ea\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image01.jpg\", \"path\": null, \"size\": 2.66, \"width\": 156, \"height\": 156}}', 'phanmat_image01_0cad3680ea', '.jpg', 'image/jpeg', '15.93', '/uploads/phanmat_image01_0cad3680ea.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:43.720000', '2023-05-08 17:19:43.720000', 1, 1),
(176, 'phanmahong_image08_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_01_2c5111f019.jpg\", \"hash\": \"thumbnail_phanmahong_image08_01_2c5111f019\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08_01.jpg\", \"path\": null, \"size\": 47.95, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_01_2c5111f019', '.jpg', 'image/jpeg', '118.46', '/uploads/phanmahong_image08_01_2c5111f019.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:43.934000', '2023-05-08 17:19:43.934000', 1, 1),
(177, 'phanmat_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image01_01_0b76ab3a8f.jpg\", \"hash\": \"thumbnail_phanmat_image01_01_0b76ab3a8f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image01_01.jpg\", \"path\": null, \"size\": 12.28, \"width\": 156, \"height\": 156}}', 'phanmat_image01_01_0b76ab3a8f', '.jpg', 'image/jpeg', '20.24', '/uploads/phanmat_image01_01_0b76ab3a8f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:44.245000', '2023-05-08 17:19:44.245000', 1, 1),
(178, 'phanmat_image01_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image01_02_a6204f268b.jpg\", \"hash\": \"thumbnail_phanmat_image01_02_a6204f268b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image01_02.jpg\", \"path\": null, \"size\": 12.92, \"width\": 156, \"height\": 156}}', 'phanmat_image01_02_a6204f268b', '.jpg', 'image/jpeg', '20.96', '/uploads/phanmat_image01_02_a6204f268b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:44.258000', '2023-05-08 17:19:44.258000', 1, 1),
(179, 'phanmat_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image02_41fe53e3c1.jpg\", \"hash\": \"thumbnail_phanmat_image02_41fe53e3c1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image02.jpg\", \"path\": null, \"size\": 3.85, \"width\": 156, \"height\": 156}}', 'phanmat_image02_41fe53e3c1', '.jpg', 'image/jpeg', '18.31', '/uploads/phanmat_image02_41fe53e3c1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:44.368000', '2023-05-08 17:19:44.368000', 1, 1),
(180, 'phanmahong_image08_06.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmahong_image08_06_b86dddc420.jpg\", \"hash\": \"small_phanmahong_image08_06_b86dddc420\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmahong_image08_06.jpg\", \"path\": null, \"size\": 104.51, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phanmahong_image08_06_b86dddc420.jpg\", \"hash\": \"medium_phanmahong_image08_06_b86dddc420\", \"mime\": \"image/jpeg\", \"name\": \"medium_phanmahong_image08_06.jpg\", \"path\": null, \"size\": 219.44, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmahong_image08_06_b86dddc420.jpg\", \"hash\": \"thumbnail_phanmahong_image08_06_b86dddc420\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmahong_image08_06.jpg\", \"path\": null, \"size\": 13.83, \"width\": 156, \"height\": 156}}', 'phanmahong_image08_06_b86dddc420', '.jpg', 'image/jpeg', '79.97', '/uploads/phanmahong_image08_06_b86dddc420.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:44.577000', '2023-05-08 17:19:44.577000', 1, 1),
(181, 'phanmat_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image03_0c67afec46.jpg\", \"hash\": \"thumbnail_phanmat_image03_0c67afec46\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image03.jpg\", \"path\": null, \"size\": 3.33, \"width\": 156, \"height\": 156}}', 'phanmat_image03_0c67afec46', '.jpg', 'image/jpeg', '19.48', '/uploads/phanmat_image03_0c67afec46.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:44.646000', '2023-05-08 17:19:44.646000', 1, 1),
(182, 'phanmat_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image04_f20313246c.jpg\", \"hash\": \"thumbnail_phanmat_image04_f20313246c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image04.jpg\", \"path\": null, \"size\": 2.62, \"width\": 156, \"height\": 156}}', 'phanmat_image04_f20313246c', '.jpg', 'image/jpeg', '14.97', '/uploads/phanmat_image04_f20313246c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:44.850000', '2023-05-08 17:19:44.850000', 1, 1),
(183, 'phanmat_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image03_01_fe34eae23a.jpg\", \"hash\": \"thumbnail_phanmat_image03_01_fe34eae23a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image03_01.jpg\", \"path\": null, \"size\": 3.16, \"width\": 156, \"height\": 156}}', 'phanmat_image03_01_fe34eae23a', '.jpg', 'image/jpeg', '19.62', '/uploads/phanmat_image03_01_fe34eae23a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:44.937000', '2023-05-08 17:19:44.937000', 1, 1),
(184, 'phanmat_image04_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image04_02_d0f5fe24a7.jpg\", \"hash\": \"thumbnail_phanmat_image04_02_d0f5fe24a7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image04_02.jpg\", \"path\": null, \"size\": 2.53, \"width\": 156, \"height\": 156}}', 'phanmat_image04_02_d0f5fe24a7', '.jpg', 'image/jpeg', '14.47', '/uploads/phanmat_image04_02_d0f5fe24a7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:45.271000', '2023-05-08 17:19:45.271000', 1, 1),
(185, 'phanmat_image05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image05_366dcc7229.jpg\", \"hash\": \"thumbnail_phanmat_image05_366dcc7229\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image05.jpg\", \"path\": null, \"size\": 4.37, \"width\": 156, \"height\": 156}}', 'phanmat_image05_366dcc7229', '.jpg', 'image/jpeg', '22.72', '/uploads/phanmat_image05_366dcc7229.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:45.279000', '2023-05-08 17:19:45.279000', 1, 1),
(186, 'phanmat_image05_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image05_01_90e4b951c3.jpg\", \"hash\": \"thumbnail_phanmat_image05_01_90e4b951c3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image05_01.jpg\", \"path\": null, \"size\": 4.43, \"width\": 156, \"height\": 156}}', 'phanmat_image05_01_90e4b951c3', '.jpg', 'image/jpeg', '22.73', '/uploads/phanmat_image05_01_90e4b951c3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:45.498000', '2023-05-08 17:19:45.498000', 1, 1),
(187, 'phanmat_image04_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image04_01_2a56a194de.jpg\", \"hash\": \"thumbnail_phanmat_image04_01_2a56a194de\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image04_01.jpg\", \"path\": null, \"size\": 2.61, \"width\": 156, \"height\": 156}}', 'phanmat_image04_01_2a56a194de', '.jpg', 'image/jpeg', '14.97', '/uploads/phanmat_image04_01_2a56a194de.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:45.506000', '2023-05-08 17:19:45.506000', 1, 1),
(188, 'phanmat_image01_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image01_03_4a4586bbee.jpg\", \"hash\": \"thumbnail_phanmat_image01_03_4a4586bbee\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image01_03.jpg\", \"path\": null, \"size\": 55.42, \"width\": 156, \"height\": 156}}', 'phanmat_image01_03_4a4586bbee', '.jpg', 'image/jpeg', '164.62', '/uploads/phanmat_image01_03_4a4586bbee.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:45.536000', '2023-05-08 17:19:45.536000', 1, 1),
(189, 'phanmat_image05_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image05_02_6b83769c16.jpg\", \"hash\": \"thumbnail_phanmat_image05_02_6b83769c16\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image05_02.jpg\", \"path\": null, \"size\": 4.31, \"width\": 156, \"height\": 156}}', 'phanmat_image05_02_6b83769c16', '.jpg', 'image/jpeg', '22.27', '/uploads/phanmat_image05_02_6b83769c16.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:45.545000', '2023-05-08 17:19:45.545000', 1, 1),
(190, 'phanmat_image05_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image05_03_acf0fe5497.jpg\", \"hash\": \"thumbnail_phanmat_image05_03_acf0fe5497\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image05_03.jpg\", \"path\": null, \"size\": 4.54, \"width\": 156, \"height\": 156}}', 'phanmat_image05_03_acf0fe5497', '.jpg', 'image/jpeg', '22.93', '/uploads/phanmat_image05_03_acf0fe5497.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:46.299000', '2023-05-08 17:19:46.299000', 1, 1),
(191, 'phanmat_image06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image06_e7f0c6408f.jpg\", \"hash\": \"thumbnail_phanmat_image06_e7f0c6408f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image06.jpg\", \"path\": null, \"size\": 3.48, \"width\": 156, \"height\": 156}}', 'phanmat_image06_e7f0c6408f', '.jpg', 'image/jpeg', '22.27', '/uploads/phanmat_image06_e7f0c6408f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:46.320000', '2023-05-08 17:19:46.320000', 1, 1),
(192, 'phanmat_image06_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image06_03_c78597806c.jpg\", \"hash\": \"thumbnail_phanmat_image06_03_c78597806c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image06_03.jpg\", \"path\": null, \"size\": 3.64, \"width\": 156, \"height\": 156}}', 'phanmat_image06_03_c78597806c', '.jpg', 'image/jpeg', '22.16', '/uploads/phanmat_image06_03_c78597806c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:46.357000', '2023-05-08 17:19:46.357000', 1, 1),
(193, 'phanmat_image06_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image06_02_581189ebfa.jpg\", \"hash\": \"thumbnail_phanmat_image06_02_581189ebfa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image06_02.jpg\", \"path\": null, \"size\": 3.84, \"width\": 156, \"height\": 156}}', 'phanmat_image06_02_581189ebfa', '.jpg', 'image/jpeg', '23.76', '/uploads/phanmat_image06_02_581189ebfa.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:46.363000', '2023-05-08 17:19:46.363000', 1, 1),
(194, 'phanmat_image07.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image07_0892213bba.jpg\", \"hash\": \"thumbnail_phanmat_image07_0892213bba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image07.jpg\", \"path\": null, \"size\": 4.95, \"width\": 156, \"height\": 156}}', 'phanmat_image07_0892213bba', '.jpg', 'image/jpeg', '31.32', '/uploads/phanmat_image07_0892213bba.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:46.468000', '2023-05-08 17:19:46.468000', 1, 1),
(195, 'phanmat_image06_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image06_01_aa2057f262.jpg\", \"hash\": \"thumbnail_phanmat_image06_01_aa2057f262\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image06_01.jpg\", \"path\": null, \"size\": 28.86, \"width\": 156, \"height\": 156}}', 'phanmat_image06_01_aa2057f262', '.jpg', 'image/jpeg', '44.65', '/uploads/phanmat_image06_01_aa2057f262.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:46.927000', '2023-05-08 17:19:46.927000', 1, 1),
(196, 'phanmat_image08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image08_463a9de499.jpg\", \"hash\": \"thumbnail_phanmat_image08_463a9de499\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image08.jpg\", \"path\": null, \"size\": 3.42, \"width\": 156, \"height\": 156}}', 'phanmat_image08_463a9de499', '.jpg', 'image/jpeg', '23.67', '/uploads/phanmat_image08_463a9de499.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:47.141000', '2023-05-08 17:19:47.141000', 1, 1),
(197, 'phanmat_image08_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image08_01_3d0d09d32c.jpg\", \"hash\": \"thumbnail_phanmat_image08_01_3d0d09d32c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image08_01.jpg\", \"path\": null, \"size\": 23.23, \"width\": 156, \"height\": 156}}', 'phanmat_image08_01_3d0d09d32c', '.jpg', 'image/jpeg', '47.34', '/uploads/phanmat_image08_01_3d0d09d32c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:48.214000', '2023-05-08 17:19:48.214000', 1, 1),
(198, 'phanmat_image08_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image08_02_9e50956468.jpg\", \"hash\": \"thumbnail_phanmat_image08_02_9e50956468\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image08_02.jpg\", \"path\": null, \"size\": 22.68, \"width\": 156, \"height\": 156}}', 'phanmat_image08_02_9e50956468', '.jpg', 'image/jpeg', '47.38', '/uploads/phanmat_image08_02_9e50956468.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:48.278000', '2023-05-08 17:19:48.278000', 1, 1),
(199, 'phannen_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phannen_image01_51f3b21eed.jpg\", \"hash\": \"thumbnail_phannen_image01_51f3b21eed\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phannen_image01.jpg\", \"path\": null, \"size\": 3.35, \"width\": 156, \"height\": 156}}', 'phannen_image01_51f3b21eed', '.jpg', 'image/jpeg', '16.59', '/uploads/phannen_image01_51f3b21eed.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:48.749000', '2023-05-08 17:19:48.749000', 1, 1),
(200, 'phanmat_image08_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image08_03_75a6e2a3f3.jpg\", \"hash\": \"thumbnail_phanmat_image08_03_75a6e2a3f3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image08_03.jpg\", \"path\": null, \"size\": 22.92, \"width\": 156, \"height\": 156}}', 'phanmat_image08_03_75a6e2a3f3', '.jpg', 'image/jpeg', '48.12', '/uploads/phanmat_image08_03_75a6e2a3f3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:48.883000', '2023-05-08 17:19:48.883000', 1, 1),
(201, 'phanphu_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image01_d578ae9f0b.jpg\", \"hash\": \"thumbnail_phanphu_image01_d578ae9f0b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image01.jpg\", \"path\": null, \"size\": 2.17, \"width\": 156, \"height\": 156}}', 'phanphu_image01_d578ae9f0b', '.jpg', 'image/jpeg', '10.18', '/uploads/phanphu_image01_d578ae9f0b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:49.062000', '2023-05-08 17:19:49.062000', 1, 1),
(202, 'phannen_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phannen_image02_5dd6b83618.jpg\", \"hash\": \"thumbnail_phannen_image02_5dd6b83618\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phannen_image02.jpg\", \"path\": null, \"size\": 16, \"width\": 156, \"height\": 156}}', 'phannen_image02_5dd6b83618', '.jpg', 'image/jpeg', '7.18', '/uploads/phannen_image02_5dd6b83618.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:49.093000', '2023-05-08 17:19:49.093000', 1, 1),
(203, 'phanphu_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image01_01_3ec8f2600e.jpg\", \"hash\": \"thumbnail_phanphu_image01_01_3ec8f2600e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image01_01.jpg\", \"path\": null, \"size\": 2.34, \"width\": 156, \"height\": 156}}', 'phanphu_image01_01_3ec8f2600e', '.jpg', 'image/jpeg', '10.74', '/uploads/phanphu_image01_01_3ec8f2600e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:49.326000', '2023-05-08 17:19:49.326000', 1, 1),
(204, 'phanphu_image01_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image01_02_0bd28f7906.jpg\", \"hash\": \"thumbnail_phanphu_image01_02_0bd28f7906\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image01_02.jpg\", \"path\": null, \"size\": 2.45, \"width\": 156, \"height\": 156}}', 'phanphu_image01_02_0bd28f7906', '.jpg', 'image/jpeg', '11.20', '/uploads/phanphu_image01_02_0bd28f7906.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:49.361000', '2023-05-08 17:19:49.361000', 1, 1),
(205, 'phanmat_image07_01.jpg', NULL, NULL, 743, 743, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmat_image07_01_4af9d91524.jpg\", \"hash\": \"small_phanmat_image07_01_4af9d91524\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmat_image07_01.jpg\", \"path\": null, \"size\": 396.65, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image07_01_4af9d91524.jpg\", \"hash\": \"thumbnail_phanmat_image07_01_4af9d91524\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image07_01.jpg\", \"path\": null, \"size\": 40.57, \"width\": 156, \"height\": 156}}', 'phanmat_image07_01_4af9d91524', '.jpg', 'image/jpeg', '279.95', '/uploads/phanmat_image07_01_4af9d91524.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:49.411000', '2023-05-08 17:19:49.411000', 1, 1),
(206, 'phanphu_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image02_01_a8b2b056f0.jpg\", \"hash\": \"thumbnail_phanphu_image02_01_a8b2b056f0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image02_01.jpg\", \"path\": null, \"size\": 2.48, \"width\": 156, \"height\": 156}}', 'phanphu_image02_01_a8b2b056f0', '.jpg', 'image/jpeg', '10.92', '/uploads/phanphu_image02_01_a8b2b056f0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:49.965000', '2023-05-08 17:19:49.965000', 1, 1),
(207, 'phanphu_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image02_3ddf84f18a.jpg\", \"hash\": \"thumbnail_phanphu_image02_3ddf84f18a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image02.jpg\", \"path\": null, \"size\": 16.57, \"width\": 156, \"height\": 156}}', 'phanphu_image02_3ddf84f18a', '.jpg', 'image/jpeg', '7.66', '/uploads/phanphu_image02_3ddf84f18a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.030000', '2023-05-08 17:19:50.030000', 1, 1),
(208, 'phanphu_image02_04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image02_04_537a44fe85.jpg\", \"hash\": \"thumbnail_phanphu_image02_04_537a44fe85\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image02_04.jpg\", \"path\": null, \"size\": 2.72, \"width\": 156, \"height\": 156}}', 'phanphu_image02_04_537a44fe85', '.jpg', 'image/jpeg', '12.18', '/uploads/phanphu_image02_04_537a44fe85.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.032000', '2023-05-08 17:19:50.032000', 1, 1),
(209, 'phanphu_image02_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image02_02_c03278a0cd.jpg\", \"hash\": \"thumbnail_phanphu_image02_02_c03278a0cd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image02_02.jpg\", \"path\": null, \"size\": 2.4, \"width\": 156, \"height\": 156}}', 'phanphu_image02_02_c03278a0cd', '.jpg', 'image/jpeg', '10.85', '/uploads/phanphu_image02_02_c03278a0cd.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.050000', '2023-05-08 17:19:50.050000', 1, 1),
(210, 'phanphu_image02_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image02_03_88299e77aa.jpg\", \"hash\": \"thumbnail_phanphu_image02_03_88299e77aa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image02_03.jpg\", \"path\": null, \"size\": 2.43, \"width\": 156, \"height\": 156}}', 'phanphu_image02_03_88299e77aa', '.jpg', 'image/jpeg', '10.91', '/uploads/phanphu_image02_03_88299e77aa.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.051000', '2023-05-08 17:19:50.051000', 1, 1),
(211, 'phanphu_image03.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image03_25cc04cec8.jpg\", \"hash\": \"thumbnail_phanphu_image03_25cc04cec8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image03.jpg\", \"path\": null, \"size\": 1.57, \"width\": 156, \"height\": 156}}', 'phanphu_image03_25cc04cec8', '.jpg', 'image/jpeg', '2.39', '/uploads/phanphu_image03_25cc04cec8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.730000', '2023-05-08 17:19:50.730000', 1, 1),
(212, 'phanphu_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image03_01_a43b55ace3.jpg\", \"hash\": \"thumbnail_phanphu_image03_01_a43b55ace3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image03_01.jpg\", \"path\": null, \"size\": 5.51, \"width\": 156, \"height\": 156}}', 'phanphu_image03_01_a43b55ace3', '.jpg', 'image/jpeg', '35.45', '/uploads/phanphu_image03_01_a43b55ace3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.757000', '2023-05-08 17:19:50.757000', 1, 1),
(213, 'phanphu_image03_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image03_02_276932bbca.jpg\", \"hash\": \"thumbnail_phanphu_image03_02_276932bbca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image03_02.jpg\", \"path\": null, \"size\": 2.46, \"width\": 156, \"height\": 156}}', 'phanphu_image03_02_276932bbca', '.jpg', 'image/jpeg', '13.64', '/uploads/phanphu_image03_02_276932bbca.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.775000', '2023-05-08 17:19:50.775000', 1, 1),
(214, 'phanphu_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image04_2884a7d04a.jpg\", \"hash\": \"thumbnail_phanphu_image04_2884a7d04a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image04.jpg\", \"path\": null, \"size\": 2.4, \"width\": 156, \"height\": 156}}', 'phanphu_image04_2884a7d04a', '.jpg', 'image/jpeg', '13.15', '/uploads/phanphu_image04_2884a7d04a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.776000', '2023-05-08 17:19:50.776000', 1, 1),
(215, 'phanphu_image04_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image04_01_4310fe087f.jpg\", \"hash\": \"thumbnail_phanphu_image04_01_4310fe087f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image04_01.jpg\", \"path\": null, \"size\": 1.96, \"width\": 156, \"height\": 156}}', 'phanphu_image04_01_4310fe087f', '.jpg', 'image/jpeg', '9.85', '/uploads/phanphu_image04_01_4310fe087f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.780000', '2023-05-08 17:19:50.780000', 1, 1),
(216, 'phanmat_image07_02.jpg', NULL, NULL, 743, 743, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phanmat_image07_02_562083752f.jpg\", \"hash\": \"small_phanmat_image07_02_562083752f\", \"mime\": \"image/jpeg\", \"name\": \"small_phanmat_image07_02.jpg\", \"path\": null, \"size\": 505.33, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanmat_image07_02_562083752f.jpg\", \"hash\": \"thumbnail_phanmat_image07_02_562083752f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanmat_image07_02.jpg\", \"path\": null, \"size\": 56.42, \"width\": 156, \"height\": 156}}', 'phanmat_image07_02_562083752f', '.jpg', 'image/jpeg', '269.03', '/uploads/phanmat_image07_02_562083752f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:50.819000', '2023-05-08 17:19:50.819000', 1, 1),
(217, 'phanphu_image04_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image04_02_c9829aeafb.jpg\", \"hash\": \"thumbnail_phanphu_image04_02_c9829aeafb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image04_02.jpg\", \"path\": null, \"size\": 2.55, \"width\": 156, \"height\": 156}}', 'phanphu_image04_02_c9829aeafb', '.jpg', 'image/jpeg', '13.36', '/uploads/phanphu_image04_02_c9829aeafb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:51.431000', '2023-05-08 17:19:51.431000', 1, 1),
(218, 'phanphu_image04_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image04_03_379150c3c4.jpg\", \"hash\": \"thumbnail_phanphu_image04_03_379150c3c4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image04_03.jpg\", \"path\": null, \"size\": 2.49, \"width\": 156, \"height\": 156}}', 'phanphu_image04_03_379150c3c4', '.jpg', 'image/jpeg', '12.93', '/uploads/phanphu_image04_03_379150c3c4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:51.573000', '2023-05-08 17:19:51.573000', 1, 1),
(219, 'phanphu_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image05_0ff97becad.jpg\", \"hash\": \"thumbnail_phanphu_image05_0ff97becad\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image05.jpg\", \"path\": null, \"size\": 1.66, \"width\": 156, \"height\": 156}}', 'phanphu_image05_0ff97becad', '.jpg', 'image/jpeg', '2.60', '/uploads/phanphu_image05_0ff97becad.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:51.599000', '2023-05-08 17:19:51.599000', 1, 1),
(220, 'phanphu_image06.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image06_7946e81203.jpg\", \"hash\": \"thumbnail_phanphu_image06_7946e81203\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image06.jpg\", \"path\": null, \"size\": 1.45, \"width\": 156, \"height\": 156}}', 'phanphu_image06_7946e81203', '.jpg', 'image/jpeg', '2.05', '/uploads/phanphu_image06_7946e81203.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:51.689000', '2023-05-08 17:19:51.689000', 1, 1),
(221, 'phanphu_image05_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image05_01_1c380f95db.jpg\", \"hash\": \"thumbnail_phanphu_image05_01_1c380f95db\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image05_01.jpg\", \"path\": null, \"size\": 13.71, \"width\": 156, \"height\": 156}}', 'phanphu_image05_01_1c380f95db', '.jpg', 'image/jpeg', '25.59', '/uploads/phanphu_image05_01_1c380f95db.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:51.907000', '2023-05-08 17:19:51.907000', 1, 1),
(222, 'phanphu_image07.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image07_b695a6059b.jpg\", \"hash\": \"thumbnail_phanphu_image07_b695a6059b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image07.jpg\", \"path\": null, \"size\": 2.93, \"width\": 156, \"height\": 156}}', 'phanphu_image07_b695a6059b', '.jpg', 'image/jpeg', '19.02', '/uploads/phanphu_image07_b695a6059b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:52.175000', '2023-05-08 17:19:52.175000', 1, 1),
(223, 'phanphu_image07_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image07_01_e834ac7cfa.jpg\", \"hash\": \"thumbnail_phanphu_image07_01_e834ac7cfa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image07_01.jpg\", \"path\": null, \"size\": 2.2, \"width\": 156, \"height\": 156}}', 'phanphu_image07_01_e834ac7cfa', '.jpg', 'image/jpeg', '12.29', '/uploads/phanphu_image07_01_e834ac7cfa.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:52.239000', '2023-05-08 17:19:52.239000', 1, 1),
(224, 'phanphu_image05_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image05_02_b740cb102b.jpg\", \"hash\": \"thumbnail_phanphu_image05_02_b740cb102b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image05_02.jpg\", \"path\": null, \"size\": 37.21, \"width\": 156, \"height\": 156}}', 'phanphu_image05_02_b740cb102b', '.jpg', 'image/jpeg', '64.80', '/uploads/phanphu_image05_02_b740cb102b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:52.393000', '2023-05-08 17:19:52.393000', 1, 1),
(225, 'phanphu_image06_01.jpg', NULL, NULL, 450, 450, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image06_01_ec8db6211c.jpg\", \"hash\": \"thumbnail_phanphu_image06_01_ec8db6211c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image06_01.jpg\", \"path\": null, \"size\": 19.27, \"width\": 156, \"height\": 156}}', 'phanphu_image06_01_ec8db6211c', '.jpg', 'image/jpeg', '41.22', '/uploads/phanphu_image06_01_ec8db6211c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:52.487000', '2023-05-08 17:19:52.487000', 1, 1),
(226, 'phanphu_image07_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image07_02_e0fa378b22.jpg\", \"hash\": \"thumbnail_phanphu_image07_02_e0fa378b22\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image07_02.jpg\", \"path\": null, \"size\": 3.48, \"width\": 156, \"height\": 156}}', 'phanphu_image07_02_e0fa378b22', '.jpg', 'image/jpeg', '20.38', '/uploads/phanphu_image07_02_e0fa378b22.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:52.550000', '2023-05-08 17:19:52.550000', 1, 1),
(227, 'phanphu_image07_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image07_03_b49084c657.jpg\", \"hash\": \"thumbnail_phanphu_image07_03_b49084c657\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image07_03.jpg\", \"path\": null, \"size\": 1.93, \"width\": 156, \"height\": 156}}', 'phanphu_image07_03_b49084c657', '.jpg', 'image/jpeg', '14.42', '/uploads/phanphu_image07_03_b49084c657.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:52.552000', '2023-05-08 17:19:52.552000', 1, 1),
(228, 'phanphu_image07_04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phanphu_image07_04_7be7220e98.jpg\", \"hash\": \"thumbnail_phanphu_image07_04_7be7220e98\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phanphu_image07_04.jpg\", \"path\": null, \"size\": 1.41, \"width\": 156, \"height\": 156}}', 'phanphu_image07_04_7be7220e98', '.jpg', 'image/jpeg', '9.16', '/uploads/phanphu_image07_04_7be7220e98.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:52.587000', '2023-05-08 17:19:52.587000', 1, 1),
(229, 'phantaokhoi_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phantaokhoi_image02_01_d043804de5.jpg\", \"hash\": \"thumbnail_phantaokhoi_image02_01_d043804de5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phantaokhoi_image02_01.jpg\", \"path\": null, \"size\": 2.11, \"width\": 156, \"height\": 156}}', 'phantaokhoi_image02_01_d043804de5', '.jpg', 'image/jpeg', '11.47', '/uploads/phantaokhoi_image02_01_d043804de5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:53.288000', '2023-05-08 17:19:53.288000', 1, 1),
(230, 'phantaokhoi_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phantaokhoi_image02_9c95947be8.jpg\", \"hash\": \"thumbnail_phantaokhoi_image02_9c95947be8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phantaokhoi_image02.jpg\", \"path\": null, \"size\": 1.58, \"width\": 156, \"height\": 156}}', 'phantaokhoi_image02_9c95947be8', '.jpg', 'image/jpeg', '7.91', '/uploads/phantaokhoi_image02_9c95947be8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:53.290000', '2023-05-08 17:19:53.290000', 1, 1),
(231, 'pngtree-hand-painted-lady-beauty-cosmetic-lipstick-png-image_443019.jpg', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_pngtree_hand_painted_lady_beauty_cosmetic_lipstick_png_image_443019_1db8d9ed9b.jpg\", \"hash\": \"small_pngtree_hand_painted_lady_beauty_cosmetic_lipstick_png_image_443019_1db8d9ed9b\", \"mime\": \"image/jpeg\", \"name\": \"small_pngtree-hand-painted-lady-beauty-cosmetic-lipstick-png-image_443019.jpg\", \"path\": null, \"size\": 22.66, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_pngtree_hand_painted_lady_beauty_cosmetic_lipstick_png_image_443019_1db8d9ed9b.jpg\", \"hash\": \"thumbnail_pngtree_hand_painted_lady_beauty_cosmetic_lipstick_png_image_443019_1db8d9ed9b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_pngtree-hand-painted-lady-beauty-cosmetic-lipstick-png-image_443019.jpg\", \"path\": null, \"size\": 4.23, \"width\": 156, \"height\": 156}}', 'pngtree_hand_painted_lady_beauty_cosmetic_lipstick_png_image_443019_1db8d9ed9b', '.jpg', 'image/jpeg', '29.70', '/uploads/pngtree_hand_painted_lady_beauty_cosmetic_lipstick_png_image_443019_1db8d9ed9b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:53.416000', '2023-05-08 17:19:53.416000', 1, 1),
(232, 'phantaokhoi_image01.jpg', NULL, NULL, 890, 902, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phantaokhoi_image01_c449a1bfc9.jpg\", \"hash\": \"small_phantaokhoi_image01_c449a1bfc9\", \"mime\": \"image/jpeg\", \"name\": \"small_phantaokhoi_image01.jpg\", \"path\": null, \"size\": 21.06, \"width\": 493, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phantaokhoi_image01_c449a1bfc9.jpg\", \"hash\": \"medium_phantaokhoi_image01_c449a1bfc9\", \"mime\": \"image/jpeg\", \"name\": \"medium_phantaokhoi_image01.jpg\", \"path\": null, \"size\": 48.06, \"width\": 740, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phantaokhoi_image01_c449a1bfc9.jpg\", \"hash\": \"thumbnail_phantaokhoi_image01_c449a1bfc9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phantaokhoi_image01.jpg\", \"path\": null, \"size\": 2.48, \"width\": 154, \"height\": 156}}', 'phantaokhoi_image01_c449a1bfc9', '.jpg', 'image/jpeg', '70.71', '/uploads/phantaokhoi_image01_c449a1bfc9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:53.567000', '2023-05-08 17:19:53.567000', 1, 1),
(233, 'phantaokhoi_image01_02.jpg', NULL, NULL, 1000, 728, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phantaokhoi_image01_02_3e6d4002f7.jpg\", \"hash\": \"small_phantaokhoi_image01_02_3e6d4002f7\", \"mime\": \"image/jpeg\", \"name\": \"small_phantaokhoi_image01_02.jpg\", \"path\": null, \"size\": 22.23, \"width\": 500, \"height\": 364}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_phantaokhoi_image01_02_3e6d4002f7.jpg\", \"hash\": \"medium_phantaokhoi_image01_02_3e6d4002f7\", \"mime\": \"image/jpeg\", \"name\": \"medium_phantaokhoi_image01_02.jpg\", \"path\": null, \"size\": 49.56, \"width\": 750, \"height\": 546}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phantaokhoi_image01_02_3e6d4002f7.jpg\", \"hash\": \"thumbnail_phantaokhoi_image01_02_3e6d4002f7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phantaokhoi_image01_02.jpg\", \"path\": null, \"size\": 4.87, \"width\": 214, \"height\": 156}}', 'phantaokhoi_image01_02_3e6d4002f7', '.jpg', 'image/jpeg', '86.64', '/uploads/phantaokhoi_image01_02_3e6d4002f7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:53.776000', '2023-05-08 17:19:53.776000', 1, 1),
(234, 'post_image02.jpg', NULL, NULL, 333, 217, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image02_3563e7838a.jpg\", \"hash\": \"thumbnail_post_image02_3563e7838a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image02.jpg\", \"path\": null, \"size\": 5.5, \"width\": 239, \"height\": 156}}', 'post_image02_3563e7838a', '.jpg', 'image/jpeg', '9.09', '/uploads/post_image02_3563e7838a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:54.341000', '2023-05-08 17:19:54.341000', 1, 1),
(235, 'phantaokhoi_image01_01.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phantaokhoi_image01_01_453c50f0af.jpg\", \"hash\": \"small_phantaokhoi_image01_01_453c50f0af\", \"mime\": \"image/jpeg\", \"name\": \"small_phantaokhoi_image01_01.jpg\", \"path\": null, \"size\": 399.76, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phantaokhoi_image01_01_453c50f0af.jpg\", \"hash\": \"thumbnail_phantaokhoi_image01_01_453c50f0af\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phantaokhoi_image01_01.jpg\", \"path\": null, \"size\": 47.87, \"width\": 156, \"height\": 156}}', 'phantaokhoi_image01_01_453c50f0af', '.jpg', 'image/jpeg', '141.51', '/uploads/phantaokhoi_image01_01_453c50f0af.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:54.422000', '2023-05-08 17:19:54.422000', 1, 1),
(236, 'post_image03.jpg', NULL, NULL, 950, 502, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image03_1fe73eb878.jpg\", \"hash\": \"small_post_image03_1fe73eb878\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image03.jpg\", \"path\": null, \"size\": 15.16, \"width\": 500, \"height\": 264}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_post_image03_1fe73eb878.jpg\", \"hash\": \"medium_post_image03_1fe73eb878\", \"mime\": \"image/jpeg\", \"name\": \"medium_post_image03.jpg\", \"path\": null, \"size\": 50.09, \"width\": 750, \"height\": 396}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image03_1fe73eb878.jpg\", \"hash\": \"thumbnail_post_image03_1fe73eb878\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image03.jpg\", \"path\": null, \"size\": 3.58, \"width\": 245, \"height\": 129}}', 'post_image03_1fe73eb878', '.jpg', 'image/jpeg', '93.19', '/uploads/post_image03_1fe73eb878.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:54.737000', '2023-05-08 17:19:54.737000', 1, 1),
(237, 'post_image03_01.jpg', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_post_image03_01_2c21f11682.jpg\", \"hash\": \"large_post_image03_01_2c21f11682\", \"mime\": \"image/jpeg\", \"name\": \"large_post_image03_01.jpg\", \"path\": null, \"size\": 75.95, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image03_01_2c21f11682.jpg\", \"hash\": \"small_post_image03_01_2c21f11682\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image03_01.jpg\", \"path\": null, \"size\": 25.88, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_post_image03_01_2c21f11682.jpg\", \"hash\": \"medium_post_image03_01_2c21f11682\", \"mime\": \"image/jpeg\", \"name\": \"medium_post_image03_01.jpg\", \"path\": null, \"size\": 48.48, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image03_01_2c21f11682.jpg\", \"hash\": \"thumbnail_post_image03_01_2c21f11682\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image03_01.jpg\", \"path\": null, \"size\": 4.22, \"width\": 156, \"height\": 156}}', 'post_image03_01_2c21f11682', '.jpg', 'image/jpeg', '78.84', '/uploads/post_image03_01_2c21f11682.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:54.758000', '2023-05-08 17:19:54.758000', 1, 1),
(238, 'post_image04.jpg', NULL, NULL, 800, 800, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image04_c62af5d574.jpg\", \"hash\": \"small_post_image04_c62af5d574\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image04.jpg\", \"path\": null, \"size\": 37.13, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_post_image04_c62af5d574.jpg\", \"hash\": \"medium_post_image04_c62af5d574\", \"mime\": \"image/jpeg\", \"name\": \"medium_post_image04.jpg\", \"path\": null, \"size\": 70.06, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image04_c62af5d574.jpg\", \"hash\": \"thumbnail_post_image04_c62af5d574\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image04.jpg\", \"path\": null, \"size\": 5.33, \"width\": 156, \"height\": 156}}', 'post_image04_c62af5d574', '.jpg', 'image/jpeg', '67.64', '/uploads/post_image04_c62af5d574.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:55.119000', '2023-05-08 17:19:55.119000', 1, 1),
(239, 'post_image01.jpg', NULL, NULL, 1280, 900, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_post_image01_04124567af.jpg\", \"hash\": \"large_post_image01_04124567af\", \"mime\": \"image/jpeg\", \"name\": \"large_post_image01.jpg\", \"path\": null, \"size\": 217.35, \"width\": 1000, \"height\": 703}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image01_04124567af.jpg\", \"hash\": \"small_post_image01_04124567af\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image01.jpg\", \"path\": null, \"size\": 63.47, \"width\": 500, \"height\": 352}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_post_image01_04124567af.jpg\", \"hash\": \"medium_post_image01_04124567af\", \"mime\": \"image/jpeg\", \"name\": \"medium_post_image01.jpg\", \"path\": null, \"size\": 131.46, \"width\": 750, \"height\": 527}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image01_04124567af.jpg\", \"hash\": \"thumbnail_post_image01_04124567af\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image01.jpg\", \"path\": null, \"size\": 13.6, \"width\": 222, \"height\": 156}}', 'post_image01_04124567af', '.jpg', 'image/jpeg', '257.45', '/uploads/post_image01_04124567af.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:55.195000', '2023-05-08 17:19:55.195000', 1, 1),
(240, 'post_image05_02.jpg', NULL, NULL, 1079, 1049, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_post_image05_02_128f694179.jpg\", \"hash\": \"large_post_image05_02_128f694179\", \"mime\": \"image/jpeg\", \"name\": \"large_post_image05_02.jpg\", \"path\": null, \"size\": 131.39, \"width\": 1000, \"height\": 972}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image05_02_128f694179.jpg\", \"hash\": \"small_post_image05_02_128f694179\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image05_02.jpg\", \"path\": null, \"size\": 30.31, \"width\": 500, \"height\": 486}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_post_image05_02_128f694179.jpg\", \"hash\": \"medium_post_image05_02_128f694179\", \"mime\": \"image/jpeg\", \"name\": \"medium_post_image05_02.jpg\", \"path\": null, \"size\": 69.78, \"width\": 750, \"height\": 729}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image05_02_128f694179.jpg\", \"hash\": \"thumbnail_post_image05_02_128f694179\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image05_02.jpg\", \"path\": null, \"size\": 4.87, \"width\": 160, \"height\": 156}}', 'post_image05_02_128f694179', '.jpg', 'image/jpeg', '161.21', '/uploads/post_image05_02_128f694179.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:55.851000', '2023-05-08 17:19:55.851000', 1, 1),
(241, 'sd_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image01_c97fb3aa73.jpg\", \"hash\": \"thumbnail_sd_image01_c97fb3aa73\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image01.jpg\", \"path\": null, \"size\": 9, \"width\": 156, \"height\": 156}}', 'sd_image01_c97fb3aa73', '.jpg', 'image/jpeg', '3.40', '/uploads/sd_image01_c97fb3aa73.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:56.015000', '2023-05-08 17:19:56.015000', 1, 1),
(242, 'post_image05_01.jpg', NULL, NULL, 1080, 1080, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_post_image05_01_6110886106.jpg\", \"hash\": \"large_post_image05_01_6110886106\", \"mime\": \"image/jpeg\", \"name\": \"large_post_image05_01.jpg\", \"path\": null, \"size\": 182.22, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image05_01_6110886106.jpg\", \"hash\": \"small_post_image05_01_6110886106\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image05_01.jpg\", \"path\": null, \"size\": 49.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_post_image05_01_6110886106.jpg\", \"hash\": \"medium_post_image05_01_6110886106\", \"mime\": \"image/jpeg\", \"name\": \"medium_post_image05_01.jpg\", \"path\": null, \"size\": 108.38, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image05_01_6110886106.jpg\", \"hash\": \"thumbnail_post_image05_01_6110886106\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image05_01.jpg\", \"path\": null, \"size\": 6.12, \"width\": 156, \"height\": 156}}', 'post_image05_01_6110886106', '.jpg', 'image/jpeg', '210.27', '/uploads/post_image05_01_6110886106.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:56.209000', '2023-05-08 17:19:56.209000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(243, 'sanpham.jpg', NULL, NULL, 1350, 900, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sanpham_adff1319af.jpg\", \"hash\": \"large_sanpham_adff1319af\", \"mime\": \"image/jpeg\", \"name\": \"large_sanpham.jpg\", \"path\": null, \"size\": 83.68, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sanpham_adff1319af.jpg\", \"hash\": \"small_sanpham_adff1319af\", \"mime\": \"image/jpeg\", \"name\": \"small_sanpham.jpg\", \"path\": null, \"size\": 27.93, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sanpham_adff1319af.jpg\", \"hash\": \"medium_sanpham_adff1319af\", \"mime\": \"image/jpeg\", \"name\": \"medium_sanpham.jpg\", \"path\": null, \"size\": 53.4, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sanpham_adff1319af.jpg\", \"hash\": \"thumbnail_sanpham_adff1319af\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sanpham.jpg\", \"path\": null, \"size\": 8.11, \"width\": 234, \"height\": 156}}', 'sanpham_adff1319af', '.jpg', 'image/jpeg', '131.30', '/uploads/sanpham_adff1319af.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:56.743000', '2023-05-08 17:19:56.743000', 1, 1),
(244, 'post_image05.jpg', NULL, NULL, 620, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image05_f41e92f436.jpg\", \"hash\": \"small_post_image05_f41e92f436\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image05.jpg\", \"path\": null, \"size\": 286.75, \"width\": 500, \"height\": 484}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image05_f41e92f436.jpg\", \"hash\": \"thumbnail_post_image05_f41e92f436\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image05.jpg\", \"path\": null, \"size\": 40.73, \"width\": 161, \"height\": 156}}', 'post_image05_f41e92f436', '.jpg', 'image/jpeg', '105.85', '/uploads/post_image05_f41e92f436.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:56.754000', '2023-05-08 17:19:56.754000', 1, 1),
(245, 'sd_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image02_dfbd2757e3.jpg\", \"hash\": \"thumbnail_sd_image02_dfbd2757e3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image02.jpg\", \"path\": null, \"size\": 2.03, \"width\": 156, \"height\": 156}}', 'sd_image02_dfbd2757e3', '.jpg', 'image/jpeg', '11.09', '/uploads/sd_image02_dfbd2757e3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:56.809000', '2023-05-08 17:19:56.809000', 1, 1),
(246, 'sd_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image03_2aca630807.jpg\", \"hash\": \"thumbnail_sd_image03_2aca630807\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image03.jpg\", \"path\": null, \"size\": 2.01, \"width\": 156, \"height\": 156}}', 'sd_image03_2aca630807', '.jpg', 'image/jpeg', '10.12', '/uploads/sd_image03_2aca630807.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:57.562000', '2023-05-08 17:19:57.562000', 1, 1),
(247, 'sd_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image04_87cdc4dbb7.jpg\", \"hash\": \"thumbnail_sd_image04_87cdc4dbb7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image04.jpg\", \"path\": null, \"size\": 1.98, \"width\": 156, \"height\": 156}}', 'sd_image04_87cdc4dbb7', '.jpg', 'image/jpeg', '10.13', '/uploads/sd_image04_87cdc4dbb7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:57.573000', '2023-05-08 17:19:57.573000', 1, 1),
(248, 'sd_image09.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image09_a92f00d039.jpg\", \"hash\": \"thumbnail_sd_image09_a92f00d039\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image09.jpg\", \"path\": null, \"size\": 2.27, \"width\": 156, \"height\": 156}}', 'sd_image09_a92f00d039', '.jpg', 'image/jpeg', '13.36', '/uploads/sd_image09_a92f00d039.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:57.586000', '2023-05-08 17:19:57.586000', 1, 1),
(249, 'sd_image01_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image01_02_d96359fdd9.jpg\", \"hash\": \"thumbnail_sd_image01_02_d96359fdd9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image01_02.jpg\", \"path\": null, \"size\": 49.67, \"width\": 156, \"height\": 156}}', 'sd_image01_02_d96359fdd9', '.jpg', 'image/jpeg', '89.68', '/uploads/sd_image01_02_d96359fdd9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:57.691000', '2023-05-08 17:19:57.691000', 1, 1),
(250, 'post_image05_03.jpg', NULL, NULL, 960, 960, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_post_image05_03_ad554f4d1f.jpg\", \"hash\": \"small_post_image05_03_ad554f4d1f\", \"mime\": \"image/jpeg\", \"name\": \"small_post_image05_03.jpg\", \"path\": null, \"size\": 152.63, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_post_image05_03_ad554f4d1f.jpg\", \"hash\": \"medium_post_image05_03_ad554f4d1f\", \"mime\": \"image/jpeg\", \"name\": \"medium_post_image05_03.jpg\", \"path\": null, \"size\": 310.29, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_post_image05_03_ad554f4d1f.jpg\", \"hash\": \"thumbnail_post_image05_03_ad554f4d1f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_post_image05_03.jpg\", \"path\": null, \"size\": 20.89, \"width\": 156, \"height\": 156}}', 'post_image05_03_ad554f4d1f', '.jpg', 'image/jpeg', '114.13', '/uploads/post_image05_03_ad554f4d1f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:57.693000', '2023-05-08 17:19:57.693000', 1, 1),
(251, 'sd_image08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image08_490868926a.jpg\", \"hash\": \"thumbnail_sd_image08_490868926a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image08.jpg\", \"path\": null, \"size\": 1.75, \"width\": 156, \"height\": 156}}', 'sd_image08_490868926a', '.jpg', 'image/jpeg', '9.93', '/uploads/sd_image08_490868926a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:57.908000', '2023-05-08 17:19:57.908000', 1, 1),
(252, 'sd_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image01_01_930cd44277.jpg\", \"hash\": \"thumbnail_sd_image01_01_930cd44277\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image01_01.jpg\", \"path\": null, \"size\": 54.45, \"width\": 156, \"height\": 156}}', 'sd_image01_01_930cd44277', '.jpg', 'image/jpeg', '105.66', '/uploads/sd_image01_01_930cd44277.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:58.492000', '2023-05-08 17:19:58.492000', 1, 1),
(253, 'sd_image11.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image11_9e13ad0f66.jpg\", \"hash\": \"thumbnail_sd_image11_9e13ad0f66\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image11.jpg\", \"path\": null, \"size\": 2.47, \"width\": 156, \"height\": 156}}', 'sd_image11_9e13ad0f66', '.jpg', 'image/jpeg', '13.16', '/uploads/sd_image11_9e13ad0f66.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:58.527000', '2023-05-08 17:19:58.527000', 1, 1),
(254, 'sd_image10.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sd_image10_5d6630f2ac.jpg\", \"hash\": \"thumbnail_sd_image10_5d6630f2ac\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sd_image10.jpg\", \"path\": null, \"size\": 2.38, \"width\": 156, \"height\": 156}}', 'sd_image10_5d6630f2ac', '.jpg', 'image/jpeg', '13.59', '/uploads/sd_image10_5d6630f2ac.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:58.530000', '2023-05-08 17:19:58.530000', 1, 1),
(255, 'sdt_image01.jpg', NULL, NULL, 1200, 1200, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sdt_image01_8942706745.jpg\", \"hash\": \"large_sdt_image01_8942706745\", \"mime\": \"image/jpeg\", \"name\": \"large_sdt_image01.jpg\", \"path\": null, \"size\": 52.73, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sdt_image01_8942706745.jpg\", \"hash\": \"small_sdt_image01_8942706745\", \"mime\": \"image/jpeg\", \"name\": \"small_sdt_image01.jpg\", \"path\": null, \"size\": 18.38, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sdt_image01_8942706745.jpg\", \"hash\": \"medium_sdt_image01_8942706745\", \"mime\": \"image/jpeg\", \"name\": \"medium_sdt_image01.jpg\", \"path\": null, \"size\": 34.21, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image01_8942706745.jpg\", \"hash\": \"thumbnail_sdt_image01_8942706745\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image01.jpg\", \"path\": null, \"size\": 2.65, \"width\": 156, \"height\": 156}}', 'sdt_image01_8942706745', '.jpg', 'image/jpeg', '71.46', '/uploads/sdt_image01_8942706745.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:58.786000', '2023-05-08 17:19:58.786000', 1, 1),
(256, 'sdt_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image02_4197029ef2.jpg\", \"hash\": \"thumbnail_sdt_image02_4197029ef2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image02.jpg\", \"path\": null, \"size\": 12.15, \"width\": 156, \"height\": 156}}', 'sdt_image02_4197029ef2', '.jpg', 'image/jpeg', '21.38', '/uploads/sdt_image02_4197029ef2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:58.907000', '2023-05-08 17:19:58.907000', 1, 1),
(257, 'sdt_image01_01.jpg', NULL, NULL, 800, 800, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sdt_image01_01_38581fe497.jpg\", \"hash\": \"small_sdt_image01_01_38581fe497\", \"mime\": \"image/jpeg\", \"name\": \"small_sdt_image01_01.jpg\", \"path\": null, \"size\": 34.44, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sdt_image01_01_38581fe497.jpg\", \"hash\": \"medium_sdt_image01_01_38581fe497\", \"mime\": \"image/jpeg\", \"name\": \"medium_sdt_image01_01.jpg\", \"path\": null, \"size\": 62.95, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image01_01_38581fe497.jpg\", \"hash\": \"thumbnail_sdt_image01_01_38581fe497\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image01_01.jpg\", \"path\": null, \"size\": 5.36, \"width\": 156, \"height\": 156}}', 'sdt_image01_01_38581fe497', '.jpg', 'image/jpeg', '69.10', '/uploads/sdt_image01_01_38581fe497.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:58.926000', '2023-05-08 17:19:58.926000', 1, 1),
(258, 'sdt_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image04_89100b9801.jpg\", \"hash\": \"thumbnail_sdt_image04_89100b9801\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image04.jpg\", \"path\": null, \"size\": 1.91, \"width\": 156, \"height\": 156}}', 'sdt_image04_89100b9801', '.jpg', 'image/jpeg', '9.67', '/uploads/sdt_image04_89100b9801.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:59.575000', '2023-05-08 17:19:59.575000', 1, 1),
(259, 'sdt_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image05_a3c88741b8.jpg\", \"hash\": \"thumbnail_sdt_image05_a3c88741b8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image05.jpg\", \"path\": null, \"size\": 1.89, \"width\": 156, \"height\": 156}}', 'sdt_image05_a3c88741b8', '.jpg', 'image/jpeg', '2.76', '/uploads/sdt_image05_a3c88741b8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:59.614000', '2023-05-08 17:19:59.614000', 1, 1),
(260, 'sdt_image06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image06_414d7b2eb9.jpg\", \"hash\": \"thumbnail_sdt_image06_414d7b2eb9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image06.jpg\", \"path\": null, \"size\": 9.84, \"width\": 156, \"height\": 156}}', 'sdt_image06_414d7b2eb9', '.jpg', 'image/jpeg', '13.98', '/uploads/sdt_image06_414d7b2eb9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:59.635000', '2023-05-08 17:19:59.635000', 1, 1),
(261, 'sdt_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image07_b941e28042.jpg\", \"hash\": \"thumbnail_sdt_image07_b941e28042\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image07.jpg\", \"path\": null, \"size\": 34.33, \"width\": 156, \"height\": 156}}', 'sdt_image07_b941e28042', '.jpg', 'image/jpeg', '12.70', '/uploads/sdt_image07_b941e28042.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:59.673000', '2023-05-08 17:19:59.673000', 1, 1),
(262, 'sdt_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image03_88297b52f8.jpg\", \"hash\": \"thumbnail_sdt_image03_88297b52f8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image03.jpg\", \"path\": null, \"size\": 11.76, \"width\": 156, \"height\": 156}}', 'sdt_image03_88297b52f8', '.jpg', 'image/jpeg', '22.18', '/uploads/sdt_image03_88297b52f8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:19:59.680000', '2023-05-08 17:19:59.680000', 1, 1),
(263, 'serum_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image01_17a888dcae.jpg\", \"hash\": \"thumbnail_serum_image01_17a888dcae\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image01.jpg\", \"path\": null, \"size\": 1.66, \"width\": 156, \"height\": 156}}', 'serum_image01_17a888dcae', '.jpg', 'image/jpeg', '2.41', '/uploads/serum_image01_17a888dcae.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:00.230000', '2023-05-08 17:20:00.230000', 1, 1),
(264, 'serum_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image04_20c7e44580.jpg\", \"hash\": \"thumbnail_serum_image04_20c7e44580\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image04.jpg\", \"path\": null, \"size\": 1.76, \"width\": 156, \"height\": 156}}', 'serum_image04_20c7e44580', '.jpg', 'image/jpeg', '2.50', '/uploads/serum_image04_20c7e44580.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:00.424000', '2023-05-08 17:20:00.424000', 1, 1),
(265, 'serum_image03.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image03_e63534bbf0.jpg\", \"hash\": \"thumbnail_serum_image03_e63534bbf0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image03.jpg\", \"path\": null, \"size\": 9.72, \"width\": 156, \"height\": 156}}', 'serum_image03_e63534bbf0', '.jpg', 'image/jpeg', '3.56', '/uploads/serum_image03_e63534bbf0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:00.448000', '2023-05-08 17:20:00.448000', 1, 1),
(266, 'serum_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image05_7ca7413047.jpg\", \"hash\": \"thumbnail_serum_image05_7ca7413047\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image05.jpg\", \"path\": null, \"size\": 1.77, \"width\": 156, \"height\": 156}}', 'serum_image05_7ca7413047', '.jpg', 'image/jpeg', '2.72', '/uploads/serum_image05_7ca7413047.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:00.506000', '2023-05-08 17:20:00.506000', 1, 1),
(267, 'serum_image06.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image06_b872a1c390.jpg\", \"hash\": \"thumbnail_serum_image06_b872a1c390\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image06.jpg\", \"path\": null, \"size\": 1.9, \"width\": 156, \"height\": 156}}', 'serum_image06_b872a1c390', '.jpg', 'image/jpeg', '2.93', '/uploads/serum_image06_b872a1c390.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:00.510000', '2023-05-08 17:20:00.510000', 1, 1),
(268, 'serum_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image02_42b5339f3c.jpg\", \"hash\": \"thumbnail_serum_image02_42b5339f3c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image02.jpg\", \"path\": null, \"size\": 1.4, \"width\": 156, \"height\": 156}}', 'serum_image02_42b5339f3c', '.jpg', 'image/jpeg', '6.88', '/uploads/serum_image02_42b5339f3c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:00.838000', '2023-05-08 17:20:00.838000', 1, 1),
(269, 'serum_image07.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image07_401485c9bb.jpg\", \"hash\": \"thumbnail_serum_image07_401485c9bb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image07.jpg\", \"path\": null, \"size\": 1.63, \"width\": 156, \"height\": 156}}', 'serum_image07_401485c9bb', '.jpg', 'image/jpeg', '8.95', '/uploads/serum_image07_401485c9bb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.008000', '2023-05-08 17:20:01.008000', 1, 1),
(270, 'sdt_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sdt_image02_01_90e195dc6c.jpg\", \"hash\": \"thumbnail_sdt_image02_01_90e195dc6c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sdt_image02_01.jpg\", \"path\": null, \"size\": 60.31, \"width\": 156, \"height\": 156}}', 'sdt_image02_01_90e195dc6c', '.jpg', 'image/jpeg', '107.68', '/uploads/sdt_image02_01_90e195dc6c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.122000', '2023-05-08 17:20:01.122000', 1, 1),
(271, 'serum_image08.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image08_5c85e17ba9.jpg\", \"hash\": \"thumbnail_serum_image08_5c85e17ba9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image08.jpg\", \"path\": null, \"size\": 2.38, \"width\": 156, \"height\": 156}}', 'serum_image08_5c85e17ba9', '.jpg', 'image/jpeg', '3.44', '/uploads/serum_image08_5c85e17ba9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.141000', '2023-05-08 17:20:01.141000', 1, 1),
(272, 'serum_image10.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image10_7ce72436f6.jpg\", \"hash\": \"thumbnail_serum_image10_7ce72436f6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image10.jpg\", \"path\": null, \"size\": 1.21, \"width\": 156, \"height\": 156}}', 'serum_image10_7ce72436f6', '.jpg', 'image/jpeg', '6.02', '/uploads/serum_image10_7ce72436f6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.192000', '2023-05-08 17:20:01.192000', 1, 1),
(273, 'serum_image09.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image09_47e466ac62.jpg\", \"hash\": \"thumbnail_serum_image09_47e466ac62\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image09.jpg\", \"path\": null, \"size\": 1.89, \"width\": 156, \"height\": 156}}', 'serum_image09_47e466ac62', '.jpg', 'image/jpeg', '2.62', '/uploads/serum_image09_47e466ac62.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.205000', '2023-05-08 17:20:01.205000', 1, 1),
(274, 'serum_image12.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image12_44b70055a8.jpg\", \"hash\": \"thumbnail_serum_image12_44b70055a8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image12.jpg\", \"path\": null, \"size\": 1.6, \"width\": 156, \"height\": 156}}', 'serum_image12_44b70055a8', '.jpg', 'image/jpeg', '2.39', '/uploads/serum_image12_44b70055a8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.674000', '2023-05-08 17:20:01.674000', 1, 1),
(275, 'serum_image11.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image11_0857d0013c.jpg\", \"hash\": \"thumbnail_serum_image11_0857d0013c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image11.jpg\", \"path\": null, \"size\": 12.68, \"width\": 156, \"height\": 156}}', 'serum_image11_0857d0013c', '.jpg', 'image/jpeg', '23.80', '/uploads/serum_image11_0857d0013c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.711000', '2023-05-08 17:20:01.711000', 1, 1),
(276, 'serum_image14.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image14_d70516f958.jpg\", \"hash\": \"thumbnail_serum_image14_d70516f958\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image14.jpg\", \"path\": null, \"size\": 1.94, \"width\": 156, \"height\": 156}}', 'serum_image14_d70516f958', '.jpg', 'image/jpeg', '2.95', '/uploads/serum_image14_d70516f958.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.825000', '2023-05-08 17:20:01.825000', 1, 1),
(277, 'serum_image13.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image13_96bcb1a628.jpg\", \"hash\": \"thumbnail_serum_image13_96bcb1a628\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image13.jpg\", \"path\": null, \"size\": 2.18, \"width\": 156, \"height\": 156}}', 'serum_image13_96bcb1a628', '.jpg', 'image/jpeg', '3.41', '/uploads/serum_image13_96bcb1a628.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.830000', '2023-05-08 17:20:01.830000', 1, 1),
(278, 'serumtoc_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serumtoc_image01_57f8ee83ac.jpg\", \"hash\": \"thumbnail_serumtoc_image01_57f8ee83ac\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serumtoc_image01.jpg\", \"path\": null, \"size\": 2.03, \"width\": 156, \"height\": 156}}', 'serumtoc_image01_57f8ee83ac', '.jpg', 'image/jpeg', '10.87', '/uploads/serumtoc_image01_57f8ee83ac.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:01.876000', '2023-05-08 17:20:01.876000', 1, 1),
(279, 'serum_image11_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image11_01_87dcdf8478.jpg\", \"hash\": \"thumbnail_serum_image11_01_87dcdf8478\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image11_01.jpg\", \"path\": null, \"size\": 20.16, \"width\": 156, \"height\": 156}}', 'serum_image11_01_87dcdf8478', '.jpg', 'image/jpeg', '33.22', '/uploads/serum_image11_01_87dcdf8478.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:02.285000', '2023-05-08 17:20:02.285000', 1, 1),
(280, 'serum_image15.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serum_image15_495cf404ba.jpg\", \"hash\": \"thumbnail_serum_image15_495cf404ba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serum_image15.jpg\", \"path\": null, \"size\": 1.08, \"width\": 156, \"height\": 156}}', 'serum_image15_495cf404ba', '.jpg', 'image/jpeg', '1.43', '/uploads/serum_image15_495cf404ba.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:02.327000', '2023-05-08 17:20:02.327000', 1, 1),
(281, 'serumtoc_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_serumtoc_image02_23256ca52e.jpg\", \"hash\": \"thumbnail_serumtoc_image02_23256ca52e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_serumtoc_image02.jpg\", \"path\": null, \"size\": 2.27, \"width\": 156, \"height\": 156}}', 'serumtoc_image02_23256ca52e', '.jpg', 'image/jpeg', '3.26', '/uploads/serumtoc_image02_23256ca52e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:02.431000', '2023-05-08 17:20:02.431000', 1, 1),
(282, 'slide02.jpg', NULL, NULL, 2597, 1032, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_slide02_195e9741ba.jpg\", \"hash\": \"large_slide02_195e9741ba\", \"mime\": \"image/jpeg\", \"name\": \"large_slide02.jpg\", \"path\": null, \"size\": 51.42, \"width\": 1000, \"height\": 397}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_slide02_195e9741ba.jpg\", \"hash\": \"small_slide02_195e9741ba\", \"mime\": \"image/jpeg\", \"name\": \"small_slide02.jpg\", \"path\": null, \"size\": 18.35, \"width\": 500, \"height\": 199}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_slide02_195e9741ba.jpg\", \"hash\": \"medium_slide02_195e9741ba\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide02.jpg\", \"path\": null, \"size\": 33.33, \"width\": 750, \"height\": 298}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_slide02_195e9741ba.jpg\", \"hash\": \"thumbnail_slide02_195e9741ba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide02.jpg\", \"path\": null, \"size\": 6.03, \"width\": 245, \"height\": 98}}', 'slide02_195e9741ba', '.jpg', 'image/jpeg', '202.43', '/uploads/slide02_195e9741ba.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:03.157000', '2023-05-08 17:20:03.157000', 1, 1),
(283, 'slide03.jpg', NULL, NULL, 2597, 1032, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_slide03_0ddf17d5fe.jpg\", \"hash\": \"large_slide03_0ddf17d5fe\", \"mime\": \"image/jpeg\", \"name\": \"large_slide03.jpg\", \"path\": null, \"size\": 50.34, \"width\": 1000, \"height\": 397}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_slide03_0ddf17d5fe.jpg\", \"hash\": \"small_slide03_0ddf17d5fe\", \"mime\": \"image/jpeg\", \"name\": \"small_slide03.jpg\", \"path\": null, \"size\": 17.61, \"width\": 500, \"height\": 199}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_slide03_0ddf17d5fe.jpg\", \"hash\": \"medium_slide03_0ddf17d5fe\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide03.jpg\", \"path\": null, \"size\": 33.26, \"width\": 750, \"height\": 298}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_slide03_0ddf17d5fe.jpg\", \"hash\": \"thumbnail_slide03_0ddf17d5fe\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide03.jpg\", \"path\": null, \"size\": 6.2, \"width\": 245, \"height\": 98}}', 'slide03_0ddf17d5fe', '.jpg', 'image/jpeg', '230.72', '/uploads/slide03_0ddf17d5fe.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:03.295000', '2023-05-08 17:20:03.295000', 1, 1),
(284, 'slide01.jpg', NULL, NULL, 2597, 1032, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_slide01_fd84a26ccf.jpg\", \"hash\": \"large_slide01_fd84a26ccf\", \"mime\": \"image/jpeg\", \"name\": \"large_slide01.jpg\", \"path\": null, \"size\": 54.28, \"width\": 1000, \"height\": 397}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_slide01_fd84a26ccf.jpg\", \"hash\": \"small_slide01_fd84a26ccf\", \"mime\": \"image/jpeg\", \"name\": \"small_slide01.jpg\", \"path\": null, \"size\": 18.48, \"width\": 500, \"height\": 199}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_slide01_fd84a26ccf.jpg\", \"hash\": \"medium_slide01_fd84a26ccf\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide01.jpg\", \"path\": null, \"size\": 35.65, \"width\": 750, \"height\": 298}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_slide01_fd84a26ccf.jpg\", \"hash\": \"thumbnail_slide01_fd84a26ccf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide01.jpg\", \"path\": null, \"size\": 6.17, \"width\": 245, \"height\": 98}}', 'slide01_fd84a26ccf', '.jpg', 'image/jpeg', '263.75', '/uploads/slide01_fd84a26ccf.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:03.298000', '2023-05-08 17:20:03.298000', 1, 1),
(285, 'slide05.jpg', NULL, NULL, 933, 426, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_slide05_87c0fcb9e9.jpg\", \"hash\": \"small_slide05_87c0fcb9e9\", \"mime\": \"image/jpeg\", \"name\": \"small_slide05.jpg\", \"path\": null, \"size\": 24.78, \"width\": 500, \"height\": 228}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_slide05_87c0fcb9e9.jpg\", \"hash\": \"medium_slide05_87c0fcb9e9\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide05.jpg\", \"path\": null, \"size\": 46.35, \"width\": 750, \"height\": 342}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_slide05_87c0fcb9e9.jpg\", \"hash\": \"thumbnail_slide05_87c0fcb9e9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide05.jpg\", \"path\": null, \"size\": 7.58, \"width\": 245, \"height\": 112}}', 'slide05_87c0fcb9e9', '.jpg', 'image/jpeg', '67.49', '/uploads/slide05_87c0fcb9e9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:03.527000', '2023-05-08 17:20:03.527000', 1, 1),
(286, 'slide06.jpg', NULL, NULL, 986, 450, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_slide06_fe07601e7f.jpg\", \"hash\": \"small_slide06_fe07601e7f\", \"mime\": \"image/jpeg\", \"name\": \"small_slide06.jpg\", \"path\": null, \"size\": 26.48, \"width\": 500, \"height\": 228}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_slide06_fe07601e7f.jpg\", \"hash\": \"medium_slide06_fe07601e7f\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide06.jpg\", \"path\": null, \"size\": 48.31, \"width\": 750, \"height\": 342}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_slide06_fe07601e7f.jpg\", \"hash\": \"thumbnail_slide06_fe07601e7f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide06.jpg\", \"path\": null, \"size\": 8.57, \"width\": 245, \"height\": 112}}', 'slide06_fe07601e7f', '.jpg', 'image/jpeg', '74.38', '/uploads/slide06_fe07601e7f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:03.611000', '2023-05-08 17:20:03.611000', 1, 1),
(287, 'slide04.jpg', NULL, NULL, 2597, 1032, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_slide04_c72ab04f3e.jpg\", \"hash\": \"large_slide04_c72ab04f3e\", \"mime\": \"image/jpeg\", \"name\": \"large_slide04.jpg\", \"path\": null, \"size\": 54.92, \"width\": 1000, \"height\": 397}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_slide04_c72ab04f3e.jpg\", \"hash\": \"small_slide04_c72ab04f3e\", \"mime\": \"image/jpeg\", \"name\": \"small_slide04.jpg\", \"path\": null, \"size\": 19.03, \"width\": 500, \"height\": 199}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_slide04_c72ab04f3e.jpg\", \"hash\": \"medium_slide04_c72ab04f3e\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide04.jpg\", \"path\": null, \"size\": 35.89, \"width\": 750, \"height\": 298}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_slide04_c72ab04f3e.jpg\", \"hash\": \"thumbnail_slide04_c72ab04f3e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide04.jpg\", \"path\": null, \"size\": 6.05, \"width\": 245, \"height\": 98}}', 'slide04_c72ab04f3e', '.jpg', 'image/jpeg', '257.95', '/uploads/slide04_c72ab04f3e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:03.862000', '2023-05-08 17:20:03.862000', 1, 1),
(288, 'sm_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image01_f0b3439f32.jpg\", \"hash\": \"thumbnail_sm_image01_f0b3439f32\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image01.jpg\", \"path\": null, \"size\": 3.08, \"width\": 156, \"height\": 156}}', 'sm_image01_f0b3439f32', '.jpg', 'image/jpeg', '13.29', '/uploads/sm_image01_f0b3439f32.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:04.206000', '2023-05-08 17:20:04.206000', 1, 1),
(289, 'sm_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image01_01_17e7ad07c6.jpg\", \"hash\": \"thumbnail_sm_image01_01_17e7ad07c6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image01_01.jpg\", \"path\": null, \"size\": 3.1, \"width\": 156, \"height\": 156}}', 'sm_image01_01_17e7ad07c6', '.jpg', 'image/jpeg', '13.66', '/uploads/sm_image01_01_17e7ad07c6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:04.247000', '2023-05-08 17:20:04.247000', 1, 1),
(290, 'sm_image01_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image01_02_f7e45d62d5.jpg\", \"hash\": \"thumbnail_sm_image01_02_f7e45d62d5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image01_02.jpg\", \"path\": null, \"size\": 3.21, \"width\": 156, \"height\": 156}}', 'sm_image01_02_f7e45d62d5', '.jpg', 'image/jpeg', '13.81', '/uploads/sm_image01_02_f7e45d62d5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:04.262000', '2023-05-08 17:20:04.262000', 1, 1),
(291, 'sm_image01_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image01_03_fe005cbf1e.jpg\", \"hash\": \"thumbnail_sm_image01_03_fe005cbf1e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image01_03.jpg\", \"path\": null, \"size\": 3.28, \"width\": 156, \"height\": 156}}', 'sm_image01_03_fe005cbf1e', '.jpg', 'image/jpeg', '13.97', '/uploads/sm_image01_03_fe005cbf1e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:04.346000', '2023-05-08 17:20:04.346000', 1, 1),
(292, 'slide07.jpg', NULL, NULL, 991, 467, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_slide07_9ff9060105.jpg\", \"hash\": \"small_slide07_9ff9060105\", \"mime\": \"image/jpeg\", \"name\": \"small_slide07.jpg\", \"path\": null, \"size\": 27.36, \"width\": 500, \"height\": 236}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_slide07_9ff9060105.jpg\", \"hash\": \"medium_slide07_9ff9060105\", \"mime\": \"image/jpeg\", \"name\": \"medium_slide07.jpg\", \"path\": null, \"size\": 52.16, \"width\": 750, \"height\": 353}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_slide07_9ff9060105.jpg\", \"hash\": \"thumbnail_slide07_9ff9060105\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_slide07.jpg\", \"path\": null, \"size\": 8.16, \"width\": 245, \"height\": 115}}', 'slide07_9ff9060105', '.jpg', 'image/jpeg', '83.50', '/uploads/slide07_9ff9060105.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:04.398000', '2023-05-08 17:20:04.398000', 1, 1),
(293, 'sm_image01_04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image01_04_ea85c88232.jpg\", \"hash\": \"thumbnail_sm_image01_04_ea85c88232\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image01_04.jpg\", \"path\": null, \"size\": 3.27, \"width\": 156, \"height\": 156}}', 'sm_image01_04_ea85c88232', '.jpg', 'image/jpeg', '13.94', '/uploads/sm_image01_04_ea85c88232.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:04.517000', '2023-05-08 17:20:04.517000', 1, 1),
(294, 'sm_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image02_3eea4a7325.jpg\", \"hash\": \"thumbnail_sm_image02_3eea4a7325\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image02.jpg\", \"path\": null, \"size\": 3.29, \"width\": 156, \"height\": 156}}', 'sm_image02_3eea4a7325', '.jpg', 'image/jpeg', '14.90', '/uploads/sm_image02_3eea4a7325.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:04.608000', '2023-05-08 17:20:04.608000', 1, 1),
(295, 'sm_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image03_01_f84fcb3e1d.jpg\", \"hash\": \"thumbnail_sm_image03_01_f84fcb3e1d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image03_01.jpg\", \"path\": null, \"size\": 17.2, \"width\": 156, \"height\": 156}}', 'sm_image03_01_f84fcb3e1d', '.jpg', 'image/jpeg', '25.65', '/uploads/sm_image03_01_f84fcb3e1d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:05.511000', '2023-05-08 17:20:05.511000', 1, 1),
(296, 'sm_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image03_e4f4cf567e.jpg\", \"hash\": \"thumbnail_sm_image03_e4f4cf567e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image03.jpg\", \"path\": null, \"size\": 18.36, \"width\": 156, \"height\": 156}}', 'sm_image03_e4f4cf567e', '.jpg', 'image/jpeg', '27.26', '/uploads/sm_image03_e4f4cf567e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:05.514000', '2023-05-08 17:20:05.514000', 1, 1),
(297, 'sm_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image02_01_79fb5e35e0.jpg\", \"hash\": \"thumbnail_sm_image02_01_79fb5e35e0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image02_01.jpg\", \"path\": null, \"size\": 19.02, \"width\": 156, \"height\": 156}}', 'sm_image02_01_79fb5e35e0', '.jpg', 'image/jpeg', '34.30', '/uploads/sm_image02_01_79fb5e35e0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:05.529000', '2023-05-08 17:20:05.529000', 1, 1),
(298, 'sm_image03_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image03_02_aafb07f8b2.jpg\", \"hash\": \"thumbnail_sm_image03_02_aafb07f8b2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image03_02.jpg\", \"path\": null, \"size\": 18.16, \"width\": 156, \"height\": 156}}', 'sm_image03_02_aafb07f8b2', '.jpg', 'image/jpeg', '27.63', '/uploads/sm_image03_02_aafb07f8b2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:05.532000', '2023-05-08 17:20:05.532000', 1, 1),
(299, 'sm_image04_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image04_01_452f924170.jpg\", \"hash\": \"thumbnail_sm_image04_01_452f924170\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image04_01.jpg\", \"path\": null, \"size\": 16.37, \"width\": 156, \"height\": 156}}', 'sm_image04_01_452f924170', '.jpg', 'image/jpeg', '24.92', '/uploads/sm_image04_01_452f924170.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:05.710000', '2023-05-08 17:20:05.710000', 1, 1),
(300, 'sm_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image04_e0c62b6775.jpg\", \"hash\": \"thumbnail_sm_image04_e0c62b6775\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image04.jpg\", \"path\": null, \"size\": 16.89, \"width\": 156, \"height\": 156}}', 'sm_image04_e0c62b6775', '.jpg', 'image/jpeg', '27.19', '/uploads/sm_image04_e0c62b6775.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:05.827000', '2023-05-08 17:20:05.827000', 1, 1),
(301, 'sm_image05_01.jpg', NULL, NULL, 411, 443, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image05_01_e474705d52.jpg\", \"hash\": \"thumbnail_sm_image05_01_e474705d52\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image05_01.jpg\", \"path\": null, \"size\": 3.84, \"width\": 145, \"height\": 156}}', 'sm_image05_01_e474705d52', '.jpg', 'image/jpeg', '16.05', '/uploads/sm_image05_01_e474705d52.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:06.443000', '2023-05-08 17:20:06.443000', 1, 1),
(302, 'sm_image05.jpg', NULL, NULL, 402, 442, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image05_e21018a178.jpg\", \"hash\": \"thumbnail_sm_image05_e21018a178\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image05.jpg\", \"path\": null, \"size\": 3.72, \"width\": 142, \"height\": 156}}', 'sm_image05_e21018a178', '.jpg', 'image/jpeg', '16.17', '/uploads/sm_image05_e21018a178.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:06.487000', '2023-05-08 17:20:06.487000', 1, 1),
(303, 'sm_image05_02.jpg', NULL, NULL, 423, 420, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image05_02_5704d4dfdf.jpg\", \"hash\": \"thumbnail_sm_image05_02_5704d4dfdf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image05_02.jpg\", \"path\": null, \"size\": 3.64, \"width\": 157, \"height\": 156}}', 'sm_image05_02_5704d4dfdf', '.jpg', 'image/jpeg', '14.80', '/uploads/sm_image05_02_5704d4dfdf.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:06.590000', '2023-05-08 17:20:06.590000', 1, 1),
(304, 'sm_image05_03.jpg', NULL, NULL, 417, 420, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image05_03_9e8c5aa2fc.jpg\", \"hash\": \"thumbnail_sm_image05_03_9e8c5aa2fc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image05_03.jpg\", \"path\": null, \"size\": 3.8, \"width\": 155, \"height\": 156}}', 'sm_image05_03_9e8c5aa2fc', '.jpg', 'image/jpeg', '15.07', '/uploads/sm_image05_03_9e8c5aa2fc.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:06.641000', '2023-05-08 17:20:06.641000', 1, 1),
(305, 'sm_image04_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image04_02_e8937203b9.jpg\", \"hash\": \"thumbnail_sm_image04_02_e8937203b9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image04_02.jpg\", \"path\": null, \"size\": 16.5, \"width\": 156, \"height\": 156}}', 'sm_image04_02_e8937203b9', '.jpg', 'image/jpeg', '25.15', '/uploads/sm_image04_02_e8937203b9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:06.696000', '2023-05-08 17:20:06.696000', 1, 1),
(306, 'sm_image04_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image04_03_e6fa4b471c.jpg\", \"hash\": \"thumbnail_sm_image04_03_e6fa4b471c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image04_03.jpg\", \"path\": null, \"size\": 16.7, \"width\": 156, \"height\": 156}}', 'sm_image04_03_e6fa4b471c', '.jpg', 'image/jpeg', '25.59', '/uploads/sm_image04_03_e6fa4b471c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:06.878000', '2023-05-08 17:20:06.878000', 1, 1),
(307, 'sm_image05_04.jpg', NULL, NULL, 413, 419, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image05_04_434f80f787.jpg\", \"hash\": \"thumbnail_sm_image05_04_434f80f787\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image05_04.jpg\", \"path\": null, \"size\": 3.79, \"width\": 154, \"height\": 156}}', 'sm_image05_04_434f80f787', '.jpg', 'image/jpeg', '15.07', '/uploads/sm_image05_04_434f80f787.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:07.216000', '2023-05-08 17:20:07.216000', 1, 1),
(308, 'sm_image06.jpg', NULL, NULL, 350, 407, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image06_778e39d6d2.jpg\", \"hash\": \"thumbnail_sm_image06_778e39d6d2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image06.jpg\", \"path\": null, \"size\": 3.31, \"width\": 134, \"height\": 156}}', 'sm_image06_778e39d6d2', '.jpg', 'image/jpeg', '13.95', '/uploads/sm_image06_778e39d6d2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:07.259000', '2023-05-08 17:20:07.259000', 1, 1),
(309, 'sm_image06_02.jpg', NULL, NULL, 362, 415, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image06_02_b05a71beaf.jpg\", \"hash\": \"thumbnail_sm_image06_02_b05a71beaf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image06_02.jpg\", \"path\": null, \"size\": 3.26, \"width\": 136, \"height\": 156}}', 'sm_image06_02_b05a71beaf', '.jpg', 'image/jpeg', '13.82', '/uploads/sm_image06_02_b05a71beaf.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:07.324000', '2023-05-08 17:20:07.324000', 1, 1),
(310, 'sm_image06_03.jpg', NULL, NULL, 365, 425, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image06_03_24aa3f1e62.jpg\", \"hash\": \"thumbnail_sm_image06_03_24aa3f1e62\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image06_03.jpg\", \"path\": null, \"size\": 3.3, \"width\": 134, \"height\": 156}}', 'sm_image06_03_24aa3f1e62', '.jpg', 'image/jpeg', '13.78', '/uploads/sm_image06_03_24aa3f1e62.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:07.371000', '2023-05-08 17:20:07.371000', 1, 1),
(311, 'sm_image06_01.jpg', NULL, NULL, 368, 423, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image06_01_32fc52d93f.jpg\", \"hash\": \"thumbnail_sm_image06_01_32fc52d93f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image06_01.jpg\", \"path\": null, \"size\": 3.3, \"width\": 136, \"height\": 156}}', 'sm_image06_01_32fc52d93f', '.jpg', 'image/jpeg', '13.67', '/uploads/sm_image06_01_32fc52d93f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:07.409000', '2023-05-08 17:20:07.409000', 1, 1),
(312, 'sm_image06_04.jpg', NULL, NULL, 378, 416, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image06_04_a5780b84e2.jpg\", \"hash\": \"thumbnail_sm_image06_04_a5780b84e2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image06_04.jpg\", \"path\": null, \"size\": 3.21, \"width\": 142, \"height\": 156}}', 'sm_image06_04_a5780b84e2', '.jpg', 'image/jpeg', '13.69', '/uploads/sm_image06_04_a5780b84e2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:07.580000', '2023-05-08 17:20:07.580000', 1, 1),
(313, 'sm_image07_01.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image07_01_1f084b2a7f.jpg\", \"hash\": \"small_sm_image07_01_1f084b2a7f\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image07_01.jpg\", \"path\": null, \"size\": 10.21, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image07_01_1f084b2a7f.jpg\", \"hash\": \"thumbnail_sm_image07_01_1f084b2a7f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image07_01.jpg\", \"path\": null, \"size\": 2.38, \"width\": 156, \"height\": 156}}', 'sm_image07_01_1f084b2a7f', '.jpg', 'image/jpeg', '13.13', '/uploads/sm_image07_01_1f084b2a7f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:07.997000', '2023-05-08 17:20:07.997000', 1, 1),
(314, 'sm_image07_04.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image07_04_dac6b89f0e.jpg\", \"hash\": \"small_sm_image07_04_dac6b89f0e\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image07_04.jpg\", \"path\": null, \"size\": 10.53, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image07_04_dac6b89f0e.jpg\", \"hash\": \"thumbnail_sm_image07_04_dac6b89f0e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image07_04.jpg\", \"path\": null, \"size\": 2.39, \"width\": 156, \"height\": 156}}', 'sm_image07_04_dac6b89f0e', '.jpg', 'image/jpeg', '13.42', '/uploads/sm_image07_04_dac6b89f0e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:08.527000', '2023-05-08 17:20:08.527000', 1, 1),
(315, 'sm_image08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image08_0e9e737b18.jpg\", \"hash\": \"thumbnail_sm_image08_0e9e737b18\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image08.jpg\", \"path\": null, \"size\": 1.63, \"width\": 156, \"height\": 156}}', 'sm_image08_0e9e737b18', '.jpg', 'image/jpeg', '6.93', '/uploads/sm_image08_0e9e737b18.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:08.608000', '2023-05-08 17:20:08.608000', 1, 1),
(316, 'sm_image07.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image07_eb31e98471.jpg\", \"hash\": \"small_sm_image07_eb31e98471\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image07.jpg\", \"path\": null, \"size\": 59.11, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image07_eb31e98471.jpg\", \"hash\": \"thumbnail_sm_image07_eb31e98471\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image07.jpg\", \"path\": null, \"size\": 8.59, \"width\": 156, \"height\": 156}}', 'sm_image07_eb31e98471', '.jpg', 'image/jpeg', '19.59', '/uploads/sm_image07_eb31e98471.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:08.715000', '2023-05-08 17:20:08.715000', 1, 1),
(317, 'sm_image07_03.jpg', NULL, NULL, 600, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image07_03_0ad05c3983.jpg\", \"hash\": \"small_sm_image07_03_0ad05c3983\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image07_03.jpg\", \"path\": null, \"size\": 55.05, \"width\": 500, \"height\": 499}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image07_03_0ad05c3983.jpg\", \"hash\": \"thumbnail_sm_image07_03_0ad05c3983\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image07_03.jpg\", \"path\": null, \"size\": 8.21, \"width\": 156, \"height\": 156}}', 'sm_image07_03_0ad05c3983', '.jpg', 'image/jpeg', '19.11', '/uploads/sm_image07_03_0ad05c3983.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:08.717000', '2023-05-08 17:20:08.717000', 1, 1),
(318, 'sm_image07_02.jpg', NULL, NULL, 600, 597, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image07_02_32491c75ef.jpg\", \"hash\": \"small_sm_image07_02_32491c75ef\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image07_02.jpg\", \"path\": null, \"size\": 54.83, \"width\": 500, \"height\": 498}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image07_02_32491c75ef.jpg\", \"hash\": \"thumbnail_sm_image07_02_32491c75ef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image07_02.jpg\", \"path\": null, \"size\": 8.26, \"width\": 157, \"height\": 156}}', 'sm_image07_02_32491c75ef', '.jpg', 'image/jpeg', '19.22', '/uploads/sm_image07_02_32491c75ef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:08.844000', '2023-05-08 17:20:08.844000', 1, 1),
(319, 'sm_image09.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image09_3da61e90fc.jpg\", \"hash\": \"thumbnail_sm_image09_3da61e90fc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image09.jpg\", \"path\": null, \"size\": 1.75, \"width\": 156, \"height\": 156}}', 'sm_image09_3da61e90fc', '.jpg', 'image/jpeg', '2.44', '/uploads/sm_image09_3da61e90fc.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:09.711000', '2023-05-08 17:20:09.711000', 1, 1),
(320, 'sm_image09_01.jpg', NULL, NULL, 380, 383, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image09_01_0541304a15.jpg\", \"hash\": \"thumbnail_sm_image09_01_0541304a15\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image09_01.jpg\", \"path\": null, \"size\": 2.65, \"width\": 155, \"height\": 156}}', 'sm_image09_01_0541304a15', '.jpg', 'image/jpeg', '8.56', '/uploads/sm_image09_01_0541304a15.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:09.824000', '2023-05-08 17:20:09.824000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(321, 'sm_image08_01.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image08_01_7e475a8752.jpg\", \"hash\": \"small_sm_image08_01_7e475a8752\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image08_01.jpg\", \"path\": null, \"size\": 4.97, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image08_01_7e475a8752.jpg\", \"hash\": \"medium_sm_image08_01_7e475a8752\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image08_01.jpg\", \"path\": null, \"size\": 8.02, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image08_01_7e475a8752.jpg\", \"hash\": \"thumbnail_sm_image08_01_7e475a8752\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image08_01.jpg\", \"path\": null, \"size\": 1.17, \"width\": 156, \"height\": 156}}', 'sm_image08_01_7e475a8752', '.jpg', 'image/jpeg', '13.92', '/uploads/sm_image08_01_7e475a8752.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:10.157000', '2023-05-08 17:20:10.157000', 1, 1),
(322, 'sm_image08_02.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image08_02_c13a87929e.jpg\", \"hash\": \"small_sm_image08_02_c13a87929e\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image08_02.jpg\", \"path\": null, \"size\": 5, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image08_02_c13a87929e.jpg\", \"hash\": \"medium_sm_image08_02_c13a87929e\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image08_02.jpg\", \"path\": null, \"size\": 8.01, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image08_02_c13a87929e.jpg\", \"hash\": \"thumbnail_sm_image08_02_c13a87929e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image08_02.jpg\", \"path\": null, \"size\": 1.17, \"width\": 156, \"height\": 156}}', 'sm_image08_02_c13a87929e', '.jpg', 'image/jpeg', '13.63', '/uploads/sm_image08_02_c13a87929e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:10.220000', '2023-05-08 17:20:10.220000', 1, 1),
(323, 'sm_image08_03.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image08_03_af9bf6c602.jpg\", \"hash\": \"small_sm_image08_03_af9bf6c602\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image08_03.jpg\", \"path\": null, \"size\": 4.93, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image08_03_af9bf6c602.jpg\", \"hash\": \"medium_sm_image08_03_af9bf6c602\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image08_03.jpg\", \"path\": null, \"size\": 7.93, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image08_03_af9bf6c602.jpg\", \"hash\": \"thumbnail_sm_image08_03_af9bf6c602\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image08_03.jpg\", \"path\": null, \"size\": 1.14, \"width\": 156, \"height\": 156}}', 'sm_image08_03_af9bf6c602', '.jpg', 'image/jpeg', '13.13', '/uploads/sm_image08_03_af9bf6c602.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:10.308000', '2023-05-08 17:20:10.308000', 1, 1),
(324, 'sm_image08_04.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image08_04_47f57c00a9.jpg\", \"hash\": \"small_sm_image08_04_47f57c00a9\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image08_04.jpg\", \"path\": null, \"size\": 4.73, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image08_04_47f57c00a9.jpg\", \"hash\": \"medium_sm_image08_04_47f57c00a9\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image08_04.jpg\", \"path\": null, \"size\": 7.99, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image08_04_47f57c00a9.jpg\", \"hash\": \"thumbnail_sm_image08_04_47f57c00a9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image08_04.jpg\", \"path\": null, \"size\": 1.1, \"width\": 156, \"height\": 156}}', 'sm_image08_04_47f57c00a9', '.jpg', 'image/jpeg', '12.98', '/uploads/sm_image08_04_47f57c00a9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:10.478000', '2023-05-08 17:20:10.478000', 1, 1),
(325, 'sm_image09_02.jpg', NULL, NULL, 394, 373, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image09_02_3569cf3b29.jpg\", \"hash\": \"thumbnail_sm_image09_02_3569cf3b29\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image09_02.jpg\", \"path\": null, \"size\": 2.77, \"width\": 165, \"height\": 156}}', 'sm_image09_02_3569cf3b29', '.jpg', 'image/jpeg', '8.64', '/uploads/sm_image09_02_3569cf3b29.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:10.520000', '2023-05-08 17:20:10.520000', 1, 1),
(326, 'sm_image09_03.jpg', NULL, NULL, 431, 423, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image09_03_6c2cf0f368.jpg\", \"hash\": \"thumbnail_sm_image09_03_6c2cf0f368\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image09_03.jpg\", \"path\": null, \"size\": 3.52, \"width\": 159, \"height\": 156}}', 'sm_image09_03_6c2cf0f368', '.jpg', 'image/jpeg', '14.55', '/uploads/sm_image09_03_6c2cf0f368.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:10.639000', '2023-05-08 17:20:10.639000', 1, 1),
(327, 'sm_image09_04.jpg', NULL, NULL, 445, 423, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image09_04_ab3e9df64b.jpg\", \"hash\": \"thumbnail_sm_image09_04_ab3e9df64b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image09_04.jpg\", \"path\": null, \"size\": 3.4, \"width\": 164, \"height\": 156}}', 'sm_image09_04_ab3e9df64b', '.jpg', 'image/jpeg', '13.36', '/uploads/sm_image09_04_ab3e9df64b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:10.945000', '2023-05-08 17:20:10.945000', 1, 1),
(328, 'sm_image09_05.jpg', NULL, NULL, 433, 472, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image09_05_818ad0ccd8.jpg\", \"hash\": \"thumbnail_sm_image09_05_818ad0ccd8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image09_05.jpg\", \"path\": null, \"size\": 3.25, \"width\": 143, \"height\": 156}}', 'sm_image09_05_818ad0ccd8', '.jpg', 'image/jpeg', '15.07', '/uploads/sm_image09_05_818ad0ccd8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:11.243000', '2023-05-08 17:20:11.243000', 1, 1),
(329, 'sm_image10.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image10_edacde9a0c.jpg\", \"hash\": \"thumbnail_sm_image10_edacde9a0c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image10.jpg\", \"path\": null, \"size\": 3.43, \"width\": 156, \"height\": 156}}', 'sm_image10_edacde9a0c', '.jpg', 'image/jpeg', '14.68', '/uploads/sm_image10_edacde9a0c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:11.246000', '2023-05-08 17:20:11.246000', 1, 1),
(330, 'sm_image11.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_f48c6eb780.jpg\", \"hash\": \"thumbnail_sm_image11_f48c6eb780\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11.jpg\", \"path\": null, \"size\": 3.26, \"width\": 156, \"height\": 156}}', 'sm_image11_f48c6eb780', '.jpg', 'image/jpeg', '14.38', '/uploads/sm_image11_f48c6eb780.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:11.494000', '2023-05-08 17:20:11.494000', 1, 1),
(331, 'sm_image11_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_01_01be9208ad.jpg\", \"hash\": \"thumbnail_sm_image11_01_01be9208ad\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_01.jpg\", \"path\": null, \"size\": 3.22, \"width\": 156, \"height\": 156}}', 'sm_image11_01_01be9208ad', '.jpg', 'image/jpeg', '14.29', '/uploads/sm_image11_01_01be9208ad.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:12.256000', '2023-05-08 17:20:12.256000', 1, 1),
(332, 'sm_image11_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_02_3e9bf98773.jpg\", \"hash\": \"thumbnail_sm_image11_02_3e9bf98773\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_02.jpg\", \"path\": null, \"size\": 3.03, \"width\": 156, \"height\": 156}}', 'sm_image11_02_3e9bf98773', '.jpg', 'image/jpeg', '13.36', '/uploads/sm_image11_02_3e9bf98773.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:12.644000', '2023-05-08 17:20:12.644000', 1, 1),
(333, 'sm_image10_01.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image10_01_924da8320a.jpg\", \"hash\": \"small_sm_image10_01_924da8320a\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image10_01.jpg\", \"path\": null, \"size\": 144.32, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image10_01_924da8320a.jpg\", \"hash\": \"medium_sm_image10_01_924da8320a\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image10_01.jpg\", \"path\": null, \"size\": 306.42, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image10_01_924da8320a.jpg\", \"hash\": \"thumbnail_sm_image10_01_924da8320a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image10_01.jpg\", \"path\": null, \"size\": 19.11, \"width\": 156, \"height\": 156}}', 'sm_image10_01_924da8320a', '.jpg', 'image/jpeg', '126.90', '/uploads/sm_image10_01_924da8320a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:12.656000', '2023-05-08 17:20:12.656000', 1, 1),
(334, 'sm_image10_04.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image10_04_c4e104a531.jpg\", \"hash\": \"small_sm_image10_04_c4e104a531\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image10_04.jpg\", \"path\": null, \"size\": 147.4, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image10_04_c4e104a531.jpg\", \"hash\": \"medium_sm_image10_04_c4e104a531\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image10_04.jpg\", \"path\": null, \"size\": 313.96, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image10_04_c4e104a531.jpg\", \"hash\": \"thumbnail_sm_image10_04_c4e104a531\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image10_04.jpg\", \"path\": null, \"size\": 19.21, \"width\": 156, \"height\": 156}}', 'sm_image10_04_c4e104a531', '.jpg', 'image/jpeg', '130.70', '/uploads/sm_image10_04_c4e104a531.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.067000', '2023-05-08 17:20:13.067000', 1, 1),
(335, 'sm_image10_02.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image10_02_90ee1bb030.jpg\", \"hash\": \"small_sm_image10_02_90ee1bb030\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image10_02.jpg\", \"path\": null, \"size\": 133.88, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image10_02_90ee1bb030.jpg\", \"hash\": \"medium_sm_image10_02_90ee1bb030\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image10_02.jpg\", \"path\": null, \"size\": 278.71, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image10_02_90ee1bb030.jpg\", \"hash\": \"thumbnail_sm_image10_02_90ee1bb030\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image10_02.jpg\", \"path\": null, \"size\": 17.24, \"width\": 156, \"height\": 156}}', 'sm_image10_02_90ee1bb030', '.jpg', 'image/jpeg', '125.88', '/uploads/sm_image10_02_90ee1bb030.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.069000', '2023-05-08 17:20:13.069000', 1, 1),
(336, 'sm_image11_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_03_27218536d4.jpg\", \"hash\": \"thumbnail_sm_image11_03_27218536d4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_03.jpg\", \"path\": null, \"size\": 3.09, \"width\": 156, \"height\": 156}}', 'sm_image11_03_27218536d4', '.jpg', 'image/jpeg', '13.59', '/uploads/sm_image11_03_27218536d4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.077000', '2023-05-08 17:20:13.077000', 1, 1),
(337, 'sm_image11_05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_05_e770355d55.jpg\", \"hash\": \"thumbnail_sm_image11_05_e770355d55\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_05.jpg\", \"path\": null, \"size\": 3.23, \"width\": 156, \"height\": 156}}', 'sm_image11_05_e770355d55', '.jpg', 'image/jpeg', '14.24', '/uploads/sm_image11_05_e770355d55.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.599000', '2023-05-08 17:20:13.599000', 1, 1),
(338, 'sm_image11_04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_04_fd87c3afcb.jpg\", \"hash\": \"thumbnail_sm_image11_04_fd87c3afcb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_04.jpg\", \"path\": null, \"size\": 3.17, \"width\": 156, \"height\": 156}}', 'sm_image11_04_fd87c3afcb', '.jpg', 'image/jpeg', '13.93', '/uploads/sm_image11_04_fd87c3afcb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.602000', '2023-05-08 17:20:13.602000', 1, 1),
(339, 'sm_image11_07.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_07_e854436a58.jpg\", \"hash\": \"thumbnail_sm_image11_07_e854436a58\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_07.jpg\", \"path\": null, \"size\": 3.22, \"width\": 156, \"height\": 156}}', 'sm_image11_07_e854436a58', '.jpg', 'image/jpeg', '14.25', '/uploads/sm_image11_07_e854436a58.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.750000', '2023-05-08 17:20:13.750000', 1, 1),
(340, 'sm_image11_06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_06_c186504039.jpg\", \"hash\": \"thumbnail_sm_image11_06_c186504039\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_06.jpg\", \"path\": null, \"size\": 3.16, \"width\": 156, \"height\": 156}}', 'sm_image11_06_c186504039', '.jpg', 'image/jpeg', '14.03', '/uploads/sm_image11_06_c186504039.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.751000', '2023-05-08 17:20:13.751000', 1, 1),
(341, 'sm_image11_08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image11_08_4a9ac1c906.jpg\", \"hash\": \"thumbnail_sm_image11_08_4a9ac1c906\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image11_08.jpg\", \"path\": null, \"size\": 3.31, \"width\": 156, \"height\": 156}}', 'sm_image11_08_4a9ac1c906', '.jpg', 'image/jpeg', '14.46', '/uploads/sm_image11_08_4a9ac1c906.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:13.816000', '2023-05-08 17:20:13.816000', 1, 1),
(342, 'sm_image12_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_01_9cbf70594b.jpg\", \"hash\": \"thumbnail_sm_image12_01_9cbf70594b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_01.jpg\", \"path\": null, \"size\": 21.58, \"width\": 156, \"height\": 156}}', 'sm_image12_01_9cbf70594b', '.jpg', 'image/jpeg', '41.74', '/uploads/sm_image12_01_9cbf70594b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:14.701000', '2023-05-08 17:20:14.701000', 1, 1),
(343, 'sm_image12.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_43329cad34.jpg\", \"hash\": \"thumbnail_sm_image12_43329cad34\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12.jpg\", \"path\": null, \"size\": 21.69, \"width\": 156, \"height\": 156}}', 'sm_image12_43329cad34', '.jpg', 'image/jpeg', '41.76', '/uploads/sm_image12_43329cad34.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:14.705000', '2023-05-08 17:20:14.705000', 1, 1),
(344, 'sm_image12_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_02_74d91358ef.jpg\", \"hash\": \"thumbnail_sm_image12_02_74d91358ef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_02.jpg\", \"path\": null, \"size\": 21.61, \"width\": 156, \"height\": 156}}', 'sm_image12_02_74d91358ef', '.jpg', 'image/jpeg', '41.04', '/uploads/sm_image12_02_74d91358ef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:14.744000', '2023-05-08 17:20:14.744000', 1, 1),
(345, 'sm_image10_03.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image10_03_0556bc5498.jpg\", \"hash\": \"small_sm_image10_03_0556bc5498\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image10_03.jpg\", \"path\": null, \"size\": 147.65, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image10_03_0556bc5498.jpg\", \"hash\": \"medium_sm_image10_03_0556bc5498\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image10_03.jpg\", \"path\": null, \"size\": 310.18, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image10_03_0556bc5498.jpg\", \"hash\": \"thumbnail_sm_image10_03_0556bc5498\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image10_03.jpg\", \"path\": null, \"size\": 19.32, \"width\": 156, \"height\": 156}}', 'sm_image10_03_0556bc5498', '.jpg', 'image/jpeg', '131.93', '/uploads/sm_image10_03_0556bc5498.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:14.750000', '2023-05-08 17:20:14.750000', 1, 1),
(346, 'sm_image12_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_03_4c6b03e820.jpg\", \"hash\": \"thumbnail_sm_image12_03_4c6b03e820\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_03.jpg\", \"path\": null, \"size\": 22.02, \"width\": 156, \"height\": 156}}', 'sm_image12_03_4c6b03e820', '.jpg', 'image/jpeg', '41.02', '/uploads/sm_image12_03_4c6b03e820.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:14.770000', '2023-05-08 17:20:14.770000', 1, 1),
(347, 'sm_image12_04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_04_3c580b1c24.jpg\", \"hash\": \"thumbnail_sm_image12_04_3c580b1c24\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_04.jpg\", \"path\": null, \"size\": 22, \"width\": 156, \"height\": 156}}', 'sm_image12_04_3c580b1c24', '.jpg', 'image/jpeg', '41.19', '/uploads/sm_image12_04_3c580b1c24.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:14.842000', '2023-05-08 17:20:14.842000', 1, 1),
(348, 'sm_image12_08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_08_06082f2c57.jpg\", \"hash\": \"thumbnail_sm_image12_08_06082f2c57\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_08.jpg\", \"path\": null, \"size\": 22.16, \"width\": 156, \"height\": 156}}', 'sm_image12_08_06082f2c57', '.jpg', 'image/jpeg', '42.00', '/uploads/sm_image12_08_06082f2c57.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:15.830000', '2023-05-08 17:20:15.830000', 1, 1),
(349, 'sm_image12_06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_06_48360cb203.jpg\", \"hash\": \"thumbnail_sm_image12_06_48360cb203\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_06.jpg\", \"path\": null, \"size\": 22.2, \"width\": 156, \"height\": 156}}', 'sm_image12_06_48360cb203', '.jpg', 'image/jpeg', '42.71', '/uploads/sm_image12_06_48360cb203.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:15.832000', '2023-05-08 17:20:15.832000', 1, 1),
(350, 'sm_image12_05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_05_6a2de648e2.jpg\", \"hash\": \"thumbnail_sm_image12_05_6a2de648e2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_05.jpg\", \"path\": null, \"size\": 22.24, \"width\": 156, \"height\": 156}}', 'sm_image12_05_6a2de648e2', '.jpg', 'image/jpeg', '41.76', '/uploads/sm_image12_05_6a2de648e2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:15.848000', '2023-05-08 17:20:15.848000', 1, 1),
(351, 'sm_image12_07.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image12_07_ea4a7b02e2.jpg\", \"hash\": \"thumbnail_sm_image12_07_ea4a7b02e2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image12_07.jpg\", \"path\": null, \"size\": 22, \"width\": 156, \"height\": 156}}', 'sm_image12_07_ea4a7b02e2', '.jpg', 'image/jpeg', '42.95', '/uploads/sm_image12_07_ea4a7b02e2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:17.242000', '2023-05-08 17:20:17.242000', 1, 1),
(352, 'sm_image13.jpg', NULL, NULL, 890, 902, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image13_262fe7651d.jpg\", \"hash\": \"small_sm_image13_262fe7651d\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image13.jpg\", \"path\": null, \"size\": 15.63, \"width\": 493, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image13_262fe7651d.jpg\", \"hash\": \"medium_sm_image13_262fe7651d\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image13.jpg\", \"path\": null, \"size\": 27.67, \"width\": 740, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image13_262fe7651d.jpg\", \"hash\": \"thumbnail_sm_image13_262fe7651d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image13.jpg\", \"path\": null, \"size\": 3.59, \"width\": 154, \"height\": 156}}', 'sm_image13_262fe7651d', '.jpg', 'image/jpeg', '36.21', '/uploads/sm_image13_262fe7651d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:17.416000', '2023-05-08 17:20:17.416000', 1, 1),
(353, 'sm_image13_02.jpg', NULL, NULL, 450, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image13_02_d715cba3b6.jpg\", \"hash\": \"small_sm_image13_02_d715cba3b6\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image13_02.jpg\", \"path\": null, \"size\": 323.05, \"width\": 375, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image13_02_d715cba3b6.jpg\", \"hash\": \"thumbnail_sm_image13_02_d715cba3b6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image13_02.jpg\", \"path\": null, \"size\": 39.84, \"width\": 117, \"height\": 156}}', 'sm_image13_02_d715cba3b6', '.jpg', 'image/jpeg', '127.38', '/uploads/sm_image13_02_d715cba3b6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:17.506000', '2023-05-08 17:20:17.506000', 1, 1),
(354, 'sm_image14.jpg', NULL, NULL, 890, 902, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image14_0e48f9cf35.jpg\", \"hash\": \"small_sm_image14_0e48f9cf35\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image14.jpg\", \"path\": null, \"size\": 16.01, \"width\": 493, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image14_0e48f9cf35.jpg\", \"hash\": \"medium_sm_image14_0e48f9cf35\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image14.jpg\", \"path\": null, \"size\": 29.72, \"width\": 740, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image14_0e48f9cf35.jpg\", \"hash\": \"thumbnail_sm_image14_0e48f9cf35\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image14.jpg\", \"path\": null, \"size\": 2.6, \"width\": 154, \"height\": 156}}', 'sm_image14_0e48f9cf35', '.jpg', 'image/jpeg', '38.95', '/uploads/sm_image14_0e48f9cf35.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:17.734000', '2023-05-08 17:20:17.734000', 1, 1),
(355, 'sm_image15_01.jpg', NULL, NULL, 900, 1006, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sm_image15_01_f9ed940e89.jpg\", \"hash\": \"large_sm_image15_01_f9ed940e89\", \"mime\": \"image/jpeg\", \"name\": \"large_sm_image15_01.jpg\", \"path\": null, \"size\": 25.29, \"width\": 895, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image15_01_f9ed940e89.jpg\", \"hash\": \"small_sm_image15_01_f9ed940e89\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image15_01.jpg\", \"path\": null, \"size\": 10.15, \"width\": 447, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image15_01_f9ed940e89.jpg\", \"hash\": \"medium_sm_image15_01_f9ed940e89\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image15_01.jpg\", \"path\": null, \"size\": 16.61, \"width\": 671, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image15_01_f9ed940e89.jpg\", \"hash\": \"thumbnail_sm_image15_01_f9ed940e89\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image15_01.jpg\", \"path\": null, \"size\": 2.16, \"width\": 140, \"height\": 156}}', 'sm_image15_01_f9ed940e89', '.jpg', 'image/jpeg', '20.85', '/uploads/sm_image15_01_f9ed940e89.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:18.321000', '2023-05-08 17:20:18.321000', 1, 1),
(356, 'sm_image15.jpg', NULL, NULL, 900, 1006, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sm_image15_47f504449f.jpg\", \"hash\": \"large_sm_image15_47f504449f\", \"mime\": \"image/jpeg\", \"name\": \"large_sm_image15.jpg\", \"path\": null, \"size\": 23.71, \"width\": 895, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image15_47f504449f.jpg\", \"hash\": \"small_sm_image15_47f504449f\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image15.jpg\", \"path\": null, \"size\": 9.44, \"width\": 447, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image15_47f504449f.jpg\", \"hash\": \"medium_sm_image15_47f504449f\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image15.jpg\", \"path\": null, \"size\": 15.64, \"width\": 671, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image15_47f504449f.jpg\", \"hash\": \"thumbnail_sm_image15_47f504449f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image15.jpg\", \"path\": null, \"size\": 2.11, \"width\": 140, \"height\": 156}}', 'sm_image15_47f504449f', '.jpg', 'image/jpeg', '19.59', '/uploads/sm_image15_47f504449f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:18.490000', '2023-05-08 17:20:18.490000', 1, 1),
(357, 'sm_image13_01.jpg', NULL, NULL, 602, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image13_01_a4f366bbc9.jpg\", \"hash\": \"small_sm_image13_01_a4f366bbc9\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image13_01.jpg\", \"path\": null, \"size\": 192.52, \"width\": 500, \"height\": 498}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image13_01_a4f366bbc9.jpg\", \"hash\": \"thumbnail_sm_image13_01_a4f366bbc9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image13_01.jpg\", \"path\": null, \"size\": 24, \"width\": 157, \"height\": 156}}', 'sm_image13_01_a4f366bbc9', '.jpg', 'image/jpeg', '63.26', '/uploads/sm_image13_01_a4f366bbc9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:18.593000', '2023-05-08 17:20:18.593000', 1, 1),
(358, 'sm_image15_02.jpg', NULL, NULL, 900, 1006, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sm_image15_02_40ba026b66.jpg\", \"hash\": \"large_sm_image15_02_40ba026b66\", \"mime\": \"image/jpeg\", \"name\": \"large_sm_image15_02.jpg\", \"path\": null, \"size\": 25.61, \"width\": 895, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image15_02_40ba026b66.jpg\", \"hash\": \"small_sm_image15_02_40ba026b66\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image15_02.jpg\", \"path\": null, \"size\": 9.99, \"width\": 447, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image15_02_40ba026b66.jpg\", \"hash\": \"medium_sm_image15_02_40ba026b66\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image15_02.jpg\", \"path\": null, \"size\": 17.13, \"width\": 671, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image15_02_40ba026b66.jpg\", \"hash\": \"thumbnail_sm_image15_02_40ba026b66\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image15_02.jpg\", \"path\": null, \"size\": 2.4, \"width\": 140, \"height\": 156}}', 'sm_image15_02_40ba026b66', '.jpg', 'image/jpeg', '20.98', '/uploads/sm_image15_02_40ba026b66.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:18.777000', '2023-05-08 17:20:18.777000', 1, 1),
(359, 'sm_image15_03.jpg', NULL, NULL, 900, 1006, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sm_image15_03_31887d6145.jpg\", \"hash\": \"large_sm_image15_03_31887d6145\", \"mime\": \"image/jpeg\", \"name\": \"large_sm_image15_03.jpg\", \"path\": null, \"size\": 26.05, \"width\": 895, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image15_03_31887d6145.jpg\", \"hash\": \"small_sm_image15_03_31887d6145\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image15_03.jpg\", \"path\": null, \"size\": 10.21, \"width\": 447, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image15_03_31887d6145.jpg\", \"hash\": \"medium_sm_image15_03_31887d6145\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image15_03.jpg\", \"path\": null, \"size\": 17.14, \"width\": 671, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image15_03_31887d6145.jpg\", \"hash\": \"thumbnail_sm_image15_03_31887d6145\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image15_03.jpg\", \"path\": null, \"size\": 2.35, \"width\": 140, \"height\": 156}}', 'sm_image15_03_31887d6145', '.jpg', 'image/jpeg', '21.18', '/uploads/sm_image15_03_31887d6145.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:19.337000', '2023-05-08 17:20:19.337000', 1, 1),
(360, 'sm_image15_04.jpg', NULL, NULL, 900, 1006, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sm_image15_04_2537d78bc4.jpg\", \"hash\": \"large_sm_image15_04_2537d78bc4\", \"mime\": \"image/jpeg\", \"name\": \"large_sm_image15_04.jpg\", \"path\": null, \"size\": 27.83, \"width\": 895, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image15_04_2537d78bc4.jpg\", \"hash\": \"small_sm_image15_04_2537d78bc4\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image15_04.jpg\", \"path\": null, \"size\": 11.16, \"width\": 447, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image15_04_2537d78bc4.jpg\", \"hash\": \"medium_sm_image15_04_2537d78bc4\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image15_04.jpg\", \"path\": null, \"size\": 18.19, \"width\": 671, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image15_04_2537d78bc4.jpg\", \"hash\": \"thumbnail_sm_image15_04_2537d78bc4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image15_04.jpg\", \"path\": null, \"size\": 2.34, \"width\": 140, \"height\": 156}}', 'sm_image15_04_2537d78bc4', '.jpg', 'image/jpeg', '22.36', '/uploads/sm_image15_04_2537d78bc4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:19.469000', '2023-05-08 17:20:19.469000', 1, 1),
(361, 'sm_image15_05.jpg', NULL, NULL, 900, 1006, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_sm_image15_05_9451dc7521.jpg\", \"hash\": \"large_sm_image15_05_9451dc7521\", \"mime\": \"image/jpeg\", \"name\": \"large_sm_image15_05.jpg\", \"path\": null, \"size\": 27.83, \"width\": 895, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image15_05_9451dc7521.jpg\", \"hash\": \"small_sm_image15_05_9451dc7521\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image15_05.jpg\", \"path\": null, \"size\": 11.02, \"width\": 447, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_sm_image15_05_9451dc7521.jpg\", \"hash\": \"medium_sm_image15_05_9451dc7521\", \"mime\": \"image/jpeg\", \"name\": \"medium_sm_image15_05.jpg\", \"path\": null, \"size\": 18.92, \"width\": 671, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image15_05_9451dc7521.jpg\", \"hash\": \"thumbnail_sm_image15_05_9451dc7521\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image15_05.jpg\", \"path\": null, \"size\": 2.31, \"width\": 140, \"height\": 156}}', 'sm_image15_05_9451dc7521', '.jpg', 'image/jpeg', '23.12', '/uploads/sm_image15_05_9451dc7521.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:19.640000', '2023-05-08 17:20:19.640000', 1, 1),
(362, 'sm_image16.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image16_ddaaa9508e.jpg\", \"hash\": \"thumbnail_sm_image16_ddaaa9508e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image16.jpg\", \"path\": null, \"size\": 12.94, \"width\": 156, \"height\": 156}}', 'sm_image16_ddaaa9508e', '.jpg', 'image/jpeg', '17.76', '/uploads/sm_image16_ddaaa9508e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:19.738000', '2023-05-08 17:20:19.738000', 1, 1),
(363, 'sm_image13_03.jpg', NULL, NULL, 450, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image13_03_bb4514dac0.jpg\", \"hash\": \"small_sm_image13_03_bb4514dac0\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image13_03.jpg\", \"path\": null, \"size\": 289.49, \"width\": 375, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image13_03_bb4514dac0.jpg\", \"hash\": \"thumbnail_sm_image13_03_bb4514dac0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image13_03.jpg\", \"path\": null, \"size\": 38.06, \"width\": 117, \"height\": 156}}', 'sm_image13_03_bb4514dac0', '.jpg', 'image/jpeg', '109.38', '/uploads/sm_image13_03_bb4514dac0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:19.789000', '2023-05-08 17:20:19.789000', 1, 1),
(364, 'sm_image17.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image17_da30ad2d6e.jpg\", \"hash\": \"thumbnail_sm_image17_da30ad2d6e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image17.jpg\", \"path\": null, \"size\": 13.14, \"width\": 156, \"height\": 156}}', 'sm_image17_da30ad2d6e', '.jpg', 'image/jpeg', '16.46', '/uploads/sm_image17_da30ad2d6e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:20.427000', '2023-05-08 17:20:20.427000', 1, 1),
(365, 'sm_image17_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image17_01_1316f41852.jpg\", \"hash\": \"thumbnail_sm_image17_01_1316f41852\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image17_01.jpg\", \"path\": null, \"size\": 13.66, \"width\": 156, \"height\": 156}}', 'sm_image17_01_1316f41852', '.jpg', 'image/jpeg', '16.53', '/uploads/sm_image17_01_1316f41852.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:20.465000', '2023-05-08 17:20:20.465000', 1, 1),
(366, 'sm_image16_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image16_01_c18e234d42.jpg\", \"hash\": \"thumbnail_sm_image16_01_c18e234d42\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image16_01.jpg\", \"path\": null, \"size\": 13.26, \"width\": 156, \"height\": 156}}', 'sm_image16_01_c18e234d42', '.jpg', 'image/jpeg', '17.34', '/uploads/sm_image16_01_c18e234d42.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:20.468000', '2023-05-08 17:20:20.468000', 1, 1),
(367, 'sm_image18.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image18_5d3e40fda5.jpg\", \"hash\": \"thumbnail_sm_image18_5d3e40fda5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image18.jpg\", \"path\": null, \"size\": 0.67, \"width\": 156, \"height\": 156}}', 'sm_image18_5d3e40fda5', '.jpg', 'image/jpeg', '2.57', '/uploads/sm_image18_5d3e40fda5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.068000', '2023-05-08 17:20:21.068000', 1, 1),
(368, 'sm_image18_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image18_01_9f415244f3.jpg\", \"hash\": \"thumbnail_sm_image18_01_9f415244f3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image18_01.jpg\", \"path\": null, \"size\": 1.16, \"width\": 156, \"height\": 156}}', 'sm_image18_01_9f415244f3', '.jpg', 'image/jpeg', '4.42', '/uploads/sm_image18_01_9f415244f3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.127000', '2023-05-08 17:20:21.127000', 1, 1),
(369, 'sm_image17_03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image17_03_e92fca1a7c.jpg\", \"hash\": \"thumbnail_sm_image17_03_e92fca1a7c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image17_03.jpg\", \"path\": null, \"size\": 35.31, \"width\": 156, \"height\": 156}}', 'sm_image17_03_e92fca1a7c', '.jpg', 'image/jpeg', '74.84', '/uploads/sm_image17_03_e92fca1a7c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.486000', '2023-05-08 17:20:21.486000', 1, 1),
(370, 'sm_image14_01.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sm_image14_01_a67402b013.jpg\", \"hash\": \"small_sm_image14_01_a67402b013\", \"mime\": \"image/jpeg\", \"name\": \"small_sm_image14_01.jpg\", \"path\": null, \"size\": 622.8, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image14_01_a67402b013.jpg\", \"hash\": \"thumbnail_sm_image14_01_a67402b013\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image14_01.jpg\", \"path\": null, \"size\": 65.07, \"width\": 156, \"height\": 156}}', 'sm_image14_01_a67402b013', '.jpg', 'image/jpeg', '253.10', '/uploads/sm_image14_01_a67402b013.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.514000', '2023-05-08 17:20:21.514000', 1, 1),
(371, 'sm_image17_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image17_02_6ed55877bd.jpg\", \"hash\": \"thumbnail_sm_image17_02_6ed55877bd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image17_02.jpg\", \"path\": null, \"size\": 39.74, \"width\": 156, \"height\": 156}}', 'sm_image17_02_6ed55877bd', '.jpg', 'image/jpeg', '80.51', '/uploads/sm_image17_02_6ed55877bd.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.516000', '2023-05-08 17:20:21.516000', 1, 1),
(372, 'sonmong_image01.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sonmong_image01_0225759521.jpg\", \"hash\": \"thumbnail_sonmong_image01_0225759521\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sonmong_image01.jpg\", \"path\": null, \"size\": 2.37, \"width\": 140, \"height\": 156}}', 'sonmong_image01_0225759521', '.jpg', 'image/jpeg', '8.62', '/uploads/sonmong_image01_0225759521.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.570000', '2023-05-08 17:20:21.570000', 1, 1),
(373, 'sm_image18_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sm_image18_02_e9ada1a5d6.jpg\", \"hash\": \"thumbnail_sm_image18_02_e9ada1a5d6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sm_image18_02.jpg\", \"path\": null, \"size\": 1.17, \"width\": 156, \"height\": 156}}', 'sm_image18_02_e9ada1a5d6', '.jpg', 'image/jpeg', '4.39', '/uploads/sm_image18_02_e9ada1a5d6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.594000', '2023-05-08 17:20:21.594000', 1, 1),
(374, 'sonmoili.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_sonmoili_34665a6fdb.jpg\", \"hash\": \"small_sonmoili_34665a6fdb\", \"mime\": \"image/jpeg\", \"name\": \"small_sonmoili.jpg\", \"path\": null, \"size\": 30.16, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sonmoili_34665a6fdb.jpg\", \"hash\": \"thumbnail_sonmoili_34665a6fdb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sonmoili.jpg\", \"path\": null, \"size\": 6.12, \"width\": 156, \"height\": 156}}', 'sonmoili_34665a6fdb', '.jpg', 'image/jpeg', '38.46', '/uploads/sonmoili_34665a6fdb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:21.635000', '2023-05-08 17:20:21.635000', 1, 1),
(375, 'sonmong_image02.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sonmong_image02_710d8da418.jpg\", \"hash\": \"thumbnail_sonmong_image02_710d8da418\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sonmong_image02.jpg\", \"path\": null, \"size\": 2.4, \"width\": 140, \"height\": 156}}', 'sonmong_image02_710d8da418', '.jpg', 'image/jpeg', '8.95', '/uploads/sonmong_image02_710d8da418.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:22.197000', '2023-05-08 17:20:22.197000', 1, 1),
(376, 'sonmong_image03.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sonmong_image03_15707b2668.jpg\", \"hash\": \"thumbnail_sonmong_image03_15707b2668\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sonmong_image03.jpg\", \"path\": null, \"size\": 1.52, \"width\": 140, \"height\": 156}}', 'sonmong_image03_15707b2668', '.jpg', 'image/jpeg', '6.06', '/uploads/sonmong_image03_15707b2668.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:22.253000', '2023-05-08 17:20:22.253000', 1, 1),
(377, 'sonmong_image04.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sonmong_image04_7135f8aaba.jpg\", \"hash\": \"thumbnail_sonmong_image04_7135f8aaba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sonmong_image04.jpg\", \"path\": null, \"size\": 1.7, \"width\": 140, \"height\": 156}}', 'sonmong_image04_7135f8aaba', '.jpg', 'image/jpeg', '6.36', '/uploads/sonmong_image04_7135f8aaba.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:22.299000', '2023-05-08 17:20:22.299000', 1, 1),
(378, 'srm_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image01_0c3808d26d.jpg\", \"hash\": \"thumbnail_srm_image01_0c3808d26d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image01.jpg\", \"path\": null, \"size\": 1.44, \"width\": 156, \"height\": 156}}', 'srm_image01_0c3808d26d', '.jpg', 'image/jpeg', '6.61', '/uploads/srm_image01_0c3808d26d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:22.318000', '2023-05-08 17:20:22.318000', 1, 1),
(379, 'sonmong_image05.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sonmong_image05_b8c9bfc6bf.jpg\", \"hash\": \"thumbnail_sonmong_image05_b8c9bfc6bf\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sonmong_image05.jpg\", \"path\": null, \"size\": 1.61, \"width\": 140, \"height\": 156}}', 'sonmong_image05_b8c9bfc6bf', '.jpg', 'image/jpeg', '5.61', '/uploads/sonmong_image05_b8c9bfc6bf.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:22.320000', '2023-05-08 17:20:22.320000', 1, 1),
(380, 'sonmong_image06.jpg', NULL, NULL, 350, 391, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_sonmong_image06_ae05c8498a.jpg\", \"hash\": \"thumbnail_sonmong_image06_ae05c8498a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_sonmong_image06.jpg\", \"path\": null, \"size\": 2.01, \"width\": 140, \"height\": 156}}', 'sonmong_image06_ae05c8498a', '.jpg', 'image/jpeg', '8.88', '/uploads/sonmong_image06_ae05c8498a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:22.324000', '2023-05-08 17:20:22.324000', 1, 1),
(381, 'srm_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image02_13e4b4a2ae.jpg\", \"hash\": \"thumbnail_srm_image02_13e4b4a2ae\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image02.jpg\", \"path\": null, \"size\": 1.9, \"width\": 156, \"height\": 156}}', 'srm_image02_13e4b4a2ae', '.jpg', 'image/jpeg', '2.95', '/uploads/srm_image02_13e4b4a2ae.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.115000', '2023-05-08 17:20:23.115000', 1, 1),
(382, 'srm_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image03_cb4c4a809b.jpg\", \"hash\": \"thumbnail_srm_image03_cb4c4a809b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image03.jpg\", \"path\": null, \"size\": 2.15, \"width\": 156, \"height\": 156}}', 'srm_image03_cb4c4a809b', '.jpg', 'image/jpeg', '11.40', '/uploads/srm_image03_cb4c4a809b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.133000', '2023-05-08 17:20:23.133000', 1, 1),
(383, 'srm_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image04_4e6c50d287.jpg\", \"hash\": \"thumbnail_srm_image04_4e6c50d287\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image04.jpg\", \"path\": null, \"size\": 2.28, \"width\": 156, \"height\": 156}}', 'srm_image04_4e6c50d287', '.jpg', 'image/jpeg', '3.42', '/uploads/srm_image04_4e6c50d287.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.199000', '2023-05-08 17:20:23.199000', 1, 1),
(384, 'srm_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image05_8e649dac42.jpg\", \"hash\": \"thumbnail_srm_image05_8e649dac42\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image05.jpg\", \"path\": null, \"size\": 11.94, \"width\": 156, \"height\": 156}}', 'srm_image05_8e649dac42', '.jpg', 'image/jpeg', '5.42', '/uploads/srm_image05_8e649dac42.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.229000', '2023-05-08 17:20:23.229000', 1, 1),
(385, 'srm_image06.jpg', NULL, NULL, 442, 442, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image06_bf6dde3fc2.jpg\", \"hash\": \"thumbnail_srm_image06_bf6dde3fc2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image06.jpg\", \"path\": null, \"size\": 1.83, \"width\": 156, \"height\": 156}}', 'srm_image06_bf6dde3fc2', '.jpg', 'image/jpeg', '8.71', '/uploads/srm_image06_bf6dde3fc2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.234000', '2023-05-08 17:20:23.234000', 1, 1),
(386, 'srm_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image01_01_32ac72287c.jpg\", \"hash\": \"thumbnail_srm_image01_01_32ac72287c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image01_01.jpg\", \"path\": null, \"size\": 36.56, \"width\": 156, \"height\": 156}}', 'srm_image01_01_32ac72287c', '.jpg', 'image/jpeg', '103.84', '/uploads/srm_image01_01_32ac72287c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.692000', '2023-05-08 17:20:23.692000', 1, 1),
(387, 'srm_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image07_bcd65a5c2c.jpg\", \"hash\": \"thumbnail_srm_image07_bcd65a5c2c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image07.jpg\", \"path\": null, \"size\": 1.16, \"width\": 156, \"height\": 156}}', 'srm_image07_bcd65a5c2c', '.jpg', 'image/jpeg', '1.62', '/uploads/srm_image07_bcd65a5c2c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.817000', '2023-05-08 17:20:23.817000', 1, 1),
(388, 'srm_image08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image08_2459fd106f.jpg\", \"hash\": \"thumbnail_srm_image08_2459fd106f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image08.jpg\", \"path\": null, \"size\": 1.68, \"width\": 156, \"height\": 156}}', 'srm_image08_2459fd106f', '.jpg', 'image/jpeg', '7.79', '/uploads/srm_image08_2459fd106f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.832000', '2023-05-08 17:20:23.832000', 1, 1),
(389, 'srm_image09.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image09_43c87337cb.jpg\", \"hash\": \"thumbnail_srm_image09_43c87337cb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image09.jpg\", \"path\": null, \"size\": 2.58, \"width\": 156, \"height\": 156}}', 'srm_image09_43c87337cb', '.jpg', 'image/jpeg', '14.05', '/uploads/srm_image09_43c87337cb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.909000', '2023-05-08 17:20:23.909000', 1, 1),
(390, 'srm_image11.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image11_d9ffe5325f.jpg\", \"hash\": \"thumbnail_srm_image11_d9ffe5325f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image11.jpg\", \"path\": null, \"size\": 1.95, \"width\": 156, \"height\": 156}}', 'srm_image11_d9ffe5325f', '.jpg', 'image/jpeg', '9.93', '/uploads/srm_image11_d9ffe5325f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.922000', '2023-05-08 17:20:23.922000', 1, 1),
(391, 'srm_image10.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image10_8849d48eef.jpg\", \"hash\": \"thumbnail_srm_image10_8849d48eef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image10.jpg\", \"path\": null, \"size\": 10.14, \"width\": 156, \"height\": 156}}', 'srm_image10_8849d48eef', '.jpg', 'image/jpeg', '4.10', '/uploads/srm_image10_8849d48eef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:23.971000', '2023-05-08 17:20:23.971000', 1, 1),
(392, 'srm_image16.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image16_101fb1c21d.jpg\", \"hash\": \"thumbnail_srm_image16_101fb1c21d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image16.jpg\", \"path\": null, \"size\": 2.15, \"width\": 156, \"height\": 156}}', 'srm_image16_101fb1c21d', '.jpg', 'image/jpeg', '3.18', '/uploads/srm_image16_101fb1c21d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:24.858000', '2023-05-08 17:20:24.858000', 1, 1),
(393, 'srm_image12.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image12_2f2d7f2f63.jpg\", \"hash\": \"thumbnail_srm_image12_2f2d7f2f63\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image12.jpg\", \"path\": null, \"size\": 1.95, \"width\": 156, \"height\": 156}}', 'srm_image12_2f2d7f2f63', '.jpg', 'image/jpeg', '10.33', '/uploads/srm_image12_2f2d7f2f63.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:24.862000', '2023-05-08 17:20:24.862000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(394, 'srm_image17.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image17_61af19e751.jpg\", \"hash\": \"thumbnail_srm_image17_61af19e751\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image17.jpg\", \"path\": null, \"size\": 2.43, \"width\": 156, \"height\": 156}}', 'srm_image17_61af19e751', '.jpg', 'image/jpeg', '3.74', '/uploads/srm_image17_61af19e751.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:24.865000', '2023-05-08 17:20:24.865000', 1, 1),
(395, 'srm_image18.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image18_8c9abea437.jpg\", \"hash\": \"thumbnail_srm_image18_8c9abea437\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image18.jpg\", \"path\": null, \"size\": 1.69, \"width\": 156, \"height\": 156}}', 'srm_image18_8c9abea437', '.jpg', 'image/jpeg', '2.52', '/uploads/srm_image18_8c9abea437.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:25.005000', '2023-05-08 17:20:25.005000', 1, 1),
(396, 'srm_image11_01.jpg', NULL, NULL, 471, 603, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_srm_image11_01_3af0993f93.jpg\", \"hash\": \"small_srm_image11_01_3af0993f93\", \"mime\": \"image/jpeg\", \"name\": \"small_srm_image11_01.jpg\", \"path\": null, \"size\": 177.98, \"width\": 391, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image11_01_3af0993f93.jpg\", \"hash\": \"thumbnail_srm_image11_01_3af0993f93\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image11_01.jpg\", \"path\": null, \"size\": 22.82, \"width\": 122, \"height\": 156}}', 'srm_image11_01_3af0993f93', '.jpg', 'image/jpeg', '61.98', '/uploads/srm_image11_01_3af0993f93.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:25.381000', '2023-05-08 17:20:25.381000', 1, 1),
(397, 'srm_image12_01.jpg', NULL, NULL, 471, 330, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image12_01_4d8fcc3634.jpg\", \"hash\": \"thumbnail_srm_image12_01_4d8fcc3634\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image12_01.jpg\", \"path\": null, \"size\": 53.35, \"width\": 223, \"height\": 156}}', 'srm_image12_01_4d8fcc3634', '.jpg', 'image/jpeg', '49.21', '/uploads/srm_image12_01_4d8fcc3634.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:25.452000', '2023-05-08 17:20:25.452000', 1, 1),
(398, 'srm_image23.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image23_212a4b40f3.jpg\", \"hash\": \"thumbnail_srm_image23_212a4b40f3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image23.jpg\", \"path\": null, \"size\": 1.68, \"width\": 156, \"height\": 156}}', 'srm_image23_212a4b40f3', '.jpg', 'image/jpeg', '2.49', '/uploads/srm_image23_212a4b40f3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:25.563000', '2023-05-08 17:20:25.563000', 1, 1),
(399, 'srm_image19.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image19_5e305adc4b.jpg\", \"hash\": \"thumbnail_srm_image19_5e305adc4b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image19.jpg\", \"path\": null, \"size\": 1.47, \"width\": 156, \"height\": 156}}', 'srm_image19_5e305adc4b', '.jpg', 'image/jpeg', '2.05', '/uploads/srm_image19_5e305adc4b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:25.569000', '2023-05-08 17:20:25.569000', 1, 1),
(400, 'srm_image25.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image25_5ff7c7f926.jpg\", \"hash\": \"thumbnail_srm_image25_5ff7c7f926\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image25.jpg\", \"path\": null, \"size\": 1.81, \"width\": 156, \"height\": 156}}', 'srm_image25_5ff7c7f926', '.jpg', 'image/jpeg', '2.70', '/uploads/srm_image25_5ff7c7f926.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:25.591000', '2023-05-08 17:20:25.591000', 1, 1),
(401, 'srm_image24.jpg', NULL, NULL, 820, 820, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_srm_image24_be9385dd90.jpg\", \"hash\": \"small_srm_image24_be9385dd90\", \"mime\": \"image/jpeg\", \"name\": \"small_srm_image24.jpg\", \"path\": null, \"size\": 9.29, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_srm_image24_be9385dd90.jpg\", \"hash\": \"medium_srm_image24_be9385dd90\", \"mime\": \"image/jpeg\", \"name\": \"medium_srm_image24.jpg\", \"path\": null, \"size\": 17.42, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image24_be9385dd90.jpg\", \"hash\": \"thumbnail_srm_image24_be9385dd90\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image24.jpg\", \"path\": null, \"size\": 1.71, \"width\": 156, \"height\": 156}}', 'srm_image24_be9385dd90', '.jpg', 'image/jpeg', '19.51', '/uploads/srm_image24_be9385dd90.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:25.692000', '2023-05-08 17:20:25.692000', 1, 1),
(402, 'st_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_st_image01_c1cc86ba8a.jpg\", \"hash\": \"thumbnail_st_image01_c1cc86ba8a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_st_image01.jpg\", \"path\": null, \"size\": 12.58, \"width\": 156, \"height\": 156}}', 'st_image01_c1cc86ba8a', '.jpg', 'image/jpeg', '6.28', '/uploads/st_image01_c1cc86ba8a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:26.247000', '2023-05-08 17:20:26.247000', 1, 1),
(403, 'suaduong_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suaduong_image02_e5175af01a.jpg\", \"hash\": \"thumbnail_suaduong_image02_e5175af01a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suaduong_image02.jpg\", \"path\": null, \"size\": 9.65, \"width\": 156, \"height\": 156}}', 'suaduong_image02_e5175af01a', '.jpg', 'image/jpeg', '13.61', '/uploads/suaduong_image02_e5175af01a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:26.248000', '2023-05-08 17:20:26.248000', 1, 1),
(404, 'suatam_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image02_86a91b3d98.jpg\", \"hash\": \"thumbnail_suatam_image02_86a91b3d98\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image02.jpg\", \"path\": null, \"size\": 2.15, \"width\": 156, \"height\": 156}}', 'suatam_image02_86a91b3d98', '.jpg', 'image/jpeg', '10.74', '/uploads/suatam_image02_86a91b3d98.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:26.349000', '2023-05-08 17:20:26.349000', 1, 1),
(405, 'suaduong_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suaduong_image04_de800dfcec.jpg\", \"hash\": \"thumbnail_suaduong_image04_de800dfcec\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suaduong_image04.jpg\", \"path\": null, \"size\": 1.69, \"width\": 156, \"height\": 156}}', 'suaduong_image04_de800dfcec', '.jpg', 'image/jpeg', '2.43', '/uploads/suaduong_image04_de800dfcec.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:26.357000', '2023-05-08 17:20:26.357000', 1, 1),
(406, 'suaduong_image03.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suaduong_image03_662614a8a8.jpg\", \"hash\": \"thumbnail_suaduong_image03_662614a8a8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suaduong_image03.jpg\", \"path\": null, \"size\": 8.93, \"width\": 156, \"height\": 156}}', 'suaduong_image03_662614a8a8', '.jpg', 'image/jpeg', '3.80', '/uploads/suaduong_image03_662614a8a8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:26.375000', '2023-05-08 17:20:26.375000', 1, 1),
(407, 'suaduong_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suaduong_image02_01_d91491edea.jpg\", \"hash\": \"thumbnail_suaduong_image02_01_d91491edea\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suaduong_image02_01.jpg\", \"path\": null, \"size\": 17.67, \"width\": 156, \"height\": 156}}', 'suaduong_image02_01_d91491edea', '.jpg', 'image/jpeg', '28.96', '/uploads/suaduong_image02_01_d91491edea.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:26.861000', '2023-05-08 17:20:26.861000', 1, 1),
(408, 'suatam_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image04_5f35e2380b.jpg\", \"hash\": \"thumbnail_suatam_image04_5f35e2380b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image04.jpg\", \"path\": null, \"size\": 2.78, \"width\": 156, \"height\": 156}}', 'suatam_image04_5f35e2380b', '.jpg', 'image/jpeg', '16.26', '/uploads/suatam_image04_5f35e2380b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:26.968000', '2023-05-08 17:20:26.968000', 1, 1),
(409, 'suatam_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image03_01_f45f704f9f.jpg\", \"hash\": \"thumbnail_suatam_image03_01_f45f704f9f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image03_01.jpg\", \"path\": null, \"size\": 6.19, \"width\": 156, \"height\": 156}}', 'suatam_image03_01_f45f704f9f', '.jpg', 'image/jpeg', '34.24', '/uploads/suatam_image03_01_f45f704f9f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.019000', '2023-05-08 17:20:27.019000', 1, 1),
(410, 'suatam_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image03_fb9aeb45d4.jpg\", \"hash\": \"thumbnail_suatam_image03_fb9aeb45d4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image03.jpg\", \"path\": null, \"size\": 2.77, \"width\": 156, \"height\": 156}}', 'suatam_image03_fb9aeb45d4', '.jpg', 'image/jpeg', '17.64', '/uploads/suatam_image03_fb9aeb45d4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.047000', '2023-05-08 17:20:27.047000', 1, 1),
(411, 'suatam_image06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image06_b72905b0c3.jpg\", \"hash\": \"thumbnail_suatam_image06_b72905b0c3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image06.jpg\", \"path\": null, \"size\": 1.85, \"width\": 156, \"height\": 156}}', 'suatam_image06_b72905b0c3', '.jpg', 'image/jpeg', '9.49', '/uploads/suatam_image06_b72905b0c3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.056000', '2023-05-08 17:20:27.056000', 1, 1),
(412, 'suatam_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image05_662c7378d9.jpg\", \"hash\": \"thumbnail_suatam_image05_662c7378d9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image05.jpg\", \"path\": null, \"size\": 14.92, \"width\": 156, \"height\": 156}}', 'suatam_image05_662c7378d9', '.jpg', 'image/jpeg', '8.81', '/uploads/suatam_image05_662c7378d9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.103000', '2023-05-08 17:20:27.103000', 1, 1),
(413, 'srm_image15.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image15_556fba2fe9.jpg\", \"hash\": \"thumbnail_srm_image15_556fba2fe9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image15.jpg\", \"path\": null, \"size\": 2.28, \"width\": 156, \"height\": 156}}', 'srm_image15_556fba2fe9', '.jpg', 'image/jpeg', '3.25', '/uploads/srm_image15_556fba2fe9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.624000', '2023-05-08 17:20:27.624000', 1, 1),
(414, 'srm_image13.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image13_38a307b0a3.jpg\", \"hash\": \"thumbnail_srm_image13_38a307b0a3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image13.jpg\", \"path\": null, \"size\": 7.86, \"width\": 156, \"height\": 156}}', 'srm_image13_38a307b0a3', '.jpg', 'image/jpeg', '2.63', '/uploads/srm_image13_38a307b0a3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.677000', '2023-05-08 17:20:27.677000', 1, 1),
(415, 'suatam_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image01_ba509aa59e.jpg\", \"hash\": \"thumbnail_suatam_image01_ba509aa59e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image01.jpg\", \"path\": null, \"size\": 7.53, \"width\": 156, \"height\": 156}}', 'suatam_image01_ba509aa59e', '.jpg', 'image/jpeg', '2.76', '/uploads/suatam_image01_ba509aa59e.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.709000', '2023-05-08 17:20:27.709000', 1, 1),
(416, 'srm_image20.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image20_f35d13fa8c.jpg\", \"hash\": \"thumbnail_srm_image20_f35d13fa8c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image20.jpg\", \"path\": null, \"size\": 2.74, \"width\": 156, \"height\": 156}}', 'srm_image20_f35d13fa8c', '.jpg', 'image/jpeg', '4.11', '/uploads/srm_image20_f35d13fa8c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.718000', '2023-05-08 17:20:27.718000', 1, 1),
(417, 'srm_image14.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image14_0dfae71f15.jpg\", \"hash\": \"thumbnail_srm_image14_0dfae71f15\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image14.jpg\", \"path\": null, \"size\": 1.8, \"width\": 156, \"height\": 156}}', 'srm_image14_0dfae71f15', '.jpg', 'image/jpeg', '2.66', '/uploads/srm_image14_0dfae71f15.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:27.725000', '2023-05-08 17:20:27.725000', 1, 1),
(418, 'suatam_image06_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image06_01_6629501eeb.jpg\", \"hash\": \"thumbnail_suatam_image06_01_6629501eeb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image06_01.jpg\", \"path\": null, \"size\": 50.88, \"width\": 156, \"height\": 156}}', 'suatam_image06_01_6629501eeb', '.jpg', 'image/jpeg', '119.76', '/uploads/suatam_image06_01_6629501eeb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:28.450000', '2023-05-08 17:20:28.450000', 1, 1),
(419, 'suatam_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_suatam_image07_8199407f49.jpg\", \"hash\": \"thumbnail_suatam_image07_8199407f49\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_suatam_image07.jpg\", \"path\": null, \"size\": 1.93, \"width\": 156, \"height\": 156}}', 'suatam_image07_8199407f49', '.jpg', 'image/jpeg', '2.73', '/uploads/suatam_image07_8199407f49.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:28.452000', '2023-05-08 17:20:28.452000', 1, 1),
(420, 'srm_image22.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image22_87dd6548c1.jpg\", \"hash\": \"thumbnail_srm_image22_87dd6548c1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image22.jpg\", \"path\": null, \"size\": 1.22, \"width\": 156, \"height\": 156}}', 'srm_image22_87dd6548c1', '.jpg', 'image/jpeg', '1.77', '/uploads/srm_image22_87dd6548c1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:28.472000', '2023-05-08 17:20:28.472000', 1, 1),
(421, 'srm_image21.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_srm_image21_760fcf99aa.jpg\", \"hash\": \"thumbnail_srm_image21_760fcf99aa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_srm_image21.jpg\", \"path\": null, \"size\": 13.72, \"width\": 156, \"height\": 156}}', 'srm_image21_760fcf99aa', '.jpg', 'image/jpeg', '5.67', '/uploads/srm_image21_760fcf99aa.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:28.509000', '2023-05-08 17:20:28.509000', 1, 1),
(422, 'taytbc_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image01_32c1393a0f.jpg\", \"hash\": \"thumbnail_taytbc_image01_32c1393a0f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image01.jpg\", \"path\": null, \"size\": 11.43, \"width\": 156, \"height\": 156}}', 'taytbc_image01_32c1393a0f', '.jpg', 'image/jpeg', '6.86', '/uploads/taytbc_image01_32c1393a0f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:28.511000', '2023-05-08 17:20:28.511000', 1, 1),
(423, 'taytbc_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image02_7caddad062.jpg\", \"hash\": \"thumbnail_taytbc_image02_7caddad062\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image02.jpg\", \"path\": null, \"size\": 18.16, \"width\": 156, \"height\": 156}}', 'taytbc_image02_7caddad062', '.jpg', 'image/jpeg', '9.36', '/uploads/taytbc_image02_7caddad062.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:28.520000', '2023-05-08 17:20:28.520000', 1, 1),
(424, 'taytbc_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image03_f214a20150.jpg\", \"hash\": \"thumbnail_taytbc_image03_f214a20150\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image03.jpg\", \"path\": null, \"size\": 1.97, \"width\": 156, \"height\": 156}}', 'taytbc_image03_f214a20150', '.jpg', 'image/jpeg', '10.89', '/uploads/taytbc_image03_f214a20150.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.166000', '2023-05-08 17:20:29.166000', 1, 1),
(425, 'taytbc_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image04_2571bb9205.jpg\", \"hash\": \"thumbnail_taytbc_image04_2571bb9205\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image04.jpg\", \"path\": null, \"size\": 1.36, \"width\": 156, \"height\": 156}}', 'taytbc_image04_2571bb9205', '.jpg', 'image/jpeg', '2.02', '/uploads/taytbc_image04_2571bb9205.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.192000', '2023-05-08 17:20:29.192000', 1, 1),
(426, 'taytbc_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image07_654fd3e89d.jpg\", \"hash\": \"thumbnail_taytbc_image07_654fd3e89d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image07.jpg\", \"path\": null, \"size\": 1.34, \"width\": 156, \"height\": 156}}', 'taytbc_image07_654fd3e89d', '.jpg', 'image/jpeg', '1.93', '/uploads/taytbc_image07_654fd3e89d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.254000', '2023-05-08 17:20:29.254000', 1, 1),
(427, 'taytbc_image06.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image06_70230efe2b.jpg\", \"hash\": \"thumbnail_taytbc_image06_70230efe2b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image06.jpg\", \"path\": null, \"size\": 0.94, \"width\": 156, \"height\": 156}}', 'taytbc_image06_70230efe2b', '.jpg', 'image/jpeg', '1.26', '/uploads/taytbc_image06_70230efe2b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.258000', '2023-05-08 17:20:29.258000', 1, 1),
(428, 'taytbc_image05.jpg', NULL, NULL, 442, 442, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image05_832597d5a3.jpg\", \"hash\": \"thumbnail_taytbc_image05_832597d5a3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image05.jpg\", \"path\": null, \"size\": 1.63, \"width\": 156, \"height\": 156}}', 'taytbc_image05_832597d5a3', '.jpg', 'image/jpeg', '7.48', '/uploads/taytbc_image05_832597d5a3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.255000', '2023-05-08 17:20:29.255000', 1, 1),
(429, 'taytbc_image08.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image08_1b425257fe.jpg\", \"hash\": \"thumbnail_taytbc_image08_1b425257fe\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image08.jpg\", \"path\": null, \"size\": 5.32, \"width\": 156, \"height\": 156}}', 'taytbc_image08_1b425257fe', '.jpg', 'image/jpeg', '1.63', '/uploads/taytbc_image08_1b425257fe.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.269000', '2023-05-08 17:20:29.269000', 1, 1),
(430, 'taytbc_image11.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image11_2f68d2b6c0.jpg\", \"hash\": \"thumbnail_taytbc_image11_2f68d2b6c0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image11.jpg\", \"path\": null, \"size\": 1.65, \"width\": 156, \"height\": 156}}', 'taytbc_image11_2f68d2b6c0', '.jpg', 'image/jpeg', '2.55', '/uploads/taytbc_image11_2f68d2b6c0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.958000', '2023-05-08 17:20:29.958000', 1, 1),
(431, 'taytbc_image13.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image13_5f075ef332.jpg\", \"hash\": \"thumbnail_taytbc_image13_5f075ef332\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image13.jpg\", \"path\": null, \"size\": 2.11, \"width\": 156, \"height\": 156}}', 'taytbc_image13_5f075ef332', '.jpg', 'image/jpeg', '2.98', '/uploads/taytbc_image13_5f075ef332.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.990000', '2023-05-08 17:20:29.990000', 1, 1),
(432, 'taytbc_image12.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image12_91f258556c.jpg\", \"hash\": \"thumbnail_taytbc_image12_91f258556c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image12.jpg\", \"path\": null, \"size\": 2.15, \"width\": 156, \"height\": 156}}', 'taytbc_image12_91f258556c', '.jpg', 'image/jpeg', '3.22', '/uploads/taytbc_image12_91f258556c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:29.991000', '2023-05-08 17:20:29.991000', 1, 1),
(433, 'taytbc_image09.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image09_de30477a09.jpg\", \"hash\": \"thumbnail_taytbc_image09_de30477a09\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image09.jpg\", \"path\": null, \"size\": 13.62, \"width\": 156, \"height\": 156}}', 'taytbc_image09_de30477a09', '.jpg', 'image/jpeg', '18.32', '/uploads/taytbc_image09_de30477a09.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.097000', '2023-05-08 17:20:30.097000', 1, 1),
(434, 'taytbc_image10.jpg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_taytbc_image10_704ebf95ca.jpg\", \"hash\": \"small_taytbc_image10_704ebf95ca\", \"mime\": \"image/jpeg\", \"name\": \"small_taytbc_image10.jpg\", \"path\": null, \"size\": 8.67, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_taytbc_image10_704ebf95ca.jpg\", \"hash\": \"medium_taytbc_image10_704ebf95ca\", \"mime\": \"image/jpeg\", \"name\": \"medium_taytbc_image10.jpg\", \"path\": null, \"size\": 16.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image10_704ebf95ca.jpg\", \"hash\": \"thumbnail_taytbc_image10_704ebf95ca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image10.jpg\", \"path\": null, \"size\": 1.54, \"width\": 156, \"height\": 156}}', 'taytbc_image10_704ebf95ca', '.jpg', 'image/jpeg', '22.48', '/uploads/taytbc_image10_704ebf95ca.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.107000', '2023-05-08 17:20:30.107000', 1, 1),
(435, 'taytbc_image09_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image09_01_3a8d935461.jpg\", \"hash\": \"thumbnail_taytbc_image09_01_3a8d935461\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image09_01.jpg\", \"path\": null, \"size\": 24, \"width\": 156, \"height\": 156}}', 'taytbc_image09_01_3a8d935461', '.jpg', 'image/jpeg', '32.31', '/uploads/taytbc_image09_01_3a8d935461.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.311000', '2023-05-08 17:20:30.311000', 1, 1),
(436, 'taytbc_image14.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image14_7fcead24ad.jpg\", \"hash\": \"thumbnail_taytbc_image14_7fcead24ad\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image14.jpg\", \"path\": null, \"size\": 1.72, \"width\": 156, \"height\": 156}}', 'taytbc_image14_7fcead24ad', '.jpg', 'image/jpeg', '9.29', '/uploads/taytbc_image14_7fcead24ad.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.619000', '2023-05-08 17:20:30.619000', 1, 1),
(437, 'taytbc_image15.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image15_35b8bf01b4.jpg\", \"hash\": \"thumbnail_taytbc_image15_35b8bf01b4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image15.jpg\", \"path\": null, \"size\": 2.17, \"width\": 156, \"height\": 156}}', 'taytbc_image15_35b8bf01b4', '.jpg', 'image/jpeg', '3.40', '/uploads/taytbc_image15_35b8bf01b4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.733000', '2023-05-08 17:20:30.733000', 1, 1),
(438, 'taytbc_image14_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image14_01_42647eede3.jpg\", \"hash\": \"thumbnail_taytbc_image14_01_42647eede3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image14_01.jpg\", \"path\": null, \"size\": 5.63, \"width\": 156, \"height\": 156}}', 'taytbc_image14_01_42647eede3', '.jpg', 'image/jpeg', '32.97', '/uploads/taytbc_image14_01_42647eede3.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.769000', '2023-05-08 17:20:30.769000', 1, 1),
(439, 'taytbc_image16.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image16_653baa3186.jpg\", \"hash\": \"thumbnail_taytbc_image16_653baa3186\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image16.jpg\", \"path\": null, \"size\": 2.12, \"width\": 156, \"height\": 156}}', 'taytbc_image16_653baa3186', '.jpg', 'image/jpeg', '3.17', '/uploads/taytbc_image16_653baa3186.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.856000', '2023-05-08 17:20:30.856000', 1, 1),
(440, 'taytbc_image17.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image17_405f8d8ca8.jpg\", \"hash\": \"thumbnail_taytbc_image17_405f8d8ca8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image17.jpg\", \"path\": null, \"size\": 3.07, \"width\": 156, \"height\": 156}}', 'taytbc_image17_405f8d8ca8', '.jpg', 'image/jpeg', '15.57', '/uploads/taytbc_image17_405f8d8ca8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.910000', '2023-05-08 17:20:30.910000', 1, 1),
(441, 'taytbc_image17_01.jpg', NULL, NULL, 401, 446, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbc_image17_01_3b77cd351a.jpg\", \"hash\": \"thumbnail_taytbc_image17_01_3b77cd351a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbc_image17_01.jpg\", \"path\": null, \"size\": 4.07, \"width\": 140, \"height\": 156}}', 'taytbc_image17_01_3b77cd351a', '.jpg', 'image/jpeg', '19.75', '/uploads/taytbc_image17_01_3b77cd351a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:30.959000', '2023-05-08 17:20:30.959000', 1, 1),
(442, 'taytbctoanthan_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image01_844103d847.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image01_844103d847\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image01.jpg\", \"path\": null, \"size\": 3.02, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image01_844103d847', '.jpg', 'image/jpeg', '15.07', '/uploads/taytbctoanthan_image01_844103d847.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:31.283000', '2023-05-08 17:20:31.283000', 1, 1),
(443, 'taytbctoanthan_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image01_01_69f4c7e0cd.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image01_01_69f4c7e0cd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image01_01.jpg\", \"path\": null, \"size\": 3.97, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image01_01_69f4c7e0cd', '.jpg', 'image/jpeg', '24.04', '/uploads/taytbctoanthan_image01_01_69f4c7e0cd.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:31.449000', '2023-05-08 17:20:31.449000', 1, 1),
(444, 'taytbctoanthan_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image02_6342249822.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image02_6342249822\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image02.jpg\", \"path\": null, \"size\": 5.78, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image02_6342249822', '.jpg', 'image/jpeg', '45.38', '/uploads/taytbctoanthan_image02_6342249822.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:31.474000', '2023-05-08 17:20:31.474000', 1, 1),
(445, 'taytbctoanthan_image03.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image03_c445fcd179.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image03_c445fcd179\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image03.jpg\", \"path\": null, \"size\": 2.87, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image03_c445fcd179', '.jpg', 'image/jpeg', '4.00', '/uploads/taytbctoanthan_image03_c445fcd179.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:31.515000', '2023-05-08 17:20:31.515000', 1, 1),
(446, 'taytbctoanthan_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image02_01_913ce6376b.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image02_01_913ce6376b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image02_01.jpg\", \"path\": null, \"size\": 5.7, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image02_01_913ce6376b', '.jpg', 'image/jpeg', '38.12', '/uploads/taytbctoanthan_image02_01_913ce6376b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:31.518000', '2023-05-08 17:20:31.518000', 1, 1),
(447, 'taytbctoanthan_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image04_6d64c6215f.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image04_6d64c6215f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image04.jpg\", \"path\": null, \"size\": 5.62, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image04_6d64c6215f', '.jpg', 'image/jpeg', '8.90', '/uploads/taytbctoanthan_image04_6d64c6215f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:31.532000', '2023-05-08 17:20:31.532000', 1, 1),
(448, 'taytbctoanthan_image05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image05_bbbe4ad93a.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image05_bbbe4ad93a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image05.jpg\", \"path\": null, \"size\": 1.92, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image05_bbbe4ad93a', '.jpg', 'image/jpeg', '10.85', '/uploads/taytbctoanthan_image05_bbbe4ad93a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:31.732000', '2023-05-08 17:20:31.732000', 1, 1),
(449, 'taytbctoanthan_image06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image06_88a890e2cc.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image06_88a890e2cc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image06.jpg\", \"path\": null, \"size\": 2.86, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image06_88a890e2cc', '.jpg', 'image/jpeg', '16.67', '/uploads/taytbctoanthan_image06_88a890e2cc.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:32.386000', '2023-05-08 17:20:32.386000', 1, 1),
(450, 'taytbctoanthan_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image07_07874608ee.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image07_07874608ee\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image07.jpg\", \"path\": null, \"size\": 1.64, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image07_07874608ee', '.jpg', 'image/jpeg', '2.49', '/uploads/taytbctoanthan_image07_07874608ee.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:32.481000', '2023-05-08 17:20:32.481000', 1, 1),
(451, 'tc_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image01_3b2e924192.jpg\", \"hash\": \"thumbnail_tc_image01_3b2e924192\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image01.jpg\", \"path\": null, \"size\": 1.61, \"width\": 156, \"height\": 156}}', 'tc_image01_3b2e924192', '.jpg', 'image/jpeg', '7.64', '/uploads/tc_image01_3b2e924192.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:32.699000', '2023-05-08 17:20:32.699000', 1, 1),
(452, 'tc_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image01_01_79d384b462.jpg\", \"hash\": \"thumbnail_tc_image01_01_79d384b462\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image01_01.jpg\", \"path\": null, \"size\": 1.98, \"width\": 156, \"height\": 156}}', 'tc_image01_01_79d384b462', '.jpg', 'image/jpeg', '11.81', '/uploads/tc_image01_01_79d384b462.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.282000', '2023-05-08 17:20:33.282000', 1, 1),
(453, 'tc_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image03_ee0d4046e7.jpg\", \"hash\": \"thumbnail_tc_image03_ee0d4046e7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image03.jpg\", \"path\": null, \"size\": 1.43, \"width\": 156, \"height\": 156}}', 'tc_image03_ee0d4046e7', '.jpg', 'image/jpeg', '6.96', '/uploads/tc_image03_ee0d4046e7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.316000', '2023-05-08 17:20:33.316000', 1, 1),
(454, 'tc_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image02_c936715e80.jpg\", \"hash\": \"thumbnail_tc_image02_c936715e80\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image02.jpg\", \"path\": null, \"size\": 1.64, \"width\": 156, \"height\": 156}}', 'tc_image02_c936715e80', '.jpg', 'image/jpeg', '2.39', '/uploads/tc_image02_c936715e80.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.319000', '2023-05-08 17:20:33.319000', 1, 1),
(455, 'taytbctoanthan_image08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image08_8de7cc73c6.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image08_8de7cc73c6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image08.jpg\", \"path\": null, \"size\": 23.2, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image08_8de7cc73c6', '.jpg', 'image/jpeg', '46.57', '/uploads/taytbctoanthan_image08_8de7cc73c6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.342000', '2023-05-08 17:20:33.342000', 1, 1),
(456, 'taytbctoanthan_image06_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image06_01_674ab20158.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image06_01_674ab20158\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image06_01.jpg\", \"path\": null, \"size\": 60.48, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image06_01_674ab20158', '.jpg', 'image/jpeg', '109.43', '/uploads/taytbctoanthan_image06_01_674ab20158.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.360000', '2023-05-08 17:20:33.360000', 1, 1),
(457, 'taytbctoanthan_image05_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_taytbctoanthan_image05_01_e2f501adeb.jpg\", \"hash\": \"thumbnail_taytbctoanthan_image05_01_e2f501adeb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_taytbctoanthan_image05_01.jpg\", \"path\": null, \"size\": 60.45, \"width\": 156, \"height\": 156}}', 'taytbctoanthan_image05_01_e2f501adeb', '.jpg', 'image/jpeg', '175.43', '/uploads/taytbctoanthan_image05_01_e2f501adeb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.872000', '2023-05-08 17:20:33.872000', 1, 1),
(458, 'tc_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image04_10de7386ba.jpg\", \"hash\": \"thumbnail_tc_image04_10de7386ba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image04.jpg\", \"path\": null, \"size\": 2.03, \"width\": 156, \"height\": 156}}', 'tc_image04_10de7386ba', '.jpg', 'image/jpeg', '3.07', '/uploads/tc_image04_10de7386ba.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.935000', '2023-05-08 17:20:33.935000', 1, 1),
(459, 'tc_image05.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image05_343dac2154.jpg\", \"hash\": \"thumbnail_tc_image05_343dac2154\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image05.jpg\", \"path\": null, \"size\": 1.64, \"width\": 156, \"height\": 156}}', 'tc_image05_343dac2154', '.jpg', 'image/jpeg', '7.72', '/uploads/tc_image05_343dac2154.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.973000', '2023-05-08 17:20:33.973000', 1, 1),
(460, 'tc_image06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image06_7e9418a354.jpg\", \"hash\": \"thumbnail_tc_image06_7e9418a354\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image06.jpg\", \"path\": null, \"size\": 1.99, \"width\": 156, \"height\": 156}}', 'tc_image06_7e9418a354', '.jpg', 'image/jpeg', '11.56', '/uploads/tc_image06_7e9418a354.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.983000', '2023-05-08 17:20:33.983000', 1, 1),
(461, 'tc_image07.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image07_5289acb2bd.jpg\", \"hash\": \"thumbnail_tc_image07_5289acb2bd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image07.jpg\", \"path\": null, \"size\": 1.6, \"width\": 156, \"height\": 156}}', 'tc_image07_5289acb2bd', '.jpg', 'image/jpeg', '2.34', '/uploads/tc_image07_5289acb2bd.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:33.993000', '2023-05-08 17:20:33.993000', 1, 1),
(462, 'tc_image03_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image03_01_eb90f8f96c.jpg\", \"hash\": \"thumbnail_tc_image03_01_eb90f8f96c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image03_01.jpg\", \"path\": null, \"size\": 19.24, \"width\": 156, \"height\": 156}}', 'tc_image03_01_eb90f8f96c', '.jpg', 'image/jpeg', '32.90', '/uploads/tc_image03_01_eb90f8f96c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:34.426000', '2023-05-08 17:20:34.426000', 1, 1),
(463, 'tc_image08.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image08_c9001cd7a8.jpg\", \"hash\": \"thumbnail_tc_image08_c9001cd7a8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image08.jpg\", \"path\": null, \"size\": 1.44, \"width\": 156, \"height\": 156}}', 'tc_image08_c9001cd7a8', '.jpg', 'image/jpeg', '2.21', '/uploads/tc_image08_c9001cd7a8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:34.506000', '2023-05-08 17:20:34.506000', 1, 1),
(464, 'tc_image09.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image09_6737e2281c.jpg\", \"hash\": \"thumbnail_tc_image09_6737e2281c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image09.jpg\", \"path\": null, \"size\": 1.5, \"width\": 156, \"height\": 156}}', 'tc_image09_6737e2281c', '.jpg', 'image/jpeg', '2.27', '/uploads/tc_image09_6737e2281c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:34.525000', '2023-05-08 17:20:34.525000', 1, 1),
(465, 'tc_image10.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image10_3b8ee00df8.jpg\", \"hash\": \"thumbnail_tc_image10_3b8ee00df8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image10.jpg\", \"path\": null, \"size\": 1.73, \"width\": 156, \"height\": 156}}', 'tc_image10_3b8ee00df8', '.jpg', 'image/jpeg', '2.62', '/uploads/tc_image10_3b8ee00df8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:34.565000', '2023-05-08 17:20:34.565000', 1, 1),
(466, 'tc_image12.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image12_944995835a.jpg\", \"hash\": \"thumbnail_tc_image12_944995835a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image12.jpg\", \"path\": null, \"size\": 2.28, \"width\": 156, \"height\": 156}}', 'tc_image12_944995835a', '.jpg', 'image/jpeg', '3.37', '/uploads/tc_image12_944995835a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:34.617000', '2023-05-08 17:20:34.617000', 1, 1),
(467, 'tc_image11.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image11_af4163eff6.jpg\", \"hash\": \"thumbnail_tc_image11_af4163eff6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image11.jpg\", \"path\": null, \"size\": 2.37, \"width\": 156, \"height\": 156}}', 'tc_image11_af4163eff6', '.jpg', 'image/jpeg', '3.32', '/uploads/tc_image11_af4163eff6.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:34.619000', '2023-05-08 17:20:34.619000', 1, 1),
(468, 'tc_image13.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image13_dd850e618b.jpg\", \"hash\": \"thumbnail_tc_image13_dd850e618b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image13.jpg\", \"path\": null, \"size\": 1.55, \"width\": 156, \"height\": 156}}', 'tc_image13_dd850e618b', '.jpg', 'image/jpeg', '8.17', '/uploads/tc_image13_dd850e618b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:34.793000', '2023-05-08 17:20:34.793000', 1, 1),
(469, 'tc_image14.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image14_dceeb3501d.jpg\", \"hash\": \"thumbnail_tc_image14_dceeb3501d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image14.jpg\", \"path\": null, \"size\": 1.95, \"width\": 156, \"height\": 156}}', 'tc_image14_dceeb3501d', '.jpg', 'image/jpeg', '3.07', '/uploads/tc_image14_dceeb3501d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:35.259000', '2023-05-08 17:20:35.259000', 1, 1),
(470, 'tc_image16.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image16_68aba7a173.jpg\", \"hash\": \"thumbnail_tc_image16_68aba7a173\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image16.jpg\", \"path\": null, \"size\": 2.34, \"width\": 156, \"height\": 156}}', 'tc_image16_68aba7a173', '.jpg', 'image/jpeg', '3.45', '/uploads/tc_image16_68aba7a173.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:35.367000', '2023-05-08 17:20:35.367000', 1, 1),
(471, 'tc_image15.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image15_ff0b6f0836.jpg\", \"hash\": \"thumbnail_tc_image15_ff0b6f0836\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image15.jpg\", \"path\": null, \"size\": 2.02, \"width\": 156, \"height\": 156}}', 'tc_image15_ff0b6f0836', '.jpg', 'image/jpeg', '9.79', '/uploads/tc_image15_ff0b6f0836.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:35.375000', '2023-05-08 17:20:35.375000', 1, 1),
(472, 'tc_image18.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image18_a061921f69.jpg\", \"hash\": \"thumbnail_tc_image18_a061921f69\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image18.jpg\", \"path\": null, \"size\": 1.72, \"width\": 156, \"height\": 156}}', 'tc_image18_a061921f69', '.jpg', 'image/jpeg', '2.42', '/uploads/tc_image18_a061921f69.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:35.427000', '2023-05-08 17:20:35.427000', 1, 1),
(473, 'tc_image17.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image17_bd7e96b427.jpg\", \"hash\": \"thumbnail_tc_image17_bd7e96b427\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image17.jpg\", \"path\": null, \"size\": 13.16, \"width\": 156, \"height\": 156}}', 'tc_image17_bd7e96b427', '.jpg', 'image/jpeg', '5.75', '/uploads/tc_image17_bd7e96b427.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:35.525000', '2023-05-08 17:20:35.525000', 1, 1),
(474, 'tc_image19.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image19_b9ce512883.jpg\", \"hash\": \"thumbnail_tc_image19_b9ce512883\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image19.jpg\", \"path\": null, \"size\": 15.46, \"width\": 156, \"height\": 156}}', 'tc_image19_b9ce512883', '.jpg', 'image/jpeg', '5.97', '/uploads/tc_image19_b9ce512883.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:35.527000', '2023-05-08 17:20:35.527000', 1, 1),
(475, 'tc_image20.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image20_2074fde78c.jpg\", \"hash\": \"thumbnail_tc_image20_2074fde78c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image20.jpg\", \"path\": null, \"size\": 9.99, \"width\": 156, \"height\": 156}}', 'tc_image20_2074fde78c', '.jpg', 'image/jpeg', '4.53', '/uploads/tc_image20_2074fde78c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:35.877000', '2023-05-08 17:20:35.877000', 1, 1),
(476, 'tc_image21.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image21_9cd02eebdd.jpg\", \"hash\": \"thumbnail_tc_image21_9cd02eebdd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image21.jpg\", \"path\": null, \"size\": 1.87, \"width\": 156, \"height\": 156}}', 'tc_image21_9cd02eebdd', '.jpg', 'image/jpeg', '9.54', '/uploads/tc_image21_9cd02eebdd.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:36.151000', '2023-05-08 17:20:36.151000', 1, 1),
(477, 'tc_image21_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tc_image21_01_d239143055.jpg\", \"hash\": \"thumbnail_tc_image21_01_d239143055\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tc_image21_01.jpg\", \"path\": null, \"size\": 3.77, \"width\": 156, \"height\": 156}}', 'tc_image21_01_d239143055', '.jpg', 'image/jpeg', '22.75', '/uploads/tc_image21_01_d239143055.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:36.210000', '2023-05-08 17:20:36.210000', 1, 1),
(478, 'tinhdau_image01_01.jpg', NULL, NULL, 451, 440, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image01_01_434c0bb07f.jpg\", \"hash\": \"thumbnail_tinhdau_image01_01_434c0bb07f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image01_01.jpg\", \"path\": null, \"size\": 4.85, \"width\": 160, \"height\": 156}}', 'tinhdau_image01_01_434c0bb07f', '.jpg', 'image/jpeg', '24.49', '/uploads/tinhdau_image01_01_434c0bb07f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:36.260000', '2023-05-08 17:20:36.260000', 1, 1),
(479, 'tinhdau_image01.jpg', NULL, NULL, 501, 601, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_tinhdau_image01_1b13ba4e5a.jpg\", \"hash\": \"small_tinhdau_image01_1b13ba4e5a\", \"mime\": \"image/jpeg\", \"name\": \"small_tinhdau_image01.jpg\", \"path\": null, \"size\": 21.09, \"width\": 417, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image01_1b13ba4e5a.jpg\", \"hash\": \"thumbnail_tinhdau_image01_1b13ba4e5a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image01.jpg\", \"path\": null, \"size\": 3.05, \"width\": 130, \"height\": 156}}', 'tinhdau_image01_1b13ba4e5a', '.jpg', 'image/jpeg', '31.68', '/uploads/tinhdau_image01_1b13ba4e5a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:36.298000', '2023-05-08 17:20:36.298000', 1, 1),
(480, 'tinhdau_image02.jpg', NULL, NULL, 400, 400, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image02_5e664f1e12.jpg\", \"hash\": \"thumbnail_tinhdau_image02_5e664f1e12\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image02.jpg\", \"path\": null, \"size\": 2.62, \"width\": 156, \"height\": 156}}', 'tinhdau_image02_5e664f1e12', '.jpg', 'image/jpeg', '12.82', '/uploads/tinhdau_image02_5e664f1e12.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:36.343000', '2023-05-08 17:20:36.343000', 1, 1),
(481, 'tinhdau_image03.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image03_9c3d8b7569.jpg\", \"hash\": \"thumbnail_tinhdau_image03_9c3d8b7569\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image03.jpg\", \"path\": null, \"size\": 2.7, \"width\": 156, \"height\": 156}}', 'tinhdau_image03_9c3d8b7569', '.jpg', 'image/jpeg', '16.70', '/uploads/tinhdau_image03_9c3d8b7569.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:36.628000', '2023-05-08 17:20:36.628000', 1, 1),
(482, 'tinhdau_image03_01.jpg', NULL, NULL, 405, 470, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image03_01_ba5fb99c5d.jpg\", \"hash\": \"thumbnail_tinhdau_image03_01_ba5fb99c5d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image03_01.jpg\", \"path\": null, \"size\": 3.6, \"width\": 134, \"height\": 156}}', 'tinhdau_image03_01_ba5fb99c5d', '.jpg', 'image/jpeg', '23.98', '/uploads/tinhdau_image03_01_ba5fb99c5d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.084000', '2023-05-08 17:20:37.084000', 1, 1),
(483, 'tinhdau_image02_01.jpg', NULL, NULL, 471, 414, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image02_01_0520c018d5.jpg\", \"hash\": \"thumbnail_tinhdau_image02_01_0520c018d5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image02_01.jpg\", \"path\": null, \"size\": 22.97, \"width\": 177, \"height\": 156}}', 'tinhdau_image02_01_0520c018d5', '.jpg', 'image/jpeg', '44.59', '/uploads/tinhdau_image02_01_0520c018d5.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.201000', '2023-05-08 17:20:37.201000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(484, 'tinhdau_image06.jpg', NULL, NULL, 396, 425, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image06_785b135281.jpg\", \"hash\": \"thumbnail_tinhdau_image06_785b135281\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image06.jpg\", \"path\": null, \"size\": 2.75, \"width\": 145, \"height\": 156}}', 'tinhdau_image06_785b135281', '.jpg', 'image/jpeg', '12.62', '/uploads/tinhdau_image06_785b135281.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.310000', '2023-05-08 17:20:37.310000', 1, 1),
(485, 'tinhdau_image05_01.jpg', NULL, NULL, 400, 400, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image05_01_ef97f7e42b.jpg\", \"hash\": \"thumbnail_tinhdau_image05_01_ef97f7e42b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image05_01.jpg\", \"path\": null, \"size\": 3.95, \"width\": 156, \"height\": 156}}', 'tinhdau_image05_01_ef97f7e42b', '.jpg', 'image/jpeg', '22.03', '/uploads/tinhdau_image05_01_ef97f7e42b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.342000', '2023-05-08 17:20:37.342000', 1, 1),
(486, 'tinhdau_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image04_a90a21a625.jpg\", \"hash\": \"thumbnail_tinhdau_image04_a90a21a625\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image04.jpg\", \"path\": null, \"size\": 28.81, \"width\": 156, \"height\": 156}}', 'tinhdau_image04_a90a21a625', '.jpg', 'image/jpeg', '68.79', '/uploads/tinhdau_image04_a90a21a625.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.840000', '2023-05-08 17:20:37.840000', 1, 1),
(487, 'toner_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_toner_image01_b65fc12cf4.jpg\", \"hash\": \"thumbnail_toner_image01_b65fc12cf4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_toner_image01.jpg\", \"path\": null, \"size\": 1.9, \"width\": 156, \"height\": 156}}', 'toner_image01_b65fc12cf4', '.jpg', 'image/jpeg', '9.38', '/uploads/toner_image01_b65fc12cf4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.939000', '2023-05-08 17:20:37.939000', 1, 1),
(488, 'tinhdau_image05.jpg', NULL, NULL, 471, 565, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_tinhdau_image05_5ee4bea3f4.jpg\", \"hash\": \"small_tinhdau_image05_5ee4bea3f4\", \"mime\": \"image/jpeg\", \"name\": \"small_tinhdau_image05.jpg\", \"path\": null, \"size\": 122.23, \"width\": 417, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image05_5ee4bea3f4.jpg\", \"hash\": \"thumbnail_tinhdau_image05_5ee4bea3f4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image05.jpg\", \"path\": null, \"size\": 14.93, \"width\": 130, \"height\": 156}}', 'tinhdau_image05_5ee4bea3f4', '.jpg', 'image/jpeg', '47.32', '/uploads/tinhdau_image05_5ee4bea3f4.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.942000', '2023-05-08 17:20:37.942000', 1, 1),
(489, 'toner_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_toner_image01_01_ef7f7e9d6d.jpg\", \"hash\": \"thumbnail_toner_image01_01_ef7f7e9d6d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_toner_image01_01.jpg\", \"path\": null, \"size\": 3.67, \"width\": 156, \"height\": 156}}', 'toner_image01_01_ef7f7e9d6d', '.jpg', 'image/jpeg', '21.97', '/uploads/toner_image01_01_ef7f7e9d6d.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.972000', '2023-05-08 17:20:37.972000', 1, 1),
(490, 'toner_image02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_toner_image02_305eba7c3b.jpg\", \"hash\": \"thumbnail_toner_image02_305eba7c3b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_toner_image02.jpg\", \"path\": null, \"size\": 8.72, \"width\": 156, \"height\": 156}}', 'toner_image02_305eba7c3b', '.jpg', 'image/jpeg', '13.23', '/uploads/toner_image02_305eba7c3b.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:37.981000', '2023-05-08 17:20:37.981000', 1, 1),
(491, 'tinhdau_image06_01.jpg', NULL, NULL, 521, 464, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_tinhdau_image06_01_376419bb04.jpg\", \"hash\": \"small_tinhdau_image06_01_376419bb04\", \"mime\": \"image/jpeg\", \"name\": \"small_tinhdau_image06_01.jpg\", \"path\": null, \"size\": 26.37, \"width\": 500, \"height\": 445}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tinhdau_image06_01_376419bb04.jpg\", \"hash\": \"thumbnail_tinhdau_image06_01_376419bb04\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tinhdau_image06_01.jpg\", \"path\": null, \"size\": 4.36, \"width\": 175, \"height\": 156}}', 'tinhdau_image06_01_376419bb04', '.jpg', 'image/jpeg', '28.84', '/uploads/tinhdau_image06_01_376419bb04.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:38.047000', '2023-05-08 17:20:38.047000', 1, 1),
(492, 'trimun_image02.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image02_9d38b439fe.jpg\", \"hash\": \"thumbnail_trimun_image02_9d38b439fe\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image02.jpg\", \"path\": null, \"size\": 2.93, \"width\": 156, \"height\": 156}}', 'trimun_image02_9d38b439fe', '.jpg', 'image/jpeg', '4.48', '/uploads/trimun_image02_9d38b439fe.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:38.788000', '2023-05-08 17:20:38.788000', 1, 1),
(493, 'trimun_image01.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image01_55384690ed.jpg\", \"hash\": \"thumbnail_trimun_image01_55384690ed\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image01.jpg\", \"path\": null, \"size\": 4.14, \"width\": 156, \"height\": 156}}', 'trimun_image01_55384690ed', '.jpg', 'image/jpeg', '6.55', '/uploads/trimun_image01_55384690ed.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:38.792000', '2023-05-08 17:20:38.792000', 1, 1),
(494, 'trimun_image03.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image03_b3dae9a67a.jpg\", \"hash\": \"thumbnail_trimun_image03_b3dae9a67a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image03.jpg\", \"path\": null, \"size\": 2.59, \"width\": 156, \"height\": 156}}', 'trimun_image03_b3dae9a67a', '.jpg', 'image/jpeg', '3.81', '/uploads/trimun_image03_b3dae9a67a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:38.830000', '2023-05-08 17:20:38.830000', 1, 1),
(495, 'trimun_image04.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image04_502e47d7fe.jpg\", \"hash\": \"thumbnail_trimun_image04_502e47d7fe\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image04.jpg\", \"path\": null, \"size\": 1.99, \"width\": 156, \"height\": 156}}', 'trimun_image04_502e47d7fe', '.jpg', 'image/jpeg', '2.89', '/uploads/trimun_image04_502e47d7fe.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:38.855000', '2023-05-08 17:20:38.855000', 1, 1),
(496, 'toner_image02_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_toner_image02_01_3221d756a0.jpg\", \"hash\": \"thumbnail_toner_image02_01_3221d756a0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_toner_image02_01.jpg\", \"path\": null, \"size\": 21.88, \"width\": 156, \"height\": 156}}', 'toner_image02_01_3221d756a0', '.jpg', 'image/jpeg', '45.91', '/uploads/toner_image02_01_3221d756a0.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:38.913000', '2023-05-08 17:20:38.913000', 1, 1),
(497, 'toner_image04.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_toner_image04_deb528086a.jpg\", \"hash\": \"thumbnail_toner_image04_deb528086a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_toner_image04.jpg\", \"path\": null, \"size\": 15.01, \"width\": 156, \"height\": 156}}', 'toner_image04_deb528086a', '.jpg', 'image/jpeg', '35.84', '/uploads/toner_image04_deb528086a.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:39.292000', '2023-05-08 17:20:39.292000', 1, 1),
(498, 'trimun_image05.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image05_df2ccbb694.jpg\", \"hash\": \"thumbnail_trimun_image05_df2ccbb694\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image05.jpg\", \"path\": null, \"size\": 2.68, \"width\": 156, \"height\": 156}}', 'trimun_image05_df2ccbb694', '.jpg', 'image/jpeg', '4.25', '/uploads/trimun_image05_df2ccbb694.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:39.356000', '2023-05-08 17:20:39.356000', 1, 1),
(499, 'trimun_image06.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image06_ccafb548f9.jpg\", \"hash\": \"thumbnail_trimun_image06_ccafb548f9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image06.jpg\", \"path\": null, \"size\": 3.45, \"width\": 156, \"height\": 156}}', 'trimun_image06_ccafb548f9', '.jpg', 'image/jpeg', '21.31', '/uploads/trimun_image06_ccafb548f9.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:39.421000', '2023-05-08 17:20:39.421000', 1, 1),
(500, 'trimun_image06_02.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image06_02_6945b623e7.jpg\", \"hash\": \"thumbnail_trimun_image06_02_6945b623e7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image06_02.jpg\", \"path\": null, \"size\": 3.95, \"width\": 156, \"height\": 156}}', 'trimun_image06_02_6945b623e7', '.jpg', 'image/jpeg', '24.07', '/uploads/trimun_image06_02_6945b623e7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:39.428000', '2023-05-08 17:20:39.428000', 1, 1),
(501, 'trimun_image06_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image06_01_104bde7980.jpg\", \"hash\": \"thumbnail_trimun_image06_01_104bde7980\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image06_01.jpg\", \"path\": null, \"size\": 3.76, \"width\": 156, \"height\": 156}}', 'trimun_image06_01_104bde7980', '.jpg', 'image/jpeg', '22.89', '/uploads/trimun_image06_01_104bde7980.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:39.459000', '2023-05-08 17:20:39.459000', 1, 1),
(502, 'trimun_image07.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image07_c0b5da1858.jpg\", \"hash\": \"thumbnail_trimun_image07_c0b5da1858\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image07.jpg\", \"path\": null, \"size\": 1.72, \"width\": 156, \"height\": 156}}', 'trimun_image07_c0b5da1858', '.jpg', 'image/jpeg', '9.11', '/uploads/trimun_image07_c0b5da1858.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:39.481000', '2023-05-08 17:20:39.481000', 1, 1),
(503, 'trimun_image08.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image08_16d1ccf187.jpg\", \"hash\": \"thumbnail_trimun_image08_16d1ccf187\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image08.jpg\", \"path\": null, \"size\": 2.79, \"width\": 156, \"height\": 156}}', 'trimun_image08_16d1ccf187', '.jpg', 'image/jpeg', '17.14', '/uploads/trimun_image08_16d1ccf187.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.082000', '2023-05-08 17:20:40.082000', 1, 1),
(504, 'trimun_image09.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image09_c2caf24625.jpg\", \"hash\": \"thumbnail_trimun_image09_c2caf24625\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image09.jpg\", \"path\": null, \"size\": 1.33, \"width\": 156, \"height\": 156}}', 'trimun_image09_c2caf24625', '.jpg', 'image/jpeg', '6.57', '/uploads/trimun_image09_c2caf24625.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.158000', '2023-05-08 17:20:40.158000', 1, 1),
(505, 'trimun_image10.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image10_ebb534f6a1.jpg\", \"hash\": \"thumbnail_trimun_image10_ebb534f6a1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image10.jpg\", \"path\": null, \"size\": 1.89, \"width\": 156, \"height\": 156}}', 'trimun_image10_ebb534f6a1', '.jpg', 'image/jpeg', '2.70', '/uploads/trimun_image10_ebb534f6a1.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.160000', '2023-05-08 17:20:40.160000', 1, 1),
(506, 'trimun_image11.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image11_0fe647c632.jpg\", \"hash\": \"thumbnail_trimun_image11_0fe647c632\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image11.jpg\", \"path\": null, \"size\": 2.98, \"width\": 156, \"height\": 156}}', 'trimun_image11_0fe647c632', '.jpg', 'image/jpeg', '4.50', '/uploads/trimun_image11_0fe647c632.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.177000', '2023-05-08 17:20:40.177000', 1, 1),
(507, 'trimun_image12.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image12_a91606f32f.jpg\", \"hash\": \"thumbnail_trimun_image12_a91606f32f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image12.jpg\", \"path\": null, \"size\": 5.84, \"width\": 156, \"height\": 156}}', 'trimun_image12_a91606f32f', '.jpg', 'image/jpeg', '7.41', '/uploads/trimun_image12_a91606f32f.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.257000', '2023-05-08 17:20:40.257000', 1, 1),
(508, 'trimun_image09_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image09_01_8530f5940c.jpg\", \"hash\": \"thumbnail_trimun_image09_01_8530f5940c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image09_01.jpg\", \"path\": null, \"size\": 42.48, \"width\": 156, \"height\": 156}}', 'trimun_image09_01_8530f5940c', '.jpg', 'image/jpeg', '94.00', '/uploads/trimun_image09_01_8530f5940c.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.808000', '2023-05-08 17:20:40.808000', 1, 1),
(509, 'trimun_image15.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image15_bf3c46bd53.jpg\", \"hash\": \"thumbnail_trimun_image15_bf3c46bd53\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image15.jpg\", \"path\": null, \"size\": 1.45, \"width\": 156, \"height\": 156}}', 'trimun_image15_bf3c46bd53', '.jpg', 'image/jpeg', '2.06', '/uploads/trimun_image15_bf3c46bd53.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.826000', '2023-05-08 17:20:40.826000', 1, 1),
(510, 'trimun_image16.jpg', NULL, NULL, 218, 217, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image16_05205c33ef.jpg\", \"hash\": \"thumbnail_trimun_image16_05205c33ef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image16.jpg\", \"path\": null, \"size\": 13.9, \"width\": 157, \"height\": 156}}', 'trimun_image16_05205c33ef', '.jpg', 'image/jpeg', '6.02', '/uploads/trimun_image16_05205c33ef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.899000', '2023-05-08 17:20:40.899000', 1, 1),
(511, 'trimun_image13.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image13_b420dbfed7.jpg\", \"hash\": \"thumbnail_trimun_image13_b420dbfed7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image13.jpg\", \"path\": null, \"size\": 15.88, \"width\": 156, \"height\": 156}}', 'trimun_image13_b420dbfed7', '.jpg', 'image/jpeg', '7.15', '/uploads/trimun_image13_b420dbfed7.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.906000', '2023-05-08 17:20:40.906000', 1, 1),
(512, 'trimun_image17.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image17_a7874a1879.jpg\", \"hash\": \"thumbnail_trimun_image17_a7874a1879\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image17.jpg\", \"path\": null, \"size\": 9.42, \"width\": 156, \"height\": 156}}', 'trimun_image17_a7874a1879', '.jpg', 'image/jpeg', '4.20', '/uploads/trimun_image17_a7874a1879.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:40.946000', '2023-05-08 17:20:40.946000', 1, 1),
(513, 'trimun_image12_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image12_01_53f501c1ef.jpg\", \"hash\": \"thumbnail_trimun_image12_01_53f501c1ef\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image12_01.jpg\", \"path\": null, \"size\": 25.51, \"width\": 156, \"height\": 156}}', 'trimun_image12_01_53f501c1ef', '.jpg', 'image/jpeg', '44.96', '/uploads/trimun_image12_01_53f501c1ef.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:41.081000', '2023-05-08 17:20:41.081000', 1, 1),
(514, 'xitkhoang_image01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xitkhoang_image01_d7b85a4aa8.jpg\", \"hash\": \"thumbnail_xitkhoang_image01_d7b85a4aa8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xitkhoang_image01.jpg\", \"path\": null, \"size\": 1.35, \"width\": 156, \"height\": 156}}', 'xitkhoang_image01_d7b85a4aa8', '.jpg', 'image/jpeg', '5.59', '/uploads/xitkhoang_image01_d7b85a4aa8.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:41.372000', '2023-05-08 17:20:41.372000', 1, 1),
(515, 'trimun_image14.jpg', NULL, NULL, 218, 218, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_trimun_image14_59491783a2.jpg\", \"hash\": \"thumbnail_trimun_image14_59491783a2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_trimun_image14.jpg\", \"path\": null, \"size\": 1.97, \"width\": 156, \"height\": 156}}', 'trimun_image14_59491783a2', '.jpg', 'image/jpeg', '2.90', '/uploads/trimun_image14_59491783a2.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:41.536000', '2023-05-08 17:20:41.536000', 1, 1),
(516, 'unnamed.jpg', NULL, NULL, 512, 342, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_unnamed_6c101994bb.jpg\", \"hash\": \"small_unnamed_6c101994bb\", \"mime\": \"image/jpeg\", \"name\": \"small_unnamed.jpg\", \"path\": null, \"size\": 35.74, \"width\": 500, \"height\": 334}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_unnamed_6c101994bb.jpg\", \"hash\": \"thumbnail_unnamed_6c101994bb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_unnamed.jpg\", \"path\": null, \"size\": 10.82, \"width\": 234, \"height\": 156}}', 'unnamed_6c101994bb', '.jpg', 'image/jpeg', '37.16', '/uploads/unnamed_6c101994bb.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:41.589000', '2023-05-08 20:16:24.917000', 1, 1),
(517, 'toner_image04_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_toner_image04_01_4d117b6097.jpg\", \"hash\": \"thumbnail_toner_image04_01_4d117b6097\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_toner_image04_01.jpg\", \"path\": null, \"size\": 32.02, \"width\": 156, \"height\": 156}}', 'toner_image04_01_4d117b6097', '.jpg', 'image/jpeg', '75.71', '/uploads/toner_image04_01_4d117b6097.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:42.054000', '2023-05-08 20:16:20.988000', 1, 1),
(518, 'xitkhoang_image01_01.jpg', NULL, NULL, 471, 471, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xitkhoang_image01_01_57ec950937.jpg\", \"hash\": \"thumbnail_xitkhoang_image01_01_57ec950937\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xitkhoang_image01_01.jpg\", \"path\": null, \"size\": 60.34, \"width\": 156, \"height\": 156}}', 'xitkhoang_image01_01_57ec950937', '.jpg', 'image/jpeg', '169.97', '/uploads/xitkhoang_image01_01_57ec950937.jpg', NULL, 'local', NULL, '/2', '2023-05-08 17:20:42.490000', '2023-05-08 17:20:42.490000', 1, 1),
(519, 'b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp', NULL, NULL, 1280, 1600, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b.webp\", \"hash\": \"large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b\", \"mime\": \"image/webp\", \"name\": \"large_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 29.44, \"width\": 800, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b.webp\", \"hash\": \"small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b\", \"mime\": \"image/webp\", \"name\": \"small_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 9.09, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b.webp\", \"hash\": \"medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b\", \"mime\": \"image/webp\", \"name\": \"medium_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 17.87, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b.webp\", \"hash\": \"thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b\", \"mime\": \"image/webp\", \"name\": \"thumbnail_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 1.68, \"width\": 125, \"height\": 156}}', 'b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b', '.webp', 'image/webp', '78.62', '/uploads/b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_70fc5a1d0b.webp', NULL, 'local', NULL, '/3', '2023-05-30 16:17:38.045000', '2023-05-30 16:17:38.045000', NULL, NULL),
(520, 'b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp', NULL, NULL, 1280, 1600, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165.webp\", \"hash\": \"large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165\", \"mime\": \"image/webp\", \"name\": \"large_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 29.44, \"width\": 800, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165.webp\", \"hash\": \"small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165\", \"mime\": \"image/webp\", \"name\": \"small_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 9.09, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165.webp\", \"hash\": \"medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165\", \"mime\": \"image/webp\", \"name\": \"medium_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 17.87, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165.webp\", \"hash\": \"thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165\", \"mime\": \"image/webp\", \"name\": \"thumbnail_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 1.68, \"width\": 125, \"height\": 156}}', 'b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165', '.webp', 'image/webp', '78.62', '/uploads/b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_633ab0c165.webp', NULL, 'local', NULL, '/3', '2023-05-30 16:17:38.157000', '2023-05-30 16:17:38.157000', NULL, NULL),
(521, 'b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp', NULL, NULL, 1280, 1600, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920.webp\", \"hash\": \"large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920\", \"mime\": \"image/webp\", \"name\": \"large_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 29.44, \"width\": 800, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920.webp\", \"hash\": \"small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920\", \"mime\": \"image/webp\", \"name\": \"small_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 9.09, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920.webp\", \"hash\": \"medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920\", \"mime\": \"image/webp\", \"name\": \"medium_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 17.87, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920.webp\", \"hash\": \"thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920\", \"mime\": \"image/webp\", \"name\": \"thumbnail_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 1.68, \"width\": 125, \"height\": 156}}', 'b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920', '.webp', 'image/webp', '78.62', '/uploads/b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_e0bf2a0920.webp', NULL, 'local', NULL, '/4', '2023-05-30 16:17:38.071000', '2023-05-30 16:17:38.071000', NULL, NULL),
(522, '124010.png', NULL, NULL, 30, 30, NULL, '124010_28fb423029', '.png', 'image/png', '0.28', '/uploads/124010_28fb423029.png', NULL, 'local', NULL, '/4', '2023-05-30 16:19:44.018000', '2023-05-30 16:19:44.018000', NULL, NULL),
(523, '124010.png', NULL, NULL, 30, 30, NULL, '124010_fe29ed33d3', '.png', 'image/png', '0.28', '/uploads/124010_fe29ed33d3.png', NULL, 'local', NULL, '/4', '2023-05-30 16:35:17.687000', '2023-05-30 16:35:17.687000', NULL, NULL),
(524, 'b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp', NULL, NULL, 1280, 1600, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37.webp\", \"hash\": \"large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37\", \"mime\": \"image/webp\", \"name\": \"large_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 29.44, \"width\": 800, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37.webp\", \"hash\": \"small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37\", \"mime\": \"image/webp\", \"name\": \"small_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 9.09, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37.webp\", \"hash\": \"medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37\", \"mime\": \"image/webp\", \"name\": \"medium_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 17.87, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37.webp\", \"hash\": \"thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37\", \"mime\": \"image/webp\", \"name\": \"thumbnail_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 1.68, \"width\": 125, \"height\": 156}}', 'b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37', '.webp', 'image/webp', '78.62', '/uploads/b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_eabfc94c37.webp', NULL, 'local', NULL, '/4', '2023-05-30 16:38:38.816000', '2023-05-30 16:38:38.816000', NULL, NULL),
(525, 'b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp', NULL, NULL, 1280, 1600, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28.webp\", \"hash\": \"large_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28\", \"mime\": \"image/webp\", \"name\": \"large_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 29.44, \"width\": 800, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28.webp\", \"hash\": \"small_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28\", \"mime\": \"image/webp\", \"name\": \"small_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 9.09, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28.webp\", \"hash\": \"medium_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28\", \"mime\": \"image/webp\", \"name\": \"medium_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 17.87, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28.webp\", \"hash\": \"thumbnail_b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28\", \"mime\": \"image/webp\", \"name\": \"thumbnail_b38436e0-1698-4ccd-ad71-7f64bb805ea6 - Copy.webp\", \"path\": null, \"size\": 1.68, \"width\": 125, \"height\": 156}}', 'b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28', '.webp', 'image/webp', '78.62', '/uploads/b38436e0_1698_4ccd_ad71_7f64bb805ea6_Copy_5ab7897b28.webp', NULL, 'local', NULL, '/4', '2023-05-30 16:38:40.374000', '2023-05-30 16:38:40.374000', NULL, NULL),
(526, '124010.png', NULL, NULL, 30, 30, NULL, '124010_46385b293e', '.png', 'image/png', '0.28', '/uploads/124010_46385b293e.png', NULL, 'local', NULL, '/4', '2023-05-30 16:41:13.839000', '2023-05-30 16:41:13.839000', NULL, NULL),
(527, 'bb3109602b80ef41c038dec67948f82c.jpeg', NULL, NULL, 930, 930, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_bb3109602b80ef41c038dec67948f82c_e336fcc0b6.jpeg\", \"hash\": \"small_bb3109602b80ef41c038dec67948f82c_e336fcc0b6\", \"mime\": \"image/jpeg\", \"name\": \"small_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 10.86, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_bb3109602b80ef41c038dec67948f82c_e336fcc0b6.jpeg\", \"hash\": \"medium_bb3109602b80ef41c038dec67948f82c_e336fcc0b6\", \"mime\": \"image/jpeg\", \"name\": \"medium_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 20.09, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_bb3109602b80ef41c038dec67948f82c_e336fcc0b6.jpeg\", \"hash\": \"thumbnail_bb3109602b80ef41c038dec67948f82c_e336fcc0b6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 2.44, \"width\": 156, \"height\": 156}}', 'bb3109602b80ef41c038dec67948f82c_e336fcc0b6', '.jpeg', 'image/jpeg', '28.52', '/uploads/bb3109602b80ef41c038dec67948f82c_e336fcc0b6.jpeg', NULL, 'local', NULL, '/4', '2023-05-30 17:52:56.673000', '2023-05-30 17:52:56.673000', NULL, NULL),
(528, 'f96f7616a390208766af858e1dd16561 - Copy.jpeg', NULL, NULL, 846, 846, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_f96f7616a390208766af858e1dd16561_Copy_bf9f348734.jpeg\", \"hash\": \"small_f96f7616a390208766af858e1dd16561_Copy_bf9f348734\", \"mime\": \"image/jpeg\", \"name\": \"small_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 10.44, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_f96f7616a390208766af858e1dd16561_Copy_bf9f348734.jpeg\", \"hash\": \"medium_f96f7616a390208766af858e1dd16561_Copy_bf9f348734\", \"mime\": \"image/jpeg\", \"name\": \"medium_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 20.64, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_f96f7616a390208766af858e1dd16561_Copy_bf9f348734.jpeg\", \"hash\": \"thumbnail_f96f7616a390208766af858e1dd16561_Copy_bf9f348734\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 2.45, \"width\": 156, \"height\": 156}}', 'f96f7616a390208766af858e1dd16561_Copy_bf9f348734', '.jpeg', 'image/jpeg', '25.20', '/uploads/f96f7616a390208766af858e1dd16561_Copy_bf9f348734.jpeg', NULL, 'local', NULL, '/4', '2023-05-30 17:53:14.594000', '2023-05-30 17:53:14.594000', NULL, NULL),
(529, 'f96f7616a390208766af858e1dd16561 - Copy.jpeg', NULL, NULL, 846, 846, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1.jpeg\", \"hash\": \"small_f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1\", \"mime\": \"image/jpeg\", \"name\": \"small_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 10.44, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1.jpeg\", \"hash\": \"medium_f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1\", \"mime\": \"image/jpeg\", \"name\": \"medium_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 20.64, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1.jpeg\", \"hash\": \"thumbnail_f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 2.45, \"width\": 156, \"height\": 156}}', 'f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1', '.jpeg', 'image/jpeg', '25.20', '/uploads/f96f7616a390208766af858e1dd16561_Copy_59cb8c43b1.jpeg', NULL, 'local', NULL, '/4', '2023-05-30 17:53:31.411000', '2023-05-30 17:53:31.411000', NULL, NULL),
(530, '主图-02-1 - Copy.jpg', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_02_1_Copy_a58a4378fb.jpg\", \"hash\": \"large_02_1_Copy_a58a4378fb\", \"mime\": \"image/jpeg\", \"name\": \"large_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 26.57, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_02_1_Copy_a58a4378fb.jpg\", \"hash\": \"small_02_1_Copy_a58a4378fb\", \"mime\": \"image/jpeg\", \"name\": \"small_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 8.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_02_1_Copy_a58a4378fb.jpg\", \"hash\": \"medium_02_1_Copy_a58a4378fb\", \"mime\": \"image/jpeg\", \"name\": \"medium_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 16.37, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_02_1_Copy_a58a4378fb.jpg\", \"hash\": \"thumbnail_02_1_Copy_a58a4378fb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 2.18, \"width\": 156, \"height\": 156}}', '02_1_Copy_a58a4378fb', '.jpg', 'image/jpeg', '27.62', '/uploads/02_1_Copy_a58a4378fb.jpg', NULL, 'local', NULL, '/4', '2023-05-30 17:58:13.370000', '2023-05-30 17:58:13.370000', NULL, NULL),
(531, 'an-ap0491-(t)_1.jpg', NULL, NULL, 1800, 1800, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_an_ap0491_t_1_e930f4be4f.jpg\", \"hash\": \"large_an_ap0491_t_1_e930f4be4f\", \"mime\": \"image/jpeg\", \"name\": \"large_an-ap0491-(t)_1.jpg\", \"path\": null, \"size\": 59.02, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_an_ap0491_t_1_e930f4be4f.jpg\", \"hash\": \"small_an_ap0491_t_1_e930f4be4f\", \"mime\": \"image/jpeg\", \"name\": \"small_an-ap0491-(t)_1.jpg\", \"path\": null, \"size\": 15.53, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_an_ap0491_t_1_e930f4be4f.jpg\", \"hash\": \"medium_an_ap0491_t_1_e930f4be4f\", \"mime\": \"image/jpeg\", \"name\": \"medium_an-ap0491-(t)_1.jpg\", \"path\": null, \"size\": 33.15, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_an_ap0491_t_1_e930f4be4f.jpg\", \"hash\": \"thumbnail_an_ap0491_t_1_e930f4be4f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_an-ap0491-(t)_1.jpg\", \"path\": null, \"size\": 2.64, \"width\": 156, \"height\": 156}}', 'an_ap0491_t_1_e930f4be4f', '.jpg', 'image/jpeg', '249.17', '/uploads/an_ap0491_t_1_e930f4be4f.jpg', NULL, 'local', NULL, '/4', '2023-05-30 17:59:29.140000', '2023-05-30 17:59:29.140000', NULL, NULL),
(532, 'th.jpg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_th_6ee978d63f.jpg\", \"hash\": \"thumbnail_th_6ee978d63f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_th.jpg\", \"path\": null, \"size\": 2.39, \"width\": 156, \"height\": 156}}', 'th_6ee978d63f', '.jpg', 'image/jpeg', '8.05', '/uploads/th_6ee978d63f.jpg', NULL, 'local', NULL, '/4', '2023-05-30 18:00:48.416000', '2023-05-30 18:00:48.416000', NULL, NULL),
(533, '主图-02-2.jpg', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_02_2_0073259304.jpg\", \"hash\": \"large_02_2_0073259304\", \"mime\": \"image/jpeg\", \"name\": \"large_主图-02-2.jpg\", \"path\": null, \"size\": 41.72, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_02_2_0073259304.jpg\", \"hash\": \"small_02_2_0073259304\", \"mime\": \"image/jpeg\", \"name\": \"small_主图-02-2.jpg\", \"path\": null, \"size\": 13.22, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_02_2_0073259304.jpg\", \"hash\": \"medium_02_2_0073259304\", \"mime\": \"image/jpeg\", \"name\": \"medium_主图-02-2.jpg\", \"path\": null, \"size\": 25.5, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_02_2_0073259304.jpg\", \"hash\": \"thumbnail_02_2_0073259304\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_主图-02-2.jpg\", \"path\": null, \"size\": 2.78, \"width\": 156, \"height\": 156}}', '02_2_0073259304', '.jpg', 'image/jpeg', '42.71', '/uploads/02_2_0073259304.jpg', NULL, 'local', NULL, '/4', '2023-05-30 18:08:31.611000', '2023-05-30 18:08:31.611000', NULL, NULL),
(534, 'f96f7616a390208766af858e1dd16561 - Copy.jpeg', NULL, NULL, 846, 846, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_f96f7616a390208766af858e1dd16561_Copy_966477f75c.jpeg\", \"hash\": \"small_f96f7616a390208766af858e1dd16561_Copy_966477f75c\", \"mime\": \"image/jpeg\", \"name\": \"small_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 10.44, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_f96f7616a390208766af858e1dd16561_Copy_966477f75c.jpeg\", \"hash\": \"medium_f96f7616a390208766af858e1dd16561_Copy_966477f75c\", \"mime\": \"image/jpeg\", \"name\": \"medium_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 20.64, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_f96f7616a390208766af858e1dd16561_Copy_966477f75c.jpeg\", \"hash\": \"thumbnail_f96f7616a390208766af858e1dd16561_Copy_966477f75c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_f96f7616a390208766af858e1dd16561 - Copy.jpeg\", \"path\": null, \"size\": 2.45, \"width\": 156, \"height\": 156}}', 'f96f7616a390208766af858e1dd16561_Copy_966477f75c', '.jpeg', 'image/jpeg', '25.20', '/uploads/f96f7616a390208766af858e1dd16561_Copy_966477f75c.jpeg', NULL, 'local', NULL, '/4', '2023-05-30 18:10:42.837000', '2023-05-30 18:10:42.837000', NULL, NULL),
(535, 'bb3109602b80ef41c038dec67948f82c.jpeg', NULL, NULL, 930, 930, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_bb3109602b80ef41c038dec67948f82c_c6744b525f.jpeg\", \"hash\": \"small_bb3109602b80ef41c038dec67948f82c_c6744b525f\", \"mime\": \"image/jpeg\", \"name\": \"small_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 10.86, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_bb3109602b80ef41c038dec67948f82c_c6744b525f.jpeg\", \"hash\": \"medium_bb3109602b80ef41c038dec67948f82c_c6744b525f\", \"mime\": \"image/jpeg\", \"name\": \"medium_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 20.09, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_bb3109602b80ef41c038dec67948f82c_c6744b525f.jpeg\", \"hash\": \"thumbnail_bb3109602b80ef41c038dec67948f82c_c6744b525f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 2.44, \"width\": 156, \"height\": 156}}', 'bb3109602b80ef41c038dec67948f82c_c6744b525f', '.jpeg', 'image/jpeg', '28.52', '/uploads/bb3109602b80ef41c038dec67948f82c_c6744b525f.jpeg', NULL, 'local', NULL, '/4', '2023-05-30 18:18:40.819000', '2023-05-30 18:18:40.819000', NULL, NULL),
(536, 'Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg', NULL, NULL, 700, 875, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa.jpg\", \"hash\": \"small_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa\", \"mime\": \"image/jpeg\", \"name\": \"small_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 9.98, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa.jpg\", \"hash\": \"medium_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa\", \"mime\": \"image/jpeg\", \"name\": \"medium_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 19.63, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa.jpg\", \"hash\": \"thumbnail_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 2.11, \"width\": 125, \"height\": 156}}', 'Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa', '.jpg', 'image/jpeg', '26.44', '/uploads/Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_56404747fa.jpg', NULL, 'local', NULL, '/4', '2023-05-30 18:18:50.126000', '2023-05-30 18:18:50.126000', NULL, NULL),
(537, 'bb3109602b80ef41c038dec67948f82c.jpeg', NULL, NULL, 930, 930, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_bb3109602b80ef41c038dec67948f82c_13155f3fe1.jpeg\", \"hash\": \"small_bb3109602b80ef41c038dec67948f82c_13155f3fe1\", \"mime\": \"image/jpeg\", \"name\": \"small_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 10.86, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_bb3109602b80ef41c038dec67948f82c_13155f3fe1.jpeg\", \"hash\": \"medium_bb3109602b80ef41c038dec67948f82c_13155f3fe1\", \"mime\": \"image/jpeg\", \"name\": \"medium_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 20.09, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_bb3109602b80ef41c038dec67948f82c_13155f3fe1.jpeg\", \"hash\": \"thumbnail_bb3109602b80ef41c038dec67948f82c_13155f3fe1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bb3109602b80ef41c038dec67948f82c.jpeg\", \"path\": null, \"size\": 2.44, \"width\": 156, \"height\": 156}}', 'bb3109602b80ef41c038dec67948f82c_13155f3fe1', '.jpeg', 'image/jpeg', '28.52', '/uploads/bb3109602b80ef41c038dec67948f82c_13155f3fe1.jpeg', NULL, 'local', NULL, '/4', '2023-05-30 18:20:24.894000', '2023-05-30 18:20:24.894000', NULL, NULL),
(538, 'Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg', NULL, NULL, 700, 875, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428.jpg\", \"hash\": \"small_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428\", \"mime\": \"image/jpeg\", \"name\": \"small_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 9.98, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428.jpg\", \"hash\": \"medium_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428\", \"mime\": \"image/jpeg\", \"name\": \"medium_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 19.63, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428.jpg\", \"hash\": \"thumbnail_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 2.11, \"width\": 125, \"height\": 156}}', 'Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428', '.jpg', 'image/jpeg', '26.44', '/uploads/Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_089c64c428.jpg', NULL, 'local', NULL, '/4', '2023-05-30 18:20:31.460000', '2023-05-30 18:20:31.460000', NULL, NULL),
(539, 'Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg', NULL, NULL, 700, 875, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13.jpg\", \"hash\": \"small_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13\", \"mime\": \"image/jpeg\", \"name\": \"small_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 9.98, \"width\": 400, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13.jpg\", \"hash\": \"medium_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13\", \"mime\": \"image/jpeg\", \"name\": \"medium_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 19.63, \"width\": 600, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13.jpg\", \"hash\": \"thumbnail_Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Ao-thun-nam-nautica-xanh-ngoc-e1587654077653.jpg\", \"path\": null, \"size\": 2.11, \"width\": 125, \"height\": 156}}', 'Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13', '.jpg', 'image/jpeg', '26.44', '/uploads/Ao_thun_nam_nautica_xanh_ngoc_e1587654077653_8f2d93fb13.jpg', NULL, 'local', NULL, '/4', '2023-05-30 18:28:32.822000', '2023-05-30 18:28:32.822000', NULL, NULL),
(540, '主图-02-1 - Copy.jpg', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_02_1_Copy_4d19a84995.jpg\", \"hash\": \"large_02_1_Copy_4d19a84995\", \"mime\": \"image/jpeg\", \"name\": \"large_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 26.57, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_02_1_Copy_4d19a84995.jpg\", \"hash\": \"small_02_1_Copy_4d19a84995\", \"mime\": \"image/jpeg\", \"name\": \"small_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 8.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_02_1_Copy_4d19a84995.jpg\", \"hash\": \"medium_02_1_Copy_4d19a84995\", \"mime\": \"image/jpeg\", \"name\": \"medium_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 16.37, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_02_1_Copy_4d19a84995.jpg\", \"hash\": \"thumbnail_02_1_Copy_4d19a84995\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_主图-02-1 - Copy.jpg\", \"path\": null, \"size\": 2.18, \"width\": 156, \"height\": 156}}', '02_1_Copy_4d19a84995', '.jpg', 'image/jpeg', '27.62', '/uploads/02_1_Copy_4d19a84995.jpg', NULL, 'local', NULL, '/4', '2023-05-30 18:28:43.727000', '2023-05-30 18:28:43.727000', NULL, NULL),
(541, '6-5555-xtoon-white-original-image34eajjz4bpg.webp', NULL, NULL, 832, 832, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60.webp\", \"hash\": \"small_6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60\", \"mime\": \"image/webp\", \"name\": \"small_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 17.85, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60.webp\", \"hash\": \"medium_6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60\", \"mime\": \"image/webp\", \"name\": \"medium_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 25.81, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60.webp\", \"hash\": \"thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 4.44, \"width\": 156, \"height\": 156}}', '6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60', '.webp', 'image/webp', '24.24', '/uploads/6_5555_xtoon_white_original_image34eajjz4bpg_0c5f87ca60.webp', NULL, 'local', NULL, '/4', '2023-05-30 18:57:15.957000', '2023-05-30 18:57:15.957000', NULL, NULL),
(542, 'images.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_3589341b72.jpg\", \"hash\": \"thumbnail_images_3589341b72\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images.jpg\", \"path\": null, \"size\": 1.37, \"width\": 156, \"height\": 156}}', 'images_3589341b72', '.jpg', 'image/jpeg', '1.95', '/uploads/images_3589341b72.jpg', NULL, 'local', NULL, '/4', '2023-05-30 18:57:26.906000', '2023-05-30 18:57:26.906000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(543, '81Z86sksD2L._AC_UF1000,1000_QL80_.jpg', NULL, NULL, 1000, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174.jpg\", \"hash\": \"small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174\", \"mime\": \"image/jpeg\", \"name\": \"small_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 18.64, \"width\": 500, \"height\": 300}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174.jpg\", \"hash\": \"medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174\", \"mime\": \"image/jpeg\", \"name\": \"medium_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 38.09, \"width\": 750, \"height\": 449}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174.jpg\", \"hash\": \"thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 4.45, \"width\": 245, \"height\": 147}}', '81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174', '.jpg', 'image/jpeg', '45.57', '/uploads/81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_6c67d4a174.jpg', NULL, 'local', NULL, '/4', '2023-06-03 15:17:51.050000', '2023-06-03 15:17:51.050000', NULL, NULL),
(544, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_99ae940a5e.webp\", \"hash\": \"small_product_image_1337746865_99ae940a5e\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_99ae940a5e.webp\", \"hash\": \"thumbnail_product_image_1337746865_99ae940a5e\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_99ae940a5e', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_99ae940a5e.webp', NULL, 'local', NULL, '/4', '2023-06-03 15:19:19.922000', '2023-06-03 15:19:19.922000', NULL, NULL),
(545, 'z4248500990481_dc4c208b58ca3e2d456914529bb7b426.jpg', NULL, NULL, 800, 500, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96.jpg\", \"hash\": \"small_z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96\", \"mime\": \"image/jpeg\", \"name\": \"small_z4248500990481_dc4c208b58ca3e2d456914529bb7b426.jpg\", \"path\": null, \"size\": 11.07, \"width\": 500, \"height\": 313}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96.jpg\", \"hash\": \"medium_z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96\", \"mime\": \"image/jpeg\", \"name\": \"medium_z4248500990481_dc4c208b58ca3e2d456914529bb7b426.jpg\", \"path\": null, \"size\": 18.17, \"width\": 750, \"height\": 469}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96.jpg\", \"hash\": \"thumbnail_z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_z4248500990481_dc4c208b58ca3e2d456914529bb7b426.jpg\", \"path\": null, \"size\": 5.14, \"width\": 245, \"height\": 153}}', 'z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96', '.jpg', 'image/jpeg', '18.63', '/uploads/z4248500990481_dc4c208b58ca3e2d456914529bb7b426_cdcfea5f96.jpg', NULL, 'local', NULL, '/4', '2023-06-03 15:19:28.107000', '2023-06-03 15:19:28.107000', NULL, NULL),
(546, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_5dbdabf5a0.webp\", \"hash\": \"small_product_image_1337746865_5dbdabf5a0\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_5dbdabf5a0.webp\", \"hash\": \"thumbnail_product_image_1337746865_5dbdabf5a0\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_5dbdabf5a0', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_5dbdabf5a0.webp', NULL, 'local', NULL, '/4', '2023-06-03 15:20:37.725000', '2023-06-03 15:20:37.725000', NULL, NULL),
(547, 'images (1).jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_1_f94e708e6e.jpg\", \"hash\": \"thumbnail_images_1_f94e708e6e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images (1).jpg\", \"path\": null, \"size\": 3.13, \"width\": 156, \"height\": 156}}', 'images_1_f94e708e6e', '.jpg', 'image/jpeg', '4.22', '/uploads/images_1_f94e708e6e.jpg', NULL, 'local', NULL, '/4', '2023-06-03 15:20:43.651000', '2023-06-03 15:20:43.651000', NULL, NULL),
(548, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_7768f6316f.webp\", \"hash\": \"small_product_image_1337746865_7768f6316f\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_7768f6316f.webp\", \"hash\": \"thumbnail_product_image_1337746865_7768f6316f\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_7768f6316f', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_7768f6316f.webp', NULL, 'local', NULL, '/4', '2023-06-03 15:21:54.122000', '2023-06-03 15:21:54.122000', NULL, NULL),
(549, 'images (1).jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_1_b26aea5a89.jpg\", \"hash\": \"thumbnail_images_1_b26aea5a89\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images (1).jpg\", \"path\": null, \"size\": 3.13, \"width\": 156, \"height\": 156}}', 'images_1_b26aea5a89', '.jpg', 'image/jpeg', '4.22', '/uploads/images_1_b26aea5a89.jpg', NULL, 'local', NULL, '/4', '2023-06-03 15:21:58.614000', '2023-06-03 15:21:58.614000', NULL, NULL),
(550, '81Z86sksD2L._AC_UF1000,1000_QL80_.jpg', NULL, NULL, 1000, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575.jpg\", \"hash\": \"small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575\", \"mime\": \"image/jpeg\", \"name\": \"small_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 18.64, \"width\": 500, \"height\": 300}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575.jpg\", \"hash\": \"medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575\", \"mime\": \"image/jpeg\", \"name\": \"medium_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 38.09, \"width\": 750, \"height\": 449}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575.jpg\", \"hash\": \"thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 4.45, \"width\": 245, \"height\": 147}}', '81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575', '.jpg', 'image/jpeg', '45.57', '/uploads/81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e8a067f575.jpg', NULL, 'local', NULL, '/4', '2023-06-03 19:45:13.090000', '2023-06-03 19:45:13.090000', NULL, NULL),
(551, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_6bb8fce712.webp\", \"hash\": \"small_product_image_1337746865_6bb8fce712\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_6bb8fce712.webp\", \"hash\": \"thumbnail_product_image_1337746865_6bb8fce712\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_6bb8fce712', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_6bb8fce712.webp', NULL, 'local', NULL, '/4', '2023-06-03 19:45:43.214000', '2023-06-03 19:45:43.214000', NULL, NULL),
(552, '81Z86sksD2L._AC_UF1000,1000_QL80_.jpg', NULL, NULL, 1000, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a.jpg\", \"hash\": \"small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a\", \"mime\": \"image/jpeg\", \"name\": \"small_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 18.64, \"width\": 500, \"height\": 300}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a.jpg\", \"hash\": \"medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a\", \"mime\": \"image/jpeg\", \"name\": \"medium_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 38.09, \"width\": 750, \"height\": 449}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a.jpg\", \"hash\": \"thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 4.45, \"width\": 245, \"height\": 147}}', '81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a', '.jpg', 'image/jpeg', '45.57', '/uploads/81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_f93a70821a.jpg', NULL, 'local', NULL, '/4', '2023-06-03 19:45:51.646000', '2023-06-03 19:45:51.646000', NULL, NULL),
(553, 'fitnessmat-pro.jpg', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_fitnessmat_pro_4f9195f0f9.jpg\", \"hash\": \"thumbnail_fitnessmat_pro_4f9195f0f9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_fitnessmat-pro.jpg\", \"path\": null, \"size\": 3.2, \"width\": 156, \"height\": 156}}', 'fitnessmat_pro_4f9195f0f9', '.jpg', 'image/jpeg', '23.54', '/uploads/fitnessmat_pro_4f9195f0f9.jpg', NULL, 'local', NULL, '/4', '2023-06-03 19:48:50.319000', '2023-06-03 19:48:50.319000', NULL, NULL),
(554, '81Z86sksD2L._AC_UF1000,1000_QL80_.jpg', NULL, NULL, 1000, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca.jpg\", \"hash\": \"small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca\", \"mime\": \"image/jpeg\", \"name\": \"small_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 18.64, \"width\": 500, \"height\": 300}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca.jpg\", \"hash\": \"medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca\", \"mime\": \"image/jpeg\", \"name\": \"medium_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 38.09, \"width\": 750, \"height\": 449}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca.jpg\", \"hash\": \"thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 4.45, \"width\": 245, \"height\": 147}}', '81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca', '.jpg', 'image/jpeg', '45.57', '/uploads/81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_5762e576ca.jpg', NULL, 'local', NULL, '/4', '2023-06-03 19:50:56.678000', '2023-06-03 19:50:56.678000', NULL, NULL),
(555, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_8c7d52571c.webp\", \"hash\": \"small_product_image_1337746865_8c7d52571c\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_8c7d52571c.webp\", \"hash\": \"thumbnail_product_image_1337746865_8c7d52571c\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_8c7d52571c', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_8c7d52571c.webp', NULL, 'local', NULL, '/4', '2023-06-03 19:51:50.128000', '2023-06-03 19:51:50.128000', NULL, NULL),
(556, '81We1lJNhnL._UL1500_.jpg', NULL, NULL, 1500, 1389, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_81_We1l_J_Nhn_L_UL_1500_3bce5146c7.jpg\", \"hash\": \"large_81_We1l_J_Nhn_L_UL_1500_3bce5146c7\", \"mime\": \"image/jpeg\", \"name\": \"large_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 127.11, \"width\": 1000, \"height\": 926}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_We1l_J_Nhn_L_UL_1500_3bce5146c7.jpg\", \"hash\": \"small_81_We1l_J_Nhn_L_UL_1500_3bce5146c7\", \"mime\": \"image/jpeg\", \"name\": \"small_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 34.51, \"width\": 500, \"height\": 463}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_We1l_J_Nhn_L_UL_1500_3bce5146c7.jpg\", \"hash\": \"medium_81_We1l_J_Nhn_L_UL_1500_3bce5146c7\", \"mime\": \"image/jpeg\", \"name\": \"medium_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 73.96, \"width\": 750, \"height\": 695}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_We1l_J_Nhn_L_UL_1500_3bce5146c7.jpg\", \"hash\": \"thumbnail_81_We1l_J_Nhn_L_UL_1500_3bce5146c7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 5.95, \"width\": 169, \"height\": 156}}', '81_We1l_J_Nhn_L_UL_1500_3bce5146c7', '.jpg', 'image/jpeg', '211.66', '/uploads/81_We1l_J_Nhn_L_UL_1500_3bce5146c7.jpg', NULL, 'local', NULL, '/4', '2023-06-03 20:08:43.737000', '2023-06-03 20:08:43.737000', NULL, NULL),
(557, '6-5555-xtoon-white-original-image34eajjz4bpg.webp', NULL, NULL, 832, 832, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073.webp\", \"hash\": \"small_6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073\", \"mime\": \"image/webp\", \"name\": \"small_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 17.85, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073.webp\", \"hash\": \"medium_6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073\", \"mime\": \"image/webp\", \"name\": \"medium_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 25.81, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073.webp\", \"hash\": \"thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 4.44, \"width\": 156, \"height\": 156}}', '6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073', '.webp', 'image/webp', '24.24', '/uploads/6_5555_xtoon_white_original_image34eajjz4bpg_06606d5073.webp', NULL, 'local', NULL, '/4', '2023-06-03 20:09:10.645000', '2023-06-03 20:09:10.645000', NULL, NULL),
(558, 'images.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_9994bae4b8.jpg\", \"hash\": \"thumbnail_images_9994bae4b8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images.jpg\", \"path\": null, \"size\": 1.37, \"width\": 156, \"height\": 156}}', 'images_9994bae4b8', '.jpg', 'image/jpeg', '1.95', '/uploads/images_9994bae4b8.jpg', NULL, 'local', NULL, '/4', '2023-06-03 20:09:18.834000', '2023-06-03 20:09:18.834000', NULL, NULL),
(559, '81Z86sksD2L._AC_UF1000,1000_QL80_.jpg', NULL, NULL, 1000, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21.jpg\", \"hash\": \"small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21\", \"mime\": \"image/jpeg\", \"name\": \"small_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 18.64, \"width\": 500, \"height\": 300}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21.jpg\", \"hash\": \"medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21\", \"mime\": \"image/jpeg\", \"name\": \"medium_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 38.09, \"width\": 750, \"height\": 449}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21.jpg\", \"hash\": \"thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 4.45, \"width\": 245, \"height\": 147}}', '81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21', '.jpg', 'image/jpeg', '45.57', '/uploads/81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_e64494bc21.jpg', NULL, 'local', NULL, '/4', '2023-06-03 20:21:21.770000', '2023-06-03 20:21:21.770000', NULL, NULL),
(560, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_4eba3c1df8.webp\", \"hash\": \"small_product_image_1337746865_4eba3c1df8\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_4eba3c1df8.webp\", \"hash\": \"thumbnail_product_image_1337746865_4eba3c1df8\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_4eba3c1df8', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_4eba3c1df8.webp', NULL, 'local', NULL, '/4', '2023-06-03 20:23:01.624000', '2023-06-03 20:23:01.624000', NULL, NULL),
(561, 'images (1).jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_1_98c685386e.jpg\", \"hash\": \"thumbnail_images_1_98c685386e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images (1).jpg\", \"path\": null, \"size\": 3.13, \"width\": 156, \"height\": 156}}', 'images_1_98c685386e', '.jpg', 'image/jpeg', '4.22', '/uploads/images_1_98c685386e.jpg', NULL, 'local', NULL, '/4', '2023-06-03 20:24:02.223000', '2023-06-03 20:24:02.223000', NULL, NULL),
(562, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_4f9b0969d3.webp\", \"hash\": \"small_product_image_1337746865_4f9b0969d3\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_4f9b0969d3.webp\", \"hash\": \"thumbnail_product_image_1337746865_4f9b0969d3\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_4f9b0969d3', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_4f9b0969d3.webp', NULL, 'local', NULL, '/4', '2023-06-03 20:30:25.696000', '2023-06-03 20:30:25.696000', NULL, NULL),
(563, 'images.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_2db85c2adb.jpg\", \"hash\": \"thumbnail_images_2db85c2adb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images.jpg\", \"path\": null, \"size\": 1.37, \"width\": 156, \"height\": 156}}', 'images_2db85c2adb', '.jpg', 'image/jpeg', '1.95', '/uploads/images_2db85c2adb.jpg', NULL, 'local', NULL, '/4', '2023-06-03 20:55:28.490000', '2023-06-03 20:55:28.490000', NULL, NULL),
(564, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_310a73f526.webp\", \"hash\": \"small_product_image_1337746865_310a73f526\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_310a73f526.webp\", \"hash\": \"thumbnail_product_image_1337746865_310a73f526\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_310a73f526', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_310a73f526.webp', NULL, 'local', NULL, '/4', '2023-06-03 20:57:57.692000', '2023-06-03 20:57:57.692000', NULL, NULL),
(565, '6-5555-xtoon-white-original-image34eajjz4bpg.webp', NULL, NULL, 832, 832, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85.webp\", \"hash\": \"small_6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85\", \"mime\": \"image/webp\", \"name\": \"small_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 17.85, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85.webp\", \"hash\": \"medium_6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85\", \"mime\": \"image/webp\", \"name\": \"medium_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 25.81, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85.webp\", \"hash\": \"thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 4.44, \"width\": 156, \"height\": 156}}', '6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85', '.webp', 'image/webp', '24.24', '/uploads/6_5555_xtoon_white_original_image34eajjz4bpg_1663418e85.webp', NULL, 'local', NULL, '/4', '2023-06-03 20:58:05.532000', '2023-06-03 20:58:05.532000', NULL, NULL),
(566, '6-5555-xtoon-white-original-image34eajjz4bpg.webp', NULL, NULL, 832, 832, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64.webp\", \"hash\": \"small_6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64\", \"mime\": \"image/webp\", \"name\": \"small_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 17.85, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64.webp\", \"hash\": \"medium_6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64\", \"mime\": \"image/webp\", \"name\": \"medium_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 25.81, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64.webp\", \"hash\": \"thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 4.44, \"width\": 156, \"height\": 156}}', '6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64', '.webp', 'image/webp', '24.24', '/uploads/6_5555_xtoon_white_original_image34eajjz4bpg_889887ef64.webp', NULL, 'local', NULL, '/4', '2023-06-04 18:05:22.207000', '2023-06-04 18:05:22.207000', NULL, NULL),
(567, '6-5555-xtoon-white-original-image34eajjz4bpg.webp', NULL, NULL, 832, 832, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d.webp\", \"hash\": \"small_6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d\", \"mime\": \"image/webp\", \"name\": \"small_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 17.85, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d.webp\", \"hash\": \"medium_6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d\", \"mime\": \"image/webp\", \"name\": \"medium_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 25.81, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d.webp\", \"hash\": \"thumbnail_6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6-5555-xtoon-white-original-image34eajjz4bpg.webp\", \"path\": null, \"size\": 4.44, \"width\": 156, \"height\": 156}}', '6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d', '.webp', 'image/webp', '24.24', '/uploads/6_5555_xtoon_white_original_image34eajjz4bpg_e019d0980d.webp', NULL, 'local', NULL, '/4', '2023-06-04 21:54:15.073000', '2023-06-04 21:54:15.073000', NULL, NULL),
(568, '81We1lJNhnL._UL1500_.jpg', NULL, NULL, 1500, 1389, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_81_We1l_J_Nhn_L_UL_1500_1064630ed4.jpg\", \"hash\": \"large_81_We1l_J_Nhn_L_UL_1500_1064630ed4\", \"mime\": \"image/jpeg\", \"name\": \"large_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 127.11, \"width\": 1000, \"height\": 926}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_We1l_J_Nhn_L_UL_1500_1064630ed4.jpg\", \"hash\": \"small_81_We1l_J_Nhn_L_UL_1500_1064630ed4\", \"mime\": \"image/jpeg\", \"name\": \"small_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 34.51, \"width\": 500, \"height\": 463}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_We1l_J_Nhn_L_UL_1500_1064630ed4.jpg\", \"hash\": \"medium_81_We1l_J_Nhn_L_UL_1500_1064630ed4\", \"mime\": \"image/jpeg\", \"name\": \"medium_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 73.96, \"width\": 750, \"height\": 695}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_We1l_J_Nhn_L_UL_1500_1064630ed4.jpg\", \"hash\": \"thumbnail_81_We1l_J_Nhn_L_UL_1500_1064630ed4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81We1lJNhnL._UL1500_.jpg\", \"path\": null, \"size\": 5.95, \"width\": 169, \"height\": 156}}', '81_We1l_J_Nhn_L_UL_1500_1064630ed4', '.jpg', 'image/jpeg', '211.66', '/uploads/81_We1l_J_Nhn_L_UL_1500_1064630ed4.jpg', NULL, 'local', NULL, '/4', '2023-06-04 21:54:20.750000', '2023-06-04 21:54:20.750000', NULL, NULL),
(569, '81Z86sksD2L._AC_UF1000,1000_QL80_.jpg', NULL, NULL, 1000, 599, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45.jpg\", \"hash\": \"small_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45\", \"mime\": \"image/jpeg\", \"name\": \"small_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 18.64, \"width\": 500, \"height\": 300}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45.jpg\", \"hash\": \"medium_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45\", \"mime\": \"image/jpeg\", \"name\": \"medium_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 38.09, \"width\": 750, \"height\": 449}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45.jpg\", \"hash\": \"thumbnail_81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_81Z86sksD2L._AC_UF1000,1000_QL80_.jpg\", \"path\": null, \"size\": 4.45, \"width\": 245, \"height\": 147}}', '81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45', '.jpg', 'image/jpeg', '45.57', '/uploads/81_Z86sks_D2_L_AC_UF_1000_1000_QL_80_038c4dfc45.jpg', NULL, 'local', NULL, '/4', '2023-06-04 21:54:27.265000', '2023-06-04 21:54:27.265000', NULL, NULL),
(570, 'images (1).jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_images_1_eddb4f8ac9.jpg\", \"hash\": \"thumbnail_images_1_eddb4f8ac9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_images (1).jpg\", \"path\": null, \"size\": 3.13, \"width\": 156, \"height\": 156}}', 'images_1_eddb4f8ac9', '.jpg', 'image/jpeg', '4.22', '/uploads/images_1_eddb4f8ac9.jpg', NULL, 'local', NULL, '/4', '2023-06-04 21:54:53.119000', '2023-06-04 21:54:53.119000', NULL, NULL),
(571, 'product-image-1337746865.webp', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_product_image_1337746865_fd2d519f0f.webp\", \"hash\": \"small_product_image_1337746865_fd2d519f0f\", \"mime\": \"image/webp\", \"name\": \"small_product-image-1337746865.webp\", \"path\": null, \"size\": 29.23, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_product_image_1337746865_fd2d519f0f.webp\", \"hash\": \"thumbnail_product_image_1337746865_fd2d519f0f\", \"mime\": \"image/webp\", \"name\": \"thumbnail_product-image-1337746865.webp\", \"path\": null, \"size\": 4.6, \"width\": 156, \"height\": 156}}', 'product_image_1337746865_fd2d519f0f', '.webp', 'image/webp', '58.63', '/uploads/product_image_1337746865_fd2d519f0f.webp', NULL, 'local', NULL, '/4', '2023-06-04 22:46:48.400000', '2023-06-04 22:46:48.400000', NULL, NULL),
(572, 'UNILEVER.png', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_UNILEVER_fab4245535.png\", \"hash\": \"thumbnail_UNILEVER_fab4245535\", \"mime\": \"image/png\", \"name\": \"thumbnail_UNILEVER.png\", \"path\": null, \"size\": 14.54, \"width\": 156, \"height\": 156}}', 'UNILEVER_fab4245535', '.png', 'image/png', '5.56', '/uploads/UNILEVER_fab4245535.png', NULL, 'local', NULL, '/5', '2024-12-15 13:09:43.050000', '2024-12-15 13:09:43.050000', 1, 1),
(573, 'Beiersdorf.png', NULL, NULL, 267, 189, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Beiersdorf_98eda5228c.png\", \"hash\": \"thumbnail_Beiersdorf_98eda5228c\", \"mime\": \"image/png\", \"name\": \"thumbnail_Beiersdorf.png\", \"path\": null, \"size\": 12.2, \"width\": 220, \"height\": 156}}', 'Beiersdorf_98eda5228c', '.png', 'image/png', '4.04', '/uploads/Beiersdorf_98eda5228c.png', NULL, 'local', NULL, '/5', '2024-12-15 13:09:43.051000', '2024-12-15 13:10:27.435000', 1, 1),
(574, 'KAO.png', NULL, NULL, 310, 163, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_KAO_544cc42739.png\", \"hash\": \"thumbnail_KAO_544cc42739\", \"mime\": \"image/png\", \"name\": \"thumbnail_KAO.png\", \"path\": null, \"size\": 5.39, \"width\": 245, \"height\": 129}}', 'KAO_544cc42739', '.png', 'image/png', '1.20', '/uploads/KAO_544cc42739.png', NULL, 'local', NULL, '/5', '2024-12-15 13:09:43.226000', '2024-12-15 13:09:43.226000', 1, 1),
(575, 'ESTE.png', NULL, NULL, 300, 168, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_ESTE_dc5155619f.png\", \"hash\": \"thumbnail_ESTE_dc5155619f\", \"mime\": \"image/png\", \"name\": \"thumbnail_ESTE.png\", \"path\": null, \"size\": 11.48, \"width\": 245, \"height\": 137}}', 'ESTE_dc5155619f', '.png', 'image/png', '4.52', '/uploads/ESTE_dc5155619f.png', NULL, 'local', NULL, '/5', '2024-12-15 13:09:43.229000', '2024-12-23 08:20:29.448000', 1, 1),
(576, 'skincare.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_skincare_00ca7367ab.jpg\", \"hash\": \"thumbnail_skincare_00ca7367ab\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_skincare.jpg\", \"path\": null, \"size\": 3.1, \"width\": 156, \"height\": 156}}', 'skincare_00ca7367ab', '.jpg', 'image/jpeg', '4.57', '/uploads/skincare_00ca7367ab.jpg', NULL, 'local', NULL, '/6', '2024-12-23 08:13:19.817000', '2024-12-23 08:13:19.817000', 1, 1),
(577, 'makeup.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_makeup_ca9ae92b70.jpg\", \"hash\": \"thumbnail_makeup_ca9ae92b70\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_makeup.jpg\", \"path\": null, \"size\": 6.37, \"width\": 156, \"height\": 156}}', 'makeup_ca9ae92b70', '.jpg', 'image/jpeg', '10.48', '/uploads/makeup_ca9ae92b70.jpg', NULL, 'local', NULL, '/6', '2024-12-23 08:14:26.842000', '2024-12-23 08:14:26.842000', 1, 1),
(578, 'haircare.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_haircare_f628954526.jpg\", \"hash\": \"thumbnail_haircare_f628954526\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_haircare.jpg\", \"path\": null, \"size\": 6, \"width\": 156, \"height\": 156}}', 'haircare_f628954526', '.jpg', 'image/jpeg', '8.02', '/uploads/haircare_f628954526.jpg', NULL, 'local', NULL, '/6', '2024-12-23 08:15:59.594000', '2024-12-30 11:23:03.932000', 1, 1),
(579, 'bodycare.jpg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bodycare_e79ffa4c7b.jpg\", \"hash\": \"thumbnail_bodycare_e79ffa4c7b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bodycare.jpg\", \"path\": null, \"size\": 7.7, \"width\": 156, \"height\": 156}}', 'bodycare_e79ffa4c7b', '.jpg', 'image/jpeg', '10.74', '/uploads/bodycare_e79ffa4c7b.jpg', NULL, 'local', NULL, '/6', '2024-12-23 08:17:10.059000', '2024-12-23 08:17:10.059000', 1, 1),
(580, 'loreallogo.png', NULL, NULL, 255, 197, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_loreallogo_2020b9cabb.png\", \"hash\": \"thumbnail_loreallogo_2020b9cabb\", \"mime\": \"image/png\", \"name\": \"thumbnail_loreallogo.png\", \"path\": null, \"size\": 4.89, \"width\": 202, \"height\": 156}}', 'loreallogo_2020b9cabb', '.png', 'image/png', '1.74', '/uploads/loreallogo_2020b9cabb.png', NULL, 'local', NULL, '/5', '2024-12-23 08:22:59.435000', '2024-12-23 08:22:59.435000', 1, 1),
(581, 'Banner template of sale cosmetic (5).png', NULL, NULL, 842, 595, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Banner_template_of_sale_cosmetic_5_ac021b1e9d.png\", \"hash\": \"small_Banner_template_of_sale_cosmetic_5_ac021b1e9d\", \"mime\": \"image/png\", \"name\": \"small_Banner template of sale cosmetic (5).png\", \"path\": null, \"size\": 124.37, \"width\": 500, \"height\": 353}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Banner_template_of_sale_cosmetic_5_ac021b1e9d.png\", \"hash\": \"medium_Banner_template_of_sale_cosmetic_5_ac021b1e9d\", \"mime\": \"image/png\", \"name\": \"medium_Banner template of sale cosmetic (5).png\", \"path\": null, \"size\": 234.15, \"width\": 750, \"height\": 530}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Banner_template_of_sale_cosmetic_5_ac021b1e9d.png\", \"hash\": \"thumbnail_Banner_template_of_sale_cosmetic_5_ac021b1e9d\", \"mime\": \"image/png\", \"name\": \"thumbnail_Banner template of sale cosmetic (5).png\", \"path\": null, \"size\": 34.04, \"width\": 221, \"height\": 156}}', 'Banner_template_of_sale_cosmetic_5_ac021b1e9d', '.png', 'image/png', '43.83', '/uploads/Banner_template_of_sale_cosmetic_5_ac021b1e9d.png', NULL, 'local', NULL, '/7', '2024-12-30 10:03:47.763000', '2024-12-30 10:03:47.763000', 1, 1),
(582, 'banner2.png', NULL, NULL, 1400, 532, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_banner2_b3d9a72523.png\", \"hash\": \"large_banner2_b3d9a72523\", \"mime\": \"image/png\", \"name\": \"large_banner2.png\", \"path\": null, \"size\": 809.02, \"width\": 1000, \"height\": 380}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_banner2_b3d9a72523.png\", \"hash\": \"small_banner2_b3d9a72523\", \"mime\": \"image/png\", \"name\": \"small_banner2.png\", \"path\": null, \"size\": 222.51, \"width\": 500, \"height\": 190}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_banner2_b3d9a72523.png\", \"hash\": \"medium_banner2_b3d9a72523\", \"mime\": \"image/png\", \"name\": \"medium_banner2.png\", \"path\": null, \"size\": 470.7, \"width\": 750, \"height\": 285}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_banner2_b3d9a72523.png\", \"hash\": \"thumbnail_banner2_b3d9a72523\", \"mime\": \"image/png\", \"name\": \"thumbnail_banner2.png\", \"path\": null, \"size\": 60.28, \"width\": 245, \"height\": 93}}', 'banner2_b3d9a72523', '.png', 'image/png', '272.53', '/uploads/banner2_b3d9a72523.png', NULL, 'local', NULL, '/7', '2024-12-30 10:05:52.485000', '2024-12-30 10:05:52.485000', 1, 1),
(583, 'icon1.png', NULL, NULL, 1065, 993, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_icon1_f8df7dcdd9.png\", \"hash\": \"large_icon1_f8df7dcdd9\", \"mime\": \"image/png\", \"name\": \"large_icon1.png\", \"path\": null, \"size\": 69.38, \"width\": 1000, \"height\": 932}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_icon1_f8df7dcdd9.png\", \"hash\": \"small_icon1_f8df7dcdd9\", \"mime\": \"image/png\", \"name\": \"small_icon1.png\", \"path\": null, \"size\": 28.53, \"width\": 500, \"height\": 466}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_icon1_f8df7dcdd9.png\", \"hash\": \"medium_icon1_f8df7dcdd9\", \"mime\": \"image/png\", \"name\": \"medium_icon1.png\", \"path\": null, \"size\": 47.63, \"width\": 750, \"height\": 699}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_icon1_f8df7dcdd9.png\", \"hash\": \"thumbnail_icon1_f8df7dcdd9\", \"mime\": \"image/png\", \"name\": \"thumbnail_icon1.png\", \"path\": null, \"size\": 7.44, \"width\": 167, \"height\": 156}}', 'icon1_f8df7dcdd9', '.png', 'image/png', '12.45', '/uploads/icon1_f8df7dcdd9.png', NULL, 'local', NULL, '/8', '2024-12-30 11:48:17.827000', '2024-12-30 11:48:17.827000', 1, 1),
(584, 'icon3.png', NULL, NULL, 1113, 1089, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_icon3_690a56ee6d.png\", \"hash\": \"large_icon3_690a56ee6d\", \"mime\": \"image/png\", \"name\": \"large_icon3.png\", \"path\": null, \"size\": 123.26, \"width\": 1000, \"height\": 978}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_icon3_690a56ee6d.png\", \"hash\": \"small_icon3_690a56ee6d\", \"mime\": \"image/png\", \"name\": \"small_icon3.png\", \"path\": null, \"size\": 50.67, \"width\": 500, \"height\": 489}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_icon3_690a56ee6d.png\", \"hash\": \"medium_icon3_690a56ee6d\", \"mime\": \"image/png\", \"name\": \"medium_icon3.png\", \"path\": null, \"size\": 82.87, \"width\": 750, \"height\": 734}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_icon3_690a56ee6d.png\", \"hash\": \"thumbnail_icon3_690a56ee6d\", \"mime\": \"image/png\", \"name\": \"thumbnail_icon3.png\", \"path\": null, \"size\": 12.21, \"width\": 159, \"height\": 156}}', 'icon3_690a56ee6d', '.png', 'image/png', '17.76', '/uploads/icon3_690a56ee6d.png', NULL, 'local', NULL, '/8', '2024-12-30 11:48:18.616000', '2024-12-30 11:48:18.616000', 1, 1),
(585, 'icon5.png', NULL, NULL, 1025, 1001, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_icon5_de75bf87f2.png\", \"hash\": \"large_icon5_de75bf87f2\", \"mime\": \"image/png\", \"name\": \"large_icon5.png\", \"path\": null, \"size\": 89.2, \"width\": 1000, \"height\": 977}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_icon5_de75bf87f2.png\", \"hash\": \"small_icon5_de75bf87f2\", \"mime\": \"image/png\", \"name\": \"small_icon5.png\", \"path\": null, \"size\": 37.59, \"width\": 500, \"height\": 488}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_icon5_de75bf87f2.png\", \"hash\": \"medium_icon5_de75bf87f2\", \"mime\": \"image/png\", \"name\": \"medium_icon5.png\", \"path\": null, \"size\": 63.54, \"width\": 750, \"height\": 732}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_icon5_de75bf87f2.png\", \"hash\": \"thumbnail_icon5_de75bf87f2\", \"mime\": \"image/png\", \"name\": \"thumbnail_icon5.png\", \"path\": null, \"size\": 10.35, \"width\": 160, \"height\": 156}}', 'icon5_de75bf87f2', '.png', 'image/png', '13.28', '/uploads/icon5_de75bf87f2.png', NULL, 'local', NULL, '/8', '2024-12-30 11:48:18.618000', '2024-12-30 11:48:18.618000', 1, 1),
(586, 'icon4.png', NULL, NULL, 1113, 1089, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_icon4_3630d5c82c.png\", \"hash\": \"large_icon4_3630d5c82c\", \"mime\": \"image/png\", \"name\": \"large_icon4.png\", \"path\": null, \"size\": 123.26, \"width\": 1000, \"height\": 978}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_icon4_3630d5c82c.png\", \"hash\": \"small_icon4_3630d5c82c\", \"mime\": \"image/png\", \"name\": \"small_icon4.png\", \"path\": null, \"size\": 50.67, \"width\": 500, \"height\": 489}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_icon4_3630d5c82c.png\", \"hash\": \"medium_icon4_3630d5c82c\", \"mime\": \"image/png\", \"name\": \"medium_icon4.png\", \"path\": null, \"size\": 82.87, \"width\": 750, \"height\": 734}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_icon4_3630d5c82c.png\", \"hash\": \"thumbnail_icon4_3630d5c82c\", \"mime\": \"image/png\", \"name\": \"thumbnail_icon4.png\", \"path\": null, \"size\": 12.21, \"width\": 159, \"height\": 156}}', 'icon4_3630d5c82c', '.png', 'image/png', '17.76', '/uploads/icon4_3630d5c82c.png', NULL, 'local', NULL, '/8', '2024-12-30 11:48:18.620000', '2024-12-30 11:48:43.772000', 1, 1),
(587, 'icon2.png', NULL, NULL, 1233, 1073, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_icon2_ebb39801ff.png\", \"hash\": \"large_icon2_ebb39801ff\", \"mime\": \"image/png\", \"name\": \"large_icon2.png\", \"path\": null, \"size\": 63.22, \"width\": 1000, \"height\": 870}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_icon2_ebb39801ff.png\", \"hash\": \"small_icon2_ebb39801ff\", \"mime\": \"image/png\", \"name\": \"small_icon2.png\", \"path\": null, \"size\": 26.43, \"width\": 500, \"height\": 435}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_icon2_ebb39801ff.png\", \"hash\": \"medium_icon2_ebb39801ff\", \"mime\": \"image/png\", \"name\": \"medium_icon2.png\", \"path\": null, \"size\": 43.62, \"width\": 750, \"height\": 653}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_icon2_ebb39801ff.png\", \"hash\": \"thumbnail_icon2_ebb39801ff\", \"mime\": \"image/png\", \"name\": \"thumbnail_icon2.png\", \"path\": null, \"size\": 7.89, \"width\": 179, \"height\": 156}}', 'icon2_ebb39801ff', '.png', 'image/png', '14.07', '/uploads/icon2_ebb39801ff.png', NULL, 'local', NULL, '/8', '2024-12-30 11:48:18.655000', '2024-12-30 11:48:18.655000', 1, 1),
(588, 'Banner template of sale cosmetic (5).jpg', NULL, NULL, 640, 364, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Banner_template_of_sale_cosmetic_5_9b3e7963e9.jpg\", \"hash\": \"small_Banner_template_of_sale_cosmetic_5_9b3e7963e9\", \"mime\": \"image/jpeg\", \"name\": \"small_Banner template of sale cosmetic (5).jpg\", \"path\": null, \"size\": 29.95, \"width\": 500, \"height\": 284}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Banner_template_of_sale_cosmetic_5_9b3e7963e9.jpg\", \"hash\": \"thumbnail_Banner_template_of_sale_cosmetic_5_9b3e7963e9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Banner template of sale cosmetic (5).jpg\", \"path\": null, \"size\": 9.59, \"width\": 245, \"height\": 139}}', 'Banner_template_of_sale_cosmetic_5_9b3e7963e9', '.jpg', 'image/jpeg', '40.37', '/uploads/Banner_template_of_sale_cosmetic_5_9b3e7963e9.jpg', NULL, 'local', NULL, '/7', '2025-01-01 09:13:52.179000', '2025-01-01 09:13:52.179000', 1, 1),
(589, 'faces-cosmetic.jpg', NULL, NULL, 640, 360, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_faces_cosmetic_48138a9eca.jpg\", \"hash\": \"small_faces_cosmetic_48138a9eca\", \"mime\": \"image/jpeg\", \"name\": \"small_faces-cosmetic.jpg\", \"path\": null, \"size\": 28.8, \"width\": 500, \"height\": 281}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_faces_cosmetic_48138a9eca.jpg\", \"hash\": \"thumbnail_faces_cosmetic_48138a9eca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_faces-cosmetic.jpg\", \"path\": null, \"size\": 9.78, \"width\": 245, \"height\": 138}}', 'faces_cosmetic_48138a9eca', '.jpg', 'image/jpeg', '40.96', '/uploads/faces_cosmetic_48138a9eca.jpg', NULL, 'local', NULL, '/7', '2025-01-01 09:14:26.408000', '2025-01-01 09:14:26.408000', 1, 1),
(590, 'mot-so-cach-su-dung-cosmetic-trong-tieng-anh.jpg', NULL, NULL, 640, 427, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_mot_so_cach_su_dung_cosmetic_trong_tieng_anh_e7f88857be.jpg\", \"hash\": \"small_mot_so_cach_su_dung_cosmetic_trong_tieng_anh_e7f88857be\", \"mime\": \"image/jpeg\", \"name\": \"small_mot-so-cach-su-dung-cosmetic-trong-tieng-anh.jpg\", \"path\": null, \"size\": 46.34, \"width\": 500, \"height\": 334}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mot_so_cach_su_dung_cosmetic_trong_tieng_anh_e7f88857be.jpg\", \"hash\": \"thumbnail_mot_so_cach_su_dung_cosmetic_trong_tieng_anh_e7f88857be\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mot-so-cach-su-dung-cosmetic-trong-tieng-anh.jpg\", \"path\": null, \"size\": 12.7, \"width\": 234, \"height\": 156}}', 'mot_so_cach_su_dung_cosmetic_trong_tieng_anh_e7f88857be', '.jpg', 'image/jpeg', '68.94', '/uploads/mot_so_cach_su_dung_cosmetic_trong_tieng_anh_e7f88857be.jpg', NULL, 'local', NULL, '/7', '2025-01-01 09:15:09.477000', '2025-01-01 09:15:09.477000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 2, 1),
(4, 6, 2, 1),
(5, 5, 2, 1),
(6, 4, 2, 2),
(7, 7, 2, 3),
(8, 9, 2, 3),
(9, 11, 2, 3),
(10, 8, 2, 3),
(11, 10, 2, 3),
(12, 12, 2, 3),
(13, 13, 2, 4),
(14, 14, 2, 4),
(15, 17, 2, 5),
(16, 15, 2, 5),
(17, 16, 2, 5),
(18, 18, 2, 5),
(19, 20, 2, 6),
(20, 19, 2, 6),
(21, 21, 2, 7),
(22, 23, 2, 7),
(23, 22, 2, 7),
(24, 24, 2, 7),
(25, 25, 2, 7),
(26, 26, 2, 7),
(27, 27, 2, 8),
(28, 28, 2, 8),
(29, 29, 2, 8),
(30, 31, 2, 8),
(31, 30, 2, 9),
(32, 32, 2, 9),
(33, 33, 2, 10),
(34, 34, 2, 10),
(35, 36, 2, 10),
(36, 35, 2, 10),
(37, 37, 2, 10),
(38, 38, 2, 11),
(39, 39, 2, 12),
(40, 40, 2, 12),
(41, 42, 2, 13),
(42, 43, 2, 13),
(43, 41, 2, 13),
(44, 44, 2, 13),
(45, 45, 2, 14),
(46, 46, 2, 15),
(47, 47, 2, 15),
(48, 48, 2, 16),
(49, 49, 2, 16),
(50, 50, 2, 17),
(51, 51, 2, 17),
(52, 52, 2, 18),
(53, 53, 2, 18),
(54, 54, 2, 19),
(55, 55, 2, 19),
(56, 56, 2, 19),
(57, 57, 2, 20),
(58, 58, 2, 21),
(59, 59, 2, 22),
(60, 60, 2, 22),
(61, 61, 2, 22),
(62, 62, 2, 23),
(63, 63, 2, 24),
(64, 64, 2, 24),
(65, 65, 2, 24),
(66, 66, 2, 25),
(67, 67, 2, 25),
(68, 68, 2, 26),
(69, 69, 2, 26),
(70, 71, 2, 26),
(71, 70, 2, 26),
(72, 72, 2, 27),
(73, 73, 2, 27),
(74, 77, 2, 27),
(75, 75, 2, 27),
(76, 76, 2, 27),
(77, 74, 2, 28),
(78, 78, 2, 29),
(79, 79, 2, 30),
(80, 80, 2, 31),
(81, 81, 2, 31),
(82, 82, 2, 31),
(83, 83, 2, 31),
(84, 84, 2, 32),
(85, 85, 2, 32),
(86, 86, 2, 33),
(87, 88, 2, 33),
(88, 89, 2, 34),
(89, 87, 2, 34),
(90, 90, 2, 35),
(91, 91, 2, 36),
(92, 92, 2, 36),
(93, 93, 2, 36),
(94, 94, 2, 36),
(95, 95, 2, 37),
(96, 96, 2, 37),
(97, 97, 2, 38),
(98, 98, 2, 39),
(99, 99, 2, 39),
(100, 101, 2, 40),
(101, 100, 2, 40),
(102, 102, 2, 40),
(103, 103, 2, 41),
(104, 104, 2, 41),
(105, 105, 2, 41),
(106, 106, 2, 42),
(107, 107, 2, 42),
(108, 108, 2, 43),
(109, 109, 2, 44),
(110, 110, 2, 44),
(111, 112, 2, 45),
(112, 113, 2, 45),
(113, 111, 2, 45),
(114, 114, 2, 46),
(115, 116, 2, 46),
(116, 115, 2, 46),
(117, 117, 2, 47),
(118, 118, 2, 47),
(119, 119, 2, 48),
(120, 120, 2, 49),
(121, 121, 2, 49),
(122, 122, 2, 50),
(123, 123, 2, 50),
(124, 124, 2, 51),
(125, 126, 2, 52),
(126, 127, 2, 52),
(127, 125, 2, 52),
(128, 128, 2, 52),
(129, 129, 2, 53),
(130, 130, 2, 53),
(131, 131, 2, 54),
(132, 132, 2, 54),
(133, 133, 2, 55),
(134, 135, 2, 55),
(135, 134, 2, 55),
(136, 136, 2, 56),
(137, 137, 2, 57),
(138, 141, 2, 57),
(139, 140, 2, 58),
(140, 138, 2, 58),
(141, 139, 2, 58),
(142, 142, 2, 59),
(143, 143, 2, 60),
(144, 144, 2, 61),
(145, 145, 2, 61),
(146, 146, 2, 62),
(147, 147, 2, 62),
(148, 148, 2, 63),
(149, 149, 2, 63),
(150, 150, 2, 64),
(151, 151, 2, 65),
(152, 152, 2, 65),
(153, 153, 2, 66),
(154, 154, 2, 66),
(155, 155, 2, 67),
(156, 156, 2, 68),
(157, 157, 2, 69),
(158, 158, 2, 69),
(159, 160, 2, 70),
(160, 159, 2, 70),
(161, 161, 2, 71),
(162, 162, 2, 72),
(163, 163, 2, 72),
(164, 164, 2, 73),
(165, 165, 2, 73),
(166, 166, 2, 74),
(167, 167, 2, 74),
(168, 169, 2, 75),
(169, 168, 2, 75),
(170, 170, 2, 76),
(171, 171, 2, 76),
(172, 172, 2, 77),
(173, 173, 2, 78),
(174, 174, 2, 79),
(175, 175, 2, 80),
(176, 176, 2, 81),
(177, 177, 2, 82),
(178, 178, 2, 82),
(179, 179, 2, 83),
(180, 180, 2, 84),
(181, 181, 2, 85),
(182, 182, 2, 86),
(183, 183, 2, 87),
(184, 184, 2, 88),
(185, 185, 2, 88),
(186, 186, 2, 89),
(187, 189, 2, 89),
(188, 188, 2, 90),
(189, 187, 2, 90),
(190, 190, 2, 91),
(191, 191, 2, 91),
(192, 193, 2, 92),
(193, 192, 2, 92),
(194, 194, 2, 93),
(195, 195, 2, 94),
(196, 196, 2, 95),
(197, 197, 2, 96),
(198, 198, 2, 96),
(199, 199, 2, 97),
(200, 200, 2, 98),
(201, 201, 2, 99),
(202, 202, 2, 99),
(203, 203, 2, 100),
(204, 205, 2, 100),
(205, 204, 2, 100),
(206, 206, 2, 101),
(207, 207, 2, 101),
(208, 208, 2, 101),
(209, 209, 2, 102),
(210, 210, 2, 102),
(211, 211, 2, 103),
(212, 212, 2, 103),
(213, 213, 2, 103),
(214, 215, 2, 104),
(215, 214, 2, 104),
(216, 216, 2, 104),
(217, 217, 2, 105),
(218, 218, 2, 106),
(219, 219, 2, 106),
(220, 220, 2, 107),
(221, 221, 2, 108),
(222, 222, 2, 109),
(223, 223, 2, 110),
(224, 224, 2, 111),
(225, 225, 2, 112),
(226, 226, 2, 112),
(227, 228, 2, 112),
(228, 227, 2, 112),
(229, 229, 2, 113),
(230, 230, 2, 113),
(231, 231, 2, 114),
(232, 232, 2, 115),
(233, 233, 2, 116),
(234, 234, 2, 117),
(235, 235, 2, 118),
(236, 236, 2, 119),
(237, 237, 2, 119),
(238, 238, 2, 120),
(239, 239, 2, 121),
(240, 240, 2, 122),
(241, 241, 2, 123),
(242, 242, 2, 124),
(243, 243, 2, 125),
(244, 244, 2, 125),
(245, 245, 2, 126),
(246, 246, 2, 127),
(247, 247, 2, 127),
(248, 248, 2, 127),
(249, 249, 2, 128),
(250, 250, 2, 128),
(251, 251, 2, 129),
(252, 254, 2, 130),
(253, 253, 2, 130),
(254, 252, 2, 130),
(255, 255, 2, 131),
(256, 256, 2, 131),
(257, 257, 2, 131),
(258, 258, 2, 132),
(259, 259, 2, 133),
(260, 260, 2, 133),
(261, 261, 2, 134),
(262, 262, 2, 134),
(263, 263, 2, 135),
(264, 264, 2, 136),
(265, 265, 2, 136),
(266, 267, 2, 137),
(267, 266, 2, 137),
(268, 268, 2, 138),
(269, 269, 2, 139),
(270, 270, 2, 140),
(271, 272, 2, 140),
(272, 271, 2, 140),
(273, 273, 2, 140),
(274, 274, 2, 141),
(275, 275, 2, 141),
(276, 276, 2, 142),
(277, 277, 2, 142),
(278, 278, 2, 143),
(279, 279, 2, 144),
(280, 280, 2, 144),
(281, 281, 2, 145),
(282, 282, 2, 146),
(283, 283, 2, 146),
(284, 284, 2, 147),
(285, 285, 2, 148),
(286, 286, 2, 148),
(287, 287, 2, 149),
(288, 288, 2, 150),
(289, 289, 2, 151),
(290, 290, 2, 151),
(291, 291, 2, 152),
(292, 292, 2, 152),
(293, 293, 2, 153),
(294, 294, 2, 153),
(295, 295, 2, 154),
(296, 296, 2, 154),
(297, 298, 2, 154),
(298, 297, 2, 154),
(299, 299, 2, 155),
(300, 300, 2, 155),
(301, 301, 2, 156),
(302, 302, 2, 156),
(303, 303, 2, 157),
(304, 304, 2, 157),
(305, 305, 2, 158),
(306, 306, 2, 159),
(307, 307, 2, 160),
(308, 308, 2, 160),
(309, 309, 2, 161),
(310, 311, 2, 161),
(311, 310, 2, 161),
(312, 312, 2, 162),
(313, 313, 2, 163),
(314, 314, 2, 164),
(315, 315, 2, 164),
(316, 316, 2, 165),
(317, 317, 2, 165),
(318, 318, 2, 166),
(319, 319, 2, 167),
(320, 320, 2, 168),
(321, 321, 2, 169),
(322, 322, 2, 169),
(323, 323, 2, 170),
(324, 324, 2, 171),
(325, 325, 2, 171),
(326, 326, 2, 172),
(327, 327, 2, 173),
(328, 328, 2, 174),
(329, 329, 2, 174),
(330, 330, 2, 175),
(331, 331, 2, 176),
(332, 332, 2, 177),
(333, 333, 2, 177),
(334, 334, 2, 178),
(335, 336, 2, 178),
(336, 335, 2, 178),
(337, 337, 2, 179),
(338, 338, 2, 180),
(339, 339, 2, 181),
(340, 340, 2, 181),
(341, 341, 2, 181),
(342, 342, 2, 182),
(343, 343, 2, 182),
(344, 344, 2, 182),
(345, 345, 2, 183),
(346, 346, 2, 183),
(347, 347, 2, 183),
(348, 348, 2, 184),
(349, 349, 2, 184),
(350, 350, 2, 184),
(351, 351, 2, 185),
(352, 352, 2, 186),
(353, 353, 2, 187),
(354, 354, 2, 188),
(355, 355, 2, 189),
(356, 356, 2, 190),
(357, 357, 2, 191),
(358, 358, 2, 192),
(359, 359, 2, 193),
(360, 360, 2, 193),
(361, 361, 2, 194),
(362, 362, 2, 195),
(363, 363, 2, 196),
(364, 364, 2, 197),
(365, 365, 2, 197),
(366, 366, 2, 197),
(367, 367, 2, 198),
(368, 368, 2, 198),
(369, 369, 2, 199),
(370, 370, 2, 199),
(371, 371, 2, 199),
(372, 372, 2, 200),
(373, 374, 2, 200),
(374, 373, 2, 200),
(375, 375, 2, 201),
(376, 376, 2, 202),
(377, 378, 2, 202),
(378, 379, 2, 202),
(379, 377, 2, 202),
(380, 380, 2, 202),
(381, 381, 2, 203),
(382, 382, 2, 203),
(383, 384, 2, 204),
(384, 385, 2, 204),
(385, 383, 2, 204),
(386, 386, 2, 205),
(387, 389, 2, 205),
(388, 390, 2, 205),
(389, 388, 2, 205),
(390, 387, 2, 205),
(391, 391, 2, 205),
(392, 392, 2, 206),
(393, 393, 2, 206),
(394, 394, 2, 207),
(395, 395, 2, 208),
(396, 396, 2, 209),
(397, 397, 2, 210),
(398, 398, 2, 211),
(399, 400, 2, 211),
(400, 399, 2, 211),
(401, 401, 2, 212),
(402, 402, 2, 213),
(403, 403, 2, 213),
(404, 405, 2, 214),
(405, 406, 2, 214),
(406, 404, 2, 214),
(407, 407, 2, 215),
(408, 408, 2, 216),
(409, 409, 2, 216),
(410, 410, 2, 216),
(411, 411, 2, 217),
(412, 412, 2, 217),
(413, 413, 2, 218),
(414, 414, 2, 218),
(415, 415, 2, 219),
(416, 416, 2, 220),
(417, 417, 2, 220),
(418, 418, 2, 221),
(419, 419, 2, 221),
(420, 420, 2, 221),
(421, 422, 2, 222),
(422, 423, 2, 222),
(423, 421, 2, 222),
(424, 424, 2, 223),
(425, 425, 2, 223),
(426, 427, 2, 224),
(427, 426, 2, 224),
(428, 428, 2, 224),
(429, 429, 2, 225),
(430, 430, 2, 226),
(431, 431, 2, 226),
(432, 432, 2, 227),
(433, 434, 2, 228),
(434, 433, 2, 228),
(435, 435, 2, 229),
(436, 436, 2, 230),
(437, 437, 2, 231),
(438, 438, 2, 231),
(439, 439, 2, 232),
(440, 440, 2, 233),
(441, 441, 2, 234),
(442, 442, 2, 235),
(443, 444, 2, 236),
(444, 443, 2, 236),
(445, 446, 2, 236),
(446, 445, 2, 236),
(447, 447, 2, 236),
(448, 448, 2, 237),
(449, 449, 2, 238),
(450, 450, 2, 239),
(451, 451, 2, 240),
(452, 452, 2, 241),
(453, 453, 2, 241),
(454, 455, 2, 241),
(455, 454, 2, 241),
(456, 456, 2, 242),
(457, 457, 2, 243),
(458, 458, 2, 244),
(459, 459, 2, 244),
(460, 460, 2, 244),
(461, 461, 2, 245),
(462, 462, 2, 246),
(463, 463, 2, 247),
(464, 464, 2, 247),
(465, 465, 2, 247),
(466, 467, 2, 248),
(467, 466, 2, 248),
(468, 468, 2, 249),
(469, 469, 2, 250),
(470, 470, 2, 251),
(471, 471, 2, 251),
(472, 472, 2, 252),
(473, 473, 2, 253),
(474, 474, 2, 253),
(475, 475, 2, 254),
(476, 476, 2, 255),
(477, 477, 2, 255),
(478, 478, 2, 256),
(479, 479, 2, 256),
(480, 480, 2, 257),
(481, 481, 2, 258),
(482, 482, 2, 259),
(483, 483, 2, 260),
(484, 484, 2, 261),
(485, 485, 2, 262),
(486, 486, 2, 263),
(487, 487, 2, 263),
(488, 488, 2, 263),
(489, 489, 2, 264),
(490, 490, 2, 264),
(491, 491, 2, 264),
(492, 492, 2, 265),
(493, 493, 2, 265),
(494, 494, 2, 266),
(495, 495, 2, 266),
(496, 496, 2, 267),
(497, 497, 2, 268),
(498, 498, 2, 269),
(499, 499, 2, 269),
(500, 500, 2, 269),
(501, 502, 2, 270),
(502, 501, 2, 270),
(503, 503, 2, 271),
(504, 504, 2, 272),
(505, 506, 2, 272),
(506, 505, 2, 272),
(507, 507, 2, 273),
(508, 508, 2, 274),
(509, 509, 2, 274),
(510, 510, 2, 275),
(511, 511, 2, 275),
(512, 512, 2, 275),
(513, 513, 2, 276),
(514, 514, 2, 277),
(515, 515, 2, 277),
(516, 516, 2, 278),
(517, 517, 2, 279),
(518, 518, 2, 280),
(521, 521, 8, 1),
(522, 520, 3, 1),
(523, 519, 3, 1),
(524, 522, 8, 2),
(525, 523, 8, 3),
(526, 524, 8, 4),
(527, 525, 8, 5),
(528, 526, 8, 6),
(529, 527, 8, 7),
(530, 528, 8, 8),
(531, 529, 8, 9),
(532, 530, 8, 10),
(533, 531, 8, 11),
(534, 532, 8, 12),
(535, 533, 8, 13),
(536, 534, 8, 14),
(537, 535, 8, 15),
(538, 536, 8, 16),
(539, 537, 8, 17),
(540, 538, 8, 18),
(541, 539, 8, 19),
(542, 540, 8, 20),
(543, 541, 8, 21),
(544, 542, 8, 22),
(545, 543, 8, 23),
(546, 544, 8, 24),
(547, 545, 8, 25),
(548, 546, 8, 26),
(549, 547, 8, 27),
(550, 548, 8, 28),
(551, 549, 8, 29),
(552, 550, 8, 30),
(553, 551, 8, 31),
(554, 552, 8, 32),
(555, 553, 8, 33),
(556, 554, 8, 34),
(557, 555, 8, 35),
(558, 556, 8, 36),
(559, 557, 8, 37),
(560, 558, 8, 38),
(561, 559, 8, 39),
(562, 560, 8, 40),
(563, 561, 8, 41),
(564, 562, 8, 42),
(565, 563, 8, 43),
(566, 564, 8, 44),
(567, 565, 8, 45),
(568, 566, 8, 46),
(569, 567, 8, 47),
(570, 568, 8, 48),
(571, 569, 8, 49),
(572, 570, 8, 50),
(573, 571, 8, 51),
(574, 573, 9, 1),
(575, 572, 9, 1),
(576, 574, 9, 2),
(577, 575, 9, 2),
(579, 576, 10, 1),
(580, 577, 10, 2),
(581, 578, 10, 3),
(582, 579, 10, 4),
(584, 580, 9, 3),
(585, 581, 11, 1),
(586, 582, 11, 2),
(588, 583, 12, 1),
(589, 584, 12, 2),
(590, 585, 12, 2),
(591, 586, 12, 2),
(592, 587, 12, 3),
(594, 588, 11, 3),
(595, 589, 11, 4),
(596, 590, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(656, 430, 11, 'api::product.product', 'image', 1),
(657, 89, 12, 'api::product.product', 'image', 1),
(658, 226, 13, 'api::product.product', 'image', 1),
(659, 409, 14, 'api::product.product', 'image', 1),
(660, 485, 15, 'api::product.product', 'image', 1),
(661, 133, 16, 'api::product.product', 'image', 1),
(663, 182, 18, 'api::product.product', 'image', 1),
(664, 366, 19, 'api::product.product', 'image', 1),
(665, 414, 20, 'api::product.product', 'image', 1),
(666, 143, 21, 'api::product.product', 'image', 1),
(667, 346, 22, 'api::product.product', 'image', 1),
(669, 359, 24, 'api::product.product', 'image', 1),
(670, 273, 25, 'api::product.product', 'image', 1),
(671, 365, 26, 'api::product.product', 'image', 1),
(672, 261, 27, 'api::product.product', 'image', 1),
(673, 439, 28, 'api::product.product', 'image', 1),
(674, 109, 29, 'api::product.product', 'image', 1),
(675, 186, 30, 'api::product.product', 'image', 1),
(676, 83, 31, 'api::product.product', 'image', 1),
(677, 226, 32, 'api::product.product', 'image', 1),
(678, 145, 33, 'api::product.product', 'image', 1),
(680, 29, 35, 'api::product.product', 'image', 1),
(681, 401, 36, 'api::product.product', 'image', 1),
(682, 38, 37, 'api::product.product', 'image', 1),
(683, 370, 38, 'api::product.product', 'image', 1),
(684, 347, 39, 'api::product.product', 'image', 1),
(685, 88, 40, 'api::product.product', 'image', 1),
(686, 75, 41, 'api::product.product', 'image', 1),
(687, 4, 42, 'api::product.product', 'image', 1),
(688, 1, 43, 'api::product.product', 'image', 1),
(689, 327, 44, 'api::product.product', 'image', 1),
(690, 431, 45, 'api::product.product', 'image', 1),
(692, 188, 47, 'api::product.product', 'image', 1),
(694, 127, 49, 'api::product.product', 'image', 1),
(697, 303, 52, 'api::product.product', 'image', 1),
(699, 203, 54, 'api::product.product', 'image', 1),
(700, 319, 55, 'api::product.product', 'image', 1),
(701, 106, 56, 'api::product.product', 'image', 1),
(703, 253, 58, 'api::product.product', 'image', 1),
(704, 451, 59, 'api::product.product', 'image', 1),
(705, 39, 60, 'api::product.product', 'image', 1),
(706, 422, 61, 'api::product.product', 'image', 1),
(707, 36, 62, 'api::product.product', 'image', 1),
(708, 380, 63, 'api::product.product', 'image', 1),
(713, 297, 68, 'api::product.product', 'image', 1),
(714, 216, 69, 'api::product.product', 'image', 1),
(716, 242, 71, 'api::product.product', 'image', 1),
(717, 107, 72, 'api::product.product', 'image', 1),
(718, 401, 73, 'api::product.product', 'image', 1),
(719, 56, 74, 'api::product.product', 'image', 1),
(722, 127, 77, 'api::product.product', 'image', 1),
(723, 359, 78, 'api::product.product', 'image', 1),
(724, 484, 79, 'api::product.product', 'image', 1),
(725, 446, 80, 'api::product.product', 'image', 1),
(727, 343, 82, 'api::product.product', 'image', 1),
(729, 89, 84, 'api::product.product', 'image', 1),
(731, 393, 86, 'api::product.product', 'image', 1),
(733, 337, 88, 'api::product.product', 'image', 1),
(735, 380, 90, 'api::product.product', 'image', 1),
(736, 134, 91, 'api::product.product', 'image', 1),
(737, 35, 92, 'api::product.product', 'image', 1),
(739, 375, 94, 'api::product.product', 'image', 1),
(740, 196, 95, 'api::product.product', 'image', 1),
(741, 186, 96, 'api::product.product', 'image', 1),
(743, 12, 98, 'api::product.product', 'image', 1),
(746, 79, 101, 'api::product.product', 'image', 1),
(747, 215, 102, 'api::product.product', 'image', 1),
(748, 338, 103, 'api::product.product', 'image', 1),
(749, 343, 104, 'api::product.product', 'image', 1),
(750, 341, 105, 'api::product.product', 'image', 1),
(751, 260, 106, 'api::product.product', 'image', 1),
(752, 412, 107, 'api::product.product', 'image', 1),
(755, 137, 110, 'api::product.product', 'image', 1),
(757, 363, 112, 'api::product.product', 'image', 1),
(758, 288, 113, 'api::product.product', 'image', 1),
(759, 391, 114, 'api::product.product', 'image', 1),
(760, 171, 115, 'api::product.product', 'image', 1),
(761, 138, 116, 'api::product.product', 'image', 1),
(762, 148, 117, 'api::product.product', 'image', 1),
(763, 129, 118, 'api::product.product', 'image', 1),
(764, 269, 119, 'api::product.product', 'image', 1),
(769, 69, 124, 'api::product.product', 'image', 1),
(770, 168, 125, 'api::product.product', 'image', 1),
(771, 218, 126, 'api::product.product', 'image', 1),
(772, 410, 127, 'api::product.product', 'image', 1),
(775, 402, 130, 'api::product.product', 'image', 1),
(777, 294, 132, 'api::product.product', 'image', 1),
(778, 212, 133, 'api::product.product', 'image', 1),
(779, 366, 134, 'api::product.product', 'image', 1),
(780, 180, 135, 'api::product.product', 'image', 1),
(781, 493, 136, 'api::product.product', 'image', 1),
(782, 460, 137, 'api::product.product', 'image', 1),
(783, 290, 138, 'api::product.product', 'image', 1),
(785, 117, 140, 'api::product.product', 'image', 1),
(786, 274, 141, 'api::product.product', 'image', 1),
(787, 441, 142, 'api::product.product', 'image', 1),
(788, 390, 143, 'api::product.product', 'image', 1),
(789, 296, 144, 'api::product.product', 'image', 1),
(790, 238, 145, 'api::product.product', 'image', 1),
(791, 81, 146, 'api::product.product', 'image', 1),
(792, 30, 147, 'api::product.product', 'image', 1),
(794, 264, 149, 'api::product.product', 'image', 1),
(796, 26, 151, 'api::product.product', 'image', 1),
(797, 106, 152, 'api::product.product', 'image', 1),
(798, 415, 153, 'api::product.product', 'image', 1),
(799, 216, 154, 'api::product.product', 'image', 1),
(800, 474, 155, 'api::product.product', 'image', 1),
(801, 236, 156, 'api::product.product', 'image', 1),
(802, 443, 157, 'api::product.product', 'image', 1),
(803, 497, 158, 'api::product.product', 'image', 1),
(805, 130, 160, 'api::product.product', 'image', 1),
(807, 183, 162, 'api::product.product', 'image', 1),
(808, 75, 163, 'api::product.product', 'image', 1),
(809, 26, 164, 'api::product.product', 'image', 1),
(810, 355, 165, 'api::product.product', 'image', 1),
(813, 181, 168, 'api::product.product', 'image', 1),
(814, 373, 169, 'api::product.product', 'image', 1),
(815, 324, 170, 'api::product.product', 'image', 1),
(816, 382, 171, 'api::product.product', 'image', 1),
(817, 490, 172, 'api::product.product', 'image', 1),
(818, 58, 173, 'api::product.product', 'image', 1),
(819, 331, 174, 'api::product.product', 'image', 1),
(820, 302, 175, 'api::product.product', 'image', 1),
(821, 268, 176, 'api::product.product', 'image', 1),
(822, 416, 177, 'api::product.product', 'image', 1),
(824, 356, 179, 'api::product.product', 'image', 1),
(825, 256, 180, 'api::product.product', 'image', 1),
(826, 445, 181, 'api::product.product', 'image', 1),
(828, 351, 183, 'api::product.product', 'image', 1),
(829, 145, 184, 'api::product.product', 'image', 1),
(830, 410, 185, 'api::product.product', 'image', 1),
(831, 223, 186, 'api::product.product', 'image', 1),
(834, 465, 189, 'api::product.product', 'image', 1),
(835, 307, 190, 'api::product.product', 'image', 1),
(839, 133, 194, 'api::product.product', 'image', 1),
(841, 350, 196, 'api::product.product', 'image', 1),
(843, 288, 198, 'api::product.product', 'image', 1),
(844, 319, 199, 'api::product.product', 'image', 1),
(855, 119, 11, 'api::product.product', 'image', 2),
(856, 460, 12, 'api::product.product', 'image', 2),
(857, 88, 13, 'api::product.product', 'image', 2),
(858, 436, 14, 'api::product.product', 'image', 2),
(859, 223, 15, 'api::product.product', 'image', 2),
(860, 329, 16, 'api::product.product', 'image', 2),
(862, 289, 18, 'api::product.product', 'image', 2),
(863, 195, 19, 'api::product.product', 'image', 2),
(864, 252, 20, 'api::product.product', 'image', 2),
(865, 469, 21, 'api::product.product', 'image', 2),
(866, 472, 22, 'api::product.product', 'image', 2),
(868, 330, 24, 'api::product.product', 'image', 2),
(869, 329, 25, 'api::product.product', 'image', 2),
(870, 77, 26, 'api::product.product', 'image', 2),
(871, 24, 27, 'api::product.product', 'image', 2),
(872, 302, 28, 'api::product.product', 'image', 2),
(873, 115, 29, 'api::product.product', 'image', 2),
(874, 164, 30, 'api::product.product', 'image', 2),
(875, 49, 31, 'api::product.product', 'image', 2),
(876, 305, 32, 'api::product.product', 'image', 2),
(877, 94, 33, 'api::product.product', 'image', 2),
(879, 338, 35, 'api::product.product', 'image', 2),
(880, 418, 36, 'api::product.product', 'image', 2),
(881, 236, 37, 'api::product.product', 'image', 2),
(882, 2, 38, 'api::product.product', 'image', 2),
(883, 314, 39, 'api::product.product', 'image', 2),
(884, 447, 40, 'api::product.product', 'image', 2),
(885, 489, 41, 'api::product.product', 'image', 2),
(886, 123, 42, 'api::product.product', 'image', 2),
(887, 7, 43, 'api::product.product', 'image', 2),
(888, 261, 44, 'api::product.product', 'image', 2),
(889, 406, 45, 'api::product.product', 'image', 2),
(891, 445, 47, 'api::product.product', 'image', 2),
(893, 441, 49, 'api::product.product', 'image', 2),
(896, 47, 52, 'api::product.product', 'image', 2),
(898, 398, 54, 'api::product.product', 'image', 2),
(899, 466, 55, 'api::product.product', 'image', 2),
(900, 484, 56, 'api::product.product', 'image', 2),
(902, 41, 58, 'api::product.product', 'image', 2),
(903, 307, 59, 'api::product.product', 'image', 2),
(904, 376, 60, 'api::product.product', 'image', 2),
(905, 380, 61, 'api::product.product', 'image', 2),
(906, 179, 62, 'api::product.product', 'image', 2),
(907, 213, 63, 'api::product.product', 'image', 2),
(912, 189, 68, 'api::product.product', 'image', 2),
(913, 465, 69, 'api::product.product', 'image', 2),
(915, 22, 71, 'api::product.product', 'image', 2),
(916, 312, 72, 'api::product.product', 'image', 2),
(917, 178, 73, 'api::product.product', 'image', 2),
(918, 447, 74, 'api::product.product', 'image', 2),
(921, 19, 77, 'api::product.product', 'image', 2),
(922, 395, 78, 'api::product.product', 'image', 2),
(923, 267, 79, 'api::product.product', 'image', 2),
(924, 427, 80, 'api::product.product', 'image', 2),
(926, 123, 82, 'api::product.product', 'image', 2),
(928, 119, 84, 'api::product.product', 'image', 2),
(930, 374, 86, 'api::product.product', 'image', 2),
(932, 252, 88, 'api::product.product', 'image', 2),
(934, 322, 90, 'api::product.product', 'image', 2),
(935, 472, 91, 'api::product.product', 'image', 2),
(936, 1, 92, 'api::product.product', 'image', 2),
(938, 491, 94, 'api::product.product', 'image', 2),
(939, 15, 95, 'api::product.product', 'image', 2),
(940, 344, 96, 'api::product.product', 'image', 2),
(942, 246, 98, 'api::product.product', 'image', 2),
(945, 397, 101, 'api::product.product', 'image', 2),
(946, 354, 102, 'api::product.product', 'image', 2),
(947, 500, 103, 'api::product.product', 'image', 2),
(948, 317, 104, 'api::product.product', 'image', 2),
(949, 476, 105, 'api::product.product', 'image', 2),
(950, 80, 106, 'api::product.product', 'image', 2),
(951, 104, 107, 'api::product.product', 'image', 2),
(954, 60, 110, 'api::product.product', 'image', 2),
(956, 168, 112, 'api::product.product', 'image', 2),
(957, 352, 113, 'api::product.product', 'image', 2),
(958, 308, 114, 'api::product.product', 'image', 2),
(959, 183, 115, 'api::product.product', 'image', 2),
(960, 156, 116, 'api::product.product', 'image', 2),
(961, 131, 117, 'api::product.product', 'image', 2),
(962, 499, 118, 'api::product.product', 'image', 2),
(963, 307, 119, 'api::product.product', 'image', 2),
(968, 222, 124, 'api::product.product', 'image', 2),
(969, 491, 125, 'api::product.product', 'image', 2),
(970, 171, 126, 'api::product.product', 'image', 2),
(971, 328, 127, 'api::product.product', 'image', 2),
(974, 293, 130, 'api::product.product', 'image', 2),
(976, 210, 132, 'api::product.product', 'image', 2),
(977, 116, 133, 'api::product.product', 'image', 2),
(978, 373, 134, 'api::product.product', 'image', 2),
(979, 108, 135, 'api::product.product', 'image', 2),
(980, 120, 136, 'api::product.product', 'image', 2),
(981, 448, 137, 'api::product.product', 'image', 2),
(982, 206, 138, 'api::product.product', 'image', 2),
(984, 297, 140, 'api::product.product', 'image', 2),
(985, 134, 141, 'api::product.product', 'image', 2),
(986, 117, 142, 'api::product.product', 'image', 2),
(987, 397, 143, 'api::product.product', 'image', 2),
(988, 410, 144, 'api::product.product', 'image', 2),
(989, 374, 145, 'api::product.product', 'image', 2),
(990, 12, 146, 'api::product.product', 'image', 2),
(991, 205, 147, 'api::product.product', 'image', 2),
(993, 265, 149, 'api::product.product', 'image', 2),
(995, 178, 151, 'api::product.product', 'image', 2),
(996, 414, 152, 'api::product.product', 'image', 2),
(997, 449, 153, 'api::product.product', 'image', 2),
(998, 118, 154, 'api::product.product', 'image', 2),
(999, 105, 155, 'api::product.product', 'image', 2),
(1000, 40, 156, 'api::product.product', 'image', 2),
(1001, 170, 157, 'api::product.product', 'image', 2),
(1002, 470, 158, 'api::product.product', 'image', 2),
(1004, 412, 160, 'api::product.product', 'image', 2),
(1006, 418, 162, 'api::product.product', 'image', 2),
(1007, 160, 163, 'api::product.product', 'image', 2),
(1008, 92, 164, 'api::product.product', 'image', 2),
(1009, 134, 165, 'api::product.product', 'image', 2),
(1012, 344, 168, 'api::product.product', 'image', 2),
(1013, 211, 169, 'api::product.product', 'image', 2),
(1014, 487, 170, 'api::product.product', 'image', 2),
(1015, 165, 171, 'api::product.product', 'image', 2),
(1016, 491, 172, 'api::product.product', 'image', 2),
(1017, 404, 173, 'api::product.product', 'image', 2),
(1018, 323, 174, 'api::product.product', 'image', 2),
(1019, 161, 175, 'api::product.product', 'image', 2),
(1020, 207, 176, 'api::product.product', 'image', 2),
(1021, 324, 177, 'api::product.product', 'image', 2),
(1023, 249, 179, 'api::product.product', 'image', 2),
(1024, 413, 180, 'api::product.product', 'image', 2),
(1025, 468, 181, 'api::product.product', 'image', 2),
(1027, 129, 183, 'api::product.product', 'image', 2),
(1028, 268, 184, 'api::product.product', 'image', 2),
(1029, 448, 185, 'api::product.product', 'image', 2),
(1030, 354, 186, 'api::product.product', 'image', 2),
(1033, 403, 189, 'api::product.product', 'image', 2),
(1034, 472, 190, 'api::product.product', 'image', 2),
(1038, 468, 194, 'api::product.product', 'image', 2),
(1040, 409, 196, 'api::product.product', 'image', 2),
(1042, 468, 198, 'api::product.product', 'image', 2),
(1043, 168, 199, 'api::product.product', 'image', 2),
(1044, 5, 200, 'api::product.product', 'image', 1),
(1045, 6, 200, 'api::product.product', 'image', 2),
(1046, 5, 201, 'api::product.product', 'image', 1),
(1047, 6, 201, 'api::product.product', 'image', 2),
(1048, 5, 202, 'api::product.product', 'image', 1),
(1049, 6, 202, 'api::product.product', 'image', 2),
(1050, 5, 203, 'api::product.product', 'image', 1),
(1051, 6, 203, 'api::product.product', 'image', 2),
(1052, 5, 204, 'api::product.product', 'image', 1),
(1053, 6, 204, 'api::product.product', 'image', 2),
(1054, 5, 205, 'api::product.product', 'image', 1),
(1055, 6, 205, 'api::product.product', 'image', 2),
(1056, 1, 206, 'api::product.product', 'image', 1),
(1057, 2, 206, 'api::product.product', 'image', 2),
(1058, 1, 207, 'api::product.product', 'image', 1),
(1059, 2, 207, 'api::product.product', 'image', 2),
(1060, 1, 208, 'api::product.product', 'image', 1),
(1061, 2, 208, 'api::product.product', 'image', 2),
(1062, 1, 209, 'api::product.product', 'image', 1),
(1063, 2, 209, 'api::product.product', 'image', 2),
(1064, 1, 210, 'api::product.product', 'image', 1),
(1065, 2, 210, 'api::product.product', 'image', 2),
(1066, 1, 211, 'api::product.product', 'image', 1),
(1068, 537, 213, 'api::product.product', 'image', 1),
(1069, 538, 213, 'api::product.product', 'image', 2),
(1074, 541, 215, 'api::product.product', 'image', 1),
(1075, 542, 215, 'api::product.product', 'image', 2),
(1076, 544, 216, 'api::product.product', 'image', 1),
(1077, 545, 216, 'api::product.product', 'image', 2),
(1078, 546, 216, 'api::product.product', 'image', 3),
(1079, 547, 216, 'api::product.product', 'image', 4),
(1080, 544, 217, 'api::product.product', 'image', 1),
(1081, 545, 217, 'api::product.product', 'image', 2),
(1082, 546, 217, 'api::product.product', 'image', 3),
(1083, 547, 217, 'api::product.product', 'image', 4),
(1084, 548, 217, 'api::product.product', 'image', 5),
(1085, 549, 217, 'api::product.product', 'image', 6),
(1090, 567, 218, 'api::product.product', 'image', 1),
(1091, 568, 218, 'api::product.product', 'image', 2),
(1092, 569, 218, 'api::product.product', 'image', 3),
(1097, 196, 9, 'api::product.product', 'image', 1),
(1098, 571, 9, 'api::product.product', 'image', 2),
(1125, 573, 1, 'api::brand.brand', 'image', 1),
(1126, 573, 2, 'api::brand.brand', 'image', 1),
(1127, 575, 3, 'api::brand.brand', 'image', 1),
(1128, 574, 4, 'api::brand.brand', 'image', 1),
(1129, 1, 219, 'api::product.product', 'image', 1),
(1130, 2, 219, 'api::product.product', 'image', 2),
(1131, 1, 214, 'api::product.product', 'image', 1),
(1132, 2, 214, 'api::product.product', 'image', 2),
(1133, 539, 214, 'api::product.product', 'image', 3),
(1134, 540, 214, 'api::product.product', 'image', 4),
(1135, 3, 212, 'api::product.product', 'image', 1),
(1140, 140, 57, 'api::product.product', 'image', 1),
(1141, 421, 57, 'api::product.product', 'image', 2),
(1148, 267, 166, 'api::product.product', 'image', 1),
(1149, 118, 166, 'api::product.product', 'image', 2),
(1156, 575, 3, 'api::brand.brand', 'logo', 1),
(1157, 573, 2, 'api::brand.brand', 'logo', 1),
(1158, 574, 4, 'api::brand.brand', 'logo', 1),
(1160, 580, 1, 'api::brand.brand', 'logo', 1),
(1175, 98, 178, 'api::product.product', 'image', 1),
(1176, 257, 178, 'api::product.product', 'image', 2),
(1177, 496, 129, 'api::product.product', 'image', 1),
(1178, 6, 129, 'api::product.product', 'image', 2),
(1185, 5, 8, 'api::product.product', 'image', 1),
(1186, 10, 8, 'api::product.product', 'image', 2),
(1187, 278, 191, 'api::product.product', 'image', 1),
(1188, 8, 191, 'api::product.product', 'image', 2),
(1189, 446, 108, 'api::product.product', 'image', 1),
(1190, 240, 108, 'api::product.product', 'image', 2),
(1191, 483, 192, 'api::product.product', 'image', 1),
(1192, 19, 192, 'api::product.product', 'image', 2),
(1193, 218, 66, 'api::product.product', 'image', 1),
(1194, 317, 66, 'api::product.product', 'image', 2),
(1195, 195, 87, 'api::product.product', 'image', 1),
(1196, 338, 87, 'api::product.product', 'image', 2),
(1197, 404, 50, 'api::product.product', 'image', 1),
(1198, 261, 50, 'api::product.product', 'image', 2),
(1199, 332, 197, 'api::product.product', 'image', 1),
(1200, 223, 197, 'api::product.product', 'image', 2),
(1201, 223, 10, 'api::product.product', 'image', 1),
(1202, 246, 10, 'api::product.product', 'image', 2),
(1203, 154, 53, 'api::product.product', 'image', 1),
(1204, 174, 53, 'api::product.product', 'image', 2),
(1205, 48, 64, 'api::product.product', 'image', 1),
(1206, 280, 64, 'api::product.product', 'image', 2),
(1209, 433, 76, 'api::product.product', 'image', 1),
(1210, 22, 76, 'api::product.product', 'image', 2),
(1211, 188, 17, 'api::product.product', 'image', 1),
(1212, 326, 17, 'api::product.product', 'image', 2),
(1213, 81, 85, 'api::product.product', 'image', 1),
(1214, 139, 85, 'api::product.product', 'image', 2),
(1221, 464, 46, 'api::product.product', 'image', 1),
(1222, 121, 46, 'api::product.product', 'image', 2),
(1223, 60, 150, 'api::product.product', 'image', 1),
(1224, 61, 150, 'api::product.product', 'image', 2),
(1225, 88, 109, 'api::product.product', 'image', 1),
(1226, 401, 109, 'api::product.product', 'image', 2),
(1227, 223, 139, 'api::product.product', 'image', 1),
(1228, 138, 139, 'api::product.product', 'image', 2),
(1229, 420, 48, 'api::product.product', 'image', 1),
(1230, 317, 48, 'api::product.product', 'image', 2),
(1231, 23, 83, 'api::product.product', 'image', 1),
(1232, 488, 83, 'api::product.product', 'image', 2),
(1233, 363, 111, 'api::product.product', 'image', 1),
(1234, 274, 111, 'api::product.product', 'image', 2),
(1235, 285, 75, 'api::product.product', 'image', 1),
(1236, 182, 75, 'api::product.product', 'image', 2),
(1237, 232, 182, 'api::product.product', 'image', 1),
(1238, 132, 182, 'api::product.product', 'image', 2),
(1239, 7, 167, 'api::product.product', 'image', 1),
(1240, 208, 167, 'api::product.product', 'image', 2),
(1241, 172, 51, 'api::product.product', 'image', 1),
(1242, 270, 51, 'api::product.product', 'image', 2),
(1243, 491, 121, 'api::product.product', 'image', 1),
(1244, 247, 121, 'api::product.product', 'image', 2),
(1245, 38, 161, 'api::product.product', 'image', 1),
(1246, 324, 161, 'api::product.product', 'image', 2),
(1247, 106, 99, 'api::product.product', 'image', 1),
(1248, 369, 99, 'api::product.product', 'image', 2),
(1249, 290, 100, 'api::product.product', 'image', 1),
(1250, 396, 100, 'api::product.product', 'image', 2),
(1251, 469, 148, 'api::product.product', 'image', 1),
(1252, 227, 148, 'api::product.product', 'image', 2),
(1253, 135, 195, 'api::product.product', 'image', 1),
(1254, 234, 195, 'api::product.product', 'image', 2),
(1255, 452, 23, 'api::product.product', 'image', 1),
(1256, 255, 23, 'api::product.product', 'image', 2),
(1257, 241, 34, 'api::product.product', 'image', 1),
(1258, 269, 34, 'api::product.product', 'image', 2),
(1259, 41, 81, 'api::product.product', 'image', 1),
(1260, 159, 81, 'api::product.product', 'image', 2),
(1265, 93, 67, 'api::product.product', 'image', 1),
(1266, 11, 67, 'api::product.product', 'image', 2),
(1267, 44, 187, 'api::product.product', 'image', 1),
(1268, 25, 187, 'api::product.product', 'image', 2),
(1269, 344, 93, 'api::product.product', 'image', 1),
(1270, 298, 93, 'api::product.product', 'image', 2),
(1271, 435, 123, 'api::product.product', 'image', 1),
(1272, 236, 123, 'api::product.product', 'image', 2),
(1273, 403, 70, 'api::product.product', 'image', 1),
(1274, 183, 70, 'api::product.product', 'image', 2),
(1277, 186, 188, 'api::product.product', 'image', 1),
(1278, 110, 188, 'api::product.product', 'image', 2),
(1282, 579, 7, 'api::category.category', 'image', 1),
(1283, 583, 7, 'api::category.category', 'icon', 1),
(1284, 577, 39, 'api::category.category', 'image', 1),
(1285, 586, 39, 'api::category.category', 'icon', 1),
(1286, 578, 3, 'api::category.category', 'image', 1),
(1287, 585, 3, 'api::category.category', 'icon', 1),
(1288, 577, 14, 'api::category.category', 'image', 1),
(1289, 584, 14, 'api::category.category', 'icon', 1),
(1290, 576, 4, 'api::category.category', 'image', 1),
(1291, 583, 4, 'api::category.category', 'icon', 1),
(1294, 462, 159, 'api::product.product', 'image', 1),
(1295, 278, 159, 'api::product.product', 'image', 2),
(1296, 149, 65, 'api::product.product', 'image', 1),
(1297, 284, 65, 'api::product.product', 'image', 2),
(1300, 270, 122, 'api::product.product', 'image', 1),
(1301, 400, 122, 'api::product.product', 'image', 2),
(1302, 42, 120, 'api::product.product', 'image', 1),
(1303, 117, 120, 'api::product.product', 'image', 2),
(1308, 403, 97, 'api::product.product', 'image', 1),
(1309, 118, 97, 'api::product.product', 'image', 2),
(1310, 376, 89, 'api::product.product', 'image', 1),
(1311, 397, 89, 'api::product.product', 'image', 2),
(1312, 23, 193, 'api::product.product', 'image', 1),
(1313, 135, 193, 'api::product.product', 'image', 2),
(1314, 117, 128, 'api::product.product', 'image', 1),
(1315, 149, 128, 'api::product.product', 'image', 2),
(1319, 590, 3, 'api::carousel.carousel', 'image', 1),
(1320, 589, 2, 'api::carousel.carousel', 'image', 1),
(1321, 588, 1, 'api::carousel.carousel', 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-05-08 12:05:13.633000', '2023-05-08 12:05:13.633000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `total` int DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `orders_users_permissions_user_links`
--

CREATE TABLE `orders_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int UNSIGNED NOT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `order_details_order_links`
--

CREATE TABLE `order_details_order_links` (
  `id` int UNSIGNED NOT NULL,
  `order_detail_id` int UNSIGNED DEFAULT NULL,
  `order_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `order_details_product_links`
--

CREATE TABLE `order_details_product_links` (
  `id` int UNSIGNED NOT NULL,
  `order_detail_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `author` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `author`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Chính sách bảo mật', 'Chào mừng bạn đến với Công ty Cổ phần Sữa Việt Nam (Vinamilk)\n\nChúng tôi là Công ty Cổ phần Sữa Việt Nam (Vinamilk), có địa chỉ trụ sở chính tại Số 10, Tân Trào, P. Tân Phú, Quận 7, TP. Hồ Chí Minh (“ Vinamilk”) là đơn vị sở hữu và vận hành Website new.vinamilk.com.vn, ứng dụng Vinamilk và Hệ thống các Cửa hàng Vinamilk trên toàn quốc.\n\nVinamilk luôn xem trọng sự riêng tư và bảo vệ dữ liệu cá nhân của các Khách hàng.\n\nNếu Vinamilk thay đổi Chính Sách Bảo Mật Thông Tin, Vinamilk sẽ cập nhật thông tin thay đổi đó hoặc Chính Sách Bảo Mật Thông Tin sửa đổi trên Website new.vinamilk.com.vn, ứng dụng Vinamilk. Trong phạm vi pháp luật cho phép, về việc bạn tiếp tục sử dụng tài khoản thành viên của Khách hàng tại Vinamilk được xem là Khách hàng đã công nhận và đồng ý với các thay đổi trong Chính sách bảo mật thông tin này.\n\nBằng việc đăng ký thành công một tài khoản Khách hàng tại Vinamilk là Bạn đã xác nhận và đồng ý rằng bạn chấp nhận các phương pháp, yêu cầu hoặc và chính sách được mô tả trong Chính sách bảo mật thông tin này, Bạn xác nhận đã biết rõ và đồng ý toàn bộ và cho phép Vinamilk thu thập, sử dụng, tiết lộ và/hoặc xử lý dữ liệu cá nhân của bạn như mô tả trong đây. nếu Bạn không đồng ý cho phép xử lý dữ liệu cá nhân của Bạn như mô tả trong chính sách bảo mật thông tin này, vui lòng không đăng ký sử dụng tài khoản thành viên của Vinamilk.\n\n1. Mục đích thu thập thông tin\nViệc thu thập dữ liệu chủ yếu trên Website new.vinamilk.com.vn, ứng dụng Vinamilk và Hệ thống các Cửa hàng Vinamilk bao gồm: email, điện thoại, địa chỉ, tên đăng nhập. Đây là các thông tin mà new.vinamilk.com.vn cần khách hàng cung cấp bắt buộc khi đăng ký sử dụng dịch vụ và để new.vinamilk.com.vn liên hệ xác nhận khi khách hàng đăng ký mua hàng trên website nhằm đảm bảo quyền lợi cho cho người tiêu dùng. Trong trường hợp áp dụng chương trình khách hàng thân thiết, Khách hàng cần cung cấp thêm các thông tin về CMND, ngày sinh, nơi cấp, ngày cấp.\n\nKhách hàng sẽ tự chịu trách nhiệm về bảo mật và lưu giữ mọi hoạt động sử dụng dịch vụ dưới tên đăng ký, mật khẩu và hộp thư điện tử của mình. Ngoài ra, khách hàng có trách nhiệm thông báo kịp thời cho new.vinamilk.com.vn về những hành vi sử dụng trái phép, lạm dụng, vi phạm bảo mật, lưu giữ tên đăng ký và mật khẩu của bên thứ ba để có biện pháp giải quyết phù hợp.\n\n2. Phạm vi sử dụng thông tin\nVinamilk sử dụng thông tin khách hàng cung cấp để:\n\nCung cấp các dịch vụ liên quan đến khách hàng.\nGửi các thông báo về các hoạt động trao đổi thông tin giữa khách hàng và Website new.vinamilk.com.vn, ứng dụng Vinamilk và Hệ thống các Cửa hàng Vinamilk\nNgăn ngừa các hoạt động phá hoại tài khoản người dùng của khách hàng hoặc các hoạt động giả mạo khách hàng.\nLiên lạc và giải quyết với khách hàng trong những trường hợp đặc biệt.\nKhông sử dụng thông tin cá nhân của khách hàng ngoài mục đích xác nhận và liên hệ có liên quan đến giao dịch tại Website new.vinamilk.com.vn, ứng dụng Vinamilk và Hệ thống các Cửa hàng Vinamilk\nTrong trường hợp có yêu cầu của pháp luật: new.vinamilk.com.vn có trách nhiệm hợp tác cung cấp thông tin cá nhân khách hàng khi có yêu cầu từ cơ quan tư pháp bao gồm: Viện kiểm sát, tòa án, cơ quan công an điều tra liên quan đến hành vi vi phạm pháp luật nào đó của khách hàng. Ngoài ra, không ai có quyền xâm phạm vào thông tin cá nhân của khách hàng.\n3. Thời gian lưu trữ thông tin\nDữ liệu cá nhân của khách hàng sẽ được lưu trữ cho đến khi có yêu cầu hủy bỏ từ khách hàng. Còn lại trong mọi trường hợp thông tin cá nhân thành viên sẽ được bảo mật trên máy chủ của Website new.vinamilk.com.vn, ứng dụng Vinamilk và Hệ thống các Cửa hàng Vinamilk.\n\n* Địa chỉ của đơn vị thu thập và quản lý thông tin cá nhân\n\nCÔNG TY CỔ PHẦN SỮA VIỆT NAM (VINAMILK)\nĐịa chỉ trụ sở: 10 Tân Trào, Phường Tân Phú, Quận 7, Tp Hồ Chí Minh\nĐiện thoại: 08. 54.155.555\nFax: 08.54.161 226\nEmail: vinamilk@vinamilk.com.vn', 'Admin', '2024-12-30 13:28:31.671000', '2024-12-30 13:28:39.413000', '2024-12-30 13:28:39.407000', 1, 1),
(2, 'Chính sách sử dụng', '. Giới thiệu\nChào mừng quý khách hàng đến với Vinamilk Shop\n\nChúng tôi là Công ty Cổ phần Sữa Việt Nam (Vinamilk), có địa chỉ trụ sở chính tại Số 10, Tân Trào, P. Tân Phú, Quận 7, TP. Hồ Chí Minh. Vinamilk thành lập Sàn giao dịch thương mại điện tử thông qua website new.vinamilk.com.vn (Sau đây gọi là Vinamilk Shop) và đã được đăng ký chính thức với Bộ Công Thương Việt Nam.\n\nKhi truy cập vào website của chúng tôi, có nghĩa là quý khách đã đồng ý với các điều khoản này. Chúng tôi có quyền chỉnh sửa, thay đổi, lược bỏ hoặc thêm vào bất kỳ phần nào trong Điều khoản sử dụng này vào bất cứ lúc nào. Sau khi được thay đổi, các thông tin sẽ có hiệu lực ngay khi được đăng trên trang web mà không thông báo trước. Khi quý khách tiếp tục sử dụng website sau khi các điều khoản thay đổi được đăng tải, đồng nghĩa với việc quý khách chấp nhận các thay đổi đó. Do đó, quý khách hàng vui lòng kiểm tra Điều khoản sử dụng thường xuyên để cập nhật những thay đổi của chúng tôi\n\n2. Hướng dẫn sử dụng website\nKhi truy cập vào website của chúng tôi, khách hàng phải đảm bảo đủ 18 tuổi, hoặc có thể truy cập dưới sự giám sát của cha mẹ hay người giám hộ hợp pháp. Khách hàng đảm bảo có đầy đủ hành vi dân sự để thực hiện các giao dịch mua bán hàng hóa theo quy định hiện hành của pháp luật Việt Nam.\n\nQuý khách hàng sẽ không phải đăng ký tài khoản để có thể truy cập vào web chúng tôi. Tuy nhiên, các thông tin mua hàng phải là thông tin xác thực nhằm phục vụ cho việc giao hàng được diễn ra hiệu quả. Trong trường hợp quý khách hàng có tạo tài khoản trên web của chúng tôi, thông tin truy cập của quý khách phải là thông tin xác thực về bản thân và cần cập nhật lại nếu có thay đổi. Mỗi người truy cập phải có trách nhiệm với mật khẩu, tài khoản và hoạt động của mình trên web. Hơn nữa, khi tài khoản bị truy cập trái phép, quý khách hàng phải thông báo cho chúng tôi biết. Chúng tôi không chịu bất kỳ trách nhiệm nào, dù trực tiếp hay gián tiếp, đối với những thiệt hại hoặc mất mát gây ra do quý khách không tuân thủ quy định.\n\nNếu không được chúng tôi cho phép bằng văn bản, việc sử dụng bất kỳ phần nào của website này với mục đích thương mại hoặc nhân danh bất kỳ đối tác thứ ba nào đều hoàn toàn bị nghiêm cấm. Nếu vi phạm bất cứ điều nào trong đây, tài khoản của quý khách sẽ bị chúng tôi hủy mà không cần báo trước.\n\n3. Hỗ trợ khách hàng\nChúng tôi luôn hướng đến phương châm hoạt động \"Lợi ích của Người tiêu dùng là mục tiêu phát triển của Vinamilk\" bằng sự kết hợp của một dịch vụ sau bán hàng hoàn hảo với sự phục vụ chu đáo, tận tâm và luôn luôn lắng nghe ý kiến phản hồi từ khách hàng. Tất cả những điều này giúp chúng tôi định hướng và dần tiến đến Tầm nhìn: VINAMILK trở thành biểu tượng niềm tin số một Việt Nam về sản phẩm dinh dưỡng và sức khỏe phục vụ cuộc sống con người.\n\nTất cả ý kiến đánh giá của quý khách đều được trân trọng và đều là tài sản của chúng tôi. Chúng tôi cũng có thể khóa tài khoản của quý khách ngay lập tức hoặc áp dụng các biện pháp khác theo quy định của pháp luật Việt Nam, nếu chúng tôi phát hiện bất kỳ thông tin giả mạo nào.\n\nTrung tâm chăm sóc Khách hàng Vinamilk Shop\nSố 10 Tân Trào, Phường Tân Phú, Quận 7, TP. Hồ Chí Minh\nĐiện thoại: 1900 636 979\nEmail: eshop@vinamilk.com.vn\n\nThời gian hoạt động: từ thứ Hai đến thứ Sáu\n\nBuổi sáng: từ 08:00 – 12:00\nBuổi chiều: từ 12:30 – 18:00\nVinamilk Shop: Thời gian hoạt động: 07:30 - 20:00 (Các ngày trong tuần)\n\n4. Thương hiệu và bản quyền\nMọi quyền sở hữu trí tuệ (đã đăng ký hoặc chưa đăng ký), nội dung thông tin và tất cả các thiết kế, văn bản, đồ họa, phần mềm, hình ảnh, video, âm nhạc, âm thanh, biên dịch phần mềm, mã nguồn và phần mềm cơ bản đều là tài sản của chúng tôi. Toàn bộ nội dung của trang web được bảo vệ bởi luật bản quyền của Việt Nam và các công ước quốc tế. Bản quyền đã được bảo lưu.\n\n5. Quyền pháp lý\nCác điều kiện, điều khoản và nội dung của trang web này được điều chỉnh bởi luật pháp Việt Nam và Tòa án có thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp nào phát sinh từ việc sử dụng trái phép trang web này.\n\n6. Đảm bảo an toàn giao dịch tại Vinamilk Shop\nChúng tôi sử dụng các dịch vụ để bảo vệ thông tin về nội dung mà người bán đăng sản phẩm trên Vinamilk Shop. Để đảm bảo các giao dịch được tiến hành thành công, hạn chế tối đa rủi ro có thể phát sinh.\n\n7. Giải quyết tranh chấp\nBất kỳ tranh cãi, khiếu nại hoặc tranh chấp phát sinh từ hoặc liên quan đến giao dịch tại Vinamilk Shop hoặc các Quy định và Điều kiện này đều sẽ được giải quyết bằng hình thức thương lượng, hòa giải, trọng tài và/hoặc Tòa án theo Luật bảo vệ Người tiêu dùng Chương 4 về Giải quyết tranh chấp giữa người tiêu dùng và tổ chức, cá nhân kinh doanh hàng hóa, dịch vụ.\n\n8. Luật pháp và thẩm quyền tại Lãnh thổ Việt Nam\nTất cả các Điều Khoản và Điều Kiện này và Hợp Đồng (và tất cả nghĩa vụ phát sinh ngoài hợp đồng hoặc có liên quan) sẽ bị chi phối và được hiểu theo luật pháp của Việt Nam. Nếu có tranh chấp phát sinh bởi các Quy định Sử dụng này, quý khách hàng có quyền gửi khiếu nại/khiếu kiện lên Tòa án có thẩm quyền tại Việt Nam để giải quyết.\n\n\nChào bạn! Vinamilk luôn ở đây, sẵn sàng hỗ trợ!\ncontact\n', 'Admin', '2024-12-30 13:29:06.874000', '2024-12-30 13:29:08.147000', '2024-12-30 13:29:08.143000', 1, 1),
(3, 'Chính sách đổi trả', 'CHÍNH SÁCH ĐỔI TRẢ\nVinamilk Shop hiện chưa hỗ trợ yêu cầu đổi hàng hoặc các yêu cầu Trả hàng/Hoàn tiền mang tính cảm quan, không ưng ý, đổi ý.\nQuý khách hàng cần kiểm tra tình trạng hàng hóa và thực hiện đổi hàng/trả lại hàng ngay tại thời điểm giao/nhận hàng trong những trường hợp sau:\n\nHàng không đúng chủng loại, mẫu mã trong đơn hàng đã đặt hoặc như trên website tại thời điểm đặt hàng.\nKhông đủ số lượng, không đủ bộ như trong đơn hàng.\nTình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ…\nSau khi Quý khách đã nhận hàng, Vinamilk Shop chỉ tiếp nhận giải quyết đổi trả khi Quý khách có video quay quá trình mở kiện hàng (Lưu ý: Video cần thể hiện rõ thông tin được dán trên kiện hàng, số lượng và tình trạng của sản phẩm)\nĐối với trường hợp trả hàng Quý khách vui lòng quay video đóng gói sản phẩm và gửi về Zalo Vinamilk - shop & more (Lưu ý: Video cần thể hiện rõ số lượng và tình trạng của sản phẩm).\nVinamilk Shop chỉ tiếp nhận khiếu nại trong cùng ngày đối với hàng bảo quản lạnh và trong vòng 3 ngày đối với hàng thông thường tính từ lúc Quý khách nhận hàng.\nKhách hàng có trách nhiệm trình giấy tờ liên quan chứng minh sự thiếu sót trên để hoàn thành việc hoàn trả/đổi trả hàng hóa.\nTrong trường hợp Quý khách hàng có ý kiến đóng góp/khiếu nại liên quan Chất lượng sản phẩm, Quý khách hàng vui lòng liên hệ Bộ phận chăm sóc khách hàng Vinamilk Shop tại hotline: 1900 636 979 để được hỗ trợ.\nCHÍNH SÁCH HOÀN TIỀN\nThời gian hoàn tiền được tính từ thời điểm đơn hàng được hủy thành công hoặc hệ thống ghi nhận đồng ý hoàn tiền sau khi xử lý đổi trả thành công.\n\n#	Phương thức thanh toán	Phương thức hoàn tiền	Thời gian Vinamilk hoàn tiền	Thời gian Ngân hàng/Ví điện tử ghi có\n1	Thẻ tín dụng/ thẻ ghi nợ	Thẻ tín dụng/ thẻ ghi nợ	01 ngày làm việc	Thời gian khách hàng nhận được tiền hoàn từ 05-30 ngày làm việc tiếp theo tùy thuộc Ngân hàng phát hành thẻ mà Quý Khách thực hiện giao dịch.\n2	Thẻ ATM nội địa/ Internet Banking	Thẻ ATM nội địa/ Internet Banking	01 ngày làm việc	 \n3	Ví điện tử	Ví điện tử	01 ngày làm việc	02-03 ngày làm việc\n4	Tiền mặt (COD)	Chuyển khoản ngân hàng	05 -07 ngày làm việc	01-03 ngày làm việc\n\nChào bạn! Vinamilk luôn ở đây, sẵn sàng hỗ trợ!\ncontact\n', 'Admin', '2024-12-30 13:29:34.626000', '2024-12-30 13:29:36.709000', '2024-12-30 13:29:36.705000', 1, 1),
(4, 'Chính sách thanh toán', '1. Giá của sản phẩm\nHàng hóa trên website đã bao gồm thuế giá trị gia tăng (+VAT).\n\n2. Hình thức thanh toán\nVinamilk cung cấp cho Khách hàng các phương thức thanh toán tiện lợi:\nThanh toán bằng tiền mặt khi nhận hàng (COD - giao hàng và thu tiền tận nơi).\nThanh toán qua qua thẻ tín dụng/ thẻ ghi nợ Thanh toán qua thẻ ATM nội địa/ Internet Banking\nThanh toán qua ví điện tử ZaloPay\nThanh toán ví điện tử khác (Momo, Shopeepay, VNPAY, ….), quét mã QR với ứng dụng di động\n\nMột số lưu ý các lỗi thanh toán khi đặt hàng:\n\n#Vấn đề	Hướng xử lý\n1. Đã nhập đúng thông tin nhưng không thấy ngân hàng gửi OTP.	Khách hàng vui lòng kiểm tra lại các tin nhắn văn bản khác có nhận được không?\n- Nếu nhận được tin nhắn bình thường, nguyên nhân có thể đến từ nhà mạng bị nghẽn không gửi SMS. Khách hàng có thể bấm gửi lại. Trường hợp đã thao tác nhiều lần vẫn không nhận được OTP vui lòng liên hệ Ngân hàng phát hành kiểm tra nguyên nhân.\n- Nếu không nhận được tất cả tin nhắn có thể kiểm tra lại sóng điện thoại, bộ nhớ điện thoại bị đầy thì xóa bớt hoặc tháo sim ra lắp sang máy khác và thử lại. Hoặc kiểm tra lại thông tin số điện thoại đăng ký chủ thẻ có đúng số điện thoại đang kiểm tra.\n \n2. Đã điền đầy đủ thông tin thẻ nhưng vẫn bị báo sai thông tin thẻ hoặc ngân hàng từ chối cấp phép thanh toán.	Khách hàng vui lòng kiểm tra như sau:\n1. Kiểm tra lại số thẻ xem có nhập thiếu số hay dư số nào không?\n2. Tên chủ thẻ phải viết không dấu, viết đúng ký tự viết tắt, dấu cách in trên mặt thẻ\n3. Kiểm tra lại ngày hiệu lực, tên chủ thẻ, số thẻ, số CVV … xem đã điền chính xác chưa. Trường hợp thẻ chỉ có ngày phát hành: nhập thông tin ngày phát hành thẻ\n4. Kiểm tra xem ngày hiệu lực thẻ còn đủ hạn để sử dụng thanh toán thẻ không?\n5. Khách hàng xem có đang gõ nhầm số \"9\" thành số \"4\" hoặc ngược lại. Nhiều thẻ sử dụng lâu ngày bị mờ chữ số dễ nhìn nhầm ký tự.\n6. Nếu đã kiểm tra đúng hết nhưng vẫn không thực hiện thanh toán được vui lòng liên hệ Ngân hàng phát hành thẻ kiểm tra lại. Hoặc chụp hình ảnh thanh toán lỗi, Khách hàng vui lòng che đi số CVV, và che số thẻ ở giữa chỉ cung cấp 6 số thẻ đầu & 4 số thẻ cuối gửi về email eshop@vinamilk.com.vn để kiểm tra và hỗ trợ Khách hàng\n3. Thẻ thông báo không đủ hạn mức thanh toán/ Tài khoản không đủ tiền	Khách hàng vui lòng kiểm tra lại số dư/hạn mức thẻ được cấp và xem thêm hạn mức được phép sử dụng trong ngày có đang bị vượt không?\n4. Khách hàng nhập thông tin thẻ chưa kịp bấm \"thanh toán\" hoặc chưa kịp nhập/quét thông tin thẻ đã bị thoát ra ngoài và báo giao dịch không thành công hoặc trắng màn hình	Nguyên nhân có thể do đường truyền internet tại khu vực Khách hàng chập chờn, không ổn định hoặc 3G/4G Khách hàng đang sử dụng đã hết lưu lượng, sóng yếu hay KH treo đơn hàng tại bước thanh toán quá lâu sau đó mới quay lại thao tác nên đơn hàng bị timeout.\nHướng xử lý: Khách hàng vui lòng thử kiểm tra lại kết nối internet và thử đặt lại nếu vẫn phát sinh lỗi tương tự vui lòng chụp hình gửi về email eshop@vinamilk.com.vnđể kiểm tra và hỗ trợ Khách hàng\n5. Không có hiển thị đủ trường thông tin để Khách hàng có thể điền thông tin thẻ thanh toán hoặc quét thanh toán mà không thấy được	Khách hàng vui lòng kiểm tra lại đang chọn hình thức thanh toán đúng với loại thẻ sử dụng hay ví điện tử thực hiện thanh toán chưa?\nVí dụ: - Thẻ ATM nhưng lại chọn thanh toán thẻ quốc tế (Visa/Master/JCB…)\n- Mở ứng dụng ví điện tử A thanh toán nhưng lại chọn hình thức thanh toán ví điện tử B để quét. Nếu đã kiểm tra đúng hết nhưng vẫn không thực hiện thanh toán được vui lòng chụp hình gửi về email eshop@vinamilk.com.vn để kiểm tra và hỗ trợ Khách hàng .\n\nChào bạn! Vinamilk luôn ở đây, sẵn sàng hỗ trợ!\ncontact\n', 'Admin', '2024-12-30 13:30:00.720000', '2024-12-30 13:30:01.802000', '2024-12-30 13:30:01.795000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `price` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `view` int DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `ingredient` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `instruction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `view`, `sold`, `status`, `feature`, `ingredient`, `instruction`, `summary`, `tag`) VALUES
(8, 'Hydrating Face Cream', 'A moisturizing face cream that deeply nourishes the skin, providing hydration and softness all day long.', 2000, '2023-05-09 00:40:35.817000', '2024-12-24 13:40:30.127000', '2023-06-04 18:09:22.503000', NULL, 1, 113, 77, 'In stock', 'Moisturizing, Softening, Anti-aging, Nourishing', 'Aqua, Glycerin, Hyaluronic Acid, Aloe Vera, Vitamin E', 'Apply a small amount to the face and neck, gently massage until absorbed. Use daily for best results.', 'A luxurious hydrating face cream for daily use to maintain soft, healthy, and glowing skin.', 'vitC, hydration, skincare, smooth'),
(9, 'Nourishing Hand Cream', 'A rich, nourishing hand cream that softens and protects dry hands.', 100000, '2023-05-09 00:40:35.919000', '2023-06-04 22:46:52.915000', '2023-05-28 14:28:28.623000', NULL, NULL, 101, 128, NULL, 'Nourishing, Softening, Protecting', 'Shea Butter, Cocoa Butter, Glycerin, Vitamin E', 'Apply a generous amount to hands and massage in until absorbed. Use as needed.', 'A deeply nourishing hand cream that softens and protects your skin.', 'handcare, nourishing, skincare, soft'),
(10, 'Refreshing Body Lotion', 'A light, refreshing body lotion that hydrates and revitalizes the skin.', 85818, '2023-05-09 00:40:35.940000', '2024-12-24 13:44:04.467000', '2023-05-28 14:28:23.548000', NULL, 1, 150, 136, 'In stock', 'Hydrating, Refreshing, Revitalizing', 'Coconut Oil, Aloe Vera, Vitamin C, Glycerin', 'Apply generously to the body and massage until absorbed. Best used after showering.', 'A lightweight body lotion for soft, hydrated, and refreshed skin.', 'bodycare, hydration, skincare, refreshing'),
(11, 'Soothing Lip Balm', 'A soothing lip balm that provides intense hydration and protection against chapped lips.', 95365, '2023-05-09 00:40:35.970000', '2023-05-28 14:28:21.104000', '2023-05-28 14:28:20.680000', NULL, NULL, 158, 17, NULL, 'Soothing, Hydrating, Protecting', 'Beeswax, Shea Butter, Vitamin E, Peppermint Oil', 'Apply to lips as needed, especially during dry or cold weather.', 'A nourishing lip balm that heals and protects dry, cracked lips.', 'lipcare, soothing, hydration, skincare'),
(12, 'Revitalizing Hair Oil', 'A lightweight hair oil that nourishes and restores shine to dry, dull hair.', 83077, '2023-05-09 00:40:35.990000', '2023-05-09 00:40:35.990000', '2023-05-28 11:02:07.000000', NULL, NULL, 213, 100, NULL, 'Nourishing, Restoring, Shiny', 'Argan Oil, Jojoba Oil, Vitamin E, Coconut Oil', 'Apply a small amount to damp or dry hair, focusing on the ends. Style as usual.', 'A nourishing hair oil that restores shine and softness to your hair.', 'haircare, oil, nourishing, shiny'),
(13, 'Brightening Vitamin C Serum', 'A vitamin C serum that brightens and evens skin tone, reducing dark spots and pigmentation.', 20737, '2023-05-09 00:40:36.019000', '2023-05-09 00:40:36.019000', '2023-05-28 11:02:07.000000', NULL, NULL, 221, 35, NULL, 'Brightening, Anti-aging, Even Skin Tone', 'Vitamin C, Hyaluronic Acid, Aloe Vera, Glycerin', 'Apply a few drops to cleansed face and neck, gently massage in until absorbed. Use daily for best results.', 'A potent vitamin C serum that reduces dark spots and promotes brighter, smoother skin.', 'vitaminC, brightening, skincare, anti-aging'),
(14, 'Revitalizing Green Tea Mask', 'A refreshing green tea mask that detoxifies and rejuvenates the skin, leaving it refreshed and smooth.', 26978, '2023-05-09 00:40:36.043000', '2023-05-09 00:40:36.043000', '2023-05-28 11:02:07.000000', NULL, NULL, 107, 138, NULL, 'Detoxifying, Rejuvenating, Refreshing', 'Green Tea Extract, Aloe Vera, Vitamin E, Kaolin Clay', 'Apply an even layer to the face, leave on for 10-15 minutes, then rinse off with warm water.', 'A deep-cleansing mask that revitalizes and smooths the skin.', 'greenTea, detox, skincare, refreshing'),
(15, 'Ultra Hydrating Night Cream', 'A rich night cream that deeply hydrates and repairs the skin while you sleep.', 76907, '2023-05-09 00:40:36.068000', '2023-05-09 00:40:36.068000', '2023-05-28 11:02:07.000000', NULL, NULL, 162, 100, NULL, 'Hydrating, Repairing, Anti-aging', 'Hyaluronic Acid, Retinol, Shea Butter, Jojoba Oil', 'Apply a generous amount to the face and neck before bed. Massage gently until absorbed.', 'A luxurious night cream that helps to replenish and rejuvenate skin overnight.', 'nightCare, hydrating, anti-aging, skincare'),
(16, 'Gentle Exfoliating Scrub', 'A gentle scrub that exfoliates and polishes the skin, removing dead cells and impurities.', 83328, '2023-05-09 00:40:36.133000', '2023-05-09 00:40:36.133000', '2023-05-28 11:02:07.000000', NULL, NULL, 210, 52, NULL, 'Exfoliating, Polishing, Smooth Skin', 'Sugar Crystals, Aloe Vera, Vitamin C, Glycerin', 'Gently massage onto damp skin in circular motions, then rinse off with warm water.', 'A gentle exfoliating scrub that reveals smooth and glowing skin.', 'exfoliate, skincare, smooth, polishing'),
(17, 'Rejuvenating Face Oil', 'A nourishing face oil that deeply hydrates and rejuvenates the skin, restoring its natural glow.', 71099, '2023-05-09 00:40:36.166000', '2024-12-24 13:46:08.090000', '2023-05-28 11:02:07.000000', NULL, 1, 228, 83, 'In stock', 'Hydrating, Rejuvenating, Glowing', 'Argan Oil, Rosehip Oil, Vitamin E, Jojoba Oil', 'Apply a few drops to the face and massage gently until absorbed. Use daily for a radiant glow.', 'A deeply hydrating oil that revitalizes and gives your skin a radiant glow.', 'faceOil, hydrating, skincare, rejuvenating'),
(18, 'Firming Eye Cream', 'An eye cream that firms and tightens the delicate skin around the eyes, reducing puffiness and dark circles.', 96477, '2023-05-09 00:40:36.195000', '2023-05-09 00:40:36.195000', '2023-05-28 11:02:07.000000', NULL, NULL, 132, 112, NULL, 'Firming, Anti-puffiness, Reducing Dark Circles', 'Caffeine, Peptides, Vitamin K, Aloe Vera', 'Gently tap a small amount around the eye area using your ring finger. Use in the morning and night.', 'A powerful eye cream that targets puffiness and dark circles, leaving the eye area refreshed.', 'eyeCare, anti-puffiness, skincare, firming'),
(19, 'Smoothing Lip Scrub', 'A lip scrub that exfoliates and smooths the lips, removing dry and flaky skin for soft, supple lips.', 75248, '2023-05-09 00:40:36.224000', '2023-05-09 00:40:36.224000', '2023-05-28 11:02:07.000000', NULL, NULL, 162, 178, NULL, 'Exfoliating, Smoothening, Softening', 'Sugar, Honey, Coconut Oil, Vitamin E', 'Gently massage onto lips in circular motions, then wipe away with a damp cloth.', 'A lip scrub that exfoliates and softens lips, leaving them smooth and hydrated.', 'lipCare, exfoliate, skincare, smooth'),
(20, 'Hydrating Face Mist', 'A refreshing face mist that hydrates and revitalizes the skin, leaving it feeling fresh and dewy.', 89688, '2023-05-09 00:40:36.252000', '2023-05-09 00:40:36.252000', '2023-05-28 11:02:07.000000', NULL, NULL, 200, 168, NULL, 'Hydrating, Refreshing, Energizing', 'Rose Water, Glycerin, Aloe Vera, Vitamin C', 'Spray evenly over the face and neck as needed, especially throughout the day for a boost of hydration.', 'A quick refreshing mist that provides hydration and gives your skin a natural glow.', 'faceMist, hydrating, skincare, refreshing'),
(21, 'Anti-Aging Day Cream', 'A lightweight day cream that protects the skin from aging signs while keeping it hydrated and fresh.', 65963, '2023-05-09 00:40:36.295000', '2023-05-09 00:40:36.295000', '2023-05-28 11:02:07.000000', NULL, NULL, 237, 184, NULL, 'Anti-aging, Hydrating, SPF Protection', 'Retinol, Hyaluronic Acid, Vitamin C, SPF 30', 'Apply evenly to the face and neck every morning after cleansing.', 'A day cream that prevents the signs of aging while providing daily hydration and protection.', 'dayCare, anti-aging, skincare, SPF'),
(22, 'Clarifying Acne Gel', 'A targeted acne treatment gel that clears breakouts and reduces inflammation without drying out the skin.', 45584, '2023-05-09 00:40:36.328000', '2023-05-09 00:40:36.328000', '2023-05-28 11:02:07.000000', NULL, NULL, 207, 186, NULL, 'Acne Treatment, Clarifying, Soothing', 'Salicylic Acid, Tea Tree Oil, Aloe Vera, Witch Hazel', 'Apply directly to acne-prone areas after cleansing. Use twice daily for best results.', 'A powerful acne gel that targets pimples and blemishes, leaving skin clear and smooth.', 'acneCare, clarifying, skincare, treatment'),
(23, 'Purifying Charcoal Mask', 'A deep-cleansing mask that draws out impurities and detoxifies the skin using activated charcoal.', 67397, '2023-05-09 00:40:36.359000', '2024-12-24 14:20:55.706000', '2023-05-28 11:02:07.000000', NULL, 1, 105, 69, 'In stock', 'Detoxifying, Purifying, Deep-Cleansing', 'Activated Charcoal, Kaolin Clay, Aloe Vera, Vitamin E', 'Apply an even layer to the face, leave on for 10-15 minutes, then rinse with warm water.', 'A purifying mask that detoxifies and clears your skin, leaving it smooth and refreshed.', 'charcoal, detox, skincare, purifying'),
(24, 'Calming Aloe Vera Gel', 'A soothing aloe vera gel that calms and hydrates the skin, ideal for sunburns and irritation.', 33514, '2023-05-09 00:40:36.426000', '2023-05-09 00:40:36.426000', '2023-05-28 11:02:07.000000', NULL, NULL, 259, 196, NULL, 'Soothing, Hydrating, Calming', 'Aloe Vera, Vitamin E, Glycerin, Cucumber Extract', 'Apply generously to irritated or sunburned skin. Reapply as needed.', 'A cooling aloe vera gel that soothes and hydrates the skin, perfect for post-sun care.', 'aloeVera, soothing, skincare, hydration'),
(25, 'Deep Cleansing Charcoal Scrub', 'A deep-cleansing charcoal scrub that removes impurities and excess oil, leaving your skin refreshed and smooth.', 48373, '2023-05-09 00:40:36.456000', '2023-05-09 00:40:36.456000', '2023-05-28 11:02:07.000000', NULL, NULL, 200, 115, NULL, 'Exfoliating, Purifying, Detoxifying', 'Activated Charcoal, Sugar, Aloe Vera, Vitamin C', 'Massage gently onto damp skin, focusing on the T-zone. Rinse thoroughly with warm water.', 'A purifying scrub that deeply cleanses and detoxifies your skin.', 'charcoal, exfoliating, skincare, detoxifying'),
(26, 'Anti-Pollution Face Cream', 'A protective face cream that shields your skin from environmental pollutants, while keeping it moisturized.', 73819, '2023-05-09 00:40:36.491000', '2023-05-09 00:40:36.491000', '2023-05-28 11:02:07.000000', NULL, NULL, 171, 15, NULL, 'Protective, Hydrating, Anti-pollution', 'Vitamin E, Green Tea Extract, Hyaluronic Acid, Jojoba Oil', 'Apply to face and neck every morning after cleansing. Massage until absorbed.', 'A daily defense cream that protects your skin from environmental stressors.', 'anti-pollution, skincare, protective, hydrating'),
(27, 'Brightening Face Mask', 'A brightening face mask that revitalizes and rejuvenates dull skin, leaving it glowing and refreshed.', 93421, '2023-05-09 00:40:36.524000', '2023-05-09 00:40:36.524000', '2023-05-28 11:02:07.000000', NULL, NULL, 156, 39, NULL, 'Brightening, Hydrating, Revitalizing', 'Vitamin C, Niacinamide, Hyaluronic Acid, Aloe Vera', 'Apply an even layer to the face, leave on for 10-15 minutes, then rinse off with warm water.', 'A revitalizing mask that enhances skin brightness and radiance.', 'brightening, skincare, mask, revitalizing'),
(28, 'Nourishing Hair Mask', 'A deep-conditioning hair mask that nourishes and strengthens hair, making it soft and shiny.', 81920, '2023-05-09 00:40:36.551000', '2023-05-09 00:40:36.551000', '2023-05-28 11:02:07.000000', NULL, NULL, 125, 12, NULL, 'Nourishing, Strengthening, Hydrating', 'Argan Oil, Avocado Oil, Shea Butter, Keratin', 'Apply to damp hair, focusing on the ends. Leave for 15-20 minutes, then rinse thoroughly.', 'A deeply nourishing hair mask that helps to repair and hydrate dry, damaged hair.', 'haircare, nourishing, mask, strengthening'),
(29, 'Hydrating Face Serum', 'A hydrating face serum that locks in moisture, leaving the skin plump, smooth, and radiant.', 73834, '2023-05-09 00:40:36.582000', '2023-05-09 00:40:36.582000', '2023-05-28 11:02:07.000000', NULL, NULL, 281, 70, NULL, 'Hydrating, Plumping, Brightening', 'Hyaluronic Acid, Vitamin C, Glycerin, Aloe Vera', 'Apply a few drops to face and neck after cleansing, gently massage until absorbed.', 'A lightweight serum that deeply hydrates and boosts skin radiance.', 'serum, hydration, skincare, plumping'),
(30, 'Rejuvenating Foot Cream', 'A rich foot cream that moisturizes and repairs dry, cracked feet, leaving them soft and smooth.', 38241, '2023-05-09 00:40:36.611000', '2023-05-09 00:40:36.611000', '2023-05-28 11:02:07.000000', NULL, NULL, 104, 14, NULL, 'Moisturizing, Repairing, Softening', 'Shea Butter, Peppermint Oil, Vitamin E, Aloe Vera', 'Apply generously to feet, massage until absorbed. Focus on dry areas.', 'A nourishing foot cream that helps repair dry, cracked feet and smooths rough skin.', 'footcare, moisturizing, skincare, repair'),
(31, 'Cleansing Foam', 'A gentle cleansing foam that removes dirt and makeup, leaving the skin fresh and balanced.', 87283, '2023-05-09 00:40:36.640000', '2023-05-09 00:40:36.640000', '2023-05-28 11:02:07.000000', NULL, NULL, 152, 25, NULL, 'Cleansing, Refreshing, Gentle', 'Aloe Vera, Green Tea Extract, Vitamin C, Glycerin', 'Pump a small amount onto wet hands, lather and massage gently onto face. Rinse off with water.', 'A soft foam that deeply cleanses the skin without stripping moisture.', 'cleansing, skincare, refreshing, gentle'),
(32, 'Exfoliating Foot Scrub', 'A foot scrub that gently exfoliates and smooths rough, calloused feet, leaving them soft and refreshed.', 39318, '2023-05-09 00:40:36.665000', '2023-05-09 00:40:36.665000', '2023-05-28 11:02:07.000000', NULL, NULL, 264, 147, NULL, 'Exfoliating, Softening, Refreshing', 'Sugar, Peppermint Oil, Coconut Oil, Vitamin E', 'Massage scrub onto feet in circular motions, focusing on rough areas. Rinse off with warm water.', 'A rejuvenating foot scrub that smooths rough patches and softens the skin.', 'footcare, exfoliating, skincare, softening'),
(33, 'Moisturizing Hand Lotion', 'A fast-absorbing hand lotion that nourishes and softens dry hands, leaving them smooth and hydrated.', 82131, '2023-05-09 00:40:36.698000', '2023-05-09 00:40:36.698000', '2023-05-28 11:02:07.000000', NULL, NULL, 141, 168, NULL, 'Moisturizing, Softening, Non-greasy', 'Shea Butter, Glycerin, Vitamin E, Aloe Vera', 'Apply a small amount to hands and massage until fully absorbed.', 'A hand lotion that provides lasting moisture and leaves hands feeling soft and smooth.', 'handcare, moisturizing, skincare, softening'),
(34, 'Refreshing Cucumber Mist', 'A refreshing cucumber mist that hydrates and refreshes the skin, perfect for hot weather or after exercise.', 44355, '2023-05-09 00:40:36.726000', '2024-12-24 14:21:18.859000', '2023-05-28 11:02:07.000000', NULL, 1, 212, 56, 'In stock', 'Refreshing, Hydrating, Cooling', 'Cucumber Extract, Aloe Vera, Vitamin C, Glycerin', 'Spray directly onto the face and neck for a cool, refreshing burst.', 'A hydrating facial mist that cools and revitalizes your skin on the go.', 'faceMist, cooling, refreshing, skincare'),
(35, 'Clarifying Face Wash', 'A deep-cleansing face wash that removes excess oil and impurities, leaving skin clean and clear.', 71961, '2023-05-09 00:40:36.756000', '2023-05-09 00:40:36.756000', '2023-05-28 11:02:07.000000', NULL, NULL, 245, 159, NULL, 'Cleansing, Purifying, Oil Control', 'Salicylic Acid, Tea Tree Oil, Aloe Vera, Glycerin', 'Apply to wet skin, lather and massage gently onto face. Rinse off with warm water.', 'A clarifying cleanser that removes impurities and controls oil without drying out the skin.', 'cleansing, skincare, clarifying, oilControl'),
(36, 'Lifting Serum', 'A powerful serum that lifts and firms the skin, promoting a more youthful appearance.', 20664, '2023-05-09 00:40:36.783000', '2023-05-09 00:40:36.783000', '2023-05-28 11:02:07.000000', NULL, NULL, 300, 117, NULL, 'Firming, Lifting, Anti-aging', 'Peptides, Hyaluronic Acid, Vitamin C, Retinol', 'Apply a few drops to clean skin, gently massage until absorbed. Use daily for best results.', 'An anti-aging serum that firms and lifts the skin, giving a more youthful look.', 'serum, lifting, anti-aging, skincare'),
(37, 'Hydrating Mist', 'A refreshing hydrating mist that revitalizes and moisturizes the skin throughout the day.', 76442, '2023-05-09 00:40:36.820000', '2023-05-09 00:40:36.820000', '2023-05-28 11:02:07.000000', NULL, NULL, 287, 185, NULL, 'Hydrating, Refreshing, Moisturizing', 'Aloe Vera, Hyaluronic Acid, Rose Water, Vitamin E', 'Spray onto face throughout the day for a quick burst of hydration.', 'A refreshing mist that hydrates and revitalizes your skin any time of the day.', 'hydration, skincare, mist, refreshing'),
(38, 'Rejuvenating Face Oil', 'A luxurious face oil that deeply nourishes and rejuvenates the skin, providing a healthy glow.', 52378, '2023-05-09 00:40:36.840000', '2023-05-09 00:40:36.840000', '2023-05-28 11:02:07.000000', NULL, NULL, 262, 54, NULL, 'Nourishing, Rejuvenating, Radiant', 'Jojoba Oil, Argan Oil, Vitamin E, Rosehip Oil', 'Apply 2-3 drops to clean skin and massage in circular motions until absorbed.', 'A rich face oil that nourishes and restores skin’s natural radiance.', 'faceOil, skincare, rejuvenating, nourishing'),
(39, 'Detoxifying Clay Mask', 'A detoxifying clay mask that purifies the skin and draws out impurities, leaving the skin clean and refreshed.', 43195, '2023-05-09 00:40:36.868000', '2023-05-09 00:40:36.868000', '2023-05-28 11:02:07.000000', NULL, NULL, 286, 165, NULL, 'Purifying, Detoxifying, Deep-cleansing', 'Bentonite Clay, Activated Charcoal, Green Tea Extract', 'Apply an even layer to the face and leave on for 10-15 minutes, then rinse with warm water.', 'A clay mask that detoxifies and deeply cleanses the skin for a fresh complexion.', 'mask, detoxifying, skincare, purifying'),
(40, 'Anti-Wrinkle Night Cream', 'A rich night cream that helps reduce wrinkles and fine lines while you sleep, restoring skin’s firmness and elasticity.', 34668, '2023-05-09 00:40:36.890000', '2023-05-09 00:40:36.890000', '2023-05-28 11:02:07.000000', NULL, NULL, 165, 35, NULL, 'Anti-aging, Firming, Hydrating', 'Retinol, Hyaluronic Acid, Peptides, Vitamin E', 'Apply evenly to the face and neck before bedtime. Gently massage until fully absorbed.', 'A nourishing night cream that reduces wrinkles and restores youthful skin.', 'nightCream, anti-aging, skincare, firming'),
(41, 'Brightening Eye Serum', 'An eye serum that brightens dark circles and reduces puffiness, leaving the under-eye area refreshed and awake.', 46399, '2023-05-09 00:40:36.917000', '2023-05-09 00:40:36.917000', '2023-05-28 11:02:07.000000', NULL, NULL, 276, 178, NULL, 'Brightening, Anti-puffiness, Energizing', 'Caffeine, Vitamin C, Hyaluronic Acid, Peptides', 'Apply a small amount to the under-eye area and gently pat with your ring finger until absorbed.', 'An energizing eye serum that brightens and reduces puffiness for a refreshed look.', 'eyeSerum, brightening, skincare, puffiness'),
(42, 'Nourishing Hair Oil', 'A nourishing hair oil that helps to repair damaged hair, leaving it soft, shiny, and frizz-free.', 40111, '2023-05-09 00:40:36.939000', '2023-05-09 00:40:36.939000', '2023-05-28 11:02:07.000000', NULL, NULL, 257, 54, NULL, 'Nourishing, Hydrating, Anti-frizz', 'Argan Oil, Coconut Oil, Vitamin E', 'Apply a small amount to damp hair, focusing on the ends. Style as usual.', 'A hydrating hair oil that restores shine and softness to dry, damaged hair.', 'haircare, nourishing, anti-frizz, hairOil'),
(43, 'Anti-Blemish Face Wash', 'A gentle face wash that helps control acne and blemishes, leaving skin clear and refreshed.', 52164, '2023-05-09 00:40:36.968000', '2023-05-09 00:40:36.968000', '2023-05-28 11:02:07.000000', NULL, NULL, 297, 24, NULL, 'Acne Control, Deep Cleansing, Refreshing', 'Salicylic Acid, Tea Tree Oil, Aloe Vera, Vitamin C', 'Massage onto damp skin, then rinse with warm water. Use daily for clear skin.', 'A gentle face wash that helps control acne and keeps skin clear.', 'skincare, acneControl, faceWash, blemishes'),
(44, 'Restorative Foot Cream', 'A nourishing foot cream that helps repair cracked heels and dry feet, leaving them soft and smooth.', 91747, '2023-05-09 00:40:36.990000', '2023-05-09 00:40:36.990000', '2023-05-28 11:02:07.000000', NULL, NULL, 227, 165, NULL, 'Repairing, Hydrating, Softening', 'Shea Butter, Peppermint Oil, Vitamin E, Aloe Vera', 'Massage into feet and heels, focusing on dry areas. Use at night for best results.', 'A rich foot cream that repairs and softens dry, cracked feet.', 'footcare, repair, skincare, moisturizing'),
(45, 'Restorative Foot Cream', 'A nourishing foot cream that helps repair cracked heels and dry feet, leaving them soft and smooth.', 34154, '2023-05-09 00:40:37.018000', '2023-05-09 00:40:37.018000', '2023-05-28 11:02:07.000000', NULL, NULL, 124, 76, NULL, 'Repairing, Hydrating, Softening', 'Shea Butter, Peppermint Oil, Vitamin E, Aloe Vera', 'Massage into feet and heels, focusing on dry areas. Use at night for best results.', 'A rich foot cream that repairs and softens dry, cracked feet.', 'footcare, repair, skincare, moisturizing'),
(46, 'Calming Body Lotion', 'A soothing body lotion that calms and hydrates the skin, leaving it soft and refreshed.', 42674, '2023-05-09 00:40:37.041000', '2024-12-24 14:08:09.469000', '2023-05-28 11:02:07.000000', NULL, 1, 202, 85, 'In stock', 'Calming, Hydrating, Non-greasy', 'Lavender Oil, Aloe Vera, Shea Butter, Glycerin', 'Apply to body after showering or as needed throughout the day.', 'A calming body lotion that deeply hydrates and softens the skin.', 'bodyLotion, moisturizing, calming, skincare'),
(47, 'Luxury Hand Cream', 'A rich hand cream that deeply nourishes and softens dry hands, leaving them smooth and hydrated.', 95592, '2023-05-09 00:40:37.067000', '2023-05-09 00:40:37.067000', '2023-05-28 11:02:07.000000', NULL, NULL, 217, 131, NULL, 'Nourishing, Hydrating, Softening', 'Shea Butter, Vitamin E, Glycerin, Coconut Oil', 'Apply a generous amount to hands, massaging gently into the skin. Use as needed.', 'A luxurious hand cream that moisturizes and softens dry, rough hands.', 'handcare, moisturizing, skincare, nourishing'),
(48, 'Refreshing Citrus Body Scrub', 'A refreshing body scrub with citrus extracts that exfoliates and leaves the skin feeling smooth and rejuvenated.', 92998, '2023-05-09 00:40:37.089000', '2024-12-24 14:10:00.915000', '2023-05-28 11:02:07.000000', NULL, 1, 203, 125, 'In stock', 'Exfoliating, Refreshing, Rejuvenating', 'Citrus Extracts, Sugar, Coconut Oil, Vitamin E', 'Massage onto wet skin in circular motions, then rinse off with warm water.', 'An invigorating body scrub that exfoliates and revitalizes the skin with a refreshing citrus scent.', 'bodyScrub, exfoliating, citrus, skincare'),
(49, 'Gentle Aloe Vera Face Wash', 'A mild face wash with aloe vera that cleanses and soothes sensitive skin without irritation.', 21212, '2023-05-09 00:40:37.117000', '2023-05-09 00:40:37.117000', '2023-05-28 11:02:07.000000', NULL, NULL, 212, 187, NULL, 'Soothing, Hydrating, Gentle', 'Aloe Vera, Glycerin, Chamomile Extract', 'Massage onto damp skin to create a lather, then rinse thoroughly with warm water.', 'A gentle face wash that calms and hydrates sensitive skin.', 'faceWash, soothing, skincare, gentle'),
(50, 'Deep Hydration Mask', 'A deeply hydrating mask that provides intense moisture to dry skin, leaving it smooth and plump.', 55658, '2023-05-09 00:40:37.139000', '2024-12-24 13:43:18.402000', '2023-05-28 11:02:07.000000', NULL, 1, 298, 29, 'In stock', 'Hydrating, Moisturizing, Plumping', 'Hyaluronic Acid, Vitamin E, Aloe Vera, Glycerin', 'Apply a thick layer to the face, leave on for 15-20 minutes, then rinse with lukewarm water.', 'A hydrating mask that replenishes dry skin with deep moisture for a plump and smooth finish.', 'faceMask, hydrating, skincare, moisturizing'),
(51, 'Nourishing Hair Mask', 'A deep conditioning hair mask that repairs and nourishes damaged hair, leaving it soft and shiny.', 31023, '2023-05-09 00:40:37.204000', '2024-12-24 14:12:34.581000', '2023-05-28 11:02:07.000000', NULL, 1, 248, 54, 'In stock', 'Repairing, Nourishing, Softening', 'Argan Oil, Keratin, Vitamin E, Aloe Vera', 'Apply to damp hair and leave on for 10-15 minutes, then rinse thoroughly.', 'A nourishing hair mask that restores shine and health to dry, damaged hair.', 'haircare, nourishing, repairing, hairMask'),
(52, 'Tea Tree Oil Facial Toner', 'A purifying facial toner with tea tree oil that helps balance oil production and prevent breakouts.', 61435, '2023-05-09 00:40:37.252000', '2023-05-09 00:40:37.252000', '2023-05-28 11:02:07.000000', NULL, NULL, 123, 160, NULL, 'Purifying, Balancing, Anti-acne', 'Tea Tree Oil, Witch Hazel, Aloe Vera, Vitamin E', 'Apply to a cotton pad and gently wipe across the face after cleansing.', 'A clarifying toner that helps prevent acne and balances skin oil production.', 'toner, teaTree, antiAcne, skincare'),
(53, 'Anti-Aging Eye Gel', 'A refreshing eye gel that reduces puffiness and dark circles, helping to restore youthful eyes.', 40402, '2023-05-09 00:40:37.321000', '2024-12-24 13:44:26.792000', '2023-05-28 11:02:07.000000', NULL, 1, 225, 146, 'Out Stock', 'Anti-aging, Brightening, Refreshing', 'Caffeine, Hyaluronic Acid, Peptides, Vitamin E', 'Gently apply a small amount around the eyes using your ring finger. Use morning and night.', 'An eye gel that reduces puffiness and dark circles, giving you brighter and more refreshed eyes.', 'eyeGel, antiAging, brightening, skincare'),
(54, 'Luxury Aromatherapy Candle', 'A luxurious aromatherapy candle that provides a calming fragrance, ideal for relaxation and stress relief.', 92250, '2023-05-09 00:40:37.403000', '2023-05-09 00:40:37.403000', '2023-05-28 11:02:07.000000', NULL, NULL, 256, 140, NULL, 'Calming, Relaxing, Stress-relief', 'Soy Wax, Lavender Essential Oil, Chamomile Oil', 'Light the candle and enjoy the calming fragrance. Never leave unattended.', 'A soothing aromatherapy candle that enhances relaxation and relieves stress.', 'candle, aromatherapy, relaxation, calming'),
(55, 'Soothing Lavender Oil', 'A calming lavender oil that soothes the mind and body, perfect for relaxation and sleep support.', 48775, '2023-05-09 00:40:37.526000', '2023-05-09 00:40:37.526000', '2023-05-28 11:02:07.000000', NULL, NULL, 240, 13, NULL, 'Soothing, Calming, Relaxing', 'Lavender Oil, Jojoba Oil, Vitamin E', 'Apply a few drops to your pulse points and massage gently. Use before bedtime for a restful night.', 'A relaxing lavender oil to help reduce stress and promote restful sleep.', 'lavender, essentialOils, relaxation, calming'),
(56, 'Organic Green Tea Toner', 'A refreshing green tea toner that balances the skin and refreshes your complexion.', 40327, '2023-05-09 00:40:37.573000', '2023-05-09 00:40:37.573000', '2023-05-28 11:02:07.000000', NULL, NULL, 145, 191, NULL, 'Refreshing, Balancing, Antioxidant', 'Green Tea Extract, Aloe Vera, Witch Hazel, Vitamin C', 'Apply to a cotton pad and gently wipe across the face after cleansing.', 'A gentle toner with green tea extract to refresh and balance your skin.', 'toner, greenTea, skincare, antioxidant'),
(57, 'Vitamin C Brightening Serum', 'A potent Vitamin C serum that brightens and evens out skin tone while protecting against free radicals.', 74678, '2023-05-09 00:40:37.629000', '2024-12-15 13:14:29.593000', '2023-05-28 11:02:07.000000', NULL, 1, 113, 98, NULL, 'Brightening, Antioxidant, Skin Tone Even', 'Vitamin C, Hyaluronic Acid, Niacinamide, Aloe Vera', 'Apply a few drops to clean skin and gently massage until absorbed.', 'A brightening serum that promotes even skin tone and youthful radiance.', 'serum, brightening, vitaminC, skincare'),
(58, 'Firming Eye Cream', 'An eye cream that helps firm, hydrate, and reduce puffiness around the delicate eye area.', 91595, '2023-05-09 00:40:37.677000', '2023-05-09 00:40:37.677000', '2023-05-28 11:02:07.000000', NULL, NULL, 145, 134, NULL, 'Firming, Hydrating, Anti-puffiness', 'Caffeine, Hyaluronic Acid, Peptides, Vitamin E', 'Gently apply around the eye area using your ring finger. Use morning and night.', 'An eye cream that firms and reduces puffiness, leaving the eye area refreshed and youthful.', 'eyeCream, firming, skincare, puffiness'),
(59, 'Clarifying Charcoal Mask', 'A clarifying charcoal mask that detoxifies and refines pores, leaving your skin smooth and clear.', 97886, '2023-05-09 00:40:37.699000', '2023-05-09 00:40:37.699000', '2023-05-28 11:02:07.000000', NULL, NULL, 231, 56, NULL, 'Purifying, Detoxifying, Pore-refining', 'Activated Charcoal, Kaolin Clay, Aloe Vera, Green Tea Extract', 'Apply an even layer to clean skin. Leave on for 10-15 minutes before rinsing off with warm water.', 'A deep-cleansing charcoal mask that draws out impurities and clarifies the skin.', 'charcoal, mask, detoxifying, skincare'),
(60, 'Nourishing Coconut Oil', 'A nourishing coconut oil that deeply moisturizes the skin and hair, providing natural hydration and softness.', 83415, '2023-05-09 00:40:37.760000', '2023-05-09 00:40:37.760000', '2023-05-28 11:02:07.000000', NULL, NULL, 185, 58, NULL, 'Moisturizing, Hydrating, Softening', 'Coconut Oil, Vitamin E', 'Apply to skin or hair, massaging gently until absorbed.', 'A versatile coconut oil that hydrates and softens both skin and hair.', 'coconutOil, moisturizing, skincare, haircare'),
(61, 'Refreshing Mint Shampoo', 'A refreshing mint shampoo that invigorates the scalp, leaving your hair clean, soft, and refreshed.', 99853, '2023-05-09 00:40:37.791000', '2023-05-09 00:40:37.791000', '2023-05-28 11:02:07.000000', NULL, NULL, 132, 191, NULL, 'Refreshing, Clean, Softening', 'Peppermint Oil, Tea Tree Oil, Aloe Vera, Glycerin', 'Massage into wet hair and scalp, lather, then rinse thoroughly.', 'A minty shampoo that cleanses and refreshes your hair and scalp.', 'shampoo, mint, haircare, refreshing'),
(62, 'Rejuvenating Night Cream', 'A rich night cream that deeply nourishes and repairs the skin while you sleep, leaving it soft and radiant.', 59775, '2023-05-09 00:40:37.835000', '2023-05-09 00:40:37.835000', '2023-05-28 11:02:07.000000', NULL, NULL, 155, 106, NULL, 'Nourishing, Repairing, Hydrating', 'Retinol, Hyaluronic Acid, Vitamin C, Aloe Vera', 'Apply a generous amount to face and neck before bed. Massage until fully absorbed.', 'A luxurious night cream that helps repair and rejuvenate skin overnight.', 'nightCream, skincare, hydrating, nourishing'),
(63, 'AHA Exfoliating Serum', 'An exfoliating serum with AHA that removes dead skin cells, promoting smooth and glowing skin.', 85036, '2023-05-09 00:40:37.861000', '2023-05-09 00:40:37.861000', '2023-05-28 11:02:07.000000', NULL, NULL, 260, 82, NULL, 'Exfoliating, Brightening, Smoothing', 'AHA, Vitamin C, Hyaluronic Acid, Aloe Vera', 'Apply a few drops to clean skin, then gently massage until absorbed.', 'An exfoliating serum that boosts radiance and smooths skin texture.', 'serum, exfoliating, skincare, AHA'),
(64, 'Hydrating Face Mask', 'A hydrating face mask that provides deep moisture and helps refresh dry skin.', 24058, '2023-05-09 00:40:37.896000', '2024-12-24 13:44:51.199000', '2023-05-28 11:02:07.000000', NULL, 1, 207, 177, 'In stock', 'Hydrating, Refreshing, Moisturizing', 'Hyaluronic Acid, Aloe Vera, Glycerin', 'Apply a thick layer to the face, leave on for 15-20 minutes, then rinse with lukewarm water.', 'A deep moisturizing face mask that revitalizes dry skin for a fresh, hydrated glow.', 'faceMask, moisturizing, skincare, hydration'),
(65, 'Anti-Wrinkle Serum', 'A powerful serum that targets fine lines and wrinkles, promoting smoother, youthful skin.', 37035, '2023-05-09 00:40:37.924000', '2024-12-30 18:08:50.562000', '2023-05-28 11:02:07.000000', NULL, 1, 260, 69, 'In stock', 'Anti-aging, Smoothing, Firming', 'Retinol, Hyaluronic Acid, Vitamin C, Peptides', 'Apply a few drops to clean skin, gently massage until absorbed. Use in the evening.', 'An anti-aging serum that reduces wrinkles and improves skin texture.', 'serum, anti-aging, skincare, wrinkle'),
(66, 'Brightening Vitamin C Cream', 'A brightening cream that enhances radiance and helps fade dark spots, leaving the skin luminous.', 91691, '2023-05-09 00:40:37.957000', '2024-12-24 13:42:07.772000', '2023-05-28 11:02:07.000000', NULL, 1, 165, 119, 'Hidden', 'Brightening, Radiant, Anti-dark spots', 'Vitamin C, Niacinamide, Hyaluronic Acid', 'Apply to face and neck in the morning after cleansing. Use sunscreen afterward.', 'A radiance-boosting cream that brightens the skin and helps reduce dark spots.', 'cream, brightening, skincare, radiance'),
(67, 'Exfoliating Body Scrub', 'A refreshing exfoliating scrub that sloughs off dead skin cells, leaving the body smooth and soft.', 27535, '2023-05-09 00:40:38.002000', '2024-12-24 14:29:48.488000', '2023-05-28 11:02:07.000000', NULL, 1, 299, 38, 'In stock', 'Exfoliating, Refreshing, Softening', 'Sugar, Coconut Oil, Vitamin E', 'Massage onto wet skin in circular motions, then rinse with warm water.', 'A body scrub that exfoliates and leaves the skin feeling soft and renewed.', 'scrub, exfoliating, bodycare, softening'),
(68, 'Deep Cleansing Gel', 'A deep cleansing gel that removes dirt, oil, and makeup, leaving the skin fresh and clear.', 95511, '2023-05-09 00:40:38.038000', '2023-05-09 00:40:38.038000', '2023-05-28 11:02:07.000000', NULL, NULL, 290, 36, NULL, 'Cleansing, Purifying, Refreshing', 'Tea Tree Oil, Aloe Vera, Vitamin E', 'Massage onto damp skin, lather, and rinse thoroughly with water.', 'A purifying face gel that cleanses and refreshes the skin.', 'faceWash, cleansing, skincare, refreshing'),
(69, 'Clarifying Shampoo', 'A clarifying shampoo that removes product buildup and restores hair’s natural shine and volume.', 88145, '2023-05-09 00:40:38.077000', '2023-05-09 00:40:38.077000', '2023-05-28 11:02:07.000000', NULL, NULL, 109, 142, NULL, 'Clarifying, Refreshing, Volumizing', 'Charcoal, Tea Tree Oil, Vitamin B5', 'Apply to wet hair, massage into scalp, and rinse thoroughly. Follow with conditioner.', 'A shampoo that cleanses deeply, removing buildup and giving hair a refreshed volume.', 'shampoo, clarifying, haircare, volumizing'),
(70, 'Revitalizing Hair Serum', 'A revitalizing hair serum that nourishes and smooths hair, adding shine and reducing frizz.', 21081, '2023-05-09 00:40:38.120000', '2024-12-24 15:36:11.155000', '2023-05-28 11:02:07.000000', NULL, 1, 180, 176, 'In stock', 'Nourishing, Smoothing, Frizz-control', 'Argan Oil, Jojoba Oil, Vitamin E', 'Apply a small amount to damp hair, focusing on the ends. Style as usual.', 'A hair serum that tames frizz and leaves hair smooth and shiny.', 'haircare, serum, smoothing, frizz'),
(71, 'Cooling After Sun Gel', 'A soothing gel that cools and hydrates the skin after sun exposure, relieving sunburn and irritation.', 73106, '2023-05-09 00:40:38.159000', '2023-05-09 00:40:38.159000', '2023-05-28 11:02:07.000000', NULL, NULL, 138, 64, NULL, 'Cooling, Soothing, Hydrating', 'Aloe Vera, Cucumber Extract, Vitamin E', 'Apply generously to sun-exposed skin and massage in. Reapply as needed.', 'A cooling gel that soothes and hydrates skin after sun exposure.', 'afterSun, cooling, skincare, soothing'),
(72, 'Brightening Eye Cream', 'A light eye cream that brightens dark circles and firms the under-eye area for a well-rested look.', 96842, '2023-05-09 00:40:38.213000', '2023-05-09 00:40:38.213000', '2023-05-28 11:02:07.000000', NULL, NULL, 103, 26, NULL, 'Brightening, Firming, Revitalizing', 'Vitamin C, Caffeine, Hyaluronic Acid', 'Gently apply around the eye area using your ring finger. Use morning and night.', 'An eye cream that brightens and firms the delicate under-eye area.', 'eyeCare, brightening, skincare, firming'),
(73, 'Luxury Body Butter', 'A rich body butter that deeply moisturizes and nourishes dry skin, leaving it silky smooth and soft.', 88986, '2023-05-09 00:40:38.322000', '2023-05-09 00:40:38.322000', '2023-05-28 11:02:07.000000', NULL, NULL, 218, 111, NULL, 'Moisturizing, Nourishing, Softening', 'Shea Butter, Cocoa Butter, Almond Oil', 'Massage generously into skin after showering or as needed.', 'A luxurious body butter that provides deep moisture and softness to dry skin.', 'bodyCare, moisturizing, skincare, bodyButter'),
(74, 'Hydrating Lip Balm', 'A nourishing lip balm that provides long-lasting hydration and protection against chapped lips.', 68493, '2023-05-09 00:40:38.361000', '2023-05-09 00:40:38.361000', '2023-05-28 11:02:07.000000', NULL, NULL, 102, 78, NULL, 'Hydrating, Soothing, Nourishing', 'Shea Butter, Vitamin E, Beeswax', 'Apply to lips as needed throughout the day for hydration.', 'A soothing lip balm that hydrates and protects lips from dryness and chapping.', 'lipCare, moisturizing, skincare, lipBalm'),
(75, 'Gentle Exfoliating Scrub', 'A gentle exfoliating scrub that removes dead skin cells and leaves your skin soft and radiant.', 69365, '2023-05-09 00:40:38.383000', '2024-12-24 14:11:19.398000', '2023-05-28 11:02:07.000000', NULL, 1, 152, 194, 'In stock', 'Exfoliating, Gentle, Radiant', 'Sugar, Almond Oil, Vitamin E', 'Massage onto damp skin, then rinse off with lukewarm water.', 'A mild exfoliating scrub that smooths the skin, revealing a healthy glow.', 'exfoliating, skincare, radiance, softening'),
(76, 'Moisturizing Hand Cream', 'A rich hand cream that deeply moisturizes and softens dry, cracked hands.', 49371, '2023-05-09 00:40:38.417000', '2024-12-24 13:45:39.419000', '2023-05-28 11:02:07.000000', NULL, 1, 110, 71, 'In stock', 'Moisturizing, Nourishing, Softening', 'Shea Butter, Jojoba Oil, Vitamin E', 'Apply generously to hands as needed, especially after washing.', 'A nourishing hand cream that softens and protects hands from dryness.', 'handCare, moisturizing, skincare, nourishing'),
(77, 'Soothing Aloe Vera Gel', 'A soothing gel that helps calm irritated skin, especially after sun exposure or shaving.', 24546, '2023-05-09 00:40:38.450000', '2023-05-09 00:40:38.450000', '2023-05-28 11:02:07.000000', NULL, NULL, 221, 195, NULL, 'Soothing, Cooling, Hydrating', 'Aloe Vera, Vitamin E, Chamomile Extract', 'Apply generously to skin after sun exposure or shaving for a cooling effect.', 'A refreshing aloe vera gel that hydrates and soothes sensitive skin.', 'soothing, skincare, afterSun, aloeVera'),
(78, 'Nourishing Hair Conditioner', 'A nourishing conditioner that restores moisture and softness to dry or damaged hair.', 56149, '2023-05-09 00:40:38.482000', '2023-05-09 00:40:38.482000', '2023-05-28 11:02:07.000000', NULL, NULL, 108, 59, NULL, 'Nourishing, Softening, Moisturizing', 'Argan Oil, Shea Butter, Keratin', 'Apply to damp hair after shampooing, leave on for 3-5 minutes, then rinse thoroughly.', 'A moisturizing conditioner that revitalizes dry hair, leaving it soft and shiny.', 'hairCare, moisturizing, conditioner, nourishing'),
(79, 'Anti-Aging Night Cream', 'A rich night cream that deeply nourishes the skin, reducing the appearance of fine lines and wrinkles.', 31270, '2023-05-09 00:40:38.568000', '2023-05-09 00:40:38.568000', '2023-05-28 11:02:07.000000', NULL, NULL, 166, 159, NULL, 'Anti-aging, Nourishing, Firming', 'Retinol, Vitamin C, Peptides', 'Apply in the evening after cleansing, gently massaging into the face and neck.', 'A rejuvenating night cream that firms and hydrates the skin while you sleep.', 'nightCream, antiAging, skincare, firming'),
(80, 'Cleansing Micellar Water', 'A gentle micellar water that removes makeup, dirt, and oil, leaving the skin clean and refreshed.', 44972, '2023-05-09 00:40:38.661000', '2023-05-09 00:40:38.661000', '2023-05-28 11:02:07.000000', NULL, NULL, 293, 86, NULL, 'Cleansing, Refreshing, Gentle', 'Micelles, Vitamin E, Aloe Vera', 'Soak a cotton pad and gently wipe across the face to remove makeup and impurities.', 'A gentle micellar water that cleanses and refreshes the skin.', 'micellarWater, cleansing, skincare, refreshing'),
(81, 'Detoxifying Clay Mask', 'A purifying clay mask that detoxifies the skin, removing impurities and excess oil for a clearer complexion.', 88962, '2023-05-09 00:40:38.725000', '2024-12-24 14:21:43.380000', '2023-05-28 11:02:07.000000', NULL, 1, 150, 197, 'Hidden', 'Detoxifying, Purifying, Oil-controlling', 'Bentonite Clay, Activated Charcoal, Aloe Vera', 'Apply an even layer to clean skin, leave on for 10-15 minutes, then rinse off with warm water.', 'A detoxifying mask that draws out impurities and controls oil for clearer skin.', 'clayMask, detoxifying, skincare, purifying'),
(82, 'Hydrating Toner', 'A refreshing toner that hydrates and balances the skin, prepping it for the next steps in your skincare routine.', 85836, '2023-05-09 00:40:38.794000', '2023-05-09 00:40:38.794000', '2023-05-28 11:02:07.000000', NULL, NULL, 129, 159, NULL, 'Hydrating, Balancing, Refreshing', 'Rose Water, Hyaluronic Acid, Vitamin C', 'Apply with a cotton pad to the face after cleansing, gently pressing it into the skin.', 'A hydrating toner that balances and refreshes the skin for a healthy glow.', 'toner, hydrating, skincare, refreshing'),
(83, 'Gentle Facial Scrub', 'A mild facial scrub that exfoliates and renews the skin, leaving it smooth and rejuvenated.', 24329, '2023-05-09 00:40:38.828000', '2024-12-24 14:10:24.489000', '2023-05-28 11:02:07.000000', NULL, 1, 204, 47, 'In stock', 'Exfoliating, Gentle, Refreshing', 'Rice Powder, Aloe Vera, Vitamin E', 'Massage gently onto damp skin, then rinse with warm water.', 'A mild facial scrub that removes dead skin cells and reveals smoother, fresher skin.', 'scrub, exfoliating, skincare, gentle'),
(84, 'Nourishing Lip Balm', 'A nourishing lip balm that keeps lips hydrated and smooth, preventing dryness and cracks.', 52676, '2023-05-09 00:40:38.850000', '2023-05-09 00:40:38.850000', '2023-05-28 11:02:07.000000', NULL, NULL, 263, 13, NULL, 'Hydrating, Nourishing, Soothing', 'Shea Butter, Coconut Oil, Vitamin E', 'Apply to lips throughout the day for smooth and hydrated lips.', 'A soothing lip balm that hydrates and protects lips from dryness and chapping.', 'lipCare, moisturizing, lipBalm, skincare'),
(85, 'Anti-Dandruff Shampoo', 'A powerful shampoo that combats dandruff and soothes the scalp, leaving hair clean and flake-free.', 99715, '2023-05-09 00:40:38.884000', '2024-12-24 13:47:32.812000', '2023-05-28 11:02:07.000000', NULL, 1, 272, 24, 'In stock', 'Anti-dandruff, Soothing, Purifying', 'Tea Tree Oil, Zinc Pyrithione, Aloe Vera', 'Massage into wet hair and scalp, leave on for a few minutes, then rinse thoroughly.', 'A shampoo that fights dandruff and soothes the scalp for clean, healthy hair.', 'shampoo, antiDandruff, haircare, purifying'),
(86, 'Hydrating Face Serum', 'A lightweight face serum that hydrates and replenishes the skin, leaving it soft and smooth.', 85928, '2023-05-09 00:40:38.908000', '2023-05-09 00:40:38.908000', '2023-05-28 11:02:07.000000', NULL, NULL, 103, 145, NULL, 'Hydrating, Replenishing, Soothing', 'Hyaluronic Acid, Glycerin, Vitamin C', 'Apply a few drops to clean skin, gently massage until absorbed. Use morning and night.', 'A hydrating serum that boosts skin moisture and leaves a smooth, healthy glow.', 'serum, hydrating, skincare, replenishing'),
(87, 'Firming Eye Cream', 'An eye cream that firms and brightens the delicate skin around the eyes, reducing puffiness and dark circles.', 68966, '2023-05-09 00:40:38.942000', '2024-12-24 13:42:34.929000', '2023-05-28 11:02:07.000000', NULL, 1, 212, 128, 'In stock', 'Firming, Brightening, Anti-puffiness', 'Caffeine, Vitamin C, Peptides', 'Gently apply around the eyes using your ring finger, morning and night.', 'A firming eye cream that brightens and reduces puffiness for a refreshed look.', 'eyeCare, firming, brightening, antiDarkCircles'),
(88, 'Gentle Face Scrub', 'A gentle face scrub that exfoliates and renews the skin, leaving it smooth and revitalized.', 52549, '2023-05-09 00:40:38.982000', '2023-05-09 00:40:38.982000', '2023-05-28 11:02:07.000000', NULL, NULL, 200, 118, NULL, 'Exfoliating, Gentle, Renewing', 'Rice Powder, Aloe Vera, Vitamin E', 'Massage onto damp skin and rinse off with warm water.', 'A mild scrub that removes dead skin cells and reveals smooth, fresh skin.', 'exfoliating, skincare, gentle, refreshing'),
(89, 'Nourishing Hand Cream', 'A rich, nourishing hand cream that restores moisture to dry hands, leaving them soft and hydrated.', 78750, '2023-05-09 00:40:39.010000', '2024-12-30 22:29:00.184000', '2023-05-28 11:02:07.000000', NULL, 1, 190, 97, 'In stock', 'Moisturizing, Nourishing, Softening', 'Shea Butter, Almond Oil, Vitamin E', 'Massage a small amount into hands throughout the day as needed.', 'A hydrating hand cream that keeps your hands soft and nourished.', 'handCare, moisturizing, skincare, nourishing'),
(90, 'Cooling After-Sun Lotion', 'A soothing lotion that cools and hydrates the skin after sun exposure, helping to calm sunburns and irritation.', 97414, '2023-05-09 00:40:39.042000', '2023-05-09 00:40:39.042000', '2023-05-28 11:02:07.000000', NULL, NULL, 110, 166, NULL, 'Cooling, Hydrating, Soothing', 'Aloe Vera, Cucumber Extract, Vitamin E', 'Apply to sun-exposed skin and gently massage until absorbed.', 'A refreshing lotion that soothes and hydrates skin after sun exposure.', 'afterSun, cooling, skincare, soothing'),
(91, 'Clarifying Face Mask', 'A clarifying face mask that detoxifies and purifies the skin, drawing out impurities for a clear complexion.', 30683, '2023-05-09 00:40:39.075000', '2023-05-09 00:40:39.075000', '2023-05-28 11:02:07.000000', NULL, NULL, 295, 77, NULL, 'Detoxifying, Purifying, Clear Skin', 'Bentonite Clay, Activated Charcoal, Aloe Vera', 'Apply to clean skin and leave for 10-15 minutes, then rinse off with warm water.', 'A purifying face mask that helps clear the skin and reduce excess oil.', 'clarifying, faceMask, skincare, purifying'),
(92, 'Brightening Vitamin C Serum', 'A brightening serum that improves skin tone and texture, reducing the appearance of dark spots and hyperpigmentation.', 47858, '2023-05-09 00:40:39.111000', '2023-05-09 00:40:39.111000', '2023-05-28 11:02:07.000000', NULL, NULL, 299, 166, NULL, 'Brightening, Anti-dark spots, Radiance', 'Vitamin C, Niacinamide, Hyaluronic Acid', 'Apply a few drops to clean skin, gently massage until absorbed.', 'A brightening serum that reduces dark spots and gives skin a radiant glow.', 'serum, brightening, skincare, radiance'),
(93, 'Refreshing Face Mist', 'A refreshing face mist that hydrates and refreshes the skin, perfect for a quick boost of moisture throughout the day.', 73337, '2023-05-09 00:40:39.140000', '2024-12-24 15:31:58.374000', '2023-05-28 11:02:07.000000', NULL, 1, 129, 52, 'In stock', 'Hydrating, Refreshing, Moisturizing', 'Rose Water, Aloe Vera, Hyaluronic Acid', 'Spray directly onto the face for instant hydration and refreshment.', 'A hydrating mist that revives and refreshes the skin at any time of the day.', 'faceMist, refreshing, skincare, hydrating'),
(94, 'Purifying Charcoal Mask', 'A purifying face mask made with activated charcoal that draws out impurities and helps minimize pores for clearer skin.', 98371, '2023-05-09 00:40:39.176000', '2023-05-09 00:40:39.176000', '2023-05-28 11:02:07.000000', NULL, NULL, 269, 90, NULL, 'Purifying, Detoxifying, Pore-Minimizing', 'Activated Charcoal, Bentonite Clay, Aloe Vera', 'Apply an even layer to clean skin and leave on for 10-15 minutes. Rinse with warm water.', 'A detoxifying mask that purifies the skin and minimizes pores for a smoother complexion.', 'charcoalMask, purifying, skincare, detoxifying'),
(95, 'Natural Face Cleanser', 'A natural face cleanser that gently removes dirt and impurities, leaving your skin clean and refreshed.', 81290, '2023-05-09 00:40:39.207000', '2023-05-09 00:40:39.207000', '2023-05-28 11:02:07.000000', NULL, NULL, 155, 158, NULL, 'Gentle, Natural, Refreshing', 'Aloe Vera, Green Tea Extract, Jojoba Oil', 'Massage onto damp skin and rinse with lukewarm water.', 'A gentle face cleanser made with natural ingredients to purify and refresh your skin.', 'natural, cleansing, skincare, refreshing'),
(96, 'Natural Hair Shampoo', 'A natural shampoo that gently cleanses and nourishes the hair, leaving it soft and shiny without harsh chemicals.', 40003, '2023-05-09 00:40:39.232000', '2023-05-09 00:40:39.232000', '2023-05-28 11:02:07.000000', NULL, NULL, 118, 20, NULL, 'Natural, Nourishing, Gentle', 'Coconut Oil, Argan Oil, Tea Tree Oil', 'Massage into wet hair and scalp, lather, then rinse thoroughly.', 'A natural shampoo that nourishes and cleanses your hair for a healthier look.', 'natural, shampoo, haircare, nourishing'),
(97, 'Natural Moisturizing Lotion', 'A hydrating lotion made with natural ingredients to keep your skin soft and moisturized all day long.', 93932, '2023-05-09 00:40:39.259000', '2024-12-30 22:28:28.204000', '2023-05-28 11:02:07.000000', NULL, 1, 144, 164, 'In stock', 'Moisturizing, Natural, Hydrating', 'Shea Butter, Almond Oil, Vitamin E', 'Apply a generous amount to skin and massage gently until absorbed.', 'A nourishing lotion that provides natural moisture for smooth and soft skin.', 'natural, moisturizing, skincare, hydrating'),
(98, 'Natural Body Scrub', 'A natural exfoliating scrub that removes dead skin cells, leaving your skin smooth and refreshed.', 81222, '2023-05-09 00:40:39.291000', '2023-05-09 00:40:39.291000', '2023-05-28 11:02:07.000000', NULL, NULL, 185, 134, NULL, 'Exfoliating, Natural, Refreshing', 'Sea Salt, Olive Oil, Lavender Oil', 'Massage gently onto wet skin in circular motions, then rinse off.', 'A refreshing body scrub made with natural ingredients to exfoliate and hydrate your skin.', 'natural, exfoliating, skincare, refreshing');
INSERT INTO `products` (`id`, `product_name`, `description`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `view`, `sold`, `status`, `feature`, `ingredient`, `instruction`, `summary`, `tag`) VALUES
(99, 'Natural Face Mask', 'A detoxifying face mask made from natural clay and botanicals, designed to purify and refresh your skin.', 73716, '2023-05-09 00:40:39.323000', '2024-12-24 14:14:23.648000', '2023-05-28 11:02:07.000000', NULL, 1, 114, 69, 'In stock', 'Detoxifying, Natural, Clarifying', 'Bentonite Clay, Charcoal, Aloe Vera', 'Apply an even layer to clean skin, leave for 10-15 minutes, then rinse off with warm water.', 'A natural face mask that detoxifies the skin, removing impurities and leaving it glowing.', 'natural, faceMask, skincare, detoxifying'),
(100, 'Natural Hand Cream', 'A moisturizing hand cream made with natural ingredients to keep your hands soft and hydrated.', 52321, '2023-05-09 00:40:39.349000', '2024-12-24 14:14:45.275000', '2023-05-28 11:02:07.000000', NULL, 1, 203, 107, 'In stock', 'Moisturizing, Natural, Nourishing', 'Shea Butter, Coconut Oil, Lavender Oil', 'Apply to hands throughout the day, massaging gently until absorbed.', 'A nourishing hand cream that provides deep hydration and softness with natural ingredients.', 'natural, handCare, skincare, moisturizing'),
(101, 'Natural Lip Balm', 'A soothing lip balm made with natural oils to hydrate and protect your lips from dryness.', 59227, '2023-05-09 00:46:40.144000', '2023-05-09 00:46:40.144000', '2023-05-28 11:02:07.000000', NULL, NULL, 123, 197, NULL, 'Hydrating, Natural, Protective', 'Beeswax, Shea Butter, Vitamin E', 'Apply to lips as needed for smooth, hydrated lips.', 'A natural lip balm that protects and hydrates lips, keeping them soft and smooth.', 'natural, lipCare, moisturizing, skincare'),
(102, 'Natural Shampoo for Oily Hair', 'A natural shampoo formulated to control excess oil and maintain balance in oily hair without harsh chemicals.', 69874, '2023-05-09 00:46:40.216000', '2023-05-09 00:46:40.216000', '2023-05-28 11:02:07.000000', NULL, NULL, 215, 184, NULL, 'Oil-controlling, Natural, Balancing', 'Tea Tree Oil, Lemon Extract, Aloe Vera', 'Massage into wet hair and scalp, then rinse thoroughly.', 'A natural shampoo that balances and controls oil for a clean and fresh scalp.', 'natural, oilyHair, shampoo, balancing'),
(103, 'Natural Hydrating Face Cream', 'A natural face cream that provides intense hydration while calming and nourishing the skin.', 96998, '2023-05-09 00:46:40.345000', '2023-05-09 00:46:40.345000', '2023-05-28 11:02:07.000000', NULL, NULL, 273, 115, NULL, 'Hydrating, Calming, Natural', 'Aloe Vera, Chamomile Extract, Jojoba Oil', 'Apply to face and neck after cleansing, massaging gently until absorbed.', 'A natural moisturizing cream that hydrates and calms the skin, leaving it soft and balanced.', 'natural, faceCream, hydrating, skincare'),
(104, 'Natural Body Lotion', 'A natural body lotion that deeply nourishes and hydrates the skin, keeping it soft and supple.', 66353, '2023-05-09 00:46:40.386000', '2023-05-09 00:46:40.386000', '2023-05-28 11:02:07.000000', NULL, NULL, 153, 124, NULL, 'Hydrating, Natural, Nourishing', 'Shea Butter, Coconut Oil, Vitamin E', 'Apply to clean skin and massage gently until fully absorbed.', 'A natural body lotion that moisturizes and softens the skin, leaving it smooth all day.', 'natural, bodyCare, moisturizing, skincare'),
(105, 'Natural Detox Mask', 'A natural detoxifying mask that purifies the skin, drawing out toxins and promoting a clearer complexion.', 62625, '2023-05-09 00:46:40.444000', '2023-05-09 00:46:40.444000', '2023-05-28 11:02:07.000000', NULL, NULL, 158, 120, NULL, 'Detoxifying, Natural, Purifying', 'Charcoal, Bentonite Clay, Aloe Vera', 'Apply an even layer to clean skin, leave for 10-15 minutes, then rinse with warm water.', 'A detoxifying mask that purifies and revitalizes the skin, leaving it fresh and clear.', 'natural, detoxifying, skincare, purifying'),
(106, 'Natural Hair Conditioner', 'A nourishing conditioner made with natural ingredients to hydrate and detangle your hair, leaving it soft and manageable.', 98728, '2023-05-09 00:46:40.493000', '2023-05-09 00:46:40.493000', '2023-05-28 11:02:07.000000', NULL, NULL, 118, 150, NULL, 'Hydrating, Natural, Detangling', 'Coconut Oil, Argan Oil, Aloe Vera', 'Apply to damp hair after shampooing, leave for a few minutes, then rinse thoroughly.', 'A natural conditioner that leaves your hair soft, shiny, and easy to manage.', 'natural, conditioner, haircare, moisturizing'),
(107, 'Natural Facial Toner', 'A refreshing facial toner made with natural ingredients that help balance the skin\'s pH and tighten pores.', 57653, '2023-05-09 00:46:40.527000', '2023-05-09 00:46:40.527000', '2023-05-28 11:02:07.000000', NULL, NULL, 193, 18, NULL, 'Refreshing, Natural, Pore-tightening', 'Rose Water, Witch Hazel, Green Tea Extract', 'Apply with a cotton pad after cleansing to tone and refresh the skin.', 'A natural toner that refreshes and tightens pores for a clear, smooth complexion.', 'natural, toner, skincare, refreshing'),
(108, 'Natural Vitamin C Serum', 'A brightening serum made with natural Vitamin C to reduce dark spots, improve skin texture, and give a glowing complexion.', 70171, '2023-05-09 00:46:40.654000', '2024-12-24 13:41:15.068000', '2023-05-28 11:02:07.000000', NULL, 1, 106, 179, 'In stock', 'Brightening, Natural, Anti-aging', 'Vitamin C, Hyaluronic Acid, Aloe Vera', 'Apply a few drops to clean skin, gently massage until absorbed.', 'A natural Vitamin C serum that brightens and rejuvenates your skin.', 'natural, serum, skincare, brightening'),
(109, 'Natural Anti-Aging Cream', 'An anti-aging cream formulated with natural ingredients to reduce the appearance of wrinkles and fine lines, leaving skin youthful and radiant.', 76417, '2023-05-09 00:46:40.705000', '2024-12-24 14:09:04.131000', '2023-05-28 11:02:07.000000', NULL, 1, 175, 39, 'In stock', 'Anti-aging, Natural, Firming', 'Retinol, Vitamin E, Green Tea Extract', 'Apply to face and neck after cleansing, gently massage until absorbed.', 'A natural anti-aging cream that smooths and firms the skin for a youthful appearance.', 'natural, anti-aging, skincare, firming'),
(110, 'Natural Deodorant', 'A natural deodorant that keeps you feeling fresh all day without the use of harmful chemicals or artificial fragrances.', 69928, '2023-05-09 00:46:40.775000', '2023-05-09 00:46:40.775000', '2023-05-28 11:02:07.000000', NULL, NULL, 268, 122, NULL, 'Natural, Fresh, Chemical-free', 'Baking Soda, Coconut Oil, Arrowroot Powder', 'Apply a thin layer to clean underarms as needed.', 'A natural deodorant that provides long-lasting freshness without chemicals.', 'natural, deodorant, skincare, fresh'),
(111, 'Natural Lip Scrub', 'A natural lip scrub that exfoliates and softens lips, removing dead skin cells and promoting smooth, kissable lips.', 76325, '2023-05-09 00:46:41.406000', '2024-12-24 14:10:54.164000', '2023-05-28 11:02:07.000000', NULL, 1, 206, 164, 'In stock', 'Exfoliating, Natural, Moisturizing', 'Sugar, Honey, Coconut Oil', 'Gently rub onto lips in a circular motion, then rinse off with warm water.', 'A natural lip scrub that gently exfoliates and nourishes lips.', 'natural, lipCare, exfoliating, skincare'),
(112, 'Natural Shower Gel', 'A refreshing shower gel made with natural ingredients to cleanse the body without drying out the skin.', 56361, '2023-05-09 00:46:41.463000', '2023-05-09 00:46:41.463000', '2023-05-28 11:02:07.000000', NULL, NULL, 199, 5, NULL, 'Cleansing, Natural, Refreshing', 'Aloe Vera, Lavender Oil, Olive Oil', 'Apply to wet skin, lather, then rinse off.', 'A natural shower gel that gently cleanses and refreshes your skin.', 'natural, showerGel, skincare, refreshing'),
(113, 'Natural Body Scrub', 'A natural body scrub made with sugar and essential oils to exfoliate and hydrate the skin.', 94794, '2023-05-09 00:46:41.503000', '2023-05-09 00:46:41.503000', '2023-05-28 11:02:07.000000', NULL, NULL, 228, 27, NULL, 'Exfoliating, Hydrating, Natural', 'Sugar, Almond Oil, Essential Oils', 'Massage onto damp skin in circular motions, then rinse off.', 'A natural body scrub that exfoliates and hydrates for smooth, glowing skin.', 'natural, bodyScrub, skincare, exfoliating'),
(114, 'Natural Foot Cream', 'A nourishing foot cream made with natural ingredients to soften dry, cracked heels and leave feet feeling smooth and refreshed.', 75570, '2023-05-09 00:46:41.559000', '2023-05-09 00:46:41.559000', '2023-05-28 11:02:07.000000', NULL, NULL, 248, 58, NULL, 'Soothing, Hydrating, Natural', 'Shea Butter, Peppermint Oil, Aloe Vera', 'Massage into feet before bed for soft, smooth feet.', 'A natural foot cream that nourishes and hydrates to keep feet soft and smooth.', 'natural, footCare, moisturizing, skincare'),
(115, 'Natural Beard Oil', 'A natural beard oil made with nourishing oils to keep your beard soft, shiny, and healthy.', 60995, '2023-05-09 00:46:41.591000', '2023-05-09 00:46:41.591000', '2023-05-28 11:02:07.000000', NULL, NULL, 144, 52, NULL, 'Nourishing, Softening, Natural', 'Argan Oil, Jojoba Oil, Vitamin E', 'Apply a few drops to beard and massage in to keep it soft and manageable.', 'A natural beard oil that moisturizes and softens for a healthy, well-groomed beard.', 'natural, beardCare, skincare, nourishing'),
(116, 'Natural Face Oil', 'A lightweight natural face oil that hydrates and nourishes the skin, leaving it soft and glowing.', 55067, '2023-05-09 00:46:41.617000', '2023-05-09 00:46:41.617000', '2023-05-28 11:02:07.000000', NULL, NULL, 223, 62, NULL, 'Hydrating, Natural, Nourishing', 'Rosehip Oil, Jojoba Oil, Vitamin C', 'Apply a few drops to face and neck after cleansing, massage gently until absorbed.', 'A nourishing face oil that provides deep hydration and a healthy glow.', 'natural, faceOil, skincare, hydrating'),
(117, 'Elegant Steel Saladnoun', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jinscription', 27386, '2023-05-09 00:46:41.650000', '2023-05-09 00:46:41.650000', '2023-05-28 11:02:07.000000', NULL, NULL, 50, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Unbranded Metal Towelszen', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivefraudster', 71644, '2023-05-09 00:46:41.708000', '2023-05-09 00:46:41.708000', '2023-05-28 11:02:07.000000', NULL, NULL, 50, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Tasty Wooden Mouselanding', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designlighting', 51743, '2023-05-09 00:46:41.734000', '2023-05-09 00:46:41.734000', '2023-05-28 11:02:07.000000', NULL, NULL, 50, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Bespoke Rubber Bikeclose', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivecirrhosis', 33885, '2023-05-09 00:46:41.767000', '2024-12-30 18:10:05.103000', '2023-05-28 11:02:07.000000', NULL, 1, 50, 2, 'In stock', NULL, NULL, NULL, NULL, NULL),
(121, 'Generic Soft Computergraduate', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivewrestler', 51414, '2023-05-09 00:46:41.827000', '2024-12-24 14:13:22.100000', '2023-05-28 11:02:07.000000', NULL, 1, 50, 2, 'Out Stock', NULL, NULL, NULL, NULL, NULL),
(122, 'Bespoke Frozen Mouseelevation', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designvaulting', 31261, '2023-05-09 00:46:41.987000', '2024-12-30 18:09:28.846000', '2023-05-28 11:02:07.000000', NULL, 1, 50, 2, 'In stock', NULL, NULL, NULL, NULL, NULL),
(123, 'Intelligent Metal Bikemission', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartsuccotash', 20274, '2023-05-09 00:46:42.070000', '2024-12-24 15:32:19.180000', '2023-05-28 11:02:07.000000', NULL, 1, 50, 20, 'In stock', NULL, NULL, NULL, NULL, NULL),
(124, 'Oriental Plastic Keyboardcranberry', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designevening-wear', 55488, '2023-05-09 00:46:42.109000', '2023-05-09 00:46:42.109000', '2023-05-28 11:02:07.000000', NULL, NULL, 50, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Recycled Bronze Computertoffee', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportflip-flops', 81816, '2023-05-09 00:46:42.172000', '2023-05-09 00:46:42.172000', '2023-05-28 11:02:07.000000', NULL, NULL, 50, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Small Fresh Hatbilling', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartexit', 85080, '2023-05-09 00:46:42.244000', '2023-05-09 00:46:42.244000', '2023-05-28 11:02:07.000000', NULL, NULL, 50, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Trendsetting Facial Cleanser', 'A facial cleanser that follows the latest skincare trends, offering deep cleansing while maintaining skin hydration.', 89399, '2023-05-09 00:46:42.275000', '2023-05-09 00:46:42.275000', '2023-05-28 11:02:07.000000', NULL, NULL, 142, 102, NULL, 'Cleansing, Trendy, Hydrating', 'Coconut Water, Aloe Vera, Vitamin E', 'Apply to wet skin, lather, and rinse off for fresh, clean skin.', 'A trendsetting cleanser that hydrates while deeply cleansing your skin.', 'trend, skincare, facialCleanser, hydrating'),
(128, 'Trendy Anti-Aging Cream', 'An anti-aging cream packed with the latest skincare ingredients, designed to reduce wrinkles and firm the skin.', 71011, '2023-05-09 00:46:42.308000', '2024-12-30 22:29:29.016000', '2023-05-28 11:02:07.000000', NULL, 1, 279, 191, 'In stock', 'Anti-aging, Trendy, Firming', 'Retinol, Vitamin C, Peptides', 'Apply to the face and neck after cleansing for best results.', 'A trendy anti-aging cream that firms and smooths the skin.', 'trend, anti-aging, skincare, firming'),
(129, 'Trendy Facial Mask', 'A facial mask that combines the latest skincare trends to hydrate and revitalize your complexion.', 71880, '2023-05-09 00:46:42.334000', '2024-12-24 13:38:49.061000', '2023-05-28 11:02:07.000000', NULL, 1, 115, 106, 'In stock', 'Hydrating, Trendy, Revitalizing', 'Hyaluronic Acid, Green Tea, Aloe Vera', 'Apply to clean skin, leave for 10-15 minutes, then rinse off with warm water.', 'A trendy facial mask that revitalizes and hydrates your skin.', 'trend, faceMask, hydrating, skincare'),
(130, 'Trendy Hair Serum', 'A hair serum that follows the latest trends in haircare, providing shine and reducing frizz for smoother, healthier hair.', 28117, '2023-05-09 00:46:42.399000', '2023-05-09 00:46:42.399000', '2023-05-28 11:02:07.000000', NULL, NULL, 181, 88, NULL, 'Shine-enhancing, Trendy, Frizz-reducing', 'Argan Oil, Jojoba Oil, Vitamin E', 'Apply a few drops to damp hair, focusing on the ends.', 'A trendy hair serum that nourishes and smooths your hair for a shiny, frizz-free look.', 'trend, haircare, serum, shiny'),
(132, 'Trendy Vitamin C Serum', 'A brightening vitamin C serum that has become a skincare trend, helping reduce dark spots and improve skin texture.', 44843, '2023-05-09 00:46:42.455000', '2023-05-09 00:46:42.455000', '2023-05-28 11:02:07.000000', NULL, NULL, 297, 119, NULL, 'Brightening, Trendy, Anti-aging', 'Vitamin C, Hyaluronic Acid, Vitamin E', 'Apply a few drops to clean skin and gently massage until absorbed.', 'A trendy vitamin C serum that brightens and rejuvenates your complexion.', 'trend, serum, brightening, skincare'),
(133, 'Trendy Glow Oil', 'A facial oil that has gained popularity for its ability to give skin a healthy, radiant glow.', 87759, '2023-05-09 00:46:42.482000', '2023-05-09 00:46:42.482000', '2023-05-28 11:02:07.000000', NULL, NULL, 102, 57, NULL, 'Glow-enhancing, Trendy, Nourishing', 'Rosehip Oil, Jojoba Oil, Vitamin E', 'Apply a few drops to the face and neck after cleansing, gently massage.', 'A trendy glow oil that gives your skin a radiant, dewy finish.', 'trend, faceOil, glow, skincare'),
(134, 'Trendy Hair Mask', 'A hair mask that uses the latest trends in haircare to nourish and repair damaged hair, leaving it soft and shiny.', 49468, '2023-05-09 00:46:42.514000', '2023-05-09 00:46:42.514000', '2023-05-28 11:02:07.000000', NULL, NULL, 176, 10, NULL, 'Repairing, Trendy, Hydrating', 'Argan Oil, Avocado Oil, Honey', 'Apply to damp hair, leave for 10-15 minutes, then rinse thoroughly.', 'A trendy hair mask that repairs and hydrates for soft, shiny hair.', 'trend, haircare, mask, moisturizing'),
(135, 'Trendy Exfoliating Scrub', 'A trendy exfoliating scrub that uses natural ingredients to remove dead skin cells, leaving skin smooth and radiant.', 47297, '2023-05-09 00:46:42.541000', '2023-05-09 00:46:42.541000', '2023-05-28 11:02:07.000000', NULL, NULL, 120, 73, NULL, 'Exfoliating, Trendy, Radiant', 'Sugar, Coconut Oil, Lemon Extract', 'Massage gently into damp skin, then rinse off.', 'A trendy scrub that exfoliates and nourishes for glowing skin.', 'trend, exfoliating, skincare, radiant'),
(136, 'Trendy Body Lotion', 'A luxurious body lotion that follows the latest skincare trends, providing long-lasting moisture and softness.', 89383, '2023-05-09 00:46:42.573000', '2023-05-09 00:46:42.573000', '2023-05-28 11:02:07.000000', NULL, NULL, 200, 84, NULL, 'Moisturizing, Trendy, Softening', 'Shea Butter, Almond Oil, Vitamin E', 'Apply to the body after a shower to lock in moisture.', 'A trendy body lotion that keeps your skin soft, smooth, and hydrated.', 'trend, bodyCare, moisturizing, softening'),
(137, 'Trendy Collagen Boosting Cream', 'A collagen-boosting cream that is part of the latest anti-aging trends, helping to reduce wrinkles and fine lines.', 20309, '2023-05-09 00:46:42.599000', '2023-05-09 00:46:42.599000', '2023-05-28 11:02:07.000000', NULL, NULL, 216, 130, NULL, 'Collagen-boosting, Trendy, Anti-aging', 'Collagen, Vitamin E, Hyaluronic Acid', 'Apply to face and neck daily after cleansing.', 'A trendy collagen cream that enhances skin elasticity and smooths wrinkles.', 'trend, anti-aging, skincare, collagen'),
(138, 'Trendsetting Vitamin C Serum', 'A trendy vitamin C serum that helps brighten and even out skin tone, following the latest skincare trends.', 59663, '2023-05-09 00:46:42.632000', '2023-05-09 00:46:42.632000', '2023-05-28 11:02:07.000000', NULL, NULL, 110, 115, NULL, 'Brightening, Trendy, Skin Tone Even', 'Vitamin C, Hyaluronic Acid, Niacinamide', 'Apply a few drops to clean skin, gently massage until absorbed.', 'A trendy vitamin C serum for a bright, even complexion.', 'trend, serum, brightening, skincare'),
(139, 'Trendy Body Scrub', 'A body scrub that has become a skincare trend, exfoliating and revitalizing the skin with natural ingredients.', 47266, '2023-05-09 00:46:42.657000', '2024-12-24 14:09:42.789000', '2023-05-28 11:02:07.000000', NULL, 1, 243, 172, 'In stock', 'Exfoliating, Trendy, Revitalizing', 'Sugar, Coconut Oil, Lemon Extract', 'Massage into damp skin, then rinse off for smooth and glowing skin.', 'A trendy body scrub that exfoliates and refreshes your skin.', 'trend, bodycare, exfoliating, skincare'),
(140, 'Trendy Night Cream', 'A night cream packed with the latest skincare trends, providing deep hydration and reducing fine lines while you sleep.', 84023, '2023-05-09 00:46:42.691000', '2023-05-09 00:46:42.691000', '2023-05-28 11:02:07.000000', NULL, NULL, 127, 24, NULL, 'Hydrating, Trendy, Anti-aging', 'Retinol, Hyaluronic Acid, Vitamin E', 'Apply a small amount to the face and neck before bedtime.', 'A trendy night cream that hydrates and reduces signs of aging.', 'trend, nightcream, anti-aging, skincare'),
(141, 'Trendy Face Oil', 'A nourishing face oil that follows the latest skincare trends, helping to hydrate and rejuvenate the skin.', 78702, '2023-05-09 00:46:42.716000', '2023-05-09 00:46:42.716000', '2023-05-28 11:02:07.000000', NULL, NULL, 134, 103, NULL, 'Nourishing, Trendy, Hydrating', 'Rosehip Oil, Jojoba Oil, Vitamin E', 'Apply a few drops to the face and massage gently.', 'A trendy face oil that rejuvenates and hydrates your skin.', 'trend, faceoil, hydrating, skincare'),
(142, 'Trendy Collagen Serum', 'A collagen-boosting serum that is all the rage in skincare, helping to firm and lift the skin.', 95251, '2023-05-09 00:46:42.748000', '2023-05-09 00:46:42.748000', '2023-05-28 11:02:07.000000', NULL, NULL, 107, 131, NULL, 'Firming, Trendy, Anti-aging', 'Collagen, Vitamin C, Hyaluronic Acid', 'Apply a few drops to clean skin and massage gently.', 'A trendy collagen serum that firms and lifts your skin.', 'trend, serum, collagen, anti-aging'),
(143, 'Trendy Face Mist', 'A refreshing face mist that keeps your skin hydrated throughout the day, following the latest beauty trends.', 35938, '2023-05-09 00:46:42.776000', '2023-05-09 00:46:42.776000', '2023-05-28 11:02:07.000000', NULL, NULL, 132, 167, NULL, 'Hydrating, Trendy, Refreshing', 'Rose Water, Aloe Vera', 'Spray onto your face for an instant boost of hydration.', 'A trendy face mist that revitalizes and refreshes your skin.', 'trend, facemist, hydrating, skincare'),
(144, 'Trendy Brightening Mask', 'A brightening face mask that uses trending ingredients to rejuvenate and illuminate your skin.', 42955, '2023-05-09 00:46:42.809000', '2023-05-09 00:46:42.809000', '2023-05-28 11:02:07.000000', NULL, NULL, 239, 192, NULL, 'Brightening, Trendy, Revitalizing', 'Vitamin C, Glycolic Acid, Aloe Vera', 'Apply to clean skin, leave for 10-15 minutes, then rinse off.', 'A trendy brightening mask that enhances skin radiance and smoothness.', 'trend, facemask, brightening, skincare'),
(145, 'Trendy Skin Serum', 'A serum packed with trending ingredients that brighten and hydrate the skin for a glowing complexion.', 99732, '2023-05-09 00:46:42.831000', '2023-05-09 00:46:42.831000', '2023-05-28 11:02:07.000000', NULL, NULL, 242, 136, NULL, 'Brightening, Trendy, Hydrating', 'Vitamin C, Hyaluronic Acid, Niacinamide', 'Apply to clean skin before moisturizing.', 'A trendy skin serum that brightens and hydrates for glowing skin.', 'trend, serum, brightening, skincare'),
(146, 'Trendy Hand Cream', 'A hand cream that has gained popularity for its nourishing and moisturizing properties, perfect for dry hands.', 84751, '2023-05-09 00:46:42.857000', '2023-05-09 00:46:42.857000', '2023-05-28 11:02:07.000000', NULL, NULL, 151, 52, NULL, 'Moisturizing, Trendy, Nourishing', 'Shea Butter, Almond Oil, Vitamin E', 'Apply generously to hands and massage until absorbed.', 'A trendy hand cream that moisturizes and softens your hands.', 'trend, handcare, moisturizing, skincare'),
(147, 'Trendy Eye Cream', 'An eye cream that has become a skincare must-have, reducing puffiness and dark circles while hydrating the delicate eye area.', 33405, '2023-05-09 00:46:42.882000', '2023-05-09 00:46:42.882000', '2023-05-28 11:02:07.000000', NULL, NULL, 204, 166, NULL, 'Hydrating, Trendy, Anti-puffiness', 'Caffeine, Vitamin K, Hyaluronic Acid', 'Gently tap a small amount around the eyes using your ring finger.', 'A trendy eye cream that revitalizes and hydrates the eye area.', 'trend, eyeCare, anti-puffiness, skincare'),
(148, 'Trendy Hair Growth Serum', 'A hair growth serum that follows the latest trends in haircare, promoting thicker, healthier hair.', 95501, '2023-05-09 00:46:42.909000', '2024-12-24 14:20:01.205000', '2023-05-28 11:02:07.000000', NULL, 1, 213, 71, 'In stock', 'Hair Growth, Trendy, Nourishing', 'Biotin, Caffeine, Castor Oil', 'Apply to the scalp and massage gently for better absorption.', 'A trendy hair growth serum that promotes thicker and healthier hair.', 'trend, haircare, growth, serum'),
(149, 'Trendy Skin Brightening Serum', 'A skin brightening serum that follows the latest skincare trends, helping to reduce dark spots and even out the skin tone.', 90731, '2023-05-09 00:46:42.931000', '2023-05-09 00:46:42.931000', '2023-05-28 11:02:07.000000', NULL, NULL, 181, 17, NULL, 'Brightening, Trendy, Even Skin Tone', 'Vitamin C, Niacinamide, Hyaluronic Acid', 'Apply a few drops to clean skin and massage until fully absorbed.', 'A trendy skin brightening serum for a glowing, even complexion.', 'trend, serum, brightening, skincare'),
(150, 'Trendy Eye Mask', 'A refreshing eye mask that targets puffiness and dark circles, following the latest trends in eye care.', 71039, '2023-05-09 00:46:42.993000', '2024-12-24 14:08:29.798000', '2023-05-28 11:02:07.000000', NULL, 1, 137, 140, 'In stock', 'Anti-puffiness, Trendy, Refreshing', 'Caffeine, Aloe Vera, Vitamin E', 'Apply to the under-eye area and leave on for 10-15 minutes.', 'A trendy eye mask that helps reduce puffiness and brighten the under-eye area.', 'trend, eyemask, anti-puffiness, skincare'),
(151, 'Trendy Facial Cleanser', 'A gentle facial cleanser that has become a must-have in the skincare routine, providing deep cleaning and refreshing the skin.', 38395, '2023-05-09 00:46:43.083000', '2023-05-09 00:46:43.083000', '2023-05-28 11:02:07.000000', NULL, NULL, 284, 100, NULL, 'Cleansing, Trendy, Refreshing', 'Aloe Vera, Green Tea Extract, Glycerin', 'Apply to damp skin, massage gently, and rinse with water.', 'A trendy facial cleanser that cleanses and refreshes your skin.', 'trend, cleanser, skincare, refreshing'),
(152, 'Trendy Lip Scrub', 'A lip scrub that follows the latest beauty trends, exfoliating and moisturizing your lips for a smooth and soft feel.', 38092, '2023-05-09 00:46:43.116000', '2023-05-09 00:46:43.116000', '2023-05-28 11:02:07.000000', NULL, NULL, 246, 34, NULL, 'Exfoliating, Trendy, Moisturizing', 'Sugar, Honey, Coconut Oil', 'Gently scrub on lips and rinse off for soft, smooth lips.', 'A trendy lip scrub that exfoliates and nourishes your lips.', 'trend, lipscrub, exfoliating, beauty'),
(153, 'Trendy Body Butter', 'A luxurious body butter that keeps your skin moisturized and smooth, following the latest skincare trends.', 36422, '2023-05-09 00:46:43.201000', '2023-05-09 00:46:43.201000', '2023-05-28 11:02:07.000000', NULL, NULL, 227, 134, NULL, 'Moisturizing, Trendy, Nourishing', 'Shea Butter, Cocoa Butter, Vitamin E', 'Apply generously to the body after a shower to lock in moisture.', 'A trendy body butter that hydrates and softens your skin.', 'trend, bodycare, moisturizing, skincare'),
(154, 'Trendy Hair Oil', 'A nourishing hair oil that has become a trend, providing shine and hydration to your hair.', 55081, '2023-05-09 00:46:43.268000', '2023-05-09 00:46:43.268000', '2023-05-28 11:02:07.000000', NULL, NULL, 188, 41, NULL, 'Shine-enhancing, Trendy, Hydrating', 'Argan Oil, Jojoba Oil, Vitamin E', 'Apply a small amount to damp hair, focusing on the ends.', 'A trendy hair oil that gives your hair a shiny, healthy look.', 'trend, haircare, oil, shiny'),
(155, 'Trendy Hydrating Mask', 'A hydrating mask that has become a trend, restoring moisture and revitalizing dry, tired skin.', 99870, '2023-05-09 00:46:43.317000', '2023-05-09 00:46:43.317000', '2023-05-28 11:02:07.000000', NULL, NULL, 239, 172, NULL, 'Hydrating, Trendy, Revitalizing', 'Hyaluronic Acid, Aloe Vera, Green Tea Extract', 'Apply a thick layer to clean skin, leave on for 10-15 minutes, then rinse off.', 'A trendy hydrating mask that replenishes your skin with moisture.', 'trend, facemask, hydrating, skincare'),
(156, 'Trendy Moisturizing Gel', 'A gel moisturizer that follows the latest trends, providing long-lasting hydration and a fresh feel.', 37639, '2023-05-09 00:46:43.352000', '2023-05-09 00:46:43.352000', '2023-05-28 11:02:07.000000', NULL, NULL, 140, 88, NULL, 'Hydrating, Trendy, Refreshing', 'Aloe Vera, Hyaluronic Acid, Glycerin', 'Apply to clean skin after cleansing for smooth, hydrated skin.', 'A trendy moisturizing gel that refreshes and hydrates your skin.', 'trend, moisturizer, hydrating, skincare'),
(157, 'Trendy Hand Mask', 'A hand mask that has become a trending product, rejuvenating and softening dry hands.', 98840, '2023-05-09 00:46:43.376000', '2023-05-09 00:46:43.376000', '2023-05-28 11:02:07.000000', NULL, NULL, 218, 126, NULL, 'Softening, Trendy, Rejuvenating', 'Shea Butter, Vitamin E, Olive Oil', 'Place the hand mask on your hands for 10-15 minutes for softer hands.', 'A trendy hand mask that nourishes and softens your hands.', 'trend, handcare, moisturizing, beauty'),
(158, 'Trendy Nourishing Cream', 'A nourishing cream that is part of the latest skincare trends, designed to hydrate and repair your skin.', 24878, '2023-05-09 00:46:43.401000', '2023-05-09 00:46:43.401000', '2023-05-28 11:02:07.000000', NULL, NULL, 176, 4, NULL, 'Nourishing, Trendy, Repairing', 'Vitamin E, Aloe Vera, Hyaluronic Acid', 'Apply to clean skin, especially areas that need extra moisture.', 'A trendy nourishing cream that repairs and hydrates your skin.', 'trend, nourishing, skincare, repair'),
(159, 'Trendy Anti-Wrinkle Serum', 'A serum that follows the latest trends in anti-aging, helping to reduce fine lines and wrinkles.', 35925, '2023-05-09 00:46:43.423000', '2024-12-30 18:03:43.769000', '2023-05-28 11:02:07.000000', NULL, 1, 290, 136, 'In stock', 'Anti-aging, Trendy, Firming', 'Retinol, Vitamin C, Hyaluronic Acid', 'Apply a small amount to the face and neck before moisturizing.', 'A trendy anti-wrinkle serum that firms and reduces fine lines.', 'trend, anti-aging, serum, skincare'),
(160, 'Trendy Hydrating Serum', 'A hydrating serum that follows the latest trends, helping to replenish moisture and boost skin hydration for a fresh look.', 26644, '2023-05-09 00:46:43.451000', '2023-05-09 00:46:43.451000', '2023-05-28 11:02:07.000000', NULL, NULL, 221, 184, NULL, 'Hydrating, Trendy, Refreshing', 'Hyaluronic Acid, Vitamin E, Glycerin', 'Apply a few drops to clean skin, massage gently to enhance absorption.', 'A trendy hydrating serum for glowing and refreshed skin.', 'trend, serum, hydrating, skincare'),
(161, 'Trendy Overnight Mask', 'An overnight mask that has become a skincare trend, designed to deeply hydrate and repair the skin while you sleep.', 43055, '2023-05-09 00:46:43.473000', '2024-12-24 14:13:47.213000', '2023-05-28 11:02:07.000000', NULL, 1, 255, 24, 'In stock', 'Hydrating, Trendy, Repairing', 'Aloe Vera, Vitamin C, Hyaluronic Acid', 'Apply a thick layer to face before bedtime, leave overnight, and rinse off in the morning.', 'A trendy overnight mask that hydrates and repairs your skin overnight.', 'trend, facemask, overnight, skincare'),
(162, 'Trendy Exfoliating Scrub', 'An exfoliating scrub that follows the latest trends, removing dead skin cells and leaving the skin smooth and bright.', 33813, '2023-05-09 00:46:43.509000', '2023-05-09 00:46:43.509000', '2023-05-28 11:02:07.000000', NULL, NULL, 153, 195, NULL, 'Exfoliating, Trendy, Smoothing', 'Sugar, Salt, Jojoba Oil', 'Massage into damp skin, then rinse thoroughly for smooth skin.', 'A trendy exfoliating scrub that smoothens and brightens your skin.', 'trend, scrub, exfoliating, skincare'),
(163, 'Trendy Anti-Aging Cream', 'An anti-aging cream that follows the latest skincare trends, helping to smooth fine lines and restore youthful skin.', 80391, '2023-05-09 00:46:43.559000', '2023-05-09 00:46:43.559000', '2023-05-28 11:02:07.000000', NULL, NULL, 115, 91, NULL, 'Anti-aging, Trendy, Firming', 'Retinol, Peptides, Vitamin E', 'Apply evenly to face and neck every evening before bed.', 'A trendy anti-aging cream for a youthful, firm complexion.', 'trend, anti-aging, firming, skincare'),
(164, 'Trendy Hair Mask', 'A nourishing hair mask that has gained popularity for its ability to restore hair health and shine, following the latest trends.', 46945, '2023-05-09 00:46:43.590000', '2023-05-09 00:46:43.590000', '2023-05-28 11:02:07.000000', NULL, NULL, 108, 169, NULL, 'Nourishing, Trendy, Restoring', 'Avocado Oil, Coconut Oil, Keratin', 'Apply generously to damp hair, leave on for 10-15 minutes, then rinse thoroughly.', 'A trendy hair mask that nourishes and restores hair vitality.', 'trend, haircare, nourishing, restoration'),
(165, 'Trendy Facial Toner', 'A facial toner that follows the latest skincare trends, balancing and prepping the skin for the next steps in your routine.', 32875, '2023-05-09 00:46:43.616000', '2023-05-09 00:46:43.616000', '2023-05-28 11:02:07.000000', NULL, NULL, 116, 179, NULL, 'Balancing, Trendy, Refreshing', 'Witch Hazel, Rose Water, Aloe Vera', 'Apply to a cotton pad and swipe across your face after cleansing.', 'A trendy facial toner that balances and refreshes your skin.', 'trend, toner, balancing, skincare'),
(166, 'Trendy Foot Cream', 'A foot cream that is trending for its ability to hydrate and soften dry, cracked feet.', 55625, '2023-05-09 00:46:43.649000', '2024-12-15 13:15:27.219000', '2023-05-28 11:02:07.000000', NULL, 1, 142, 78, NULL, 'Moisturizing, Trendy, Softening', 'Shea Butter, Peppermint Oil, Aloe Vera', 'Massage into feet and heels, focusing on dry areas.', 'A trendy foot cream that nourishes and softens your feet.', 'trend, footcare, moisturizing, skincare'),
(167, 'Trendy Lip Balm', 'A lip balm that follows the latest beauty trends, keeping lips soft and hydrated with natural ingredients.', 44475, '2023-05-09 00:46:43.675000', '2024-12-24 14:12:10.767000', '2023-05-28 11:02:07.000000', NULL, 1, 159, 63, 'In stock', 'Hydrating, Trendy, Softening', 'Beeswax, Shea Butter, Vitamin E', 'Apply to lips throughout the day for continuous hydration.', 'A trendy lip balm that nourishes and softens your lips.', 'trend, lips, moisturizing, beauty'),
(168, 'Trendy Shaving Cream', 'A shaving cream that follows the latest trends, giving a smooth, comfortable shave and reducing irritation.', 99636, '2023-05-09 00:46:43.710000', '2023-05-09 00:46:43.710000', '2023-05-28 11:02:07.000000', NULL, NULL, 238, 101, NULL, 'Shaving, Trendy, Irritation-free', 'Aloe Vera, Shea Butter, Coconut Oil', 'Apply to damp skin before shaving for a smooth, irritation-free shave.', 'A trendy shaving cream that ensures a comfortable shave.', 'trend, shaving, skincare, irritation-free'),
(169, 'Trendy Cleansing Oil', 'A cleansing oil that follows the latest beauty trends, effectively removing makeup and impurities while nourishing the skin.', 57855, '2023-05-09 00:46:43.733000', '2023-05-09 00:46:43.733000', '2023-05-28 11:02:07.000000', NULL, NULL, 190, 149, NULL, 'Cleansing, Trendy, Nourishing', 'Camellia Oil, Jojoba Oil, Vitamin E', 'Massage onto dry skin, then rinse with warm water.', 'A trendy cleansing oil that removes makeup and hydrates the skin.', 'trend, cleansing, makeupremoval, skincare'),
(170, 'Trendy Skin Revitalizing Serum', 'A revitalizing serum that follows the latest skincare trends, boosting skin health and vitality for a youthful glow.', 52715, '2023-05-09 00:46:43.765000', '2023-05-09 00:46:43.765000', '2023-05-28 11:02:07.000000', NULL, NULL, 172, 116, NULL, 'Revitalizing, Trendy, Glowing', 'Peptides, Vitamin C, Hyaluronic Acid', 'Apply a few drops to face and neck after cleansing.', 'A trendy revitalizing serum that restores glow and youthfulness.', 'trend, serum, revitalizing, skincare'),
(171, 'Trendy Vitamin C Serum', 'A Vitamin C serum that follows the latest skincare trends, helping to brighten and even out skin tone.', 89664, '2023-05-09 00:46:43.793000', '2023-05-09 00:46:43.793000', '2023-05-28 11:02:07.000000', NULL, NULL, 219, 128, NULL, 'Brightening, Trendy, Even Tone', 'Vitamin C, Hyaluronic Acid, Aloe Vera', 'Apply a few drops to clean skin, massage gently for best absorption.', 'A trendy Vitamin C serum that brightens and evens skin tone.', 'trend, vitaminC, brightening, skincare'),
(172, 'Trendy Daily Sunscreen', 'A daily sunscreen that follows the latest skincare trends, providing broad-spectrum protection while moisturizing the skin.', 65289, '2023-05-09 00:46:43.822000', '2023-05-09 00:46:43.822000', '2023-05-28 11:02:07.000000', NULL, NULL, 180, 20, NULL, 'Sun Protection, Trendy, Moisturizing', 'Zinc Oxide, Vitamin E, Aloe Vera', 'Apply generously to face and neck 15 minutes before sun exposure.', 'A trendy sunscreen that protects and moisturizes the skin.', 'trend, sunscreen, protection, skincare'),
(173, 'Trendy Hair Serum', 'A nourishing hair serum that follows the latest beauty trends, adding shine and smoothness to your hair.', 82097, '2023-05-09 00:46:43.868000', '2023-05-09 00:46:43.868000', '2023-05-28 11:02:07.000000', NULL, NULL, 155, 21, NULL, 'Shine-enhancing, Trendy, Smooth', 'Argan Oil, Jojoba Oil, Vitamin E', 'Apply a small amount to damp hair, focusing on the ends.', 'A trendy hair serum that gives your hair shine and smoothness.', 'trend, haircare, serum, shine'),
(174, 'Trendy Face Mask', 'A face mask that follows the latest skincare trends, helping to hydrate and refresh the skin in just 10 minutes.', 34778, '2023-05-09 00:46:43.891000', '2023-05-09 00:46:43.891000', '2023-05-28 11:02:07.000000', NULL, NULL, 234, 7, NULL, 'Hydrating, Trendy, Refreshing', 'Green Tea Extract, Aloe Vera, Vitamin C', 'Apply evenly to face, leave for 10-15 minutes, and rinse off.', 'A trendy face mask that hydrates and refreshes your skin.', 'trend, facemask, hydrating, skincare'),
(175, 'Trendy Makeup Remover', 'A makeup remover that follows the latest beauty trends, gently removing makeup while hydrating the skin.', 39852, '2023-05-09 00:46:43.915000', '2023-05-09 00:46:43.915000', '2023-05-28 11:02:07.000000', NULL, NULL, 132, 143, NULL, 'Makeup Removal, Trendy, Hydrating', 'Chamomile Extract, Aloe Vera, Vitamin E', 'Apply to a cotton pad and gently wipe across the face to remove makeup.', 'A trendy makeup remover that gently removes makeup and hydrates your skin.', 'trend, makeupremoval, skincare, gentle'),
(176, 'Trendy Deep Cleansing Gel', 'A deep cleansing gel that follows the latest skincare trends, providing a thorough cleanse without stripping the skin.', 47404, '2023-05-09 00:46:43.939000', '2023-05-09 00:46:43.939000', '2023-05-28 11:02:07.000000', NULL, NULL, 114, 47, NULL, 'Cleansing, Trendy, Deep Clean', 'Tea Tree Oil, Salicylic Acid, Glycerin', 'Massage onto damp skin, then rinse off for a fresh, clean face.', 'A trendy deep cleansing gel for a fresh and clean complexion.', 'trend, cleanser, deepclean, skincare'),
(177, 'Trendy Brightening Cream', 'A brightening cream that follows the latest trends in skincare, helping to lighten dark spots and even out skin tone.', 64059, '2023-05-09 00:46:43.966000', '2023-05-09 00:46:43.966000', '2023-05-28 11:02:07.000000', NULL, NULL, 288, 1, NULL, 'Brightening, Trendy, Even Skin Tone', 'Niacinamide, Vitamin C, Licorice Extract', 'Apply to face and neck after cleansing, morning and night.', 'A trendy brightening cream for an even and luminous skin tone.', 'trend, brightening, skincare, even tone'),
(178, 'Trendy Body Scrub', 'A body scrub that follows the latest beauty trends, exfoliating the skin to reveal smooth, soft skin.', 46204, '2023-05-09 00:46:43.989000', '2024-12-24 13:38:22.998000', '2023-05-28 11:02:07.000000', NULL, 1, 138, 192, 'In stock', 'Exfoliating, Trendy, Softening', 'Sugar, Coconut Oil, Sea Salt', 'Massage onto damp skin in circular motions, then rinse off for smooth, soft skin.', 'A trendy body scrub that exfoliates and softens your skin.', 'trend, bodycare, exfoliating, skincare'),
(179, 'Trendy Nourishing Oil', 'A nourishing oil that follows the latest trends in skincare, adding hydration and glow to the skin.', 48126, '2023-05-09 00:46:44.015000', '2023-05-09 00:46:44.015000', '2023-05-28 11:02:07.000000', NULL, NULL, 141, 34, NULL, 'Nourishing, Trendy, Hydrating', 'Argan Oil, Jojoba Oil, Vitamin E', 'Apply a few drops to face and neck after cleansing.', 'A trendy nourishing oil that hydrates and gives your skin a natural glow.', 'trend, nourishing, skincare, hydrating'),
(180, 'Trendy Cooling Gel', 'A cooling gel that follows the latest skincare trends, providing instant relief and hydration to irritated or tired skin.', 67136, '2023-05-09 00:46:44.041000', '2023-05-09 00:46:44.041000', '2023-05-28 11:02:07.000000', NULL, NULL, 144, 119, NULL, 'Cooling, Trendy, Soothing', 'Cucumber Extract, Aloe Vera, Menthol', 'Apply a thin layer to face or body, and let it cool for an instant soothing effect.', 'A trendy cooling gel that soothes and hydrates the skin.', 'trend, cooling, skincare, soothing'),
(181, 'Trendy Facial Mist', 'A refreshing facial mist that follows the latest beauty trends, giving your skin a boost of hydration and freshness.', 44401, '2023-05-09 00:46:44.065000', '2023-05-09 00:46:44.065000', '2023-05-28 11:02:07.000000', NULL, NULL, 162, 153, NULL, 'Hydrating, Trendy, Refreshing', 'Rose Water, Aloe Vera, Vitamin C', 'Spray on the face throughout the day for a quick hydration boost.', 'A trendy facial mist that refreshes and hydrates your skin.', 'trend, facialmist, hydrating, skincare'),
(182, 'Trendy Hydrating Mist', 'A refreshing hydrating mist that follows the latest beauty trends, providing instant hydration and a dewy glow.', 44937, '2023-05-09 00:46:44.088000', '2024-12-24 14:11:46.527000', '2023-05-28 11:02:07.000000', NULL, 1, 151, 88, 'In stock', 'Hydrating, Trendy, Dewy Glow', 'Aloe Vera, Rose Water, Hyaluronic Acid', 'Spray onto face whenever you need a hydration boost or refreshment.', 'A trendy hydrating mist that gives your skin a dewy and fresh glow.', 'trend, hydrating, skincare, dewy'),
(183, 'Trendy Nourishing Balm', 'A nourishing balm that follows the latest skincare trends, providing intense moisture and soothing dry skin.', 45474, '2023-05-09 00:46:44.116000', '2023-05-09 00:46:44.116000', '2023-05-28 11:02:07.000000', NULL, NULL, 185, 161, NULL, 'Nourishing, Trendy, Soothing', 'Shea Butter, Coconut Oil, Vitamin E', 'Apply to dry areas and massage until absorbed.', 'A trendy nourishing balm that deeply soothes and hydrates the skin.', 'trend, nourishing, balm, skincare'),
(184, 'Trendy Facial Oil', 'A facial oil that follows the latest beauty trends, leaving your skin soft, glowing, and well-hydrated.', 70548, '2023-05-09 00:46:44.227000', '2023-05-09 00:46:44.227000', '2023-05-28 11:02:07.000000', NULL, NULL, 249, 61, NULL, 'Moisturizing, Trendy, Glowing', 'Rosehip Oil, Jojoba Oil, Vitamin E', 'Massage a few drops onto clean skin every evening.', 'A trendy facial oil for a soft, radiant, and nourished complexion.', 'trend, facialoil, glowing, skincare'),
(185, 'Trendy Eye Cream', 'An eye cream that follows the latest skincare trends, helping to reduce puffiness, dark circles, and fine lines around the eyes.', 98846, '2023-05-09 00:46:44.270000', '2023-05-09 00:46:44.270000', '2023-05-28 11:02:07.000000', NULL, NULL, 159, 114, NULL, 'Anti-aging, Trendy, Brightening', 'Caffeine, Retinol, Hyaluronic Acid', 'Apply gently to the under-eye area every morning and evening.', 'A trendy eye cream that brightens and firms the delicate eye area.', 'trend, eyecream, anti-aging, skincare'),
(186, 'Trendy Lip Scrub', 'A lip scrub that follows the latest beauty trends, exfoliating dry lips and leaving them soft and smooth.', 22042, '2023-05-09 00:46:44.296000', '2023-05-09 00:46:44.296000', '2023-05-28 11:02:07.000000', NULL, NULL, 289, 5, NULL, 'Exfoliating, Trendy, Softening', 'Sugar, Honey, Vitamin E', 'Massage onto lips in circular motions, then wipe away the scrub with a tissue.', 'A trendy lip scrub that exfoliates and softens your lips.', 'trend, lipscrub, exfoliating, beauty'),
(187, 'Trendy Hair Mask', 'A hair mask that follows the latest beauty trends, restoring moisture and repairing damage for healthier, shinier hair.', 21910, '2023-05-09 00:46:44.327000', '2024-12-24 14:30:05.379000', '2023-05-28 11:02:07.000000', NULL, 1, 154, 59, 'In stock', 'Repairing, Trendy, Moisturizing', 'Coconut Oil, Argan Oil, Keratin', 'Apply generously to damp hair, leave for 10-15 minutes, then rinse thoroughly.', 'A trendy hair mask that nourishes and repairs damaged hair.', 'trend, hairmask, repairing, haircare'),
(188, 'Trendy Cleansing Balm', 'A cleansing balm that follows the latest trends, gently removing makeup and impurities while nourishing the skin.', 58191, '2023-05-09 00:46:44.353000', '2024-12-24 15:36:52.286000', '2023-05-28 11:02:07.000000', NULL, 1, 230, 75, 'In stock', 'Makeup Removal, Trendy, Nourishing', 'Coconut Oil, Vitamin E, Shea Butter', 'Massage onto dry skin to break down makeup, then rinse with warm water.', 'A trendy cleansing balm that effectively removes makeup and hydrates the skin.', 'trend, cleansing, makeupremoval, skincare'),
(189, 'Trendy Brightening Serum', 'A brightening serum that follows the latest trends, reducing dark spots and improving skin radiance for a glowing complexion.', 36419, '2023-05-09 00:46:44.388000', '2023-05-09 00:46:44.388000', '2023-05-28 11:02:07.000000', NULL, NULL, 282, 86, NULL, 'Brightening, Trendy, Radiance-boosting', 'Vitamin C, Niacinamide, Alpha Arbutin', 'Apply a few drops to clean skin morning and night.', 'A trendy brightening serum for an even, radiant complexion.', 'trend, serum, brightening, skincare'),
(190, 'Trendy Soothing Gel', 'A soothing gel that follows the latest trends, providing immediate relief to irritated skin and calming redness.', 53685, '2023-05-09 00:46:44.419000', '2023-05-09 00:46:44.419000', '2023-05-28 11:02:07.000000', NULL, NULL, 183, 159, NULL, 'Soothing, Trendy, Redness-reducing', 'Aloe Vera, Cucumber Extract, Chamomile Extract', 'Apply to affected areas for instant relief and hydration.', 'A trendy soothing gel that calms and hydrates irritated skin.', 'trend, soothing, skincare, calming'),
(191, 'Trendy Repairing Cream', 'A repairing cream that follows the latest skincare trends, helping to restore and strengthen damaged skin.', 68264, '2023-05-09 00:46:44.441000', '2024-12-24 13:40:51.521000', '2023-05-28 11:02:07.000000', NULL, 1, 242, 34, 'In stock', 'Repairing, Trendy, Strengthening', 'Ceramides, Peptides, Vitamin E', 'Apply evenly to face and neck after cleansing.', 'A trendy repairing cream that helps restore and strengthen skin.', 'trend, repairing, skincare, strengthening'),
(192, 'Trendy Anti-Stress Mask', 'An anti-stress mask that follows the latest trends, relaxing and hydrating your skin for a refreshed look.', 49007, '2023-05-09 00:46:44.502000', '2024-12-24 13:41:35.548000', '2023-05-28 11:02:07.000000', NULL, 1, 242, 10, 'In stock', 'Relaxing, Trendy, Hydrating', 'Lavender, Chamomile, Hyaluronic Acid', 'Apply a thin layer to clean skin, leave on for 10-15 minutes, then rinse off.', 'A trendy anti-stress mask that calms and hydrates the skin.', 'trend, facemask, anti-stress, skincare'),
(193, 'Trendy Detoxifying Serum', 'A detoxifying serum that follows the latest skincare trends, purifying and revitalizing your skin for a clear complexion.', 46920, '2023-05-09 00:46:44.624000', '2024-12-30 22:29:16.692000', '2023-05-28 11:02:07.000000', NULL, 1, 298, 161, NULL, 'Detoxifying, Trendy, Clarifying', 'Charcoal, Green Tea Extract, Vitamin C', 'Apply a few drops to clean skin, then follow with moisturizer.', 'A trendy detoxifying serum that helps purify and brighten your skin.', 'trend, detoxifying, skincare, purifying'),
(194, 'Trendy Brightening Cream', 'A brightening cream that follows the latest beauty trends, reducing dark spots and improving skin radiance.', 23089, '2023-05-09 00:46:44.676000', '2023-05-09 00:46:44.676000', '2023-05-28 11:02:07.000000', NULL, NULL, 108, 164, NULL, 'Brightening, Trendy, Radiance-boosting', 'Vitamin C, Niacinamide, Hyaluronic Acid', 'Apply evenly to face every morning.', 'A trendy brightening cream that restores your natural glow.', 'trend, brightening, skincare, radiance'),
(195, 'Trendy Rejuvenating Mask', 'A rejuvenating mask that follows the latest skincare trends, promoting cell renewal and restoring youthful skin.', 39848, '2023-05-09 00:46:44.724000', '2024-12-24 14:20:29.635000', '2023-05-28 11:02:07.000000', NULL, 1, 291, 63, 'In stock', 'Rejuvenating, Trendy, Anti-aging', 'Retinol, Peptides, Vitamin A', 'Apply to clean skin for 10-15 minutes, then rinse off.', 'A trendy rejuvenating mask for youthful and glowing skin.', 'trend, rejuvenating, anti-aging, skincare'),
(196, 'Trendy Hydration Gel', 'A hydrating gel that follows the latest beauty trends, providing deep hydration for plump and smooth skin.', 89129, '2023-05-09 00:46:44.749000', '2023-05-09 00:46:44.749000', '2023-05-28 11:02:07.000000', NULL, NULL, 241, 117, NULL, 'Hydrating, Trendy, Plumping', 'Hyaluronic Acid, Aloe Vera, Glycerin', 'Apply generously to clean face and neck.', 'A trendy hydration gel for smooth and plump skin.', 'trend, hydration, skincare, plumping'),
(197, 'Trendy Firming Lotion', 'A firming lotion that follows the latest trends, tightening and lifting the skin for a more youthful appearance.', 20434, '2023-05-09 00:46:44.775000', '2024-12-24 13:43:44.916000', '2023-05-28 11:02:07.000000', NULL, 1, 259, 46, 'In stock', 'Firming, Trendy, Lifting', 'Collagen, Elastin, Vitamin C', 'Massage into skin in upward motions every morning and evening.', 'A trendy firming lotion for a lifted and youthful complexion.', 'trend, firming, skincare, lifting'),
(198, 'Trendy Exfoliating Scrub', 'An exfoliating scrub that follows the latest beauty trends, removing dead skin cells for a smooth and radiant complexion.', 46451, '2023-05-09 00:46:44.800000', '2023-05-09 00:46:44.800000', '2023-05-28 11:02:07.000000', NULL, NULL, 252, 23, NULL, 'Exfoliating, Trendy, Radiance-boosting', 'Sugar, Sea Salt, Almond Oil', 'Gently massage onto wet skin in circular motions, then rinse off.', 'A trendy exfoliating scrub for glowing and smooth skin.', 'trend, exfoliating, skincare, radiant');
INSERT INTO `products` (`id`, `product_name`, `description`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `view`, `sold`, `status`, `feature`, `ingredient`, `instruction`, `summary`, `tag`) VALUES
(199, 'Trendy Calming Serum', 'A calming serum that follows the latest trends, soothing irritated skin and reducing redness for a calm complexion.', 86810, '2023-05-09 00:46:44.824000', '2023-05-09 00:46:44.824000', '2023-05-28 11:02:07.000000', NULL, NULL, 157, 17, NULL, 'Calming, Trendy, Redness-reducing', 'Chamomile Extract, Aloe Vera, Green Tea', 'Apply a few drops to affected areas and gently massage.', 'A trendy calming serum for soothing and reducing redness.', 'trend, calming, skincare, redness'),
(200, 'Trendy SPF Shield', 'A sunscreen that follows the latest trends, providing high SPF protection while keeping your skin hydrated and fresh.', 50000, '2023-05-09 15:49:32.031000', '2023-05-09 15:49:32.031000', '2023-05-28 11:02:07.000000', NULL, NULL, 212, 109, NULL, 'SPF Protection, Trendy, Hydrating', 'Zinc Oxide, Aloe Vera, Vitamin E', 'Apply generously to face and neck every morning.', 'A trendy sunscreen that provides ultimate SPF protection and hydration.', 'trend, sunscreen, SPF, skincare'),
(201, 'Trendy Night Cream', 'A night cream that follows the latest trends, deeply moisturizing and rejuvenating your skin as you sleep.', 50000, '2023-05-09 15:50:28.621000', '2023-05-09 15:50:28.621000', '2023-05-28 11:02:07.000000', NULL, NULL, 108, 117, NULL, 'Moisturizing, Trendy, Rejuvenating', 'Retinol, Hyaluronic Acid, Vitamin E', 'Apply a generous layer before bed and leave overnight.', 'A trendy night cream for rejuvenated and hydrated skin.', 'trend, nightcream, moisturizing, skincare'),
(202, 'Trendy Mask for Oily Skin', 'A mask that follows the latest beauty trends, designed specifically for oily skin, controlling excess sebum and preventing breakouts.', 50000, '2023-05-09 15:53:44.253000', '2023-05-09 15:53:44.253000', '2023-05-28 11:02:07.000000', NULL, NULL, 259, 45, NULL, 'Mattifying, Trendy, Acne-fighting', 'Clay, Tea Tree Oil, Witch Hazel', 'Apply to clean skin and leave on for 10-15 minutes, then rinse off.', 'A trendy mask for oily skin that fights acne and controls shine.', 'trend, oily skin, mask, acne'),
(203, 'Hydrating Face Serum', 'A nourishing serum that deeply hydrates and replenishes your skin for a healthy, glowing complexion.', 50000, '2023-05-09 16:20:20.543000', '2023-05-09 16:20:20.543000', '2023-05-28 11:02:07.000000', NULL, NULL, 138, 35, NULL, 'Hydrating, Nourishing, Glowing', 'Hyaluronic Acid, Vitamin C, Glycerin', 'Apply a few drops to the face and neck after cleansing, gently massage until absorbed.', 'A deeply hydrating serum for a glowing and refreshed complexion.', 'hydrating, serum, skincare, glowing'),
(204, 'Nourishing Hair Oil', 'A nourishing hair oil that helps repair and hydrate dry, damaged hair, leaving it soft and shiny.', 50000, '2023-05-09 16:21:12.957000', '2023-05-09 16:21:12.957000', '2023-05-28 11:02:07.000000', NULL, NULL, 158, 188, NULL, 'Nourishing, Repairing, Shiny', 'Argan Oil, Jojoba Oil, Vitamin E', 'Apply a small amount to damp or dry hair, focusing on the ends.', 'A nourishing hair oil that restores moisture and shine to your hair.', 'haircare, oil, nourishing, shine'),
(205, 'Anti-Aging Night Cream', 'A rich night cream that works overnight to reduce the appearance of fine lines and wrinkles, leaving skin rejuvenated and firm.', 50000, '2023-05-09 16:23:06.499000', '2023-05-09 16:23:06.499000', '2023-05-28 11:02:07.000000', NULL, NULL, 261, 43, NULL, 'Anti-aging, Firming, Rejuvenating', 'Retinol, Peptides, Collagen', 'Apply evenly to face and neck before bedtime.', 'A restorative night cream for firmer, younger-looking skin.', 'anti-aging, nightcream, firming, skincare'),
(206, 'Soothing Aloe Gel', 'A soothing gel made with aloe vera that calms irritated skin, reduces redness, and provides a cooling effect.', 22000, '2023-05-30 10:16:57.390000', '2023-05-30 10:16:57.390000', '2023-05-30 10:16:57.357000', NULL, NULL, 231, 129, NULL, 'Soothing, Cooling, Redness-reducing', 'Aloe Vera, Vitamin E, Cucumber Extract', 'Apply generously to affected areas, massage gently until absorbed.', 'A calming aloe gel to reduce redness and irritation.', 'soothing, skincare, cooling, aloe'),
(207, 'Exfoliating Scrub', 'An exfoliating scrub that removes dead skin cells, leaving your skin smooth, radiant, and refreshed.', 50000, '2023-05-30 10:39:56.293000', '2023-05-30 10:39:56.293000', '2023-05-30 10:39:56.087000', NULL, NULL, 146, 48, NULL, 'Exfoliating, Radiance-boosting, Smooth', 'Sugar, Coffee Extract, Almond Oil', 'Massage gently onto damp skin in circular motions, then rinse off.', 'An exfoliating scrub for smooth and radiant skin.', 'exfoliating, scrub, skincare, smooth'),
(208, 'Clarifying Face Mask', 'A deep-cleansing face mask that detoxifies and clarifies the skin, removing impurities and leaving a fresh complexion.', 60000, '2023-05-30 10:43:09.269000', '2023-05-30 10:43:09.269000', '2023-05-30 10:43:09.108000', NULL, NULL, 200, 156, NULL, 'Detoxifying, Clarifying, Purifying', 'Charcoal, Clay, Green Tea Extract', 'Apply an even layer to clean skin, leave on for 10-15 minutes, then rinse off with warm water.', 'A purifying mask that clears impurities and refreshes the skin.', 'mask, clarifying, skincare, detoxifying'),
(209, 'Hydrating Face Cream', 'A rich face cream that hydrates and nourishes the skin, keeping it soft and smooth all day long.', 70, '2023-05-30 10:43:51.605000', '2023-05-30 10:43:51.605000', '2023-05-30 10:43:51.472000', NULL, NULL, 178, 123, NULL, 'Hydrating, Nourishing, Moisturizing', 'Glycerin, Aloe Vera, Vitamin E', 'Apply generously to face and neck every morning and evening.', 'A moisturizing face cream for hydrated and smooth skin.', 'moisturizing, skincare, facecream, hydrating'),
(210, 'Gentle Cleanser', 'A gentle cleanser that removes dirt, oil, and makeup without stripping the skin of its natural moisture.', 100000, '2023-05-30 10:49:21.521000', '2023-05-30 10:49:21.521000', '2023-05-30 10:49:21.508000', NULL, NULL, 281, 134, NULL, 'Gentle, Cleansing, Hydrating', 'Aloe Vera, Chamomile, Cucumber Extract', 'Apply to damp skin, massage gently, and rinse with lukewarm water.', 'A gentle cleanser for a clean, hydrated complexion.', 'cleanser, skincare, gentle, hydrating'),
(211, 'Firming Eye Cream', 'A firming eye cream that reduces the appearance of puffiness, dark circles, and fine lines, leaving your eye area refreshed and youthful.', 50000, '2023-05-30 17:55:05.112000', '2023-05-30 17:55:05.112000', '2023-05-30 17:55:04.942000', NULL, NULL, 227, 34, NULL, 'Firming, Brightening, Anti-puffiness', 'Caffeine, Retinol, Vitamin K', 'Apply gently around the eye area using your ring finger.', 'A firming eye cream for youthful and refreshed eyes.', 'eyecream, skincare, firming, brightening'),
(212, 'Nourishing Lip Balm', 'A nourishing lip balm that hydrates and repairs dry, chapped lips, leaving them soft and smooth.', 100000, '2023-05-30 17:58:56.730000', '2024-12-15 13:13:45.834000', '2023-05-30 17:58:56.680000', NULL, 1, 289, 41, NULL, 'Nourishing, Hydrating, Repairing', 'Shea Butter, Coconut Oil, Vitamin E', 'Apply generously to lips whenever needed.', 'A hydrating lip balm for smooth and soft lips.', 'lipbalm, skincare, nourishing, hydrating'),
(213, 'Calming Face Mist', 'A calming face mist that refreshes and soothes the skin, providing instant hydration and a cooling sensation.', 10000, '2023-05-30 18:20:36.873000', '2023-05-30 18:20:36.873000', '2023-05-30 18:20:36.049000', NULL, NULL, 137, 64, NULL, 'Soothing, Hydrating, Refreshing', 'Rose Water, Aloe Vera, Lavender Extract', 'Spray onto face throughout the day to refresh and hydrate.', 'A soothing mist for instant hydration and relaxation.', 'facemist, skincare, soothing, refreshing'),
(214, 'Moisturizing Face Oil', 'A nourishing face oil that hydrates and softens the skin, leaving it smooth and glowing.', 150000, '2023-05-30 18:29:03.444000', '2024-12-15 13:13:29.618000', '2023-05-30 18:29:03.200000', NULL, 1, 137, 80, NULL, 'Moisturizing, Nourishing, Glowing', 'Jojoba Oil, Argan Oil, Vitamin E', 'Apply a few drops to your face and neck, gently massage until absorbed.', 'A hydrating face oil for smooth, nourished, and glowing skin.', 'moisturizing, faceoil, skincare, glowing'),
(215, 'Hydrating Sheet Mask', 'A hydrating sheet mask that deeply nourishes and replenishes the skin, providing intense moisture and a radiant glow.', 200000, '2023-05-30 18:57:46.894000', '2023-05-30 18:57:46.894000', '2023-05-30 18:57:46.086000', NULL, NULL, 186, 190, NULL, 'Hydrating, Nourishing, Radiant', 'Hyaluronic Acid, Vitamin C, Aloe Vera', 'Place the mask on your face for 15-20 minutes, remove, and massage in the remaining essence.', 'A hydrating sheet mask for a glowing and refreshed complexion.', 'sheetmask, skincare, hydrating, glow'),
(216, 'Refreshing Eye Gel', 'A refreshing eye gel that cools and soothes tired eyes, reducing puffiness and dark circles for a refreshed look.', 123, '2023-06-03 15:20:49.791000', '2023-06-03 15:20:49.791000', '2023-06-03 15:20:49.435000', NULL, NULL, 190, 83, NULL, 'Soothing, Refreshing, Anti-puffiness', 'Caffeine, Aloe Vera, Cucumber Extract', 'Gently apply a small amount to the under-eye area using your ring finger.', 'A cooling eye gel to reduce puffiness and refresh tired eyes.', 'eyegel, skincare, soothing, refreshing'),
(217, 'Nourishing Hand Cream', 'A rich hand cream that deeply nourishes and softens dry hands, leaving them smooth and moisturized.', 123444, '2023-06-03 15:22:03.667000', '2023-06-03 15:22:03.667000', '2023-06-03 15:22:03.647000', NULL, NULL, 243, 68, NULL, 'Nourishing, Moisturizing, Softening', 'Shea Butter, Almond Oil, Vitamin E', 'Massage into hands as needed, focusing on dry areas.', 'A nourishing hand cream to keep your hands soft and hydrated.', 'handcream, skincare, nourishing, moisturizing'),
(218, 'Cleansing Face Oil', 'A gentle cleansing oil that removes makeup and impurities, leaving your skin soft and clean without stripping moisture.', 1000, '2023-06-04 21:54:31.190000', '2023-06-04 21:54:31.190000', '2023-06-04 21:54:31.173000', NULL, NULL, 207, 134, NULL, 'Cleansing, Gentle, Hydrating', 'Camellia Oil, Jojoba Oil, Vitamin E', 'Massage onto dry skin and rinse with warm water.', 'A gentle cleansing oil that effectively removes makeup and impurities.', 'cleansing, faceoil, skincare, hydrating'),
(219, 'Brightening Vitamin C Serum', 'A brightening serum infused with Vitamin C that helps even out skin tone and reduce dark spots for a radiant complexion.', 1000, '2024-12-15 12:51:17.006000', '2024-12-15 13:13:08.822000', '2024-12-15 12:51:16.997000', NULL, 1, 247, 134, NULL, 'Brightening, Even-toned, Radiant', 'Vitamin C, Hyaluronic Acid, Niacinamide', 'Apply a few drops to clean skin before moisturizer.', 'A brightening serum for an even and radiant complexion.', 'vitaminC, serum, skincare, brightening');

-- --------------------------------------------------------

--
-- Table structure for table `products_brand_links`
--

CREATE TABLE `products_brand_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `brand_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products_brand_links`
--

INSERT INTO `products_brand_links` (`id`, `product_id`, `brand_id`) VALUES
(21, 8, 2),
(29, 10, 2),
(34, 17, 2),
(54, 23, 3),
(55, 34, 2),
(38, 46, 3),
(41, 48, 2),
(27, 50, 2),
(47, 51, 4),
(30, 53, 2),
(5, 57, 3),
(31, 64, 2),
(11, 65, 2),
(25, 66, 4),
(59, 67, 3),
(63, 70, 2),
(44, 75, 1),
(33, 76, 2),
(56, 81, 4),
(42, 83, 4),
(35, 85, 2),
(26, 87, 2),
(20, 89, 3),
(61, 93, 2),
(4, 97, 2),
(50, 99, 2),
(51, 100, 2),
(23, 108, 2),
(39, 109, 2),
(43, 111, 2),
(13, 120, 2),
(48, 121, 4),
(19, 122, 2),
(62, 123, 3),
(15, 128, 3),
(18, 129, 1),
(40, 139, 2),
(52, 148, 2),
(37, 150, 2),
(14, 159, 2),
(49, 161, 2),
(9, 166, 2),
(46, 167, 2),
(17, 178, 4),
(45, 182, 4),
(60, 187, 3),
(64, 188, 2),
(22, 191, 2),
(24, 192, 2),
(8, 193, 4),
(53, 195, 2),
(28, 197, 2),
(3, 212, 4),
(2, 214, 2),
(1, 219, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_category_links`
--

CREATE TABLE `products_category_links` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products_category_links`
--

INSERT INTO `products_category_links` (`id`, `product_id`, `category_id`) VALUES
(335, 8, 3),
(340, 10, 3),
(111, 11, 3),
(320, 14, 4),
(115, 15, 3),
(343, 17, 3),
(18, 18, 4),
(363, 23, 14),
(131, 31, 4),
(32, 32, 4),
(133, 33, 3),
(364, 34, 3),
(35, 35, 14),
(139, 39, 3),
(140, 40, 3),
(45, 45, 14),
(348, 46, 14),
(147, 47, 3),
(350, 48, 3),
(149, 49, 4),
(150, 50, 4),
(356, 51, 3),
(153, 53, 3),
(154, 54, 3),
(156, 56, 3),
(59, 59, 4),
(163, 63, 4),
(341, 64, 3),
(327, 65, 7),
(337, 66, 3),
(368, 67, 7),
(170, 70, 3),
(353, 75, 4),
(342, 76, 14),
(180, 80, 4),
(365, 81, 14),
(351, 83, 14),
(84, 84, 4),
(344, 85, 3),
(186, 86, 3),
(338, 87, 3),
(88, 88, 3),
(331, 89, 14),
(369, 93, 3),
(94, 94, 4),
(195, 95, 3),
(334, 97, 3),
(359, 99, 3),
(360, 100, 3),
(198, 103, 3),
(199, 104, 4),
(201, 106, 3),
(202, 107, 3),
(336, 108, 4),
(204, 109, 3),
(205, 110, 3),
(352, 111, 4),
(207, 112, 4),
(208, 113, 3),
(214, 119, 3),
(328, 120, 7),
(357, 121, 3),
(217, 122, 3),
(218, 123, 3),
(220, 125, 3),
(221, 126, 3),
(330, 128, 3),
(333, 129, 3),
(225, 130, 3),
(229, 134, 3),
(230, 135, 3),
(232, 137, 3),
(233, 138, 3),
(349, 139, 3),
(236, 141, 3),
(361, 148, 3),
(347, 150, 3),
(248, 153, 3),
(251, 156, 4),
(329, 159, 3),
(358, 161, 3),
(259, 164, 4),
(261, 166, 3),
(355, 167, 3),
(264, 169, 4),
(265, 170, 4),
(267, 172, 3),
(268, 173, 3),
(269, 174, 4),
(271, 176, 4),
(332, 178, 14),
(274, 179, 4),
(276, 181, 4),
(354, 182, 3),
(279, 184, 3),
(280, 185, 4),
(366, 187, 3),
(371, 188, 14),
(286, 191, 4),
(287, 192, 3),
(288, 193, 3),
(289, 194, 4),
(362, 195, 3),
(291, 196, 3),
(339, 197, 3),
(294, 199, 3),
(304, 208, 7),
(307, 211, 14),
(324, 212, 3),
(323, 214, 14);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `access_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(7, 'tokenApp', '', 'custom', '71b3e3aae919801e4416031c615ff826ded9e668eb965e74e8b7e27217e71cd82659bd3a4daec2af7c1c77c4da83db68bfc3e38b97ea9b3257d51bdc96c295c5', '2024-03-15 07:57:05.810000', NULL, NULL, '2024-03-15 07:49:54.764000', '2024-12-30 21:33:10.317000', NULL, NULL),
(8, 'chophepPOST-UPDATE-DELETE-UPLOAD', '', 'custom', 'a8b5f734d7e8326e68725d5ebe25ca62b5e4ad8039d8b7f83e398e8b06a2d54bd567f327a6493af4ccfb831f90bb887a36d5dbc2c66be1e70bec305ca62452c2', '2024-12-30 08:48:22.891000', NULL, NULL, '2024-12-15 12:37:59.258000', '2024-12-30 10:34:28.246000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_api_token_permissions`
--

INSERT INTO `strapi_api_token_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'api::category.category.find', '2023-05-09 10:09:21.616000', '2023-05-09 10:09:21.616000', NULL, NULL),
(2, 'api::category.category.findOne', '2023-05-09 10:09:21.616000', '2023-05-09 10:09:21.616000', NULL, NULL),
(3, 'api::product.product.create', '2023-05-09 10:09:21.616000', '2023-05-09 10:09:21.616000', NULL, NULL),
(4, 'api::product.product.delete', '2023-05-09 10:09:21.616000', '2023-05-09 10:09:21.616000', NULL, NULL),
(5, 'api::product.product.findOne', '2023-05-09 10:09:21.616000', '2023-05-09 10:09:21.616000', NULL, NULL),
(6, 'api::product.product.update', '2023-05-09 10:09:21.616000', '2023-05-09 10:09:21.616000', NULL, NULL),
(7, 'api::product.product.find', '2023-05-09 10:09:21.616000', '2023-05-09 10:09:21.616000', NULL, NULL),
(14, 'api::product.product.delete', '2023-05-09 10:29:19.009000', '2023-05-09 10:29:19.009000', NULL, NULL),
(18, 'api::product.product.findOne', '2023-05-22 10:56:07.553000', '2023-05-22 10:56:07.553000', NULL, NULL),
(19, 'api::category.category.find', '2023-05-30 15:48:27.996000', '2023-05-30 15:48:27.996000', NULL, NULL),
(20, 'api::category.category.findOne', '2023-05-30 15:48:27.996000', '2023-05-30 15:48:27.996000', NULL, NULL),
(21, 'api::category.category.create', '2023-05-30 15:48:27.997000', '2023-05-30 15:48:27.997000', NULL, NULL),
(22, 'api::category.category.delete', '2023-05-30 15:48:27.997000', '2023-05-30 15:48:27.997000', NULL, NULL),
(23, 'api::category.category.update', '2023-05-30 15:48:27.997000', '2023-05-30 15:48:27.997000', NULL, NULL),
(24, 'api::product.product.find', '2023-05-30 15:48:27.997000', '2023-05-30 15:48:27.997000', NULL, NULL),
(25, 'api::product.product.create', '2023-05-30 15:48:27.997000', '2023-05-30 15:48:27.997000', NULL, NULL),
(26, 'plugin::upload.content-api.upload', '2023-05-30 15:48:27.997000', '2023-05-30 15:48:27.997000', NULL, NULL),
(27, 'api::product.product.update', '2023-05-30 15:48:27.997000', '2023-05-30 15:48:27.997000', NULL, NULL),
(28, 'plugin::upload.content-api.find', '2023-05-30 15:52:38.393000', '2023-05-30 15:52:38.393000', NULL, NULL),
(29, 'plugin::upload.content-api.findOne', '2023-05-30 15:52:38.393000', '2023-05-30 15:52:38.393000', NULL, NULL),
(30, 'plugin::upload.content-api.destroy', '2023-05-30 15:52:38.393000', '2023-05-30 15:52:38.393000', NULL, NULL),
(31, 'api::product.product.findOne', '2024-03-11 08:42:12.968000', '2024-03-11 08:42:12.968000', NULL, NULL),
(32, 'api::product.product.find', '2024-03-11 08:42:12.968000', '2024-03-11 08:42:12.968000', NULL, NULL),
(33, 'api::product.product.create', '2024-03-11 08:42:12.968000', '2024-03-11 08:42:12.968000', NULL, NULL),
(34, 'api::product.product.update', '2024-03-11 08:42:12.968000', '2024-03-11 08:42:12.968000', NULL, NULL),
(35, 'api::product.product.delete', '2024-03-11 08:42:12.968000', '2024-03-11 08:42:12.968000', NULL, NULL),
(36, 'api::category.category.find', '2024-03-11 08:43:23.322000', '2024-03-11 08:43:23.322000', NULL, NULL),
(37, 'api::category.category.findOne', '2024-03-11 08:43:23.322000', '2024-03-11 08:43:23.322000', NULL, NULL),
(38, 'api::category.category.create', '2024-03-11 08:57:07.599000', '2024-03-11 08:57:07.599000', NULL, NULL),
(39, 'api::category.category.update', '2024-03-11 08:57:07.599000', '2024-03-11 08:57:07.599000', NULL, NULL),
(40, 'api::category.category.delete', '2024-03-11 08:57:07.599000', '2024-03-11 08:57:07.599000', NULL, NULL),
(43, 'api::category.category.update', '2024-03-11 17:34:30.727000', '2024-03-11 17:34:30.727000', NULL, NULL),
(44, 'api::category.category.delete', '2024-03-11 17:34:30.727000', '2024-03-11 17:34:30.727000', NULL, NULL),
(45, 'api::product.product.find', '2024-03-11 17:34:30.727000', '2024-03-11 17:34:30.727000', NULL, NULL),
(46, 'api::product.product.findOne', '2024-03-11 17:34:30.727000', '2024-03-11 17:34:30.727000', NULL, NULL),
(47, 'api::product.product.create', '2024-03-11 17:34:30.727000', '2024-03-11 17:34:30.727000', NULL, NULL),
(48, 'api::product.product.update', '2024-03-11 17:34:30.727000', '2024-03-11 17:34:30.727000', NULL, NULL),
(49, 'api::product.product.delete', '2024-03-11 17:34:30.727000', '2024-03-11 17:34:30.727000', NULL, NULL),
(50, 'api::category.category.find', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(51, 'api::category.category.findOne', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(52, 'api::order.order.find', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(53, 'api::order.order.findOne', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(54, 'api::order.order.create', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(55, 'api::order-detail.order-detail.find', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(56, 'api::order-detail.order-detail.findOne', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(57, 'api::order-detail.order-detail.create', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(58, 'api::product.product.find', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(59, 'api::product.product.findOne', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(60, 'plugin::email.email.send', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(61, 'plugin::users-permissions.auth.register', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(62, 'plugin::users-permissions.user.create', '2024-12-15 10:50:05.442000', '2024-12-15 10:50:05.442000', NULL, NULL),
(63, 'api::category.category.find', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(64, 'api::category.category.findOne', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(65, 'api::category.category.create', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(66, 'api::category.category.update', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(67, 'api::category.category.delete', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(68, 'api::order.order.find', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(69, 'api::order.order.findOne', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(70, 'api::order.order.create', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(71, 'api::order.order.update', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(72, 'api::order.order.delete', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(73, 'api::order-detail.order-detail.find', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(74, 'api::order-detail.order-detail.findOne', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(75, 'api::order-detail.order-detail.create', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(76, 'api::order-detail.order-detail.update', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(77, 'api::order-detail.order-detail.delete', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(78, 'api::product.product.find', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(79, 'api::product.product.findOne', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(80, 'api::product.product.create', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(81, 'api::product.product.update', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(82, 'api::product.product.delete', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(83, 'plugin::upload.content-api.find', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(84, 'plugin::upload.content-api.findOne', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(85, 'plugin::upload.content-api.destroy', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(86, 'plugin::upload.content-api.upload', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(87, 'plugin::users-permissions.auth.changePassword', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(88, 'plugin::users-permissions.auth.resetPassword', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(89, 'plugin::users-permissions.auth.connect', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(90, 'plugin::users-permissions.auth.register', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(91, 'plugin::users-permissions.auth.callback', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(92, 'plugin::users-permissions.auth.forgotPassword', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(93, 'plugin::users-permissions.auth.emailConfirmation', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(94, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(95, 'plugin::users-permissions.user.findOne', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(96, 'plugin::users-permissions.user.find', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(97, 'plugin::users-permissions.user.count', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(98, 'plugin::users-permissions.user.me', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(99, 'plugin::users-permissions.user.update', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(100, 'plugin::users-permissions.user.create', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(101, 'plugin::users-permissions.user.destroy', '2024-12-15 12:37:59.271000', '2024-12-15 12:37:59.271000', NULL, NULL),
(102, 'plugin::email.email.send', '2024-12-15 13:28:45.156000', '2024-12-15 13:28:45.156000', NULL, NULL),
(103, 'api::carousel.carousel.find', '2024-12-30 10:34:19.910000', '2024-12-30 10:34:19.910000', NULL, NULL),
(104, 'api::carousel.carousel.findOne', '2024-12-30 10:34:19.910000', '2024-12-30 10:34:19.910000', NULL, NULL),
(105, 'api::carousel.carousel.create', '2024-12-30 10:34:19.910000', '2024-12-30 10:34:19.910000', NULL, NULL),
(106, 'api::carousel.carousel.delete', '2024-12-30 10:34:19.910000', '2024-12-30 10:34:19.910000', NULL, NULL),
(107, 'api::carousel.carousel.update', '2024-12-30 10:34:19.910000', '2024-12-30 10:34:19.910000', NULL, NULL),
(113, 'api::brand.brand.find', '2024-12-30 11:34:34.094000', '2024-12-30 11:34:34.094000', NULL, NULL),
(114, 'api::brand.brand.findOne', '2024-12-30 11:34:34.094000', '2024-12-30 11:34:34.094000', NULL, NULL),
(115, 'api::carousel.carousel.find', '2024-12-30 11:34:34.094000', '2024-12-30 11:34:34.094000', NULL, NULL),
(116, 'api::carousel.carousel.findOne', '2024-12-30 11:34:34.094000', '2024-12-30 11:34:34.094000', NULL, NULL),
(119, 'plugin::upload.content-api.findOne', '2024-12-30 11:34:34.094000', '2024-12-30 11:34:34.094000', NULL, NULL),
(120, 'plugin::upload.content-api.find', '2024-12-30 11:34:34.094000', '2024-12-30 11:34:34.094000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `api_token_permission_id` int UNSIGNED DEFAULT NULL,
  `api_token_id` int UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

INSERT INTO `strapi_api_token_permissions_token_links` (`id`, `api_token_permission_id`, `api_token_id`, `api_token_permission_order`) VALUES
(50, 50, 7, 1),
(51, 51, 7, 1),
(52, 52, 7, 1),
(53, 56, 7, 1),
(54, 53, 7, 1),
(55, 54, 7, 1),
(56, 55, 7, 1),
(57, 57, 7, 1),
(58, 59, 7, 1),
(59, 58, 7, 1),
(60, 61, 7, 2),
(61, 60, 7, 2),
(62, 62, 7, 2),
(63, 63, 8, 1),
(64, 64, 8, 1),
(65, 65, 8, 1),
(66, 66, 8, 1),
(67, 67, 8, 1),
(68, 68, 8, 1),
(69, 69, 8, 1),
(70, 70, 8, 1),
(71, 71, 8, 1),
(72, 72, 8, 1),
(73, 73, 8, 2),
(74, 74, 8, 2),
(75, 76, 8, 2),
(76, 75, 8, 2),
(77, 77, 8, 2),
(78, 78, 8, 2),
(79, 79, 8, 2),
(80, 80, 8, 2),
(81, 81, 8, 2),
(82, 82, 8, 2),
(83, 84, 8, 3),
(84, 83, 8, 3),
(85, 85, 8, 3),
(86, 86, 8, 3),
(87, 87, 8, 3),
(88, 88, 8, 3),
(89, 89, 8, 3),
(90, 90, 8, 3),
(91, 91, 8, 3),
(92, 92, 8, 4),
(93, 93, 8, 4),
(94, 94, 8, 4),
(95, 95, 8, 4),
(96, 96, 8, 5),
(97, 97, 8, 5),
(98, 98, 8, 5),
(99, 99, 8, 5),
(100, 100, 8, 5),
(101, 101, 8, 5),
(102, 102, 8, 6),
(103, 103, 8, 7),
(104, 104, 8, 7),
(105, 105, 8, 7),
(106, 107, 8, 7),
(108, 106, 8, 7),
(113, 113, 7, 3),
(114, 114, 7, 3),
(115, 115, 7, 3),
(116, 116, 7, 3),
(119, 119, 7, 3),
(120, 120, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `environment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::brand.brand\":{\"kind\":\"collectionType\",\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"brandName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"required\":true,\"default\":\"Mô tả brand\"},\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"brandName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"required\":true,\"default\":\"Mô tả brand\"},\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"brand\",\"connection\":\"default\",\"uid\":\"api::brand.brand\",\"apiName\":\"brand\",\"globalId\":\"Brand\",\"actions\":{},\"lifecycles\":{}},\"api::carousel.carousel\":{\"kind\":\"collectionType\",\"collectionName\":\"carousels\",\"info\":{\"singularName\":\"carousel\",\"pluralName\":\"carousels\",\"displayName\":\"Carousel\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"carouselName\":{\"type\":\"string\",\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"location\":{\"type\":\"string\",\"default\":\"topnav\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"carousels\",\"info\":{\"singularName\":\"carousel\",\"pluralName\":\"carousels\",\"displayName\":\"Carousel\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"carouselName\":{\"type\":\"string\",\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"location\":{\"type\":\"string\",\"default\":\"topnav\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"carousel\",\"connection\":\"default\",\"uid\":\"api::carousel.carousel\",\"apiName\":\"carousel\",\"globalId\":\"Carousel\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"icon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"icon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::order.order\":{\"kind\":\"collectionType\",\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"customerName\":{\"type\":\"string\",\"required\":true},\"total\":{\"type\":\"integer\"},\"address\":{\"type\":\"string\"},\"status\":{\"type\":\"boolean\",\"default\":false},\"email\":{\"type\":\"email\"},\"Phone\":{\"type\":\"string\"},\"Note\":{\"type\":\"text\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"customerName\":{\"type\":\"string\",\"required\":true},\"total\":{\"type\":\"integer\"},\"address\":{\"type\":\"string\"},\"status\":{\"type\":\"boolean\",\"default\":false},\"email\":{\"type\":\"email\"},\"Phone\":{\"type\":\"string\"},\"Note\":{\"type\":\"text\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order\",\"connection\":\"default\",\"uid\":\"api::order.order\",\"apiName\":\"order\",\"globalId\":\"Order\",\"actions\":{},\"lifecycles\":{}},\"api::order-detail.order-detail\":{\"kind\":\"collectionType\",\"collectionName\":\"order_details\",\"info\":{\"singularName\":\"order-detail\",\"pluralName\":\"order-details\",\"displayName\":\"orderDetail\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"price\":{\"type\":\"integer\"},\"quantity\":{\"type\":\"integer\"},\"productName\":{\"type\":\"string\"},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\"},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"order_details\",\"info\":{\"singularName\":\"order-detail\",\"pluralName\":\"order-details\",\"displayName\":\"orderDetail\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"price\":{\"type\":\"integer\"},\"quantity\":{\"type\":\"integer\"},\"productName\":{\"type\":\"string\"},\"order\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::order.order\"},\"product\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product.product\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order-detail\",\"connection\":\"default\",\"uid\":\"api::order-detail.order-detail\",\"apiName\":\"order-detail\",\"globalId\":\"OrderDetail\",\"actions\":{},\"lifecycles\":{}},\"api::page.page\":{\"kind\":\"collectionType\",\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"content\":{\"type\":\"richtext\",\"default\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\",\"required\":true},\"author\":{\"type\":\"string\",\"default\":\"Admin\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"Page\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"content\":{\"type\":\"richtext\",\"default\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\",\"required\":true},\"author\":{\"type\":\"string\",\"default\":\"Admin\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"page\",\"connection\":\"default\",\"uid\":\"api::page.page\",\"apiName\":\"page\",\"globalId\":\"Page\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"text\",\"default\":\"Product Description Donec malesuada nunc in magn Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaea molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae\"},\"price\":{\"type\":\"integer\",\"required\":true,\"max\":1000000,\"min\":1},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"},\"view\":{\"type\":\"integer\",\"default\":1,\"required\":false},\"sold\":{\"type\":\"integer\",\"default\":1},\"brand\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::brand.brand\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"Hidden\",\"In stock\",\"Out Stock\"],\"default\":\"In stock\",\"required\":false},\"feature\":{\"type\":\"richtext\",\"default\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In tincidunt iaculis risus sit amet vehicula. Nunc et volutpat sem, sed dignissim sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla feugiat, arcu vel laoreet vulputate, elit nunc commodo lectus, in aliquam urna magna ut justo. Quisque ullamcorper vulputate sem eu gravida. Quisque sit amet volutpat lorem. Aenean sit amet quam diam. Maecenas sem est, aliquam ut orci eu, tempor elementum mauris. Ut lacinia massa quis dictum suscipit. Donec sed dui id purus finibus dignissim et vulputate libero. Cras sit amet scelerisque risus. Maecenas mollis ipsum id elit interdum tempor sed nec lectus. Fusce venenatis hendrerit laoreet.  Vivamus ac semper ante. Nullam ornare felis mi, quis consectetur odio consequat non. Sed vel diam quis nisl ornare facilisis. Quisque et diam nisi. Praesent auctor elementum viverra. Vivamus suscipit ligula et mi pellentesque volutpat. Nam consectetur urna sit amet quam porta, a lacinia elit egestas. Quisque aliquet orci non pulvinar fringilla. Duis egestas arcu sit amet mauris congue imperdiet. Duis vel ultricies dui, quis elementum enim. Ut erat arcu, rutrum id ante vehicula, venenatis mattis justo.\"},\"ingredient\":{\"type\":\"richtext\",\"default\":\"Ingredients Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In tincidunt iaculis risus sit amet vehicula. Nunc et volutpat sem, sed dignissim sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla feugiat, arcu vel laoreet vulputate, elit nunc commodo lectus, in aliquam urna magna ut justo. Quisque ullamcorper vulputate sem eu gravida. Quisque sit amet volutpat lorem. Aenean sit amet quam diam. Maecenas sem est, aliquam ut orci eu, tempor elementum mauris. Ut lacinia massa quis dictum suscipit. Donec sed dui id purus finibus dignissim et vulputate libero. Cras sit amet scelerisque risus. Maecenas mollis ipsum id elit interdum tempor sed nec lectus. Fusce venenatis hendrerit laoreet.  Vivamus ac semper ante. Nullam ornare felis mi, quis consectetur odio consequat non. Sed vel diam quis nisl ornare facilisis. Quisque et diam nisi. Praesent auctor elementum viverra. Vivamus suscipit ligula et mi pellentesque volutpat. Nam consectetur urna sit amet quam porta, a lacinia elit egestas. Quisque aliquet orci non pulvinar fringilla. Duis egestas arcu sit amet mauris congue imperdiet. Duis vel ultricies dui, quis elementum enim. Ut erat arcu, rutrum id ante vehicula, venenatis mattis justo.\"},\"instruction\":{\"type\":\"richtext\",\"default\":\"Instruction InstructionLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In tincidunt iaculis risus sit amet vehicula. Nunc et volutpat sem, sed dignissim sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla feugiat, arcu vel laoreet vulputate, elit nunc commodo lectus, in aliquam urna magna ut justo. Quisque ullamcorper vulputate sem eu gravida. Quisque sit amet volutpat lorem. Aenean sit amet quam diam. Maecenas sem est, aliquam ut orci eu, tempor elementum mauris. Ut lacinia massa quis dictum suscipit. Donec sed dui id purus finibus dignissim et vulputate libero. Cras sit amet scelerisque risus. Maecenas mollis ipsum id elit interdum tempor sed nec lectus. Fusce venenatis hendrerit laoreet.  Vivamus ac semper ante. Nullam ornare felis mi, quis consectetur odio consequat non. Sed vel diam quis nisl ornare facilisis. Quisque et diam nisi. Praesent auctor elementum viverra. Vivamus suscipit ligula et mi pellentesque volutpat. Nam consectetur urna sit amet quam porta, a lacinia elit egestas. Quisque aliquet orci non pulvinar fringilla. Duis egestas arcu sit amet mauris congue imperdiet. Duis vel ultricies dui, quis elementum enim. Ut erat arcu, rutrum id ante vehicula, venenatis mattis justo.\"},\"summary\":{\"type\":\"string\",\"default\":\"summary Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae\"},\"tag\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"text\",\"default\":\"Product Description Donec malesuada nunc in magn Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaea molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curaeDonec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae\"},\"price\":{\"type\":\"integer\",\"required\":true,\"max\":1000000,\"min\":1},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"},\"view\":{\"type\":\"integer\",\"default\":1,\"required\":false},\"sold\":{\"type\":\"integer\",\"default\":1},\"brand\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::brand.brand\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"Hidden\",\"In stock\",\"Out Stock\"],\"default\":\"In stock\",\"required\":false},\"feature\":{\"type\":\"richtext\",\"default\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In tincidunt iaculis risus sit amet vehicula. Nunc et volutpat sem, sed dignissim sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla feugiat, arcu vel laoreet vulputate, elit nunc commodo lectus, in aliquam urna magna ut justo. Quisque ullamcorper vulputate sem eu gravida. Quisque sit amet volutpat lorem. Aenean sit amet quam diam. Maecenas sem est, aliquam ut orci eu, tempor elementum mauris. Ut lacinia massa quis dictum suscipit. Donec sed dui id purus finibus dignissim et vulputate libero. Cras sit amet scelerisque risus. Maecenas mollis ipsum id elit interdum tempor sed nec lectus. Fusce venenatis hendrerit laoreet.  Vivamus ac semper ante. Nullam ornare felis mi, quis consectetur odio consequat non. Sed vel diam quis nisl ornare facilisis. Quisque et diam nisi. Praesent auctor elementum viverra. Vivamus suscipit ligula et mi pellentesque volutpat. Nam consectetur urna sit amet quam porta, a lacinia elit egestas. Quisque aliquet orci non pulvinar fringilla. Duis egestas arcu sit amet mauris congue imperdiet. Duis vel ultricies dui, quis elementum enim. Ut erat arcu, rutrum id ante vehicula, venenatis mattis justo.\"},\"ingredient\":{\"type\":\"richtext\",\"default\":\"Ingredients Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In tincidunt iaculis risus sit amet vehicula. Nunc et volutpat sem, sed dignissim sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla feugiat, arcu vel laoreet vulputate, elit nunc commodo lectus, in aliquam urna magna ut justo. Quisque ullamcorper vulputate sem eu gravida. Quisque sit amet volutpat lorem. Aenean sit amet quam diam. Maecenas sem est, aliquam ut orci eu, tempor elementum mauris. Ut lacinia massa quis dictum suscipit. Donec sed dui id purus finibus dignissim et vulputate libero. Cras sit amet scelerisque risus. Maecenas mollis ipsum id elit interdum tempor sed nec lectus. Fusce venenatis hendrerit laoreet.  Vivamus ac semper ante. Nullam ornare felis mi, quis consectetur odio consequat non. Sed vel diam quis nisl ornare facilisis. Quisque et diam nisi. Praesent auctor elementum viverra. Vivamus suscipit ligula et mi pellentesque volutpat. Nam consectetur urna sit amet quam porta, a lacinia elit egestas. Quisque aliquet orci non pulvinar fringilla. Duis egestas arcu sit amet mauris congue imperdiet. Duis vel ultricies dui, quis elementum enim. Ut erat arcu, rutrum id ante vehicula, venenatis mattis justo.\"},\"instruction\":{\"type\":\"richtext\",\"default\":\"Instruction InstructionLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In tincidunt iaculis risus sit amet vehicula. Nunc et volutpat sem, sed dignissim sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla feugiat, arcu vel laoreet vulputate, elit nunc commodo lectus, in aliquam urna magna ut justo. Quisque ullamcorper vulputate sem eu gravida. Quisque sit amet volutpat lorem. Aenean sit amet quam diam. Maecenas sem est, aliquam ut orci eu, tempor elementum mauris. Ut lacinia massa quis dictum suscipit. Donec sed dui id purus finibus dignissim et vulputate libero. Cras sit amet scelerisque risus. Maecenas mollis ipsum id elit interdum tempor sed nec lectus. Fusce venenatis hendrerit laoreet.  Vivamus ac semper ante. Nullam ornare felis mi, quis consectetur odio consequat non. Sed vel diam quis nisl ornare facilisis. Quisque et diam nisi. Praesent auctor elementum viverra. Vivamus suscipit ligula et mi pellentesque volutpat. Nam consectetur urna sit amet quam porta, a lacinia elit egestas. Quisque aliquet orci non pulvinar fringilla. Duis egestas arcu sit amet mauris congue imperdiet. Duis vel ultricies dui, quis elementum enim. Ut erat arcu, rutrum id ante vehicula, venenatis mattis justo.\"},\"summary\":{\"type\":\"string\",\"default\":\"summary Donec malesuada nunc in magna molestie, vel tempus lacus dignissim. Nam interdum, magna quis varius suscipit, elit justo suscipit sem, eu venenatis libero sapien ut mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae\"},\"tag\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"40 2 8 * * 1\",\"lastWeeklyUpdate\":1735520560137}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(27, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"categoryName\",\"defaultSortBy\":\"categoryName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"categoryName\":{\"edit\":{\"label\":\"categoryName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"categoryName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"categoryName\",\"description\",\"createdAt\"],\"edit\":[[{\"name\":\"categoryName\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"icon\",\"size\":6}]]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"uid\":\"api::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"productName\",\"defaultSortBy\":\"productName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"productName\":{\"edit\":{\"label\":\"productName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"categoryName\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"view\":{\"edit\":{\"label\":\"view\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view\",\"searchable\":true,\"sortable\":true}},\"sold\":{\"edit\":{\"label\":\"sold\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sold\",\"searchable\":true,\"sortable\":true}},\"brand\":{\"edit\":{\"label\":\"brand\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"brandName\"},\"list\":{\"label\":\"brand\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"feature\":{\"edit\":{\"label\":\"feature\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"feature\",\"searchable\":false,\"sortable\":false}},\"ingredient\":{\"edit\":{\"label\":\"ingredient\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ingredient\",\"searchable\":false,\"sortable\":false}},\"instruction\":{\"edit\":{\"label\":\"instruction\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"instruction\",\"searchable\":false,\"sortable\":false}},\"summary\":{\"edit\":{\"label\":\"summary\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"summary\",\"searchable\":true,\"sortable\":true}},\"tag\":{\"edit\":{\"label\":\"tag\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tag\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"productName\",\"description\",\"price\"],\"edit\":[[{\"name\":\"productName\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"price\",\"size\":4},{\"name\":\"image\",\"size\":6}],[{\"name\":\"category\",\"size\":6},{\"name\":\"view\",\"size\":4}],[{\"name\":\"sold\",\"size\":4},{\"name\":\"brand\",\"size\":6}],[{\"name\":\"status\",\"size\":6}],[{\"name\":\"feature\",\"size\":12}],[{\"name\":\"summary\",\"size\":6}],[{\"name\":\"ingredient\",\"size\":12}],[{\"name\":\"instruction\",\"size\":12}],[{\"name\":\"tag\",\"size\":6}]]}}', 'object', NULL, NULL),
(30, 'plugin_upload_api-folder', '{\"id\":8}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::api::order.order', '{\"uid\":\"api::order.order\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"customerName\",\"defaultSortBy\":\"customerName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"customerName\":{\"edit\":{\"label\":\"customerName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customerName\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"Phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"Note\":{\"edit\":{\"label\":\"Note\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Note\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"customerName\"],\"edit\":[[{\"name\":\"customerName\",\"size\":6},{\"name\":\"total\",\"size\":4}],[{\"name\":\"address\",\"size\":6},{\"name\":\"status\",\"size\":4}],[{\"name\":\"email\",\"size\":6},{\"name\":\"Phone\",\"size\":6}],[{\"name\":\"Note\",\"size\":6},{\"name\":\"users_permissions_user\",\"size\":6}]]}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::order-detail.order-detail', '{\"uid\":\"api::order-detail.order-detail\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"quantity\",\"searchable\":true,\"sortable\":true}},\"productName\":{\"edit\":{\"label\":\"productName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productName\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"customerName\"},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"productName\"},\"list\":{\"label\":\"product\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"price\",\"productName\",\"order\"],\"edit\":[[{\"name\":\"price\",\"size\":4}],[{\"name\":\"quantity\",\"size\":4},{\"name\":\"productName\",\"size\":6}],[{\"name\":\"order\",\"size\":6},{\"name\":\"product\",\"size\":6}]]}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::brand.brand', '{\"uid\":\"api::brand.brand\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"brandName\",\"defaultSortBy\":\"brandName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"brandName\":{\"edit\":{\"label\":\"brandName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"brandName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"brandName\",\"description\",\"logo\"],\"edit\":[[{\"name\":\"brandName\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"logo\",\"size\":6}]]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::carousel.carousel', '{\"uid\":\"api::carousel.carousel\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"carouselName\",\"defaultSortBy\":\"carouselName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"carouselName\":{\"edit\":{\"label\":\"carouselName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"carouselName\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"location\":{\"edit\":{\"label\":\"location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"location\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"carouselName\",\"image\",\"createdAt\"],\"edit\":[[{\"name\":\"carouselName\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"location\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(36, 'plugin_content_manager_configuration_content_types::api::page.page', '{\"uid\":\"api::page.page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"author\",\"createdAt\"],\"edit\":[[{\"name\":\"Title\",\"size\":6}],[{\"name\":\"content\",\"size\":12}],[{\"name\":\"author\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(66, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"brands\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"brand_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"brands_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"brands_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"brands_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"brands_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"carousels\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"carousel_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"location\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"carousels_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"carousels_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"carousels_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"carousels_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"category_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"customer_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"total\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"address\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"note\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"orders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"orders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_details\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"price\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"quantity\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_details_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"order_details_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"order_details_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_details_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"pages\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"author\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"pages_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"pages_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"price\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"view\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sold\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"feature\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"ingredient\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"instruction\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"summary\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"products_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"transfer_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"transfer_token_permission_id\", \"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_order_inv_fk\", \"columns\": [\"transfer_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_related_morphs_order_index\", \"type\": null, \"columns\": [\"order\"]}, {\"name\": \"files_related_morphs_id_column_index\", \"type\": null, \"columns\": [\"related_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"orders_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"orders_users_permissions_user_links_fk\", \"columns\": [\"order_id\"]}, {\"name\": \"orders_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"orders_users_permissions_user_links_unique\", \"type\": \"unique\", \"columns\": [\"order_id\", \"user_id\"]}], \"foreignKeys\": [{\"name\": \"orders_users_permissions_user_links_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"orders_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_details_order_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_detail_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_details_order_links_fk\", \"columns\": [\"order_detail_id\"]}, {\"name\": \"order_details_order_links_inv_fk\", \"columns\": [\"order_id\"]}, {\"name\": \"order_details_order_links_unique\", \"type\": \"unique\", \"columns\": [\"order_detail_id\", \"order_id\"]}], \"foreignKeys\": [{\"name\": \"order_details_order_links_fk\", \"columns\": [\"order_detail_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_details\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_details_order_links_inv_fk\", \"columns\": [\"order_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"orders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"order_details_product_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"order_detail_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"order_details_product_links_fk\", \"columns\": [\"order_detail_id\"]}, {\"name\": \"order_details_product_links_inv_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"order_details_product_links_unique\", \"type\": \"unique\", \"columns\": [\"order_detail_id\", \"product_id\"]}], \"foreignKeys\": [{\"name\": \"order_details_product_links_fk\", \"columns\": [\"order_detail_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"order_details\", \"referencedColumns\": [\"id\"]}, {\"name\": \"order_details_product_links_inv_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_category_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_category_links_inv_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"products_category_links_unique\", \"type\": \"unique\", \"columns\": [\"product_id\", \"category_id\"]}], \"foreignKeys\": [{\"name\": \"products_category_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"products_brand_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"brand_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"products_brand_links_fk\", \"columns\": [\"product_id\"]}, {\"name\": \"products_brand_links_inv_fk\", \"columns\": [\"brand_id\"]}, {\"name\": \"products_brand_links_unique\", \"type\": \"unique\", \"columns\": [\"product_id\", \"brand_id\"]}], \"foreignKeys\": [{\"name\": \"products_brand_links_fk\", \"columns\": [\"product_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"products\", \"referencedColumns\": [\"id\"]}, {\"name\": \"products_brand_links_inv_fk\", \"columns\": [\"brand_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"brands\", \"referencedColumns\": [\"id\"]}]}]}', '2025-01-01 09:17:04', 'ba1ba2287d839bcc9ea9ddc060476ea4');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `access_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `transfer_token_permission_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'product_img', 1, '/1', '2023-05-08 14:51:19.535000', '2023-05-08 14:51:19.535000', 1, 1),
(2, 'product', 2, '/2', '2023-05-08 15:10:22.014000', '2023-05-08 15:10:22.014000', 1, 1),
(3, 'API Uploads', 3, '/3', '2023-05-30 16:17:25.804000', '2023-05-30 16:17:25.804000', NULL, NULL),
(8, 'API Uploads (1)', 4, '/4', '2023-05-30 16:17:28.133000', '2023-05-30 16:17:28.133000', NULL, NULL),
(9, 'brand', 5, '/5', '2024-12-15 13:08:54.763000', '2024-12-15 13:08:54.763000', 1, 1),
(10, 'category', 6, '/6', '2024-12-23 08:12:57.878000', '2024-12-23 08:13:02.727000', 1, 1),
(11, 'carousel', 7, '/7', '2024-12-30 10:03:32.325000', '2024-12-30 10:03:32.325000', 1, 1),
(12, 'icon', 8, '/8', '2024-12-30 11:48:00.927000', '2024-12-30 11:48:00.927000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-05-08 12:05:13.019000', '2023-05-08 12:05:13.019000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-05-08 12:05:13.019000', '2023-05-08 12:05:13.019000', NULL, NULL),
(6, 'plugin::users-permissions.auth.register', '2023-05-08 12:05:13.245000', '2023-05-08 12:05:13.245000', NULL, NULL),
(10, 'api::category.category.find', '2023-05-09 01:07:33.032000', '2023-05-09 01:07:33.032000', NULL, NULL),
(11, 'api::category.category.findOne', '2023-05-09 01:07:33.032000', '2023-05-09 01:07:33.032000', NULL, NULL),
(13, 'api::product.product.find', '2023-05-09 11:09:48.163000', '2023-05-09 11:09:48.163000', NULL, NULL),
(14, 'api::product.product.findOne', '2023-05-09 11:09:48.163000', '2023-05-09 11:09:48.163000', NULL, NULL),
(15, 'api::category.category.find', '2023-05-09 11:10:48.412000', '2023-05-09 11:10:48.412000', NULL, NULL),
(16, 'api::category.category.findOne', '2023-05-09 11:10:48.412000', '2023-05-09 11:10:48.412000', NULL, NULL),
(17, 'api::product.product.find', '2023-05-09 11:10:48.412000', '2023-05-09 11:10:48.412000', NULL, NULL),
(18, 'api::product.product.findOne', '2023-05-09 11:10:48.412000', '2023-05-09 11:10:48.412000', NULL, NULL),
(27, 'api::category.category.find', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(28, 'api::category.category.findOne', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(29, 'api::category.category.delete', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(30, 'api::product.product.update', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(31, 'api::product.product.findOne', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(32, 'api::category.category.create', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(33, 'api::product.product.create', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(34, 'api::category.category.update', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(35, 'api::product.product.delete', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(36, 'api::product.product.find', '2023-06-18 20:19:14.484000', '2023-06-18 20:19:14.484000', NULL, NULL),
(37, 'plugin::content-type-builder.components.getComponents', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(38, 'plugin::content-type-builder.components.getComponent', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(39, 'plugin::email.email.send', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(40, 'plugin::upload.content-api.find', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(41, 'plugin::upload.content-api.findOne', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(42, 'plugin::upload.content-api.destroy', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(43, 'plugin::upload.content-api.upload', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(44, 'plugin::i18n.locales.listLocales', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(45, 'plugin::users-permissions.auth.callback', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(46, 'plugin::users-permissions.auth.changePassword', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(47, 'plugin::users-permissions.auth.resetPassword', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(48, 'plugin::users-permissions.auth.connect', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(49, 'plugin::users-permissions.auth.forgotPassword', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(50, 'plugin::users-permissions.auth.register', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(51, 'plugin::users-permissions.auth.emailConfirmation', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(52, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(59, 'plugin::users-permissions.user.me', '2023-06-18 20:19:14.485000', '2023-06-18 20:19:14.485000', NULL, NULL),
(78, 'plugin::users-permissions.auth.callback', '2023-06-18 22:31:22.383000', '2023-06-18 22:31:22.383000', NULL, NULL),
(79, 'plugin::users-permissions.auth.resetPassword', '2023-06-18 22:31:22.383000', '2023-06-18 22:31:22.383000', NULL, NULL),
(80, 'plugin::users-permissions.auth.connect', '2023-06-18 22:31:22.383000', '2023-06-18 22:31:22.383000', NULL, NULL),
(81, 'plugin::users-permissions.auth.forgotPassword', '2023-06-18 22:31:22.383000', '2023-06-18 22:31:22.383000', NULL, NULL),
(82, 'plugin::users-permissions.auth.emailConfirmation', '2023-06-18 22:31:22.383000', '2023-06-18 22:31:22.383000', NULL, NULL),
(83, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-06-18 22:31:22.383000', '2023-06-18 22:31:22.383000', NULL, NULL),
(84, 'plugin::content-type-builder.content-types.getContentTypes', '2023-06-18 22:33:24.618000', '2023-06-18 22:33:24.618000', NULL, NULL),
(85, 'plugin::content-type-builder.content-types.getContentType', '2023-06-18 22:33:24.618000', '2023-06-18 22:33:24.618000', NULL, NULL),
(86, 'plugin::email.email.send', '2023-06-18 22:37:15.512000', '2023-06-18 22:37:15.512000', NULL, NULL),
(92, 'plugin::users-permissions.permissions.getPermissions', '2023-06-19 17:50:04.070000', '2023-06-19 17:50:04.070000', NULL, NULL),
(93, 'plugin::users-permissions.role.findOne', '2023-06-19 17:50:34.220000', '2023-06-19 17:50:34.220000', NULL, NULL),
(94, 'plugin::users-permissions.role.find', '2023-06-19 17:50:34.220000', '2023-06-19 17:50:34.220000', NULL, NULL),
(95, 'plugin::users-permissions.role.findOne', '2023-06-19 17:51:09.606000', '2023-06-19 17:51:09.606000', NULL, NULL),
(96, 'plugin::users-permissions.role.find', '2023-06-19 17:51:09.606000', '2023-06-19 17:51:09.606000', NULL, NULL),
(97, 'api::order.order.find', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(98, 'api::order.order.findOne', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(99, 'api::order.order.create', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(100, 'api::order.order.update', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(101, 'api::order.order.delete', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(102, 'api::order-detail.order-detail.find', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(103, 'api::order-detail.order-detail.findOne', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(104, 'api::order-detail.order-detail.create', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(105, 'api::order-detail.order-detail.update', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(106, 'api::order-detail.order-detail.delete', '2024-12-15 10:50:57.986000', '2024-12-15 10:50:57.986000', NULL, NULL),
(107, 'api::order.order.find', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(108, 'api::order.order.findOne', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(109, 'api::order.order.create', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(110, 'api::order-detail.order-detail.find', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(111, 'api::order-detail.order-detail.findOne', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(112, 'api::order-detail.order-detail.create', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(113, 'plugin::email.email.send', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(114, 'plugin::upload.content-api.upload', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(115, 'plugin::users-permissions.auth.resetPassword', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(116, 'plugin::users-permissions.auth.forgotPassword', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(117, 'plugin::users-permissions.auth.register', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(118, 'plugin::users-permissions.auth.emailConfirmation', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(119, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(120, 'plugin::users-permissions.user.create', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(121, 'plugin::users-permissions.user.find', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(122, 'plugin::users-permissions.user.findOne', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(123, 'plugin::users-permissions.permissions.getPermissions', '2024-12-15 10:53:04.884000', '2024-12-15 10:53:04.884000', NULL, NULL),
(124, 'api::brand.brand.find', '2024-12-15 13:22:40.444000', '2024-12-15 13:22:40.444000', NULL, NULL),
(125, 'api::brand.brand.findOne', '2024-12-15 13:22:40.444000', '2024-12-15 13:22:40.444000', NULL, NULL),
(127, 'api::brand.brand.find', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(128, 'api::brand.brand.findOne', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(129, 'api::brand.brand.create', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(130, 'api::brand.brand.update', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(131, 'api::brand.brand.delete', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(132, 'api::carousel.carousel.find', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(133, 'api::carousel.carousel.findOne', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(134, 'api::carousel.carousel.create', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(135, 'api::carousel.carousel.update', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(136, 'api::carousel.carousel.delete', '2024-12-30 11:36:14.674000', '2024-12-30 11:36:14.674000', NULL, NULL),
(142, 'api::brand.brand.find', '2024-12-30 11:37:22.000000', '2024-12-30 11:37:22.000000', NULL, NULL),
(143, 'api::brand.brand.findOne', '2024-12-30 11:37:22.000000', '2024-12-30 11:37:22.000000', NULL, NULL),
(144, 'api::carousel.carousel.find', '2024-12-30 11:37:22.000000', '2024-12-30 11:37:22.000000', NULL, NULL),
(145, 'api::carousel.carousel.findOne', '2024-12-30 11:37:22.000000', '2024-12-30 11:37:22.000000', NULL, NULL),
(148, 'plugin::upload.content-api.find', '2024-12-30 11:37:22.000000', '2024-12-30 11:37:22.000000', NULL, NULL),
(149, 'plugin::upload.content-api.findOne', '2024-12-30 11:37:22.000000', '2024-12-30 11:37:22.000000', NULL, NULL),
(150, 'api::carousel.carousel.find', '2024-12-30 21:35:16.909000', '2024-12-30 21:35:16.909000', NULL, NULL),
(151, 'api::carousel.carousel.findOne', '2024-12-30 21:35:16.909000', '2024-12-30 21:35:16.909000', NULL, NULL),
(154, 'api::page.page.findOne', '2024-12-30 21:35:37.002000', '2024-12-30 21:35:37.002000', NULL, NULL),
(155, 'api::page.page.find', '2024-12-30 21:35:37.002000', '2024-12-30 21:35:37.002000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(7, 6, 2, 2),
(10, 10, 2, 3),
(11, 11, 2, 3),
(13, 13, 2, 4),
(14, 14, 2, 4),
(15, 15, 1, 2),
(16, 16, 1, 2),
(17, 17, 1, 3),
(18, 18, 1, 3),
(27, 29, 4, 1),
(28, 27, 4, 1),
(29, 34, 4, 1),
(30, 32, 4, 1),
(31, 35, 4, 1),
(32, 31, 4, 1),
(33, 30, 4, 1),
(34, 36, 4, 1),
(35, 28, 4, 1),
(36, 33, 4, 1),
(37, 38, 4, 2),
(38, 39, 4, 2),
(39, 37, 4, 2),
(40, 46, 4, 3),
(41, 41, 4, 3),
(42, 42, 4, 3),
(43, 40, 4, 3),
(44, 43, 4, 2),
(45, 44, 4, 2),
(46, 45, 4, 2),
(47, 48, 4, 3),
(51, 50, 4, 4),
(52, 52, 4, 5),
(54, 51, 4, 5),
(55, 49, 4, 5),
(56, 47, 4, 5),
(59, 59, 4, 5),
(74, 82, 2, 5),
(76, 81, 2, 5),
(79, 83, 2, 5),
(81, 80, 2, 5),
(82, 78, 2, 5),
(83, 79, 2, 5),
(84, 84, 4, 8),
(85, 85, 4, 8),
(86, 86, 2, 6),
(92, 92, 4, 9),
(93, 93, 4, 10),
(94, 94, 4, 10),
(95, 95, 1, 4),
(96, 96, 1, 4),
(97, 97, 4, 11),
(98, 98, 4, 11),
(99, 99, 4, 11),
(100, 100, 4, 11),
(101, 101, 4, 11),
(102, 102, 4, 11),
(103, 103, 4, 11),
(104, 104, 4, 11),
(105, 105, 4, 11),
(106, 106, 4, 11),
(107, 107, 1, 5),
(108, 108, 1, 5),
(109, 109, 1, 5),
(110, 110, 1, 5),
(111, 111, 1, 5),
(112, 112, 1, 5),
(113, 113, 1, 5),
(114, 114, 1, 5),
(115, 115, 1, 5),
(116, 116, 1, 5),
(117, 118, 1, 6),
(118, 119, 1, 6),
(119, 117, 1, 6),
(120, 121, 1, 6),
(121, 120, 1, 6),
(122, 122, 1, 6),
(123, 123, 1, 6),
(124, 124, 2, 7),
(125, 125, 2, 7),
(127, 127, 4, 12),
(128, 128, 4, 12),
(129, 129, 4, 12),
(130, 131, 4, 12),
(131, 130, 4, 12),
(132, 132, 4, 12),
(133, 133, 4, 12),
(134, 134, 4, 12),
(135, 135, 4, 12),
(136, 136, 4, 12),
(142, 142, 1, 7),
(143, 143, 1, 7),
(144, 144, 1, 7),
(145, 145, 1, 7),
(148, 148, 1, 7),
(149, 149, 1, 8),
(150, 151, 2, 8),
(151, 150, 2, 8),
(154, 154, 2, 10),
(155, 155, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-05-08 12:05:12.919000', '2024-12-30 11:37:21.990000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-05-08 12:05:12.979000', '2024-12-30 21:35:39.893000', NULL, NULL),
(4, 'admin-web', 'Admin web shop', 'admin_web', '2023-06-18 20:19:14.057000', '2024-12-30 11:36:14.658000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `reset_password_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `confirmation_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(31, 'userABCD', 'userabcd@yahoo.com', 'local', '$2a$10$3tiGZRomfasjXNvJcMc3CuyBqqwE8GZKSkGRylPr.cc8c8m/Z0vXS', NULL, NULL, 1, 0, '2023-06-16 21:48:30.384000', '2023-06-16 21:48:30.384000', NULL, NULL),
(32, 'userCBA', 'usercba@yahoo.com', 'local', '$2a$10$CtQuq0GjC4KRIa/cTizvTuNryauHVqIr7yJxzfRxKwE3Hl1.M3CIK', NULL, NULL, 1, 0, '2023-06-16 21:50:16.105000', '2023-06-16 21:50:16.105000', NULL, NULL),
(33, 'mai11123', 'mai111222@yahoo.com', 'local', '$2a$10$1EEvGVYVKcnoH/03zk3eyexzMWAgTHKi2XyYwgUEN3Nz5cN7zksv6', NULL, NULL, 1, 0, '2023-06-16 21:54:32.299000', '2023-06-16 21:54:32.299000', NULL, NULL),
(34, 'userX', 'userx@yahoo.com', 'local', '$2a$10$HGxFM8LaJSaQ92/MtKgRP.K.i0972Ynd3WF2h4On7qSPKnk1XsQwe', NULL, NULL, 1, 0, '2023-06-16 22:03:12.393000', '2023-06-16 22:03:12.393000', NULL, NULL),
(35, 'userX1', 'userx1@yahoo.com', 'local', '$2a$10$ctQUjPYUUS0o97Jlguc1muMgC1s4xevtInBESWtU3T8Ft8Rq0bWr.', NULL, NULL, 1, 0, '2023-06-16 22:03:56.093000', '2023-06-16 22:03:56.093000', NULL, NULL),
(36, 'userY', 'usery@yahoo.com', 'local', '$2a$10$UyfMKpM2fETB64rxF/t1fugs4vyYU4utYshfawDHW/kAMu2MeKBXy', NULL, NULL, 1, 0, '2023-06-16 22:05:00.867000', '2023-06-16 22:05:00.867000', NULL, NULL),
(37, 'userZ', 'usesz@yahoo.com', 'local', '$2a$10$UyfMKpM2fETB64rxF/t1fugs4vyYU4utYshfawDHW/kAMu2MeKBXy', NULL, NULL, 1, 0, '2023-06-16 22:21:24.220000', '2023-06-16 22:21:24.220000', NULL, NULL),
(38, 'adminmai', 'abc@yahoo.com', 'local', '$2a$10$UyfMKpM2fETB64rxF/t1fugs4vyYU4utYshfawDHW/kAMu2MeKBXy', NULL, NULL, 1, 0, '2023-06-18 20:20:11.985000', '2023-06-18 20:20:36.032000', NULL, 1),
(39, 'foobar', 'foo.bar@strapi.io', 'local', '$2a$10$.NYGWUJ02jza21cVt9NbPeHUkCHKyQ8cMgkqAlrXP3g71a.I9WnkW', NULL, NULL, 1, 0, '2024-12-15 13:25:38.667000', '2024-12-15 13:25:38.667000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(31, 31, 1, 1),
(32, 32, 1, 2),
(33, 33, 1, 3),
(34, 34, 1, 4),
(35, 35, 1, 5),
(36, 36, 1, 6),
(37, 37, 1, 7),
(39, 38, 4, 1),
(40, 39, 1, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_created_by_id_fk` (`created_by_id`),
  ADD KEY `brands_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carousels_created_by_id_fk` (`created_by_id`),
  ADD KEY `carousels_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_created_by_id_fk` (`created_by_id`),
  ADD KEY `orders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders_users_permissions_user_links`
--
ALTER TABLE `orders_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_users_permissions_user_links_unique` (`order_id`,`user_id`),
  ADD KEY `orders_users_permissions_user_links_fk` (`order_id`),
  ADD KEY `orders_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_created_by_id_fk` (`created_by_id`),
  ADD KEY `order_details_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `order_details_order_links`
--
ALTER TABLE `order_details_order_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_details_order_links_unique` (`order_detail_id`,`order_id`),
  ADD KEY `order_details_order_links_fk` (`order_detail_id`),
  ADD KEY `order_details_order_links_inv_fk` (`order_id`);

--
-- Indexes for table `order_details_product_links`
--
ALTER TABLE `order_details_product_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_details_product_links_unique` (`order_detail_id`,`product_id`),
  ADD KEY `order_details_product_links_fk` (`order_detail_id`),
  ADD KEY `order_details_product_links_inv_fk` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `pages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_brand_links`
--
ALTER TABLE `products_brand_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_brand_links_unique` (`product_id`,`brand_id`),
  ADD KEY `products_brand_links_fk` (`product_id`),
  ADD KEY `products_brand_links_inv_fk` (`brand_id`);

--
-- Indexes for table `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_category_links_unique` (`product_id`,`category_id`),
  ADD KEY `products_category_links_fk` (`product_id`),
  ADD KEY `products_category_links_inv_fk` (`category_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1322;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_users_permissions_user_links`
--
ALTER TABLE `orders_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details_order_links`
--
ALTER TABLE `order_details_order_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details_product_links`
--
ALTER TABLE `order_details_product_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `products_brand_links`
--
ALTER TABLE `products_brand_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `products_category_links`
--
ALTER TABLE `products_category_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `brands_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `carousels`
--
ALTER TABLE `carousels`
  ADD CONSTRAINT `carousels_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carousels_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders_users_permissions_user_links`
--
ALTER TABLE `orders_users_permissions_user_links`
  ADD CONSTRAINT `orders_users_permissions_user_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_details_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_details_order_links`
--
ALTER TABLE `order_details_order_links`
  ADD CONSTRAINT `order_details_order_links_fk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_order_links_inv_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details_product_links`
--
ALTER TABLE `order_details_product_links`
  ADD CONSTRAINT `order_details_product_links_fk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_links_inv_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_brand_links`
--
ALTER TABLE `products_brand_links`
  ADD CONSTRAINT `products_brand_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brand_links_inv_fk` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD CONSTRAINT `products_category_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
