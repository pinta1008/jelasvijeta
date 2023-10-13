-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 06:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jelasvijeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Beef', 'category-2', '2023-10-05 05:02:26', '2023-10-05 05:02:26'),
(6, 'Turkey', 'category-6', '2023-10-05 05:03:06', '2023-10-05 05:03:06'),
(7, 'Chicken', 'category-7', '2023-10-05 05:03:06', '2023-10-05 05:03:06'),
(9, 'Lamb', 'category-9', '2023-10-05 05:03:06', '2023-10-05 05:03:06'),
(10, 'Pork', 'category-10', '2023-10-05 05:03:06', '2023-10-05 05:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`id`, `category_id`, `locale`, `title`) VALUES
(1, 2, 'en', 'Beef'),
(2, 2, 'hr', 'Govedina'),
(3, 2, 'de', 'Rindfleisch'),
(4, 6, 'en', 'Turkey'),
(5, 6, 'hr', 'Meso od purice'),
(6, 6, 'de', 'Truthahn'),
(7, 7, 'en', 'Chicken'),
(8, 7, 'hr', 'Piletina'),
(9, 7, 'de', 'Huhn'),
(10, 9, 'en', 'Lamb'),
(11, 9, 'hr', 'Janjetina'),
(12, 9, 'de', 'Lamm'),
(13, 10, 'en', 'Pork'),
(14, 10, 'hr', 'Svinjetina'),
(15, 10, 'de', 'Schweinefleisch');

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
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Yam', 'ingredients-1', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(2, 'Pickle', 'ingredients-2', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(3, 'Corn', 'ingredients-3', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(4, 'Broccoli', 'ingredients-4', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(5, 'Mint', 'ingredients-5', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(6, 'Cucumber', 'ingredients-6', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(7, 'Bell Pepper', 'ingredients-7', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(8, 'Avocado', 'ingredients-8', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(9, 'Celery', 'ingredients-9', '2023-10-05 05:15:39', '2023-10-05 05:15:39'),
(10, 'Pumpkin', 'ingredients-10', '2023-10-05 05:15:39', '2023-10-05 05:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients_translations`
--

CREATE TABLE `ingredients_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients_translations`
--

INSERT INTO `ingredients_translations` (`id`, `ingredient_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Yam'),
(2, 1, 'hr', 'Slatki krumpir'),
(3, 1, 'de', 'Süßkartoffel'),
(4, 2, 'en', 'Pickle'),
(5, 2, 'hr', 'Kiseli krastavac'),
(6, 2, 'de', 'Essiggurke'),
(7, 3, 'en', 'Corn'),
(8, 3, 'hr', 'Kukuruz'),
(9, 3, 'de', 'Mais'),
(10, 4, 'en', 'Broccoli'),
(11, 4, 'hr', 'Brokula'),
(12, 4, 'de', 'Brokkoli'),
(13, 5, 'en', 'Mint'),
(14, 5, 'hr', 'Metvica'),
(15, 5, 'de', 'Minze'),
(16, 6, 'en', 'Cucumber'),
(17, 6, 'hr', 'Krastavac'),
(18, 6, 'de', 'Gurke'),
(19, 7, 'en', 'Bell Pepper'),
(20, 7, 'hr', 'Babura paprika'),
(21, 7, 'de', 'Paprika'),
(22, 8, 'en', 'Avocado'),
(23, 8, 'hr', 'Avokado'),
(24, 8, 'de', 'Avocado'),
(25, 9, 'en', 'Celery'),
(26, 9, 'hr', 'Celer'),
(27, 9, 'de', 'Sellerie'),
(28, 10, 'en', 'Pumpkin'),
(29, 10, 'hr', 'Bundeva'),
(30, 10, 'de', 'Kürbis');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', NULL, NULL),
(2, 'hr', 'Hrvatski', NULL, NULL),
(3, 'de', 'Deutsch', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `title`, `description`, `status`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pasta', 'Et ut velit et. Quod officiis vel corporis optio necessitatibus atque accusamus voluptas. Omnis delectus laudantium nobis laudantium id et aliquid. Ducimus fugiat rerum natus sint beatae.', 'created', NULL, '2023-10-05 06:10:22', '2023-10-06 15:26:22', NULL),
(2, 'Cheese Veggie Sandwich', 'Et nemo autem iure qui. Dolorem ut nobis aut animi. A sunt mollitia aut voluptas ut consequatur non earum. Voluptates mollitia ipsum ea voluptate. At at laboriosam est libero.', 'created', 9, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(3, 'Little Cheeseburger', 'Et ex sit ex. Eligendi natus aliquam aliquid sunt. Quaerat veritatis quae cum sed delectus ea. Odio aperiam non et eos natus amet aut qui.', 'created', 9, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(4, 'Pasta', 'Qui est tempore soluta asperiores dignissimos non. Culpa ea earum id aut tempore expedita qui. Nemo mollitia animi voluptate pariatur ea quo sunt.', 'created', 2, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(5, 'Pasta', 'Similique consequatur dolores velit et molestiae dolor. Est consequatur iure occaecati recusandae fugit placeat quia. Nisi impedit sit corrupti ab. Rerum nobis ut in quis nesciunt perferendis. Fugit tenetur omnis ea facere numquam.', 'created', NULL, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(6, 'Veggie Sandwich', 'Illum est dolores sed voluptate at. Tempora explicabo exercitationem blanditiis officiis eos. Quia non qui voluptas.', 'created', 2, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(7, 'Little Hamburger', 'Accusamus soluta eum corporis non sunt rem aut. Voluptatem ducimus asperiores sed neque eum vero. Explicabo voluptatem est blanditiis.', 'created', 6, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(8, 'Little Cheeseburger', 'Autem aut accusamus dicta veritatis. Tempore ipsum blanditiis ratione et officiis labore. Esse fugiat aut magnam amet. Molestias et ducimus consequatur sed hic aut.', 'created', 10, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(9, 'Bacon Cheese Dog', 'Aut blanditiis excepturi distinctio non tempore ducimus. Ea laudantium sequi et commodi. Natus nam et autem nisi quidem.', 'created', 9, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(10, 'Cheese Dog', 'Aut optio qui possimus odit veritatis id. Voluptas explicabo minus iure ut vel officiis. Molestiae expedita distinctio laudantium.', 'created', 7, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(11, 'Little Cheeseburger', 'Pariatur et ipsam maiores et sed quia enim. Iste autem ad consequatur. Qui non officiis vero consequatur tempore id quia.', 'created', 9, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(12, 'Bacon Cheeseburger', 'Autem modi distinctio ullam debitis. Sit maiores non iste aliquid molestias ab sapiente omnis. Non eligendi molestiae dolorum sapiente qui.', 'created', 6, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(13, 'Hamburger', 'Repudiandae quae ut vitae labore libero eos odit. Repellat aut amet aut tenetur ipsa. Est eligendi laboriosam accusamus quia qui et.', 'created', 6, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(14, 'Little Hamburger', 'Sit natus non dolor suscipit omnis. Fugit ab fugit fugiat et quia. Labore et consequatur quos et quia labore.', 'created', NULL, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(15, 'Bacon Cheese Dog', 'Autem facere non et rem aspernatur voluptas quia. Enim voluptatum ipsam optio rerum nesciunt nemo ut. Blanditiis sit quis quasi facere est.', 'created', 10, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(16, 'Cheeseburger', 'Et alias similique delectus placeat maiores praesentium voluptate. Ea autem optio nobis et necessitatibus. Omnis aut repellendus illo aut dignissimos nobis. Veritatis id autem aliquam sit quia incidunt ipsam.', 'created', 2, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(17, 'Bacon Burger', 'Voluptas officiis placeat illum labore ipsa. Aut ea odit sunt ducimus. Numquam laborum sit non molestiae voluptates.', 'created', NULL, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(18, 'Pasta', 'Enim sed laboriosam ipsum recusandae voluptatem id. Alias ut vitae sit repellat. Nesciunt ea voluptates quasi adipisci dolor velit ea.', 'created', NULL, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(19, 'Little Hamburger', 'Et quisquam blanditiis in aut dolores minus consectetur. Est nam corporis quibusdam illum et eos. Voluptas non dolorem accusantium. Perferendis nobis expedita a et est nihil reprehenderit.', 'created', 9, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL),
(20, 'Hamburger', 'Est qui amet vel tenetur. Explicabo eaque non accusantium autem ullam corporis quibusdam. Dolores quaerat fugiat blanditiis. Pariatur maxime optio ab sit.', 'created', NULL, '2023-10-05 06:10:22', '2023-10-05 06:10:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meals_translations`
--

CREATE TABLE `meals_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals_translations`
--

INSERT INTO `meals_translations` (`id`, `meal_id`, `locale`, `description`, `title`) VALUES
(1, 1, 'en', 'Description on English-1', 'Pasta'),
(2, 1, 'hr', 'Opis na Hrvatskom-1', 'Tjestenina'),
(3, 1, 'de', 'Beschreibung auf Deutsch-1', 'Pasta'),
(4, 2, 'en', 'Description on English-2', 'Cheese Veggie Sandwich'),
(5, 2, 'hr', 'Opis na Hrvatskom-2', 'Vege sendvic sa sirom'),
(6, 2, 'de', 'Beschreibung auf Deutsch-2', 'Käse-Gemüse-Sandwich'),
(7, 3, 'en', 'Description on English-3', 'Little Cheeseburger'),
(8, 3, 'hr', 'Opis na Hrvatskom-3', 'Mali cizburger'),
(9, 3, 'de', 'Beschreibung auf Deutsch-3', 'Kleiner Cheesburger'),
(10, 4, 'en', 'Description on English-4', 'Pasta'),
(11, 4, 'hr', 'Opis na Hrvatskom-4', 'Tjestenina'),
(12, 4, 'de', 'Beschreibung auf Deutsch-4', 'Pasta'),
(13, 5, 'en', 'Description on English-5', 'Pasta'),
(14, 5, 'hr', 'Opis na Hrvatskom-5', 'Tjestenina'),
(15, 5, 'de', 'Beschreibung auf Deutsch-5', 'Pasta'),
(16, 6, 'en', 'Description on English-6', 'Veggie Sandwich'),
(17, 6, 'hr', 'Opis na Hrvatskom-6', 'Sendvic s povrcem'),
(18, 6, 'de', 'Beschreibung auf Deutsch-6', 'Gemüsesandwich'),
(19, 7, 'en', 'Description on English-7', 'Little Hamburger'),
(20, 7, 'hr', 'Opis na Hrvatskom-7', 'Mali hamburger'),
(21, 7, 'de', 'Beschreibung auf Deutsch-7', 'Kleiner Hamburger'),
(22, 8, 'en', 'Description on English-8', 'Little Cheeseburger'),
(23, 8, 'hr', 'Opis na Hrvatskom-8', 'Mali cizburger'),
(24, 8, 'de', 'Beschreibung auf Deutsch-8', 'Kleiner Cheeseburger'),
(25, 9, 'en', 'Description on English-9', 'Bacon Cheese Dog'),
(26, 9, 'hr', 'Opis na Hrvatskom-9', 'Sendvic sa sirom i slaninom'),
(27, 9, 'de', 'Beschreibung auf Deutsch-9', 'Sandwich mit Speck und Käse'),
(28, 10, 'en', 'Description on English-10', 'Cheese Dog'),
(29, 10, 'hr', 'Opis na Hrvatskom-10', 'Sendvic sa sirom'),
(30, 10, 'de', 'Beschreibung auf Deutsch-10', 'Sandwich mit Käse'),
(31, 11, 'en', 'Description on English-11', 'Little Cheeseburger'),
(32, 11, 'hr', 'Opis na Hrvatskom-11', 'Mali cizburger'),
(33, 11, 'de', 'Beschreibung auf Deutsch-11', 'Kleiner Cheeseburger'),
(34, 12, 'en', 'Description on English-12', 'Bacon Cheeseburger'),
(35, 12, 'hr', 'Opis na Hrvatskom-12', 'Cizburger sa slaninom'),
(36, 12, 'de', 'Beschreibung auf Deutsch-12', 'Speck-Cheeseburger'),
(37, 13, 'en', 'Description on English-13', 'Hamburger'),
(38, 13, 'hr', 'Opis na Hrvatskom-13', 'Hamburger'),
(39, 13, 'de', 'Beschreibung auf Deutsch-13', 'Hamburger'),
(40, 14, 'en', 'Description on English-14', 'Little Hamburger'),
(41, 14, 'hr', 'Opis na Hrvatskom-14', 'Mali hamburger'),
(42, 14, 'de', 'Beschreibung auf Deutsch-14', 'Kleiner Hamburger'),
(43, 15, 'en', 'Description on English-15', 'Bacon Cheese Dog'),
(44, 15, 'hr', 'Opis na Hrvatskom-15', 'Sendvic sa sirom i slaninom'),
(45, 15, 'de', 'Beschreibung auf Deutsch-15', 'Sandwich mit Speck und Käse'),
(46, 16, 'en', 'Description on English-16', 'Cheeseburger'),
(47, 16, 'hr', 'Opis na Hrvatskom-16', 'Cizburger'),
(48, 16, 'de', 'Beschreibung auf Deutsch-16', 'Cheeseburger'),
(49, 17, 'en', 'Description on English-17', 'Bacon Burger'),
(50, 17, 'hr', 'Opis na Hrvatskom-17', 'Burger sa slaninom'),
(51, 17, 'de', 'Beschreibung auf Deutsch-17', 'Speckburger'),
(52, 18, 'en', 'Description on English-18', 'Pasta'),
(53, 18, 'hr', 'Opis na Hrvatskom-18', 'Tjestenina'),
(54, 18, 'de', 'Beschreibung auf Deutsch-18', 'Pasta'),
(55, 19, 'en', 'Description on English-19', 'Little Hamburger'),
(56, 19, 'hr', 'Opis na Hrvatskom-19', 'Mali hamburger'),
(57, 19, 'de', 'Beschreibung auf Deutsch-19', 'Kleiner Hamburger'),
(58, 20, 'en', 'Description on English-20', 'Hamburger'),
(59, 20, 'hr', 'Opis na Hrvatskom-20', 'Hamburger'),
(60, 20, 'de', 'Beschreibung auf Deutsch-20', 'Hamburger');

-- --------------------------------------------------------

--
-- Table structure for table `meal_ingredient`
--

CREATE TABLE `meal_ingredient` (
  `meal_id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_ingredient`
--

INSERT INTO `meal_ingredient` (`meal_id`, `ingredient_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 2),
(4, 2),
(4, 3),
(4, 6),
(5, 7),
(5, 8),
(6, 9),
(6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `meal_tag`
--

CREATE TABLE `meal_tag` (
  `meal_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_tag`
--

INSERT INTO `meal_tag` (`meal_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 2),
(4, 2),
(4, 3),
(4, 6),
(5, 7),
(5, 8),
(6, 7),
(6, 8);

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
(5, '2023_10_04_134319_create_tags_table', 1),
(6, '2023_10_04_134342_create_ingredients_table', 1),
(7, '2023_10_04_135253_create_meals_table', 1),
(8, '2023_10_04_151640_create_categories_table', 1),
(9, '2023_10_05_073849_create_meal_tag_table', 2),
(10, '2023_10_05_074027_remove_tag_id_from_meals_table', 2),
(11, '2023_10_05_080249_remove_ingredient_id_from_meals_table', 3),
(12, '2023_10_05_080307_create_meal_ingredient_table', 3),
(13, '2023_10_05_164641_create_languages_table', 4),
(14, '2023_10_05_165450_create_meal_translations_table', 5),
(15, '2023_10_05_180147_create_meals_translations_table', 6),
(16, '2023_10_05_180756_modify_name_to_title_in_meals_translations_table', 7),
(17, '2023_10_05_190208_remove_name_from_meals', 8),
(18, '2023_10_05_201633_create_tags_translations_table', 9),
(19, '2023_10_05_204343_create_ingredients_translations_table', 10),
(20, '2023_10_05_210654_create_categories_translations_table', 11),
(21, '2023_10_06_144923_add_deleted_at_to_meals_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Cheese', 'tag-1', '2023-10-05 07:05:33', '2023-10-05 07:05:33'),
(2, 'Mozzarella', 'tag-2', '2023-10-05 07:05:33', '2023-10-05 07:05:33'),
(3, 'Egg', 'tag-3', '2023-10-05 07:05:33', '2023-10-05 07:05:33'),
(4, 'Cream', 'tag-4', '2023-10-05 07:05:33', '2023-10-05 07:05:33'),
(5, 'Yogurt', 'tag-5', '2023-10-05 07:05:33', '2023-10-05 07:05:33'),
(6, 'Milk', 'tag-6', '2023-10-05 07:05:33', '2023-10-05 07:05:33'),
(7, 'Butter', 'tag-7', '2023-10-05 07:05:33', '2023-10-05 07:05:33'),
(8, 'Sour cream', 'tag-8', '2023-10-05 07:05:33', '2023-10-05 07:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`id`, `tag_id`, `locale`, `title`) VALUES
(1, 1, 'en', 'Cheese'),
(2, 1, 'hr', 'Sir'),
(3, 1, 'de', 'Käse'),
(4, 2, 'en', 'Mozzarella'),
(5, 2, 'hr', 'Mozzarella'),
(6, 2, 'de', 'Mozzarella'),
(7, 3, 'en', 'Egg'),
(8, 3, 'hr', 'Jaje'),
(9, 3, 'de', 'Ei'),
(10, 4, 'en', 'Cream'),
(11, 4, 'hr', 'Krema'),
(12, 4, 'de', 'Creme'),
(13, 5, 'en', 'Yogurt'),
(14, 5, 'hr', 'Jogurt'),
(15, 5, 'de', 'Joghurt'),
(16, 6, 'en', 'Milk'),
(17, 6, 'hr', 'Mlijeko'),
(18, 6, 'de', 'Milch'),
(19, 7, 'en', 'Butter'),
(20, 7, 'hr', 'Maslac'),
(21, 7, 'de', 'Butter'),
(22, 8, 'en', 'Sour cream'),
(23, 8, 'hr', 'Kiselo vrhnje'),
(24, 8, 'de', 'Sauerrahm');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `categories_translations_locale_index` (`locale`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ingredients_slug_unique` (`slug`);

--
-- Indexes for table `ingredients_translations`
--
ALTER TABLE `ingredients_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ingredients_translations_ingredient_id_locale_unique` (`ingredient_id`,`locale`),
  ADD KEY `ingredients_translations_locale_index` (`locale`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_locale_unique` (`locale`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals_translations`
--
ALTER TABLE `meals_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meals_translations_meal_id_locale_unique` (`meal_id`,`locale`),
  ADD KEY `meals_translations_locale_index` (`locale`);

--
-- Indexes for table `meal_ingredient`
--
ALTER TABLE `meal_ingredient`
  ADD PRIMARY KEY (`meal_id`,`ingredient_id`),
  ADD KEY `meal_ingredient_ingredient_id_foreign` (`ingredient_id`);

--
-- Indexes for table `meal_tag`
--
ALTER TABLE `meal_tag`
  ADD PRIMARY KEY (`meal_id`,`tag_id`),
  ADD KEY `meal_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  ADD KEY `tags_translations_locale_index` (`locale`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories_translations`
--
ALTER TABLE `categories_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ingredients_translations`
--
ALTER TABLE `ingredients_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `meals_translations`
--
ALTER TABLE `meals_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags_translations`
--
ALTER TABLE `tags_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD CONSTRAINT `categories_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredients_translations`
--
ALTER TABLE `ingredients_translations`
  ADD CONSTRAINT `ingredients_translations_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meals_translations`
--
ALTER TABLE `meals_translations`
  ADD CONSTRAINT `meals_translations_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_ingredient`
--
ALTER TABLE `meal_ingredient`
  ADD CONSTRAINT `meal_ingredient_ingredient_id_foreign` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meal_ingredient_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meal_tag`
--
ALTER TABLE `meal_tag`
  ADD CONSTRAINT `meal_tag_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meal_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD CONSTRAINT `tags_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
