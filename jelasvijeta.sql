-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 03:29 PM
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
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'category-1', '2023-10-13 11:20:58', '2023-10-13 11:20:58'),
(2, 'category-2', '2023-10-13 11:20:58', '2023-10-13 11:20:58'),
(3, 'category-3', '2023-10-13 11:20:58', '2023-10-13 11:20:58'),
(4, 'category-4', '2023-10-13 11:20:58', '2023-10-13 11:20:58'),
(5, 'category-5', '2023-10-13 11:20:58', '2023-10-13 11:20:58');

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
(1, 1, 'en', 'Turkey'),
(2, 1, 'hr', 'accusamus'),
(3, 1, 'de', 'Schweinefleisch'),
(4, 2, 'en', 'Sausage'),
(5, 2, 'hr', 'optio'),
(6, 2, 'de', 'Hühnerfleisch'),
(7, 3, 'en', 'Beef'),
(8, 3, 'hr', 'ea'),
(9, 3, 'de', 'Speck'),
(10, 4, 'en', 'Ham'),
(11, 4, 'hr', 'vero'),
(12, 4, 'de', 'Wurst'),
(13, 5, 'en', 'Lamb'),
(14, 5, 'hr', 'quo'),
(15, 5, 'de', 'Lamm');

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
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ingredients-1', '2023-10-13 11:20:44', '2023-10-13 11:20:44'),
(2, 'ingredients-2', '2023-10-13 11:20:44', '2023-10-13 11:20:44'),
(3, 'ingredients-3', '2023-10-13 11:20:44', '2023-10-13 11:20:44'),
(4, 'ingredients-4', '2023-10-13 11:20:44', '2023-10-13 11:20:44'),
(5, 'ingredients-5', '2023-10-13 11:20:44', '2023-10-13 11:20:44');

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
(2, 1, 'hr', 'dolorem'),
(3, 1, 'de', 'Gurke'),
(4, 2, 'en', 'Spinach'),
(5, 2, 'hr', 'illo'),
(6, 2, 'de', 'Zwiebel'),
(7, 3, 'en', 'Tomato'),
(8, 3, 'hr', 'consequatur'),
(9, 3, 'de', 'Knoblauch'),
(10, 4, 'en', 'Rosemary'),
(11, 4, 'hr', 'sed'),
(12, 4, 'de', 'Aubergine'),
(13, 5, 'en', 'Carrot'),
(14, 5, 'hr', 'accusantium'),
(15, 5, 'de', 'Rosmarie');

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
  `status` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `status`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'created', NULL, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(2, 'created', 4, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(3, 'created', 3, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(4, 'created', 1, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(5, 'created', NULL, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(6, 'created', NULL, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(7, 'created', 4, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(8, 'created', 5, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(9, 'created', 1, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL),
(10, 'created', 1, '2023-10-13 11:29:22', '2023-10-13 11:29:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meals_translations`
--

CREATE TABLE `meals_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals_translations`
--

INSERT INTO `meals_translations` (`id`, `meal_id`, `locale`, `title`, `description`) VALUES
(1, 1, 'en', 'Cheese Pizza', 'Voluptas temporibus molestiae tempore ut nostrum quo.'),
(2, 1, 'hr', 'accusantium', 'Et quibusdam quae hic et asperiores nesciunt.'),
(3, 1, 'de', 'Eisbein', 'Et optio provident quia ullam deleniti.'),
(4, 2, 'en', 'Hamburger', 'Ut omnis voluptate dolorem debitis.'),
(5, 2, 'hr', 'tempora', 'Et exercitationem non voluptas non suscipit voluptas dolores.'),
(6, 2, 'de', 'Hackbraten', 'Autem dolore et et esse.'),
(7, 3, 'en', 'Veggie Sandwich', 'Aliquid minima alias dolores quod.'),
(8, 3, 'hr', 'nihil', 'Iure maxime non qui ipsa.'),
(9, 3, 'de', 'Dicke Bohnen mit Speck', 'Aut sit praesentium repellendus ut eum sed dolores qui.'),
(10, 4, 'en', 'Bacon Burger', 'Non quia fugiat molestiae libero vel.'),
(11, 4, 'hr', 'sit', 'Reiciendis est consequatur sapiente et.'),
(12, 4, 'de', 'Miesmuscheln', 'Sunt dolore dolor quia enim.'),
(13, 5, 'en', 'Grilled Cheese', 'Eum iure expedita accusantium quia enim molestiae repellendus.'),
(14, 5, 'hr', 'quis', 'Omnis nulla quaerat quisquam cupiditate.'),
(15, 5, 'de', 'Weißwürste', 'Recusandae praesentium eos quas quas.'),
(16, 6, 'en', 'Little Bacon Burger', 'Repellat pariatur sunt doloremque non quidem sed.'),
(17, 6, 'hr', 'minus', 'Natus voluptatem voluptatum neque quis dicta nostrum dolore.'),
(18, 6, 'de', 'Dicke Bohnen mit Speck', 'Necessitatibus veniam consectetur quibusdam sequi labore debitis ab.'),
(19, 7, 'en', 'Cheese Pizza', 'Quos placeat pariatur reprehenderit quis quas dolorem.'),
(20, 7, 'hr', 'itaque', 'Eligendi quia ut delectus quo omnis voluptatum quod.'),
(21, 7, 'de', 'Blutwurst', 'Excepturi reprehenderit accusamus mollitia et.'),
(22, 8, 'en', 'Bacon Burger', 'Et at deserunt ut asperiores et ullam inventore.'),
(23, 8, 'hr', 'reiciendis', 'Culpa est totam deserunt sit harum.'),
(24, 8, 'de', 'Miesmuscheln', 'Sed ipsa labore debitis quasi voluptas reiciendis quibusdam.'),
(25, 9, 'en', 'Grilled Cheese', 'Consectetur totam atque enim eum nemo et.'),
(26, 9, 'hr', 'omnis', 'Et ut harum sint et sed ut repellat.'),
(27, 9, 'de', 'Hackbraten', 'Aperiam voluptatem repellendus sit doloremque illo qui mollitia.'),
(28, 10, 'en', 'Little Bacon Cheeseburger', 'Sapiente necessitatibus ut quam sunt amet illum molestiae.'),
(29, 10, 'hr', 'in', 'Aut velit omnis nostrum et quo.'),
(30, 10, 'de', 'Miesmuscheln', 'Est est et ipsa culpa.');

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
(2, 3),
(2, 4);

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
(2, 2),
(2, 3),
(2, 4);

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
(9, '2023_10_05_073849_create_meal_tag_table', 1),
(10, '2023_10_05_074027_remove_tag_id_from_meals_table', 1),
(11, '2023_10_05_080249_remove_ingredient_id_from_meals_table', 1),
(12, '2023_10_05_080307_create_meal_ingredient_table', 1),
(13, '2023_10_05_164641_create_languages_table', 1),
(14, '2023_10_05_180147_create_meals_translations_table', 1),
(15, '2023_10_05_201633_create_tags_translations_table', 1),
(16, '2023_10_05_204343_create_ingredients_translations_table', 1),
(17, '2023_10_05_210654_create_categories_translations_table', 1),
(18, '2023_10_06_144923_add_deleted_at_to_meals_table', 1);

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
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'tag-1', '2023-10-13 11:20:52', '2023-10-13 11:20:52'),
(2, 'tag-2', '2023-10-13 11:20:52', '2023-10-13 11:20:52'),
(3, 'tag-3', '2023-10-13 11:20:52', '2023-10-13 11:20:52'),
(4, 'tag-4', '2023-10-13 11:20:52', '2023-10-13 11:20:52'),
(5, 'tag-5', '2023-10-13 11:20:52', '2023-10-13 11:20:52'),
(6, 'tag-6', '2023-10-13 11:20:52', '2023-10-13 11:20:52'),
(7, 'tag-7', '2023-10-13 11:20:52', '2023-10-13 11:20:52'),
(8, 'tag-8', '2023-10-13 11:20:52', '2023-10-13 11:20:52');

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
(1, 1, 'en', 'Butter'),
(2, 1, 'hr', 'Barbara'),
(3, 1, 'de', 'Käse'),
(4, 2, 'en', 'Milk'),
(5, 2, 'hr', 'Mate'),
(6, 2, 'de', 'Joghurt'),
(7, 3, 'en', 'Sour cream'),
(8, 3, 'hr', 'Mila'),
(9, 3, 'de', 'Ei'),
(10, 4, 'en', 'Cheese'),
(11, 4, 'hr', 'Fran'),
(12, 4, 'de', 'Butter'),
(13, 5, 'en', 'Mozzarella'),
(14, 5, 'hr', 'Gabrijela'),
(15, 5, 'de', 'Milch'),
(16, 6, 'en', 'Egg'),
(17, 6, 'hr', 'Andrija'),
(18, 6, 'de', 'Eierkäse'),
(19, 7, 'en', 'Cream'),
(20, 7, 'hr', 'Andrej'),
(21, 7, 'de', 'Sauerrahm'),
(22, 8, 'en', 'Yogurt'),
(23, 8, 'hr', 'Monika'),
(24, 8, 'de', 'Sahne');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ingredients_translations`
--
ALTER TABLE `ingredients_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meals_translations`
--
ALTER TABLE `meals_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
