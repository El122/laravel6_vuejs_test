-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июл 24 2022 г., 21:04
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `orders`
--

-- --------------------------------------------------------

--
-- Структура таблицы `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `applications`
--

INSERT INTO `applications` (`id`, `title`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Новое объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\n\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa,', 120000.4, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(2, 'Еще одно объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.', 4356, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(3, 'Объявление новое', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.а', 5, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(4, 'Новый текст', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 54645, '2022-07-24 04:19:13', '2022-07-24 04:19:13'),
(5, 'Объявление еще одно', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 4334, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 657567, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(7, 'Новое объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\n\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa,', 120000.4, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(8, 'Еще одно объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.', 4356, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(9, 'Объявление новое', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.а', 5, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(10, 'Новый текст', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 54645, '2022-07-24 04:19:13', '2022-07-24 04:19:13'),
(11, 'Объявление еще одно', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 4334, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 657567, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(13, 'Новое объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\n\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa,', 120000.4, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(14, 'Еще одно объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.', 4356, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(15, 'Объявление новое', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.а', 5, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(16, 'Новый текст', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 54645, '2022-07-24 04:19:13', '2022-07-24 04:19:13'),
(17, 'Объявление еще одно', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 4334, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 657567, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(19, 'Новое объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\n\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa,', 120000.4, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(20, 'Еще одно объявление', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.', 4356, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(21, 'Объявление новое', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.а', 5, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(22, 'Новый текст', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 54645, '2022-07-24 04:19:13', '2022-07-24 04:19:13'),
(23, 'Объявление еще одно', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 4334, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dictum urna vitae magna laoreet, sit amet porta eros tempor. Donec mattis congue sapien eu accumsan. Aliquam sem nibh, consectetur eu sem et, pretium ultrices arcu. Mauris viverra tristique accumsan. Aliquam erat volutpat. Aliquam metus libero, consequat sit amet pretium a, imperdiet sed nibh. Vestibulum lacinia nisi mauris, eget commodo felis tincidunt et. Aliquam augue quam, pellentesque ac rhoncus vitae, condimentum euismod nisi. Donec malesuada leo augue, non interdum lectus semper vitae. Fusce mollis consequat nibh, nec sodales turpis rutrum at. Phasellus a libero felis. Morbi sit amet tellus vel odio fermentum luctus.\r\nAliquam ornare, neque sed dapibus gravida, nulla mi luctus nisl, non ultricies lectus neque id mi. Nullam maximus vitae leo non lobortis. Suspendisse ullamcorper nibh eu nulla faucibus, nec dignissim sapien tempus. Praesent hendrerit mi sit amet nibh varius scelerisque. Vestibulum non ullamcorper massa.', 657567, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(25, 'qwe', 'asd', 123, '2022-07-24 12:41:32', '2022-07-24 12:41:32');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2022_07_22_155945_create_applications_table', 1),
(13, '2022_07_23_170701_create_photos_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `photo`, `application_id`, `created_at`, `updated_at`) VALUES
(1, 'https://images.unsplash.com/photo-1658496594141-589b0ec66b8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=724&q=80', 1, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(2, 'https://images.unsplash.com/photo-1639730515041-02332c35cdec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 1, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(3, 'https://images.unsplash.com/photo-1658573524324-0cb489d708fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 2, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(4, 'https://images.unsplash.com/photo-1658494787699-a2e0ed4c1064?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80', 3, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(5, 'https://images.unsplash.com/photo-1658510175674-d961bd424686?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', 3, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(6, 'https://images.unsplash.com/photo-1609520210683-c9e5f0ae8f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 3, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(7, 'https://images.unsplash.com/photo-1658494787698-cc4371e62441?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 4, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(8, 'https://images.unsplash.com/photo-1658495679082-a88dc0818e4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 4, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(9, 'https://images.unsplash.com/photo-1658494787703-ac2062c5b6ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 5, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(10, 'https://images.unsplash.com/photo-1658499192304-2e1c305b2a8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80', 6, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(11, 'https://images.unsplash.com/photo-1658495679337-35d6a08a4c2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 6, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(12, 'https://images.unsplash.com/photo-1658417822224-e1052f3570b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=706&q=80', 6, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(13, 'https://images.unsplash.com/photo-1658496594141-589b0ec66b8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=724&q=80', 14, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(14, 'https://images.unsplash.com/photo-1639730515041-02332c35cdec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 14, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(15, 'https://images.unsplash.com/photo-1658573524324-0cb489d708fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 13, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(16, 'https://images.unsplash.com/photo-1658494787699-a2e0ed4c1064?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80', 7, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(17, 'https://images.unsplash.com/photo-1658510175674-d961bd424686?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', 8, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(18, 'https://images.unsplash.com/photo-1609520210683-c9e5f0ae8f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 9, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(19, 'https://images.unsplash.com/photo-1658494787698-cc4371e62441?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 10, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(20, 'https://images.unsplash.com/photo-1658495679082-a88dc0818e4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 10, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(21, 'https://images.unsplash.com/photo-1658494787703-ac2062c5b6ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 11, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(22, 'https://images.unsplash.com/photo-1658499192304-2e1c305b2a8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80', 11, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(23, 'https://images.unsplash.com/photo-1658495679337-35d6a08a4c2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 11, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(24, 'https://images.unsplash.com/photo-1658417822224-e1052f3570b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=706&q=80', 12, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(25, 'https://images.unsplash.com/photo-1609520210683-c9e5f0ae8f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 15, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(26, 'https://images.unsplash.com/photo-1658494787698-cc4371e62441?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 15, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(27, 'https://images.unsplash.com/photo-1658495679082-a88dc0818e4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 16, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(28, 'https://images.unsplash.com/photo-1658494787703-ac2062c5b6ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 16, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(29, 'https://images.unsplash.com/photo-1658499192304-2e1c305b2a8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80', 16, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(30, 'https://images.unsplash.com/photo-1658495679337-35d6a08a4c2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 17, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(31, 'https://images.unsplash.com/photo-1658417822224-e1052f3570b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=706&q=80', 17, '2022-07-24 04:20:31', '2022-07-24 04:20:31'),
(32, 'https://images.unsplash.com/photo-1658573524324-0cb489d708fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 18, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(33, 'https://images.unsplash.com/photo-1658496594141-589b0ec66b8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=724&q=80', 19, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(34, 'https://images.unsplash.com/photo-1639730515041-02332c35cdec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 20, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(35, 'https://images.unsplash.com/photo-1658496594141-589b0ec66b8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=724&q=80', 21, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(36, 'https://images.unsplash.com/photo-1639730515041-02332c35cdec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 21, '2022-07-24 04:05:43', '2022-07-24 04:05:43'),
(37, 'https://images.unsplash.com/photo-1658573524324-0cb489d708fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 21, '2022-07-24 04:17:20', '2022-07-24 04:17:20'),
(38, 'https://images.unsplash.com/photo-1658494787699-a2e0ed4c1064?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80', 20, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(39, 'https://images.unsplash.com/photo-1658510175674-d961bd424686?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80', 20, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(40, 'https://images.unsplash.com/photo-1609520210683-c9e5f0ae8f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', 23, '2022-07-24 04:18:43', '2022-07-24 04:18:43'),
(41, 'https://images.unsplash.com/photo-1658494787698-cc4371e62441?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80', 22, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(42, 'https://images.unsplash.com/photo-1658495679082-a88dc0818e4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 22, '2022-07-24 04:19:14', '2022-07-24 04:19:14'),
(43, 'https://images.unsplash.com/photo-1658494787703-ac2062c5b6ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80', 24, '2022-07-24 04:19:34', '2022-07-24 04:19:34'),
(44, 'zxc', 25, '2022-07-24 12:41:32', '2022-07-24 12:41:32');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_application_id_foreign` (`application_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
