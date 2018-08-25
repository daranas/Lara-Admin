-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2018 at 10:31 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara-admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2018-08-25 01:06:44', '2018-08-25 01:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) unsigned NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DaranaSV', 'Super Admin', 'Male', '082121770707', '', 'darana.sv@gmail.com', 1, 'Bandung', 'Buah Batu, Bandung', 'About user / biography', '1991-09-16', '2018-08-25', '2018-08-25', 0.000, NULL, '2018-08-25 01:07:08', '2018-08-25 02:38:20'),
(2, 'Administrator', 'Administrator', 'Male', '888888888888', '', 'darana.blog@gmail.com', 1, '', '', '', '1990-01-01', '1970-01-01', '1990-01-01', 0.000, NULL, '2018-08-25 02:40:22', '2018-08-25 02:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE IF NOT EXISTS `la_configs` (
  `id` int(10) unsigned NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Panel Admin', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(2, 'sitename_part1', '', 'Panel', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(3, 'sitename_part2', '', 'Admin', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(4, 'sitename_short', '', 'PA', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(5, 'site_description', '', 'Panel Admin', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(6, 'sidebar_search', '', '0', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(7, 'show_messages', '', '0', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(8, 'show_notifications', '', '0', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(9, 'show_tasks', '', '0', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(10, 'show_rightsidebar', '', '0', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(11, 'skin', '', 'skin-black', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(12, 'layout', '', 'layout-boxed', '2018-08-25 01:06:44', '2018-08-25 02:20:22'),
(13, 'default_email', '', 'test@example.com', '2018-08-25 01:06:44', '2018-08-25 02:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE IF NOT EXISTS `la_menus` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `hierarchy` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(2, 'Users', 'users', 'fa-group', 'module', 0, 3, '2018-08-25 01:06:44', '2018-08-25 02:56:06'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 1, '2018-08-25 01:06:44', '2018-08-25 02:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2018-08-25 01:06:43', '2018-08-25 01:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE IF NOT EXISTS `module_fields` (
  `id` int(10) unsigned NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) unsigned NOT NULL,
  `field_type` int(10) unsigned NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '["Employee","Client"]', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '["Male","Female"]', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(''Y-m-d'')', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(''Y-m-d'')', 0, 0, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2018-08-25 01:06:43', '2018-08-25 01:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE IF NOT EXISTS `module_field_types` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(2, 'Checkbox', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(3, 'Currency', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(4, 'Date', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(5, 'Datetime', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(6, 'Decimal', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(7, 'Dropdown', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(8, 'Email', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(9, 'File', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(10, 'Float', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(11, 'HTML', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(12, 'Image', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(13, 'Integer', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(14, 'Mobile', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(15, 'Multiselect', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(16, 'Name', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(17, 'Password', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(18, 'Radio', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(19, 'String', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(20, 'Taginput', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(21, 'Textarea', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(22, 'TextField', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(23, 'URL', '2018-08-25 01:06:43', '2018-08-25 01:06:43'),
(24, 'Files', '2018-08-25 01:06:43', '2018-08-25 01:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) unsigned NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2018-08-25 01:06:44', '2018-08-25 01:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '1',
  `dept` int(10) unsigned NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(2, 'ADMINISTRATOR', 'Administrator', 'Administrator', 1, 1, NULL, '2018-08-25 02:38:57', '2018-08-25 02:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE IF NOT EXISTS `role_module` (
  `id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(2, 1, 2, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(3, 1, 3, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(4, 1, 4, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(5, 1, 5, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(6, 1, 6, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(7, 1, 7, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(8, 1, 8, 1, 1, 1, 1, '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(9, 2, 1, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(10, 2, 2, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(11, 2, 3, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(12, 2, 4, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(13, 2, 5, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(14, 2, 6, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(15, 2, 7, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(16, 2, 8, 0, 0, 0, 0, '2018-08-25 02:38:57', '2018-08-25 02:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE IF NOT EXISTS `role_module_fields` (
  `id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(2, 1, 2, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(3, 1, 3, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(4, 1, 4, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(5, 1, 5, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(6, 1, 6, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(7, 1, 7, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(8, 1, 8, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(9, 1, 9, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(10, 1, 10, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(11, 1, 11, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(12, 1, 12, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(13, 1, 13, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(14, 1, 14, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(15, 1, 15, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(16, 1, 16, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(17, 1, 17, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(18, 1, 18, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(19, 1, 19, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(20, 1, 20, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(21, 1, 21, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(22, 1, 22, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(23, 1, 23, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(24, 1, 24, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(25, 1, 25, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(26, 1, 26, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(27, 1, 27, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(28, 1, 28, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(29, 1, 29, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(30, 1, 30, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(31, 1, 31, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(32, 1, 32, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(33, 1, 33, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(34, 1, 34, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(35, 1, 35, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(36, 1, 36, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(37, 1, 37, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(38, 1, 38, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(39, 1, 39, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(40, 1, 40, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(41, 1, 41, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(42, 1, 42, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(43, 1, 43, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(44, 1, 44, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(45, 1, 45, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(46, 1, 46, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(47, 1, 47, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(48, 1, 48, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(49, 1, 49, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(50, 1, 50, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(51, 1, 51, 'write', '2018-08-25 01:06:44', '2018-08-25 01:06:44'),
(52, 2, 1, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(53, 2, 2, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(54, 2, 3, 'invisible', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(55, 2, 4, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(56, 2, 5, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(57, 2, 6, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(58, 2, 7, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(59, 2, 8, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(60, 2, 9, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(61, 2, 10, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(62, 2, 11, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(63, 2, 12, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(64, 2, 13, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(65, 2, 14, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(66, 2, 15, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(67, 2, 16, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(68, 2, 17, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(69, 2, 18, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(70, 2, 19, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(71, 2, 20, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(72, 2, 21, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(73, 2, 22, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(74, 2, 23, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(75, 2, 24, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(76, 2, 25, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(77, 2, 26, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(78, 2, 27, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(79, 2, 28, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(80, 2, 29, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(81, 2, 30, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(82, 2, 31, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(83, 2, 32, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(84, 2, 33, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(85, 2, 34, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(86, 2, 35, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(87, 2, 36, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(88, 2, 37, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(89, 2, 38, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(90, 2, 39, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(91, 2, 40, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(92, 2, 41, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(93, 2, 42, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(94, 2, 43, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(95, 2, 44, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(96, 2, 45, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(97, 2, 46, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(98, 2, 47, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(99, 2, 48, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(100, 2, 49, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(101, 2, 50, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57'),
(102, 2, 51, 'readonly', '2018-08-25 02:38:57', '2018-08-25 02:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, NULL),
(3, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DaranaSV', 1, 'darana.sv@gmail.com', '$2y$10$wgmCl7/7pypVFgVcFgrdH.LF6MGtz9Me1QKTb2Hrnk6Ve7IVXoq4u', 'Employee', '2e9HlUW5ImdbpVUSgcUigNrMaubaYpk1Gnrq07uDjCr6C0tA8twwdOTG99F6', NULL, '2018-08-25 01:07:08', '2018-08-25 02:44:58'),
(2, 'Administrator', 2, 'darana.blog@gmail.com', '$2y$10$Rx4RlKoQCH3lxY51Oa6UM.SdqgeoPeGTRbHozUZTSGowR4Xjt9jem', 'Employee', 'uQp2DO4rlmagLVbbw3rtSh7cGXOnYzBiH5vo6RruLDcSFEUwbuzg9VCtHdeW', NULL, '2018-08-25 02:40:22', '2018-08-25 03:27:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
