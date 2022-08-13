-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2022 a las 04:49:18
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `red`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL COMMENT 'id',
  `sex_id` int(11) DEFAULT NULL COMMENT 'Sexo',
  `act_nombre` varchar(60) NOT NULL COMMENT 'Nombre',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Apellidos y nombre de los actores';

--
-- Volcado de datos para la tabla `actor`
--

INSERT INTO `actor` (`id`, `sex_id`, `act_nombre`, `updated_at`, `created_at`) VALUES
(3, 4, 'Angelina Jolie', '2022-06-24 05:32:22', '2022-06-24 00:32:22'),
(4, 3, 'Davinson Sanchez', '2022-06-24 05:32:31', '2022-06-24 05:32:31'),
(5, 4, 'Marilin Manson', '2022-06-24 09:00:13', '2022-06-24 09:00:13'),
(6, 3, 'Sylvester Stallone', '2022-06-24 09:01:38', '2022-06-24 09:01:38'),
(7, 3, 'Jonny Deph', '2022-06-24 09:02:52', '2022-06-24 09:02:52'),
(8, 4, 'Linda Hamilton', '2022-06-24 09:03:40', '2022-06-24 09:03:40'),
(13, 3, 'Pits Sparrow', '2022-06-24 19:08:37', '2022-06-24 19:08:37'),
(14, 3, 'Jacki Chan', '2022-06-24 19:09:02', '2022-06-24 19:09:02'),
(15, 3, 'Dolph Zigler', '2022-06-24 19:09:21', '2022-06-24 19:09:21'),
(16, 4, 'Antonia Slow', '2022-06-24 19:09:42', '2022-06-24 19:09:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actor_pelicula`
--

CREATE TABLE `actor_pelicula` (
  `id` int(11) NOT NULL COMMENT 'id',
  `act_id` int(11) DEFAULT NULL COMMENT 'Actor',
  `pel_id` int(11) DEFAULT NULL COMMENT 'Película',
  `apl_papel` varchar(60) NOT NULL COMMENT 'Papel',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registro de Papel en la Pelicula Actor Principal-&#';

--
-- Volcado de datos para la tabla `actor_pelicula`
--

INSERT INTO `actor_pelicula` (`id`, `act_id`, `pel_id`, `apl_papel`, `updated_at`, `created_at`) VALUES
(2, 3, 1, 'Protagonista', '2022-06-05 19:07:41', '2022-06-05 19:07:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` int(11) NOT NULL COMMENT 'id',
  `soc_id` int(11) DEFAULT NULL COMMENT 'Socio',
  `pel_id` int(11) DEFAULT NULL COMMENT 'Película',
  `alq_fecha_desde` date NOT NULL COMMENT 'Fecha Inicial',
  `alq_fecha_hasta` date NOT NULL COMMENT 'Fecha Final',
  `alq_valor` decimal(10,2) NOT NULL COMMENT 'Valor',
  `alq_fecha_entrega` date DEFAULT NULL COMMENT 'Fecha Entrega',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datos de Alquiler de la Pelicula al Socio';

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `soc_id`, `pel_id`, `alq_fecha_desde`, `alq_fecha_hasta`, `alq_valor`, `alq_fecha_entrega`, `updated_at`, `created_at`) VALUES
(1, 3, 2, '2022-05-09', '2022-05-19', '2.00', '2022-05-26', '2022-06-24 09:13:53', '2022-06-24 04:13:53'),
(3, 1, 6, '2022-06-03', '2022-06-15', '57.00', '2022-06-07', '2022-06-24 10:24:40', '2022-06-24 10:24:40'),
(4, 6, 13, '2022-06-07', '2022-06-10', '24.00', '2022-06-24', '2022-06-26 04:29:14', '2022-06-26 04:29:14'),
(5, 10, 11, '2022-05-30', '2022-06-02', '16.00', '2022-06-23', '2022-06-26 04:37:57', '2022-06-26 04:37:57'),
(6, 11, 10, '2022-05-11', '2021-12-07', '14.00', '2022-06-08', '2022-06-26 04:38:40', '2022-06-26 04:38:40'),
(7, 11, 8, '2022-07-10', '2022-10-06', '17.00', '2022-05-30', '2022-06-26 04:39:17', '2022-06-26 04:39:17'),
(8, 9, 11, '2022-06-22', '2022-07-09', '1.00', '2021-12-08', '2022-06-26 04:39:52', '2022-06-26 04:39:52'),
(9, 7, 8, '2022-06-07', '2022-06-29', '5.00', '2022-06-01', '2022-06-26 04:40:26', '2022-06-26 04:40:26'),
(10, 1, 18, '2022-06-22', '2022-06-08', '3.00', '2022-06-01', '2022-06-26 04:40:58', '2022-06-26 04:40:58'),
(11, 8, 14, '2022-06-15', '2022-06-29', '18.00', '2022-06-14', '2022-06-26 04:41:29', '2022-06-26 04:41:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `dir_nombre` varchar(60) NOT NULL COMMENT 'Nombre',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Nombre del director de la pelicula';

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`id`, `dir_nombre`, `updated_at`, `created_at`) VALUES
(2, 'Eugenio Derbez', '2022-06-24 08:56:40', '2022-06-24 03:56:40'),
(3, 'Dwayne Johnson', '2022-06-24 08:55:52', '2022-06-24 03:55:52'),
(4, 'Antonio Baptista', '2022-06-24 18:45:50', '2022-06-24 18:45:50'),
(5, 'Pandora Steph', '2022-06-24 18:49:14', '2022-06-24 18:49:14'),
(6, 'Peter Parket', '2022-06-24 18:49:27', '2022-06-24 18:49:27'),
(7, 'Mary Jany', '2022-06-24 18:49:38', '2022-06-24 18:49:38'),
(8, 'Vin Diesel', '2022-06-24 18:49:54', '2022-06-24 18:49:54'),
(9, 'Sam Raimy', '2022-06-24 19:15:46', '2022-06-24 19:15:46'),
(10, 'Random Jein', '2022-06-24 19:20:36', '2022-06-24 19:20:36'),
(11, 'La Roca', '2022-06-24 19:20:46', '2022-06-24 19:20:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `for_nombre` varchar(60) NOT NULL COMMENT 'Nombre',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CD DVD VHS';

--
-- Volcado de datos para la tabla `formato`
--

INSERT INTO `formato` (`id`, `for_nombre`, `updated_at`, `created_at`) VALUES
(1, 'mp4', '2022-06-05 18:52:10', '2022-06-05 18:52:10'),
(2, 'mov', '2022-06-05 18:52:33', '2022-06-05 18:52:33'),
(3, 'avi', '2022-06-05 18:52:47', '2022-06-05 18:52:47'),
(4, 'mp3', '2022-06-24 09:43:15', '2022-06-24 09:43:15'),
(5, 'AVI ', '2022-06-24 09:44:36', '2022-06-24 09:44:36'),
(6, 'MOV', '2022-06-24 09:45:15', '2022-06-24 09:45:15'),
(7, 'FLV', '2022-06-24 09:46:21', '2022-06-24 09:46:21'),
(8, 'RM', '2022-06-24 09:46:36', '2022-06-24 09:46:36'),
(9, 'FLAC', '2022-06-24 09:47:07', '2022-06-24 09:47:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `gen_nombre` varchar(60) NOT NULL COMMENT 'Nombre',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Romantica Comico Ciencia Ficcion Deportes';

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `gen_nombre`, `updated_at`, `created_at`) VALUES
(1, 'Terror', '2022-06-05 19:02:23', '2022-06-05 19:02:23'),
(2, 'Accion', '2022-06-05 19:02:29', '2022-06-05 19:02:29'),
(3, 'Fantasia', '2022-06-05 19:02:42', '2022-06-05 19:02:42'),
(4, 'Comedia', '2022-06-24 03:55:36', '2022-06-24 03:55:36'),
(5, 'Drama', '2022-06-24 07:12:28', '2022-06-24 02:12:28'),
(9, 'Drama', '2022-06-24 10:11:46', '2022-06-24 05:11:46'),
(11, 'Chistes', '2022-06-24 10:21:01', '2022-06-24 10:21:01'),
(12, 'Anime', '2022-06-24 10:21:51', '2022-06-24 10:21:51'),
(16, 'Amor', '2022-06-24 10:29:16', '2022-06-24 10:29:16'),
(17, 'Increible', '2022-06-24 10:29:30', '2022-06-24 10:29:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_03_170905_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `gen_id` int(11) DEFAULT NULL COMMENT 'Genero',
  `dir_id` int(11) DEFAULT NULL COMMENT 'Director',
  `for_id` int(11) DEFAULT NULL COMMENT 'Formato',
  `pel_nombre` varchar(60) NOT NULL COMMENT 'Nombre',
  `pel_costo` decimal(10,2) NOT NULL COMMENT 'Costo',
  `pel_fecha_estreno` date DEFAULT NULL COMMENT 'Fecha Estreno',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datos de Identificación de la Película';

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `gen_id`, `dir_id`, `for_id`, `pel_nombre`, `pel_costo`, `pel_fecha_estreno`, `updated_at`, `created_at`) VALUES
(1, 1, 2, 1, 'Shark', '2.50', '1975-05-20', '2022-06-05 19:05:51', '2022-06-05 19:05:51'),
(2, 4, 3, 2, 'Toy Story', '15.00', '2022-06-08', '2022-06-24 03:56:40', '2022-06-24 03:56:40'),
(3, 5, 3, 2, 'Titanic', '12.00', '2022-06-03', '2022-06-24 07:14:30', '2022-06-24 07:14:30'),
(6, 9, 3, 9, 'Terminator', '89.00', '2022-06-16', '2022-06-24 09:50:37', '2022-06-24 04:50:37'),
(8, 1, 2, 2, 'RAN', '58.00', '2022-06-09', '2022-06-24 10:31:22', '2022-06-24 10:31:22'),
(9, 4, 3, 6, 'Dracula', '24.00', '2022-06-15', '2022-06-24 10:35:08', '2022-06-24 10:35:08'),
(10, 4, 2, 7, 'Dont', '147.00', '2022-06-08', '2022-06-24 10:35:59', '2022-06-24 10:35:59'),
(11, 12, 4, 9, 'Baticano', '21.00', '2022-06-02', '2022-06-24 18:46:52', '2022-06-24 18:46:52'),
(12, 1, 8, 4, 'Escalera al Cielo', '9.00', '2022-06-09', '2022-06-24 18:53:40', '2022-06-24 18:53:40'),
(13, 17, 7, 2, 'Dos por tres', '5.00', '2022-06-07', '2022-06-24 19:10:44', '2022-06-24 19:10:44'),
(14, 2, 9, 5, 'Spiderman', '15.00', '2022-06-02', '2022-06-24 19:16:48', '2022-06-24 19:16:48'),
(17, 4, 2, 1, 'Martin', '25.00', '2022-06-02', '2022-06-24 19:55:50', '2022-06-24 19:55:50'),
(18, 1, 9, 5, 'Batman', '21.00', '2022-06-23', '2022-06-26 01:03:10', '2022-06-26 01:03:10'),
(19, 11, 8, 7, 'El duende', '12.12', '2022-07-14', '2022-07-04 18:37:54', '2022-07-04 18:37:54'),
(20, 4, 3, 7, 'Maicra', '24.00', '2022-07-15', '2022-07-04 18:55:03', '2022-07-04 18:55:03'),
(21, 16, 9, 8, 'El escuadros de la muerte', '11.00', '2022-06-27', '2022-07-04 18:56:34', '2022-07-04 18:56:34'),
(22, 12, 6, 1, 'Yugioh', '20.00', '2022-07-02', '2022-07-04 20:23:45', '2022-07-04 20:23:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('kCQlStWpLByVZxBzkAQKG00Lit6fw2EhhteNHaPK', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRGdncWZXRVFqYklTcVdCMFllRFh0YzNnYnhQV1R3UnpnT0lkQTgzWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE2NTc1NTQxMjI7fXM6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHVvQkovcGx1MnZJOGFOeXRKLjExcnUxeC5tNmtVQW5Yd3JVZUxscHFaWHFsUng0SUlNU3VXIjt9', 1657563919),
('YBl9eDpyDWfGQxofnQlfP8YYWZ3GkWJNaeXv30K2', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRXM3RDJCdFFOdkpFS2ZEWk4yZnBQSk9la2J3ZGdjZ3JIV21aUmdzeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZXBvcnQiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE2NTc1NzIzMTc7fX0=', 1657572353);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL COMMENT 'id',
  `sex_nombre` varchar(60) NOT NULL COMMENT 'Nombre',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maculino Femenino';

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id`, `sex_nombre`, `updated_at`, `created_at`) VALUES
(3, 'Masculino', '2022-06-05 18:48:33', '2022-06-05 18:48:33'),
(4, 'Femenino', '2022-06-05 18:49:05', '2022-06-05 13:49:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socio`
--

CREATE TABLE `socio` (
  `id` int(11) NOT NULL COMMENT 'id',
  `soc_cedula` char(10) NOT NULL COMMENT 'Cédula',
  `soc_nombre` varchar(60) NOT NULL COMMENT 'Nombre',
  `soc_direccion` varchar(60) NOT NULL COMMENT 'Dirección',
  `soc_telefono` char(10) NOT NULL COMMENT 'Teléfono',
  `soc_correo` varchar(60) NOT NULL COMMENT 'Correo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `socio`
--

INSERT INTO `socio` (`id`, `soc_cedula`, `soc_nombre`, `soc_direccion`, `soc_telefono`, `soc_correo`, `updated_at`, `created_at`) VALUES
(1, '050164789', 'Juan', 'Latacunga', '09631475', 'juan@gmail.com', '2022-06-24 05:31:58', '2022-06-24 00:31:58'),
(3, '123456', 'Lucas', 'Ambato', '2697046', 'lucas@gmail.com', '2022-06-24 09:11:35', '2022-06-24 09:11:35'),
(5, '175264789', 'Maria Fernanda', 'Riobamba', '23456789', 'mariafernanda@gmail.com', '2022-06-24 18:35:33', '2022-06-24 13:35:33'),
(6, '2457890214', 'Benito Juarez', 'Zamora Chinchipe', '06789410', 'benito@gmail.com', '2022-06-24 18:36:43', '2022-06-24 18:36:43'),
(7, '14578046', 'Luis ', 'Pujili', '025479123', 'luis@gmail.com', '2022-06-26 04:30:40', '2022-06-26 04:30:40'),
(8, '1214578920', 'Martha', 'Alpamalag', '0987456021', 'martha@gmail.com', '2022-06-26 04:31:56', '2022-06-26 04:31:56'),
(9, '023145678', 'Laico', 'San Rafael', '02364789', 'laico@gmail.com', '2022-06-26 04:32:46', '2022-06-26 04:32:46'),
(10, '3214567809', 'Santiago', 'Ibarra', '2354678', 'santiago@hotmail.com', '2022-06-26 04:33:52', '2022-06-26 04:33:52'),
(11, '123401248', 'Maria', 'Carchi', '0678945120', 'maria@hotmail.com', '2022-06-26 04:34:56', '2022-06-26 04:34:56'),
(12, '12478905', 'Mario', 'Napo', '069742015', 'mario@gmail.com', '2022-06-26 04:35:48', '2022-06-26 04:35:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(3, 'Fabian', 'fabo@espe.edu.ec', NULL, '$2y$10$uoBJ/plu2vI8aNytJ.11ru1x.m6kUAnXwrUeLlpqZXqlRx4IIMSuW', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 03:52:12', '2022-06-24 03:52:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fn_SEXO_ACTOR` (`sex_id`);

--
-- Indices de la tabla `actor_pelicula`
--
ALTER TABLE `actor_pelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fn_ACTOR_actor_pelicula` (`act_id`),
  ADD KEY `Fn_PELICULA_actor_pelicula` (`pel_id`);

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fn_PELICULA_ALQUILER` (`pel_id`),
  ADD KEY `Fn_SOCIO_ALQUILER` (`soc_id`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fn_DIRECTOR_PELICULA` (`dir_id`),
  ADD KEY `Fn_FORMATO_PELICULA` (`for_id`),
  ADD KEY `Fn_GENERO_PELICULA` (`gen_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `actor_pelicula`
--
ALTER TABLE `actor_pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `socio`
--
ALTER TABLE `socio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actor`
--
ALTER TABLE `actor`
  ADD CONSTRAINT `Fn_SEXO_ACTOR` FOREIGN KEY (`sex_id`) REFERENCES `sexo` (`id`);

--
-- Filtros para la tabla `actor_pelicula`
--
ALTER TABLE `actor_pelicula`
  ADD CONSTRAINT `Fn_ACTOR_actor_pelicula` FOREIGN KEY (`act_id`) REFERENCES `actor` (`id`),
  ADD CONSTRAINT `Fn_PELICULA_actor_pelicula` FOREIGN KEY (`pel_id`) REFERENCES `pelicula` (`id`);

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `Fn_PELICULA_ALQUILER` FOREIGN KEY (`pel_id`) REFERENCES `pelicula` (`id`),
  ADD CONSTRAINT `Fn_SOCIO_ALQUILER` FOREIGN KEY (`soc_id`) REFERENCES `socio` (`id`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `Fn_DIRECTOR_PELICULA` FOREIGN KEY (`dir_id`) REFERENCES `director` (`id`),
  ADD CONSTRAINT `Fn_FORMATO_PELICULA` FOREIGN KEY (`for_id`) REFERENCES `formato` (`id`),
  ADD CONSTRAINT `Fn_GENERO_PELICULA` FOREIGN KEY (`gen_id`) REFERENCES `genero` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
