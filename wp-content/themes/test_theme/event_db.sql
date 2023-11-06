-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 06 2023 г., 20:56
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `event_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-23 19:26:52', '2023-10-23 19:26:52', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20231105_testevent', 'd703e5752bfe59399504_20231105145830', 100, '2023-11-05 14:59:24', 'admin', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-05 14:58:30\";s:7:\"Version\";s:5:\"1.5.1\";s:9:\"VersionWP\";s:5:\"6.3.2\";s:9:\"VersionDB\";s:6:\"8.0.30\";s:10:\"VersionPHP\";s:6:\"7.4.30\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:18:\"20231105_testevent\";s:4:\"Hash\";s:35:\"d703e5752bfe59399504_20231105145830\";s:8:\"NameHash\";s:54:\"20231105_testevent_d703e5752bfe59399504_20231105145830\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:64:\"20231105_testevent_d703e5752bfe59399504_20231105145830_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:11:\"613.47 sec.\";s:7:\"ExeSize\";s:7:\"73.35KB\";s:7:\"ZipSize\";s:8:\"119.38MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:5:\"admin\";s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:66:\"20231105_testevent_d703e5752bfe59399504_20231105145830_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:35:\"C:/OSPanel/domains/event-site.local\";s:4:\"Size\";i:125173816;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:5710;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:42531;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:48240;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:44:\"C:/OSPanel/domains/event-site.local/wp-admin\";i:1;s:47:\"C:/OSPanel/domains/event-site.local/wp-includes\";i:2;s:56:\"C:/OSPanel/domains/event-site.local/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:35:\"C:/OSPanel/domains/event-site.local\";i:1;s:35:\"C:/OSPanel/domains/event-site.local\";i:2;s:46:\"C:/OSPanel/domains/event-site.local/wp-content\";i:3;s:54:\"C:/OSPanel/domains/event-site.local/wp-content/uploads\";i:4;s:54:\"C:/OSPanel/domains/event-site.local/wp-content/plugins\";i:5;s:57:\"C:/OSPanel/domains/event-site.local/wp-content/mu-plugins\";i:6;s:53:\"C:/OSPanel/domains/event-site.local/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:67:\"C:/OSPanel/domains/event-site.local/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";s:72:\"20231105_testevent_d703e5752bfe59399504_20231105145830_installer.php.bak\";s:4:\"Size\";i:75109;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;s:17:\"\0*\0origFileManger\";O:40:\"Duplicator\\Libs\\Snap\\SnapOrigFileManager\":4:{s:18:\"\0*\0persistanceFile\";s:119:\"C:/OSPanel/domains/event-site.local/wp-content/backups-dup-lite/tmp/original_files_d703e57-05145830/entries_stored.json\";s:18:\"\0*\0origFilesFolder\";s:99:\"C:/OSPanel/domains/event-site.local/wp-content/backups-dup-lite/tmp/original_files_d703e57-05145830\";s:20:\"\0*\0origFolderEntries\";a:0:{}s:11:\"\0*\0rootPath\";s:35:\"C:/OSPanel/domains/event-site.local\";}s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:49:\"C:/OSPanel/domains/event-site.local/wp-config.php\";s:16:\"\0*\0wp_config_src\";s:2885:\"<?php\n/**\n * The base configuration for WordPress\n *\n * The wp-config.php creation script uses this file during the installation.\n * You don\'t have to use the web site, you can copy this file to \"wp-config.php\"\n * and fill in the values.\n *\n * This file contains the following configurations:\n *\n * * Database settings\n * * Secret keys\n * * Database table prefix\n * * ABSPATH\n *\n * @link https://wordpress.org/documentation/article/editing-wp-config-php/\n *\n * @package WordPress\n */\n\n// ** Database settings - You can get this info from your web host ** //\n/** The name of the database for WordPress */\ndefine( \'DB_NAME\', \'event_db\' );\n\n/** Database username */\ndefine( \'DB_USER\', \'root\' );\n\n/** Database password */\ndefine( \'DB_PASSWORD\', \'\' );\n\n/** Database hostname */\ndefine( \'DB_HOST\', \'localhost\' );\n\n/** Database charset to use in creating database tables. */\ndefine( \'DB_CHARSET\', \'utf8\' );\n\n/** The database collate type. Don\'t change this if in doubt. */\ndefine( \'DB_COLLATE\', \'\' );\n\n/**#@+\n * Authentication unique keys and salts.\n *\n * Change these to different unique phrases! You can generate these using\n * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.\n *\n * You can change these at any point in time to invalidate all existing cookies.\n * This will force all users to have to log in again.\n *\n * @since 2.6.0\n */\ndefine( \'AUTH_KEY\',         \'put your unique phrase here\' );\ndefine( \'SECURE_AUTH_KEY\',  \'put your unique phrase here\' );\ndefine( \'LOGGED_IN_KEY\',    \'put your unique phrase here\' );\ndefine( \'NONCE_KEY\',        \'put your unique phrase here\' );\ndefine( \'AUTH_SALT\',        \'put your unique phrase here\' );\ndefine( \'SECURE_AUTH_SALT\', \'put your unique phrase here\' );\ndefine( \'LOGGED_IN_SALT\',   \'put your unique phrase here\' );\ndefine( \'NONCE_SALT\',       \'put your unique phrase here\' );\n\n/**#@-*/\n\n/**\n * WordPress database table prefix.\n *\n * You can have multiple installations in one database if you give each\n * a unique prefix. Only numbers, letters, and underscores please!\n */\n$table_prefix = \'wp_\';\n\n/**\n * For developers: WordPress debugging mode.\n *\n * Change this to true to enable the display of notices during development.\n * It is strongly recommended that plugin and theme developers use WP_DEBUG\n * in their development environments.\n *\n * For information on other constants that can be used for debugging,\n * visit the documentation.\n *\n * @link https://wordpress.org/documentation/article/debugging-in-wordpress/\n */\ndefine( \'WP_DEBUG\', false );\n\n/* Add any custom values between this line and the \"stop editing\" line. */\n\n\n\n/* That\'s all, stop editing! Happy publishing. */\n\n/** Absolute path to the WordPress directory. */\nif ( ! defined( \'ABSPATH\' ) ) {\n	define( \'ABSPATH\', __DIR__ . \'/\' );\n}\n\n/** Sets up WordPress vars and included files. */\nrequire_once ABSPATH . \'wp-settings.php\';\n\";s:13:\"\0*\0wp_configs\";a:2:{s:8:\"constant\";a:16:{s:7:\"DB_NAME\";a:3:{s:3:\"src\";s:32:\"define( \'DB_NAME\', \'event_db\' );\";s:5:\"value\";s:10:\"\'event_db\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_NAME\'\";i:1;s:13:\", \'event_db\' \";i:2;s:2:\");\";}}s:7:\"DB_USER\";a:3:{s:3:\"src\";s:28:\"define( \'DB_USER\', \'root\' );\";s:5:\"value\";s:6:\"\'root\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_USER\'\";i:1;s:9:\", \'root\' \";i:2;s:2:\");\";}}s:11:\"DB_PASSWORD\";a:3:{s:3:\"src\";s:28:\"define( \'DB_PASSWORD\', \'\' );\";s:5:\"value\";s:2:\"\'\'\";s:5:\"parts\";a:3:{i:0;s:21:\"define( \'DB_PASSWORD\'\";i:1;s:5:\", \'\' \";i:2;s:2:\");\";}}s:7:\"DB_HOST\";a:3:{s:3:\"src\";s:33:\"define( \'DB_HOST\', \'localhost\' );\";s:5:\"value\";s:11:\"\'localhost\'\";s:5:\"parts\";a:3:{i:0;s:17:\"define( \'DB_HOST\'\";i:1;s:14:\", \'localhost\' \";i:2;s:2:\");\";}}s:10:\"DB_CHARSET\";a:3:{s:3:\"src\";s:31:\"define( \'DB_CHARSET\', \'utf8\' );\";s:5:\"value\";s:6:\"\'utf8\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_CHARSET\'\";i:1;s:9:\", \'utf8\' \";i:2;s:2:\");\";}}s:10:\"DB_COLLATE\";a:3:{s:3:\"src\";s:27:\"define( \'DB_COLLATE\', \'\' );\";s:5:\"value\";s:2:\"\'\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'DB_COLLATE\'\";i:1;s:5:\", \'\' \";i:2;s:2:\");\";}}s:8:\"AUTH_KEY\";a:3:{s:3:\"src\";s:60:\"define( \'AUTH_KEY\',         \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'AUTH_KEY\'\";i:1;s:40:\",         \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:15:\"SECURE_AUTH_KEY\";a:3:{s:3:\"src\";s:60:\"define( \'SECURE_AUTH_KEY\',  \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:25:\"define( \'SECURE_AUTH_KEY\'\";i:1;s:33:\",  \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:13:\"LOGGED_IN_KEY\";a:3:{s:3:\"src\";s:60:\"define( \'LOGGED_IN_KEY\',    \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:23:\"define( \'LOGGED_IN_KEY\'\";i:1;s:35:\",    \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:9:\"NONCE_KEY\";a:3:{s:3:\"src\";s:60:\"define( \'NONCE_KEY\',        \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'NONCE_KEY\'\";i:1;s:39:\",        \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:9:\"AUTH_SALT\";a:3:{s:3:\"src\";s:60:\"define( \'AUTH_SALT\',        \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:19:\"define( \'AUTH_SALT\'\";i:1;s:39:\",        \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:16:\"SECURE_AUTH_SALT\";a:3:{s:3:\"src\";s:60:\"define( \'SECURE_AUTH_SALT\', \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:26:\"define( \'SECURE_AUTH_SALT\'\";i:1;s:32:\", \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:14:\"LOGGED_IN_SALT\";a:3:{s:3:\"src\";s:60:\"define( \'LOGGED_IN_SALT\',   \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:24:\"define( \'LOGGED_IN_SALT\'\";i:1;s:34:\",   \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:10:\"NONCE_SALT\";a:3:{s:3:\"src\";s:60:\"define( \'NONCE_SALT\',       \'put your unique phrase here\' );\";s:5:\"value\";s:29:\"\'put your unique phrase here\'\";s:5:\"parts\";a:3:{i:0;s:20:\"define( \'NONCE_SALT\'\";i:1;s:38:\",       \'put your unique phrase here\' \";i:2;s:2:\");\";}}s:8:\"WP_DEBUG\";a:3:{s:3:\"src\";s:28:\"define( \'WP_DEBUG\', false );\";s:5:\"value\";s:5:\"false\";s:5:\"parts\";a:3:{i:0;s:18:\"define( \'WP_DEBUG\'\";i:1;s:8:\", false \";i:2;s:2:\");\";}}s:7:\"ABSPATH\";a:3:{s:3:\"src\";s:36:\"	define( \'ABSPATH\', __DIR__ . \'/\' );\";s:5:\"value\";s:13:\"__DIR__ . \'/\'\";s:5:\"parts\";a:3:{i:0;s:18:\"	define( \'ABSPATH\'\";i:1;s:16:\", __DIR__ . \'/\' \";i:2;s:2:\");\";}}}s:8:\"variable\";a:1:{s:12:\"table_prefix\";a:3:{s:3:\"src\";s:22:\"$table_prefix = \'wp_\';\";s:5:\"value\";s:5:\"\'wp_\'\";s:5:\"parts\";a:2:{i:0;s:15:\"$table_prefix =\";i:1;s:7:\" \'wp_\';\";}}}}}}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:744936;s:4:\"File\";s:67:\"20231105_testevent_d703e5752bfe59399504_20231105145830_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:11:\"charSetList\";a:1:{i:0;s:7:\"utf8mb4\";}s:13:\"collationList\";a:2:{i:0;s:18:\"utf8mb4_0900_ai_ci\";i:1;s:22:\"utf8mb4_unicode_520_ci\";}s:10:\"engineList\";a:1:{i:0;s:6:\"InnoDB\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:8:\"event_db\";s:15:\"tablesBaseCount\";i:13;s:16:\"tablesFinalCount\";i:13;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:301;s:16:\"tablesSizeOnDisk\";i:1802240;s:10:\"tablesList\";a:13:{s:14:\"wp_commentmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:11:\"wp_comments\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:98304;}s:22:\"wp_duplicator_packages\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:32768;}s:8:\"wp_links\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:32768;}s:10:\"wp_options\";a:3:{s:14:\"inaccurateRows\";i:175;s:12:\"insertedRows\";i:177;s:4:\"size\";i:1163264;}s:11:\"wp_postmeta\";a:3:{s:14:\"inaccurateRows\";i:81;s:12:\"insertedRows\";i:81;s:4:\"size\";i:49152;}s:8:\"wp_posts\";a:3:{s:14:\"inaccurateRows\";i:22;s:12:\"insertedRows\";i:21;s:4:\"size\";i:81920;}s:21:\"wp_term_relationships\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:32768;}s:16:\"wp_term_taxonomy\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:49152;}s:11:\"wp_termmeta\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:0;s:4:\"size\";i:49152;}s:8:\"wp_terms\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:49152;}s:11:\"wp_usermeta\";a:3:{s:14:\"inaccurateRows\";i:23;s:12:\"insertedRows\";i:25;s:4:\"size\";i:49152;}s:8:\"wp_users\";a:3:{s:14:\"inaccurateRows\";i:0;s:12:\"insertedRows\";i:1;s:4:\"size\";i:65536;}}s:18:\"varLowerCaseTables\";s:1:\"2\";s:8:\"dbEngine\";s:5:\"MySQL\";s:7:\"version\";s:6:\"8.0.30\";s:14:\"versionComment\";s:28:\"MySQL Community Server - GPL\";s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:135:\"C:/OSPanel/domains/event-site.local/wp-content/backups-dup-lite/tmp/20231105_testevent_d703e5752bfe59399504_20231105145830_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-05 14:58:30\";s:7:\"Version\";s:5:\"1.5.1\";s:9:\"VersionWP\";s:5:\"6.3.2\";s:9:\"VersionDB\";s:6:\"8.0.30\";s:10:\"VersionPHP\";s:6:\"7.4.30\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20231105_testevent\";s:4:\"Hash\";s:35:\"d703e5752bfe59399504_20231105145830\";s:8:\"NameHash\";s:54:\"20231105_testevent_d703e5752bfe59399504_20231105145830\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:84;s:8:\"Database\";r:227;s:13:\"BuildProgress\";r:322;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://event-site.local', 'yes'),
(2, 'home', 'http://event-site.local', 'yes'),
(3, 'blogname', 'Test Event', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'skoropadww@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"event-posts/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"event-posts/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"event-posts/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"event-posts/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"event-posts/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"event-posts/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"event-posts/([^/]+)/embed/?$\";s:44:\"index.php?event-posts=$matches[1]&embed=true\";s:32:\"event-posts/([^/]+)/trackback/?$\";s:38:\"index.php?event-posts=$matches[1]&tb=1\";s:40:\"event-posts/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?event-posts=$matches[1]&paged=$matches[2]\";s:47:\"event-posts/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?event-posts=$matches[1]&cpage=$matches[2]\";s:36:\"event-posts/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?event-posts=$matches[1]&page=$matches[2]\";s:28:\"event-posts/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"event-posts/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"event-posts/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"event-posts/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"event-posts/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"event-posts/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:39:\"copy-delete-posts/copy-delete-posts.php\";i:1;s:25:\"duplicator/duplicator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'test_theme', 'yes'),
(41, 'stylesheet', 'test_theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:39:\"copy-delete-posts/copy-delete-posts.php\";a:2:{i:0;s:15:\"Account\\Account\";i:1;s:25:\"onUninstallPluginListener\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1713641212', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1699284413;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1699298813;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1699298822;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1699298824;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699298840;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1699298954;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699385213;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes'),
(121, 'nonce_key', 'FNl>~P`{4c;&)Qjpq-h`:eKII@<Ua/#+#<CO[[hZ5ra8MHH%b1?sA2qva&ksk4T]', 'no'),
(122, 'nonce_salt', ' fht<A4I!l9a7-c?jcUTfFp2i#TxMzqFz$/F`CwBro/TK/Z8&;~4~=-W/?|(t=V{', 'no'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698089244;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1699259552;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(134, 'auth_key', ' #a!TH455lVNqdqA4SXNF|%hj.yXdBcCH7|u^-2PL&n+|_WX1e>tCA91OE|y5f;P', 'no'),
(135, 'auth_salt', 'wIt5^!i1ovv)y_$7mN,,%_JM`7O|_s(E_U2UYCj, a./7zS]&:{Ba2Y]>B{{J>nK', 'no'),
(136, 'logged_in_key', 'H)^pY+6!5$oj*ZQiW3x5QL_(@7[VcPMADvV{4Bk?k6hEVP[U?yk_`tQ9;-Xy 96Q', 'no'),
(137, 'logged_in_salt', 'V6%?eMmy=Z.]fka.&JNNcTTEZYaHRQ*TZ$CgQ%+Y5.Lgt-`U+1u5h>5fL:8sO@o&', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'can_compress_scripts', '1', 'yes'),
(159, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1699259553;s:7:\"checked\";a:4:{s:10:\"test_theme\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.9.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.5.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(160, 'current_theme', 'test_theme', 'yes'),
(161, 'theme_mods_test_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(165, 'finished_updating_comment_type', '1', 'yes'),
(176, 'recovery_mode_email_last_sent', '1698876734', 'yes'),
(182, 'category_children', 'a:0:{}', 'yes'),
(210, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":6,\"critical\":0}', 'yes'),
(244, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(246, '_cdp_review', 'a:2:{s:9:\"installed\";i:1698264761;s:5:\"users\";a:0:{}}', 'yes'),
(247, '_cdp_globals', 'a:1:{s:6:\"others\";a:14:{s:17:\"cdp-content-pages\";s:4:\"true\";s:17:\"cdp-content-posts\";s:4:\"true\";s:18:\"cdp-content-custom\";s:4:\"true\";s:17:\"cdp-display-posts\";s:4:\"true\";s:16:\"cdp-display-edit\";s:4:\"true\";s:17:\"cdp-display-admin\";s:4:\"true\";s:16:\"cdp-display-bulk\";s:4:\"true\";s:21:\"cdp-display-gutenberg\";s:4:\"true\";s:19:\"cdp-references-post\";s:5:\"false\";s:19:\"cdp-references-edit\";s:5:\"false\";s:18:\"cdp-premium-import\";s:5:\"false\";s:24:\"cdp-premium-hide-tooltip\";s:5:\"false\";s:26:\"cdp-premium-replace-domain\";s:5:\"false\";s:20:\"cdp-menu-in-settings\";s:5:\"false\";}}', 'yes'),
(248, '_cdp_profiles', 'a:1:{s:7:\"default\";a:25:{s:5:\"title\";s:4:\"true\";s:4:\"date\";s:5:\"false\";s:6:\"status\";s:5:\"false\";s:4:\"slug\";s:4:\"true\";s:7:\"excerpt\";s:4:\"true\";s:7:\"content\";s:4:\"true\";s:7:\"f_image\";s:4:\"true\";s:8:\"template\";s:4:\"true\";s:6:\"format\";s:4:\"true\";s:6:\"author\";s:4:\"true\";s:8:\"password\";s:4:\"true\";s:11:\"attachments\";s:5:\"false\";s:8:\"children\";s:5:\"false\";s:8:\"comments\";s:5:\"false\";s:10:\"menu_order\";s:4:\"true\";s:8:\"category\";s:4:\"true\";s:8:\"post_tag\";s:4:\"true\";s:8:\"taxonomy\";s:4:\"true\";s:8:\"nav_menu\";s:4:\"true\";s:13:\"link_category\";s:4:\"true\";s:12:\"all_metadata\";s:5:\"false\";s:5:\"names\";a:5:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:10:\"#[Counter]\";s:6:\"format\";s:1:\"1\";s:6:\"custom\";s:5:\"m/d/Y\";s:7:\"display\";s:7:\"Default\";}s:9:\"usmplugin\";s:5:\"false\";s:5:\"yoast\";s:5:\"false\";s:3:\"woo\";s:5:\"false\";}}', 'yes'),
(249, '_cdp_default_setup', '1', 'yes'),
(250, '_irb_h_bn_review', 'a:2:{s:5:\"users\";a:0:{}s:17:\"copy-delete-posts\";i:1698264761;}', 'yes'),
(251, '_tifm_feature_enabled', 'disabled', 'yes'),
(252, '_tifm_disable_feature_forever', '1', 'yes'),
(253, '_tifm_force_disable_feature_fix', '1', 'yes'),
(254, '_cdp_preselections', 'a:1:{i:1;s:7:\"default\";}', 'yes'),
(256, 'cdp_copy_logs_times', 'a:2:{i:0;a:6:{s:6:\"amount\";s:1:\"1\";s:4:\"time\";d:0.015794992446899414;s:6:\"perOne\";d:0.015794992446899414;s:4:\"data\";i:1698264777;s:6:\"memory\";i:31381888;s:4:\"peak\";i:8388608;}i:1;a:6:{s:6:\"amount\";s:1:\"3\";s:4:\"time\";d:0.040171146392822266;s:6:\"perOne\";d:0.013390382130940756;s:4:\"data\";i:1698264772;s:6:\"memory\";i:31386792;s:4:\"peak\";i:4194304;}}', 'yes'),
(291, '_site_transient_timeout_php_check_2f5acf219326a8bc5331ee302b9812f4', '1699393801', 'no'),
(292, '_site_transient_php_check_2f5acf219326a8bc5331ee302b9812f4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(293, '_site_transient_timeout_browser_e3f8101c41b40572973227d0a64620d0', '1699393824', 'no'),
(294, '_site_transient_browser_e3f8101c41b40572973227d0a64620d0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(333, '_site_transient_timeout_browser_f529a32073a22388a8370c39e9b93c86', '1699800901', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(334, '_site_transient_browser_f529a32073a22388a8370c39e9b93c86', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"119.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(349, 'duplicator_settings', 'a:17:{s:7:\"version\";s:5:\"1.5.1\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}', 'yes'),
(350, 'duplicator_version_plugin', '1.5.1', 'yes'),
(351, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-05 14:58:30\";s:7:\"Version\";s:5:\"1.5.1\";s:9:\"VersionWP\";s:5:\"6.3.2\";s:9:\"VersionDB\";s:6:\"8.0.30\";s:10:\"VersionPHP\";s:6:\"7.4.30\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20231105_testevent\";s:4:\"Hash\";s:35:\"d703e5752bfe59399504_20231105145830\";s:8:\"NameHash\";s:54:\"20231105_testevent_d703e5752bfe59399504_20231105145830\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:64:\"20231105_testevent_d703e5752bfe59399504_20231105145830_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":26:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:35:\"C:/OSPanel/domains/event-site.local\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:9:\"dirsCount\";i:5710;s:5:\"Files\";a:0:{}s:10:\"filesCount\";i:42531;s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2023-11-05 14:58:30\";s:7:\"Version\";s:5:\"1.5.1\";s:9:\"VersionWP\";s:5:\"6.3.2\";s:9:\"VersionDB\";s:6:\"8.0.30\";s:10:\"VersionPHP\";s:6:\"7.4.30\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:18:\"20231105_testevent\";s:4:\"Hash\";s:35:\"d703e5752bfe59399504_20231105145830\";s:8:\"NameHash\";s:54:\"20231105_testevent_d703e5752bfe59399504_20231105145830\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":15:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:65;s:17:\"\0*\0origFileManger\";N;s:32:\"\0DUP_Installer\0configTransformer\";O:44:\"Duplicator\\Libs\\WpConfig\\WPConfigTransformer\":3:{s:17:\"\0*\0wp_config_path\";s:49:\"C:/OSPanel/domains/event-site.local/wp-config.php\";s:16:\"\0*\0wp_config_src\";N;s:13:\"\0*\0wp_configs\";a:0:{}}}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":23:{s:9:\"buildMode\";s:3:\"PHP\";s:11:\"charSetList\";a:0:{}s:13:\"collationList\";a:0:{}s:10:\"engineList\";a:0:{}s:17:\"isTablesUpperCase\";b:0;s:15:\"isNameUpperCase\";b:0;s:4:\"name\";s:0:\"\";s:15:\"tablesBaseCount\";i:0;s:16:\"tablesFinalCount\";i:0;s:20:\"muFilteredTableCount\";i:0;s:14:\"tablesRowCount\";i:0;s:16:\"tablesSizeOnDisk\";i:0;s:10:\"tablesList\";a:0:{}s:18:\"varLowerCaseTables\";i:1;s:8:\"dbEngine\";s:0:\"\";s:7:\"version\";i:0;s:14:\"versionComment\";i:0;s:9:\"viewCount\";i:0;s:9:\"procCount\";i:0;s:9:\"funcCount\";i:0;s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:65;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:65;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:3:{i:0;s:44:\"C:/OSPanel/domains/event-site.local/wp-admin\";i:1;s:47:\"C:/OSPanel/domains/event-site.local/wp-includes\";i:2;s:56:\"C:/OSPanel/domains/event-site.local/wp-content/languages\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:7:{i:0;s:35:\"C:/OSPanel/domains/event-site.local\";i:1;s:35:\"C:/OSPanel/domains/event-site.local\";i:2;s:46:\"C:/OSPanel/domains/event-site.local/wp-content\";i:3;s:54:\"C:/OSPanel/domains/event-site.local/wp-content/uploads\";i:4;s:54:\"C:/OSPanel/domains/event-site.local/wp-content/plugins\";i:5;s:57:\"C:/OSPanel/domains/event-site.local/wp-content/mu-plugins\";i:6;s:53:\"C:/OSPanel/domains/event-site.local/wp-content/themes\";}s:31:\"\0DUP_Archive\0relativeFiltersDir\";a:2:{i:0;s:67:\"C:/OSPanel/domains/event-site.local/wp-content/backups-dup-lite/tmp\";i:1;s:15:\"backups-dup-pro\";}s:24:\"\0DUP_Archive\0listFileObj\";N;s:23:\"\0DUP_Archive\0listDirObj\";N;}s:9:\"Installer\";r:86;s:8:\"Database\";r:105;s:13:\"BuildProgress\";r:143;}', 'yes'),
(356, '_site_transient_timeout_theme_roots', '1699261353', 'no'),
(357, '_site_transient_theme_roots', 'a:4:{s:10:\"test_theme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(358, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1699259554;s:8:\"response\";a:1:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:7:\"1.5.6.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicator.1.5.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2906985\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2906985\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/duplicator/assets/banner-1544x500.png?rev=2906985\";s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2906985\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:5:\"5.3.8\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:39:\"copy-delete-posts/copy-delete-posts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/copy-delete-posts\";s:4:\"slug\";s:17:\"copy-delete-posts\";s:6:\"plugin\";s:39:\"copy-delete-posts/copy-delete-posts.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/copy-delete-posts/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/copy-delete-posts.1.4.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/copy-delete-posts/assets/icon-128x128.gif?rev=2476221\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/copy-delete-posts/assets/banner-772x250.jpg?rev=2267040\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:39:\"copy-delete-posts/copy-delete-posts.php\";s:5:\"1.4.3\";s:25:\"duplicator/duplicator.php\";s:5:\"1.5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_lock', '1698137527:1'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1698878859:1'),
(19, 12, 'month', ''),
(20, 12, '_edit_last', '1'),
(21, 12, '_edit_lock', '1698878859:1'),
(22, 12, 'month', ''),
(23, 10, '_my_meta_value_key_year', '2023'),
(24, 10, '_my_meta_value_key_mounth', 'Jenuary'),
(25, 10, '_my_meta_value_key_place', 'Odesa'),
(26, 12, '_my_meta_value_key_year', '2021'),
(27, 12, '_my_meta_value_key_mounth', 'April'),
(28, 12, '_my_meta_value_key_place', 'Vinnitsa'),
(29, 16, '_edit_last', '1'),
(30, 16, '_edit_lock', '1698878859:1'),
(31, 16, '_my_meta_value_key_year', '2021'),
(32, 16, '_my_meta_value_key_mounth', 'October'),
(33, 16, '_my_meta_value_key_place', 'Kyiv'),
(35, 18, '_cdp_origin', '10'),
(36, 18, '_cdp_origin_site', '-1'),
(37, 18, '_cdp_origin_title', ' Lorem ipsum #[Counter]'),
(38, 18, '_cdp_counter', '2'),
(39, 19, '_cdp_origin', '10'),
(40, 19, '_cdp_origin_site', '-1'),
(41, 19, '_cdp_origin_title', ' Lorem ipsum #[Counter]'),
(42, 19, '_cdp_counter', '3'),
(43, 20, '_cdp_origin', '10'),
(44, 20, '_cdp_origin_site', '-1'),
(45, 20, '_cdp_origin_title', ' Lorem ipsum #[Counter]'),
(46, 20, '_cdp_counter', '4'),
(47, 21, '_cdp_origin', '16'),
(48, 21, '_cdp_origin_site', '-1'),
(49, 21, '_cdp_origin_title', ' Test 1 #[Counter]'),
(50, 21, '_cdp_counter', '2'),
(51, 21, '_edit_lock', '1698878859:1'),
(52, 21, '_edit_last', '1'),
(53, 21, '_wp_old_slug', 'test-1'),
(54, 21, '_my_meta_value_key_year', '2020'),
(55, 21, '_my_meta_value_key_mounth', 'September'),
(56, 21, '_my_meta_value_key_place', 'Uman'),
(57, 18, '_edit_lock', '1698878859:1'),
(58, 18, '_edit_last', '1'),
(59, 18, '_wp_old_slug', 'lorem-ipsum'),
(60, 18, '_my_meta_value_key_year', '2022'),
(61, 18, '_my_meta_value_key_mounth', 'April'),
(62, 18, '_my_meta_value_key_place', 'Vinnitsa'),
(63, 19, '_edit_lock', '1698878859:1'),
(64, 19, '_edit_last', '1'),
(65, 19, '_wp_old_slug', 'lorem-ipsum'),
(66, 19, '_my_meta_value_key_year', '2020'),
(67, 19, '_my_meta_value_key_mounth', 'Jenuary'),
(68, 19, '_my_meta_value_key_place', 'Odesa'),
(69, 20, '_edit_lock', '1698878859:1'),
(70, 20, '_edit_last', '1'),
(71, 20, '_wp_old_slug', 'lorem-ipsum'),
(72, 20, '_my_meta_value_key_year', '2021'),
(73, 20, '_my_meta_value_key_mounth', 'October'),
(74, 20, '_my_meta_value_key_place', 'Kyiv'),
(75, 22, '_wp_attached_file', '2023/10/images-1.jpg'),
(76, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2023/10/images-1.jpg\";s:8:\"filesize\";i:7813;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5808;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 23, '_wp_attached_file', '2023/10/gde-skachat-oboi-dlya-rabochego-stola-.png'),
(78, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:935;s:6:\"height\";i:523;s:4:\"file\";s:50:\"2023/10/gde-skachat-oboi-dlya-rabochego-stola-.png\";s:8:\"filesize\";i:932483;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"gde-skachat-oboi-dlya-rabochego-stola--300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:99073;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"gde-skachat-oboi-dlya-rabochego-stola--150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45771;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"gde-skachat-oboi-dlya-rabochego-stola--768x430.png\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:527231;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 24, '_wp_attached_file', '2023/10/images.jpg'),
(80, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:162;s:6:\"height\";i:312;s:4:\"file\";s:18:\"2023/10/images.jpg\";s:8:\"filesize\";i:10614;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"images-156x300.jpg\";s:5:\"width\";i:156;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12054;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5513;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 20, '_thumbnail_id', '22'),
(82, 19, '_thumbnail_id', '23'),
(83, 18, '_thumbnail_id', '24'),
(84, 25, '_wp_attached_file', '2023/10/Без-названия.jpg'),
(85, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:284;s:6:\"height\";i:177;s:4:\"file\";s:35:\"2023/10/Без-названия.jpg\";s:8:\"filesize\";i:15351;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"Без-названия-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8923;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 26, '_wp_attached_file', '2023/10/ozero-lebed-priroda-1366.jpg'),
(87, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:605;s:6:\"height\";i:380;s:4:\"file\";s:36:\"2023/10/ozero-lebed-priroda-1366.jpg\";s:8:\"filesize\";i:115902;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"ozero-lebed-priroda-1366-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15239;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"ozero-lebed-priroda-1366-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6703;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 27, '_wp_attached_file', '2023/10/images-1-1.jpg'),
(89, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:22:\"2023/10/images-1-1.jpg\";s:8:\"filesize\";i:7813;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"images-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5808;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 21, '_thumbnail_id', '25'),
(93, 16, '_thumbnail_id', '26'),
(94, 12, '_thumbnail_id', '27'),
(95, 29, '_wp_attached_file', '2023/10/5eaa537e9a75bd0747f47b7664e743d8-scaled.jpeg'),
(96, 29, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1440;s:4:\"file\";s:52:\"2023/10/5eaa537e9a75bd0747f47b7664e743d8-scaled.jpeg\";s:8:\"filesize\";i:341826;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"5eaa537e9a75bd0747f47b7664e743d8-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31544;}s:5:\"large\";a:5:{s:4:\"file\";s:46:\"5eaa537e9a75bd0747f47b7664e743d8-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:94683;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"5eaa537e9a75bd0747f47b7664e743d8-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25780;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:45:\"5eaa537e9a75bd0747f47b7664e743d8-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67321;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:46:\"5eaa537e9a75bd0747f47b7664e743d8-1536x864.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:162265;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:47:\"5eaa537e9a75bd0747f47b7664e743d8-2048x1152.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:245305;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"5eaa537e9a75bd0747f47b7664e743d8.jpeg\";}'),
(97, 10, '_thumbnail_id', '29');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-23 19:26:52', '2023-10-23 19:26:52', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-23 19:26:52', '2023-10-23 19:26:52', '', 0, 'http://event-site.local/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-23 19:26:52', '2023-10-23 19:26:52', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://event-site.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-23 19:26:52', '2023-10-23 19:26:52', '', 0, 'http://event-site.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-23 19:26:52', '2023-10-23 19:26:52', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://event-site.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-23 19:26:52', '2023-10-23 19:26:52', '', 0, 'http://event-site.local/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-23 19:26:54', '2023-10-23 19:26:54', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-23 19:26:54', '2023-10-23 19:26:54', '', 0, 'http://event-site.local/2023/10/23/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2023-10-23 19:57:19', '2023-10-23 19:57:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-10-23 19:57:19', '2023-10-23 19:57:19', '', 0, 'http://event-site.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-10-23 19:57:19', '2023-10-23 19:57:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-10-23 19:57:19', '2023-10-23 19:57:19', '', 7, 'http://event-site.local/?p=8', 0, 'revision', '', 0),
(10, 1, '2023-10-24 08:50:36', '2023-10-24 08:50:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2023-10-26 13:14:43', '2023-10-26 13:14:43', '', 0, 'http://event-site.local/?post_type=event-posts&#038;p=10', 0, 'event-posts', '', 0),
(12, 1, '2023-10-25 16:37:23', '2023-10-25 16:37:23', 'sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Test 3', '', 'publish', 'closed', 'closed', '', 'draft-created-on-october-25-2023-at-423-pm', '', '', '2023-11-01 22:46:26', '2023-11-01 22:46:26', '', 0, 'http://event-site.local/?post_type=event-posts&#038;p=12', 0, 'event-posts', '', 0),
(16, 1, '2023-10-25 16:40:43', '2023-10-25 16:40:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Test 1', '', 'publish', 'closed', 'closed', '', 'test-1', '', '', '2023-10-26 13:13:34', '2023-10-26 13:13:34', '', 0, 'http://event-site.local/?post_type=event-posts&#038;p=16', 0, 'event-posts', '', 0),
(18, 1, '2023-10-25 20:14:13', '2023-10-25 20:14:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum #2', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-2', '', '', '2023-10-26 13:01:54', '2023-10-26 13:01:54', '', 0, 'http://event-site.local/?post_type=event-posts&#038;p=18', 0, 'event-posts', '', 0),
(19, 1, '2023-10-25 20:14:25', '2023-10-25 20:14:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum #3', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-3', '', '', '2023-10-26 13:01:44', '2023-10-26 13:01:44', '', 0, 'http://event-site.local/?post_type=event-posts&#038;p=19', 0, 'event-posts', '', 0),
(20, 1, '2023-10-25 20:14:43', '2023-10-25 20:14:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum #4', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-4', '', '', '2023-11-01 22:26:02', '2023-11-01 22:26:02', '', 0, 'http://event-site.local/?post_type=event-posts&#038;p=20', 0, 'event-posts', '', 0),
(21, 1, '2023-10-25 20:14:00', '2023-10-25 20:14:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Test 2', '', 'publish', 'closed', 'closed', '', 'test-1-2', '', '', '2023-10-26 13:13:25', '2023-10-26 13:13:25', '', 0, 'http://event-site.local/?post_type=event-posts&#038;p=21', 0, 'event-posts', '', 0),
(22, 1, '2023-10-26 13:01:13', '2023-10-26 13:01:13', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2023-10-26 13:01:13', '2023-10-26 13:01:13', '', 20, 'http://event-site.local/wp-content/uploads/2023/10/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2023-10-26 13:01:13', '2023-10-26 13:01:13', '', 'gde-skachat-oboi-dlya-rabochego-stola-', '', 'inherit', 'open', 'closed', '', 'gde-skachat-oboi-dlya-rabochego-stola', '', '', '2023-10-26 13:01:13', '2023-10-26 13:01:13', '', 20, 'http://event-site.local/wp-content/uploads/2023/10/gde-skachat-oboi-dlya-rabochego-stola-.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2023-10-26 13:01:15', '2023-10-26 13:01:15', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2023-10-26 13:01:15', '2023-10-26 13:01:15', '', 20, 'http://event-site.local/wp-content/uploads/2023/10/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2023-10-26 13:13:10', '2023-10-26 13:13:10', '', 'Без названия', '', 'inherit', 'open', 'closed', '', '%d0%b1%d0%b5%d0%b7-%d0%bd%d0%b0%d0%b7%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f', '', '', '2023-10-26 13:13:10', '2023-10-26 13:13:10', '', 21, 'http://event-site.local/wp-content/uploads/2023/10/Без-названия.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2023-10-26 13:13:10', '2023-10-26 13:13:10', '', 'ozero-lebed-priroda-1366', '', 'inherit', 'open', 'closed', '', 'ozero-lebed-priroda-1366', '', '', '2023-10-26 13:13:10', '2023-10-26 13:13:10', '', 21, 'http://event-site.local/wp-content/uploads/2023/10/ozero-lebed-priroda-1366.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2023-10-26 13:13:11', '2023-10-26 13:13:11', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1-2', '', '', '2023-10-26 13:13:11', '2023-10-26 13:13:11', '', 21, 'http://event-site.local/wp-content/uploads/2023/10/images-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2023-10-26 13:14:30', '2023-10-26 13:14:30', '', '5eaa537e9a75bd0747f47b7664e743d8', '', 'inherit', 'open', 'closed', '', '5eaa537e9a75bd0747f47b7664e743d8', '', '', '2023-10-26 13:14:30', '2023-10-26 13:14:30', '', 10, 'http://event-site.local/wp-content/uploads/2023/10/5eaa537e9a75bd0747f47b7664e743d8.jpeg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2023-10-31 21:50:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-31 21:50:24', '0000-00-00 00:00:00', '', 0, 'http://event-site.local/?p=30', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ef2007d1a4554ebe2f5c9a9921c5a7828883ff6f3be7d31f3eacca8db5286264\";a:4:{s:10:\"expiration\";i:1699368898;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1699196098;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '30'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-10-23T19:57:14.321Z\";}'),
(20, 1, 'closedpostboxes_event-posts', 'a:1:{i:0;s:10:\"postcustom\";}'),
(21, 1, 'metaboxhidden_event-posts', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(22, 1, 'meta-box-order_event-posts', 'a:3:{s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:36:\"member_sectionid,postexcerpt,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_event-posts', '2'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1698325276');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BB71ej77dfm.4F4rz0NW5zbwHzHf9q1', 'admin', 'skoropadww@gmail.com', 'http://event-site.local', '2023-10-23 19:26:52', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
