-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 07:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"test\",\"table\":\"products\"},{\"db\":\"test\",\"table\":\"oders\"},{\"db\":\"test\",\"table\":\"users\"},{\"db\":\"test\",\"table\":\"tests\"},{\"db\":\"test\",\"table\":\"password_resets\"},{\"db\":\"test\",\"table\":\"oauth_refresh_tokens\"},{\"db\":\"test\",\"table\":\"oauth_personal_access_clients\"},{\"db\":\"test\",\"table\":\"oauth_clients\"},{\"db\":\"test\",\"table\":\"oauth_access_tokens\"},{\"db\":\"test\",\"table\":\"migrations\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'test', 'oders', '{\"sorted_col\":\"`oders`.`created_at`  DESC\"}', '2020-11-30 08:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-01 06:01:37', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_11_27_145055_create_tests_table', 1),
(10, '2020_11_27_165658_create_logins_table', 1),
(11, '2020_11_28_134804_create_products_table', 1),
(12, '2020_11_28_141702_create_oders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1158a7c10716e4cf5dcc30b264116dfb6c38d7308b6d62eb4a52058534f216f79a57a5e8598e9936', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 00:15:56', '2020-11-30 00:15:56', '2021-11-30 07:15:56'),
('1853282b55e201a11743e92a6a2cc030228ea51dddb9fd61d663bd6860443755558f03dd28e6e017', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-29 19:26:51', '2020-11-29 19:26:51', '2021-11-30 02:26:51'),
('21222bd6c85227df4ee4a97a0b9b4f37e98fbee69d0188e71904a547cb05a982ff3b6d74c530cb80', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 20:37:30', '2020-11-30 20:37:30', '2021-12-01 03:37:30'),
('33524da3ce82a686da978a22a67d80c71952eb0c830bd022562082f7ef76d7cbcf8708d1c544f824', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 20:30:16', '2020-11-30 20:30:16', '2021-12-01 03:30:16'),
('37ebe0a947eac3ee294997626483a3e7c182a04d97c67c8118c812361e0d001792dd2607a1355797', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 00:14:34', '2020-11-30 00:14:34', '2021-11-30 07:14:34'),
('384a6b30a5672eccfeffae4c5b8bf6848745da49dc09a1e6ce570b431e02947bea0163295106ed8c', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 20:28:37', '2020-11-30 20:28:37', '2021-12-01 03:28:37'),
('4e0f148ceed5c7e566c8a7227f9f780ca927ea51bb418d2f956c15fa78cd4d400ef3c4c72332da57', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-29 19:22:49', '2020-11-29 19:22:49', '2021-11-30 02:22:49'),
('62a050529504b7e11e812cfee244162f204399f175ef87e3a0d93f413b03e9dc14684ca1409decfc', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 00:14:10', '2020-11-30 00:14:10', '2021-11-30 07:14:10'),
('65f987c71737a8411d5811af6c815496e476abf7b629ceb6c43a3c0e0d581c090a807174ac3621a0', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 00:15:45', '2020-11-30 00:15:45', '2021-11-30 07:15:45'),
('6d092f731bdc2a31caa131d988e799bed1ce4ed3c30e0a49f9e7a13c382f8e2d9a83bc0efd48ece9', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-29 19:26:20', '2020-11-29 19:26:20', '2021-11-30 02:26:20'),
('6fa6b6eaee8ed13c104ac7044948eb6656457930a1e862e3630573cb1c0dd8389fcf4b430ba7a766', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 20:34:16', '2020-11-30 20:34:16', '2021-12-01 03:34:16'),
('7a2a3268b44f263a761fd614b4694556868d45baa5cff7b82c750e797f2852383d56e084a907df12', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 00:43:02', '2020-11-30 00:43:02', '2021-11-30 07:43:02'),
('7e55e6f973edc696bf5093ae193fbed4c0e01e0b5a1d351bcb58e7053c6149ee220517a4143e877f', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 00:14:19', '2020-11-30 00:14:19', '2021-11-30 07:14:19'),
('abdea81c10174ce1175ba81ec0476374306f35b3c6acfca01b75687b6751ba85af5fa73937c3ce7c', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 20:35:09', '2020-11-30 20:35:09', '2021-12-01 03:35:09'),
('bd0cc8972a727ebb624694f958f0bbec7ead65fbc8ab0c3de91074165df687a8f571b7dd65e994f5', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-29 19:26:40', '2020-11-29 19:26:40', '2021-11-30 02:26:40'),
('d6a4404e2603efa83084b1acc3cadddef1622350276d423e3d0e064c4d8fc7583f5e645e94e70b0c', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 00:31:07', '2020-11-30 00:31:07', '2021-11-30 07:31:07'),
('dde2b96cb31ebb7e7d1b1c11de03123ffa84b7759a0ec0a956d0a917700f50641f583ac8e5b2736e', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 20:19:25', '2020-11-30 20:19:25', '2021-12-01 03:19:25'),
('e519fc9b006fb40a27e6a408af62174a6c133a0b47450beb4817239dfacabb1970808ffbf4f458a5', 1, 1, 'Personal Access Token', '[]', 0, '2020-11-30 01:16:00', '2020-11-30 01:16:00', '2021-11-30 08:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'C4Lf7NRvOZf88uTcHldhhLFkohA8KefCYCOqhmUe', NULL, 'http://localhost', 1, 0, 0, '2020-11-29 19:22:29', '2020-11-29 19:22:29'),
(2, NULL, 'Laravel Password Grant Client', 'CFnPjvVNNHUR3wIolX0iAPOtsQX7ZfoaAx8u2IxD', 'users', 'http://localhost', 0, 1, 0, '2020-11-29 19:22:29', '2020-11-29 19:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-29 19:22:29', '2020-11-29 19:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oders`
--

CREATE TABLE `oders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check` tinyint(1) NOT NULL DEFAULT 0,
  `idOder` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{ádsa}',
  `sale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phanloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `sale`, `product_id`, `tittle`, `gia`, `mota`, `phanloai`, `soluong`, `created_at`, `updated_at`) VALUES
(20, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800434/dljz1cgqvwjnpsilc7uu.png\",\"public_id\":\"dljz1cgqvwjnpsilc7uu\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800434/hgertxh5xqn2rmwzvbip.png\",\"public_id\":\"hgertxh5xqn2rmwzvbip\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800434/bngoub1g58ridzg2pguf.png\",\"public_id\":\"bngoub1g58ridzg2pguf\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800435/ecuiujyc40rblhhf6mir.png\",\"public_id\":\"ecuiujyc40rblhhf6mir\"}]', '0', 223, 'ÁO KHOÁC DÙ TAY PHỐI TÚI AK008 MÀU ĐEN', '325000', 'Điểm nổi bật:\nChất liệu: Dù Micro - 100% polyester.\nForm: Regular\nĐặc tính: Áo khoác 2 lớp cao cấp lên đồ trẻ trung trong form dáng suông rộng. Thiết kế có túi dự phòng bên trong rất tiện dụng, kết hợp với túi đắp dây kéo và băng gai có tác dụng cản gió, giữ ấm cổ cực tốt khi đi xa.\nChất liệu dù micro được \"săn lùng\" ráo riết nhờ tính năng chống gió, chống nước cực kì tốt. Chất vải sở hữu độ bền cao, mềm, nhẹ và ít gây tiếng động.', 'quan-nam', '100', '2020-11-30 22:27:20', '2020-11-30 22:27:20'),
(21, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800535/gvnjdvaskop6uiiec9ke.png\",\"public_id\":\"gvnjdvaskop6uiiec9ke\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800535/za4sxgpymfkk22obuymq.png\",\"public_id\":\"za4sxgpymfkk22obuymq\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800536/nqui3s2iyw1v6ispvpw5.png\",\"public_id\":\"nqui3s2iyw1v6ispvpw5\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800535/ur1nxbnfan5ve902skrb.png\",\"public_id\":\"ur1nxbnfan5ve902skrb\"}]', '0', 920, 'ÁO HOODIE SPORTS ELEGANT AK011 MÀU BÒ', '500000', 'Điểm nổi bật:\nChất liệu: Terry 100% cotton\nForm: Loose\nĐặc tính:\n- Chất liệu Terry với các lỗ thoáng khí giúp thấm hút mồ hôi và thông thoáng cho da, đồng thời mang lại sự ấm áp vừa phải cho người mặc.\n- Vải áo mềm mại, co giãn tốt tạo cảm giác thoải mái và dễ chịu ngay khi mặc lên người.\n- Dạng áo hoodie cổ điển phóng khoáng với kiểu dáng thể thao vẫn đảm bảo được tính thanh lịch trong thiết kế tinh tế. Dòng chữ thêu \"Sport Elegant\" kết hợp nhãn dệt ở góc túi tạo nên một sản phẩm hoodie đơn giản, trơn tru đầy cá tính, thích hợp mix&macth với nhiều dạng áo quần.\n- Form loose rộng rãi, trẻ trung và năng động với phần tay áo thả tạo nên độ uyển chuyển, hài hòa cho sản phẩm.\nHướng dẫn sử dụng:\n- Giặt ở nhiệt độ bình thường, với đồ có màu tương tự.\n- Không được dùng hóa chất tẩy.\n- Hạn chế sử dụng máy sấy, ủi ở nhiệt độ bình thường.', 'quan-nam', '200', '2020-11-30 22:29:01', '2020-11-30 22:29:01'),
(22, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800599/z5hedegjq1xz5z6iemto.png\",\"public_id\":\"z5hedegjq1xz5z6iemto\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800599/cboo0wgtrwrdbpzzcps4.png\",\"public_id\":\"cboo0wgtrwrdbpzzcps4\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800599/o6uhkrcooldarvauqbbq.png\",\"public_id\":\"o6uhkrcooldarvauqbbq\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800599/ujvhlv1e6ur1rw3sife9.png\",\"public_id\":\"ujvhlv1e6ur1rw3sife9\"}]', '10', 132, 'ÁO KHOÁC DÙ TAY PHỐI TÚI AK008 MÀU XÁM', '300000', 'Điểm nổi bật:\nChất liệu: Dù Micro - 100% polyester.\nForm: Regular\nĐặc tính: Áo khoác 2 lớp cao cấp lên đồ trẻ trung trong form dáng suông rộng. Thiết kế có túi dự phòng bên trong rất tiện dụng, kết hợp với túi đắp dây kéo và băng gai có tác dụng cản gió, giữ ấm cổ cực tốt khi đi xa.\nChất liệu dù micro được \"săn lùng\" ráo riết nhờ tính năng chống gió, chống nước cực kì tốt. Chất vải sở hữu độ bền cao, mềm, nhẹ và ít gây tiếng động.', 'quan-nam', '200', '2020-11-30 22:30:03', '2020-11-30 22:30:03'),
(23, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800666/w1avongedgkumky6gyow.png\",\"public_id\":\"w1avongedgkumky6gyow\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800666/s7r7eles32dqjmuovqu9.png\",\"public_id\":\"s7r7eles32dqjmuovqu9\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800665/ocvdsemt63sqj1kot9qj.png\",\"public_id\":\"ocvdsemt63sqj1kot9qj\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800665/ibdznbmff0mkaadpvyq6.png\",\"public_id\":\"ibdznbmff0mkaadpvyq6\"}]', '20', 553, 'ÁO KHOÁC DÙ HAI LỚP CÓ NÓN AK007 MÀU TRẮNG', '100000', 'Điểm nổi bật:\nChất liệu: 99% polyestes, 1% spandex.\nForm: Regular\nĐặc tính: Chất vải dù thun sở hữu độ co giãn tương đối, tạo cảm giác thoải mái và vừa vặn trong thiết kế form suông (regular). Nút đóng phần túi kèm nón và đường line sau lưng tạo điểm nhấn trẻ trung, linh hoạt khi mix&match với nhiều dạng áo quần.', 'quan-nam', '200', '2020-11-30 22:31:09', '2020-11-30 22:31:09'),
(24, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800880/exzip77bawsh0idwpkdx.png\",\"public_id\":\"exzip77bawsh0idwpkdx\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800880/ll5z8kwhfknnjqanvjcf.png\",\"public_id\":\"ll5z8kwhfknnjqanvjcf\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800880/f5utjfkbtrzrzac9ms1c.png\",\"public_id\":\"f5utjfkbtrzrzac9ms1c\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800880/yqbqirijfqwi7rcrgc1v.png\",\"public_id\":\"yqbqirijfqwi7rcrgc1v\"}]', '10', 578, 'NÓN LƯỠI TRAI LƯỚI THÊU 4MEN MU002 MÀU XÁM      (18 đánh giá)', '200000', 'Điểm nổi bật:\nChất liệu: Dù\nĐặc tính: chống nước, bền màu\nNổi bật: Thêu nhấn logo \'\'4MEN\'\' cách điệu, lưới phần sau nón được cắt laze thoáng khí.', 'phu-kien', '123', '2020-11-30 22:34:42', '2020-11-30 22:34:42'),
(25, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800949/rblvkvag9gcoqczqxxag.png\",\"public_id\":\"rblvkvag9gcoqczqxxag\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800949/nufmttfrdjz6j0pcfbi7.png\",\"public_id\":\"nufmttfrdjz6j0pcfbi7\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800949/w2jzrzm7tfq0absha4ns.png\",\"public_id\":\"w2jzrzm7tfq0absha4ns\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606800949/akvm9httqkjkpspllgd4.png\",\"public_id\":\"akvm9httqkjkpspllgd4\"}]', '0', 27, 'NÓN LƯỠI TRAI THÊU 4MEN MU001 MÀU BÒ', '200000', 'Điểm nổi bật:\nChất liệu: kaki - 100% cotton\nNổi bật: Họa tiết in phối logo \'\'4MEN\'\' cách điệu, đường nét dày dặn, cứng cáp.', 'phu-kien', '10', '2020-11-30 22:36:00', '2020-11-30 22:36:00'),
(26, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801005/rcotgv94nmx3y5ixuz2q.jpg\",\"public_id\":\"rcotgv94nmx3y5ixuz2q\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801005/sfwak47qjfxlk2olalys.jpg\",\"public_id\":\"sfwak47qjfxlk2olalys\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801005/wz2ovbyy6l1jw2sxz2qt.jpg\",\"public_id\":\"wz2ovbyy6l1jw2sxz2qt\"}]', '0', 172, 'NÓN SNAPBACK N443 MÀU TRẮNG', '200000', 'Điểm nổi bật:\nChất liệu: kaki - 100% cotton\nNổi bật: Họa tiết in phối logo \'\'4MEN\'\' cách điệu, đường nét dày dặn, cứng cáp.', 'phu-kien', '10', '2020-11-30 22:36:53', '2020-11-30 22:36:53'),
(27, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801088/wru15aizrw2cwyqzmg6z.png\",\"public_id\":\"wru15aizrw2cwyqzmg6z\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801088/qlr6dfnjmpb17sre8q60.png\",\"public_id\":\"qlr6dfnjmpb17sre8q60\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801088/z81dnq3kixgrmop10omm.png\",\"public_id\":\"z81dnq3kixgrmop10omm\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801088/dufjtc437crutdp0iwfs.png\",\"public_id\":\"dufjtc437crutdp0iwfs\"}]', '0', 98, 'GIÀY THỂ THAO 4MEN G003 MÀU TRẮNG', '200000', 'Điểm nổi bật:\nChất liệu: Da tổng hợp\nĐặc tính:\n- Thiết kế giày thể thao có đế cao su mềm với khả năng chống trơn trượt vượt trội, mang lại sự êm ái, nhẹ nhàng và khi di chuyển cũng như khi vận động.\n- Đế cao 4cm nâng dáng giúp tôn dáng người và rất dễ phối đồ..', 'giay-dep', '10', '2020-11-30 22:38:12', '2020-11-30 22:38:12'),
(28, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801142/gnzi7mdk3zr2diwntirc.jpg\",\"public_id\":\"gnzi7mdk3zr2diwntirc\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801142/zbgf3qpy8iikzceeroag.jpg\",\"public_id\":\"zbgf3qpy8iikzceeroag\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801142/axdqe1xotmjf0qiimjcr.jpg\",\"public_id\":\"axdqe1xotmjf0qiimjcr\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801142/v6ucsemmtjskbpnnlfoi.jpg\",\"public_id\":\"v6ucsemmtjskbpnnlfoi\"}]', '10', 772, 'GIÀY CHELSEA BOOT DA LỘN MÀU XÁM G217', '900000', 'Điểm nổi bật:\nChất liệu: Da bò\nƯu điểm: Da mềm, êm, nhẹ tạo cảm giác vừa vặn và thoải mái cho đôi chân. \nPhong cách: Từ bụi bặm, trẻ trung đến lịch thiệp hay sang trọng, Chelsea boots xuất hiện để \'thỏa mãn\' hầu hết phong cách của bạn.', 'giay-dep', '10', '2020-11-30 22:39:06', '2020-11-30 22:39:06'),
(29, '[{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801192/egksghaexyxps8mxcxyj.jpg\",\"public_id\":\"egksghaexyxps8mxcxyj\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801192/lfnfdixztyobfdp9emrf.jpg\",\"public_id\":\"lfnfdixztyobfdp9emrf\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801192/etq2eo0hpraqmj5wgmfm.jpg\",\"public_id\":\"etq2eo0hpraqmj5wgmfm\"},{\"url\":\"https://res.cloudinary.com/haihunter/image/upload/v1606801192/admtu4aeeoq8bv33yumh.jpg\",\"public_id\":\"admtu4aeeoq8bv33yumh\"}]', '0', 19, 'GIÀY BOOT CỔ CAO NÂU G101', '900000', 'Điểm nổi bật:\nGiày Boot Cổ Cao Nâu G101 nổi bật với màu nâu cá tính, hiện đại. Chất da mềm mịn, bền đẹp, tạo cảm giác thoải mái, êm ái khi sử dụng. Đường nét thiết kế tinh tế, chỉ may cùng màu tỉ mỉ, chắc chắn. Kiểu boot cổ cao sành điệu, thích hợp cho những chàng trại bụi bặm, cá tính.', 'giay-dep', '10', '2020-11-30 22:39:56', '2020-11-30 22:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hunter', 'hunter986@gmail.com', 1, NULL, '$2y$10$KgVSUm0sOrSJJqGrb9Hy9e8hi0irdPGFXWX7sZNLv4b90IlGQXfn2', NULL, '2020-11-29 19:20:04', '2020-11-29 19:20:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oders`
--
ALTER TABLE `oders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
