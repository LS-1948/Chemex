-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.5.5-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  chemex.admin_menu 的数据：~31 rows (大约)
DELETE FROM `admin_menu`;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
	(1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', NULL, NULL),
	(2, 0, 24, 'Admin', 'feather icon-settings', '/', NULL, '2020-10-06 21:39:10'),
	(3, 2, 25, 'Users', '', 'auth/users', NULL, '2020-10-06 21:39:10'),
	(4, 2, 26, 'Roles', '', 'auth/roles', NULL, '2020-10-06 21:39:10'),
	(5, 2, 27, 'Permission', '', 'auth/permissions', NULL, '2020-10-06 21:39:10'),
	(6, 2, 28, 'Menu', '', 'auth/menu', NULL, '2020-10-06 21:39:10'),
	(7, 2, 29, 'Operation log', '', 'auth/logs', NULL, '2020-10-06 21:39:10'),
	(8, 0, 6, 'Software Management', 'feather icon-disc', '', NULL, '2020-10-04 10:44:31'),
	(9, 8, 8, 'Software Categories', '', 'software/categories', NULL, '2020-10-04 10:44:31'),
	(10, 0, 14, 'Vendor Management', 'feather icon-zap', '', NULL, '2020-10-04 10:44:31'),
	(11, 10, 15, 'Vendor Records', '', 'vendor/records', NULL, '2020-10-04 10:44:31'),
	(12, 8, 7, 'Software Records', '', 'software/records', NULL, '2020-10-04 10:44:31'),
	(13, 0, 10, 'Hardware Management', 'feather icon-server', '', NULL, '2020-10-04 10:44:31'),
	(14, 13, 12, 'Hardware Categories', '', 'hardware/categories', NULL, '2020-10-04 10:44:31'),
	(15, 13, 11, 'Hardware Records', '', 'hardware/records', NULL, '2020-10-04 10:44:31'),
	(16, 0, 2, 'Device Management', 'feather icon-monitor', '', NULL, NULL),
	(17, 16, 4, 'Device Categories', '', 'device/categories', NULL, NULL),
	(18, 0, 16, 'Staff Management', 'feather icon-user-check', '', NULL, '2020-10-04 10:44:31'),
	(19, 18, 18, 'Staff Departments', '', 'staff/departments', NULL, '2020-10-04 10:44:31'),
	(20, 18, 17, 'Staff Records', '', 'staff/records', NULL, '2020-10-04 10:44:31'),
	(21, 16, 3, 'Device Records', '', 'device/records', NULL, NULL),
	(22, 8, 9, 'Software Tracks', '', 'software/tracks', NULL, '2020-10-04 10:44:31'),
	(23, 13, 13, 'Hardware Tracks', '', 'hardware/tracks', NULL, '2020-10-04 10:44:31'),
	(24, 16, 5, 'Device Tracks', '', 'device/tracks', NULL, '2020-10-04 10:44:31'),
	(25, 0, 21, 'Check Management', 'feather icon-check-circle', NULL, '2020-10-04 10:22:42', '2020-10-06 21:39:10'),
	(26, 25, 22, 'Check Records', NULL, 'check/records', '2020-10-04 10:23:17', '2020-10-06 21:39:10'),
	(27, 25, 23, 'Check Tracks', NULL, 'check/tracks', '2020-10-04 10:23:33', '2020-10-06 21:39:10'),
	(28, 0, 19, 'Service Management', 'feather icon-activity', NULL, '2020-10-06 21:38:40', '2020-10-06 21:39:10'),
	(29, 28, 20, 'Service Records', NULL, 'service/records', '2020-10-06 21:39:02', '2020-10-06 21:39:10'),
	(30, 28, 30, 'Service Tracks', NULL, 'service/tracks', '2020-10-06 22:02:15', '2020-10-06 22:02:15'),
	(31, 28, 31, 'Service Issues', NULL, 'service/issues', '2020-10-06 23:23:22', '2020-10-06 23:23:22');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

-- 正在导出表  chemex.admin_permissions 的数据：~6 rows (大约)
DELETE FROM `admin_permissions`;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `order`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-09-18 09:45:49', NULL),
	(2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-09-18 09:45:49', NULL),
	(3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-09-18 09:45:49', NULL),
	(4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-09-18 09:45:49', NULL),
	(5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-09-18 09:45:49', NULL),
	(6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-09-18 09:45:49', NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

-- 正在导出表  chemex.admin_permission_menu 的数据：~0 rows (大约)
DELETE FROM `admin_permission_menu`;
/*!40000 ALTER TABLE `admin_permission_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_permission_menu` ENABLE KEYS */;

-- 正在导出表  chemex.admin_roles 的数据：~0 rows (大约)
DELETE FROM `admin_roles`;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', '2020-09-18 09:45:49', '2020-09-18 09:45:49');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

-- 正在导出表  chemex.admin_role_menu 的数据：~0 rows (大约)
DELETE FROM `admin_role_menu`;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

-- 正在导出表  chemex.admin_role_permissions 的数据：~0 rows (大约)
DELETE FROM `admin_role_permissions`;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;

-- 正在导出表  chemex.admin_role_users 的数据：~0 rows (大约)
DELETE FROM `admin_role_users`;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

-- 正在导出表  chemex.admin_users 的数据：~0 rows (大约)
DELETE FROM `admin_users`;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$HDCg7qVNYFBsJrreft4SMOCznLgNKpZmAQPEVy1XdrDETJxDpbZZS', 'Administrator', NULL, NULL, '2020-09-18 09:45:49', '2020-09-18 09:45:49'),
	(2, 'test_user1', '$2y$10$LkfJ2s63BGHYpYGU.D5JFuym6x9oE2z34JhFkqbtvSgZJQGm05Aoe', '测试用户1', NULL, NULL, '2020-10-04 23:40:28', '2020-10-04 23:40:28');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

-- 正在导出表  chemex.check_records 的数据：~2 rows (大约)
DELETE FROM `check_records`;
/*!40000 ALTER TABLE `check_records` DISABLE KEYS */;
INSERT INTO `check_records` (`id`, `check_item`, `start_time`, `end_time`, `user_id`, `status`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(10, 'device', '2020-10-05 00:03:53', '2020-10-05 00:03:54', 2, 0, 'Administrator', NULL, '2020-10-05 00:03:57', '2020-10-05 00:20:41'),
	(11, 'hardware', '2020-10-05 08:59:35', '2020-10-05 08:59:35', 2, 1, 'Administrator', NULL, '2020-10-05 08:59:37', '2020-10-05 20:09:29');
/*!40000 ALTER TABLE `check_records` ENABLE KEYS */;

-- 正在导出表  chemex.check_tracks 的数据：~4 rows (大约)
DELETE FROM `check_tracks`;
/*!40000 ALTER TABLE `check_tracks` DISABLE KEYS */;
INSERT INTO `check_tracks` (`id`, `check_id`, `item_id`, `status`, `checker`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(4, 10, 4, 1, 1, 'Administrator', '2020-10-05 00:20:41', '2020-10-05 00:03:57', '2020-10-05 00:20:41'),
	(5, 10, 5, 0, 0, 'Administrator', '2020-10-05 00:20:41', '2020-10-05 00:03:57', '2020-10-05 00:20:41'),
	(6, 10, 6, 0, 0, 'Administrator', '2020-10-05 00:20:41', '2020-10-05 00:03:57', '2020-10-05 00:20:41'),
	(7, 11, 4, 1, 1, 'Administrator', NULL, '2020-10-05 08:59:37', '2020-10-05 20:09:24');
/*!40000 ALTER TABLE `check_tracks` ENABLE KEYS */;

-- 正在导出表  chemex.device_categories 的数据：~2 rows (大约)
DELETE FROM `device_categories`;
/*!40000 ALTER TABLE `device_categories` DISABLE KEYS */;
INSERT INTO `device_categories` (`id`, `name`, `description`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(3, '台式机', NULL, 'Administrator', NULL, '2020-10-04 23:04:52', '2020-10-04 23:04:52'),
	(4, '笔记本', NULL, 'Administrator', NULL, '2020-10-04 23:04:56', '2020-10-04 23:04:56');
/*!40000 ALTER TABLE `device_categories` ENABLE KEYS */;

-- 正在导出表  chemex.device_records 的数据：~2 rows (大约)
DELETE FROM `device_records`;
/*!40000 ALTER TABLE `device_records` DISABLE KEYS */;
INSERT INTO `device_records` (`id`, `name`, `description`, `category_id`, `vendor_id`, `sn`, `mac`, `ip`, `photo`, `ssh_username`, `ssh_password`, `ssh_port`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(4, 'FAMIO-CLOUD', NULL, 3, 1, NULL, NULL, NULL, NULL, 'root', 'ZmFtaW8uY25AMDYyNQ==', '22', 'Administrator', NULL, '2020-10-04 23:05:06', '2020-10-07 23:20:33'),
	(5, 'PC-2', NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrator', NULL, '2020-10-04 23:05:14', '2020-10-04 23:05:14'),
	(6, 'NB-1', NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Administrator', NULL, '2020-10-04 23:05:20', '2020-10-04 23:05:20');
/*!40000 ALTER TABLE `device_records` ENABLE KEYS */;

-- 正在导出表  chemex.device_tracks 的数据：~0 rows (大约)
DELETE FROM `device_tracks`;
/*!40000 ALTER TABLE `device_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tracks` ENABLE KEYS */;

-- 正在导出表  chemex.failed_jobs 的数据：~0 rows (大约)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- 正在导出表  chemex.hardware_categories 的数据：~4 rows (大约)
DELETE FROM `hardware_categories`;
/*!40000 ALTER TABLE `hardware_categories` DISABLE KEYS */;
INSERT INTO `hardware_categories` (`id`, `name`, `description`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(3, '硬盘', NULL, 'Administrator', NULL, '2020-10-04 10:50:57', '2020-10-04 10:50:57'),
	(4, '固态硬盘', NULL, 'Administrator', NULL, '2020-10-04 10:51:14', '2020-10-04 10:51:14'),
	(5, '内存', NULL, 'Administrator', NULL, '2020-10-04 10:51:26', '2020-10-04 10:51:26'),
	(6, 'USB网卡', NULL, 'Administrator', NULL, '2020-10-04 10:51:38', '2020-10-04 10:51:38'),
	(7, 'PCI-E网卡', NULL, 'Administrator', NULL, '2020-10-04 10:51:46', '2020-10-04 10:51:46');
/*!40000 ALTER TABLE `hardware_categories` ENABLE KEYS */;

-- 正在导出表  chemex.hardware_records 的数据：~1 rows (大约)
DELETE FROM `hardware_records`;
/*!40000 ALTER TABLE `hardware_records` DISABLE KEYS */;
INSERT INTO `hardware_records` (`id`, `name`, `description`, `category_id`, `vendor_id`, `specification`, `sn`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(4, 'SN720', NULL, 3, 3, '500G', NULL, 'Administrator', NULL, '2020-10-05 08:55:28', '2020-10-05 08:55:28');
/*!40000 ALTER TABLE `hardware_records` ENABLE KEYS */;

-- 正在导出表  chemex.hardware_tracks 的数据：~1 rows (大约)
DELETE FROM `hardware_tracks`;
/*!40000 ALTER TABLE `hardware_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `hardware_tracks` ENABLE KEYS */;

-- 正在导出表  chemex.service_issues 的数据：~9 rows (大约)
DELETE FROM `service_issues`;
/*!40000 ALTER TABLE `service_issues` DISABLE KEYS */;
INSERT INTO `service_issues` (`id`, `service_id`, `issue`, `status`, `start`, `end`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, '电源故障', 2, '2020-10-06 23:40:46', '2020-10-07 07:07:17', 'Administrator', NULL, '2020-10-06 23:40:48', '2020-10-07 19:07:17'),
	(2, 1, '网线脱落', 2, '2020-10-07 19:58:22', '2020-10-07 08:00:04', 'Administrator', NULL, '2020-10-07 19:58:23', '2020-10-07 20:00:04'),
	(3, 5, 'I/O阻塞', 1, '2020-10-07 20:22:23', NULL, 'Administrator', NULL, '2020-10-07 20:22:24', '2020-10-07 20:22:24'),
	(4, 4, '数据读取异常缓慢', 2, '2020-10-07 20:23:37', '2020-10-07 08:23:44', 'Administrator', NULL, '2020-10-07 20:23:38', '2020-10-07 20:23:44'),
	(5, 2, '网络丢包', 1, '2020-10-06 20:24:03', NULL, 'Administrator', NULL, '2020-10-07 20:24:05', '2020-10-07 20:24:05'),
	(6, 6, '存储区域配额已满', 2, '2020-10-07 20:24:55', '2020-10-07 08:25:15', 'Administrator', NULL, '2020-10-07 20:24:56', '2020-10-07 20:25:15'),
	(7, 7, '部分用户无法连接打印机', 2, '2020-10-07 20:25:30', '2020-10-07 08:25:39', 'Administrator', NULL, '2020-10-07 20:25:31', '2020-10-07 20:25:39'),
	(8, 7, '打印延迟较大', 1, '2020-10-07 20:25:50', NULL, 'Administrator', NULL, '2020-10-07 20:25:50', '2020-10-07 20:25:50'),
	(9, 7, '打印服务器丢包严重', 1, '2020-10-07 20:26:05', NULL, 'Administrator', NULL, '2020-10-07 20:26:05', '2020-10-07 20:26:05');
/*!40000 ALTER TABLE `service_issues` ENABLE KEYS */;

-- 正在导出表  chemex.service_records 的数据：~7 rows (大约)
DELETE FROM `service_records`;
/*!40000 ALTER TABLE `service_records` DISABLE KEYS */;
INSERT INTO `service_records` (`id`, `name`, `description`, `status`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'AD服务', NULL, 0, 'Administrator', NULL, '2020-10-06 21:50:55', '2020-10-07 20:07:43'),
	(2, 'MES 服务', NULL, 1, 'Administrator', NULL, '2020-10-07 19:26:44', '2020-10-07 20:07:44'),
	(3, 'ERP 服务', NULL, 0, 'Administrator', NULL, '2020-10-07 19:26:48', '2020-10-07 19:26:48'),
	(4, 'ERP DB 服务', NULL, 0, 'Administrator', NULL, '2020-10-07 19:26:54', '2020-10-07 19:26:54'),
	(5, 'Redis 缓存服务', NULL, 0, 'Administrator', NULL, '2020-10-07 20:22:10', '2020-10-07 20:22:10'),
	(6, 'FileServer 文件共享服务', NULL, 0, 'Administrator', NULL, '2020-10-07 20:24:40', '2020-10-07 20:24:40'),
	(7, '打印服务', NULL, 0, 'Administrator', NULL, '2020-10-07 20:25:10', '2020-10-07 20:25:10');
/*!40000 ALTER TABLE `service_records` ENABLE KEYS */;

-- 正在导出表  chemex.service_tracks 的数据：~6 rows (大约)
DELETE FROM `service_tracks`;
/*!40000 ALTER TABLE `service_tracks` DISABLE KEYS */;
INSERT INTO `service_tracks` (`id`, `service_id`, `device_id`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, 'Administrator', NULL, '2020-10-06 22:59:53', '2020-10-06 22:59:53'),
	(2, 1, 5, 'Administrator', NULL, '2020-10-07 20:24:10', '2020-10-07 20:24:10'),
	(3, 2, 4, 'Administrator', NULL, '2020-10-07 20:24:13', '2020-10-07 20:24:13'),
	(4, 3, 5, 'Administrator', NULL, '2020-10-07 20:24:17', '2020-10-07 20:24:17'),
	(5, 4, 6, 'Administrator', NULL, '2020-10-07 20:24:20', '2020-10-07 20:24:20'),
	(6, 5, 4, 'Administrator', NULL, '2020-10-07 20:24:23', '2020-10-07 20:24:23');
/*!40000 ALTER TABLE `service_tracks` ENABLE KEYS */;

-- 正在导出表  chemex.software_categories 的数据：~4 rows (大约)
DELETE FROM `software_categories`;
/*!40000 ALTER TABLE `software_categories` DISABLE KEYS */;
INSERT INTO `software_categories` (`id`, `name`, `description`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(3, '操作系统', NULL, 'Administrator', NULL, '2020-10-04 10:52:05', '2020-10-04 10:52:05'),
	(4, '办公应用', NULL, 'Administrator', NULL, '2020-10-04 10:52:11', '2020-10-04 10:52:11'),
	(5, '媒体工具', NULL, 'Administrator', NULL, '2020-10-04 10:52:17', '2020-10-04 10:52:17'),
	(6, '绘制工具', NULL, 'Administrator', NULL, '2020-10-04 10:52:24', '2020-10-04 10:52:24');
/*!40000 ALTER TABLE `software_categories` ENABLE KEYS */;

-- 正在导出表  chemex.software_records 的数据：~0 rows (大约)
DELETE FROM `software_records`;
/*!40000 ALTER TABLE `software_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `software_records` ENABLE KEYS */;

-- 正在导出表  chemex.software_tracks 的数据：~0 rows (大约)
DELETE FROM `software_tracks`;
/*!40000 ALTER TABLE `software_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `software_tracks` ENABLE KEYS */;

-- 正在导出表  chemex.staff_departments 的数据：~4 rows (大约)
DELETE FROM `staff_departments`;
/*!40000 ALTER TABLE `staff_departments` DISABLE KEYS */;
INSERT INTO `staff_departments` (`id`, `name`, `description`, `parent_id`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(3, '行政部', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:49:36', '2020-10-04 10:49:36'),
	(4, '销售部', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:49:43', '2020-10-04 10:49:43'),
	(5, '信息部', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:49:47', '2020-10-04 10:49:47'),
	(6, '销售一课', NULL, 4, 'Administrator', NULL, '2020-10-04 10:49:57', '2020-10-04 10:49:57'),
	(7, '销售二课', NULL, 4, 'Administrator', NULL, '2020-10-04 10:50:04', '2020-10-04 10:50:04');
/*!40000 ALTER TABLE `staff_departments` ENABLE KEYS */;

-- 正在导出表  chemex.staff_records 的数据：~4 rows (大约)
DELETE FROM `staff_records`;
/*!40000 ALTER TABLE `staff_records` DISABLE KEYS */;
INSERT INTO `staff_records` (`id`, `name`, `department_id`, `gender`, `title`, `mobile`, `email`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '张三', 3, '男', NULL, NULL, NULL, 'Administrator', NULL, '2020-10-04 10:50:17', '2020-10-04 10:50:17'),
	(2, '李四', 5, '男', NULL, NULL, NULL, 'Administrator', NULL, '2020-10-04 10:50:26', '2020-10-04 10:50:26'),
	(3, '小红', 6, '女', NULL, NULL, NULL, 'Administrator', NULL, '2020-10-04 10:50:34', '2020-10-04 10:50:34'),
	(4, '小绿', 7, '男', NULL, NULL, NULL, 'Administrator', NULL, '2020-10-04 10:50:43', '2020-10-04 10:50:43');
/*!40000 ALTER TABLE `staff_records` ENABLE KEYS */;

-- 正在导出表  chemex.vendor_records 的数据：~6 rows (大约)
DELETE FROM `vendor_records`;
/*!40000 ALTER TABLE `vendor_records` DISABLE KEYS */;
INSERT INTO `vendor_records` (`id`, `name`, `description`, `location`, `creator`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, '微软', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:48:52', '2020-10-04 10:48:52'),
	(2, '苹果', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:48:57', '2020-10-04 10:48:57'),
	(3, 'DELL', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:49:02', '2020-10-04 10:49:02'),
	(4, '金士顿', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:49:07', '2020-10-04 10:49:07'),
	(5, '华硕', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:49:11', '2020-10-04 10:49:11'),
	(6, '微星', NULL, NULL, 'Administrator', NULL, '2020-10-04 10:49:15', '2020-10-04 10:49:15');
/*!40000 ALTER TABLE `vendor_records` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;