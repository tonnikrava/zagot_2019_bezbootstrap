-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 01 2019 г., 09:06
-- Версия сервера: 10.1.34-MariaDB
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `volosidva`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discription` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `img`, `discription`) VALUES
(1, NULL, 1, 'Холодильники', 'holodilniki', '2019-04-18 07:43:58', '2019-04-26 03:44:41', NULL, NULL),
(2, NULL, 1, 'Пылесосы', 'pilisosi', '2019-04-18 07:43:58', '2019-04-26 03:45:18', NULL, NULL),
(3, NULL, 1, 'Телевизоры', 'tv-set', '2019-04-19 06:22:15', '2019-04-26 09:30:59', 'categories\\April2019\\UaoL1iJ9huJoQCbleCHr.jpg', '<p class=\"lead text-white\">Телеви́зор, телевизио́нный приёмник (новолат. televisorium &laquo;дальновидец&raquo;; от др.-греч. &tau;ῆ&lambda;&epsilon; &laquo;далеко&raquo; + лат. vīsio &laquo;зрение; видение&raquo;) &mdash; приёмник телевизионных сигналов изображения и звукового сопровождения, отображающий их на экране и с помощью громкоговорителей. Современный телевизор способен принимать телевизионные программы как с антенны, так и непосредственно от устройств их воспроизведения &mdash; например, видеомагнитофона, DVD-проигрывателя или медиаплеера.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Пароль', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Токен восстановления', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Аватар', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Роль', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Отображаемое имя', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Роль', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Родитель', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Сортировка', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug (ЧПУ)', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 7),
(27, 4, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 0, 0, 0, '{}', 8),
(28, 4, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, '{}', 9),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Автор', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Отрывок', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Содержимое', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Дата создания', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Дата обновления', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Изображение Статьи', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 3),
(59, 7, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 7),
(63, 7, 'foto1', 'image', 'Foto1', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(64, 7, 'foto2', 'image', 'Foto2', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"}]}', 9),
(65, 7, 'foto3', 'image', 'Foto3', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"}]}', 10),
(66, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(73, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 9, 'category_id', 'select_dropdown', 'Категория', 0, 1, 1, 1, 1, 1, '{}', 2),
(75, 9, 'title', 'text', 'Название товара', 1, 0, 1, 1, 1, 1, '{}', 4),
(76, 9, 'img2', 'image', 'Фото2', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1100\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"40%\"},{\"name\":\"small\",\"scale\":\"15%\"}]}', 11),
(77, 9, 'body', 'markdown_editor', 'Описание товара', 1, 0, 1, 1, 1, 1, '{}', 5),
(78, 9, 'image', 'image', 'Основное фото', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1100\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"40%\"},{\"name\":\"small\",\"scale\":\"15%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"700\",\"height\":\"250\"}}]}', 7),
(79, 9, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(80, 9, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 15),
(81, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 16),
(82, 9, 'created_at', 'timestamp', 'Создано', 0, 1, 1, 1, 0, 1, '{}', 17),
(83, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(84, 9, 'img3', 'image', 'Фото3', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1100\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"40%\"},{\"name\":\"small\",\"scale\":\"15%\"}]}', 12),
(85, 9, 'img4', 'image', 'Фото 4', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1100\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"40%\"},{\"name\":\"small\",\"scale\":\"15%\"}]}', 13),
(86, 9, 'price', 'text', 'Цена', 0, 1, 1, 1, 1, 1, '{}', 9),
(87, 9, 'new_price', 'text', 'Акция цена', 0, 1, 1, 1, 1, 1, '{}', 10),
(89, 9, 'tovari_hasmany_category_relationship', 'relationship', 'Выберите категорию', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"slug\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(90, 4, 'img', 'image', 'Фото на верх', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"800\",\"height\":\"280\"}}]}', 6),
(91, 4, 'discription', 'rich_text_box', 'Описание', 0, 0, 1, 1, 1, 1, '{}', 5),
(92, 9, 'harakteristic', 'rich_text_box', 'Harakteristic', 0, 0, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Пользователь', 'Пользователи', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(2, 'menus', 'menus', 'Меню', 'Меню', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(3, 'roles', 'roles', 'Роль', 'Роли', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(4, 'categories', 'categories', 'Категория', 'Категории', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-18 07:43:58', '2019-04-26 08:28:15'),
(6, 'pages', 'pages', 'Статья', 'Статьи', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(7, 'nowostis', 'nowostis', 'Nowosti', 'Nowostis', NULL, 'App\\Nowosti', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-19 06:43:24', '2019-04-25 08:16:55'),
(9, 'tovari', 'tovari', 'Tovari', 'Tovaris', 'voyager-basket', 'App\\Tovari', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-26 06:29:48', '2019-04-30 05:50:45');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(2, 'Glavnoe_menu', '2019-04-18 08:18:33', '2019-04-18 08:18:33');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель управления', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-04-18 07:43:58', '2019-04-18 07:43:58', 'voyager.dashboard', NULL),
(2, 1, 'Медиа', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-04-18 07:43:58', '2019-04-19 06:32:52', 'voyager.media.index', NULL),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-04-18 07:43:58', '2019-04-18 07:43:58', 'voyager.users.index', NULL),
(4, 1, 'Роли', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-04-18 07:43:58', '2019-04-18 07:43:58', 'voyager.roles.index', NULL),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-04-18 07:43:58', '2019-04-26 06:35:34', NULL, NULL),
(6, 1, 'Конструктор Меню', '', '_self', 'voyager-list', NULL, 5, 1, '2019-04-18 07:43:58', '2019-04-19 06:32:52', 'voyager.menus.index', NULL),
(7, 1, 'База данных', '', '_self', 'voyager-data', NULL, 5, 2, '2019-04-18 07:43:58', '2019-04-19 06:32:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-04-18 07:43:58', '2019-04-19 06:32:52', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-04-18 07:43:58', '2019-04-19 06:32:52', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', NULL, NULL, 10, '2019-04-18 07:43:58', '2019-04-26 06:35:34', 'voyager.settings.index', NULL),
(11, 1, 'Категории', '', '_self', 'voyager-categories', NULL, NULL, 6, '2019-04-18 07:43:58', '2019-04-19 06:32:52', 'voyager.categories.index', NULL),
(13, 1, 'Страницы', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2019-04-18 07:43:58', '2019-04-19 06:32:52', 'voyager.pages.index', NULL),
(14, 2, 'Главная', '/', '_self', NULL, '#000000', NULL, 1, '2019-04-18 08:19:00', '2019-04-18 08:23:48', NULL, ''),
(15, 2, 'О нас', 'o-nas', '_self', NULL, '#000000', NULL, 2, '2019-04-18 08:19:25', '2019-04-19 08:01:52', NULL, ''),
(16, 2, 'Контакты', 'contacts', '_self', NULL, '#000000', NULL, 6, '2019-04-18 08:19:49', '2019-04-20 06:33:56', NULL, ''),
(17, 2, 'Новости', 'news', '_self', NULL, '#000000', NULL, 5, '2019-04-18 08:23:44', '2019-04-20 06:33:56', NULL, ''),
(18, 2, 'Примеры работ', 'primeri', '_self', NULL, '#000000', NULL, 3, '2019-04-18 08:24:08', '2019-04-18 08:24:15', NULL, ''),
(19, 1, 'Новости', '', '_self', 'voyager-thumb-tack', '#000000', NULL, 8, '2019-04-19 06:43:24', '2019-04-26 06:35:34', 'voyager.nowostis.index', 'null'),
(20, 2, 'Категории', 'kateg', '_self', NULL, '#000000', NULL, 4, '2019-04-20 06:33:52', '2019-04-20 06:36:48', NULL, ''),
(21, 2, 'Телевизоры', 'tv-set', '_self', NULL, '#000000', 20, 1, '2019-04-20 06:34:38', '2019-04-26 07:31:53', NULL, ''),
(22, 2, 'Холодильники', 'holodilniki', '_self', NULL, '#000000', 20, 2, '2019-04-20 06:34:58', '2019-04-26 07:31:37', NULL, ''),
(23, 2, 'Пылесосы', 'pilisosi', '_self', 'voyager-file-text', '#000000', 20, 3, '2019-04-20 06:35:37', '2019-04-26 07:31:10', NULL, ''),
(24, 1, 'Товары', '', '_self', 'voyager-basket', '#000000', NULL, 7, '2019-04-26 06:29:48', '2019-04-26 07:02:21', 'voyager.tovari.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 2),
(4, '2016_01_01_000000_create_data_types_table', 2),
(5, '2016_05_19_173453_create_menu_table', 2),
(6, '2016_10_21_190000_create_roles_table', 2),
(7, '2016_10_21_190000_create_settings_table', 2),
(8, '2016_11_30_135954_create_permission_table', 2),
(9, '2016_11_30_141208_create_permission_role_table', 2),
(10, '2016_12_26_201236_data_types__add__server_side', 2),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(12, '2017_01_14_005015_create_translations_table', 2),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(17, '2017_08_05_000000_add_group_to_settings_table', 2),
(18, '2017_11_26_013050_add_user_role_relationship', 2),
(19, '2017_11_26_015000_create_user_roles_table', 2),
(20, '2018_03_11_000000_add_user_settings', 2),
(21, '2018_03_14_000000_add_details_to_data_types_table', 2),
(22, '2018_03_16_000000_make_settings_value_nullable', 2),
(23, '2016_01_01_000000_create_pages_table', 3),
(24, '2016_01_01_000000_create_posts_table', 3),
(25, '2016_02_15_204651_create_categories_table', 3),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `nowostis`
--

CREATE TABLE `nowostis` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `nowostis`
--

INSERT INTO `nowostis` (`id`, `title`, `slug`, `meta_description`, `meta_keywords`, `body`, `status`, `foto1`, `foto2`, `foto3`, `created_at`, `updated_at`) VALUES
(1, 'Первая новость', 'pervaya-novost', 'Очень важная', 'th treg реу', '<p>lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem&nbsp;</p>', 'ACTIVE', 'nowostis\\April2019\\UIAWOzSmQfzmnjAjFEAc.jpg', 'nowostis\\April2019\\v7ap6QaoefSpVyp7gBZ0.jpg', 'nowostis\\April2019\\HcBLVcgkaflhdoJaZtmt.jpg', '2019-04-19 06:49:06', '2019-04-19 06:49:06'),
(2, 'Новость два тоже доволно важная', 'novost-dva-tozhe-dovolno-vazhnaya', 'Новость два тоже даволно важная Очень важная', NULL, '<p>Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная м Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная Новость два тоже даволно важная Очень важная</p>', 'INACTIVE', 'nowostis\\April2019\\r35vqeEz7wLx6MTy8dSk.png', 'nowostis\\April2019\\GZJxZQgis5k8kNcadOF5.png', 'nowostis\\April2019\\Eq92HlekfvRVTegstB86.jpg', '2019-04-22 08:33:11', '2019-04-22 08:33:11'),
(3, 'Marine Engineering/ Sea Ship Navigatio', 'marine-engineering-sea-ship-navigatio', 'Третья и наверное нужная новость', 'th treg реу', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Pellentesque elit eget gravida cum sociis natoque penatibus et magnis. Quisque sagittis purus sit amet. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Metus vulputate eu scelerisque felis. Gravida rutrum quisque non tellus orci ac auctor. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque. Sollicitudin tempor id eu nisl nunc mi ipsum faucibus vitae. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Congue eu consequat ac felis. Eget egestas purus viverra accumsan in. Duis tristique sollicitudin nibh sit amet. Et ultrices neque ornare aenean. Iaculis nunc sed augue lacus viverra vitae congue. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi.</p>\r\n<p>Vehicula ipsum a arcu cursus vitae congue. Eros in cursus turpis massa tincidunt dui ut. Mattis nunc sed blandit libero volutpat sed cras ornare. Sit amet consectetur adipiscing elit. Varius duis at consectetur lorem. Nec dui nunc mattis enim. Sit amet volutpat consequat mauris nunc congue. Elit duis tristique sollicitudin nibh sit amet commodo. Enim ut tellus elementum sagittis vitae et. Tellus id interdum velit laoreet id donec. Gravida in fermentum et sollicitudin. Sed ullamcorper morbi tincidunt ornare massa eget. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum. Praesent semper feugiat nibh sed pulvinar. Amet nisl purus in mollis nunc sed. Pretium fusce id velit ut. Vitae congue eu consequat ac felis donec. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Nisi est sit amet facilisis magna etiam. Donec massa sapien faucibus et molestie ac feugiat sed. Ipsum dolor sit amet consectetur adipiscing elit. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Quam vulputate dignissim suspendisse in est ante in nibh mauris. Ut placerat orci nulla pellentesque dignissim enim sit amet. Velit egestas dui id ornare arcu odio ut sem.</p>\r\n<p>Eu nisl nunc mi ipsum faucibus vitae. Tellus cras adipiscing enim eu turpis egestas. Varius quam quisque id diam. In hendrerit gravida rutrum quisque non. Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Blandit turpis cursus in hac. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Facilisis sed odio morbi quis commodo odio aenean. Curabitur gravida arcu ac tortor. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci. Rutrum quisque non tellus orci ac auctor. Imperdiet massa tincidunt nunc pulvinar sapien. Consequat interdum varius sit amet mattis vulputate enim nulla aliquet. Pellentesque habitant morbi tristique senectus. Interdum varius sit amet mattis vulputate enim nulla aliquet porttitor. Venenatis urna cursus eget nunc scelerisque viverra mauris in. Adipiscing at in tellus integer feugiat. Massa tempor nec feugiat nisl pretium fusce id velit. Ut aliquam purus sit amet luctus venenatis lectus. Porta lorem mollis aliquam ut porttitor leo. Lorem ipsum dolor sit amet. Luctus venenatis lectus magna fringilla urna porttitor rhoncus. Potenti nullam ac tortor vitae purus faucibus. In ornare quam viverra orci.</p>\r\n<p>Consequat mauris nunc congue nisi vitae suscipit tellus mauris a. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Non curabitur gravida arcu ac tortor dignissim. Iaculis urna id volutpat lacus laoreet non. Adipiscing tristique risus nec feugiat in fermentum posuere. Nibh cras pulvinar mattis nunc sed blandit libero. Nisl suscipit adipiscing bibendum est ultricies. Nullam non nisi est sit amet facilisis magna etiam tempor. Sagittis orci a scelerisque purus semper. Cursus sit amet dictum sit amet justo donec enim. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Quisque egestas diam in arcu cursus euismod quis viverra nibh.</p>', 'INACTIVE', 'nowostis\\April2019\\Rgny2BRNwtguYu3i9Hxl.jpg', 'nowostis\\April2019\\nqytaG7cBP7Urgot2qfF.jpg', 'nowostis\\April2019\\EB9gx0iw1UJR2vQpew1d.jpg', '2019-04-25 06:48:21', '2019-04-25 06:48:21'),
(4, 'Получили новую продукцию', 'poluchili-novuyu-produkciyu', 'За последннее время это один из важнейших факторов', NULL, '<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Pellentesque elit eget gravida cum sociis natoque penatibus et magnis. Quisque sagittis purus sit amet. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Metus vulputate eu scelerisque felis. Gravida rutrum quisque non tellus orci ac auctor. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque. Sollicitudin tempor id eu nisl nunc mi ipsum faucibus vitae. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Congue eu consequat ac felis.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Eget egestas purus viverra accumsan in. Duis tristique sollicitudin nibh sit amet. Et ultrices neque ornare aenean. Iaculis nunc sed augue lacus viverra vitae congue. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi. Vehicula ipsum a arcu cursus vitae congue. Eros in cursus turpis massa tincidunt dui ut. Mattis nunc sed blandit libero volutpat sed cras ornare. Sit amet consectetur adipiscing elit. Varius duis at consectetur lorem. Nec dui nunc mattis enim. Sit amet volutpat consequat mauris nunc congue. Elit duis tristique sollicitudin nibh sit amet commodo. Enim ut tellus elementum sagittis vitae et. Tellus id interdum velit laoreet id donec. Gravida in fermentum et sollicitudin. Sed ullamcorper morbi tincidunt ornare massa eget.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Non quam lacus suspendisse faucibus interdum posuere lorem ipsum. Praesent semper feugiat nibh sed pulvinar. Amet nisl purus in mollis nunc sed. Pretium fusce id velit ut. Vitae congue eu consequat ac felis donec. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Nisi est sit amet facilisis magna etiam. Donec massa sapien faucibus et molestie ac feugiat sed. Ipsum dolor sit amet consectetur adipiscing elit. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Quam vulputate dignissim suspendisse in est ante in nibh mauris. Ut placerat orci nulla pellentesque dignissim enim sit amet. Velit egestas dui id ornare arcu odio ut sem. Eu nisl nunc mi ipsum faucibus vitae. Tellus cras adipiscing enim eu turpis egestas. Varius quam quisque id diam. In hendrerit gravida rutrum quisque non.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Blandit turpis cursus in hac. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Facilisis sed odio morbi quis commodo odio aenean. Curabitur gravida arcu ac tortor. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci. Rutrum quisque non tellus orci ac auctor. Imperdiet massa tincidunt nunc pulvinar sapien. Consequat interdum varius sit amet mattis vulputate enim nulla aliquet. Pellentesque habitant morbi tristique senectus. Interdum varius sit amet mattis vulputate enim nulla aliquet porttitor. Venenatis urna cursus eget nunc scelerisque viverra mauris in. Adipiscing at in tellus integer feugiat. Massa tempor nec feugiat nisl pretium fusce id velit. Ut aliquam purus sit amet luctus venenatis lectus. Porta lorem mollis aliquam ut porttitor leo.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Lorem ipsum dolor sit amet. Luctus venenatis lectus magna fringilla urna porttitor rhoncus. Potenti nullam ac tortor vitae purus faucibus. In ornare quam viverra orci. Consequat mauris nunc congue nisi vitae suscipit tellus mauris a. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Non curabitur gravida arcu ac tortor dignissim. Iaculis urna id volutpat lacus laoreet non. Adipiscing tristique risus nec feugiat in fermentum posuere. Nibh cras pulvinar mattis nunc sed blandit libero. Nisl suscipit adipiscing bibendum est ultricies. Nullam non nisi est sit amet facilisis magna etiam tempor. Sagittis orci a scelerisque purus semper. Cursus sit amet dictum sit amet justo donec enim. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Quisque egestas diam in arcu cursus euismod quis viverra nibh.</p>', 'INACTIVE', 'nowostis\\April2019\\t0NYeyyLB9sPfM0B3HaI.jpg', 'nowostis\\April2019\\dYGLYKfSNIKuuwvHz4xD.jpg', 'nowostis\\April2019\\unYgKI5AZvg0v7nV0Bk4.jpg', '2019-04-25 06:50:29', '2019-04-25 06:50:29'),
(5, 'Поситили выстовку', 'positili-vystovku', 'В мае наша компания посетила очень важное мероприятие', NULL, '<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Pellentesque elit eget gravida cum sociis natoque penatibus et magnis. Quisque sagittis purus sit amet. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Metus vulputate eu scelerisque felis. Gravida rutrum quisque non tellus orci ac auctor. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque. Sollicitudin tempor id eu nisl nunc mi ipsum faucibus vitae. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Congue eu consequat ac felis.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Eget egestas purus viverra accumsan in. Duis tristique sollicitudin nibh sit amet. Et ultrices neque ornare aenean. Iaculis nunc sed augue lacus viverra vitae congue. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi. Vehicula ipsum a arcu cursus vitae congue. Eros in cursus turpis massa tincidunt dui ut. Mattis nunc sed blandit libero volutpat sed cras ornare. Sit amet consectetur adipiscing elit. Varius duis at consectetur lorem. Nec dui nunc mattis enim. Sit amet volutpat consequat mauris nunc congue. Elit duis tristique sollicitudin nibh sit amet commodo. Enim ut tellus elementum sagittis vitae et. Tellus id interdum velit laoreet id donec. Gravida in fermentum et sollicitudin. Sed ullamcorper morbi tincidunt ornare massa eget.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Non quam lacus suspendisse faucibus interdum posuere lorem ipsum. Praesent semper feugiat nibh sed pulvinar. Amet nisl purus in mollis nunc sed. Pretium fusce id velit ut. Vitae congue eu consequat ac felis donec. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus. Nisi est sit amet facilisis magna etiam. Donec massa sapien faucibus et molestie ac feugiat sed. Ipsum dolor sit amet consectetur adipiscing elit. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Quam vulputate dignissim suspendisse in est ante in nibh mauris. Ut placerat orci nulla pellentesque dignissim enim sit amet. Velit egestas dui id ornare arcu odio ut sem. Eu nisl nunc mi ipsum faucibus vitae. Tellus cras adipiscing enim eu turpis egestas. Varius quam quisque id diam. In hendrerit gravida rutrum quisque non.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Blandit turpis cursus in hac. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Facilisis sed odio morbi quis commodo odio aenean. Curabitur gravida arcu ac tortor. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci. Rutrum quisque non tellus orci ac auctor. Imperdiet massa tincidunt nunc pulvinar sapien. Consequat interdum varius sit amet mattis vulputate enim nulla aliquet. Pellentesque habitant morbi tristique senectus. Interdum varius sit amet mattis vulputate enim nulla aliquet porttitor. Venenatis urna cursus eget nunc scelerisque viverra mauris in. Adipiscing at in tellus integer feugiat. Massa tempor nec feugiat nisl pretium fusce id velit. Ut aliquam purus sit amet luctus venenatis lectus. Porta lorem mollis aliquam ut porttitor leo.</p>\r\n<p style=\"-webkit-tap-highlight-color: transparent; box-sizing: border-box; margin-top: 1.5em; margin-bottom: 1.5em; color: #7b8898; font-size: 1.1875em; font-family: \'Mercury SSm A\', \'Mercury SSm B\', Georgia, Times, \'Times New Roman\', \'Microsoft YaHei New\', \'Microsoft Yahei\', 微软雅黑, 宋体, SimSun, STXihei, 华文细黑, serif; line-height: 1.5; animation: fadeInLorem 1000ms linear 0s 1 normal none running; background-color: #556271;\">Lorem ipsum dolor sit amet. Luctus venenatis lectus magna fringilla urna porttitor rhoncus. Potenti nullam ac tortor vitae purus faucibus. In ornare quam viverra orci. Consequat mauris nunc congue nisi vitae suscipit tellus mauris a. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et. Non curabitur gravida arcu ac tortor dignissim. Iaculis urna id volutpat lacus laoreet non. Adipiscing tristique risus nec feugiat in fermentum posuere. Nibh cras pulvinar mattis nunc sed blandit libero. Nisl suscipit adipiscing bibendum est ultricies. Nullam non nisi est sit amet facilisis magna etiam tempor. Sagittis orci a scelerisque purus semper. Cursus sit amet dictum sit amet justo donec enim. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Nisl tincidunt eget nullam non nisi est sit amet facilisis. Quisque egestas diam in arcu cursus euismod quis viverra nibh.</p>', 'INACTIVE', 'nowostis\\April2019\\J61sGfW97ChOmpjHIKSE.jpg', 'nowostis\\April2019\\SoTjNSH2KORAvpaVIXdc.jpg', 'nowostis\\April2019\\4MYukuNbIepVVTWhWcfv.jpg', '2019-04-25 06:51:00', '2019-04-25 08:17:18');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<div class=\"container-fluid px-0 headder\">\r\n<div class=\"jumbotron-foto pt-4 pb-4\" style=\"background-color: rgba(98, 98, 98, 0.15); height: 600px;\"><img class=\"lazyy fonimg\" alt=\" \" data-src=\"images/fon-glavn-vverh.jpg\" />\r\n<div class=\"container\">\r\n<div class=\"zagolovok\" style=\"background-color: rgba(255, 255, 255, 0.6196078431372549);\">\r\n<div class=\"h1block\">\r\n<h1><span class=\"gradient-text\">Study in Ukraine - it is</span></h1>\r\n<div class=\"textpodh1\">\r\n<p><img src=\"http://volosi.loc//storage/pages/April2019/logo-demo.png\" alt=\"\" />Our company provides a full cycle of training in Ukraine under the key, the official certificate of the Ministry of Education, etc., etc., we need to come up with a text about the same size that is written about the company in just four lines</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<section>\r\n<div class=\"container-fluid\">\r\n<div class=\"container pt-5\">\r\n<div id=\"counter\">\r\n<div class=\"chetireblokadiv\">\r\n<div class=\"chetirebloka center \"><img class=\"krug240 lazyy\" alt=\"работы\" data-src=\"images/study-in-ukraine-krug1.jpg\" />\r\n<div class=\"counter\">\r\n<p class=\"counter-value\" data-count=\"12\">0</p>\r\n</div>\r\n<div class=\"chetireblokatext\">\r\n<h3>years we help<br />our clients<br />to study in Ukraine</h3>\r\n</div>\r\n</div>\r\n<div class=\"chetirebloka center\"><img class=\"krug240 lazyy\" alt=\"сайтов\" data-src=\"images/study-in-ukraine-krug2.jpg\" />\r\n<div class=\"counter\">\r\n<p class=\"counter-value\" data-count=\"18\">0</p>\r\n</div>\r\n<div class=\"chetireblokatext\">\r\n<h3>PHD specialists<br />graduated with<br />our help</h3>\r\n</div>\r\n</div>\r\n<div class=\"chetirebloka center\"><img class=\"krug240 lazyy\" alt=\"рсов\" data-src=\"images/study-in-ukraine-krug3.jpg\" />\r\n<div class=\"counter\">\r\n<p class=\"counter-value\" data-count=\"226\">0</p>\r\n</div>\r\n<div class=\"chetireblokatext\">\r\n<h3>masters we<br />helped get<br />education</h3>\r\n</div>\r\n</div>\r\n<div class=\"chetirebloka center\"><img class=\"krug240 lazyy\" alt=\"код HTML\" data-src=\"images/study-in-ukraine-krug4.jpg\" />\r\n<div class=\"counter\">\r\n<p class=\"counter-value\" data-count=\"880\">0</p>\r\n</div>\r\n<div class=\"chetireblokatext\">\r\n<h3>bachelors graduated<br />from universities<br />thanks to us</h3>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section>\r\n<div class=\"jumbotron-video pb-xl-5\" style=\"background-color: rgba(0, 0, 0, 0.25);\"><video class=\"lazyyyy\" autoplay=\"autoplay\" loop=\"loop\" muted=\"\">\r\n            \r\n            \r\n        </video>\r\n<div class=\"container pt-2 pb-2 pt-md-5 pb-md-5\">\r\n<h2 class=\"text-uppercase text-center gradient-text-h2 mt-5\">6 REASONS TO CHOOSE US FOR study IN UKRAINE</h2>\r\n<p class=\"p-h2-fon\" style=\"color: rgba(161, 161, 161, 0.09)!important;\">6 REASONS study IN UKRAINE</p>\r\n<div class=\"d-flex flex-wrap justify-content-center justify-content-sm-between mt-5 mb5\">\r\n<div class=\"mt-2 mb-2 prichini notAnimated animateBlock leftAlign left\">\r\n<h3>01</h3>\r\n<h4>Recommendations on document basis</h4>\r\n<p>You fill in the form on the site and send us photographs of documents and knowledge after which we advise you</p>\r\n</div>\r\n<div class=\"mt-2 mb-2 prichini\">\r\n<h3>02</h3>\r\n<h4>Fast clearance invitations 3-4 days</h4>\r\n<p>If you choose our training company you don\'t have to wait for the invitation for long, all documents, we will quickly arrange</p>\r\n</div>\r\n<div class=\"mt-2 mb-2 prichini notAnimated animateBlock leftAlign right\">\r\n<h3>03</h3>\r\n<h4>Escort in getting a visa</h4>\r\n<p>We call for our students help in obtaining a visa at the Embassy of Ukraine in your country of residence</p>\r\n</div>\r\n<div class=\"mt-2 mb-2 prichini notAnimated animateBlock leftAlign left\">\r\n<h3>04</h3>\r\n<h4>Buying advice tickets to Ukraine</h4>\r\n<p>Meeting and transfer from the airport to the place accommodation, recommendations for optimal route to the territory of Ukraine</p>\r\n</div>\r\n<div class=\"mt-2 mb-2 prichini\">\r\n<h3>05</h3>\r\n<h4>Documents housing and education</h4>\r\n<p>We will arrange the entire package of papers required for temporary residence and learning in high school of Ukraine</p>\r\n</div>\r\n<div class=\"mt-2 mb-2 prichini notAnimated animateBlock leftAlign right\">\r\n<h3>06</h3>\r\n<h4>Maintenance until the end of training</h4>\r\n<p>All the while you study in Ukraine, from the beginning to the receipt of a scientist degree we will help you</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section>\r\n<div class=\"container-fluid overflow-hidden pt-2 pb-2 pt-md-5 pb-md-2 px-0\" style=\"background-color: #f8f8f8;\">\r\n<div class=\"container\">\r\n<div class=\"d-flex justify-content-center mt-5\">\r\n<div class=\"col-12 col-sm-10 col-md-9 col-lg-9 col-xl-8\"><video id=\"video1\" class=\"lazyy\" style=\"width: 100%; display: block; margin: 0 auto;\" autoplay=\"autoplay\" muted=\"\" controls=\"controls\">\r\n                        \r\n                        \r\n                    </video> <button id=\"mute-video\" style=\"width: 80px; padding: 8px; margin: 45px auto; display: block; background-color: #a7deac; border-width: 0; cursor: pointer; color: white; font-size: 0.7em;\" type=\"button\"><img class=\"lazyyy\" style=\"margin-bottom: 8px;\" alt=\"кнопка включения видео\" data-src=\"video/volume-on.gif\" />sound on </button></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<section>\r\n<div class=\"container-fluid px-0\">\r\n<div class=\"jumbotron-foto pt-4 pb-4\" style=\"background-color: rgba(98, 98, 98, 0.15); min-height: 850px;\"><img class=\"lazyy fonimg\" alt=\"study in Ukraine background\" data-src=\"images/fon-price.jpg\" />\r\n<div class=\"container\">\r\n<div class=\"fotoprice mx-auto p-3 position-relative bg-white\">\r\n<div class=\"fotopricepaket notAnimated animateBlock leftAlign left\">\r\n<h6>Package № 1<br />preparatory<br />department</h6>\r\n</div>\r\n<div class=\"fotopricesposok ull\">\r\n<ul>\r\n<li>Personal agent</li>\r\n<li>1 year temporary residence</li>\r\n<li>1 year stay in a university dormitory</li>\r\n<li>1 year of medical insurance in Ukraine</li>\r\n<li>Full medical examination in Ukraine</li>\r\n<li>Transfer and meeting at the airport</li>\r\n<li>Full support during the whole training</li>\r\n</ul>\r\n</div>\r\n<div class=\"fotopricetsena notAnimated animateBlock leftAlign right\">\r\n<h5>from <span class=\"spann\">$</span>2100</h5>\r\n<p>For the full course with<br />issuance of a certificate</p>\r\n</div>\r\n</div>\r\n<div class=\"fotoprice mx-auto p-3 position-relative bg-white\">\r\n<div class=\"fotopricepaket notAnimated animateBlock leftAlign left\">\r\n<h6>Package № 2<br />bachelor</h6>\r\n</div>\r\n<div class=\"fotopricesposok ull\">\r\n<ul>\r\n<li>Personal agent</li>\r\n<li>4 year temporary residence</li>\r\n<li>1 year stay in a university dormitory</li>\r\n<li>4 year of medical insurance in Ukraine</li>\r\n<li>Full medical examination in Ukraine</li>\r\n<li>Transfer and meeting at the airport</li>\r\n<li>Full support during the whole training</li>\r\n</ul>\r\n</div>\r\n<div class=\"fotopricetsena notAnimated animateBlock leftAlign right\">\r\n<h5>from <span class=\"spann\">$</span>2800</h5>\r\n<p>Cost of education<br />in Ukraine for 1 year</p>\r\n</div>\r\n</div>\r\n<div class=\"fotoprice mx-auto p-3 position-relative bg-white\">\r\n<div class=\"fotopricepaket notAnimated animateBlock leftAlign left\">\r\n<h6>Package № 3<br />master of ...</h6>\r\n</div>\r\n<div class=\"fotopricesposok ull\">\r\n<ul>\r\n<li>Personal agent</li>\r\n<li>2 year temporary residence</li>\r\n<li>1 year stay in a university dormitory</li>\r\n<li>2 year of medical insurance in Ukraine</li>\r\n<li>Full medical examination in Ukraine</li>\r\n<li>Transfer and meeting at the airport</li>\r\n<li>Full support during the whole training</li>\r\n</ul>\r\n</div>\r\n<div class=\"fotopricetsena notAnimated animateBlock leftAlign right\">\r\n<h5>from <span class=\"spann\">$</span>2000</h5>\r\n<p>Cost of education<br />in Ukraine for 1 year</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<div class=\"container-fluid pt-5 pb-5\" style=\"background-color: #f7f7f7;\">\r\n<h2 class=\"text-uppercase text-center gradient-text-h2 mt-5\">popular universities for study in Ukraine</h2>\r\n<p class=\"p-h2-fon\" style=\"color: rgba(209, 209, 209, 0.34)!important;\">universities for study in Ukraine</p>\r\n<div class=\"container mt-3\">\r\n<div class=\"d-flex flex-wrap justify-content-center justify-content-sm-between\">\r\n<div class=\"vizi m-3 position-relative\"><img class=\"lazyy m-3\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-vuz-3.jpg\" />\r\n<p>National technical<br />university of Ukraine</p>\r\n<div class=\"vizilink\">\r\n<p>more info</p>\r\n</div>\r\n</div>\r\n<div class=\"vizi m-3 position-relative\"><img class=\"lazyy m-3\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-vuz-1.jpg\" />\r\n<p>Karazin Kharkov<br />national university</p>\r\n<div class=\"vizilink\">\r\n<p>more info</p>\r\n</div>\r\n</div>\r\n<div class=\"vizi m-3 position-relative\"><img class=\"lazyy m-3\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-vuz-2.jpg\" />\r\n<p>Kharkiv National<br />Medical University</p>\r\n<div class=\"vizilink\">\r\n<p>more info</p>\r\n</div>\r\n</div>\r\n<div class=\"vizi m-3 position-relative\"><img class=\"lazyy m-3\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-vuz-4.jpg\" />\r\n<p>National aerospace<br />university</p>\r\n<div class=\"vizilink\">\r\n<p>more info</p>\r\n</div>\r\n</div>\r\n<div class=\"vizi m-3 position-relative\"><img class=\"lazyy m-3\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-vuz-5.jpg\" />\r\n<p>National pharmacy<br />university of Ukraine</p>\r\n<div class=\"vizilink\">\r\n<p>more info</p>\r\n</div>\r\n</div>\r\n<div class=\"vizi m-3 position-relative\"><img class=\"lazyy m-3\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-vuz-6.jpg\" />\r\n<p>National university<br />of economics</p>\r\n<div class=\"vizilink\">\r\n<p>more info</p>\r\n</div>\r\n</div>\r\n<div style=\"width: 210px; height: 45px; margin: 50px auto; padding: 10px; background-color: #084d39;\"><a style=\"font-family: \'Trebuchet MS\', sans-serif; color: white; text-transform: uppercase; margin: 0 0 0 38px; font-size: 0.95em;\" href=\"university\">all universities</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid px-0\">\r\n<div class=\"jumbotron-foto pt-4 pb-4\" style=\"background-color: rgba(98, 98, 98, 0.15); height: 400px;\"><img class=\"lazyy fonimg\" alt=\"study in Ukranr background\" data-src=\"images/fon-aktsia.jpg\" />\r\n<div class=\"container\">\r\n<div class=\"zagolovokform\" style=\"background-color: rgba(255, 255, 255, 0.6196078431372549);\">\r\n<div class=\"h1block\">\r\n<h2 style=\"color: #009c48 !important; text-align: center; margin-top: 12px;\">Ноt deal</h2>\r\n<div style=\"margin-top: 29px; color: #545454; font-size: 15px;\">\r\n<p>Fill out the form now and get a discount on paperwork for study in Ukraine from our company</p>\r\n</div>\r\n<div class=\"hotdealbootonn\">\r\n<div class=\"hotdealbooton\">fill in the form</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid px-0 py-5\" style=\"background-color: #f7f7f7;\">\r\n<h2 class=\"text-uppercase text-center gradient-text-h2 mt-5\">choose a profession</h2>\r\n<p class=\"p-h2-fon\" style=\"color: rgba(209, 209, 209, 0.34)!important;\">choose a profession</p>\r\n<div class=\"container my-4\">\r\n<div class=\"d-flex flex-wrap justify-content-center justify-content-sm-between\">\r\n<div class=\"proff position-relative\"><img class=\"lazyy\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"../images/study-in-ukraine-ingenir.jpg\" />\r\n<p>Engineering courses</p>\r\n<div class=\"profflink\"><a href=\"professions\">more info</a></div>\r\n</div>\r\n<div class=\"proff position-relative\"><img class=\"lazyy\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-doctor.jpg\" />\r\n<p>Medical courses</p>\r\n<div class=\"profflink\"><a href=\"professions\">more info</a></div>\r\n</div>\r\n<div class=\"proff position-relative\"><img class=\"lazyy\" style=\"display: inline;\" alt=\"study in ukraine vuz\" data-src=\"images/study-in-ukraine-buissnes.jpg\" />\r\n<p>Business/Economics/Tourism Management</p>\r\n<div class=\"profflink\"><a href=\"professions\">more info</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid px-0\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-lg-6 mx-auto mt-3 mb-5\">\r\n<div id=\"fb-root\">&nbsp;</div>\r\n<div id=\"comments\" class=\"fb-comments\" style=\"width: 100%;\" data-href=\"https://corp.loc/\" data-numposts=\"3\" data-colorscheme=\"light\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'pages/page1.jpg', 'index', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-04-18 07:43:58', '2019-04-20 07:53:24'),
(2, 1, 'О нас', 'О насО насО насО насО насО насО насО насО насО насО насО насО насО насО насО насО нас', '<section>\r\n<div class=\"container-fluid\">\r\n<div class=\"container mt-5\"><!-- Three columns of text below the carousel -->\r\n<div class=\"row text-center mt-5 justify-content-between\">\r\n<div class=\"col-12 col-lg-3 p-2\"><img class=\"krug240\" src=\"images/study-in-ukraine-krug1.jpg\" alt=\"работы\" />\r\n<h2 class=\"my-3\">Heading</h2>\r\n<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n</div>\r\n<!-- /.col-lg-4 -->\r\n<div class=\"col-12 col-lg-3 p-2\"><img class=\"krug240\" src=\"images/study-in-ukraine-krug2.jpg\" alt=\"работы\" />\r\n<h2 class=\"my-3\">Heading</h2>\r\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus</p>\r\n</div>\r\n<!-- /.col-lg-4 -->\r\n<div class=\"col-12 col-lg-3 p-2\"><img class=\"krug240\" src=\"images/study-in-ukraine-krug3.jpg\" alt=\"работы\" />\r\n<h2 class=\"my-3\">Heading</h2>\r\n<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod</p>\r\n</div>\r\n<!-- /.col-lg-4 --></div>\r\n<!-- /.row --> <!-- START THE FEATURETTES --><hr class=\"featurette-divider\" />\r\n<div class=\"row featurette\">\r\n<div class=\"col-md-7 align-self-center statitext\">\r\n<h2 class=\"featurette-heading mb-4\">Создание сайтов,<span class=\"text-muted\">от лендинг страницы до магазина</span></h2>\r\n<p class=\"lead\">Мы знаем 14 секретов успешного создания сайта ! За многие годы успешной работы на рынке веб дизайна наша веб студия приобрела огромнейший опыт, что позволяет нам разрабатывать сайты быстро и эффективно.</p>\r\n</div>\r\n<div class=\"col-md-5\"><img class=\"mx-auto\" style=\"width: 500px; height: 500px;\" src=\"http://volosi.loc//storage/nowostis/April2019/Rgny2BRNwtguYu3i9Hxl-medium.jpg\" /></div>\r\n</div>\r\n<hr class=\"featurette-divider\" />\r\n<div class=\"row featurette\">\r\n<div class=\"col-md-7 order-md-2 align-self-center statitext\">\r\n<h2 class=\"featurette-heading mb-4\">Оптимизация сайта <span class=\"text-muted\">под экраны мобильных устройств</span></h2>\r\n<p class=\"lead\">Немаловажно в нынешнее время корректная работа на экранах смартфонов и планшетов. Если вам нужно создать сайт с адаптивным дизайном в Харькове, наши специалисты, используя самые передовые технологии.</p>\r\n</div>\r\n<div class=\"col-md-5 order-md-1\"><img class=\"mx-auto\" style=\"width: 500px; height: 500px;\" src=\"http://volosi.loc//storage/nowostis/April2019/Rgny2BRNwtguYu3i9Hxl-medium.jpg\" /></div>\r\n</div>\r\n<hr class=\"featurette-divider\" />\r\n<div class=\"row featurette\">\r\n<div class=\"col-md-7 align-self-center statitext\">\r\n<h2 class=\"featurette-heading mb-4\">Делаем сайты с эксклюзивным интерфейсом <span class=\"text-muted\">и дизайном</span></h2>\r\n<p class=\"lead\">Невозможно разработать сайт, который будет успешно работать и продавать на шаблоне! Проектирование дружественного интерфейса и уникального оформления - задача наших опытных дизайнеров.</p>\r\n</div>\r\n<div class=\"col-md-5\"><img class=\"mx-auto\" style=\"width: 500px; height: 500px;\" src=\"http://volosi.loc//storage/nowostis/April2019/Rgny2BRNwtguYu3i9Hxl-medium.jpg\" /></div>\r\n</div>\r\n<!-- /END THE FEATURETTES --></div>\r\n</div>\r\n</section>', 'pages\\April2019\\XDE0SkAAWENfCxN8ULQU.jpg', 'o-nas', 'Очень важная', 'th treg реу', 'INACTIVE', '2019-04-19 08:01:24', '2019-04-30 09:44:35');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(2, 'browse_bread', NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(3, 'browse_database', NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(4, 'browse_media', NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(5, 'browse_compass', NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(6, 'browse_menus', 'menus', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(7, 'read_menus', 'menus', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(8, 'edit_menus', 'menus', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(9, 'add_menus', 'menus', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(10, 'delete_menus', 'menus', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(11, 'browse_roles', 'roles', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(12, 'read_roles', 'roles', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(13, 'edit_roles', 'roles', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(14, 'add_roles', 'roles', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(15, 'delete_roles', 'roles', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(16, 'browse_users', 'users', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(17, 'read_users', 'users', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(18, 'edit_users', 'users', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(19, 'add_users', 'users', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(20, 'delete_users', 'users', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(21, 'browse_settings', 'settings', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(22, 'read_settings', 'settings', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(23, 'edit_settings', 'settings', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(24, 'add_settings', 'settings', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(25, 'delete_settings', 'settings', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(26, 'browse_categories', 'categories', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(27, 'read_categories', 'categories', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(28, 'edit_categories', 'categories', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(29, 'add_categories', 'categories', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(30, 'delete_categories', 'categories', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(36, 'browse_pages', 'pages', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(37, 'read_pages', 'pages', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(38, 'edit_pages', 'pages', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(39, 'add_pages', 'pages', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(40, 'delete_pages', 'pages', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(41, 'browse_nowostis', 'nowostis', '2019-04-19 06:43:24', '2019-04-19 06:43:24'),
(42, 'read_nowostis', 'nowostis', '2019-04-19 06:43:24', '2019-04-19 06:43:24'),
(43, 'edit_nowostis', 'nowostis', '2019-04-19 06:43:24', '2019-04-19 06:43:24'),
(44, 'add_nowostis', 'nowostis', '2019-04-19 06:43:24', '2019-04-19 06:43:24'),
(45, 'delete_nowostis', 'nowostis', '2019-04-19 06:43:24', '2019-04-19 06:43:24'),
(46, 'browse_tovari', 'tovari', '2019-04-26 06:29:48', '2019-04-26 06:29:48'),
(47, 'read_tovari', 'tovari', '2019-04-26 06:29:48', '2019-04-26 06:29:48'),
(48, 'edit_tovari', 'tovari', '2019-04-26 06:29:48', '2019-04-26 06:29:48'),
(49, 'add_tovari', 'tovari', '2019-04-26 06:29:48', '2019-04-26 06:29:48'),
(50, 'delete_tovari', 'tovari', '2019-04-26 06:29:48', '2019-04-26 06:29:48');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Администратор', '2019-04-18 07:43:58', '2019-04-18 07:43:58'),
(2, 'user', 'Обычный Пользователь', '2019-04-18 07:43:58', '2019-04-18 07:43:58');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Название Сайта', 'Сайт компании око', '', 'text', 1, 'Site'),
(2, 'site.description', 'Описание Сайта', 'Описание Сайта', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Логотип Сайта', 'settings\\April2019\\4nEmilTIv4IfKRwk68Lz.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Фоновое Изображение для Админки', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Название Админки', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Описание Админки', 'Добро пожаловать в Voyager. Пропавшую Админку для Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Загрузчик Админки', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Иконка Админки', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (используется для панели администратора)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.sots_ikonki', 'Иконки', '<a href=\"viber://add?number=3809500000\" target=\"_blank\" rel=\"noopener\" title=\"Задай вопрос в о создании сайтов через viber\">\r\n    <div class=\"sprite headerrline_sontsiconki_viber\"></div>\r\n</a>\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\" title=\"Задай вопрос о создании сайтов через чат в telegram\">\r\n    <div class=\"sprite headerrline_sontsiconki_telegram\"></div>\r\n</a>\r\n<a href=\"https://api.whatsapp.com/send?phone=3809500000\" target=\"_blank\" rel=\"noopener\" title=\"Задай вопрос о создании сайтов через whatsapp\">\r\n    <div class=\"sprite headerrline_sontsiconki_wats\"></div>\r\n</a>\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\" title=\"Задай вопрос о создании сайтов через massanger\">\r\n    <div class=\"sprite headerrline_sontsiconki_facebook\"></div>\r\n</a>\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\" title=\"Задай вопрос о создании сайтов через instagram\">\r\n    <div class=\"sprite headerrline_sontsiconki_instagram\"></div>\r\n</a>', NULL, 'code_editor', 6, 'Site'),
(13, 'site.tel_one', 'Телефон1', '+38 (095) 204-57-58', NULL, 'text', 7, 'Site'),
(15, 'site.tel_two', 'Телефон2', '+38 (093) 574-45-25', NULL, 'text', 8, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `tovari`
--

CREATE TABLE `tovari` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harakteristic` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovari`
--

INSERT INTO `tovari` (`id`, `category_id`, `title`, `price`, `new_price`, `body`, `image`, `slug`, `img3`, `img2`, `img4`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `harakteristic`) VALUES
(5, 'holodilniki', 'Холодильник норд mp-34', '5600', NULL, '<p>Объём холодильной камеры Основное место хранения продуктов - холодильное отделение. Соответственно чем больше его объем, тем больше продуктов вы сможете в нем разместить 171 л Объём морозильной камеры Если вы предпочитаете сохранять продукты в замороженном виде, то выбирайте морозильное отделение побольше. 42 л Класс энергопотребления Класс энергопотребления &ndash; это количество электроэнергии, которое потребляет устройство во время использования. Использование более энергоэффективной техники позволит Вам сэкономить средства на потреблении электроэнергии. A+ Система охлаждения холодильной камеры Статическая Статическая система - это система охлаждения, при которой во время остановки работы компрессора на задней стенке холодильника образуется влага, которая стекает в специальную емкость и затем испаряется. Эта система позволяет сохранить высокую степень влажности в холодильной и морозильной камерах. Система охлаждения морозильной камеры Статическая Статическая система - это система охлаждения, при которой во время остановки работы компрессора на задней стенке холодильника образуется влага, которая стекает в специальную емкость и затем испаряется. Эта система позволяет сохранить высокую степень влажности в холодильной и морозильной камерах. Особенности Тип компрессора Компрессор сжимает и перекачивает пары хладагента в устройстве. Различают обычный (поршневой), линейный и инверторный компрессоры. Обычный компрессор работает циклично - включается при повышении температуры и отключается при достижении оптимальной. Принцип работы линейного компрессора похож, но за счет использования электромагнитной катушки удается снизить уровень шума и повысить энергоэффективность, т.к. диапазон выравниваемой температуры куда ниже, чем у обычного компрессора. Инверторный компрессор во время работы не отключается, а лишь снижает мощность работы. Таким образом сводится к нулю возможность его выхода из строя, повышается энергоэффективность, а работа его практически бесшумна. Обычный Обычный (поршневой) компрессор. Принцип работы простой: при достижении критически высокой температуры, он включается и охлаждает воздух. Как только температура опускается до оптимальной (заданной), компрессор отключается. Количество компрессоров Количество компрессоров холодильника позволяет сократить расходы на электроэнергию, а также раздельно управлять холодильным и морозильным отделениями. Например, полностью отключать одну из камер на период вашего отсутствия дома 1 Защита от скачков напряжения Выравнивает напряжение в сети во время его повышения или понижения. Это позволяет защитить технику от выхода из строя и продлить срок ее эксплуатации. Если техника не оборудована такой функцией, можно отдельно приобрести сетевую защиту http://comfy.ua/dnepropetrovsk/extenders-adapters/ Тип управления Влияет не только на стоимость техники, но и часто определяет насколько удобной и практичной она будет при использовании. Различают механическое управление, электронное, сенсорное, а также различные комбинации основных типов управления. Механическое Управление осуществляется при помощи поворотного колесика или переключателя. Пользователь механическими движениями, выбирает необходимый режим из предложенных производителем. Тип ручек Одна из характеристик на которую следует обратить внимание при выборе холодильника. У современных холодильников ручки могут быть скрытыми (интегрированными) или наружными. В небольшую кухню хорошо впишется холодильник со скрытыми ручками, в кухню побольше - с наружными. Если холодильником будут пользоваться дети, то также лучше отдать предпочтение последним. Скрытые Ручки, которые визуально незаметны на корпусе, их еще называют интегрированными. Они встроены в дверь холодильника и не выступают наружу. Холодильники с такой конструкцией ручек, отлично подойдут для небольших помещений. Расположение ручек Скрытие или наружные ручки холодильника также разделяются на горизонтальные и вертикальные. Бывает смешанный тип ручек, применяется в основном у многодверных моделей. Горизонтальные Ручки располагаются параллельно полу, чаще бывают скрытыми (интегрированными). Перевешиваемые двери Съемные двери, направление открытия которых можно изменить. В большинстве случаев, производители поставляют холодильники с правосторонним навесом двери. Если стена или расположение мебели не позволяет установить такой холодильник, тогда стоит обратить внимание на модели с возможностью перенавешивания двери. Технические особенности Наличие двух камер В холодильнике присутствует холодильное и морозильное отделения. Холодильное отделение Материал полок Практически все современные холодильники оборудованы стеклянными полками, металлические решетки встречаются реже. Стекло, как правило, используется закаленное, оно хорошо выдерживает перепады температур и высокую нагрузку. Такие полки красиво выглядят и хорошо пропускают свет. Полки в виде решеток встречаются в бюджетных моделях холодильников. Они также выдерживают высокие нагрузки кастрюлями, а еще способствуют вентиляции воздуха внутри отделения. Закалённое стекло Достаточно прочный, практичный и долговечный материал. Выдерживает перепады температур, высокие нагрузки, хорошо пропускает свет и является безопасным в случае повреждения. Такое стекло распадается на осколки с тупыми гранями, которые не способны нанести серьезные повреждения. Морозильное отделение Мощность замораживания Показывает какое количество продуктов способно заморозить морозильное отделение за сутки. Чем выше этот показатель, тем эффективнее работа отделения и тем больше продуктов вы сможете заморозить. 2 кг/сутки Технические характеристики Ширина 54 см Высота 144 см Глубина 57 см Уровень шума Достаточно важный параметр, на который следует обратить внимание при выборе техники. Максимально допустимый постоянный уровень шума составляет 40 - 55 дБ. Для разной техники установлены свои нормы, которые всегда соблюдаются производителями. 41 дБ Климатический класс Указывает на то, в каких широтах, выбранная модель холодильника, будет работать наиболее эффективно и долго. По международным стандартам различают следующие климатические классы: N &ndash; нормальный климатический класс: холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +16&deg;С до +32&deg;С; SN &ndash; субнормальный климатический класс : холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +10&deg;С до +32&deg;С; ST &ndash; субтропический климатический класс: холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +18 &deg;С до +38&deg;С; T &ndash; тропический: холодильники предназначены для работы при температуре окружающей среды от +18&deg;С до +43&deg;С. N-T Автономное сохранение холода Показатель, указывающий на то сколько времени холодильник/морозильная камера может сохранять необходимую для безопасного хранения продуктов температуру воздуха внутри морозильного и холодильного отделений, в случае обесточивания. При открывании двери, время поддержания температуры сокращается. До 12 часов Цвет производителя Белый Энергопотребление Показывает сколько электроэнергии потребляет холодильник за год. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 212 кВт/год Энергопотребление Показывает сколько электроэнергии потребляет холодильник в сутки. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 0,58 кВтч/сутки Комплектация Холодильник, ножки для выравнивания, инструкция, гарантийный талон Страна производства Турция Гарантийный срок 3 года Бренд Vestfrost</p>', 'posts\\April2019\\g2LAexaTVdzolWepFROf.jpg', 'holodil-nik-nord-mp-34', 'posts\\April2019\\yxjOlwKiwMdYl9aHWqfl.jpg', 'posts\\April2019\\VWmVzagTH0glU2Paz8ro.jpg', 'posts\\April2019\\mUVHG2ZU5Fy7kFzCRMCD.jpg', NULL, NULL, '2019-04-26 04:30:00', '2019-04-26 07:01:15', NULL),
(6, 'holodilniki', 'Холодильник Samsung RB33J3201SA/UA', '14849', NULL, '<p>ип холодильника Двухкамерные Холодильники с 2 дверьми и морозильным отделением над или под холодильным С нижней морозильной камерой Морозильное отделение располагается внизу, а холодильное сверху Объём холодильной камеры Основное место хранения продуктов - холодильное отделение. Соответственно чем больше его объем, тем больше продуктов вы сможете в нем разместить 206 л Объём морозильной камеры Если вы предпочитаете сохранять продукты в замороженном виде, то выбирайте морозильное отделение побольше. 98 л Класс энергопотребления Класс энергопотребления &ndash; это количество электроэнергии, которое потребляет устройство во время использования. Использование более энергоэффективной техники позволит Вам сэкономить средства на потреблении электроэнергии. A++ Система охлаждения холодильной камеры No Frost No Frost &ndash; это система охлаждения, при которой холодный воздух постоянно циркулирует внутри холодильной и морозильной камер. Благодаря системе охлаждения No Frost у Вас не будет необходимости в регулярной разморозке холодильника, а продукты будут охлаждаться равномерно. Система охлаждения морозильной камеры No Frost No Frost &ndash; это система охлаждения, при которой холодный воздух постоянно циркулирует внутри холодильной и морозильной камер. Благодаря системе охлаждения No Frost у Вас не будет необходимости в регулярной разморозке холодильника, а продукты будут охлаждаться равномерно. Особенности Тип компрессора Компрессор сжимает и перекачивает пары хладагента в устройстве. Различают обычный (поршневой), линейный и инверторный компрессоры. Обычный компрессор работает циклично - включается при повышении температуры и отключается при достижении оптимальной. Принцип работы линейного компрессора похож, но за счет использования электромагнитной катушки удается снизить уровень шума и повысить энергоэффективность, т.к. диапазон выравниваемой температуры куда ниже, чем у обычного компрессора. Инверторный компрессор во время работы не отключается, а лишь снижает мощность работы. Таким образом сводится к нулю возможность его выхода из строя, повышается энергоэффективность, а работа его практически бесшумна. Инверторный Инверторный компрессор не отключается, а только уменьшает мощность работы. Таким образом вероятность того, что компрессор сгорит при включении минимальна. Использование техники с инверторным типом компрессора позволит вам сэкономить электроэнергию, оценить бесшумность работы устройства и его долговечность. Количество компрессоров Количество компрессоров холодильника позволяет сократить расходы на электроэнергию, а также раздельно управлять холодильным и морозильным отделениями. Например, полностью отключать одну из камер на период вашего отсутствия дома 1 Раздельная регулировка температуры Функция, которая позволяет самостоятельно пользователю регулировать температуру в холодильном и морозильном отделениях. Как правило, возможно только при электронном или сенсорном управлении холодильника. Тип управления Влияет не только на стоимость техники, но и часто определяет насколько удобной и практичной она будет при использовании. Различают механическое управление, электронное, сенсорное, а также различные комбинации основных типов управления. Электронное Управление выполняется при помощи кнопок либо тактовых переключателей. Так же можно встретить комбинированные переключатели: кнопки и переключатели. Дисплей Дисплеем в основном оснащается техника с электронным или сенсорным типом управления. Он наглядно отображает заданные пользователем значения температур и режимов. Внешний LED дисплей Тип ручек Одна из характеристик на которую следует обратить внимание при выборе холодильника. У современных холодильников ручки могут быть скрытыми (интегрированными) или наружными. В небольшую кухню хорошо впишется холодильник со скрытыми ручками, в кухню побольше - с наружными. Если холодильником будут пользоваться дети, то также лучше отдать предпочтение последним. Скрытые Ручки, которые визуально незаметны на корпусе, их еще называют интегрированными. Они встроены в дверь холодильника и не выступают наружу. Холодильники с такой конструкцией ручек, отлично подойдут для небольших помещений. Расположение ручек Скрытие или наружные ручки холодильника также разделяются на горизонтальные и вертикальные. Бывает смешанный тип ручек, применяется в основном у многодверных моделей. Горизонтальные Ручки располагаются параллельно полу, чаще бывают скрытыми (интегрированными). Перевешиваемые двери Съемные двери, направление открытия которых можно изменить. В большинстве случаев, производители поставляют холодильники с правосторонним навесом двери. Если стена или расположение мебели не позволяет установить такой холодильник, тогда стоит обратить внимание на модели с возможностью перенавешивания двери. Технические особенности Наличие двух камер В холодильнике присутствует холодильное и морозильное отделения. Функции Функция \'\'Быстрая заморозка\" Поможет быстро заморозить продукты в морозильном отделении, сохранив при этом их полезные свойства и структуру. В режиме быстрой заморозки, температура понижается до самой низкой отметки, таким образом на заморозку уходит меньше времени, а значит в продуктах сохраняется больше витаминов и микроэлементов. Сигнализация открытой двери Оповестит пользователя о том, что он забыл закрыть (или закрыл неплотно) дверь и внутри камеры температура достигла критического уровня. Холодильное отделение Материал полок Практически все современные холодильники оборудованы стеклянными полками, металлические решетки встречаются реже. Стекло, как правило, используется закаленное, оно хорошо выдерживает перепады температур и высокую нагрузку. Такие полки красиво выглядят и хорошо пропускают свет. Полки в виде решеток встречаются в бюджетных моделях холодильников. Они также выдерживают высокие нагрузки кастрюлями, а еще способствуют вентиляции воздуха внутри отделения. Закалённое стекло Достаточно прочный, практичный и долговечный материал. Выдерживает перепады температур, высокие нагрузки, хорошо пропускает свет и является безопасным в случае повреждения. Такое стекло распадается на осколки с тупыми гранями, которые не способны нанести серьезные повреждения. Морозильное отделение Льдогенератор Устройство, позволяющее приготовить определенное количество пищевого льда, который впоследствии можно использовать для приготовления коктейлей или охлаждения напитков. Лоток для льда Пластиковая прямоугольная форма, с небольшими квадратными углублениями, в которые заливается вода. Форма помещается в морозильное отделение и после заморозки из нее извлекаются кубики льда. Это наиболее простой способ получения льда. Мощность замораживания Показывает какое количество продуктов способно заморозить морозильное отделение за сутки. Чем выше этот показатель, тем эффективнее работа отделения и тем больше продуктов вы сможете заморозить. 13 кг/сутки Технические характеристики Ширина 59,5 см Высота 185 см Глубина 66,8 см Уровень шума Достаточно важный параметр, на который следует обратить внимание при выборе техники. Максимально допустимый постоянный уровень шума составляет 40 - 55 дБ. Для разной техники установлены свои нормы, которые всегда соблюдаются производителями. 37 дБ Климатический класс Указывает на то, в каких широтах, выбранная модель холодильника, будет работать наиболее эффективно и долго. По международным стандартам различают следующие климатические классы: N &ndash; нормальный климатический класс: холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +16&deg;С до +32&deg;С; SN &ndash; субнормальный климатический класс : холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +10&deg;С до +32&deg;С; ST &ndash; субтропический климатический класс: холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +18 &deg;С до +38&deg;С; T &ndash; тропический: холодильники предназначены для работы при температуре окружающей среды от +18&deg;С до +43&deg;С. SN-N-ST-T Автономное сохранение холода Показатель, указывающий на то сколько времени холодильник/морозильная камера может сохранять необходимую для безопасного хранения продуктов температуру воздуха внутри морозильного и холодильного отделений, в случае обесточивания. При открывании двери, время поддержания температуры сокращается. До 24 часов Цвет производителя Графит Энергопотребление Показывает сколько электроэнергии потребляет холодильник за год. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 257 кВт/год Энергопотребление Показывает сколько электроэнергии потребляет холодильник в сутки. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 0,704 кВт/сутки Комплектация Холодильник, инструкция, гарантийный талон Страна производства Польша Гарантийный срок 3 года Гарантия на компрессор 10 лет Бренд Samsung</p>', 'posts\\April2019\\mtgbnfGWKa5wEU1nli6X.jpg', 'holodil-nik-samsung-rb33j3201sa-ua', 'posts\\April2019\\BqY9Pmm2MnPCeL9D3fkB.jpg', 'posts\\April2019\\SwRMgLqGnhnM8sGaMmjZ.jpg', 'posts\\April2019\\Aoo7daFQ0wP2y0LNLhHV.jpg', NULL, NULL, '2019-04-26 04:38:00', '2019-04-26 07:01:04', NULL),
(7, 'holodilniki', 'Холодильник Beko CNA295K20XP', '10499', NULL, '<p>Общие характеристики Тип холодильника Двухкамерные Холодильники с 2 дверьми и морозильным отделением над или под холодильным С нижней морозильной камерой Морозильное отделение располагается внизу, а холодильное сверху Объём холодильной камеры Основное место хранения продуктов - холодильное отделение. Соответственно чем больше его объем, тем больше продуктов вы сможете в нем разместить 190 л Объём морозильной камеры Если вы предпочитаете сохранять продукты в замороженном виде, то выбирайте морозильное отделение побольше. 76 л Класс энергопотребления Класс энергопотребления &ndash; это количество электроэнергии, которое потребляет устройство во время использования. Использование более энергоэффективной техники позволит Вам сэкономить средства на потреблении электроэнергии. A+ Система охлаждения холодильной камеры No Frost No Frost &ndash; это система охлаждения, при которой холодный воздух постоянно циркулирует внутри холодильной и морозильной камер. Благодаря системе охлаждения No Frost у Вас не будет необходимости в регулярной разморозке холодильника, а продукты будут охлаждаться равномерно. Система охлаждения морозильной камеры No Frost No Frost &ndash; это система охлаждения, при которой холодный воздух постоянно циркулирует внутри холодильной и морозильной камер. Благодаря системе охлаждения No Frost у Вас не будет необходимости в регулярной разморозке холодильника, а продукты будут охлаждаться равномерно. Особенности Тип компрессора Компрессор сжимает и перекачивает пары хладагента в устройстве. Различают обычный (поршневой), линейный и инверторный компрессоры. Обычный компрессор работает циклично - включается при повышении температуры и отключается при достижении оптимальной. Принцип работы линейного компрессора похож, но за счет использования электромагнитной катушки удается снизить уровень шума и повысить энергоэффективность, т.к. диапазон выравниваемой температуры куда ниже, чем у обычного компрессора. Инверторный компрессор во время работы не отключается, а лишь снижает мощность работы. Таким образом сводится к нулю возможность его выхода из строя, повышается энергоэффективность, а работа его практически бесшумна. Обычный Обычный (поршневой) компрессор. Принцип работы простой: при достижении критически высокой температуры, он включается и охлаждает воздух. Как только температура опускается до оптимальной (заданной), компрессор отключается. Количество компрессоров Количество компрессоров холодильника позволяет сократить расходы на электроэнергию, а также раздельно управлять холодильным и морозильным отделениями. Например, полностью отключать одну из камер на период вашего отсутствия дома 1 Тип управления Влияет не только на стоимость техники, но и часто определяет насколько удобной и практичной она будет при использовании. Различают механическое управление, электронное, сенсорное, а также различные комбинации основных типов управления. Механическое Управление осуществляется при помощи поворотного колесика или переключателя. Пользователь механическими движениями, выбирает необходимый режим из предложенных производителем. Тип ручек Одна из характеристик на которую следует обратить внимание при выборе холодильника. У современных холодильников ручки могут быть скрытыми (интегрированными) или наружными. В небольшую кухню хорошо впишется холодильник со скрытыми ручками, в кухню побольше - с наружными. Если холодильником будут пользоваться дети, то также лучше отдать предпочтение последним. Скрытые Ручки, которые визуально незаметны на корпусе, их еще называют интегрированными. Они встроены в дверь холодильника и не выступают наружу. Холодильники с такой конструкцией ручек, отлично подойдут для небольших помещений. Расположение ручек Скрытие или наружные ручки холодильника также разделяются на горизонтальные и вертикальные. Бывает смешанный тип ручек, применяется в основном у многодверных моделей. Горизонтальные Ручки располагаются параллельно полу, чаще бывают скрытыми (интегрированными). Перевешиваемые двери Съемные двери, направление открытия которых можно изменить. В большинстве случаев, производители поставляют холодильники с правосторонним навесом двери. Если стена или расположение мебели не позволяет установить такой холодильник, тогда стоит обратить внимание на модели с возможностью перенавешивания двери. Материал двери Нержавеющая сталь Технические особенности Наличие двух камер В холодильнике присутствует холодильное и морозильное отделения. Холодильное отделение Материал полок Практически все современные холодильники оборудованы стеклянными полками, металлические решетки встречаются реже. Стекло, как правило, используется закаленное, оно хорошо выдерживает перепады температур и высокую нагрузку. Такие полки красиво выглядят и хорошо пропускают свет. Полки в виде решеток встречаются в бюджетных моделях холодильников. Они также выдерживают высокие нагрузки кастрюлями, а еще способствуют вентиляции воздуха внутри отделения. Закалённое стекло Достаточно прочный, практичный и долговечный материал. Выдерживает перепады температур, высокие нагрузки, хорошо пропускает свет и является безопасным в случае повреждения. Такое стекло распадается на осколки с тупыми гранями, которые не способны нанести серьезные повреждения. Морозильное отделение Льдогенератор Устройство, позволяющее приготовить определенное количество пищевого льда, который впоследствии можно использовать для приготовления коктейлей или охлаждения напитков. Лоток для льда Пластиковая прямоугольная форма, с небольшими квадратными углублениями, в которые заливается вода. Форма помещается в морозильное отделение и после заморозки из нее извлекаются кубики льда. Это наиболее простой способ получения льда. Мощность замораживания Показывает какое количество продуктов способно заморозить морозильное отделение за сутки. Чем выше этот показатель, тем эффективнее работа отделения и тем больше продуктов вы сможете заморозить. 4 кг/сутки Технические характеристики Ширина 54 см Высота 181 см Глубина 60 см Уровень шума Достаточно важный параметр, на который следует обратить внимание при выборе техники. Максимально допустимый постоянный уровень шума составляет 40 - 55 дБ. Для разной техники установлены свои нормы, которые всегда соблюдаются производителями. 42 дБ Автономное сохранение холода Показатель, указывающий на то сколько времени холодильник/морозильная камера может сохранять необходимую для безопасного хранения продуктов температуру воздуха внутри морозильного и холодильного отделений, в случае обесточивания. При открывании двери, время поддержания температуры сокращается. До 16 часов Цвет производителя Нержавеющая сталь Энергопотребление Показывает сколько электроэнергии потребляет холодильник за год. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 288 кВт/год Энергопотребление Показывает сколько электроэнергии потребляет холодильник в сутки. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 0,79 кВтч/сутки Комплектация Холодильник, документация Страна производства Румыния Гарантийный срок 3 года Бренд Beko</p>', 'posts\\April2019\\Jip7wsL7k2UhpZcaVo2q.jpg', 'holodil-nik-beko-cna295k20xp', 'posts\\April2019\\S8MSt6jZrcTLftHQAPYn.jpg', 'posts\\April2019\\RrMkuHCpE7qfsJDYOpFr.jpg', NULL, NULL, NULL, '2019-04-26 04:41:00', '2019-04-26 07:00:54', NULL),
(8, 'holodilniki', 'Холодильник LG GA-B429SMQZ', '16199', NULL, '<p>Общие характеристики Тип холодильника Двухкамерные Холодильники с 2 дверьми и морозильным отделением над или под холодильным С нижней морозильной камерой Морозильное отделение располагается внизу, а холодильное сверху Объём холодильной камеры Основное место хранения продуктов - холодильное отделение. Соответственно чем больше его объем, тем больше продуктов вы сможете в нем разместить 223 л Объём морозильной камеры Если вы предпочитаете сохранять продукты в замороженном виде, то выбирайте морозильное отделение побольше. 79 л Класс энергопотребления Класс энергопотребления &ndash; это количество электроэнергии, которое потребляет устройство во время использования. Использование более энергоэффективной техники позволит Вам сэкономить средства на потреблении электроэнергии. A++ Система охлаждения холодильной камеры No Frost No Frost &ndash; это система охлаждения, при которой холодный воздух постоянно циркулирует внутри холодильной и морозильной камер. Благодаря системе охлаждения No Frost у Вас не будет необходимости в регулярной разморозке холодильника, а продукты будут охлаждаться равномерно. Система охлаждения морозильной камеры No Frost No Frost &ndash; это система охлаждения, при которой холодный воздух постоянно циркулирует внутри холодильной и морозильной камер. Благодаря системе охлаждения No Frost у Вас не будет необходимости в регулярной разморозке холодильника, а продукты будут охлаждаться равномерно. Особенности Тип компрессора Компрессор сжимает и перекачивает пары хладагента в устройстве. Различают обычный (поршневой), линейный и инверторный компрессоры. Обычный компрессор работает циклично - включается при повышении температуры и отключается при достижении оптимальной. Принцип работы линейного компрессора похож, но за счет использования электромагнитной катушки удается снизить уровень шума и повысить энергоэффективность, т.к. диапазон выравниваемой температуры куда ниже, чем у обычного компрессора. Инверторный компрессор во время работы не отключается, а лишь снижает мощность работы. Таким образом сводится к нулю возможность его выхода из строя, повышается энергоэффективность, а работа его практически бесшумна. Линейный Линейный компрессор работает по принципу, схожему с обычным типом компрессора, но с тем отличием, что использует в своей работе электромагнитную катушку. Покупка техники с линейным компрессором позволит Вам сэкономить электроэнергию, техника будет работать намного тише и долговечнее. Количество компрессоров Количество компрессоров холодильника позволяет сократить расходы на электроэнергию, а также раздельно управлять холодильным и морозильным отделениями. Например, полностью отключать одну из камер на период вашего отсутствия дома 1 Раздельная регулировка температуры Функция, которая позволяет самостоятельно пользователю регулировать температуру в холодильном и морозильном отделениях. Как правило, возможно только при электронном или сенсорном управлении холодильника. Тип управления Влияет не только на стоимость техники, но и часто определяет насколько удобной и практичной она будет при использовании. Различают механическое управление, электронное, сенсорное, а также различные комбинации основных типов управления. Электронное Управление выполняется при помощи кнопок либо тактовых переключателей. Так же можно встретить комбинированные переключатели: кнопки и переключатели. Дисплей Дисплеем в основном оснащается техника с электронным или сенсорным типом управления. Он наглядно отображает заданные пользователем значения температур и режимов. Внешний LED дисплей Тип ручек Одна из характеристик на которую следует обратить внимание при выборе холодильника. У современных холодильников ручки могут быть скрытыми (интегрированными) или наружными. В небольшую кухню хорошо впишется холодильник со скрытыми ручками, в кухню побольше - с наружными. Если холодильником будут пользоваться дети, то также лучше отдать предпочтение последним. Скрытые Ручки, которые визуально незаметны на корпусе, их еще называют интегрированными. Они встроены в дверь холодильника и не выступают наружу. Холодильники с такой конструкцией ручек, отлично подойдут для небольших помещений. Расположение ручек Скрытие или наружные ручки холодильника также разделяются на горизонтальные и вертикальные. Бывает смешанный тип ручек, применяется в основном у многодверных моделей. Горизонтальные Ручки располагаются параллельно полу, чаще бывают скрытыми (интегрированными). Перевешиваемые двери Съемные двери, направление открытия которых можно изменить. В большинстве случаев, производители поставляют холодильники с правосторонним навесом двери. Если стена или расположение мебели не позволяет установить такой холодильник, тогда стоит обратить внимание на модели с возможностью перенавешивания двери. Технические особенности Наличие двух камер В холодильнике присутствует холодильное и морозильное отделения. Функции Функция \'\'Быстрая заморозка\" Поможет быстро заморозить продукты в морозильном отделении, сохранив при этом их полезные свойства и структуру. В режиме быстрой заморозки, температура понижается до самой низкой отметки, таким образом на заморозку уходит меньше времени, а значит в продуктах сохраняется больше витаминов и микроэлементов. Функция \'\'Режим отпуска\'\' Режим, в первую очередь направлен на сокращение потребления электроэнергии. После активации функции, температура в холодильном отделении повышается при этом морозильное отделение продолжает работать в обычном режиме. Очень актуально будет при длительных командировках или в период отпусков. Сигнализация открытой двери Оповестит пользователя о том, что он забыл закрыть (или закрыл неплотно) дверь и внутри камеры температура достигла критического уровня. Защита от детей Применяется в основном в моделях с сенсорным или электронным управлением. Специальная комбинация клавиш, позволяет заблокировать панель управления от случайного изменения настроек. Холодильное отделение Материал полок Практически все современные холодильники оборудованы стеклянными полками, металлические решетки встречаются реже. Стекло, как правило, используется закаленное, оно хорошо выдерживает перепады температур и высокую нагрузку. Такие полки красиво выглядят и хорошо пропускают свет. Полки в виде решеток встречаются в бюджетных моделях холодильников. Они также выдерживают высокие нагрузки кастрюлями, а еще способствуют вентиляции воздуха внутри отделения. Закалённое стекло Достаточно прочный, практичный и долговечный материал. Выдерживает перепады температур, высокие нагрузки, хорошо пропускает свет и является безопасным в случае повреждения. Такое стекло распадается на осколки с тупыми гранями, которые не способны нанести серьезные повреждения. Морозильное отделение Льдогенератор Устройство, позволяющее приготовить определенное количество пищевого льда, который впоследствии можно использовать для приготовления коктейлей или охлаждения напитков. Лоток для льда Пластиковая прямоугольная форма, с небольшими квадратными углублениями, в которые заливается вода. Форма помещается в морозильное отделение и после заморозки из нее извлекаются кубики льда. Это наиболее простой способ получения льда. Мощность замораживания Показывает какое количество продуктов способно заморозить морозильное отделение за сутки. Чем выше этот показатель, тем эффективнее работа отделения и тем больше продуктов вы сможете заморозить. 9,3 кг/сутки Технические характеристики Ширина 59,5 см Высота 190,7 см Глубина 64,3 см Уровень шума Достаточно важный параметр, на который следует обратить внимание при выборе техники. Максимально допустимый постоянный уровень шума составляет 40 - 55 дБ. Для разной техники установлены свои нормы, которые всегда соблюдаются производителями. 39 дБ Климатический класс Указывает на то, в каких широтах, выбранная модель холодильника, будет работать наиболее эффективно и долго. По международным стандартам различают следующие климатические классы: N &ndash; нормальный климатический класс: холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +16&deg;С до +32&deg;С; SN &ndash; субнормальный климатический класс : холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +10&deg;С до +32&deg;С; ST &ndash; субтропический климатический класс: холодильники этого климатического класса предназначены для работы при температуре окружающей среды от +18 &deg;С до +38&deg;С; T &ndash; тропический: холодильники предназначены для работы при температуре окружающей среды от +18&deg;С до +43&deg;С. SN-ST Автономное сохранение холода Показатель, указывающий на то сколько времени холодильник/морозильная камера может сохранять необходимую для безопасного хранения продуктов температуру воздуха внутри морозильного и холодильного отделений, в случае обесточивания. При открывании двери, время поддержания температуры сокращается. До 16 часов Цвет производителя Серебристый Энергопотребление Показывает сколько электроэнергии потребляет холодильник за год. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 221 кВт/год Энергопотребление Показывает сколько электроэнергии потребляет холодильник в сутки. Показатель усредненный, может колебаться как в большую, так и в меньшую сторону. В зависимости от интенсивности использования техники и индивидуальных настроек. 0,6 кВт/сутки Комплектация Холодильник, инструкция, гарантийный талон Страна производства Россия Гарантийный срок 1 год Гарантия на компрессор 10 лет Бренд LG</p>', 'posts\\April2019\\AVSgSgrrJj0cnJrSyfWy.jpg', 'holodil-nik-lg-ga-b429smqz', 'posts\\April2019\\geeKn3bONcL3lGSPvOzv.jpg', 'posts\\April2019\\xf4XCG8FasiF4a9gOPAG.jpg', 'posts\\April2019\\NmcWeCxmixG1BOVGqiTz.jpg', NULL, NULL, '2019-04-26 04:43:00', '2019-04-26 07:00:43', NULL),
(9, 'tv-set', 'Телевизор Samsung UE32N4500AUXUA', '9299', NULL, '<p>Экран Тип телевизора По типу используемой матрицы, телевизоры разделяют на LED, OLED, QLED и плазменные. LED LED - это тип подсветки матрицы LCD телевизора при помощи светодиодов. Она обеспечивает высокий уровень яркости и контрастности изображения, при этом телевизоры с LED подсветкой потребляют значительно меньше электроэнергии. Диагональ экрана Это расстояние между двумя противоположными углами дисплея, обозначается в основном в дюймах. Размер экрана напрямую зависит от площади помещения и назначения самой комнаты. 32\'\' Тип подсветки Во всех современных телевизорах применяется подсветка матрицы светодиодами, которая позволяет сделать изображение на дисплее ярким и контрастным. LED Технология подсветки экрана светодиодами, пришедшая на смену технологии LCD, где в качестве источника света использовались лампы. Применение светодиодов позволило уменьшить толщину экрана, сократить энергопотребление и увеличить срок эксплуатации экрана. Разрешение экрана Разрешение экрана - это количество пикселей из которых состоит экран. Обозначается оно соотношением количества вертикальных и горизонтальных линий на экране. Например 1920х1080 (FullHD). Чем выше разрешение экрана тем более чёткое изображение возможно на нём получить. 1366x768 HD Технология улучшения изображения Для улучшения качества изображения производители применяют различные технологии. Они позволяют сделать изображение более ярким, контрастным, насыщенным и реалистичным. Micro Dimming Pro, PurColor, Mega Contrast, High Dynamic Range Тип ТВ процессора Процессор позволяет телевизору быстрее обрабатывать различные запросы в т.ч. изображение. Таким образом обеспечивая пользователя качественным контентом. Quad core Процессор позволяет быстрее загружать приложения, осуществлять потоковую передачу видео и загружать веб-страницы. Позволяет быстрее переключаться между контентом (можно открывать несколько приложений одновременно). Обеспечивает более плавный обмен контентом между устройствами. более качественную обработку изображений. ТВ-тюнеры Тюнер DVB-T2 Стандарт наземного цифрового телевидения второго поколения. Отличается от предшественника новой архитектурой, увеличенной пропускной способностью канала и улучшенными характеристиками сигнала. Тюнер DVB-C Тюнер этого стандарта обрабатывает сигнал цифрового кабельного телевидения. Первое поколение подобного тюнера позволяет транслировать передачи формата SD или HD. Тюнер DVB-S2 Тюнер второго поколения цифрового спутникового телевидения. В нем увеличена пропускная способность канала. Позволяет транслировать передачи формата SD или HD, а также 3D телевидение, доступ к Интернет, объемный звук. Аналоговый тюнер Наиболее простой тип тюнера, присутствует практически во всех телевизорах. Он обеспечивает прием сигналов станций, ведущих аналоговое вещание в системе PAL или SECAM на метровых или дециметровых волнах. Рaзъемы Компонентный Используется для приема аналогового видеосигнала. Был разработан специально для увеличения качества изображения. 1 шт. Композитный Стандарт разъема, который широко используют при подключении аудио и видеотехники. 1 шт . (через компонентный) USB Один из наиболее распространенных разъемов. Он позволяет синхронизировать устройства, заряжать их, передавать данные и т.д. 1 шт. LAN Разъем, позволяющий объединить несколько устройств в локальную сеть. HDMI Интерфейс для передачи контента высокой четкости, он также поддерживает передачу многоканальных цифровых аудиосигналов. 2 шт. S/PDIF выход Интерфейс, позволяющий передавать аудио. Он поддерживает передачу цифровых аудио сигналов от одного устройства к другому без процедуры преобразования в аналоговый сигнал, что позволяет избежать ухудшения качества звука. Оптический Слот для карты PCMCIA (CI+) Специальный разъем в телевизоре, куда можно установить САМ модуль для приема цифрового телевидения стандарта DVB-Т2. Мультимедиа Smart-TV Smart TV - пакет функций и приложений, таких как просмотр видео в онлайн кинотеатрах и на YouTube, общение в соц.сетях, возможность играть в игры и другие функции, значительно расширяющие возможности телевизора. Wi-Fi Встроенный в ТВ Wi-Fi модуль позволяет подключать телевизор к различным устройствам и интернету без использования проводов. Браузер Предустановленное приложение при помощи которого можно просматривать web-страницы в сети интернет. Операционная система Набор взаимосвязанных программ, предназначенных для управления ресурсами телевизора и организации взаимодействия с пользователем. Tizen Звук Суммарная мощность звука Общая мощность звука, которую выдают динамики устройства. 10 Вт Количество динамиков 2 Технология звука Dolby Digital Plus Габариты и прочее Пульт в комплекте Стандартный (TM1240A) Настенное крепление VESA 100x100 мм Габариты без подставки (ВхШхГ) 438 х 737,4 х 74,1 мм Габариты с подставкой (ВхШхГ) 465,4 х 737,4 х 150,5 мм Вес без подставки, кг 3,8 кг Вес с подставкой, кг 3,9 кг Цвет рамки По всему периметру дисплея устанавливается т.н. рамка. Как правило она имеет такой же цвет, как и телевизор в целом. Реже может отличаться. Черный Страна производства Россия Комплектация Телевизор, пульт TM1240A, руководство по эксплуатации, гарантийный талон Гарантийный срок 1 год</p>', 'posts\\April2019\\fXm1EOtdIL0YwlXUachM.jpg', 'televizor-samsung-ue32n4500auxua', 'posts\\April2019\\2h5VL3vkdHK1yM17u6Jb.jpg', 'posts\\April2019\\HHRycmJ8LrB2mGZmU0TX.jpg', 'posts\\April2019\\T5bGgMzbbgx2QOZ3Jkj5.jpg', NULL, NULL, '2019-04-26 04:47:00', '2019-04-26 07:00:30', NULL),
(10, 'tv-set', 'Телевизор Skyworth 40E6 AI', '10400', NULL, '<p>Экран Тип телевизора По типу используемой матрицы, телевизоры разделяют на LED, OLED, QLED и плазменные. LED LED - это тип подсветки матрицы LCD телевизора при помощи светодиодов. Она обеспечивает высокий уровень яркости и контрастности изображения, при этом телевизоры с LED подсветкой потребляют значительно меньше электроэнергии. Тип матрицы Или тип используемого дисплея. В настоящее время применяется очень много различных технологий и типов матрицы с разным разрешением для разных устройств. IPS Одна из наиболее распространенных матриц, которая применяется в самых различных устройствах. Она имеет отличную цветопередачу и яркость, широкие углы обзора и хороший отклик. За счет таких хороших технических данных, стоимость производства ее высока. Диагональ экрана Это расстояние между двумя противоположными углами дисплея, обозначается в основном в дюймах. Размер экрана напрямую зависит от площади помещения и назначения самой комнаты. 40\'\' Тип подсветки Во всех современных телевизорах применяется подсветка матрицы светодиодами, которая позволяет сделать изображение на дисплее ярким и контрастным. Direct LED Светодиодная подсветка расположена по всей площади экрана. К преимуществам можно отнести возможность локального затемнения, к недостаткам - большую толщину экрана телевизора. Разрешение экрана Разрешение экрана - это количество пикселей из которых состоит экран. Обозначается оно соотношением количества вертикальных и горизонтальных линий на экране. Например 1920х1080 (FullHD). Чем выше разрешение экрана тем более чёткое изображение возможно на нём получить. 1920x1080 Full HD Частота развертки экрана Частота развертки телевизора определяет количество кадров, которые за единицу времени могут быть отображены на экране. Очень часто этот параметр называют кадровой частотой экрана. 60 Гц Тип ТВ процессора Процессор позволяет телевизору быстрее обрабатывать различные запросы в т.ч. изображение. Таким образом обеспечивая пользователя качественным контентом. Cortex A53 ТВ-тюнеры Тюнер DVB-T Стандарт наземного цифрового телевидения первого поколения. Позволяет принимать цифровой сигнал при помощи обычной антенны. Дает изображение хорошего качества. Тюнер DVB-T2 Стандарт наземного цифрового телевидения второго поколения. Отличается от предшественника новой архитектурой, увеличенной пропускной способностью канала и улучшенными характеристиками сигнала. Тюнер DVB-C Тюнер этого стандарта обрабатывает сигнал цифрового кабельного телевидения. Первое поколение подобного тюнера позволяет транслировать передачи формата SD или HD. Аналоговый тюнер Наиболее простой тип тюнера, присутствует практически во всех телевизорах. Он обеспечивает прием сигналов станций, ведущих аналоговое вещание в системе PAL или SECAM на метровых или дециметровых волнах. Рaзъемы Композитный Стандарт разъема, который широко используют при подключении аудио и видеотехники. 1 шт. USB Один из наиболее распространенных разъемов. Он позволяет синхронизировать устройства, заряжать их, передавать данные и т.д. 3 шт. LAN Разъем, позволяющий объединить несколько устройств в локальную сеть. HDMI Интерфейс для передачи контента высокой четкости, он также поддерживает передачу многоканальных цифровых аудиосигналов. 3 шт. S/PDIF выход Интерфейс, позволяющий передавать аудио. Он поддерживает передачу цифровых аудио сигналов от одного устройства к другому без процедуры преобразования в аналоговый сигнал, что позволяет избежать ухудшения качества звука. Слот для карты PCMCIA (CI+) Специальный разъем в телевизоре, куда можно установить САМ модуль для приема цифрового телевидения стандарта DVB-Т2. Поддержка MHL Разъем служит для непосредственного подключения мобильных устройств к телевизорам и мониторам. Он поддерживает высокое разрешение видеоизображения &mdash; Full HD. С его помощью также можно подзаряжать аккумулятор подключенного мобильного устройства. Мультимедиа Smart-TV Smart TV - пакет функций и приложений, таких как просмотр видео в онлайн кинотеатрах и на YouTube, общение в соц.сетях, возможность играть в игры и другие функции, значительно расширяющие возможности телевизора. Wi-Fi Встроенный в ТВ Wi-Fi модуль позволяет подключать телевизор к различным устройствам и интернету без использования проводов. Операционная система Набор взаимосвязанных программ, предназначенных для управления ресурсами телевизора и организации взаимодействия с пользователем. Android TV Особые функции Дополнительные возможности телевизора, которые помогают сделать изображение более качественным. Некоторые из них направлены на облегчение процесса управления телевизором. ChromeCast Wi-Fi Miracast Стандарт беспроводной передачи мультимедийного сигнала. Разработан на основе технологии Wi-Fi Direct. Встроенная поддержка Bluetooth Управление голосом Звук Суммарная мощность звука Общая мощность звука, которую выдают динамики устройства. 20 Вт Количество динамиков 4 Габариты и прочее Пульт в комплекте Стандартный Настенное крепление VESA 200x200 мм Цвет рамки По всему периметру дисплея устанавливается т.н. рамка. Как правило она имеет такой же цвет, как и телевизор в целом. Реже может отличаться. Черный Страна производства Китай Комплектация Телевизор, пульт ДУ, руководство по эксплуатации, гарантийный талон Гарантийный срок 1 год Бренд Skyworth</p>', 'posts\\April2019\\7LsXJ7EFKJ3ndHOXHwub.jpg', 'televizor-skyworth-40e6-ai', 'posts\\April2019\\RR61CpgZZ5pVX1DiqYSx.jpg', 'posts\\April2019\\mIAomodPcOLIwrrKIFRq.jpg', 'posts\\April2019\\dgBLQg1qq0wLNlXIBQKM.jpg', NULL, NULL, '2019-04-26 04:51:00', '2019-04-26 07:00:20', NULL);
INSERT INTO `tovari` (`id`, `category_id`, `title`, `price`, `new_price`, `body`, `image`, `slug`, `img3`, `img2`, `img4`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `harakteristic`) VALUES
(11, 'tv-set', 'Телевизор LG 43UK6300PLB', '15000', NULL, '<p>Экран Тип телевизора По типу используемой матрицы, телевизоры разделяют на LED, OLED, QLED и плазменные. LED LED - это тип подсветки матрицы LCD телевизора при помощи светодиодов. Она обеспечивает высокий уровень яркости и контрастности изображения, при этом телевизоры с LED подсветкой потребляют значительно меньше электроэнергии. Тип матрицы Или тип используемого дисплея. В настоящее время применяется очень много различных технологий и типов матрицы с разным разрешением для разных устройств. LCD Liquid Crystal Display. Матрица, состоящая из жидких кристаллов, чувствительных к свету. Бывает монохромной и цветной. Используется в большинстве современных устройств с дисплеем. Имеет хороший отклик, контрастность и углы обзора. Диагональ экрана Это расстояние между двумя противоположными углами дисплея, обозначается в основном в дюймах. Размер экрана напрямую зависит от площади помещения и назначения самой комнаты. 43\'\' Тип подсветки Во всех современных телевизорах применяется подсветка матрицы светодиодами, которая позволяет сделать изображение на дисплее ярким и контрастным. LED Технология подсветки экрана светодиодами, пришедшая на смену технологии LCD, где в качестве источника света использовались лампы. Применение светодиодов позволило уменьшить толщину экрана, сократить энергопотребление и увеличить срок эксплуатации экрана. Разрешение экрана Разрешение экрана - это количество пикселей из которых состоит экран. Обозначается оно соотношением количества вертикальных и горизонтальных линий на экране. Например 1920х1080 (FullHD). Чем выше разрешение экрана тем более чёткое изображение возможно на нём получить. 3840x2160 Ultra HD Частота развертки экрана Частота развертки телевизора определяет количество кадров, которые за единицу времени могут быть отображены на экране. Очень часто этот параметр называют кадровой частотой экрана. 50 Гц Технология улучшения изображения Для улучшения качества изображения производители применяют различные технологии. Они позволяют сделать изображение более ярким, контрастным, насыщенным и реалистичным. Dynamic Color, True Color Accuracy Pro Тип ТВ процессора Процессор позволяет телевизору быстрее обрабатывать различные запросы в т.ч. изображение. Таким образом обеспечивая пользователя качественным контентом. Quad core Процессор позволяет быстрее загружать приложения, осуществлять потоковую передачу видео и загружать веб-страницы. Позволяет быстрее переключаться между контентом (можно открывать несколько приложений одновременно). Обеспечивает более плавный обмен контентом между устройствами. более качественную обработку изображений. ТВ-тюнеры Тюнер DVB-T Стандарт наземного цифрового телевидения первого поколения. Позволяет принимать цифровой сигнал при помощи обычной антенны. Дает изображение хорошего качества. Тюнер DVB-T2 Стандарт наземного цифрового телевидения второго поколения. Отличается от предшественника новой архитектурой, увеличенной пропускной способностью канала и улучшенными характеристиками сигнала. Тюнер DVB-C Тюнер этого стандарта обрабатывает сигнал цифрового кабельного телевидения. Первое поколение подобного тюнера позволяет транслировать передачи формата SD или HD. Тюнер DVB-S Тюнер первого поколения цифрового спутникового вещания. Позволяет подключать спутниковое телевидение без внешнего ресивера, но при наличии спутниковой антенны. Тюнер DVB-S2 Тюнер второго поколения цифрового спутникового телевидения. В нем увеличена пропускная способность канала. Позволяет транслировать передачи формата SD или HD, а также 3D телевидение, доступ к Интернет, объемный звук. Аналоговый тюнер Наиболее простой тип тюнера, присутствует практически во всех телевизорах. Он обеспечивает прием сигналов станций, ведущих аналоговое вещание в системе PAL или SECAM на метровых или дециметровых волнах. Рaзъемы Компонентный Используется для приема аналогового видеосигнала. Был разработан специально для увеличения качества изображения. 1 шт. Композитный Стандарт разъема, который широко используют при подключении аудио и видеотехники. 1 шт. USB Один из наиболее распространенных разъемов. Он позволяет синхронизировать устройства, заряжать их, передавать данные и т.д. 4 шт. LAN Разъем, позволяющий объединить несколько устройств в локальную сеть. HDMI Интерфейс для передачи контента высокой четкости, он также поддерживает передачу многоканальных цифровых аудиосигналов. 5 шт. S/PDIF выход Интерфейс, позволяющий передавать аудио. Он поддерживает передачу цифровых аудио сигналов от одного устройства к другому без процедуры преобразования в аналоговый сигнал, что позволяет избежать ухудшения качества звука. Оптический Слот для карты PCMCIA (CI+) Специальный разъем в телевизоре, куда можно установить САМ модуль для приема цифрового телевидения стандарта DVB-Т2. Мультимедиа Smart-TV Smart TV - пакет функций и приложений, таких как просмотр видео в онлайн кинотеатрах и на YouTube, общение в соц.сетях, возможность играть в игры и другие функции, значительно расширяющие возможности телевизора. Wi-Fi Встроенный в ТВ Wi-Fi модуль позволяет подключать телевизор к различным устройствам и интернету без использования проводов. Браузер Предустановленное приложение при помощи которого можно просматривать web-страницы в сети интернет. Операционная система Набор взаимосвязанных программ, предназначенных для управления ресурсами телевизора и организации взаимодействия с пользователем. WebOS Воспроизведение медиафайлов AC3(Dolby Digital), EAC3, HE-AAC, AAC, MP2, MP3, PCM, DTS, DTS-HD, DTS Express, WMA, apt-X Особые функции Дополнительные возможности телевизора, которые помогают сделать изображение более качественным. Некоторые из них направлены на облегчение процесса управления телевизором. Wi-Fi Miracast Стандарт беспроводной передачи мультимедийного сигнала. Разработан на основе технологии Wi-Fi Direct. Звук Суммарная мощность звука Общая мощность звука, которую выдают динамики устройства. 20 Вт Количество динамиков 2 Технология звука Ultra Surround Габариты и прочее Пульт в комплекте Стандартный Настенное крепление VESA 200x200 мм Габариты без подставки (ВхШхГ) 575 х 977 х 80,8 мм Габариты с подставкой (ВхШхГ) 629 х 977 х 216 мм Вес без подставки, кг 8,3 кг Вес с подставкой, кг 8,5 кг Цвет рамки По всему периметру дисплея устанавливается т.н. рамка. Как правило она имеет такой же цвет, как и телевизор в целом. Реже может отличаться. Черный Страна производства Россия Комплектация Телевизор, пульт ДУ, 2 батарейки ААА, документация Гарантийный срок 2 года Бренд LG</p>', 'posts\\April2019\\g2BoQcICvaRo32gHZQdj.jpg', 'televizor-lg-43uk6300plb', 'posts\\April2019\\dGb8fPPDdNLxY30xAF2x.jpg', 'posts\\April2019\\amuM29CRjgLNYBpFnKdO.jpg', 'posts\\April2019\\qF4numo5q5dVQZLfLHF1.jpg', NULL, NULL, '2019-04-26 04:53:00', '2019-04-26 07:00:10', NULL),
(12, 'tv-set', 'Телевизор Kivi 49UP50GU', '15500', NULL, 'Тип телевизора По типу используемой матрицы, телевизоры разделяют на LED, OLED, QLED и плазменные. LED LED - это тип подсветки матрицы LCD телевизора при помощи светодиодов. Она обеспечивает высокий уровень яркости и контрастности изображения, при этом телевизоры с LED подсветкой потребляют значительно меньше электроэнергии. Тип матрицы Или тип используемого дисплея. В настоящее время применяется очень много различных технологий и типов матрицы с разным разрешением для разных устройств. IPS Одна из наиболее распространенных матриц, которая применяется в самых различных устройствах.', 'tovari\\April2019\\dAJ6UYGkchpCQ6afK1pR.jpg', 'televizor-kivi-49up50gu', 'tovari\\April2019\\D16RCNNAihMXS3H5VbYz.jpg', 'tovari\\April2019\\xEwmJOZDG2fLX3TWiqsy.jpg', 'tovari\\April2019\\gMCk6twAcGmKLGUKu2iM.jpg', NULL, NULL, '2019-04-26 04:56:00', '2019-04-30 05:51:47', '<ul>\r\n<li>Слот для карты PCMCIA (CI+)</li>\r\n<li>Специальный разъем в телевизоре, куда можно установить САМ модуль для приема цифрового</li>\r\n<li>телевидения стандарта DVB-Т2. Мультимедиа Smart-TV Smart TV - пакет функций и приложений</li>\r\n<li>таких как просмотр видео в онлайн кинотеатрах и на YouTube, общение в соц.сетях, возможность</li>\r\n<li>играть в игры и другие функции, значительно расширяющие возможности телевизора.</li>\r\n<li>Wi-Fi Встроенный в ТВ Wi-Fi модуль позволяет подключать телевизор к различным устройствам и интернету без использования проводов.</li>\r\n<li>Браузер Предустановленное приложение при помощи которого можно просматривать web-страницы в сети интернет. Операционная система Набор взаимосвязанных программ, предназначенных для управления ресурсами телевизора и организации взаимодействия с пользователем</li>\r\n<li>Видео: MPEG, MP4, AVI(XVID), AVI (MotionJpeg), WMV9, MKV, WEBM, 3GPP Аудио: WAV, MP3, WMA, FLAC Фото: JPEG, PNG, BMP, GIF</li>\r\n<li>Особые функции Дополнительные возможности телевизора, которые помогают сделать изображение более качественным.</li>\r\n<li>Некоторые из них направлены на облегчение процесса управления телевизором. Управление клавиатурой и мышкой Управление мобильными устройствами</li>\r\n<li>Звук Суммарная мощность звука Общая мощность звука, которую выдают динамики устройства.</li>\r\n<li>24 Вт Количество динамиков 2 Габариты и проче</li>\r\n<li>Пульт в комплекте Стандартный Настенное крепление VESA 200x200 мм Потребляемая мощность, (Вт) 80 Вт Габариты без подставки (ВхШхГ) 634 х 1098 х 54 мм</li>\r\n<li>Габариты с подставкой (ВхШхГ) 692 х 1098 х 219 мм Вес без подставки, кг 12,8 кг</li>\r\n<li>Вес с подставкой, кг 13,8 кг Цвет рамки По всему периметру дисплея устанавливается т.н. рамка.</li>\r\n<li>Как правило она имеет такой же цвет, как и телевизор в целом.</li>\r\n<li>Реже может отличаться.</li>\r\n<li>Серый Страна производства Китай Комплектация Телевизор, пульт ДУ, документация, гарантийный талон</li>\r\n<li>Гарантийный срок 3 года Бренд Kivi</li>\r\n</ul>'),
(13, 'tv-set', 'телик new', '7890', NULL, 'телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new', NULL, 'telik-new', NULL, NULL, NULL, NULL, NULL, '2019-04-30 06:05:00', '2019-04-30 06:39:55', '<p>телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new телик new&nbsp;</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$DGRxj9fo9j8zuCfBBCzMKevb5C0uvQaL.5qsAxAQTy/ine9CWLpUG', 'FdkLjAC9XCuzyIa0N4jduTEQqgunlzlRThHIpSo1WMSAuoLtj7tMTJ12C4sH', NULL, '2019-04-18 07:43:58', '2019-04-18 07:43:58');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `nowostis`
--
ALTER TABLE `nowostis`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `tovari`
--
ALTER TABLE `tovari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `nowostis`
--
ALTER TABLE `nowostis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tovari`
--
ALTER TABLE `tovari`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
